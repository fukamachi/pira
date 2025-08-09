(uiop/package:define-package #:pira/pi (:use)
                             (:export #:accept-language
                              #:additional-metrics-list
                              #:additional-metrics-map #:amazon-resource-name
                              #:analysis-report #:analysis-report-id
                              #:analysis-report-summary
                              #:analysis-report-summary-list #:analysis-status
                              #:authorized-actions-list #:boolean
                              #:context-type
                              #:create-performance-analysis-report
                              #:create-performance-analysis-report-request
                              #:create-performance-analysis-report-response
                              #:data #:data-list #:data-point
                              #:data-points-list
                              #:delete-performance-analysis-report
                              #:delete-performance-analysis-report-request
                              #:delete-performance-analysis-report-response
                              #:describe-dimension-keys
                              #:describe-dimension-keys-request
                              #:describe-dimension-keys-response #:description
                              #:descriptive-map #:descriptive-string
                              #:detail-status #:dimension-detail
                              #:dimension-detail-list #:dimension-group
                              #:dimension-group-detail
                              #:dimension-group-detail-list
                              #:dimension-key-description
                              #:dimension-key-description-list
                              #:dimension-key-detail
                              #:dimension-key-detail-list #:dimension-map
                              #:dimensions-metric-list #:double #:error-string
                              #:feature-metadata #:feature-metadata-map
                              #:feature-status #:fine-grained-action
                              #:get-dimension-key-details
                              #:get-dimension-key-details-request
                              #:get-dimension-key-details-response
                              #:get-performance-analysis-report
                              #:get-performance-analysis-report-request
                              #:get-performance-analysis-report-response
                              #:get-resource-metadata
                              #:get-resource-metadata-request
                              #:get-resource-metadata-response
                              #:get-resource-metrics
                              #:get-resource-metrics-request
                              #:get-resource-metrics-response #:isotimestamp
                              #:identifier-string #:insight #:insight-list
                              #:integer #:internal-service-error
                              #:invalid-argument-exception #:limit
                              #:list-available-resource-dimensions
                              #:list-available-resource-dimensions-request
                              #:list-available-resource-dimensions-response
                              #:list-available-resource-metrics
                              #:list-available-resource-metrics-request
                              #:list-available-resource-metrics-response
                              #:list-performance-analysis-reports
                              #:list-performance-analysis-reports-request
                              #:list-performance-analysis-reports-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:markdown-string #:max-results
                              #:metric-dimension-groups
                              #:metric-dimensions-list #:metric-key-data-points
                              #:metric-key-data-points-list #:metric-query
                              #:metric-query-filter-map #:metric-query-list
                              #:metric-type-list #:metric-values-list
                              #:next-token #:not-authorized-exception
                              #:performance-insights-metric
                              #:performance-insightsv20180227
                              #:period-alignment #:recommendation
                              #:recommendation-list #:request-string
                              #:requested-dimension-list
                              #:response-partition-key
                              #:response-partition-key-list
                              #:response-resource-metric
                              #:response-resource-metric-key
                              #:response-resource-metric-list
                              #:sanitized-string #:sanitized-string-list
                              #:service-type #:severity #:string #:tag
                              #:tag-key #:tag-key-list #:tag-list
                              #:tag-resource #:tag-resource-request
                              #:tag-resource-response #:tag-value #:text-format
                              #:untag-resource #:untag-resource-request
                              #:untag-resource-response))
(common-lisp:in-package #:pira/pi)

(smithy/sdk/service:define-service performance-insightsv20180227 :shape-name
                                   "PerformanceInsightsv20180227" :version
                                   "2018-02-27" :title
                                   "AWS Performance Insights" :xml-namespace
                                   '(:uri
                                     "http://pi.amazonaws.com/doc/2018-02-27/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "PI")
                                      ("arnNamespace" . "pi")
                                      ("cloudFormationName" . "PI")
                                      ("cloudTrailEventSource"
                                       . "pi.amazonaws.com")
                                      ("endpointPrefix" . "pi"))
                                     ("aws.auth#sigv4" ("name" . "pi"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-enum accept-language
    common-lisp:nil
  (:en-us "EN_US"))

(smithy/sdk/shapes:define-list additional-metrics-list :member sanitized-string)

(smithy/sdk/shapes:define-map additional-metrics-map :key request-string :value
                              double)

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure analysis-report common-lisp:nil
                                    ((analysis-report-id :target-type
                                      analysis-report-id :required
                                      common-lisp:t :member-name
                                      "AnalysisReportId")
                                     (identifier :target-type identifier-string
                                      :member-name "Identifier")
                                     (service-type :target-type service-type
                                      :member-name "ServiceType")
                                     (create-time :target-type isotimestamp
                                      :member-name "CreateTime")
                                     (start-time :target-type isotimestamp
                                      :member-name "StartTime")
                                     (end-time :target-type isotimestamp
                                      :member-name "EndTime")
                                     (status :target-type analysis-status
                                      :member-name "Status")
                                     (insights :target-type insight-list
                                      :member-name "Insights"))
                                    (:shape-name "AnalysisReport"))

(smithy/sdk/shapes:define-type analysis-report-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure analysis-report-summary common-lisp:nil
                                    ((analysis-report-id :target-type string
                                      :member-name "AnalysisReportId")
                                     (create-time :target-type isotimestamp
                                      :member-name "CreateTime")
                                     (start-time :target-type isotimestamp
                                      :member-name "StartTime")
                                     (end-time :target-type isotimestamp
                                      :member-name "EndTime")
                                     (status :target-type analysis-status
                                      :member-name "Status")
                                     (tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "AnalysisReportSummary"))

(smithy/sdk/shapes:define-list analysis-report-summary-list :member
                               analysis-report-summary)

(smithy/sdk/shapes:define-enum analysis-status
    common-lisp:nil
  (:running "RUNNING")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-list authorized-actions-list :member
                               fine-grained-action)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum context-type
    common-lisp:nil
  (:causal "CAUSAL")
  (:contextual "CONTEXTUAL"))

(smithy/sdk/shapes:define-input create-performance-analysis-report-request
                                common-lisp:nil
                                ((service-type :target-type service-type
                                  :required common-lisp:t :member-name
                                  "ServiceType")
                                 (identifier :target-type identifier-string
                                  :required common-lisp:t :member-name
                                  "Identifier")
                                 (start-time :target-type isotimestamp
                                  :required common-lisp:t :member-name
                                  "StartTime")
                                 (end-time :target-type isotimestamp :required
                                  common-lisp:t :member-name "EndTime")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreatePerformanceAnalysisReportRequest"))

(smithy/sdk/shapes:define-output create-performance-analysis-report-response
                                 common-lisp:nil
                                 ((analysis-report-id :target-type
                                   analysis-report-id :member-name
                                   "AnalysisReportId"))
                                 (:shape-name
                                  "CreatePerformanceAnalysisReportResponse"))

(smithy/sdk/shapes:define-structure data common-lisp:nil
                                    ((performance-insights-metric :target-type
                                      performance-insights-metric :member-name
                                      "PerformanceInsightsMetric"))
                                    (:shape-name "Data"))

(smithy/sdk/shapes:define-list data-list :member data)

(smithy/sdk/shapes:define-structure data-point common-lisp:nil
                                    ((timestamp :target-type isotimestamp
                                      :required common-lisp:t :member-name
                                      "Timestamp")
                                     (value :target-type double :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "DataPoint"))

(smithy/sdk/shapes:define-list data-points-list :member data-point)

(smithy/sdk/shapes:define-input delete-performance-analysis-report-request
                                common-lisp:nil
                                ((service-type :target-type service-type
                                  :required common-lisp:t :member-name
                                  "ServiceType")
                                 (identifier :target-type identifier-string
                                  :required common-lisp:t :member-name
                                  "Identifier")
                                 (analysis-report-id :target-type
                                  analysis-report-id :required common-lisp:t
                                  :member-name "AnalysisReportId"))
                                (:shape-name
                                 "DeletePerformanceAnalysisReportRequest"))

(smithy/sdk/shapes:define-output delete-performance-analysis-report-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeletePerformanceAnalysisReportResponse"))

(smithy/sdk/shapes:define-input describe-dimension-keys-request common-lisp:nil
                                ((service-type :target-type service-type
                                  :required common-lisp:t :member-name
                                  "ServiceType")
                                 (identifier :target-type identifier-string
                                  :required common-lisp:t :member-name
                                  "Identifier")
                                 (start-time :target-type isotimestamp
                                  :required common-lisp:t :member-name
                                  "StartTime")
                                 (end-time :target-type isotimestamp :required
                                  common-lisp:t :member-name "EndTime")
                                 (metric :target-type request-string :required
                                  common-lisp:t :member-name "Metric")
                                 (period-in-seconds :target-type integer
                                  :member-name "PeriodInSeconds")
                                 (group-by :target-type dimension-group
                                  :required common-lisp:t :member-name
                                  "GroupBy")
                                 (additional-metrics :target-type
                                  additional-metrics-list :member-name
                                  "AdditionalMetrics")
                                 (partition-by :target-type dimension-group
                                  :member-name "PartitionBy")
                                 (filter :target-type metric-query-filter-map
                                  :member-name "Filter")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "DescribeDimensionKeysRequest"))

(smithy/sdk/shapes:define-output describe-dimension-keys-response
                                 common-lisp:nil
                                 ((aligned-start-time :target-type isotimestamp
                                   :member-name "AlignedStartTime")
                                  (aligned-end-time :target-type isotimestamp
                                   :member-name "AlignedEndTime")
                                  (partition-keys :target-type
                                   response-partition-key-list :member-name
                                   "PartitionKeys")
                                  (keys :target-type
                                   dimension-key-description-list :member-name
                                   "Keys")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeDimensionKeysResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map descriptive-map :key descriptive-string :value
                              descriptive-string)

(smithy/sdk/shapes:define-type descriptive-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum detail-status
    common-lisp:nil
  (:available "AVAILABLE")
  (:processing "PROCESSING")
  (:unavailable "UNAVAILABLE"))

(smithy/sdk/shapes:define-structure dimension-detail common-lisp:nil
                                    ((identifier :target-type string
                                      :member-name "Identifier"))
                                    (:shape-name "DimensionDetail"))

(smithy/sdk/shapes:define-list dimension-detail-list :member dimension-detail)

(smithy/sdk/shapes:define-structure dimension-group common-lisp:nil
                                    ((group :target-type sanitized-string
                                      :required common-lisp:t :member-name
                                      "Group")
                                     (dimensions :target-type
                                      sanitized-string-list :member-name
                                      "Dimensions")
                                     (limit :target-type limit :member-name
                                      "Limit"))
                                    (:shape-name "DimensionGroup"))

(smithy/sdk/shapes:define-structure dimension-group-detail common-lisp:nil
                                    ((group :target-type string :member-name
                                      "Group")
                                     (dimensions :target-type
                                      dimension-detail-list :member-name
                                      "Dimensions"))
                                    (:shape-name "DimensionGroupDetail"))

(smithy/sdk/shapes:define-list dimension-group-detail-list :member
                               dimension-group-detail)

(smithy/sdk/shapes:define-structure dimension-key-description common-lisp:nil
                                    ((dimensions :target-type dimension-map
                                      :member-name "Dimensions")
                                     (total :target-type double :member-name
                                      "Total")
                                     (additional-metrics :target-type
                                      additional-metrics-map :member-name
                                      "AdditionalMetrics")
                                     (partitions :target-type
                                      metric-values-list :member-name
                                      "Partitions"))
                                    (:shape-name "DimensionKeyDescription"))

(smithy/sdk/shapes:define-list dimension-key-description-list :member
                               dimension-key-description)

(smithy/sdk/shapes:define-structure dimension-key-detail common-lisp:nil
                                    ((value :target-type string :member-name
                                      "Value")
                                     (dimension :target-type string
                                      :member-name "Dimension")
                                     (status :target-type detail-status
                                      :member-name "Status"))
                                    (:shape-name "DimensionKeyDetail"))

(smithy/sdk/shapes:define-list dimension-key-detail-list :member
                               dimension-key-detail)

(smithy/sdk/shapes:define-map dimension-map :key request-string :value
                              request-string)

(smithy/sdk/shapes:define-list dimensions-metric-list :member sanitized-string)

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type error-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure feature-metadata common-lisp:nil
                                    ((status :target-type feature-status
                                      :member-name "Status"))
                                    (:shape-name "FeatureMetadata"))

(smithy/sdk/shapes:define-map feature-metadata-map :key string :value
                              feature-metadata)

(smithy/sdk/shapes:define-enum feature-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED")
  (:unsupported "UNSUPPORTED")
  (:enabled-pending-reboot "ENABLED_PENDING_REBOOT")
  (:disabled-pending-reboot "DISABLED_PENDING_REBOOT")
  (:unknown "UNKNOWN"))

(smithy/sdk/shapes:define-enum fine-grained-action
    common-lisp:nil
  (:describe-dimension-keys "DescribeDimensionKeys")
  (:get-dimension-key-details "GetDimensionKeyDetails")
  (:get-resource-metrics "GetResourceMetrics"))

(smithy/sdk/shapes:define-input get-dimension-key-details-request
                                common-lisp:nil
                                ((service-type :target-type service-type
                                  :required common-lisp:t :member-name
                                  "ServiceType")
                                 (identifier :target-type identifier-string
                                  :required common-lisp:t :member-name
                                  "Identifier")
                                 (group :target-type request-string :required
                                  common-lisp:t :member-name "Group")
                                 (group-identifier :target-type request-string
                                  :required common-lisp:t :member-name
                                  "GroupIdentifier")
                                 (requested-dimensions :target-type
                                  requested-dimension-list :member-name
                                  "RequestedDimensions"))
                                (:shape-name "GetDimensionKeyDetailsRequest"))

(smithy/sdk/shapes:define-output get-dimension-key-details-response
                                 common-lisp:nil
                                 ((dimensions :target-type
                                   dimension-key-detail-list :member-name
                                   "Dimensions"))
                                 (:shape-name "GetDimensionKeyDetailsResponse"))

(smithy/sdk/shapes:define-input get-performance-analysis-report-request
                                common-lisp:nil
                                ((service-type :target-type service-type
                                  :required common-lisp:t :member-name
                                  "ServiceType")
                                 (identifier :target-type identifier-string
                                  :required common-lisp:t :member-name
                                  "Identifier")
                                 (analysis-report-id :target-type
                                  analysis-report-id :required common-lisp:t
                                  :member-name "AnalysisReportId")
                                 (text-format :target-type text-format
                                  :member-name "TextFormat")
                                 (accept-language :target-type accept-language
                                  :member-name "AcceptLanguage"))
                                (:shape-name
                                 "GetPerformanceAnalysisReportRequest"))

(smithy/sdk/shapes:define-output get-performance-analysis-report-response
                                 common-lisp:nil
                                 ((analysis-report :target-type analysis-report
                                   :member-name "AnalysisReport"))
                                 (:shape-name
                                  "GetPerformanceAnalysisReportResponse"))

(smithy/sdk/shapes:define-input get-resource-metadata-request common-lisp:nil
                                ((service-type :target-type service-type
                                  :required common-lisp:t :member-name
                                  "ServiceType")
                                 (identifier :target-type identifier-string
                                  :required common-lisp:t :member-name
                                  "Identifier"))
                                (:shape-name "GetResourceMetadataRequest"))

(smithy/sdk/shapes:define-output get-resource-metadata-response common-lisp:nil
                                 ((identifier :target-type string :member-name
                                   "Identifier")
                                  (features :target-type feature-metadata-map
                                   :member-name "Features"))
                                 (:shape-name "GetResourceMetadataResponse"))

(smithy/sdk/shapes:define-input get-resource-metrics-request common-lisp:nil
                                ((service-type :target-type service-type
                                  :required common-lisp:t :member-name
                                  "ServiceType")
                                 (identifier :target-type identifier-string
                                  :required common-lisp:t :member-name
                                  "Identifier")
                                 (metric-queries :target-type metric-query-list
                                  :required common-lisp:t :member-name
                                  "MetricQueries")
                                 (start-time :target-type isotimestamp
                                  :required common-lisp:t :member-name
                                  "StartTime")
                                 (end-time :target-type isotimestamp :required
                                  common-lisp:t :member-name "EndTime")
                                 (period-in-seconds :target-type integer
                                  :member-name "PeriodInSeconds")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (period-alignment :target-type
                                  period-alignment :member-name
                                  "PeriodAlignment"))
                                (:shape-name "GetResourceMetricsRequest"))

(smithy/sdk/shapes:define-output get-resource-metrics-response common-lisp:nil
                                 ((aligned-start-time :target-type isotimestamp
                                   :member-name "AlignedStartTime")
                                  (aligned-end-time :target-type isotimestamp
                                   :member-name "AlignedEndTime")
                                  (identifier :target-type string :member-name
                                   "Identifier")
                                  (metric-list :target-type
                                   metric-key-data-points-list :member-name
                                   "MetricList")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "GetResourceMetricsResponse"))

(smithy/sdk/shapes:define-type isotimestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type identifier-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure insight common-lisp:nil
                                    ((insight-id :target-type string :required
                                      common-lisp:t :member-name "InsightId")
                                     (insight-type :target-type string
                                      :member-name "InsightType")
                                     (context :target-type context-type
                                      :member-name "Context")
                                     (start-time :target-type isotimestamp
                                      :member-name "StartTime")
                                     (end-time :target-type isotimestamp
                                      :member-name "EndTime")
                                     (severity :target-type severity
                                      :member-name "Severity")
                                     (supporting-insights :target-type
                                      insight-list :member-name
                                      "SupportingInsights")
                                     (description :target-type markdown-string
                                      :member-name "Description")
                                     (recommendations :target-type
                                      recommendation-list :member-name
                                      "Recommendations")
                                     (insight-data :target-type data-list
                                      :member-name "InsightData")
                                     (baseline-data :target-type data-list
                                      :member-name "BaselineData"))
                                    (:shape-name "Insight"))

(smithy/sdk/shapes:define-list insight-list :member insight)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-service-error common-lisp:nil
                                ((message :target-type error-string
                                  :member-name "Message"))
                                (:shape-name "InternalServiceError")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-argument-exception common-lisp:nil
                                ((message :target-type error-string
                                  :member-name "Message"))
                                (:shape-name "InvalidArgumentException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type limit smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-available-resource-dimensions-request
                                common-lisp:nil
                                ((service-type :target-type service-type
                                  :required common-lisp:t :member-name
                                  "ServiceType")
                                 (identifier :target-type identifier-string
                                  :required common-lisp:t :member-name
                                  "Identifier")
                                 (metrics :target-type dimensions-metric-list
                                  :required common-lisp:t :member-name
                                  "Metrics")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (authorized-actions :target-type
                                  authorized-actions-list :member-name
                                  "AuthorizedActions"))
                                (:shape-name
                                 "ListAvailableResourceDimensionsRequest"))

(smithy/sdk/shapes:define-output list-available-resource-dimensions-response
                                 common-lisp:nil
                                 ((metric-dimensions :target-type
                                   metric-dimensions-list :member-name
                                   "MetricDimensions")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListAvailableResourceDimensionsResponse"))

(smithy/sdk/shapes:define-input list-available-resource-metrics-request
                                common-lisp:nil
                                ((service-type :target-type service-type
                                  :required common-lisp:t :member-name
                                  "ServiceType")
                                 (identifier :target-type identifier-string
                                  :required common-lisp:t :member-name
                                  "Identifier")
                                 (metric-types :target-type metric-type-list
                                  :required common-lisp:t :member-name
                                  "MetricTypes")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListAvailableResourceMetricsRequest"))

(smithy/sdk/shapes:define-output list-available-resource-metrics-response
                                 common-lisp:nil
                                 ((metrics :target-type
                                   response-resource-metric-list :member-name
                                   "Metrics")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListAvailableResourceMetricsResponse"))

(smithy/sdk/shapes:define-input list-performance-analysis-reports-request
                                common-lisp:nil
                                ((service-type :target-type service-type
                                  :required common-lisp:t :member-name
                                  "ServiceType")
                                 (identifier :target-type identifier-string
                                  :required common-lisp:t :member-name
                                  "Identifier")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (list-tags :target-type boolean :member-name
                                  "ListTags"))
                                (:shape-name
                                 "ListPerformanceAnalysisReportsRequest"))

(smithy/sdk/shapes:define-output list-performance-analysis-reports-response
                                 common-lisp:nil
                                 ((analysis-reports :target-type
                                   analysis-report-summary-list :member-name
                                   "AnalysisReports")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListPerformanceAnalysisReportsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((service-type :target-type service-type
                                  :required common-lisp:t :member-name
                                  "ServiceType")
                                 (resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type markdown-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure metric-dimension-groups common-lisp:nil
                                    ((metric :target-type string :member-name
                                      "Metric")
                                     (groups :target-type
                                      dimension-group-detail-list :member-name
                                      "Groups"))
                                    (:shape-name "MetricDimensionGroups"))

(smithy/sdk/shapes:define-list metric-dimensions-list :member
                               metric-dimension-groups)

(smithy/sdk/shapes:define-structure metric-key-data-points common-lisp:nil
                                    ((key :target-type
                                      response-resource-metric-key :member-name
                                      "Key")
                                     (data-points :target-type data-points-list
                                      :member-name "DataPoints"))
                                    (:shape-name "MetricKeyDataPoints"))

(smithy/sdk/shapes:define-list metric-key-data-points-list :member
                               metric-key-data-points)

(smithy/sdk/shapes:define-structure metric-query common-lisp:nil
                                    ((metric :target-type sanitized-string
                                      :required common-lisp:t :member-name
                                      "Metric")
                                     (group-by :target-type dimension-group
                                      :member-name "GroupBy")
                                     (filter :target-type
                                      metric-query-filter-map :member-name
                                      "Filter"))
                                    (:shape-name "MetricQuery"))

(smithy/sdk/shapes:define-map metric-query-filter-map :key sanitized-string
                              :value request-string)

(smithy/sdk/shapes:define-list metric-query-list :member metric-query)

(smithy/sdk/shapes:define-list metric-type-list :member sanitized-string)

(smithy/sdk/shapes:define-list metric-values-list :member double)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error not-authorized-exception common-lisp:nil
                                ((message :target-type error-string
                                  :member-name "Message"))
                                (:shape-name "NotAuthorizedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure performance-insights-metric common-lisp:nil
                                    ((metric :target-type descriptive-string
                                      :member-name "Metric")
                                     (display-name :target-type
                                      descriptive-string :member-name
                                      "DisplayName")
                                     (dimensions :target-type descriptive-map
                                      :member-name "Dimensions")
                                     (filter :target-type descriptive-map
                                      :member-name "Filter")
                                     (value :target-type double :member-name
                                      "Value"))
                                    (:shape-name "PerformanceInsightsMetric"))

(smithy/sdk/shapes:define-enum period-alignment
    common-lisp:nil
  (:end-time "END_TIME")
  (:start-time "START_TIME"))

(smithy/sdk/shapes:define-structure recommendation common-lisp:nil
                                    ((recommendation-id :target-type string
                                      :member-name "RecommendationId")
                                     (recommendation-description :target-type
                                      markdown-string :member-name
                                      "RecommendationDescription"))
                                    (:shape-name "Recommendation"))

(smithy/sdk/shapes:define-list recommendation-list :member recommendation)

(smithy/sdk/shapes:define-type request-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list requested-dimension-list :member
                               sanitized-string)

(smithy/sdk/shapes:define-structure response-partition-key common-lisp:nil
                                    ((dimensions :target-type dimension-map
                                      :required common-lisp:t :member-name
                                      "Dimensions"))
                                    (:shape-name "ResponsePartitionKey"))

(smithy/sdk/shapes:define-list response-partition-key-list :member
                               response-partition-key)

(smithy/sdk/shapes:define-structure response-resource-metric common-lisp:nil
                                    ((metric :target-type string :member-name
                                      "Metric")
                                     (description :target-type description
                                      :member-name "Description")
                                     (unit :target-type string :member-name
                                      "Unit"))
                                    (:shape-name "ResponseResourceMetric"))

(smithy/sdk/shapes:define-structure response-resource-metric-key
                                    common-lisp:nil
                                    ((metric :target-type string :required
                                      common-lisp:t :member-name "Metric")
                                     (dimensions :target-type dimension-map
                                      :member-name "Dimensions"))
                                    (:shape-name "ResponseResourceMetricKey"))

(smithy/sdk/shapes:define-list response-resource-metric-list :member
                               response-resource-metric)

(smithy/sdk/shapes:define-type sanitized-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list sanitized-string-list :member sanitized-string)

(smithy/sdk/shapes:define-enum service-type
    common-lisp:nil
  (:rds "RDS")
  (:docdb "DOCDB"))

(smithy/sdk/shapes:define-enum severity
    common-lisp:nil
  (:low "LOW")
  (:medium "MEDIUM")
  (:high "HIGH"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

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
                                ((service-type :target-type service-type
                                  :required common-lisp:t :member-name
                                  "ServiceType")
                                 (resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum text-format
    common-lisp:nil
  (:plain-text "PLAIN_TEXT")
  (:markdown "MARKDOWN"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((service-type :target-type service-type
                                  :required common-lisp:t :member-name
                                  "ServiceType")
                                 (resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/operation:define-operation create-performance-analysis-report
                                       :shape-name
                                       "CreatePerformanceAnalysisReport" :input
                                       create-performance-analysis-report-request
                                       :output
                                       create-performance-analysis-report-response
                                       :errors
                                       (internal-service-error
                                        invalid-argument-exception
                                        not-authorized-exception))

(smithy/sdk/operation:define-operation delete-performance-analysis-report
                                       :shape-name
                                       "DeletePerformanceAnalysisReport" :input
                                       delete-performance-analysis-report-request
                                       :output
                                       delete-performance-analysis-report-response
                                       :errors
                                       (internal-service-error
                                        invalid-argument-exception
                                        not-authorized-exception))

(smithy/sdk/operation:define-operation describe-dimension-keys :shape-name
                                       "DescribeDimensionKeys" :input
                                       describe-dimension-keys-request :output
                                       describe-dimension-keys-response :errors
                                       (internal-service-error
                                        invalid-argument-exception
                                        not-authorized-exception))

(smithy/sdk/operation:define-operation get-dimension-key-details :shape-name
                                       "GetDimensionKeyDetails" :input
                                       get-dimension-key-details-request
                                       :output
                                       get-dimension-key-details-response
                                       :errors
                                       (internal-service-error
                                        invalid-argument-exception
                                        not-authorized-exception))

(smithy/sdk/operation:define-operation get-performance-analysis-report
                                       :shape-name
                                       "GetPerformanceAnalysisReport" :input
                                       get-performance-analysis-report-request
                                       :output
                                       get-performance-analysis-report-response
                                       :errors
                                       (internal-service-error
                                        invalid-argument-exception
                                        not-authorized-exception))

(smithy/sdk/operation:define-operation get-resource-metadata :shape-name
                                       "GetResourceMetadata" :input
                                       get-resource-metadata-request :output
                                       get-resource-metadata-response :errors
                                       (internal-service-error
                                        invalid-argument-exception
                                        not-authorized-exception))

(smithy/sdk/operation:define-operation get-resource-metrics :shape-name
                                       "GetResourceMetrics" :input
                                       get-resource-metrics-request :output
                                       get-resource-metrics-response :errors
                                       (internal-service-error
                                        invalid-argument-exception
                                        not-authorized-exception))

(smithy/sdk/operation:define-operation list-available-resource-dimensions
                                       :shape-name
                                       "ListAvailableResourceDimensions" :input
                                       list-available-resource-dimensions-request
                                       :output
                                       list-available-resource-dimensions-response
                                       :errors
                                       (internal-service-error
                                        invalid-argument-exception
                                        not-authorized-exception))

(smithy/sdk/operation:define-operation list-available-resource-metrics
                                       :shape-name
                                       "ListAvailableResourceMetrics" :input
                                       list-available-resource-metrics-request
                                       :output
                                       list-available-resource-metrics-response
                                       :errors
                                       (internal-service-error
                                        invalid-argument-exception
                                        not-authorized-exception))

(smithy/sdk/operation:define-operation list-performance-analysis-reports
                                       :shape-name
                                       "ListPerformanceAnalysisReports" :input
                                       list-performance-analysis-reports-request
                                       :output
                                       list-performance-analysis-reports-response
                                       :errors
                                       (internal-service-error
                                        invalid-argument-exception
                                        not-authorized-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-service-error
                                        invalid-argument-exception
                                        not-authorized-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-service-error
                                        invalid-argument-exception
                                        not-authorized-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-service-error
                                        invalid-argument-exception
                                        not-authorized-exception))
