(uiop/package:define-package #:pira/devops-guru (:use)
                             (:export #:access-denied-exception
                              #:account-health #:account-healths
                              #:account-id-list #:account-insight-health
                              #:add-notification-channel
                              #:add-notification-channel-request
                              #:add-notification-channel-response
                              #:amazon-code-guru-profiler-integration
                              #:analyzed-resource-count #:anomalous-log-group
                              #:anomalous-log-groups #:anomaly-description
                              #:anomaly-id #:anomaly-limit #:anomaly-name
                              #:anomaly-reported-time-range #:anomaly-resource
                              #:anomaly-resources #:anomaly-severity
                              #:anomaly-source #:anomaly-source-details
                              #:anomaly-source-metadata #:anomaly-status
                              #:anomaly-time-range #:anomaly-type
                              #:app-boundary-key #:associated-resource-arns
                              #:aws-account-id #:capstone-control-plane-service
                              #:channels #:client-token
                              #:cloud-formation-collection
                              #:cloud-formation-collection-filter
                              #:cloud-formation-cost-estimation-resource-collection-filter
                              #:cloud-formation-health
                              #:cloud-formation-healths
                              #:cloud-watch-metric-data-status-code
                              #:cloud-watch-metrics-data-summary
                              #:cloud-watch-metrics-detail
                              #:cloud-watch-metrics-details
                              #:cloud-watch-metrics-dimension
                              #:cloud-watch-metrics-dimension-name
                              #:cloud-watch-metrics-dimension-value
                              #:cloud-watch-metrics-dimensions
                              #:cloud-watch-metrics-metric-name
                              #:cloud-watch-metrics-namespace
                              #:cloud-watch-metrics-period
                              #:cloud-watch-metrics-stat
                              #:cloud-watch-metrics-unit #:conflict-exception
                              #:cost
                              #:cost-estimation-resource-collection-filter
                              #:cost-estimation-service-resource-count
                              #:cost-estimation-service-resource-state
                              #:cost-estimation-stack-names
                              #:cost-estimation-status
                              #:cost-estimation-tag-values
                              #:cost-estimation-time-range #:delete-insight
                              #:delete-insight-request
                              #:delete-insight-response
                              #:describe-account-health
                              #:describe-account-health-request
                              #:describe-account-health-response
                              #:describe-account-overview
                              #:describe-account-overview-request
                              #:describe-account-overview-response
                              #:describe-anomaly #:describe-anomaly-request
                              #:describe-anomaly-response
                              #:describe-event-sources-config
                              #:describe-event-sources-config-request
                              #:describe-event-sources-config-response
                              #:describe-feedback #:describe-feedback-request
                              #:describe-feedback-response #:describe-insight
                              #:describe-insight-request
                              #:describe-insight-response
                              #:describe-organization-health
                              #:describe-organization-health-request
                              #:describe-organization-health-response
                              #:describe-organization-overview
                              #:describe-organization-overview-request
                              #:describe-organization-overview-response
                              #:describe-organization-resource-collection-health
                              #:describe-organization-resource-collection-health-request
                              #:describe-organization-resource-collection-health-response
                              #:describe-resource-collection-health
                              #:describe-resource-collection-health-request
                              #:describe-resource-collection-health-response
                              #:describe-service-integration
                              #:describe-service-integration-request
                              #:describe-service-integration-response
                              #:end-time-range #:error-message-string
                              #:error-name-string #:error-quota-code-string
                              #:error-service-code-string #:event #:event-class
                              #:event-data-source #:event-id #:event-name
                              #:event-resource #:event-resource-arn
                              #:event-resource-name #:event-resource-type
                              #:event-resources #:event-source
                              #:event-source-opt-in-status
                              #:event-sources-config #:event-time-range
                              #:events #:explanation #:get-cost-estimation
                              #:get-cost-estimation-request
                              #:get-cost-estimation-response
                              #:get-resource-collection
                              #:get-resource-collection-request
                              #:get-resource-collection-response
                              #:insight-description #:insight-feedback
                              #:insight-feedback-option #:insight-health
                              #:insight-id #:insight-name #:insight-severities
                              #:insight-severity #:insight-status
                              #:insight-statuses #:insight-time-range
                              #:insight-type #:internal-server-exception
                              #:kmskey-id
                              #:kmsserver-side-encryption-integration
                              #:kmsserver-side-encryption-integration-config
                              #:list-anomalies-for-insight
                              #:list-anomalies-for-insight-filters
                              #:list-anomalies-for-insight-max-results
                              #:list-anomalies-for-insight-request
                              #:list-anomalies-for-insight-response
                              #:list-anomalous-log-groups
                              #:list-anomalous-log-groups-max-results
                              #:list-anomalous-log-groups-request
                              #:list-anomalous-log-groups-response
                              #:list-events #:list-events-filters
                              #:list-events-max-results #:list-events-request
                              #:list-events-response #:list-insights
                              #:list-insights-account-id-list
                              #:list-insights-any-status-filter
                              #:list-insights-closed-status-filter
                              #:list-insights-max-results
                              #:list-insights-ongoing-status-filter
                              #:list-insights-organizational-unit-id-list
                              #:list-insights-request #:list-insights-response
                              #:list-insights-status-filter
                              #:list-monitored-resources
                              #:list-monitored-resources-filters
                              #:list-monitored-resources-max-results
                              #:list-monitored-resources-request
                              #:list-monitored-resources-response
                              #:list-notification-channels
                              #:list-notification-channels-request
                              #:list-notification-channels-response
                              #:list-organization-insights
                              #:list-organization-insights-request
                              #:list-organization-insights-response
                              #:list-recommendations
                              #:list-recommendations-request
                              #:list-recommendations-response #:locale
                              #:log-anomaly-class #:log-anomaly-classes
                              #:log-anomaly-showcase #:log-anomaly-showcases
                              #:log-anomaly-token #:log-anomaly-type
                              #:log-event-id #:log-group-name #:log-stream-name
                              #:logs-anomaly-detection-integration
                              #:logs-anomaly-detection-integration-config
                              #:mean-time-to-recover-in-milliseconds
                              #:metric-value #:monitored-resource-identifier
                              #:monitored-resource-identifiers
                              #:monitored-resource-name #:notification-channel
                              #:notification-channel-config
                              #:notification-channel-id
                              #:notification-filter-config
                              #:notification-message-type
                              #:notification-message-types
                              #:num-metrics-analyzed
                              #:num-open-proactive-insights
                              #:num-open-reactive-insights
                              #:num-proactive-insights #:num-reactive-insights
                              #:number-of-log-lines-occurrences
                              #:number-of-log-lines-scanned
                              #:ops-center-integration
                              #:ops-center-integration-config #:opt-in-status
                              #:organization-resource-collection-max-results
                              #:organization-resource-collection-type
                              #:organizational-unit-id
                              #:organizational-unit-id-list
                              #:performance-insights-metric-dimension
                              #:performance-insights-metric-dimension-group
                              #:performance-insights-metric-dimensions
                              #:performance-insights-metric-display-name
                              #:performance-insights-metric-filter-key
                              #:performance-insights-metric-filter-map
                              #:performance-insights-metric-filter-value
                              #:performance-insights-metric-group
                              #:performance-insights-metric-limit-integer
                              #:performance-insights-metric-name
                              #:performance-insights-metric-query
                              #:performance-insights-metric-unit
                              #:performance-insights-metrics-detail
                              #:performance-insights-metrics-details
                              #:performance-insights-reference-comparison-values
                              #:performance-insights-reference-data
                              #:performance-insights-reference-data-list
                              #:performance-insights-reference-metric
                              #:performance-insights-reference-name
                              #:performance-insights-reference-scalar
                              #:performance-insights-stat
                              #:performance-insights-stat-type
                              #:performance-insights-stats
                              #:performance-insights-value-double
                              #:prediction-time-range #:proactive-anomalies
                              #:proactive-anomaly #:proactive-anomaly-summary
                              #:proactive-insight #:proactive-insight-summary
                              #:proactive-insights
                              #:proactive-organization-insight-summary
                              #:proactive-organization-insights #:put-feedback
                              #:put-feedback-request #:put-feedback-response
                              #:reactive-anomalies #:reactive-anomaly
                              #:reactive-anomaly-summary #:reactive-insight
                              #:reactive-insight-summary #:reactive-insights
                              #:reactive-organization-insight-summary
                              #:reactive-organization-insights #:recommendation
                              #:recommendation-category
                              #:recommendation-description
                              #:recommendation-link #:recommendation-name
                              #:recommendation-reason
                              #:recommendation-related-anomalies
                              #:recommendation-related-anomaly
                              #:recommendation-related-anomaly-resource
                              #:recommendation-related-anomaly-resource-name
                              #:recommendation-related-anomaly-resource-type
                              #:recommendation-related-anomaly-resources
                              #:recommendation-related-anomaly-source-detail
                              #:recommendation-related-cloud-watch-metrics-source-detail
                              #:recommendation-related-cloud-watch-metrics-source-details
                              #:recommendation-related-cloud-watch-metrics-source-metric-name
                              #:recommendation-related-cloud-watch-metrics-source-namespace
                              #:recommendation-related-event
                              #:recommendation-related-event-name
                              #:recommendation-related-event-resource
                              #:recommendation-related-event-resource-name
                              #:recommendation-related-event-resource-type
                              #:recommendation-related-event-resources
                              #:recommendation-related-events #:recommendations
                              #:related-anomaly-source-details
                              #:remove-notification-channel
                              #:remove-notification-channel-request
                              #:remove-notification-channel-response
                              #:resource-arn #:resource-collection
                              #:resource-collection-filter
                              #:resource-collection-type #:resource-hours
                              #:resource-id-string #:resource-id-type
                              #:resource-name #:resource-not-found-exception
                              #:resource-permission #:resource-type
                              #:resource-type-filter #:resource-type-filters
                              #:retry-after-seconds #:search-insights
                              #:search-insights-account-id-list
                              #:search-insights-filters
                              #:search-insights-max-results
                              #:search-insights-request
                              #:search-insights-response
                              #:search-organization-insights
                              #:search-organization-insights-filters
                              #:search-organization-insights-max-results
                              #:search-organization-insights-request
                              #:search-organization-insights-response
                              #:server-side-encryption-type
                              #:service-collection #:service-health
                              #:service-healths #:service-insight-health
                              #:service-integration-config #:service-name
                              #:service-names
                              #:service-quota-exceeded-exception
                              #:service-resource-cost #:service-resource-costs
                              #:sns-channel-config #:ssm-ops-item-id
                              #:stack-name #:stack-names
                              #:start-cost-estimation
                              #:start-cost-estimation-request
                              #:start-cost-estimation-response
                              #:start-time-range #:tag-collection
                              #:tag-collection-filter #:tag-collection-filters
                              #:tag-collections
                              #:tag-cost-estimation-resource-collection-filter
                              #:tag-cost-estimation-resource-collection-filters
                              #:tag-health #:tag-healths #:tag-value
                              #:tag-values #:throttling-exception #:timestamp
                              #:timestamp-metric-value-pair
                              #:timestamp-metric-value-pair-list #:topic-arn
                              #:update-cloud-formation-collection-filter
                              #:update-event-sources-config
                              #:update-event-sources-config-request
                              #:update-event-sources-config-response
                              #:update-resource-collection
                              #:update-resource-collection-action
                              #:update-resource-collection-filter
                              #:update-resource-collection-request
                              #:update-resource-collection-response
                              #:update-service-integration
                              #:update-service-integration-config
                              #:update-service-integration-request
                              #:update-service-integration-response
                              #:update-stack-names
                              #:update-tag-collection-filter
                              #:update-tag-collection-filters
                              #:update-tag-values #:uuid-next-token
                              #:validation-exception
                              #:validation-exception-field
                              #:validation-exception-fields
                              #:validation-exception-reason))
(common-lisp:in-package #:pira/devops-guru)

(smithy/sdk/service:define-service capstone-control-plane-service :shape-name
                                   "CapstoneControlPlaneService" :version
                                   "2020-12-01" :title "Amazon DevOps Guru"
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "DevOps Guru")
                                      ("arnNamespace" . "devops-guru")
                                      ("cloudFormationName" . "DevOpsGuru")
                                      ("cloudTrailEventSource"
                                       . "devopsguru.amazonaws.com")
                                      ("endpointPrefix" . "devops-guru"))
                                     ("aws.auth#sigv4"
                                      ("name" . "devops-guru"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message-string
                                  :required common-lisp:t :member-name
                                  "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure account-health common-lisp:nil
                                    ((account-id :target-type aws-account-id
                                      :member-name "AccountId")
                                     (insight :target-type
                                      account-insight-health :member-name
                                      "Insight"))
                                    (:shape-name "AccountHealth"))

(smithy/sdk/shapes:define-list account-healths :member account-health)

(smithy/sdk/shapes:define-list account-id-list :member aws-account-id)

(smithy/sdk/shapes:define-structure account-insight-health common-lisp:nil
                                    ((open-proactive-insights :target-type
                                      num-open-proactive-insights :member-name
                                      "OpenProactiveInsights")
                                     (open-reactive-insights :target-type
                                      num-open-reactive-insights :member-name
                                      "OpenReactiveInsights"))
                                    (:shape-name "AccountInsightHealth"))

(smithy/sdk/shapes:define-input add-notification-channel-request
                                common-lisp:nil
                                ((config :target-type
                                  notification-channel-config :required
                                  common-lisp:t :member-name "Config"))
                                (:shape-name "AddNotificationChannelRequest"))

(smithy/sdk/shapes:define-output add-notification-channel-response
                                 common-lisp:nil
                                 ((id :target-type notification-channel-id
                                   :required common-lisp:t :member-name "Id"))
                                 (:shape-name "AddNotificationChannelResponse"))

(smithy/sdk/shapes:define-structure amazon-code-guru-profiler-integration
                                    common-lisp:nil
                                    ((status :target-type
                                      event-source-opt-in-status :member-name
                                      "Status"))
                                    (:shape-name
                                     "AmazonCodeGuruProfilerIntegration"))

(smithy/sdk/shapes:define-type analyzed-resource-count
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure anomalous-log-group common-lisp:nil
                                    ((log-group-name :target-type
                                      log-group-name :member-name
                                      "LogGroupName")
                                     (impact-start-time :target-type timestamp
                                      :member-name "ImpactStartTime")
                                     (impact-end-time :target-type timestamp
                                      :member-name "ImpactEndTime")
                                     (number-of-log-lines-scanned :target-type
                                      number-of-log-lines-scanned :member-name
                                      "NumberOfLogLinesScanned")
                                     (log-anomaly-showcases :target-type
                                      log-anomaly-showcases :member-name
                                      "LogAnomalyShowcases"))
                                    (:shape-name "AnomalousLogGroup"))

(smithy/sdk/shapes:define-list anomalous-log-groups :member anomalous-log-group)

(smithy/sdk/shapes:define-type anomaly-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type anomaly-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type anomaly-limit smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type anomaly-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure anomaly-reported-time-range common-lisp:nil
                                    ((open-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "OpenTime")
                                     (close-time :target-type timestamp
                                      :member-name "CloseTime"))
                                    (:shape-name "AnomalyReportedTimeRange"))

(smithy/sdk/shapes:define-structure anomaly-resource common-lisp:nil
                                    ((name :target-type resource-name
                                      :member-name "Name")
                                     (type :target-type resource-type
                                      :member-name "Type"))
                                    (:shape-name "AnomalyResource"))

(smithy/sdk/shapes:define-list anomaly-resources :member anomaly-resource)

(smithy/sdk/shapes:define-enum anomaly-severity
    common-lisp:nil
  (:low "LOW")
  (:medium "MEDIUM")
  (:high "HIGH"))

(smithy/sdk/shapes:define-type anomaly-source smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure anomaly-source-details common-lisp:nil
                                    ((cloud-watch-metrics :target-type
                                      cloud-watch-metrics-details :member-name
                                      "CloudWatchMetrics")
                                     (performance-insights-metrics :target-type
                                      performance-insights-metrics-details
                                      :member-name
                                      "PerformanceInsightsMetrics"))
                                    (:shape-name "AnomalySourceDetails"))

(smithy/sdk/shapes:define-structure anomaly-source-metadata common-lisp:nil
                                    ((source :target-type anomaly-source
                                      :member-name "Source")
                                     (source-resource-name :target-type
                                      resource-name :member-name
                                      "SourceResourceName")
                                     (source-resource-type :target-type
                                      resource-type :member-name
                                      "SourceResourceType"))
                                    (:shape-name "AnomalySourceMetadata"))

(smithy/sdk/shapes:define-enum anomaly-status
    common-lisp:nil
  (:ongoing "ONGOING")
  (:closed "CLOSED"))

(smithy/sdk/shapes:define-structure anomaly-time-range common-lisp:nil
                                    ((start-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "StartTime")
                                     (end-time :target-type timestamp
                                      :member-name "EndTime"))
                                    (:shape-name "AnomalyTimeRange"))

(smithy/sdk/shapes:define-enum anomaly-type
    common-lisp:nil
  (:causal "CAUSAL")
  (:contextual "CONTEXTUAL"))

(smithy/sdk/shapes:define-type app-boundary-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list associated-resource-arns :member resource-arn)

(smithy/sdk/shapes:define-type aws-account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list channels :member notification-channel)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cloud-formation-collection common-lisp:nil
                                    ((stack-names :target-type stack-names
                                      :member-name "StackNames"))
                                    (:shape-name "CloudFormationCollection"))

(smithy/sdk/shapes:define-structure cloud-formation-collection-filter
                                    common-lisp:nil
                                    ((stack-names :target-type stack-names
                                      :member-name "StackNames"))
                                    (:shape-name
                                     "CloudFormationCollectionFilter"))

(smithy/sdk/shapes:define-structure
 cloud-formation-cost-estimation-resource-collection-filter common-lisp:nil
 ((stack-names :target-type cost-estimation-stack-names :member-name
   "StackNames"))
 (:shape-name "CloudFormationCostEstimationResourceCollectionFilter"))

(smithy/sdk/shapes:define-structure cloud-formation-health common-lisp:nil
                                    ((stack-name :target-type stack-name
                                      :member-name "StackName")
                                     (insight :target-type insight-health
                                      :member-name "Insight")
                                     (analyzed-resource-count :target-type
                                      analyzed-resource-count :member-name
                                      "AnalyzedResourceCount"))
                                    (:shape-name "CloudFormationHealth"))

(smithy/sdk/shapes:define-list cloud-formation-healths :member
                               cloud-formation-health)

(smithy/sdk/shapes:define-enum cloud-watch-metric-data-status-code
    common-lisp:nil
  (:complete "Complete")
  (:internal-error "InternalError")
  (:partial-data "PartialData"))

(smithy/sdk/shapes:define-structure cloud-watch-metrics-data-summary
                                    common-lisp:nil
                                    ((timestamp-metric-value-pair-list
                                      :target-type
                                      timestamp-metric-value-pair-list
                                      :member-name
                                      "TimestampMetricValuePairList")
                                     (status-code :target-type
                                      cloud-watch-metric-data-status-code
                                      :member-name "StatusCode"))
                                    (:shape-name
                                     "CloudWatchMetricsDataSummary"))

(smithy/sdk/shapes:define-structure cloud-watch-metrics-detail common-lisp:nil
                                    ((metric-name :target-type
                                      cloud-watch-metrics-metric-name
                                      :member-name "MetricName")
                                     (namespace :target-type
                                      cloud-watch-metrics-namespace
                                      :member-name "Namespace")
                                     (dimensions :target-type
                                      cloud-watch-metrics-dimensions
                                      :member-name "Dimensions")
                                     (stat :target-type
                                      cloud-watch-metrics-stat :member-name
                                      "Stat")
                                     (unit :target-type
                                      cloud-watch-metrics-unit :member-name
                                      "Unit")
                                     (period :target-type
                                      cloud-watch-metrics-period :member-name
                                      "Period")
                                     (metric-data-summary :target-type
                                      cloud-watch-metrics-data-summary
                                      :member-name "MetricDataSummary"))
                                    (:shape-name "CloudWatchMetricsDetail"))

(smithy/sdk/shapes:define-list cloud-watch-metrics-details :member
                               cloud-watch-metrics-detail)

(smithy/sdk/shapes:define-structure cloud-watch-metrics-dimension
                                    common-lisp:nil
                                    ((name :target-type
                                      cloud-watch-metrics-dimension-name
                                      :member-name "Name")
                                     (value :target-type
                                      cloud-watch-metrics-dimension-value
                                      :member-name "Value"))
                                    (:shape-name "CloudWatchMetricsDimension"))

(smithy/sdk/shapes:define-type cloud-watch-metrics-dimension-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type cloud-watch-metrics-dimension-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list cloud-watch-metrics-dimensions :member
                               cloud-watch-metrics-dimension)

(smithy/sdk/shapes:define-type cloud-watch-metrics-metric-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type cloud-watch-metrics-namespace
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type cloud-watch-metrics-period
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum cloud-watch-metrics-stat
    common-lisp:nil
  (:sum "Sum")
  (:average "Average")
  (:sample-count "SampleCount")
  (:minimum "Minimum")
  (:maximum "Maximum")
  (:p99 "p99")
  (:p90 "p90")
  (:p50 "p50"))

(smithy/sdk/shapes:define-type cloud-watch-metrics-unit
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message-string
                                  :required common-lisp:t :member-name
                                  "Message")
                                 (resource-id :target-type resource-id-string
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (resource-type :target-type resource-id-type
                                  :required common-lisp:t :member-name
                                  "ResourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type cost smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure cost-estimation-resource-collection-filter
                                    common-lisp:nil
                                    ((cloud-formation :target-type
                                      cloud-formation-cost-estimation-resource-collection-filter
                                      :member-name "CloudFormation")
                                     (tags :target-type
                                      tag-cost-estimation-resource-collection-filters
                                      :member-name "Tags"))
                                    (:shape-name
                                     "CostEstimationResourceCollectionFilter"))

(smithy/sdk/shapes:define-type cost-estimation-service-resource-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum cost-estimation-service-resource-state
    common-lisp:nil
  (:active "ACTIVE")
  (:inactive "INACTIVE"))

(smithy/sdk/shapes:define-list cost-estimation-stack-names :member stack-name)

(smithy/sdk/shapes:define-enum cost-estimation-status
    common-lisp:nil
  (:ongoing "ONGOING")
  (:completed "COMPLETED"))

(smithy/sdk/shapes:define-list cost-estimation-tag-values :member tag-value)

(smithy/sdk/shapes:define-structure cost-estimation-time-range common-lisp:nil
                                    ((start-time :target-type timestamp
                                      :member-name "StartTime")
                                     (end-time :target-type timestamp
                                      :member-name "EndTime"))
                                    (:shape-name "CostEstimationTimeRange"))

(smithy/sdk/shapes:define-input delete-insight-request common-lisp:nil
                                ((id :target-type insight-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteInsightRequest"))

(smithy/sdk/shapes:define-output delete-insight-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteInsightResponse"))

(smithy/sdk/shapes:define-input describe-account-health-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "DescribeAccountHealthRequest"))

(smithy/sdk/shapes:define-output describe-account-health-response
                                 common-lisp:nil
                                 ((open-reactive-insights :target-type
                                   num-open-reactive-insights :required
                                   common-lisp:t :member-name
                                   "OpenReactiveInsights")
                                  (open-proactive-insights :target-type
                                   num-open-proactive-insights :required
                                   common-lisp:t :member-name
                                   "OpenProactiveInsights")
                                  (metrics-analyzed :target-type
                                   num-metrics-analyzed :required common-lisp:t
                                   :member-name "MetricsAnalyzed")
                                  (resource-hours :target-type resource-hours
                                   :required common-lisp:t :member-name
                                   "ResourceHours")
                                  (analyzed-resource-count :target-type
                                   analyzed-resource-count :member-name
                                   "AnalyzedResourceCount"))
                                 (:shape-name "DescribeAccountHealthResponse"))

(smithy/sdk/shapes:define-input describe-account-overview-request
                                common-lisp:nil
                                ((from-time :target-type timestamp :required
                                  common-lisp:t :member-name "FromTime")
                                 (to-time :target-type timestamp :member-name
                                  "ToTime"))
                                (:shape-name "DescribeAccountOverviewRequest"))

(smithy/sdk/shapes:define-output describe-account-overview-response
                                 common-lisp:nil
                                 ((reactive-insights :target-type
                                   num-reactive-insights :required
                                   common-lisp:t :member-name
                                   "ReactiveInsights")
                                  (proactive-insights :target-type
                                   num-proactive-insights :required
                                   common-lisp:t :member-name
                                   "ProactiveInsights")
                                  (mean-time-to-recover-in-milliseconds
                                   :target-type
                                   mean-time-to-recover-in-milliseconds
                                   :required common-lisp:t :member-name
                                   "MeanTimeToRecoverInMilliseconds"))
                                 (:shape-name
                                  "DescribeAccountOverviewResponse"))

(smithy/sdk/shapes:define-input describe-anomaly-request common-lisp:nil
                                ((id :target-type anomaly-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (account-id :target-type aws-account-id
                                  :member-name "AccountId" :http-query
                                  "AccountId"))
                                (:shape-name "DescribeAnomalyRequest"))

(smithy/sdk/shapes:define-output describe-anomaly-response common-lisp:nil
                                 ((proactive-anomaly :target-type
                                   proactive-anomaly :member-name
                                   "ProactiveAnomaly")
                                  (reactive-anomaly :target-type
                                   reactive-anomaly :member-name
                                   "ReactiveAnomaly"))
                                 (:shape-name "DescribeAnomalyResponse"))

(smithy/sdk/shapes:define-input describe-event-sources-config-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "DescribeEventSourcesConfigRequest"))

(smithy/sdk/shapes:define-output describe-event-sources-config-response
                                 common-lisp:nil
                                 ((event-sources :target-type
                                   event-sources-config :member-name
                                   "EventSources"))
                                 (:shape-name
                                  "DescribeEventSourcesConfigResponse"))

(smithy/sdk/shapes:define-input describe-feedback-request common-lisp:nil
                                ((insight-id :target-type insight-id
                                  :member-name "InsightId"))
                                (:shape-name "DescribeFeedbackRequest"))

(smithy/sdk/shapes:define-output describe-feedback-response common-lisp:nil
                                 ((insight-feedback :target-type
                                   insight-feedback :member-name
                                   "InsightFeedback"))
                                 (:shape-name "DescribeFeedbackResponse"))

(smithy/sdk/shapes:define-input describe-insight-request common-lisp:nil
                                ((id :target-type insight-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (account-id :target-type aws-account-id
                                  :member-name "AccountId" :http-query
                                  "AccountId"))
                                (:shape-name "DescribeInsightRequest"))

(smithy/sdk/shapes:define-output describe-insight-response common-lisp:nil
                                 ((proactive-insight :target-type
                                   proactive-insight :member-name
                                   "ProactiveInsight")
                                  (reactive-insight :target-type
                                   reactive-insight :member-name
                                   "ReactiveInsight"))
                                 (:shape-name "DescribeInsightResponse"))

(smithy/sdk/shapes:define-input describe-organization-health-request
                                common-lisp:nil
                                ((account-ids :target-type account-id-list
                                  :member-name "AccountIds")
                                 (organizational-unit-ids :target-type
                                  organizational-unit-id-list :member-name
                                  "OrganizationalUnitIds"))
                                (:shape-name
                                 "DescribeOrganizationHealthRequest"))

(smithy/sdk/shapes:define-output describe-organization-health-response
                                 common-lisp:nil
                                 ((open-reactive-insights :target-type
                                   num-open-reactive-insights :required
                                   common-lisp:t :member-name
                                   "OpenReactiveInsights")
                                  (open-proactive-insights :target-type
                                   num-open-proactive-insights :required
                                   common-lisp:t :member-name
                                   "OpenProactiveInsights")
                                  (metrics-analyzed :target-type
                                   num-metrics-analyzed :required common-lisp:t
                                   :member-name "MetricsAnalyzed")
                                  (resource-hours :target-type resource-hours
                                   :required common-lisp:t :member-name
                                   "ResourceHours"))
                                 (:shape-name
                                  "DescribeOrganizationHealthResponse"))

(smithy/sdk/shapes:define-input describe-organization-overview-request
                                common-lisp:nil
                                ((from-time :target-type timestamp :required
                                  common-lisp:t :member-name "FromTime")
                                 (to-time :target-type timestamp :member-name
                                  "ToTime")
                                 (account-ids :target-type account-id-list
                                  :member-name "AccountIds")
                                 (organizational-unit-ids :target-type
                                  organizational-unit-id-list :member-name
                                  "OrganizationalUnitIds"))
                                (:shape-name
                                 "DescribeOrganizationOverviewRequest"))

(smithy/sdk/shapes:define-output describe-organization-overview-response
                                 common-lisp:nil
                                 ((reactive-insights :target-type
                                   num-reactive-insights :required
                                   common-lisp:t :member-name
                                   "ReactiveInsights")
                                  (proactive-insights :target-type
                                   num-proactive-insights :required
                                   common-lisp:t :member-name
                                   "ProactiveInsights"))
                                 (:shape-name
                                  "DescribeOrganizationOverviewResponse"))

(smithy/sdk/shapes:define-input
 describe-organization-resource-collection-health-request common-lisp:nil
 ((organization-resource-collection-type :target-type
   organization-resource-collection-type :required common-lisp:t :member-name
   "OrganizationResourceCollectionType")
  (account-ids :target-type account-id-list :member-name "AccountIds")
  (organizational-unit-ids :target-type organizational-unit-id-list
   :member-name "OrganizationalUnitIds")
  (next-token :target-type uuid-next-token :member-name "NextToken")
  (max-results :target-type organization-resource-collection-max-results
   :member-name "MaxResults"))
 (:shape-name "DescribeOrganizationResourceCollectionHealthRequest"))

(smithy/sdk/shapes:define-output
 describe-organization-resource-collection-health-response common-lisp:nil
 ((cloud-formation :target-type cloud-formation-healths :member-name
   "CloudFormation")
  (service :target-type service-healths :member-name "Service")
  (account :target-type account-healths :member-name "Account")
  (next-token :target-type uuid-next-token :member-name "NextToken")
  (tags :target-type tag-healths :member-name "Tags"))
 (:shape-name "DescribeOrganizationResourceCollectionHealthResponse"))

(smithy/sdk/shapes:define-input describe-resource-collection-health-request
                                common-lisp:nil
                                ((resource-collection-type :target-type
                                  resource-collection-type :required
                                  common-lisp:t :member-name
                                  "ResourceCollectionType" :http-label
                                  common-lisp:t)
                                 (next-token :target-type uuid-next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken"))
                                (:shape-name
                                 "DescribeResourceCollectionHealthRequest"))

(smithy/sdk/shapes:define-output describe-resource-collection-health-response
                                 common-lisp:nil
                                 ((cloud-formation :target-type
                                   cloud-formation-healths :member-name
                                   "CloudFormation")
                                  (service :target-type service-healths
                                   :member-name "Service")
                                  (next-token :target-type uuid-next-token
                                   :member-name "NextToken")
                                  (tags :target-type tag-healths :member-name
                                   "Tags"))
                                 (:shape-name
                                  "DescribeResourceCollectionHealthResponse"))

(smithy/sdk/shapes:define-input describe-service-integration-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "DescribeServiceIntegrationRequest"))

(smithy/sdk/shapes:define-output describe-service-integration-response
                                 common-lisp:nil
                                 ((service-integration :target-type
                                   service-integration-config :member-name
                                   "ServiceIntegration"))
                                 (:shape-name
                                  "DescribeServiceIntegrationResponse"))

(smithy/sdk/shapes:define-structure end-time-range common-lisp:nil
                                    ((from-time :target-type timestamp
                                      :member-name "FromTime")
                                     (to-time :target-type timestamp
                                      :member-name "ToTime"))
                                    (:shape-name "EndTimeRange"))

(smithy/sdk/shapes:define-type error-message-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-name-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-quota-code-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-service-code-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure event common-lisp:nil
                                    ((resource-collection :target-type
                                      resource-collection :member-name
                                      "ResourceCollection")
                                     (id :target-type event-id :member-name
                                      "Id")
                                     (time :target-type timestamp :member-name
                                      "Time")
                                     (event-source :target-type event-source
                                      :member-name "EventSource")
                                     (name :target-type event-name :member-name
                                      "Name")
                                     (data-source :target-type
                                      event-data-source :member-name
                                      "DataSource")
                                     (event-class :target-type event-class
                                      :member-name "EventClass")
                                     (resources :target-type event-resources
                                      :member-name "Resources"))
                                    (:shape-name "Event"))

(smithy/sdk/shapes:define-enum event-class
    common-lisp:nil
  (:infrastructure "INFRASTRUCTURE")
  (:deployment "DEPLOYMENT")
  (:security-change "SECURITY_CHANGE")
  (:config-change "CONFIG_CHANGE")
  (:schema-change "SCHEMA_CHANGE"))

(smithy/sdk/shapes:define-enum event-data-source
    common-lisp:nil
  (:aws-cloud-trail "AWS_CLOUD_TRAIL")
  (:aws-code-deploy "AWS_CODE_DEPLOY"))

(smithy/sdk/shapes:define-type event-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type event-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure event-resource common-lisp:nil
                                    ((type :target-type event-resource-type
                                      :member-name "Type")
                                     (name :target-type event-resource-name
                                      :member-name "Name")
                                     (arn :target-type event-resource-arn
                                      :member-name "Arn"))
                                    (:shape-name "EventResource"))

(smithy/sdk/shapes:define-type event-resource-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type event-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type event-resource-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list event-resources :member event-resource)

(smithy/sdk/shapes:define-type event-source smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum event-source-opt-in-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure event-sources-config common-lisp:nil
                                    ((amazon-code-guru-profiler :target-type
                                      amazon-code-guru-profiler-integration
                                      :member-name "AmazonCodeGuruProfiler"))
                                    (:shape-name "EventSourcesConfig"))

(smithy/sdk/shapes:define-structure event-time-range common-lisp:nil
                                    ((from-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "FromTime")
                                     (to-time :target-type timestamp :required
                                      common-lisp:t :member-name "ToTime"))
                                    (:shape-name "EventTimeRange"))

(smithy/sdk/shapes:define-list events :member event)

(smithy/sdk/shapes:define-type explanation smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-cost-estimation-request common-lisp:nil
                                ((next-token :target-type uuid-next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken"))
                                (:shape-name "GetCostEstimationRequest"))

(smithy/sdk/shapes:define-output get-cost-estimation-response common-lisp:nil
                                 ((resource-collection :target-type
                                   cost-estimation-resource-collection-filter
                                   :member-name "ResourceCollection")
                                  (status :target-type cost-estimation-status
                                   :member-name "Status")
                                  (costs :target-type service-resource-costs
                                   :member-name "Costs")
                                  (time-range :target-type
                                   cost-estimation-time-range :member-name
                                   "TimeRange")
                                  (total-cost :target-type cost :member-name
                                   "TotalCost")
                                  (next-token :target-type uuid-next-token
                                   :member-name "NextToken"))
                                 (:shape-name "GetCostEstimationResponse"))

(smithy/sdk/shapes:define-input get-resource-collection-request common-lisp:nil
                                ((resource-collection-type :target-type
                                  resource-collection-type :required
                                  common-lisp:t :member-name
                                  "ResourceCollectionType" :http-label
                                  common-lisp:t)
                                 (next-token :target-type uuid-next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken"))
                                (:shape-name "GetResourceCollectionRequest"))

(smithy/sdk/shapes:define-output get-resource-collection-response
                                 common-lisp:nil
                                 ((resource-collection :target-type
                                   resource-collection-filter :member-name
                                   "ResourceCollection")
                                  (next-token :target-type uuid-next-token
                                   :member-name "NextToken"))
                                 (:shape-name "GetResourceCollectionResponse"))

(smithy/sdk/shapes:define-type insight-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure insight-feedback common-lisp:nil
                                    ((id :target-type insight-id :member-name
                                      "Id")
                                     (feedback :target-type
                                      insight-feedback-option :member-name
                                      "Feedback"))
                                    (:shape-name "InsightFeedback"))

(smithy/sdk/shapes:define-enum insight-feedback-option
    common-lisp:nil
  (:valid-collection "VALID_COLLECTION")
  (:recommendation-useful "RECOMMENDATION_USEFUL")
  (:alert-too-sensitive "ALERT_TOO_SENSITIVE")
  (:data-noisy-anomaly "DATA_NOISY_ANOMALY")
  (:data-incorrect "DATA_INCORRECT"))

(smithy/sdk/shapes:define-structure insight-health common-lisp:nil
                                    ((open-proactive-insights :target-type
                                      num-open-proactive-insights :member-name
                                      "OpenProactiveInsights")
                                     (open-reactive-insights :target-type
                                      num-open-reactive-insights :member-name
                                      "OpenReactiveInsights")
                                     (mean-time-to-recover-in-milliseconds
                                      :target-type
                                      mean-time-to-recover-in-milliseconds
                                      :member-name
                                      "MeanTimeToRecoverInMilliseconds"))
                                    (:shape-name "InsightHealth"))

(smithy/sdk/shapes:define-type insight-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type insight-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list insight-severities :member insight-severity)

(smithy/sdk/shapes:define-enum insight-severity
    common-lisp:nil
  (:low "LOW")
  (:medium "MEDIUM")
  (:high "HIGH"))

(smithy/sdk/shapes:define-enum insight-status
    common-lisp:nil
  (:ongoing "ONGOING")
  (:closed "CLOSED"))

(smithy/sdk/shapes:define-list insight-statuses :member insight-status)

(smithy/sdk/shapes:define-structure insight-time-range common-lisp:nil
                                    ((start-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "StartTime")
                                     (end-time :target-type timestamp
                                      :member-name "EndTime"))
                                    (:shape-name "InsightTimeRange"))

(smithy/sdk/shapes:define-enum insight-type
    common-lisp:nil
  (:reactive "REACTIVE")
  (:proactive "PROACTIVE"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message-string
                                  :required common-lisp:t :member-name
                                  "Message")
                                 (retry-after-seconds :target-type
                                  retry-after-seconds :member-name
                                  "RetryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type kmskey-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure kmsserver-side-encryption-integration
                                    common-lisp:nil
                                    ((kmskey-id :target-type kmskey-id
                                      :member-name "KMSKeyId")
                                     (opt-in-status :target-type opt-in-status
                                      :member-name "OptInStatus")
                                     (type :target-type
                                      server-side-encryption-type :member-name
                                      "Type"))
                                    (:shape-name
                                     "KMSServerSideEncryptionIntegration"))

(smithy/sdk/shapes:define-structure
 kmsserver-side-encryption-integration-config common-lisp:nil
 ((kmskey-id :target-type kmskey-id :member-name "KMSKeyId")
  (opt-in-status :target-type opt-in-status :member-name "OptInStatus")
  (type :target-type server-side-encryption-type :member-name "Type"))
 (:shape-name "KMSServerSideEncryptionIntegrationConfig"))

(smithy/sdk/shapes:define-structure list-anomalies-for-insight-filters
                                    common-lisp:nil
                                    ((service-collection :target-type
                                      service-collection :member-name
                                      "ServiceCollection"))
                                    (:shape-name
                                     "ListAnomaliesForInsightFilters"))

(smithy/sdk/shapes:define-type list-anomalies-for-insight-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-anomalies-for-insight-request
                                common-lisp:nil
                                ((insight-id :target-type insight-id :required
                                  common-lisp:t :member-name "InsightId"
                                  :http-label common-lisp:t)
                                 (start-time-range :target-type
                                  start-time-range :member-name
                                  "StartTimeRange")
                                 (max-results :target-type
                                  list-anomalies-for-insight-max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type uuid-next-token
                                  :member-name "NextToken")
                                 (account-id :target-type aws-account-id
                                  :member-name "AccountId")
                                 (filters :target-type
                                  list-anomalies-for-insight-filters
                                  :member-name "Filters"))
                                (:shape-name "ListAnomaliesForInsightRequest"))

(smithy/sdk/shapes:define-output list-anomalies-for-insight-response
                                 common-lisp:nil
                                 ((proactive-anomalies :target-type
                                   proactive-anomalies :member-name
                                   "ProactiveAnomalies")
                                  (reactive-anomalies :target-type
                                   reactive-anomalies :member-name
                                   "ReactiveAnomalies")
                                  (next-token :target-type uuid-next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListAnomaliesForInsightResponse"))

(smithy/sdk/shapes:define-type list-anomalous-log-groups-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-anomalous-log-groups-request
                                common-lisp:nil
                                ((insight-id :target-type insight-id :required
                                  common-lisp:t :member-name "InsightId")
                                 (max-results :target-type
                                  list-anomalous-log-groups-max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type uuid-next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListAnomalousLogGroupsRequest"))

(smithy/sdk/shapes:define-output list-anomalous-log-groups-response
                                 common-lisp:nil
                                 ((insight-id :target-type insight-id :required
                                   common-lisp:t :member-name "InsightId")
                                  (anomalous-log-groups :target-type
                                   anomalous-log-groups :required common-lisp:t
                                   :member-name "AnomalousLogGroups")
                                  (next-token :target-type uuid-next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListAnomalousLogGroupsResponse"))

(smithy/sdk/shapes:define-structure list-events-filters common-lisp:nil
                                    ((insight-id :target-type insight-id
                                      :member-name "InsightId")
                                     (event-time-range :target-type
                                      event-time-range :member-name
                                      "EventTimeRange")
                                     (event-class :target-type event-class
                                      :member-name "EventClass")
                                     (event-source :target-type event-source
                                      :member-name "EventSource")
                                     (data-source :target-type
                                      event-data-source :member-name
                                      "DataSource")
                                     (resource-collection :target-type
                                      resource-collection :member-name
                                      "ResourceCollection"))
                                    (:shape-name "ListEventsFilters"))

(smithy/sdk/shapes:define-type list-events-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-events-request common-lisp:nil
                                ((filters :target-type list-events-filters
                                  :required common-lisp:t :member-name
                                  "Filters")
                                 (max-results :target-type
                                  list-events-max-results :member-name
                                  "MaxResults")
                                 (next-token :target-type uuid-next-token
                                  :member-name "NextToken")
                                 (account-id :target-type aws-account-id
                                  :member-name "AccountId"))
                                (:shape-name "ListEventsRequest"))

(smithy/sdk/shapes:define-output list-events-response common-lisp:nil
                                 ((events :target-type events :required
                                   common-lisp:t :member-name "Events")
                                  (next-token :target-type uuid-next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListEventsResponse"))

(smithy/sdk/shapes:define-list list-insights-account-id-list :member
                               aws-account-id)

(smithy/sdk/shapes:define-structure list-insights-any-status-filter
                                    common-lisp:nil
                                    ((type :target-type insight-type :required
                                      common-lisp:t :member-name "Type")
                                     (start-time-range :target-type
                                      start-time-range :required common-lisp:t
                                      :member-name "StartTimeRange"))
                                    (:shape-name "ListInsightsAnyStatusFilter"))

(smithy/sdk/shapes:define-structure list-insights-closed-status-filter
                                    common-lisp:nil
                                    ((type :target-type insight-type :required
                                      common-lisp:t :member-name "Type")
                                     (end-time-range :target-type
                                      end-time-range :required common-lisp:t
                                      :member-name "EndTimeRange"))
                                    (:shape-name
                                     "ListInsightsClosedStatusFilter"))

(smithy/sdk/shapes:define-type list-insights-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure list-insights-ongoing-status-filter
                                    common-lisp:nil
                                    ((type :target-type insight-type :required
                                      common-lisp:t :member-name "Type"))
                                    (:shape-name
                                     "ListInsightsOngoingStatusFilter"))

(smithy/sdk/shapes:define-list list-insights-organizational-unit-id-list
                               :member organizational-unit-id)

(smithy/sdk/shapes:define-input list-insights-request common-lisp:nil
                                ((status-filter :target-type
                                  list-insights-status-filter :required
                                  common-lisp:t :member-name "StatusFilter")
                                 (max-results :target-type
                                  list-insights-max-results :member-name
                                  "MaxResults")
                                 (next-token :target-type uuid-next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListInsightsRequest"))

(smithy/sdk/shapes:define-output list-insights-response common-lisp:nil
                                 ((proactive-insights :target-type
                                   proactive-insights :member-name
                                   "ProactiveInsights")
                                  (reactive-insights :target-type
                                   reactive-insights :member-name
                                   "ReactiveInsights")
                                  (next-token :target-type uuid-next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListInsightsResponse"))

(smithy/sdk/shapes:define-structure list-insights-status-filter common-lisp:nil
                                    ((ongoing :target-type
                                      list-insights-ongoing-status-filter
                                      :member-name "Ongoing")
                                     (closed :target-type
                                      list-insights-closed-status-filter
                                      :member-name "Closed")
                                     (any :target-type
                                      list-insights-any-status-filter
                                      :member-name "Any"))
                                    (:shape-name "ListInsightsStatusFilter"))

(smithy/sdk/shapes:define-structure list-monitored-resources-filters
                                    common-lisp:nil
                                    ((resource-permission :target-type
                                      resource-permission :required
                                      common-lisp:t :member-name
                                      "ResourcePermission")
                                     (resource-type-filters :target-type
                                      resource-type-filters :required
                                      common-lisp:t :member-name
                                      "ResourceTypeFilters"))
                                    (:shape-name
                                     "ListMonitoredResourcesFilters"))

(smithy/sdk/shapes:define-type list-monitored-resources-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-monitored-resources-request
                                common-lisp:nil
                                ((filters :target-type
                                  list-monitored-resources-filters :member-name
                                  "Filters")
                                 (max-results :target-type
                                  list-monitored-resources-max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type uuid-next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListMonitoredResourcesRequest"))

(smithy/sdk/shapes:define-output list-monitored-resources-response
                                 common-lisp:nil
                                 ((monitored-resource-identifiers :target-type
                                   monitored-resource-identifiers :required
                                   common-lisp:t :member-name
                                   "MonitoredResourceIdentifiers")
                                  (next-token :target-type uuid-next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListMonitoredResourcesResponse"))

(smithy/sdk/shapes:define-input list-notification-channels-request
                                common-lisp:nil
                                ((next-token :target-type uuid-next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListNotificationChannelsRequest"))

(smithy/sdk/shapes:define-output list-notification-channels-response
                                 common-lisp:nil
                                 ((channels :target-type channels :member-name
                                   "Channels")
                                  (next-token :target-type uuid-next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListNotificationChannelsResponse"))

(smithy/sdk/shapes:define-input list-organization-insights-request
                                common-lisp:nil
                                ((status-filter :target-type
                                  list-insights-status-filter :required
                                  common-lisp:t :member-name "StatusFilter")
                                 (max-results :target-type
                                  list-insights-max-results :member-name
                                  "MaxResults")
                                 (account-ids :target-type
                                  list-insights-account-id-list :member-name
                                  "AccountIds")
                                 (organizational-unit-ids :target-type
                                  list-insights-organizational-unit-id-list
                                  :member-name "OrganizationalUnitIds")
                                 (next-token :target-type uuid-next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListOrganizationInsightsRequest"))

(smithy/sdk/shapes:define-output list-organization-insights-response
                                 common-lisp:nil
                                 ((proactive-insights :target-type
                                   proactive-organization-insights :member-name
                                   "ProactiveInsights")
                                  (reactive-insights :target-type
                                   reactive-organization-insights :member-name
                                   "ReactiveInsights")
                                  (next-token :target-type uuid-next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListOrganizationInsightsResponse"))

(smithy/sdk/shapes:define-input list-recommendations-request common-lisp:nil
                                ((insight-id :target-type insight-id :required
                                  common-lisp:t :member-name "InsightId")
                                 (next-token :target-type uuid-next-token
                                  :member-name "NextToken")
                                 (locale :target-type locale :member-name
                                  "Locale")
                                 (account-id :target-type aws-account-id
                                  :member-name "AccountId"))
                                (:shape-name "ListRecommendationsRequest"))

(smithy/sdk/shapes:define-output list-recommendations-response common-lisp:nil
                                 ((recommendations :target-type recommendations
                                   :member-name "Recommendations")
                                  (next-token :target-type uuid-next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListRecommendationsResponse"))

(smithy/sdk/shapes:define-enum locale
    common-lisp:nil
  (:de-de "DE_DE")
  (:en-us "EN_US")
  (:en-gb "EN_GB")
  (:es-es "ES_ES")
  (:fr-fr "FR_FR")
  (:it-it "IT_IT")
  (:ja-jp "JA_JP")
  (:ko-kr "KO_KR")
  (:pt-br "PT_BR")
  (:zh-cn "ZH_CN")
  (:zh-tw "ZH_TW"))

(smithy/sdk/shapes:define-structure log-anomaly-class common-lisp:nil
                                    ((log-stream-name :target-type
                                      log-stream-name :member-name
                                      "LogStreamName")
                                     (log-anomaly-type :target-type
                                      log-anomaly-type :member-name
                                      "LogAnomalyType")
                                     (log-anomaly-token :target-type
                                      log-anomaly-token :member-name
                                      "LogAnomalyToken")
                                     (log-event-id :target-type log-event-id
                                      :member-name "LogEventId")
                                     (explanation :target-type explanation
                                      :member-name "Explanation")
                                     (number-of-log-lines-occurrences
                                      :target-type
                                      number-of-log-lines-occurrences
                                      :member-name
                                      "NumberOfLogLinesOccurrences")
                                     (log-event-timestamp :target-type
                                      timestamp :member-name
                                      "LogEventTimestamp"))
                                    (:shape-name "LogAnomalyClass"))

(smithy/sdk/shapes:define-list log-anomaly-classes :member log-anomaly-class)

(smithy/sdk/shapes:define-structure log-anomaly-showcase common-lisp:nil
                                    ((log-anomaly-classes :target-type
                                      log-anomaly-classes :member-name
                                      "LogAnomalyClasses"))
                                    (:shape-name "LogAnomalyShowcase"))

(smithy/sdk/shapes:define-list log-anomaly-showcases :member
                               log-anomaly-showcase)

(smithy/sdk/shapes:define-type log-anomaly-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum log-anomaly-type
    common-lisp:nil
  (:keyword "KEYWORD")
  (:keyword-token "KEYWORD_TOKEN")
  (:format "FORMAT")
  (:http-code "HTTP_CODE")
  (:block-format "BLOCK_FORMAT")
  (:numerical-point "NUMERICAL_POINT")
  (:numerical-nan "NUMERICAL_NAN")
  (:new-field-name "NEW_FIELD_NAME"))

(smithy/sdk/shapes:define-type log-event-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type log-group-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type log-stream-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure logs-anomaly-detection-integration
                                    common-lisp:nil
                                    ((opt-in-status :target-type opt-in-status
                                      :member-name "OptInStatus"))
                                    (:shape-name
                                     "LogsAnomalyDetectionIntegration"))

(smithy/sdk/shapes:define-structure logs-anomaly-detection-integration-config
                                    common-lisp:nil
                                    ((opt-in-status :target-type opt-in-status
                                      :member-name "OptInStatus"))
                                    (:shape-name
                                     "LogsAnomalyDetectionIntegrationConfig"))

(smithy/sdk/shapes:define-type mean-time-to-recover-in-milliseconds
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type metric-value smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure monitored-resource-identifier
                                    common-lisp:nil
                                    ((monitored-resource-name :target-type
                                      monitored-resource-name :member-name
                                      "MonitoredResourceName")
                                     (type :target-type resource-type
                                      :member-name "Type")
                                     (resource-permission :target-type
                                      resource-permission :member-name
                                      "ResourcePermission")
                                     (last-updated :target-type timestamp
                                      :member-name "LastUpdated")
                                     (resource-collection :target-type
                                      resource-collection :member-name
                                      "ResourceCollection"))
                                    (:shape-name "MonitoredResourceIdentifier"))

(smithy/sdk/shapes:define-list monitored-resource-identifiers :member
                               monitored-resource-identifier)

(smithy/sdk/shapes:define-type monitored-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure notification-channel common-lisp:nil
                                    ((id :target-type notification-channel-id
                                      :member-name "Id")
                                     (config :target-type
                                      notification-channel-config :member-name
                                      "Config"))
                                    (:shape-name "NotificationChannel"))

(smithy/sdk/shapes:define-structure notification-channel-config common-lisp:nil
                                    ((sns :target-type sns-channel-config
                                      :required common-lisp:t :member-name
                                      "Sns")
                                     (filters :target-type
                                      notification-filter-config :member-name
                                      "Filters"))
                                    (:shape-name "NotificationChannelConfig"))

(smithy/sdk/shapes:define-type notification-channel-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure notification-filter-config common-lisp:nil
                                    ((severities :target-type
                                      insight-severities :member-name
                                      "Severities")
                                     (message-types :target-type
                                      notification-message-types :member-name
                                      "MessageTypes"))
                                    (:shape-name "NotificationFilterConfig"))

(smithy/sdk/shapes:define-enum notification-message-type
    common-lisp:nil
  (:new-insight "NEW_INSIGHT")
  (:closed-insight "CLOSED_INSIGHT")
  (:new-association "NEW_ASSOCIATION")
  (:severity-upgraded "SEVERITY_UPGRADED")
  (:new-recommendation "NEW_RECOMMENDATION"))

(smithy/sdk/shapes:define-list notification-message-types :member
                               notification-message-type)

(smithy/sdk/shapes:define-type num-metrics-analyzed
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type num-open-proactive-insights
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type num-open-reactive-insights
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type num-proactive-insights
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type num-reactive-insights
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type number-of-log-lines-occurrences
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type number-of-log-lines-scanned
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure ops-center-integration common-lisp:nil
                                    ((opt-in-status :target-type opt-in-status
                                      :member-name "OptInStatus"))
                                    (:shape-name "OpsCenterIntegration"))

(smithy/sdk/shapes:define-structure ops-center-integration-config
                                    common-lisp:nil
                                    ((opt-in-status :target-type opt-in-status
                                      :member-name "OptInStatus"))
                                    (:shape-name "OpsCenterIntegrationConfig"))

(smithy/sdk/shapes:define-enum opt-in-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-type organization-resource-collection-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum organization-resource-collection-type
    common-lisp:nil
  (:aws-cloud-formation "AWS_CLOUD_FORMATION")
  (:aws-service "AWS_SERVICE")
  (:aws-account "AWS_ACCOUNT")
  (:aws-tags "AWS_TAGS"))

(smithy/sdk/shapes:define-type organizational-unit-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list organizational-unit-id-list :member
                               organizational-unit-id)

(smithy/sdk/shapes:define-type performance-insights-metric-dimension
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure performance-insights-metric-dimension-group
                                    common-lisp:nil
                                    ((group :target-type
                                      performance-insights-metric-group
                                      :member-name "Group")
                                     (dimensions :target-type
                                      performance-insights-metric-dimensions
                                      :member-name "Dimensions")
                                     (limit :target-type
                                      performance-insights-metric-limit-integer
                                      :member-name "Limit"))
                                    (:shape-name
                                     "PerformanceInsightsMetricDimensionGroup"))

(smithy/sdk/shapes:define-list performance-insights-metric-dimensions :member
                               performance-insights-metric-dimension)

(smithy/sdk/shapes:define-type performance-insights-metric-display-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type performance-insights-metric-filter-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map performance-insights-metric-filter-map :key
                              performance-insights-metric-filter-key :value
                              performance-insights-metric-filter-value)

(smithy/sdk/shapes:define-type performance-insights-metric-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type performance-insights-metric-group
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type performance-insights-metric-limit-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type performance-insights-metric-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure performance-insights-metric-query
                                    common-lisp:nil
                                    ((metric :target-type
                                      performance-insights-metric-name
                                      :member-name "Metric")
                                     (group-by :target-type
                                      performance-insights-metric-dimension-group
                                      :member-name "GroupBy")
                                     (filter :target-type
                                      performance-insights-metric-filter-map
                                      :member-name "Filter"))
                                    (:shape-name
                                     "PerformanceInsightsMetricQuery"))

(smithy/sdk/shapes:define-type performance-insights-metric-unit
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure performance-insights-metrics-detail
                                    common-lisp:nil
                                    ((metric-display-name :target-type
                                      performance-insights-metric-display-name
                                      :member-name "MetricDisplayName")
                                     (unit :target-type
                                      performance-insights-metric-unit
                                      :member-name "Unit")
                                     (metric-query :target-type
                                      performance-insights-metric-query
                                      :member-name "MetricQuery")
                                     (reference-data :target-type
                                      performance-insights-reference-data-list
                                      :member-name "ReferenceData")
                                     (stats-at-anomaly :target-type
                                      performance-insights-stats :member-name
                                      "StatsAtAnomaly")
                                     (stats-at-baseline :target-type
                                      performance-insights-stats :member-name
                                      "StatsAtBaseline"))
                                    (:shape-name
                                     "PerformanceInsightsMetricsDetail"))

(smithy/sdk/shapes:define-list performance-insights-metrics-details :member
                               performance-insights-metrics-detail)

(smithy/sdk/shapes:define-structure
 performance-insights-reference-comparison-values common-lisp:nil
 ((reference-scalar :target-type performance-insights-reference-scalar
   :member-name "ReferenceScalar")
  (reference-metric :target-type performance-insights-reference-metric
   :member-name "ReferenceMetric"))
 (:shape-name "PerformanceInsightsReferenceComparisonValues"))

(smithy/sdk/shapes:define-structure performance-insights-reference-data
                                    common-lisp:nil
                                    ((name :target-type
                                      performance-insights-reference-name
                                      :member-name "Name")
                                     (comparison-values :target-type
                                      performance-insights-reference-comparison-values
                                      :member-name "ComparisonValues"))
                                    (:shape-name
                                     "PerformanceInsightsReferenceData"))

(smithy/sdk/shapes:define-list performance-insights-reference-data-list :member
                               performance-insights-reference-data)

(smithy/sdk/shapes:define-structure performance-insights-reference-metric
                                    common-lisp:nil
                                    ((metric-query :target-type
                                      performance-insights-metric-query
                                      :member-name "MetricQuery"))
                                    (:shape-name
                                     "PerformanceInsightsReferenceMetric"))

(smithy/sdk/shapes:define-type performance-insights-reference-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure performance-insights-reference-scalar
                                    common-lisp:nil
                                    ((value :target-type
                                      performance-insights-value-double
                                      :member-name "Value"))
                                    (:shape-name
                                     "PerformanceInsightsReferenceScalar"))

(smithy/sdk/shapes:define-structure performance-insights-stat common-lisp:nil
                                    ((type :target-type
                                      performance-insights-stat-type
                                      :member-name "Type")
                                     (value :target-type
                                      performance-insights-value-double
                                      :member-name "Value"))
                                    (:shape-name "PerformanceInsightsStat"))

(smithy/sdk/shapes:define-type performance-insights-stat-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list performance-insights-stats :member
                               performance-insights-stat)

(smithy/sdk/shapes:define-type performance-insights-value-double
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure prediction-time-range common-lisp:nil
                                    ((start-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "StartTime")
                                     (end-time :target-type timestamp
                                      :member-name "EndTime"))
                                    (:shape-name "PredictionTimeRange"))

(smithy/sdk/shapes:define-list proactive-anomalies :member
                               proactive-anomaly-summary)

(smithy/sdk/shapes:define-structure proactive-anomaly common-lisp:nil
                                    ((id :target-type anomaly-id :member-name
                                      "Id")
                                     (severity :target-type anomaly-severity
                                      :member-name "Severity")
                                     (status :target-type anomaly-status
                                      :member-name "Status")
                                     (update-time :target-type timestamp
                                      :member-name "UpdateTime")
                                     (anomaly-time-range :target-type
                                      anomaly-time-range :member-name
                                      "AnomalyTimeRange")
                                     (anomaly-reported-time-range :target-type
                                      anomaly-reported-time-range :member-name
                                      "AnomalyReportedTimeRange")
                                     (prediction-time-range :target-type
                                      prediction-time-range :member-name
                                      "PredictionTimeRange")
                                     (source-details :target-type
                                      anomaly-source-details :member-name
                                      "SourceDetails")
                                     (associated-insight-id :target-type
                                      insight-id :member-name
                                      "AssociatedInsightId")
                                     (resource-collection :target-type
                                      resource-collection :member-name
                                      "ResourceCollection")
                                     (limit :target-type anomaly-limit
                                      :member-name "Limit")
                                     (source-metadata :target-type
                                      anomaly-source-metadata :member-name
                                      "SourceMetadata")
                                     (anomaly-resources :target-type
                                      anomaly-resources :member-name
                                      "AnomalyResources")
                                     (description :target-type
                                      anomaly-description :member-name
                                      "Description"))
                                    (:shape-name "ProactiveAnomaly"))

(smithy/sdk/shapes:define-structure proactive-anomaly-summary common-lisp:nil
                                    ((id :target-type anomaly-id :member-name
                                      "Id")
                                     (severity :target-type anomaly-severity
                                      :member-name "Severity")
                                     (status :target-type anomaly-status
                                      :member-name "Status")
                                     (update-time :target-type timestamp
                                      :member-name "UpdateTime")
                                     (anomaly-time-range :target-type
                                      anomaly-time-range :member-name
                                      "AnomalyTimeRange")
                                     (anomaly-reported-time-range :target-type
                                      anomaly-reported-time-range :member-name
                                      "AnomalyReportedTimeRange")
                                     (prediction-time-range :target-type
                                      prediction-time-range :member-name
                                      "PredictionTimeRange")
                                     (source-details :target-type
                                      anomaly-source-details :member-name
                                      "SourceDetails")
                                     (associated-insight-id :target-type
                                      insight-id :member-name
                                      "AssociatedInsightId")
                                     (resource-collection :target-type
                                      resource-collection :member-name
                                      "ResourceCollection")
                                     (limit :target-type anomaly-limit
                                      :member-name "Limit")
                                     (source-metadata :target-type
                                      anomaly-source-metadata :member-name
                                      "SourceMetadata")
                                     (anomaly-resources :target-type
                                      anomaly-resources :member-name
                                      "AnomalyResources")
                                     (description :target-type
                                      anomaly-description :member-name
                                      "Description"))
                                    (:shape-name "ProactiveAnomalySummary"))

(smithy/sdk/shapes:define-structure proactive-insight common-lisp:nil
                                    ((id :target-type insight-id :member-name
                                      "Id")
                                     (name :target-type insight-name
                                      :member-name "Name")
                                     (severity :target-type insight-severity
                                      :member-name "Severity")
                                     (status :target-type insight-status
                                      :member-name "Status")
                                     (insight-time-range :target-type
                                      insight-time-range :member-name
                                      "InsightTimeRange")
                                     (prediction-time-range :target-type
                                      prediction-time-range :member-name
                                      "PredictionTimeRange")
                                     (resource-collection :target-type
                                      resource-collection :member-name
                                      "ResourceCollection")
                                     (ssm-ops-item-id :target-type
                                      ssm-ops-item-id :member-name
                                      "SsmOpsItemId")
                                     (description :target-type
                                      insight-description :member-name
                                      "Description"))
                                    (:shape-name "ProactiveInsight"))

(smithy/sdk/shapes:define-structure proactive-insight-summary common-lisp:nil
                                    ((id :target-type insight-id :member-name
                                      "Id")
                                     (name :target-type insight-name
                                      :member-name "Name")
                                     (severity :target-type insight-severity
                                      :member-name "Severity")
                                     (status :target-type insight-status
                                      :member-name "Status")
                                     (insight-time-range :target-type
                                      insight-time-range :member-name
                                      "InsightTimeRange")
                                     (prediction-time-range :target-type
                                      prediction-time-range :member-name
                                      "PredictionTimeRange")
                                     (resource-collection :target-type
                                      resource-collection :member-name
                                      "ResourceCollection")
                                     (service-collection :target-type
                                      service-collection :member-name
                                      "ServiceCollection")
                                     (associated-resource-arns :target-type
                                      associated-resource-arns :member-name
                                      "AssociatedResourceArns"))
                                    (:shape-name "ProactiveInsightSummary"))

(smithy/sdk/shapes:define-list proactive-insights :member
                               proactive-insight-summary)

(smithy/sdk/shapes:define-structure proactive-organization-insight-summary
                                    common-lisp:nil
                                    ((id :target-type insight-id :member-name
                                      "Id")
                                     (account-id :target-type aws-account-id
                                      :member-name "AccountId")
                                     (organizational-unit-id :target-type
                                      organizational-unit-id :member-name
                                      "OrganizationalUnitId")
                                     (name :target-type insight-name
                                      :member-name "Name")
                                     (severity :target-type insight-severity
                                      :member-name "Severity")
                                     (status :target-type insight-status
                                      :member-name "Status")
                                     (insight-time-range :target-type
                                      insight-time-range :member-name
                                      "InsightTimeRange")
                                     (prediction-time-range :target-type
                                      prediction-time-range :member-name
                                      "PredictionTimeRange")
                                     (resource-collection :target-type
                                      resource-collection :member-name
                                      "ResourceCollection")
                                     (service-collection :target-type
                                      service-collection :member-name
                                      "ServiceCollection"))
                                    (:shape-name
                                     "ProactiveOrganizationInsightSummary"))

(smithy/sdk/shapes:define-list proactive-organization-insights :member
                               proactive-organization-insight-summary)

(smithy/sdk/shapes:define-input put-feedback-request common-lisp:nil
                                ((insight-feedback :target-type
                                  insight-feedback :member-name
                                  "InsightFeedback"))
                                (:shape-name "PutFeedbackRequest"))

(smithy/sdk/shapes:define-output put-feedback-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "PutFeedbackResponse"))

(smithy/sdk/shapes:define-list reactive-anomalies :member
                               reactive-anomaly-summary)

(smithy/sdk/shapes:define-structure reactive-anomaly common-lisp:nil
                                    ((id :target-type anomaly-id :member-name
                                      "Id")
                                     (severity :target-type anomaly-severity
                                      :member-name "Severity")
                                     (status :target-type anomaly-status
                                      :member-name "Status")
                                     (anomaly-time-range :target-type
                                      anomaly-time-range :member-name
                                      "AnomalyTimeRange")
                                     (anomaly-reported-time-range :target-type
                                      anomaly-reported-time-range :member-name
                                      "AnomalyReportedTimeRange")
                                     (source-details :target-type
                                      anomaly-source-details :member-name
                                      "SourceDetails")
                                     (associated-insight-id :target-type
                                      insight-id :member-name
                                      "AssociatedInsightId")
                                     (resource-collection :target-type
                                      resource-collection :member-name
                                      "ResourceCollection")
                                     (type :target-type anomaly-type
                                      :member-name "Type")
                                     (name :target-type anomaly-name
                                      :member-name "Name")
                                     (description :target-type
                                      anomaly-description :member-name
                                      "Description")
                                     (causal-anomaly-id :target-type anomaly-id
                                      :member-name "CausalAnomalyId")
                                     (anomaly-resources :target-type
                                      anomaly-resources :member-name
                                      "AnomalyResources"))
                                    (:shape-name "ReactiveAnomaly"))

(smithy/sdk/shapes:define-structure reactive-anomaly-summary common-lisp:nil
                                    ((id :target-type anomaly-id :member-name
                                      "Id")
                                     (severity :target-type anomaly-severity
                                      :member-name "Severity")
                                     (status :target-type anomaly-status
                                      :member-name "Status")
                                     (anomaly-time-range :target-type
                                      anomaly-time-range :member-name
                                      "AnomalyTimeRange")
                                     (anomaly-reported-time-range :target-type
                                      anomaly-reported-time-range :member-name
                                      "AnomalyReportedTimeRange")
                                     (source-details :target-type
                                      anomaly-source-details :member-name
                                      "SourceDetails")
                                     (associated-insight-id :target-type
                                      insight-id :member-name
                                      "AssociatedInsightId")
                                     (resource-collection :target-type
                                      resource-collection :member-name
                                      "ResourceCollection")
                                     (type :target-type anomaly-type
                                      :member-name "Type")
                                     (name :target-type anomaly-name
                                      :member-name "Name")
                                     (description :target-type
                                      anomaly-description :member-name
                                      "Description")
                                     (causal-anomaly-id :target-type anomaly-id
                                      :member-name "CausalAnomalyId")
                                     (anomaly-resources :target-type
                                      anomaly-resources :member-name
                                      "AnomalyResources"))
                                    (:shape-name "ReactiveAnomalySummary"))

(smithy/sdk/shapes:define-structure reactive-insight common-lisp:nil
                                    ((id :target-type insight-id :member-name
                                      "Id")
                                     (name :target-type insight-name
                                      :member-name "Name")
                                     (severity :target-type insight-severity
                                      :member-name "Severity")
                                     (status :target-type insight-status
                                      :member-name "Status")
                                     (insight-time-range :target-type
                                      insight-time-range :member-name
                                      "InsightTimeRange")
                                     (resource-collection :target-type
                                      resource-collection :member-name
                                      "ResourceCollection")
                                     (ssm-ops-item-id :target-type
                                      ssm-ops-item-id :member-name
                                      "SsmOpsItemId")
                                     (description :target-type
                                      insight-description :member-name
                                      "Description"))
                                    (:shape-name "ReactiveInsight"))

(smithy/sdk/shapes:define-structure reactive-insight-summary common-lisp:nil
                                    ((id :target-type insight-id :member-name
                                      "Id")
                                     (name :target-type insight-name
                                      :member-name "Name")
                                     (severity :target-type insight-severity
                                      :member-name "Severity")
                                     (status :target-type insight-status
                                      :member-name "Status")
                                     (insight-time-range :target-type
                                      insight-time-range :member-name
                                      "InsightTimeRange")
                                     (resource-collection :target-type
                                      resource-collection :member-name
                                      "ResourceCollection")
                                     (service-collection :target-type
                                      service-collection :member-name
                                      "ServiceCollection")
                                     (associated-resource-arns :target-type
                                      associated-resource-arns :member-name
                                      "AssociatedResourceArns"))
                                    (:shape-name "ReactiveInsightSummary"))

(smithy/sdk/shapes:define-list reactive-insights :member
                               reactive-insight-summary)

(smithy/sdk/shapes:define-structure reactive-organization-insight-summary
                                    common-lisp:nil
                                    ((id :target-type insight-id :member-name
                                      "Id")
                                     (account-id :target-type aws-account-id
                                      :member-name "AccountId")
                                     (organizational-unit-id :target-type
                                      organizational-unit-id :member-name
                                      "OrganizationalUnitId")
                                     (name :target-type insight-name
                                      :member-name "Name")
                                     (severity :target-type insight-severity
                                      :member-name "Severity")
                                     (status :target-type insight-status
                                      :member-name "Status")
                                     (insight-time-range :target-type
                                      insight-time-range :member-name
                                      "InsightTimeRange")
                                     (resource-collection :target-type
                                      resource-collection :member-name
                                      "ResourceCollection")
                                     (service-collection :target-type
                                      service-collection :member-name
                                      "ServiceCollection"))
                                    (:shape-name
                                     "ReactiveOrganizationInsightSummary"))

(smithy/sdk/shapes:define-list reactive-organization-insights :member
                               reactive-organization-insight-summary)

(smithy/sdk/shapes:define-structure recommendation common-lisp:nil
                                    ((description :target-type
                                      recommendation-description :member-name
                                      "Description")
                                     (link :target-type recommendation-link
                                      :member-name "Link")
                                     (name :target-type recommendation-name
                                      :member-name "Name")
                                     (reason :target-type recommendation-reason
                                      :member-name "Reason")
                                     (related-events :target-type
                                      recommendation-related-events
                                      :member-name "RelatedEvents")
                                     (related-anomalies :target-type
                                      recommendation-related-anomalies
                                      :member-name "RelatedAnomalies")
                                     (category :target-type
                                      recommendation-category :member-name
                                      "Category"))
                                    (:shape-name "Recommendation"))

(smithy/sdk/shapes:define-type recommendation-category
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type recommendation-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type recommendation-link
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type recommendation-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type recommendation-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list recommendation-related-anomalies :member
                               recommendation-related-anomaly)

(smithy/sdk/shapes:define-structure recommendation-related-anomaly
                                    common-lisp:nil
                                    ((resources :target-type
                                      recommendation-related-anomaly-resources
                                      :member-name "Resources")
                                     (source-details :target-type
                                      related-anomaly-source-details
                                      :member-name "SourceDetails")
                                     (anomaly-id :target-type anomaly-id
                                      :member-name "AnomalyId"))
                                    (:shape-name
                                     "RecommendationRelatedAnomaly"))

(smithy/sdk/shapes:define-structure recommendation-related-anomaly-resource
                                    common-lisp:nil
                                    ((name :target-type
                                      recommendation-related-anomaly-resource-name
                                      :member-name "Name")
                                     (type :target-type
                                      recommendation-related-anomaly-resource-type
                                      :member-name "Type"))
                                    (:shape-name
                                     "RecommendationRelatedAnomalyResource"))

(smithy/sdk/shapes:define-type recommendation-related-anomaly-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type recommendation-related-anomaly-resource-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list recommendation-related-anomaly-resources :member
                               recommendation-related-anomaly-resource)

(smithy/sdk/shapes:define-structure
 recommendation-related-anomaly-source-detail common-lisp:nil
 ((cloud-watch-metrics :target-type
   recommendation-related-cloud-watch-metrics-source-details :member-name
   "CloudWatchMetrics"))
 (:shape-name "RecommendationRelatedAnomalySourceDetail"))

(smithy/sdk/shapes:define-structure
 recommendation-related-cloud-watch-metrics-source-detail common-lisp:nil
 ((metric-name :target-type
   recommendation-related-cloud-watch-metrics-source-metric-name :member-name
   "MetricName")
  (namespace :target-type
   recommendation-related-cloud-watch-metrics-source-namespace :member-name
   "Namespace"))
 (:shape-name "RecommendationRelatedCloudWatchMetricsSourceDetail"))

(smithy/sdk/shapes:define-list
 recommendation-related-cloud-watch-metrics-source-details :member
 recommendation-related-cloud-watch-metrics-source-detail)

(smithy/sdk/shapes:define-type
 recommendation-related-cloud-watch-metrics-source-metric-name
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 recommendation-related-cloud-watch-metrics-source-namespace
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure recommendation-related-event
                                    common-lisp:nil
                                    ((name :target-type
                                      recommendation-related-event-name
                                      :member-name "Name")
                                     (resources :target-type
                                      recommendation-related-event-resources
                                      :member-name "Resources"))
                                    (:shape-name "RecommendationRelatedEvent"))

(smithy/sdk/shapes:define-type recommendation-related-event-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure recommendation-related-event-resource
                                    common-lisp:nil
                                    ((name :target-type
                                      recommendation-related-event-resource-name
                                      :member-name "Name")
                                     (type :target-type
                                      recommendation-related-event-resource-type
                                      :member-name "Type"))
                                    (:shape-name
                                     "RecommendationRelatedEventResource"))

(smithy/sdk/shapes:define-type recommendation-related-event-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type recommendation-related-event-resource-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list recommendation-related-event-resources :member
                               recommendation-related-event-resource)

(smithy/sdk/shapes:define-list recommendation-related-events :member
                               recommendation-related-event)

(smithy/sdk/shapes:define-list recommendations :member recommendation)

(smithy/sdk/shapes:define-list related-anomaly-source-details :member
                               recommendation-related-anomaly-source-detail)

(smithy/sdk/shapes:define-input remove-notification-channel-request
                                common-lisp:nil
                                ((id :target-type notification-channel-id
                                  :required common-lisp:t :member-name "Id"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "RemoveNotificationChannelRequest"))

(smithy/sdk/shapes:define-output remove-notification-channel-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "RemoveNotificationChannelResponse"))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resource-collection common-lisp:nil
                                    ((cloud-formation :target-type
                                      cloud-formation-collection :member-name
                                      "CloudFormation")
                                     (tags :target-type tag-collections
                                      :member-name "Tags"))
                                    (:shape-name "ResourceCollection"))

(smithy/sdk/shapes:define-structure resource-collection-filter common-lisp:nil
                                    ((cloud-formation :target-type
                                      cloud-formation-collection-filter
                                      :member-name "CloudFormation")
                                     (tags :target-type tag-collection-filters
                                      :member-name "Tags"))
                                    (:shape-name "ResourceCollectionFilter"))

(smithy/sdk/shapes:define-enum resource-collection-type
    common-lisp:nil
  (:aws-cloud-formation "AWS_CLOUD_FORMATION")
  (:aws-service "AWS_SERVICE")
  (:aws-tags "AWS_TAGS"))

(smithy/sdk/shapes:define-type resource-hours smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type resource-id-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-id-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message-string
                                  :required common-lisp:t :member-name
                                  "Message")
                                 (resource-id :target-type resource-id-string
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (resource-type :target-type resource-id-type
                                  :required common-lisp:t :member-name
                                  "ResourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum resource-permission
    common-lisp:nil
  (:full-permission "FULL_PERMISSION")
  (:missing-permission "MISSING_PERMISSION"))

(smithy/sdk/shapes:define-type resource-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum resource-type-filter
    common-lisp:nil
  (:log-groups "LOG_GROUPS")
  (:cloudfront-distribution "CLOUDFRONT_DISTRIBUTION")
  (:dynamodb-table "DYNAMODB_TABLE")
  (:ec2-nat-gateway "EC2_NAT_GATEWAY")
  (:ecs-cluster "ECS_CLUSTER")
  (:ecs-service "ECS_SERVICE")
  (:eks-cluster "EKS_CLUSTER")
  (:elastic-beanstalk-environment "ELASTIC_BEANSTALK_ENVIRONMENT")
  (:elastic-load-balancer-load-balancer "ELASTIC_LOAD_BALANCER_LOAD_BALANCER")
  (:elastic-load-balancing-v2-load-balancer
   "ELASTIC_LOAD_BALANCING_V2_LOAD_BALANCER")
  (:elastic-load-balancing-v2-target-group
   "ELASTIC_LOAD_BALANCING_V2_TARGET_GROUP")
  (:elasticache-cache-cluster "ELASTICACHE_CACHE_CLUSTER")
  (:elasticsearch-domain "ELASTICSEARCH_DOMAIN")
  (:kinesis-stream "KINESIS_STREAM")
  (:lambda-function "LAMBDA_FUNCTION")
  (:open-search-service-domain "OPEN_SEARCH_SERVICE_DOMAIN")
  (:rds-db-instance "RDS_DB_INSTANCE")
  (:rds-db-cluster "RDS_DB_CLUSTER")
  (:redshift-cluster "REDSHIFT_CLUSTER")
  (:route53-hosted-zone "ROUTE53_HOSTED_ZONE")
  (:route53-health-check "ROUTE53_HEALTH_CHECK")
  (:s3-bucket "S3_BUCKET")
  (:sagemaker-endpoint "SAGEMAKER_ENDPOINT")
  (:sns-topic "SNS_TOPIC")
  (:sqs-queue "SQS_QUEUE")
  (:step-functions-activity "STEP_FUNCTIONS_ACTIVITY")
  (:step-functions-state-machine "STEP_FUNCTIONS_STATE_MACHINE"))

(smithy/sdk/shapes:define-list resource-type-filters :member
                               resource-type-filter)

(smithy/sdk/shapes:define-type retry-after-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list search-insights-account-id-list :member
                               aws-account-id)

(smithy/sdk/shapes:define-structure search-insights-filters common-lisp:nil
                                    ((severities :target-type
                                      insight-severities :member-name
                                      "Severities")
                                     (statuses :target-type insight-statuses
                                      :member-name "Statuses")
                                     (resource-collection :target-type
                                      resource-collection :member-name
                                      "ResourceCollection")
                                     (service-collection :target-type
                                      service-collection :member-name
                                      "ServiceCollection"))
                                    (:shape-name "SearchInsightsFilters"))

(smithy/sdk/shapes:define-type search-insights-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input search-insights-request common-lisp:nil
                                ((start-time-range :target-type
                                  start-time-range :required common-lisp:t
                                  :member-name "StartTimeRange")
                                 (filters :target-type search-insights-filters
                                  :member-name "Filters")
                                 (max-results :target-type
                                  search-insights-max-results :member-name
                                  "MaxResults")
                                 (next-token :target-type uuid-next-token
                                  :member-name "NextToken")
                                 (type :target-type insight-type :required
                                  common-lisp:t :member-name "Type"))
                                (:shape-name "SearchInsightsRequest"))

(smithy/sdk/shapes:define-output search-insights-response common-lisp:nil
                                 ((proactive-insights :target-type
                                   proactive-insights :member-name
                                   "ProactiveInsights")
                                  (reactive-insights :target-type
                                   reactive-insights :member-name
                                   "ReactiveInsights")
                                  (next-token :target-type uuid-next-token
                                   :member-name "NextToken"))
                                 (:shape-name "SearchInsightsResponse"))

(smithy/sdk/shapes:define-structure search-organization-insights-filters
                                    common-lisp:nil
                                    ((severities :target-type
                                      insight-severities :member-name
                                      "Severities")
                                     (statuses :target-type insight-statuses
                                      :member-name "Statuses")
                                     (resource-collection :target-type
                                      resource-collection :member-name
                                      "ResourceCollection")
                                     (service-collection :target-type
                                      service-collection :member-name
                                      "ServiceCollection"))
                                    (:shape-name
                                     "SearchOrganizationInsightsFilters"))

(smithy/sdk/shapes:define-type search-organization-insights-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input search-organization-insights-request
                                common-lisp:nil
                                ((account-ids :target-type
                                  search-insights-account-id-list :required
                                  common-lisp:t :member-name "AccountIds")
                                 (start-time-range :target-type
                                  start-time-range :required common-lisp:t
                                  :member-name "StartTimeRange")
                                 (filters :target-type
                                  search-organization-insights-filters
                                  :member-name "Filters")
                                 (max-results :target-type
                                  search-organization-insights-max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type uuid-next-token
                                  :member-name "NextToken")
                                 (type :target-type insight-type :required
                                  common-lisp:t :member-name "Type"))
                                (:shape-name
                                 "SearchOrganizationInsightsRequest"))

(smithy/sdk/shapes:define-output search-organization-insights-response
                                 common-lisp:nil
                                 ((proactive-insights :target-type
                                   proactive-insights :member-name
                                   "ProactiveInsights")
                                  (reactive-insights :target-type
                                   reactive-insights :member-name
                                   "ReactiveInsights")
                                  (next-token :target-type uuid-next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "SearchOrganizationInsightsResponse"))

(smithy/sdk/shapes:define-enum server-side-encryption-type
    common-lisp:nil
  (:customer-managed-key "CUSTOMER_MANAGED_KEY")
  (:aws-owned-kms-key "AWS_OWNED_KMS_KEY"))

(smithy/sdk/shapes:define-structure service-collection common-lisp:nil
                                    ((service-names :target-type service-names
                                      :member-name "ServiceNames"))
                                    (:shape-name "ServiceCollection"))

(smithy/sdk/shapes:define-structure service-health common-lisp:nil
                                    ((service-name :target-type service-name
                                      :member-name "ServiceName")
                                     (insight :target-type
                                      service-insight-health :member-name
                                      "Insight")
                                     (analyzed-resource-count :target-type
                                      analyzed-resource-count :member-name
                                      "AnalyzedResourceCount"))
                                    (:shape-name "ServiceHealth"))

(smithy/sdk/shapes:define-list service-healths :member service-health)

(smithy/sdk/shapes:define-structure service-insight-health common-lisp:nil
                                    ((open-proactive-insights :target-type
                                      num-open-proactive-insights :member-name
                                      "OpenProactiveInsights")
                                     (open-reactive-insights :target-type
                                      num-open-reactive-insights :member-name
                                      "OpenReactiveInsights"))
                                    (:shape-name "ServiceInsightHealth"))

(smithy/sdk/shapes:define-structure service-integration-config common-lisp:nil
                                    ((ops-center :target-type
                                      ops-center-integration :member-name
                                      "OpsCenter")
                                     (logs-anomaly-detection :target-type
                                      logs-anomaly-detection-integration
                                      :member-name "LogsAnomalyDetection")
                                     (kmsserver-side-encryption :target-type
                                      kmsserver-side-encryption-integration
                                      :member-name "KMSServerSideEncryption"))
                                    (:shape-name "ServiceIntegrationConfig"))

(smithy/sdk/shapes:define-enum service-name
    common-lisp:nil
  (:api-gateway "API_GATEWAY")
  (:application-elb "APPLICATION_ELB")
  (:auto-scaling-group "AUTO_SCALING_GROUP")
  (:cloud-front "CLOUD_FRONT")
  (:dynamo-db "DYNAMO_DB")
  (:ec2 "EC2")
  (:ecs "ECS")
  (:eks "EKS")
  (:elastic-beanstalk "ELASTIC_BEANSTALK")
  (:elasti-cache "ELASTI_CACHE")
  (:elb "ELB")
  (:es "ES")
  (:kinesis "KINESIS")
  (:lambda "LAMBDA")
  (:nat-gateway "NAT_GATEWAY")
  (:network-elb "NETWORK_ELB")
  (:rds "RDS")
  (:redshift "REDSHIFT")
  (:route-53 "ROUTE_53")
  (:s3 "S3")
  (:sage-maker "SAGE_MAKER")
  (:sns "SNS")
  (:sqs "SQS")
  (:step-functions "STEP_FUNCTIONS")
  (:swf "SWF"))

(smithy/sdk/shapes:define-list service-names :member service-name)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message-string
                                  :member-name "Message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-structure service-resource-cost common-lisp:nil
                                    ((type :target-type resource-type
                                      :member-name "Type")
                                     (state :target-type
                                      cost-estimation-service-resource-state
                                      :member-name "State")
                                     (count :target-type
                                      cost-estimation-service-resource-count
                                      :member-name "Count")
                                     (unit-cost :target-type cost :member-name
                                      "UnitCost")
                                     (cost :target-type cost :member-name
                                      "Cost"))
                                    (:shape-name "ServiceResourceCost"))

(smithy/sdk/shapes:define-list service-resource-costs :member
                               service-resource-cost)

(smithy/sdk/shapes:define-structure sns-channel-config common-lisp:nil
                                    ((topic-arn :target-type topic-arn
                                      :member-name "TopicArn"))
                                    (:shape-name "SnsChannelConfig"))

(smithy/sdk/shapes:define-type ssm-ops-item-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type stack-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list stack-names :member stack-name)

(smithy/sdk/shapes:define-input start-cost-estimation-request common-lisp:nil
                                ((resource-collection :target-type
                                  cost-estimation-resource-collection-filter
                                  :required common-lisp:t :member-name
                                  "ResourceCollection")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name "StartCostEstimationRequest"))

(smithy/sdk/shapes:define-output start-cost-estimation-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StartCostEstimationResponse"))

(smithy/sdk/shapes:define-structure start-time-range common-lisp:nil
                                    ((from-time :target-type timestamp
                                      :member-name "FromTime")
                                     (to-time :target-type timestamp
                                      :member-name "ToTime"))
                                    (:shape-name "StartTimeRange"))

(smithy/sdk/shapes:define-structure tag-collection common-lisp:nil
                                    ((app-boundary-key :target-type
                                      app-boundary-key :required common-lisp:t
                                      :member-name "AppBoundaryKey")
                                     (tag-values :target-type tag-values
                                      :required common-lisp:t :member-name
                                      "TagValues"))
                                    (:shape-name "TagCollection"))

(smithy/sdk/shapes:define-structure tag-collection-filter common-lisp:nil
                                    ((app-boundary-key :target-type
                                      app-boundary-key :required common-lisp:t
                                      :member-name "AppBoundaryKey")
                                     (tag-values :target-type tag-values
                                      :required common-lisp:t :member-name
                                      "TagValues"))
                                    (:shape-name "TagCollectionFilter"))

(smithy/sdk/shapes:define-list tag-collection-filters :member
                               tag-collection-filter)

(smithy/sdk/shapes:define-list tag-collections :member tag-collection)

(smithy/sdk/shapes:define-structure
 tag-cost-estimation-resource-collection-filter common-lisp:nil
 ((app-boundary-key :target-type app-boundary-key :required common-lisp:t
   :member-name "AppBoundaryKey")
  (tag-values :target-type cost-estimation-tag-values :required common-lisp:t
   :member-name "TagValues"))
 (:shape-name "TagCostEstimationResourceCollectionFilter"))

(smithy/sdk/shapes:define-list tag-cost-estimation-resource-collection-filters
                               :member
                               tag-cost-estimation-resource-collection-filter)

(smithy/sdk/shapes:define-structure tag-health common-lisp:nil
                                    ((app-boundary-key :target-type
                                      app-boundary-key :member-name
                                      "AppBoundaryKey")
                                     (tag-value :target-type tag-value
                                      :member-name "TagValue")
                                     (insight :target-type insight-health
                                      :member-name "Insight")
                                     (analyzed-resource-count :target-type
                                      analyzed-resource-count :member-name
                                      "AnalyzedResourceCount"))
                                    (:shape-name "TagHealth"))

(smithy/sdk/shapes:define-list tag-healths :member tag-health)

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-values :member tag-value)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message-string
                                  :required common-lisp:t :member-name
                                  "Message")
                                 (quota-code :target-type
                                  error-quota-code-string :member-name
                                  "QuotaCode")
                                 (service-code :target-type
                                  error-service-code-string :member-name
                                  "ServiceCode")
                                 (retry-after-seconds :target-type
                                  retry-after-seconds :member-name
                                  "RetryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure timestamp-metric-value-pair common-lisp:nil
                                    ((timestamp :target-type timestamp
                                      :member-name "Timestamp")
                                     (metric-value :target-type metric-value
                                      :member-name "MetricValue"))
                                    (:shape-name "TimestampMetricValuePair"))

(smithy/sdk/shapes:define-list timestamp-metric-value-pair-list :member
                               timestamp-metric-value-pair)

(smithy/sdk/shapes:define-type topic-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure update-cloud-formation-collection-filter
                                    common-lisp:nil
                                    ((stack-names :target-type
                                      update-stack-names :member-name
                                      "StackNames"))
                                    (:shape-name
                                     "UpdateCloudFormationCollectionFilter"))

(smithy/sdk/shapes:define-input update-event-sources-config-request
                                common-lisp:nil
                                ((event-sources :target-type
                                  event-sources-config :member-name
                                  "EventSources"))
                                (:shape-name "UpdateEventSourcesConfigRequest"))

(smithy/sdk/shapes:define-output update-event-sources-config-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateEventSourcesConfigResponse"))

(smithy/sdk/shapes:define-enum update-resource-collection-action
    common-lisp:nil
  (:add "ADD")
  (:remove "REMOVE"))

(smithy/sdk/shapes:define-structure update-resource-collection-filter
                                    common-lisp:nil
                                    ((cloud-formation :target-type
                                      update-cloud-formation-collection-filter
                                      :member-name "CloudFormation")
                                     (tags :target-type
                                      update-tag-collection-filters
                                      :member-name "Tags"))
                                    (:shape-name
                                     "UpdateResourceCollectionFilter"))

(smithy/sdk/shapes:define-input update-resource-collection-request
                                common-lisp:nil
                                ((action :target-type
                                  update-resource-collection-action :required
                                  common-lisp:t :member-name "Action")
                                 (resource-collection :target-type
                                  update-resource-collection-filter :required
                                  common-lisp:t :member-name
                                  "ResourceCollection"))
                                (:shape-name "UpdateResourceCollectionRequest"))

(smithy/sdk/shapes:define-output update-resource-collection-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateResourceCollectionResponse"))

(smithy/sdk/shapes:define-structure update-service-integration-config
                                    common-lisp:nil
                                    ((ops-center :target-type
                                      ops-center-integration-config
                                      :member-name "OpsCenter")
                                     (logs-anomaly-detection :target-type
                                      logs-anomaly-detection-integration-config
                                      :member-name "LogsAnomalyDetection")
                                     (kmsserver-side-encryption :target-type
                                      kmsserver-side-encryption-integration-config
                                      :member-name "KMSServerSideEncryption"))
                                    (:shape-name
                                     "UpdateServiceIntegrationConfig"))

(smithy/sdk/shapes:define-input update-service-integration-request
                                common-lisp:nil
                                ((service-integration :target-type
                                  update-service-integration-config :required
                                  common-lisp:t :member-name
                                  "ServiceIntegration"))
                                (:shape-name "UpdateServiceIntegrationRequest"))

(smithy/sdk/shapes:define-output update-service-integration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateServiceIntegrationResponse"))

(smithy/sdk/shapes:define-list update-stack-names :member stack-name)

(smithy/sdk/shapes:define-structure update-tag-collection-filter
                                    common-lisp:nil
                                    ((app-boundary-key :target-type
                                      app-boundary-key :required common-lisp:t
                                      :member-name "AppBoundaryKey")
                                     (tag-values :target-type update-tag-values
                                      :required common-lisp:t :member-name
                                      "TagValues"))
                                    (:shape-name "UpdateTagCollectionFilter"))

(smithy/sdk/shapes:define-list update-tag-collection-filters :member
                               update-tag-collection-filter)

(smithy/sdk/shapes:define-list update-tag-values :member tag-value)

(smithy/sdk/shapes:define-type uuid-next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message-string
                                  :required common-lisp:t :member-name
                                  "Message")
                                 (reason :target-type
                                  validation-exception-reason :member-name
                                  "Reason")
                                 (fields :target-type
                                  validation-exception-fields :member-name
                                  "Fields"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type error-name-string
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (message :target-type error-message-string
                                      :required common-lisp:t :member-name
                                      "Message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-fields :member
                               validation-exception-field)

(smithy/sdk/shapes:define-enum validation-exception-reason
    common-lisp:nil
  (:unknown-operation "UNKNOWN_OPERATION")
  (:cannot-parse "CANNOT_PARSE")
  (:field-validation-failed "FIELD_VALIDATION_FAILED")
  (:other "OTHER")
  (:invalid-parameter-combination "INVALID_PARAMETER_COMBINATION")
  (:parameter-inconsistent-with-service-state
   "PARAMETER_INCONSISTENT_WITH_SERVICE_STATE"))

(smithy/sdk/operation:define-operation add-notification-channel :shape-name
                                       "AddNotificationChannel" :input
                                       add-notification-channel-request :output
                                       add-notification-channel-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/channels" :code 200)

(smithy/sdk/operation:define-operation delete-insight :shape-name
                                       "DeleteInsight" :input
                                       delete-insight-request :output
                                       delete-insight-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri "/insights/{Id}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-account-health :shape-name
                                       "DescribeAccountHealth" :input
                                       describe-account-health-request :output
                                       describe-account-health-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/accounts/health"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-account-overview :shape-name
                                       "DescribeAccountOverview" :input
                                       describe-account-overview-request
                                       :output
                                       describe-account-overview-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/accounts/overview"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-anomaly :shape-name
                                       "DescribeAnomaly" :input
                                       describe-anomaly-request :output
                                       describe-anomaly-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/anomalies/{Id}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-event-sources-config
                                       :shape-name "DescribeEventSourcesConfig"
                                       :input
                                       describe-event-sources-config-request
                                       :output
                                       describe-event-sources-config-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/event-sources"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-feedback :shape-name
                                       "DescribeFeedback" :input
                                       describe-feedback-request :output
                                       describe-feedback-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/feedback" :code
                                       200)

(smithy/sdk/operation:define-operation describe-insight :shape-name
                                       "DescribeInsight" :input
                                       describe-insight-request :output
                                       describe-insight-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/insights/{Id}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-organization-health :shape-name
                                       "DescribeOrganizationHealth" :input
                                       describe-organization-health-request
                                       :output
                                       describe-organization-health-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/organization/health" :code 200)

(smithy/sdk/operation:define-operation describe-organization-overview
                                       :shape-name
                                       "DescribeOrganizationOverview" :input
                                       describe-organization-overview-request
                                       :output
                                       describe-organization-overview-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/organization/overview" :code 200)

(smithy/sdk/operation:define-operation
 describe-organization-resource-collection-health :shape-name
 "DescribeOrganizationResourceCollectionHealth" :input
 describe-organization-resource-collection-health-request :output
 describe-organization-resource-collection-health-response :errors
 (access-denied-exception internal-server-exception throttling-exception
  validation-exception)
 :method "POST" :uri "/organization/health/resource-collection" :code 200)

(smithy/sdk/operation:define-operation describe-resource-collection-health
                                       :shape-name
                                       "DescribeResourceCollectionHealth"
                                       :input
                                       describe-resource-collection-health-request
                                       :output
                                       describe-resource-collection-health-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/accounts/health/resource-collection/{ResourceCollectionType}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-service-integration :shape-name
                                       "DescribeServiceIntegration" :input
                                       describe-service-integration-request
                                       :output
                                       describe-service-integration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/service-integrations" :code 200)

(smithy/sdk/operation:define-operation get-cost-estimation :shape-name
                                       "GetCostEstimation" :input
                                       get-cost-estimation-request :output
                                       get-cost-estimation-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/cost-estimation"
                                       :code 200)

(smithy/sdk/operation:define-operation get-resource-collection :shape-name
                                       "GetResourceCollection" :input
                                       get-resource-collection-request :output
                                       get-resource-collection-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/resource-collections/{ResourceCollectionType}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-anomalies-for-insight :shape-name
                                       "ListAnomaliesForInsight" :input
                                       list-anomalies-for-insight-request
                                       :output
                                       list-anomalies-for-insight-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/anomalies/insight/{InsightId}" :code
                                       200)

(smithy/sdk/operation:define-operation list-anomalous-log-groups :shape-name
                                       "ListAnomalousLogGroups" :input
                                       list-anomalous-log-groups-request
                                       :output
                                       list-anomalous-log-groups-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/list-log-anomalies" :code 200)

(smithy/sdk/operation:define-operation list-events :shape-name "ListEvents"
                                       :input list-events-request :output
                                       list-events-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/events" :code 200)

(smithy/sdk/operation:define-operation list-insights :shape-name "ListInsights"
                                       :input list-insights-request :output
                                       list-insights-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/insights" :code
                                       200)

(smithy/sdk/operation:define-operation list-monitored-resources :shape-name
                                       "ListMonitoredResources" :input
                                       list-monitored-resources-request :output
                                       list-monitored-resources-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/monitoredResources" :code 200)

(smithy/sdk/operation:define-operation list-notification-channels :shape-name
                                       "ListNotificationChannels" :input
                                       list-notification-channels-request
                                       :output
                                       list-notification-channels-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/channels" :code
                                       200)

(smithy/sdk/operation:define-operation list-organization-insights :shape-name
                                       "ListOrganizationInsights" :input
                                       list-organization-insights-request
                                       :output
                                       list-organization-insights-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/organization/insights" :code 200)

(smithy/sdk/operation:define-operation list-recommendations :shape-name
                                       "ListRecommendations" :input
                                       list-recommendations-request :output
                                       list-recommendations-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/recommendations"
                                       :code 200)

(smithy/sdk/operation:define-operation put-feedback :shape-name "PutFeedback"
                                       :input put-feedback-request :output
                                       put-feedback-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/feedback" :code 200)

(smithy/sdk/operation:define-operation remove-notification-channel :shape-name
                                       "RemoveNotificationChannel" :input
                                       remove-notification-channel-request
                                       :output
                                       remove-notification-channel-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri "/channels/{Id}"
                                       :code 200)

(smithy/sdk/operation:define-operation search-insights :shape-name
                                       "SearchInsights" :input
                                       search-insights-request :output
                                       search-insights-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/insights/search"
                                       :code 200)

(smithy/sdk/operation:define-operation search-organization-insights :shape-name
                                       "SearchOrganizationInsights" :input
                                       search-organization-insights-request
                                       :output
                                       search-organization-insights-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/organization/insights/search" :code
                                       200)

(smithy/sdk/operation:define-operation start-cost-estimation :shape-name
                                       "StartCostEstimation" :input
                                       start-cost-estimation-request :output
                                       start-cost-estimation-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/cost-estimation"
                                       :code 200)

(smithy/sdk/operation:define-operation update-event-sources-config :shape-name
                                       "UpdateEventSourcesConfig" :input
                                       update-event-sources-config-request
                                       :output
                                       update-event-sources-config-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/event-sources"
                                       :code 200)

(smithy/sdk/operation:define-operation update-resource-collection :shape-name
                                       "UpdateResourceCollection" :input
                                       update-resource-collection-request
                                       :output
                                       update-resource-collection-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/resource-collections" :code 200)

(smithy/sdk/operation:define-operation update-service-integration :shape-name
                                       "UpdateServiceIntegration" :input
                                       update-service-integration-request
                                       :output
                                       update-service-integration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/service-integrations" :code 200)
