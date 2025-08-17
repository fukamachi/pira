(uiop/package:define-package #:pira/cost-explorer (:use)
                             (:export #:awsinsights-index-service #:account-id
                              #:account-scope #:amortized-recurring-fee
                              #:amortized-upfront-fee #:analysis-details
                              #:analysis-id #:analysis-ids #:analysis-status
                              #:analysis-summary #:analysis-summary-list
                              #:analysis-type #:anomalies #:anomaly
                              #:anomaly-date-interval #:anomaly-feedback-type
                              #:anomaly-monitor #:anomaly-monitors
                              #:anomaly-score #:anomaly-subscription
                              #:anomaly-subscription-frequency
                              #:anomaly-subscriptions
                              #:approximate-usage-records-per-service
                              #:approximation-dimension #:arn #:attribute-type
                              #:attribute-value #:attributes #:billing-view-arn
                              #:commitment-purchase-analysis-configuration
                              #:comparison-metric-value #:comparison-metrics
                              #:context #:cost-allocation-tag
                              #:cost-allocation-tag-backfill-request
                              #:cost-allocation-tag-backfill-request-list
                              #:cost-allocation-tag-backfill-status
                              #:cost-allocation-tag-key-list
                              #:cost-allocation-tag-list
                              #:cost-allocation-tag-status
                              #:cost-allocation-tag-status-entry
                              #:cost-allocation-tag-status-list
                              #:cost-allocation-tag-type
                              #:cost-allocation-tags-max-results
                              #:cost-and-usage-comparison
                              #:cost-and-usage-comparisons
                              #:cost-and-usage-comparisons-max-results
                              #:cost-category
                              #:cost-category-inherited-value-dimension
                              #:cost-category-inherited-value-dimension-name
                              #:cost-category-max-results #:cost-category-name
                              #:cost-category-names-list
                              #:cost-category-processing-status
                              #:cost-category-processing-status-list
                              #:cost-category-reference
                              #:cost-category-references-list
                              #:cost-category-rule #:cost-category-rule-type
                              #:cost-category-rule-version
                              #:cost-category-rules-list
                              #:cost-category-split-charge-method
                              #:cost-category-split-charge-rule
                              #:cost-category-split-charge-rule-parameter
                              #:cost-category-split-charge-rule-parameter-type
                              #:cost-category-split-charge-rule-parameter-values-list
                              #:cost-category-split-charge-rule-parameters-list
                              #:cost-category-split-charge-rule-targets-list
                              #:cost-category-split-charge-rules-list
                              #:cost-category-status
                              #:cost-category-status-component
                              #:cost-category-value #:cost-category-values
                              #:cost-category-values-list
                              #:cost-comparison-driver
                              #:cost-comparison-drivers
                              #:cost-comparison-drivers-max-results
                              #:cost-driver #:cost-drivers #:coverage
                              #:coverage-by-time #:coverage-cost
                              #:coverage-hours #:coverage-hours-percentage
                              #:coverage-normalized-units
                              #:coverage-normalized-units-percentage
                              #:coverages-by-time #:create-anomaly-monitor
                              #:create-anomaly-subscription
                              #:create-cost-category-definition
                              #:current-instance #:date-interval
                              #:delete-anomaly-monitor
                              #:delete-anomaly-subscription
                              #:delete-cost-category-definition
                              #:describe-cost-category-definition #:dimension
                              #:dimension-values
                              #:dimension-values-with-attributes
                              #:dimension-values-with-attributes-list
                              #:disk-resource-utilization
                              #:dynamo-dbcapacity-details
                              #:ebsresource-utilization #:ec2instance-details
                              #:ec2resource-details #:ec2resource-utilization
                              #:ec2specification #:esinstance-details
                              #:elasti-cache-instance-details #:entity
                              #:error-code #:error-message #:estimated
                              #:expression #:expressions #:finding-reason-code
                              #:finding-reason-codes #:forecast-result
                              #:forecast-results-by-time #:generation-status
                              #:generation-summary #:generation-summary-list
                              #:generic-boolean #:generic-double
                              #:generic-string #:get-anomalies
                              #:get-anomaly-monitors
                              #:get-anomaly-subscriptions
                              #:get-approximate-usage-records
                              #:get-commitment-purchase-analysis
                              #:get-cost-and-usage
                              #:get-cost-and-usage-comparisons
                              #:get-cost-and-usage-with-resources
                              #:get-cost-categories
                              #:get-cost-comparison-drivers #:get-cost-forecast
                              #:get-dimension-values #:get-reservation-coverage
                              #:get-reservation-purchase-recommendation
                              #:get-reservation-utilization
                              #:get-rightsizing-recommendation
                              #:get-savings-plan-purchase-recommendation-details
                              #:get-savings-plans-coverage
                              #:get-savings-plans-purchase-recommendation
                              #:get-savings-plans-utilization
                              #:get-savings-plans-utilization-details
                              #:get-tags #:get-usage-forecast #:granularity
                              #:group #:group-definition #:group-definition-key
                              #:group-definition-type #:group-definitions
                              #:groups #:impact #:instance-details #:key #:keys
                              #:list-commitment-purchase-analyses
                              #:list-cost-allocation-tag-backfill-history
                              #:list-cost-allocation-tags
                              #:list-cost-category-definitions
                              #:list-savings-plans-purchase-recommendation-generation
                              #:list-tags-for-resource
                              #:lookback-period-in-days #:match-option
                              #:match-options #:max-results
                              #:memory-dbinstance-details #:metric
                              #:metric-amount #:metric-name #:metric-names
                              #:metric-unit #:metric-value #:metrics
                              #:metrics-over-lookback-period
                              #:modify-recommendation-detail #:monitor-arn-list
                              #:monitor-dimension #:monitor-type
                              #:net-risavings #:network-resource-utilization
                              #:next-page-token #:non-negative-integer
                              #:non-negative-long
                              #:nullable-non-negative-double #:numeric-operator
                              #:offering-class #:on-demand-cost
                              #:on-demand-cost-of-rihours-used
                              #:on-demand-hours #:on-demand-normalized-units
                              #:page-size #:payment-option
                              #:platform-difference #:platform-differences
                              #:prediction-interval-level
                              #:provide-anomaly-feedback #:purchased-hours
                              #:purchased-units #:rdsinstance-details
                              #:ricost-for-unused-hours #:realized-savings
                              #:recommendation-detail-data
                              #:recommendation-detail-hourly-metrics
                              #:recommendation-detail-id #:recommendation-id
                              #:recommendation-id-list #:recommendation-target
                              #:redshift-instance-details
                              #:reservation-aggregates
                              #:reservation-coverage-group
                              #:reservation-coverage-groups
                              #:reservation-group-key #:reservation-group-value
                              #:reservation-purchase-recommendation
                              #:reservation-purchase-recommendation-detail
                              #:reservation-purchase-recommendation-details
                              #:reservation-purchase-recommendation-metadata
                              #:reservation-purchase-recommendation-summary
                              #:reservation-purchase-recommendations
                              #:reservation-utilization-group
                              #:reservation-utilization-groups
                              #:reserved-capacity-details #:reserved-hours
                              #:reserved-normalized-units #:resource-details
                              #:resource-tag #:resource-tag-key
                              #:resource-tag-key-list #:resource-tag-list
                              #:resource-tag-value #:resource-utilization
                              #:result-by-time #:results-by-time
                              #:rightsizing-recommendation
                              #:rightsizing-recommendation-configuration
                              #:rightsizing-recommendation-list
                              #:rightsizing-recommendation-metadata
                              #:rightsizing-recommendation-summary
                              #:rightsizing-type #:root-cause
                              #:root-cause-impact #:root-causes
                              #:savings-plan-arn #:savings-plans
                              #:savings-plans-amortized-commitment
                              #:savings-plans-commitment
                              #:savings-plans-coverage
                              #:savings-plans-coverage-data
                              #:savings-plans-coverages
                              #:savings-plans-data-type
                              #:savings-plans-data-types
                              #:savings-plans-details #:savings-plans-id
                              #:savings-plans-purchase-analysis-configuration
                              #:savings-plans-purchase-analysis-details
                              #:savings-plans-purchase-recommendation
                              #:savings-plans-purchase-recommendation-detail
                              #:savings-plans-purchase-recommendation-detail-list
                              #:savings-plans-purchase-recommendation-metadata
                              #:savings-plans-purchase-recommendation-summary
                              #:savings-plans-savings #:savings-plans-to-add
                              #:savings-plans-to-exclude
                              #:savings-plans-utilization
                              #:savings-plans-utilization-aggregates
                              #:savings-plans-utilization-by-time
                              #:savings-plans-utilization-detail
                              #:savings-plans-utilization-details
                              #:savings-plans-utilizations-by-time
                              #:search-string #:service-specification
                              #:sort-definition #:sort-definition-key
                              #:sort-definitions #:sort-order
                              #:start-commitment-purchase-analysis
                              #:start-cost-allocation-tag-backfill
                              #:start-savings-plans-purchase-recommendation-generation
                              #:subscriber #:subscriber-address
                              #:subscriber-status #:subscriber-type
                              #:subscribers #:supported-savings-plans-type
                              #:tag-key #:tag-list #:tag-resource #:tag-values
                              #:tag-values-list #:target-instance
                              #:target-instances-list #:term-in-years
                              #:terminate-recommendation-detail
                              #:total-actual-hours #:total-actual-units
                              #:total-amortized-fee #:total-impact-filter
                              #:total-potential-risavings #:total-running-hours
                              #:total-running-normalized-units
                              #:unrealized-savings #:untag-resource
                              #:unused-hours #:unused-units
                              #:update-anomaly-monitor
                              #:update-anomaly-subscription
                              #:update-cost-allocation-tags-status
                              #:update-cost-allocation-tags-status-error
                              #:update-cost-allocation-tags-status-errors
                              #:update-cost-category-definition
                              #:usage-services #:utilization-by-time
                              #:utilization-percentage
                              #:utilization-percentage-in-units
                              #:utilizations-by-time #:value #:values
                              #:year-month-day #:zoned-date-time))
(common-lisp:in-package #:pira/cost-explorer)

(smithy/sdk/service:define-service awsinsights-index-service :shape-name
                                   "AWSInsightsIndexService" :version
                                   "2017-10-25" :title
                                   "AWS Cost Explorer Service" :operations
                                   '(create-anomaly-monitor
                                     create-anomaly-subscription
                                     create-cost-category-definition
                                     delete-anomaly-monitor
                                     delete-anomaly-subscription
                                     delete-cost-category-definition
                                     describe-cost-category-definition
                                     get-anomalies get-anomaly-monitors
                                     get-anomaly-subscriptions
                                     get-approximate-usage-records
                                     get-commitment-purchase-analysis
                                     get-cost-and-usage
                                     get-cost-and-usage-comparisons
                                     get-cost-and-usage-with-resources
                                     get-cost-categories
                                     get-cost-comparison-drivers
                                     get-cost-forecast get-dimension-values
                                     get-reservation-coverage
                                     get-reservation-purchase-recommendation
                                     get-reservation-utilization
                                     get-rightsizing-recommendation
                                     get-savings-plan-purchase-recommendation-details
                                     get-savings-plans-coverage
                                     get-savings-plans-purchase-recommendation
                                     get-savings-plans-utilization
                                     get-savings-plans-utilization-details
                                     get-tags get-usage-forecast
                                     list-commitment-purchase-analyses
                                     list-cost-allocation-tag-backfill-history
                                     list-cost-allocation-tags
                                     list-cost-category-definitions
                                     list-savings-plans-purchase-recommendation-generation
                                     list-tags-for-resource
                                     provide-anomaly-feedback
                                     start-commitment-purchase-analysis
                                     start-cost-allocation-tag-backfill
                                     start-savings-plans-purchase-recommendation-generation
                                     tag-resource untag-resource
                                     update-anomaly-monitor
                                     update-anomaly-subscription
                                     update-cost-allocation-tags-status
                                     update-cost-category-definition)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Cost Explorer")
                                      ("arnNamespace" . "ce")
                                      ("cloudFormationName" . "CostExplorer")
                                      ("cloudTrailEventSource"
                                       . "costexplorer.amazonaws.com")
                                      ("docId" . "ce-2017-10-25")
                                      ("endpointPrefix" . "ce"))
                                     ("aws.auth#sigv4" ("name" . "ce"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum account-scope
    common-lisp:nil
  (:payer "PAYER")
  (:linked "LINKED"))

(smithy/sdk/shapes:define-type amortized-recurring-fee
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type amortized-upfront-fee
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure analysis-details common-lisp:nil
                                    ((savings-plans-purchase-analysis-details
                                      :target-type
                                      savings-plans-purchase-analysis-details
                                      :member-name
                                      "SavingsPlansPurchaseAnalysisDetails"))
                                    (:shape-name "AnalysisDetails"))

(smithy/sdk/shapes:define-type analysis-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list analysis-ids :member analysis-id)

(smithy/sdk/shapes:define-error analysis-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "AnalysisNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum analysis-status
    common-lisp:nil
  (:succeeded "SUCCEEDED")
  (:processing "PROCESSING")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure analysis-summary common-lisp:nil
                                    ((estimated-completion-time :target-type
                                      zoned-date-time :member-name
                                      "EstimatedCompletionTime")
                                     (analysis-completion-time :target-type
                                      zoned-date-time :member-name
                                      "AnalysisCompletionTime")
                                     (analysis-started-time :target-type
                                      zoned-date-time :member-name
                                      "AnalysisStartedTime")
                                     (analysis-status :target-type
                                      analysis-status :member-name
                                      "AnalysisStatus")
                                     (error-code :target-type error-code
                                      :member-name "ErrorCode")
                                     (analysis-id :target-type analysis-id
                                      :member-name "AnalysisId")
                                     (commitment-purchase-analysis-configuration
                                      :target-type
                                      commitment-purchase-analysis-configuration
                                      :member-name
                                      "CommitmentPurchaseAnalysisConfiguration"))
                                    (:shape-name "AnalysisSummary"))

(smithy/sdk/shapes:define-list analysis-summary-list :member analysis-summary)

(smithy/sdk/shapes:define-enum analysis-type
    common-lisp:nil
  (:max-savings "MAX_SAVINGS")
  (:custom-commitment "CUSTOM_COMMITMENT"))

(smithy/sdk/shapes:define-list anomalies :member anomaly)

(smithy/sdk/shapes:define-structure anomaly common-lisp:nil
                                    ((anomaly-id :target-type generic-string
                                      :required common-lisp:t :member-name
                                      "AnomalyId")
                                     (anomaly-start-date :target-type
                                      year-month-day :member-name
                                      "AnomalyStartDate")
                                     (anomaly-end-date :target-type
                                      year-month-day :member-name
                                      "AnomalyEndDate")
                                     (dimension-value :target-type
                                      generic-string :member-name
                                      "DimensionValue")
                                     (root-causes :target-type root-causes
                                      :member-name "RootCauses")
                                     (anomaly-score :target-type anomaly-score
                                      :required common-lisp:t :member-name
                                      "AnomalyScore")
                                     (impact :target-type impact :required
                                      common-lisp:t :member-name "Impact")
                                     (monitor-arn :target-type generic-string
                                      :required common-lisp:t :member-name
                                      "MonitorArn")
                                     (feedback :target-type
                                      anomaly-feedback-type :member-name
                                      "Feedback"))
                                    (:shape-name "Anomaly"))

(smithy/sdk/shapes:define-structure anomaly-date-interval common-lisp:nil
                                    ((start-date :target-type year-month-day
                                      :required common-lisp:t :member-name
                                      "StartDate")
                                     (end-date :target-type year-month-day
                                      :member-name "EndDate"))
                                    (:shape-name "AnomalyDateInterval"))

(smithy/sdk/shapes:define-enum anomaly-feedback-type
    common-lisp:nil
  (:yes "YES")
  (:no "NO")
  (:planned-activity "PLANNED_ACTIVITY"))

(smithy/sdk/shapes:define-structure anomaly-monitor common-lisp:nil
                                    ((monitor-arn :target-type generic-string
                                      :member-name "MonitorArn")
                                     (monitor-name :target-type generic-string
                                      :required common-lisp:t :member-name
                                      "MonitorName")
                                     (creation-date :target-type year-month-day
                                      :member-name "CreationDate")
                                     (last-updated-date :target-type
                                      year-month-day :member-name
                                      "LastUpdatedDate")
                                     (last-evaluated-date :target-type
                                      year-month-day :member-name
                                      "LastEvaluatedDate")
                                     (monitor-type :target-type monitor-type
                                      :required common-lisp:t :member-name
                                      "MonitorType")
                                     (monitor-dimension :target-type
                                      monitor-dimension :member-name
                                      "MonitorDimension")
                                     (monitor-specification :target-type
                                      expression :member-name
                                      "MonitorSpecification")
                                     (dimensional-value-count :target-type
                                      non-negative-integer :member-name
                                      "DimensionalValueCount"))
                                    (:shape-name "AnomalyMonitor"))

(smithy/sdk/shapes:define-list anomaly-monitors :member anomaly-monitor)

(smithy/sdk/shapes:define-structure anomaly-score common-lisp:nil
                                    ((max-score :target-type generic-double
                                      :required common-lisp:t :member-name
                                      "MaxScore")
                                     (current-score :target-type generic-double
                                      :required common-lisp:t :member-name
                                      "CurrentScore"))
                                    (:shape-name "AnomalyScore"))

(smithy/sdk/shapes:define-structure anomaly-subscription common-lisp:nil
                                    ((subscription-arn :target-type
                                      generic-string :member-name
                                      "SubscriptionArn")
                                     (account-id :target-type generic-string
                                      :member-name "AccountId")
                                     (monitor-arn-list :target-type
                                      monitor-arn-list :required common-lisp:t
                                      :member-name "MonitorArnList")
                                     (subscribers :target-type subscribers
                                      :required common-lisp:t :member-name
                                      "Subscribers")
                                     (threshold :target-type
                                      nullable-non-negative-double :member-name
                                      "Threshold")
                                     (frequency :target-type
                                      anomaly-subscription-frequency :required
                                      common-lisp:t :member-name "Frequency")
                                     (subscription-name :target-type
                                      generic-string :required common-lisp:t
                                      :member-name "SubscriptionName")
                                     (threshold-expression :target-type
                                      expression :member-name
                                      "ThresholdExpression"))
                                    (:shape-name "AnomalySubscription"))

(smithy/sdk/shapes:define-enum anomaly-subscription-frequency
    common-lisp:nil
  (:daily "DAILY")
  (:immediate "IMMEDIATE")
  (:weekly "WEEKLY"))

(smithy/sdk/shapes:define-list anomaly-subscriptions :member
                               anomaly-subscription)

(smithy/sdk/shapes:define-map approximate-usage-records-per-service :key
                              generic-string :value non-negative-long)

(smithy/sdk/shapes:define-enum approximation-dimension
    common-lisp:nil
  (:service "SERVICE")
  (:resource "RESOURCE"))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attribute-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attribute-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map attributes :key attribute-type :value
                              attribute-value)

(smithy/sdk/shapes:define-error backfill-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "BackfillLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error bill-expiration-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "BillExpirationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type billing-view-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure commitment-purchase-analysis-configuration
                                    common-lisp:nil
                                    ((savings-plans-purchase-analysis-configuration
                                      :target-type
                                      savings-plans-purchase-analysis-configuration
                                      :member-name
                                      "SavingsPlansPurchaseAnalysisConfiguration"))
                                    (:shape-name
                                     "CommitmentPurchaseAnalysisConfiguration"))

(smithy/sdk/shapes:define-structure comparison-metric-value common-lisp:nil
                                    ((baseline-time-period-amount :target-type
                                      generic-string :member-name
                                      "BaselineTimePeriodAmount")
                                     (comparison-time-period-amount
                                      :target-type generic-string :member-name
                                      "ComparisonTimePeriodAmount")
                                     (difference :target-type generic-string
                                      :member-name "Difference")
                                     (unit :target-type generic-string
                                      :member-name "Unit"))
                                    (:shape-name "ComparisonMetricValue"))

(smithy/sdk/shapes:define-map comparison-metrics :key metric-name :value
                              comparison-metric-value)

(smithy/sdk/shapes:define-enum context
    common-lisp:nil
  (:cost-and-usage "COST_AND_USAGE")
  (:reservations "RESERVATIONS")
  (:savings-plans "SAVINGS_PLANS"))

(smithy/sdk/shapes:define-structure cost-allocation-tag common-lisp:nil
                                    ((tag-key :target-type tag-key :required
                                      common-lisp:t :member-name "TagKey")
                                     (type :target-type
                                      cost-allocation-tag-type :required
                                      common-lisp:t :member-name "Type")
                                     (status :target-type
                                      cost-allocation-tag-status :required
                                      common-lisp:t :member-name "Status")
                                     (last-updated-date :target-type
                                      zoned-date-time :member-name
                                      "LastUpdatedDate")
                                     (last-used-date :target-type
                                      zoned-date-time :member-name
                                      "LastUsedDate"))
                                    (:shape-name "CostAllocationTag"))

(smithy/sdk/shapes:define-structure cost-allocation-tag-backfill-request
                                    common-lisp:nil
                                    ((backfill-from :target-type
                                      zoned-date-time :member-name
                                      "BackfillFrom")
                                     (requested-at :target-type zoned-date-time
                                      :member-name "RequestedAt")
                                     (completed-at :target-type zoned-date-time
                                      :member-name "CompletedAt")
                                     (backfill-status :target-type
                                      cost-allocation-tag-backfill-status
                                      :member-name "BackfillStatus")
                                     (last-updated-at :target-type
                                      zoned-date-time :member-name
                                      "LastUpdatedAt"))
                                    (:shape-name
                                     "CostAllocationTagBackfillRequest"))

(smithy/sdk/shapes:define-list cost-allocation-tag-backfill-request-list
                               :member cost-allocation-tag-backfill-request)

(smithy/sdk/shapes:define-enum cost-allocation-tag-backfill-status
    common-lisp:nil
  (:succeeded "SUCCEEDED")
  (:processing "PROCESSING")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-list cost-allocation-tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list cost-allocation-tag-list :member
                               cost-allocation-tag)

(smithy/sdk/shapes:define-enum cost-allocation-tag-status
    common-lisp:nil
  (:active "Active")
  (:inactive "Inactive"))

(smithy/sdk/shapes:define-structure cost-allocation-tag-status-entry
                                    common-lisp:nil
                                    ((tag-key :target-type tag-key :required
                                      common-lisp:t :member-name "TagKey")
                                     (status :target-type
                                      cost-allocation-tag-status :required
                                      common-lisp:t :member-name "Status"))
                                    (:shape-name
                                     "CostAllocationTagStatusEntry"))

(smithy/sdk/shapes:define-list cost-allocation-tag-status-list :member
                               cost-allocation-tag-status-entry)

(smithy/sdk/shapes:define-enum cost-allocation-tag-type
    common-lisp:nil
  (:aws-generated "AWSGenerated")
  (:user-defined "UserDefined"))

(smithy/sdk/shapes:define-type cost-allocation-tags-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure cost-and-usage-comparison common-lisp:nil
                                    ((cost-and-usage-selector :target-type
                                      expression :member-name
                                      "CostAndUsageSelector")
                                     (metrics :target-type comparison-metrics
                                      :member-name "Metrics"))
                                    (:shape-name "CostAndUsageComparison"))

(smithy/sdk/shapes:define-list cost-and-usage-comparisons :member
                               cost-and-usage-comparison)

(smithy/sdk/shapes:define-type cost-and-usage-comparisons-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure cost-category common-lisp:nil
                                    ((cost-category-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "CostCategoryArn")
                                     (effective-start :target-type
                                      zoned-date-time :required common-lisp:t
                                      :member-name "EffectiveStart")
                                     (effective-end :target-type
                                      zoned-date-time :member-name
                                      "EffectiveEnd")
                                     (name :target-type cost-category-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (rule-version :target-type
                                      cost-category-rule-version :required
                                      common-lisp:t :member-name "RuleVersion")
                                     (rules :target-type
                                      cost-category-rules-list :required
                                      common-lisp:t :member-name "Rules")
                                     (split-charge-rules :target-type
                                      cost-category-split-charge-rules-list
                                      :member-name "SplitChargeRules")
                                     (processing-status :target-type
                                      cost-category-processing-status-list
                                      :member-name "ProcessingStatus")
                                     (default-value :target-type
                                      cost-category-value :member-name
                                      "DefaultValue"))
                                    (:shape-name "CostCategory"))

(smithy/sdk/shapes:define-structure cost-category-inherited-value-dimension
                                    common-lisp:nil
                                    ((dimension-name :target-type
                                      cost-category-inherited-value-dimension-name
                                      :member-name "DimensionName")
                                     (dimension-key :target-type generic-string
                                      :member-name "DimensionKey"))
                                    (:shape-name
                                     "CostCategoryInheritedValueDimension"))

(smithy/sdk/shapes:define-enum cost-category-inherited-value-dimension-name
    common-lisp:nil
  (:linked-account-name "LINKED_ACCOUNT_NAME")
  (:tag "TAG"))

(smithy/sdk/shapes:define-type cost-category-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type cost-category-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list cost-category-names-list :member
                               cost-category-name)

(smithy/sdk/shapes:define-structure cost-category-processing-status
                                    common-lisp:nil
                                    ((component :target-type
                                      cost-category-status-component
                                      :member-name "Component")
                                     (status :target-type cost-category-status
                                      :member-name "Status"))
                                    (:shape-name
                                     "CostCategoryProcessingStatus"))

(smithy/sdk/shapes:define-list cost-category-processing-status-list :member
                               cost-category-processing-status)

(smithy/sdk/shapes:define-structure cost-category-reference common-lisp:nil
                                    ((cost-category-arn :target-type arn
                                      :member-name "CostCategoryArn")
                                     (name :target-type cost-category-name
                                      :member-name "Name")
                                     (effective-start :target-type
                                      zoned-date-time :member-name
                                      "EffectiveStart")
                                     (effective-end :target-type
                                      zoned-date-time :member-name
                                      "EffectiveEnd")
                                     (number-of-rules :target-type
                                      non-negative-integer :member-name
                                      "NumberOfRules")
                                     (processing-status :target-type
                                      cost-category-processing-status-list
                                      :member-name "ProcessingStatus")
                                     (values :target-type
                                      cost-category-values-list :member-name
                                      "Values")
                                     (default-value :target-type
                                      cost-category-value :member-name
                                      "DefaultValue"))
                                    (:shape-name "CostCategoryReference"))

(smithy/sdk/shapes:define-list cost-category-references-list :member
                               cost-category-reference)

(smithy/sdk/shapes:define-structure cost-category-rule common-lisp:nil
                                    ((value :target-type cost-category-value
                                      :member-name "Value")
                                     (rule :target-type expression :member-name
                                      "Rule")
                                     (inherited-value :target-type
                                      cost-category-inherited-value-dimension
                                      :member-name "InheritedValue")
                                     (type :target-type cost-category-rule-type
                                      :member-name "Type"))
                                    (:shape-name "CostCategoryRule"))

(smithy/sdk/shapes:define-enum cost-category-rule-type
    common-lisp:nil
  (:regular "REGULAR")
  (:inherited-value "INHERITED_VALUE"))

(smithy/sdk/shapes:define-enum cost-category-rule-version
    common-lisp:nil
  (:cost-category-expression-v1 "CostCategoryExpression.v1"))

(smithy/sdk/shapes:define-list cost-category-rules-list :member
                               cost-category-rule)

(smithy/sdk/shapes:define-enum cost-category-split-charge-method
    common-lisp:nil
  (:fixed "FIXED")
  (:proportional "PROPORTIONAL")
  (:even "EVEN"))

(smithy/sdk/shapes:define-structure cost-category-split-charge-rule
                                    common-lisp:nil
                                    ((source :target-type generic-string
                                      :required common-lisp:t :member-name
                                      "Source")
                                     (targets :target-type
                                      cost-category-split-charge-rule-targets-list
                                      :required common-lisp:t :member-name
                                      "Targets")
                                     (method :target-type
                                      cost-category-split-charge-method
                                      :required common-lisp:t :member-name
                                      "Method")
                                     (parameters :target-type
                                      cost-category-split-charge-rule-parameters-list
                                      :member-name "Parameters"))
                                    (:shape-name "CostCategorySplitChargeRule"))

(smithy/sdk/shapes:define-structure cost-category-split-charge-rule-parameter
                                    common-lisp:nil
                                    ((type :target-type
                                      cost-category-split-charge-rule-parameter-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (values :target-type
                                      cost-category-split-charge-rule-parameter-values-list
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name
                                     "CostCategorySplitChargeRuleParameter"))

(smithy/sdk/shapes:define-enum cost-category-split-charge-rule-parameter-type
    common-lisp:nil
  (:allocation-percentages "ALLOCATION_PERCENTAGES"))

(smithy/sdk/shapes:define-list
 cost-category-split-charge-rule-parameter-values-list :member generic-string)

(smithy/sdk/shapes:define-list cost-category-split-charge-rule-parameters-list
                               :member
                               cost-category-split-charge-rule-parameter)

(smithy/sdk/shapes:define-list cost-category-split-charge-rule-targets-list
                               :member generic-string)

(smithy/sdk/shapes:define-list cost-category-split-charge-rules-list :member
                               cost-category-split-charge-rule)

(smithy/sdk/shapes:define-enum cost-category-status
    common-lisp:nil
  (:processing "PROCESSING")
  (:applied "APPLIED"))

(smithy/sdk/shapes:define-enum cost-category-status-component
    common-lisp:nil
  (:cost-explorer "COST_EXPLORER"))

(smithy/sdk/shapes:define-type cost-category-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cost-category-values common-lisp:nil
                                    ((key :target-type cost-category-name
                                      :member-name "Key")
                                     (values :target-type values :member-name
                                      "Values")
                                     (match-options :target-type match-options
                                      :member-name "MatchOptions"))
                                    (:shape-name "CostCategoryValues"))

(smithy/sdk/shapes:define-list cost-category-values-list :member
                               cost-category-value)

(smithy/sdk/shapes:define-structure cost-comparison-driver common-lisp:nil
                                    ((cost-selector :target-type expression
                                      :member-name "CostSelector")
                                     (metrics :target-type comparison-metrics
                                      :member-name "Metrics")
                                     (cost-drivers :target-type cost-drivers
                                      :member-name "CostDrivers"))
                                    (:shape-name "CostComparisonDriver"))

(smithy/sdk/shapes:define-list cost-comparison-drivers :member
                               cost-comparison-driver)

(smithy/sdk/shapes:define-type cost-comparison-drivers-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure cost-driver common-lisp:nil
                                    ((type :target-type generic-string
                                      :member-name "Type")
                                     (name :target-type generic-string
                                      :member-name "Name")
                                     (metrics :target-type comparison-metrics
                                      :member-name "Metrics"))
                                    (:shape-name "CostDriver"))

(smithy/sdk/shapes:define-list cost-drivers :member cost-driver)

(smithy/sdk/shapes:define-structure coverage common-lisp:nil
                                    ((coverage-hours :target-type
                                      coverage-hours :member-name
                                      "CoverageHours")
                                     (coverage-normalized-units :target-type
                                      coverage-normalized-units :member-name
                                      "CoverageNormalizedUnits")
                                     (coverage-cost :target-type coverage-cost
                                      :member-name "CoverageCost"))
                                    (:shape-name "Coverage"))

(smithy/sdk/shapes:define-structure coverage-by-time common-lisp:nil
                                    ((time-period :target-type date-interval
                                      :member-name "TimePeriod")
                                     (groups :target-type
                                      reservation-coverage-groups :member-name
                                      "Groups")
                                     (total :target-type coverage :member-name
                                      "Total"))
                                    (:shape-name "CoverageByTime"))

(smithy/sdk/shapes:define-structure coverage-cost common-lisp:nil
                                    ((on-demand-cost :target-type
                                      on-demand-cost :member-name
                                      "OnDemandCost"))
                                    (:shape-name "CoverageCost"))

(smithy/sdk/shapes:define-structure coverage-hours common-lisp:nil
                                    ((on-demand-hours :target-type
                                      on-demand-hours :member-name
                                      "OnDemandHours")
                                     (reserved-hours :target-type
                                      reserved-hours :member-name
                                      "ReservedHours")
                                     (total-running-hours :target-type
                                      total-running-hours :member-name
                                      "TotalRunningHours")
                                     (coverage-hours-percentage :target-type
                                      coverage-hours-percentage :member-name
                                      "CoverageHoursPercentage"))
                                    (:shape-name "CoverageHours"))

(smithy/sdk/shapes:define-type coverage-hours-percentage
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure coverage-normalized-units common-lisp:nil
                                    ((on-demand-normalized-units :target-type
                                      on-demand-normalized-units :member-name
                                      "OnDemandNormalizedUnits")
                                     (reserved-normalized-units :target-type
                                      reserved-normalized-units :member-name
                                      "ReservedNormalizedUnits")
                                     (total-running-normalized-units
                                      :target-type
                                      total-running-normalized-units
                                      :member-name
                                      "TotalRunningNormalizedUnits")
                                     (coverage-normalized-units-percentage
                                      :target-type
                                      coverage-normalized-units-percentage
                                      :member-name
                                      "CoverageNormalizedUnitsPercentage"))
                                    (:shape-name "CoverageNormalizedUnits"))

(smithy/sdk/shapes:define-type coverage-normalized-units-percentage
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list coverages-by-time :member coverage-by-time)

(smithy/sdk/shapes:define-input create-anomaly-monitor-request common-lisp:nil
                                ((anomaly-monitor :target-type anomaly-monitor
                                  :required common-lisp:t :member-name
                                  "AnomalyMonitor")
                                 (resource-tags :target-type resource-tag-list
                                  :member-name "ResourceTags"))
                                (:shape-name "CreateAnomalyMonitorRequest"))

(smithy/sdk/shapes:define-output create-anomaly-monitor-response
                                 common-lisp:nil
                                 ((monitor-arn :target-type generic-string
                                   :required common-lisp:t :member-name
                                   "MonitorArn"))
                                 (:shape-name "CreateAnomalyMonitorResponse"))

(smithy/sdk/shapes:define-input create-anomaly-subscription-request
                                common-lisp:nil
                                ((anomaly-subscription :target-type
                                  anomaly-subscription :required common-lisp:t
                                  :member-name "AnomalySubscription")
                                 (resource-tags :target-type resource-tag-list
                                  :member-name "ResourceTags"))
                                (:shape-name
                                 "CreateAnomalySubscriptionRequest"))

(smithy/sdk/shapes:define-output create-anomaly-subscription-response
                                 common-lisp:nil
                                 ((subscription-arn :target-type generic-string
                                   :required common-lisp:t :member-name
                                   "SubscriptionArn"))
                                 (:shape-name
                                  "CreateAnomalySubscriptionResponse"))

(smithy/sdk/shapes:define-input create-cost-category-definition-request
                                common-lisp:nil
                                ((name :target-type cost-category-name
                                  :required common-lisp:t :member-name "Name")
                                 (effective-start :target-type zoned-date-time
                                  :member-name "EffectiveStart")
                                 (rule-version :target-type
                                  cost-category-rule-version :required
                                  common-lisp:t :member-name "RuleVersion")
                                 (rules :target-type cost-category-rules-list
                                  :required common-lisp:t :member-name "Rules")
                                 (default-value :target-type
                                  cost-category-value :member-name
                                  "DefaultValue")
                                 (split-charge-rules :target-type
                                  cost-category-split-charge-rules-list
                                  :member-name "SplitChargeRules")
                                 (resource-tags :target-type resource-tag-list
                                  :member-name "ResourceTags"))
                                (:shape-name
                                 "CreateCostCategoryDefinitionRequest"))

(smithy/sdk/shapes:define-output create-cost-category-definition-response
                                 common-lisp:nil
                                 ((cost-category-arn :target-type arn
                                   :member-name "CostCategoryArn")
                                  (effective-start :target-type zoned-date-time
                                   :member-name "EffectiveStart"))
                                 (:shape-name
                                  "CreateCostCategoryDefinitionResponse"))

(smithy/sdk/shapes:define-structure current-instance common-lisp:nil
                                    ((resource-id :target-type generic-string
                                      :member-name "ResourceId")
                                     (instance-name :target-type generic-string
                                      :member-name "InstanceName")
                                     (tags :target-type tag-values-list
                                      :member-name "Tags")
                                     (resource-details :target-type
                                      resource-details :member-name
                                      "ResourceDetails")
                                     (resource-utilization :target-type
                                      resource-utilization :member-name
                                      "ResourceUtilization")
                                     (reservation-covered-hours-in-lookback-period
                                      :target-type generic-string :member-name
                                      "ReservationCoveredHoursInLookbackPeriod")
                                     (savings-plans-covered-hours-in-lookback-period
                                      :target-type generic-string :member-name
                                      "SavingsPlansCoveredHoursInLookbackPeriod")
                                     (on-demand-hours-in-lookback-period
                                      :target-type generic-string :member-name
                                      "OnDemandHoursInLookbackPeriod")
                                     (total-running-hours-in-lookback-period
                                      :target-type generic-string :member-name
                                      "TotalRunningHoursInLookbackPeriod")
                                     (monthly-cost :target-type generic-string
                                      :member-name "MonthlyCost")
                                     (currency-code :target-type generic-string
                                      :member-name "CurrencyCode"))
                                    (:shape-name "CurrentInstance"))

(smithy/sdk/shapes:define-error data-unavailable-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "DataUnavailableException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure date-interval common-lisp:nil
                                    ((start :target-type year-month-day
                                      :required common-lisp:t :member-name
                                      "Start")
                                     (end :target-type year-month-day :required
                                      common-lisp:t :member-name "End"))
                                    (:shape-name "DateInterval"))

(smithy/sdk/shapes:define-input delete-anomaly-monitor-request common-lisp:nil
                                ((monitor-arn :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "MonitorArn"))
                                (:shape-name "DeleteAnomalyMonitorRequest"))

(smithy/sdk/shapes:define-output delete-anomaly-monitor-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteAnomalyMonitorResponse"))

(smithy/sdk/shapes:define-input delete-anomaly-subscription-request
                                common-lisp:nil
                                ((subscription-arn :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "SubscriptionArn"))
                                (:shape-name
                                 "DeleteAnomalySubscriptionRequest"))

(smithy/sdk/shapes:define-output delete-anomaly-subscription-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteAnomalySubscriptionResponse"))

(smithy/sdk/shapes:define-input delete-cost-category-definition-request
                                common-lisp:nil
                                ((cost-category-arn :target-type arn :required
                                  common-lisp:t :member-name
                                  "CostCategoryArn"))
                                (:shape-name
                                 "DeleteCostCategoryDefinitionRequest"))

(smithy/sdk/shapes:define-output delete-cost-category-definition-response
                                 common-lisp:nil
                                 ((cost-category-arn :target-type arn
                                   :member-name "CostCategoryArn")
                                  (effective-end :target-type zoned-date-time
                                   :member-name "EffectiveEnd"))
                                 (:shape-name
                                  "DeleteCostCategoryDefinitionResponse"))

(smithy/sdk/shapes:define-input describe-cost-category-definition-request
                                common-lisp:nil
                                ((cost-category-arn :target-type arn :required
                                  common-lisp:t :member-name "CostCategoryArn")
                                 (effective-on :target-type zoned-date-time
                                  :member-name "EffectiveOn"))
                                (:shape-name
                                 "DescribeCostCategoryDefinitionRequest"))

(smithy/sdk/shapes:define-output describe-cost-category-definition-response
                                 common-lisp:nil
                                 ((cost-category :target-type cost-category
                                   :member-name "CostCategory"))
                                 (:shape-name
                                  "DescribeCostCategoryDefinitionResponse"))

(smithy/sdk/shapes:define-enum dimension
    common-lisp:nil
  (:az "AZ")
  (:instance-type "INSTANCE_TYPE")
  (:linked-account "LINKED_ACCOUNT")
  (:linked-account-name "LINKED_ACCOUNT_NAME")
  (:operation "OPERATION")
  (:purchase-type "PURCHASE_TYPE")
  (:region "REGION")
  (:service "SERVICE")
  (:service-code "SERVICE_CODE")
  (:usage-type "USAGE_TYPE")
  (:usage-type-group "USAGE_TYPE_GROUP")
  (:record-type "RECORD_TYPE")
  (:operating-system "OPERATING_SYSTEM")
  (:tenancy "TENANCY")
  (:scope "SCOPE")
  (:platform "PLATFORM")
  (:subscription-id "SUBSCRIPTION_ID")
  (:legal-entity-name "LEGAL_ENTITY_NAME")
  (:deployment-option "DEPLOYMENT_OPTION")
  (:database-engine "DATABASE_ENGINE")
  (:cache-engine "CACHE_ENGINE")
  (:instance-type-family "INSTANCE_TYPE_FAMILY")
  (:billing-entity "BILLING_ENTITY")
  (:reservation-id "RESERVATION_ID")
  (:resource-id "RESOURCE_ID")
  (:rightsizing-type "RIGHTSIZING_TYPE")
  (:savings-plans-type "SAVINGS_PLANS_TYPE")
  (:savings-plan-arn "SAVINGS_PLAN_ARN")
  (:payment-option "PAYMENT_OPTION")
  (:agreement-end-date-time-after "AGREEMENT_END_DATE_TIME_AFTER")
  (:agreement-end-date-time-before "AGREEMENT_END_DATE_TIME_BEFORE")
  (:invoicing-entity "INVOICING_ENTITY")
  (:anomaly-total-impact-absolute "ANOMALY_TOTAL_IMPACT_ABSOLUTE")
  (:anomaly-total-impact-percentage "ANOMALY_TOTAL_IMPACT_PERCENTAGE"))

(smithy/sdk/shapes:define-structure dimension-values common-lisp:nil
                                    ((key :target-type dimension :member-name
                                      "Key")
                                     (values :target-type values :member-name
                                      "Values")
                                     (match-options :target-type match-options
                                      :member-name "MatchOptions"))
                                    (:shape-name "DimensionValues"))

(smithy/sdk/shapes:define-structure dimension-values-with-attributes
                                    common-lisp:nil
                                    ((value :target-type value :member-name
                                      "Value")
                                     (attributes :target-type attributes
                                      :member-name "Attributes"))
                                    (:shape-name
                                     "DimensionValuesWithAttributes"))

(smithy/sdk/shapes:define-list dimension-values-with-attributes-list :member
                               dimension-values-with-attributes)

(smithy/sdk/shapes:define-structure disk-resource-utilization common-lisp:nil
                                    ((disk-read-ops-per-second :target-type
                                      generic-string :member-name
                                      "DiskReadOpsPerSecond")
                                     (disk-write-ops-per-second :target-type
                                      generic-string :member-name
                                      "DiskWriteOpsPerSecond")
                                     (disk-read-bytes-per-second :target-type
                                      generic-string :member-name
                                      "DiskReadBytesPerSecond")
                                     (disk-write-bytes-per-second :target-type
                                      generic-string :member-name
                                      "DiskWriteBytesPerSecond"))
                                    (:shape-name "DiskResourceUtilization"))

(smithy/sdk/shapes:define-structure dynamo-dbcapacity-details common-lisp:nil
                                    ((capacity-units :target-type
                                      generic-string :member-name
                                      "CapacityUnits")
                                     (region :target-type generic-string
                                      :member-name "Region"))
                                    (:shape-name "DynamoDBCapacityDetails"))

(smithy/sdk/shapes:define-structure ebsresource-utilization common-lisp:nil
                                    ((ebs-read-ops-per-second :target-type
                                      generic-string :member-name
                                      "EbsReadOpsPerSecond")
                                     (ebs-write-ops-per-second :target-type
                                      generic-string :member-name
                                      "EbsWriteOpsPerSecond")
                                     (ebs-read-bytes-per-second :target-type
                                      generic-string :member-name
                                      "EbsReadBytesPerSecond")
                                     (ebs-write-bytes-per-second :target-type
                                      generic-string :member-name
                                      "EbsWriteBytesPerSecond"))
                                    (:shape-name "EBSResourceUtilization"))

(smithy/sdk/shapes:define-structure ec2instance-details common-lisp:nil
                                    ((family :target-type generic-string
                                      :member-name "Family")
                                     (instance-type :target-type generic-string
                                      :member-name "InstanceType")
                                     (region :target-type generic-string
                                      :member-name "Region")
                                     (availability-zone :target-type
                                      generic-string :member-name
                                      "AvailabilityZone")
                                     (platform :target-type generic-string
                                      :member-name "Platform")
                                     (tenancy :target-type generic-string
                                      :member-name "Tenancy")
                                     (current-generation :target-type
                                      generic-boolean :member-name
                                      "CurrentGeneration")
                                     (size-flex-eligible :target-type
                                      generic-boolean :member-name
                                      "SizeFlexEligible"))
                                    (:shape-name "EC2InstanceDetails"))

(smithy/sdk/shapes:define-structure ec2resource-details common-lisp:nil
                                    ((hourly-on-demand-rate :target-type
                                      generic-string :member-name
                                      "HourlyOnDemandRate")
                                     (instance-type :target-type generic-string
                                      :member-name "InstanceType")
                                     (platform :target-type generic-string
                                      :member-name "Platform")
                                     (region :target-type generic-string
                                      :member-name "Region")
                                     (sku :target-type generic-string
                                      :member-name "Sku")
                                     (memory :target-type generic-string
                                      :member-name "Memory")
                                     (network-performance :target-type
                                      generic-string :member-name
                                      "NetworkPerformance")
                                     (storage :target-type generic-string
                                      :member-name "Storage")
                                     (vcpu :target-type generic-string
                                      :member-name "Vcpu"))
                                    (:shape-name "EC2ResourceDetails"))

(smithy/sdk/shapes:define-structure ec2resource-utilization common-lisp:nil
                                    ((max-cpu-utilization-percentage
                                      :target-type generic-string :member-name
                                      "MaxCpuUtilizationPercentage")
                                     (max-memory-utilization-percentage
                                      :target-type generic-string :member-name
                                      "MaxMemoryUtilizationPercentage")
                                     (max-storage-utilization-percentage
                                      :target-type generic-string :member-name
                                      "MaxStorageUtilizationPercentage")
                                     (ebsresource-utilization :target-type
                                      ebsresource-utilization :member-name
                                      "EBSResourceUtilization")
                                     (disk-resource-utilization :target-type
                                      disk-resource-utilization :member-name
                                      "DiskResourceUtilization")
                                     (network-resource-utilization :target-type
                                      network-resource-utilization :member-name
                                      "NetworkResourceUtilization"))
                                    (:shape-name "EC2ResourceUtilization"))

(smithy/sdk/shapes:define-structure ec2specification common-lisp:nil
                                    ((offering-class :target-type
                                      offering-class :member-name
                                      "OfferingClass"))
                                    (:shape-name "EC2Specification"))

(smithy/sdk/shapes:define-structure esinstance-details common-lisp:nil
                                    ((instance-class :target-type
                                      generic-string :member-name
                                      "InstanceClass")
                                     (instance-size :target-type generic-string
                                      :member-name "InstanceSize")
                                     (region :target-type generic-string
                                      :member-name "Region")
                                     (current-generation :target-type
                                      generic-boolean :member-name
                                      "CurrentGeneration")
                                     (size-flex-eligible :target-type
                                      generic-boolean :member-name
                                      "SizeFlexEligible"))
                                    (:shape-name "ESInstanceDetails"))

(smithy/sdk/shapes:define-structure elasti-cache-instance-details
                                    common-lisp:nil
                                    ((family :target-type generic-string
                                      :member-name "Family")
                                     (node-type :target-type generic-string
                                      :member-name "NodeType")
                                     (region :target-type generic-string
                                      :member-name "Region")
                                     (product-description :target-type
                                      generic-string :member-name
                                      "ProductDescription")
                                     (current-generation :target-type
                                      generic-boolean :member-name
                                      "CurrentGeneration")
                                     (size-flex-eligible :target-type
                                      generic-boolean :member-name
                                      "SizeFlexEligible"))
                                    (:shape-name "ElastiCacheInstanceDetails"))

(smithy/sdk/shapes:define-type entity smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum error-code
    common-lisp:nil
  (:no-usage-found "NO_USAGE_FOUND")
  (:internal-failure "INTERNAL_FAILURE")
  (:invalid-savings-plans-to-add "INVALID_SAVINGS_PLANS_TO_ADD")
  (:invalid-savings-plans-to-exclude "INVALID_SAVINGS_PLANS_TO_EXCLUDE")
  (:invalid-account-id "INVALID_ACCOUNT_ID"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type estimated smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure expression common-lisp:nil
                                    ((or :target-type expressions :member-name
                                      "Or")
                                     (and :target-type expressions :member-name
                                      "And")
                                     (not :target-type expression :member-name
                                      "Not")
                                     (dimensions :target-type dimension-values
                                      :member-name "Dimensions")
                                     (tags :target-type tag-values :member-name
                                      "Tags")
                                     (cost-categories :target-type
                                      cost-category-values :member-name
                                      "CostCategories"))
                                    (:shape-name "Expression"))

(smithy/sdk/shapes:define-list expressions :member expression)

(smithy/sdk/shapes:define-enum finding-reason-code
    common-lisp:nil
  (:cpu-over-provisioned "CPU_OVER_PROVISIONED")
  (:cpu-under-provisioned "CPU_UNDER_PROVISIONED")
  (:memory-over-provisioned "MEMORY_OVER_PROVISIONED")
  (:memory-under-provisioned "MEMORY_UNDER_PROVISIONED")
  (:ebs-throughput-over-provisioned "EBS_THROUGHPUT_OVER_PROVISIONED")
  (:ebs-throughput-under-provisioned "EBS_THROUGHPUT_UNDER_PROVISIONED")
  (:ebs-iops-over-provisioned "EBS_IOPS_OVER_PROVISIONED")
  (:ebs-iops-under-provisioned "EBS_IOPS_UNDER_PROVISIONED")
  (:network-bandwidth-over-provisioned "NETWORK_BANDWIDTH_OVER_PROVISIONED")
  (:network-bandwidth-under-provisioned "NETWORK_BANDWIDTH_UNDER_PROVISIONED")
  (:network-pps-over-provisioned "NETWORK_PPS_OVER_PROVISIONED")
  (:network-pps-under-provisioned "NETWORK_PPS_UNDER_PROVISIONED")
  (:disk-iops-over-provisioned "DISK_IOPS_OVER_PROVISIONED")
  (:disk-iops-under-provisioned "DISK_IOPS_UNDER_PROVISIONED")
  (:disk-throughput-over-provisioned "DISK_THROUGHPUT_OVER_PROVISIONED")
  (:disk-throughput-under-provisioned "DISK_THROUGHPUT_UNDER_PROVISIONED"))

(smithy/sdk/shapes:define-list finding-reason-codes :member finding-reason-code)

(smithy/sdk/shapes:define-structure forecast-result common-lisp:nil
                                    ((time-period :target-type date-interval
                                      :member-name "TimePeriod")
                                     (mean-value :target-type generic-string
                                      :member-name "MeanValue")
                                     (prediction-interval-lower-bound
                                      :target-type generic-string :member-name
                                      "PredictionIntervalLowerBound")
                                     (prediction-interval-upper-bound
                                      :target-type generic-string :member-name
                                      "PredictionIntervalUpperBound"))
                                    (:shape-name "ForecastResult"))

(smithy/sdk/shapes:define-list forecast-results-by-time :member forecast-result)

(smithy/sdk/shapes:define-error generation-exists-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "GenerationExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum generation-status
    common-lisp:nil
  (:succeeded "SUCCEEDED")
  (:processing "PROCESSING")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure generation-summary common-lisp:nil
                                    ((recommendation-id :target-type
                                      recommendation-id :member-name
                                      "RecommendationId")
                                     (generation-status :target-type
                                      generation-status :member-name
                                      "GenerationStatus")
                                     (generation-started-time :target-type
                                      zoned-date-time :member-name
                                      "GenerationStartedTime")
                                     (generation-completion-time :target-type
                                      zoned-date-time :member-name
                                      "GenerationCompletionTime")
                                     (estimated-completion-time :target-type
                                      zoned-date-time :member-name
                                      "EstimatedCompletionTime"))
                                    (:shape-name "GenerationSummary"))

(smithy/sdk/shapes:define-list generation-summary-list :member
                               generation-summary)

(smithy/sdk/shapes:define-type generic-boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type generic-double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type generic-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-anomalies-request common-lisp:nil
                                ((monitor-arn :target-type generic-string
                                  :member-name "MonitorArn")
                                 (date-interval :target-type
                                  anomaly-date-interval :required common-lisp:t
                                  :member-name "DateInterval")
                                 (feedback :target-type anomaly-feedback-type
                                  :member-name "Feedback")
                                 (total-impact :target-type total-impact-filter
                                  :member-name "TotalImpact")
                                 (next-page-token :target-type next-page-token
                                  :member-name "NextPageToken")
                                 (max-results :target-type page-size
                                  :member-name "MaxResults"))
                                (:shape-name "GetAnomaliesRequest"))

(smithy/sdk/shapes:define-output get-anomalies-response common-lisp:nil
                                 ((anomalies :target-type anomalies :required
                                   common-lisp:t :member-name "Anomalies")
                                  (next-page-token :target-type next-page-token
                                   :member-name "NextPageToken"))
                                 (:shape-name "GetAnomaliesResponse"))

(smithy/sdk/shapes:define-input get-anomaly-monitors-request common-lisp:nil
                                ((monitor-arn-list :target-type values
                                  :member-name "MonitorArnList")
                                 (next-page-token :target-type next-page-token
                                  :member-name "NextPageToken")
                                 (max-results :target-type page-size
                                  :member-name "MaxResults"))
                                (:shape-name "GetAnomalyMonitorsRequest"))

(smithy/sdk/shapes:define-output get-anomaly-monitors-response common-lisp:nil
                                 ((anomaly-monitors :target-type
                                   anomaly-monitors :required common-lisp:t
                                   :member-name "AnomalyMonitors")
                                  (next-page-token :target-type next-page-token
                                   :member-name "NextPageToken"))
                                 (:shape-name "GetAnomalyMonitorsResponse"))

(smithy/sdk/shapes:define-input get-anomaly-subscriptions-request
                                common-lisp:nil
                                ((subscription-arn-list :target-type values
                                  :member-name "SubscriptionArnList")
                                 (monitor-arn :target-type generic-string
                                  :member-name "MonitorArn")
                                 (next-page-token :target-type next-page-token
                                  :member-name "NextPageToken")
                                 (max-results :target-type page-size
                                  :member-name "MaxResults"))
                                (:shape-name "GetAnomalySubscriptionsRequest"))

(smithy/sdk/shapes:define-output get-anomaly-subscriptions-response
                                 common-lisp:nil
                                 ((anomaly-subscriptions :target-type
                                   anomaly-subscriptions :required
                                   common-lisp:t :member-name
                                   "AnomalySubscriptions")
                                  (next-page-token :target-type next-page-token
                                   :member-name "NextPageToken"))
                                 (:shape-name
                                  "GetAnomalySubscriptionsResponse"))

(smithy/sdk/shapes:define-input get-approximate-usage-records-request
                                common-lisp:nil
                                ((granularity :target-type granularity
                                  :required common-lisp:t :member-name
                                  "Granularity")
                                 (services :target-type usage-services
                                  :member-name "Services")
                                 (approximation-dimension :target-type
                                  approximation-dimension :required
                                  common-lisp:t :member-name
                                  "ApproximationDimension"))
                                (:shape-name
                                 "GetApproximateUsageRecordsRequest"))

(smithy/sdk/shapes:define-output get-approximate-usage-records-response
                                 common-lisp:nil
                                 ((services :target-type
                                   approximate-usage-records-per-service
                                   :member-name "Services")
                                  (total-records :target-type non-negative-long
                                   :member-name "TotalRecords")
                                  (lookback-period :target-type date-interval
                                   :member-name "LookbackPeriod"))
                                 (:shape-name
                                  "GetApproximateUsageRecordsResponse"))

(smithy/sdk/shapes:define-input get-commitment-purchase-analysis-request
                                common-lisp:nil
                                ((analysis-id :target-type analysis-id
                                  :required common-lisp:t :member-name
                                  "AnalysisId"))
                                (:shape-name
                                 "GetCommitmentPurchaseAnalysisRequest"))

(smithy/sdk/shapes:define-output get-commitment-purchase-analysis-response
                                 common-lisp:nil
                                 ((estimated-completion-time :target-type
                                   zoned-date-time :required common-lisp:t
                                   :member-name "EstimatedCompletionTime")
                                  (analysis-completion-time :target-type
                                   zoned-date-time :member-name
                                   "AnalysisCompletionTime")
                                  (analysis-started-time :target-type
                                   zoned-date-time :required common-lisp:t
                                   :member-name "AnalysisStartedTime")
                                  (analysis-id :target-type analysis-id
                                   :required common-lisp:t :member-name
                                   "AnalysisId")
                                  (analysis-status :target-type analysis-status
                                   :required common-lisp:t :member-name
                                   "AnalysisStatus")
                                  (error-code :target-type error-code
                                   :member-name "ErrorCode")
                                  (analysis-details :target-type
                                   analysis-details :member-name
                                   "AnalysisDetails")
                                  (commitment-purchase-analysis-configuration
                                   :target-type
                                   commitment-purchase-analysis-configuration
                                   :required common-lisp:t :member-name
                                   "CommitmentPurchaseAnalysisConfiguration"))
                                 (:shape-name
                                  "GetCommitmentPurchaseAnalysisResponse"))

(smithy/sdk/shapes:define-input get-cost-and-usage-comparisons-request
                                common-lisp:nil
                                ((billing-view-arn :target-type
                                  billing-view-arn :member-name
                                  "BillingViewArn")
                                 (baseline-time-period :target-type
                                  date-interval :required common-lisp:t
                                  :member-name "BaselineTimePeriod")
                                 (comparison-time-period :target-type
                                  date-interval :required common-lisp:t
                                  :member-name "ComparisonTimePeriod")
                                 (metric-for-comparison :target-type
                                  metric-name :required common-lisp:t
                                  :member-name "MetricForComparison")
                                 (filter :target-type expression :member-name
                                  "Filter")
                                 (group-by :target-type group-definitions
                                  :member-name "GroupBy")
                                 (max-results :target-type
                                  cost-and-usage-comparisons-max-results
                                  :member-name "MaxResults")
                                 (next-page-token :target-type next-page-token
                                  :member-name "NextPageToken"))
                                (:shape-name
                                 "GetCostAndUsageComparisonsRequest"))

(smithy/sdk/shapes:define-output get-cost-and-usage-comparisons-response
                                 common-lisp:nil
                                 ((cost-and-usage-comparisons :target-type
                                   cost-and-usage-comparisons :member-name
                                   "CostAndUsageComparisons")
                                  (total-cost-and-usage :target-type
                                   comparison-metrics :member-name
                                   "TotalCostAndUsage")
                                  (next-page-token :target-type next-page-token
                                   :member-name "NextPageToken"))
                                 (:shape-name
                                  "GetCostAndUsageComparisonsResponse"))

(smithy/sdk/shapes:define-input get-cost-and-usage-request common-lisp:nil
                                ((time-period :target-type date-interval
                                  :required common-lisp:t :member-name
                                  "TimePeriod")
                                 (granularity :target-type granularity
                                  :required common-lisp:t :member-name
                                  "Granularity")
                                 (filter :target-type expression :member-name
                                  "Filter")
                                 (metrics :target-type metric-names :required
                                  common-lisp:t :member-name "Metrics")
                                 (group-by :target-type group-definitions
                                  :member-name "GroupBy")
                                 (billing-view-arn :target-type
                                  billing-view-arn :member-name
                                  "BillingViewArn")
                                 (next-page-token :target-type next-page-token
                                  :member-name "NextPageToken"))
                                (:shape-name "GetCostAndUsageRequest"))

(smithy/sdk/shapes:define-output get-cost-and-usage-response common-lisp:nil
                                 ((next-page-token :target-type next-page-token
                                   :member-name "NextPageToken")
                                  (group-definitions :target-type
                                   group-definitions :member-name
                                   "GroupDefinitions")
                                  (results-by-time :target-type results-by-time
                                   :member-name "ResultsByTime")
                                  (dimension-value-attributes :target-type
                                   dimension-values-with-attributes-list
                                   :member-name "DimensionValueAttributes"))
                                 (:shape-name "GetCostAndUsageResponse"))

(smithy/sdk/shapes:define-input get-cost-and-usage-with-resources-request
                                common-lisp:nil
                                ((time-period :target-type date-interval
                                  :required common-lisp:t :member-name
                                  "TimePeriod")
                                 (granularity :target-type granularity
                                  :required common-lisp:t :member-name
                                  "Granularity")
                                 (filter :target-type expression :required
                                  common-lisp:t :member-name "Filter")
                                 (metrics :target-type metric-names
                                  :member-name "Metrics")
                                 (group-by :target-type group-definitions
                                  :member-name "GroupBy")
                                 (billing-view-arn :target-type
                                  billing-view-arn :member-name
                                  "BillingViewArn")
                                 (next-page-token :target-type next-page-token
                                  :member-name "NextPageToken"))
                                (:shape-name
                                 "GetCostAndUsageWithResourcesRequest"))

(smithy/sdk/shapes:define-output get-cost-and-usage-with-resources-response
                                 common-lisp:nil
                                 ((next-page-token :target-type next-page-token
                                   :member-name "NextPageToken")
                                  (group-definitions :target-type
                                   group-definitions :member-name
                                   "GroupDefinitions")
                                  (results-by-time :target-type results-by-time
                                   :member-name "ResultsByTime")
                                  (dimension-value-attributes :target-type
                                   dimension-values-with-attributes-list
                                   :member-name "DimensionValueAttributes"))
                                 (:shape-name
                                  "GetCostAndUsageWithResourcesResponse"))

(smithy/sdk/shapes:define-input get-cost-categories-request common-lisp:nil
                                ((search-string :target-type search-string
                                  :member-name "SearchString")
                                 (time-period :target-type date-interval
                                  :required common-lisp:t :member-name
                                  "TimePeriod")
                                 (cost-category-name :target-type
                                  cost-category-name :member-name
                                  "CostCategoryName")
                                 (filter :target-type expression :member-name
                                  "Filter")
                                 (sort-by :target-type sort-definitions
                                  :member-name "SortBy")
                                 (billing-view-arn :target-type
                                  billing-view-arn :member-name
                                  "BillingViewArn")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-page-token :target-type next-page-token
                                  :member-name "NextPageToken"))
                                (:shape-name "GetCostCategoriesRequest"))

(smithy/sdk/shapes:define-output get-cost-categories-response common-lisp:nil
                                 ((next-page-token :target-type next-page-token
                                   :member-name "NextPageToken")
                                  (cost-category-names :target-type
                                   cost-category-names-list :member-name
                                   "CostCategoryNames")
                                  (cost-category-values :target-type
                                   cost-category-values-list :member-name
                                   "CostCategoryValues")
                                  (return-size :target-type page-size :required
                                   common-lisp:t :member-name "ReturnSize")
                                  (total-size :target-type page-size :required
                                   common-lisp:t :member-name "TotalSize"))
                                 (:shape-name "GetCostCategoriesResponse"))

(smithy/sdk/shapes:define-input get-cost-comparison-drivers-request
                                common-lisp:nil
                                ((billing-view-arn :target-type
                                  billing-view-arn :member-name
                                  "BillingViewArn")
                                 (baseline-time-period :target-type
                                  date-interval :required common-lisp:t
                                  :member-name "BaselineTimePeriod")
                                 (comparison-time-period :target-type
                                  date-interval :required common-lisp:t
                                  :member-name "ComparisonTimePeriod")
                                 (metric-for-comparison :target-type
                                  metric-name :required common-lisp:t
                                  :member-name "MetricForComparison")
                                 (filter :target-type expression :member-name
                                  "Filter")
                                 (group-by :target-type group-definitions
                                  :member-name "GroupBy")
                                 (max-results :target-type
                                  cost-comparison-drivers-max-results
                                  :member-name "MaxResults")
                                 (next-page-token :target-type next-page-token
                                  :member-name "NextPageToken"))
                                (:shape-name "GetCostComparisonDriversRequest"))

(smithy/sdk/shapes:define-output get-cost-comparison-drivers-response
                                 common-lisp:nil
                                 ((cost-comparison-drivers :target-type
                                   cost-comparison-drivers :member-name
                                   "CostComparisonDrivers")
                                  (next-page-token :target-type next-page-token
                                   :member-name "NextPageToken"))
                                 (:shape-name
                                  "GetCostComparisonDriversResponse"))

(smithy/sdk/shapes:define-input get-cost-forecast-request common-lisp:nil
                                ((time-period :target-type date-interval
                                  :required common-lisp:t :member-name
                                  "TimePeriod")
                                 (metric :target-type metric :required
                                  common-lisp:t :member-name "Metric")
                                 (granularity :target-type granularity
                                  :required common-lisp:t :member-name
                                  "Granularity")
                                 (filter :target-type expression :member-name
                                  "Filter")
                                 (billing-view-arn :target-type
                                  billing-view-arn :member-name
                                  "BillingViewArn")
                                 (prediction-interval-level :target-type
                                  prediction-interval-level :member-name
                                  "PredictionIntervalLevel"))
                                (:shape-name "GetCostForecastRequest"))

(smithy/sdk/shapes:define-output get-cost-forecast-response common-lisp:nil
                                 ((total :target-type metric-value :member-name
                                   "Total")
                                  (forecast-results-by-time :target-type
                                   forecast-results-by-time :member-name
                                   "ForecastResultsByTime"))
                                 (:shape-name "GetCostForecastResponse"))

(smithy/sdk/shapes:define-input get-dimension-values-request common-lisp:nil
                                ((search-string :target-type search-string
                                  :member-name "SearchString")
                                 (time-period :target-type date-interval
                                  :required common-lisp:t :member-name
                                  "TimePeriod")
                                 (dimension :target-type dimension :required
                                  common-lisp:t :member-name "Dimension")
                                 (context :target-type context :member-name
                                  "Context")
                                 (filter :target-type expression :member-name
                                  "Filter")
                                 (sort-by :target-type sort-definitions
                                  :member-name "SortBy")
                                 (billing-view-arn :target-type
                                  billing-view-arn :member-name
                                  "BillingViewArn")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-page-token :target-type next-page-token
                                  :member-name "NextPageToken"))
                                (:shape-name "GetDimensionValuesRequest"))

(smithy/sdk/shapes:define-output get-dimension-values-response common-lisp:nil
                                 ((dimension-values :target-type
                                   dimension-values-with-attributes-list
                                   :required common-lisp:t :member-name
                                   "DimensionValues")
                                  (return-size :target-type page-size :required
                                   common-lisp:t :member-name "ReturnSize")
                                  (total-size :target-type page-size :required
                                   common-lisp:t :member-name "TotalSize")
                                  (next-page-token :target-type next-page-token
                                   :member-name "NextPageToken"))
                                 (:shape-name "GetDimensionValuesResponse"))

(smithy/sdk/shapes:define-input get-reservation-coverage-request
                                common-lisp:nil
                                ((time-period :target-type date-interval
                                  :required common-lisp:t :member-name
                                  "TimePeriod")
                                 (group-by :target-type group-definitions
                                  :member-name "GroupBy")
                                 (granularity :target-type granularity
                                  :member-name "Granularity")
                                 (filter :target-type expression :member-name
                                  "Filter")
                                 (metrics :target-type metric-names
                                  :member-name "Metrics")
                                 (next-page-token :target-type next-page-token
                                  :member-name "NextPageToken")
                                 (sort-by :target-type sort-definition
                                  :member-name "SortBy")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "GetReservationCoverageRequest"))

(smithy/sdk/shapes:define-output get-reservation-coverage-response
                                 common-lisp:nil
                                 ((coverages-by-time :target-type
                                   coverages-by-time :required common-lisp:t
                                   :member-name "CoveragesByTime")
                                  (total :target-type coverage :member-name
                                   "Total")
                                  (next-page-token :target-type next-page-token
                                   :member-name "NextPageToken"))
                                 (:shape-name "GetReservationCoverageResponse"))

(smithy/sdk/shapes:define-input get-reservation-purchase-recommendation-request
                                common-lisp:nil
                                ((account-id :target-type generic-string
                                  :member-name "AccountId")
                                 (service :target-type generic-string :required
                                  common-lisp:t :member-name "Service")
                                 (filter :target-type expression :member-name
                                  "Filter")
                                 (account-scope :target-type account-scope
                                  :member-name "AccountScope")
                                 (lookback-period-in-days :target-type
                                  lookback-period-in-days :member-name
                                  "LookbackPeriodInDays")
                                 (term-in-years :target-type term-in-years
                                  :member-name "TermInYears")
                                 (payment-option :target-type payment-option
                                  :member-name "PaymentOption")
                                 (service-specification :target-type
                                  service-specification :member-name
                                  "ServiceSpecification")
                                 (page-size :target-type non-negative-integer
                                  :member-name "PageSize")
                                 (next-page-token :target-type next-page-token
                                  :member-name "NextPageToken"))
                                (:shape-name
                                 "GetReservationPurchaseRecommendationRequest"))

(smithy/sdk/shapes:define-output
 get-reservation-purchase-recommendation-response common-lisp:nil
 ((metadata :target-type reservation-purchase-recommendation-metadata
   :member-name "Metadata")
  (recommendations :target-type reservation-purchase-recommendations
   :member-name "Recommendations")
  (next-page-token :target-type next-page-token :member-name "NextPageToken"))
 (:shape-name "GetReservationPurchaseRecommendationResponse"))

(smithy/sdk/shapes:define-input get-reservation-utilization-request
                                common-lisp:nil
                                ((time-period :target-type date-interval
                                  :required common-lisp:t :member-name
                                  "TimePeriod")
                                 (group-by :target-type group-definitions
                                  :member-name "GroupBy")
                                 (granularity :target-type granularity
                                  :member-name "Granularity")
                                 (filter :target-type expression :member-name
                                  "Filter")
                                 (sort-by :target-type sort-definition
                                  :member-name "SortBy")
                                 (next-page-token :target-type next-page-token
                                  :member-name "NextPageToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "GetReservationUtilizationRequest"))

(smithy/sdk/shapes:define-output get-reservation-utilization-response
                                 common-lisp:nil
                                 ((utilizations-by-time :target-type
                                   utilizations-by-time :required common-lisp:t
                                   :member-name "UtilizationsByTime")
                                  (total :target-type reservation-aggregates
                                   :member-name "Total")
                                  (next-page-token :target-type next-page-token
                                   :member-name "NextPageToken"))
                                 (:shape-name
                                  "GetReservationUtilizationResponse"))

(smithy/sdk/shapes:define-input get-rightsizing-recommendation-request
                                common-lisp:nil
                                ((filter :target-type expression :member-name
                                  "Filter")
                                 (configuration :target-type
                                  rightsizing-recommendation-configuration
                                  :member-name "Configuration")
                                 (service :target-type generic-string :required
                                  common-lisp:t :member-name "Service")
                                 (page-size :target-type non-negative-integer
                                  :member-name "PageSize")
                                 (next-page-token :target-type next-page-token
                                  :member-name "NextPageToken"))
                                (:shape-name
                                 "GetRightsizingRecommendationRequest"))

(smithy/sdk/shapes:define-output get-rightsizing-recommendation-response
                                 common-lisp:nil
                                 ((metadata :target-type
                                   rightsizing-recommendation-metadata
                                   :member-name "Metadata")
                                  (summary :target-type
                                   rightsizing-recommendation-summary
                                   :member-name "Summary")
                                  (rightsizing-recommendations :target-type
                                   rightsizing-recommendation-list :member-name
                                   "RightsizingRecommendations")
                                  (next-page-token :target-type next-page-token
                                   :member-name "NextPageToken")
                                  (configuration :target-type
                                   rightsizing-recommendation-configuration
                                   :member-name "Configuration"))
                                 (:shape-name
                                  "GetRightsizingRecommendationResponse"))

(smithy/sdk/shapes:define-input
 get-savings-plan-purchase-recommendation-details-request common-lisp:nil
 ((recommendation-detail-id :target-type recommendation-detail-id :required
   common-lisp:t :member-name "RecommendationDetailId"))
 (:shape-name "GetSavingsPlanPurchaseRecommendationDetailsRequest"))

(smithy/sdk/shapes:define-output
 get-savings-plan-purchase-recommendation-details-response common-lisp:nil
 ((recommendation-detail-id :target-type recommendation-detail-id :member-name
   "RecommendationDetailId")
  (recommendation-detail-data :target-type recommendation-detail-data
   :member-name "RecommendationDetailData"))
 (:shape-name "GetSavingsPlanPurchaseRecommendationDetailsResponse"))

(smithy/sdk/shapes:define-input get-savings-plans-coverage-request
                                common-lisp:nil
                                ((time-period :target-type date-interval
                                  :required common-lisp:t :member-name
                                  "TimePeriod")
                                 (group-by :target-type group-definitions
                                  :member-name "GroupBy")
                                 (granularity :target-type granularity
                                  :member-name "Granularity")
                                 (filter :target-type expression :member-name
                                  "Filter")
                                 (metrics :target-type metric-names
                                  :member-name "Metrics")
                                 (next-token :target-type next-page-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (sort-by :target-type sort-definition
                                  :member-name "SortBy"))
                                (:shape-name "GetSavingsPlansCoverageRequest"))

(smithy/sdk/shapes:define-output get-savings-plans-coverage-response
                                 common-lisp:nil
                                 ((savings-plans-coverages :target-type
                                   savings-plans-coverages :required
                                   common-lisp:t :member-name
                                   "SavingsPlansCoverages")
                                  (next-token :target-type next-page-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "GetSavingsPlansCoverageResponse"))

(smithy/sdk/shapes:define-input
 get-savings-plans-purchase-recommendation-request common-lisp:nil
 ((savings-plans-type :target-type supported-savings-plans-type :required
   common-lisp:t :member-name "SavingsPlansType")
  (term-in-years :target-type term-in-years :required common-lisp:t
   :member-name "TermInYears")
  (payment-option :target-type payment-option :required common-lisp:t
   :member-name "PaymentOption")
  (account-scope :target-type account-scope :member-name "AccountScope")
  (next-page-token :target-type next-page-token :member-name "NextPageToken")
  (page-size :target-type non-negative-integer :member-name "PageSize")
  (lookback-period-in-days :target-type lookback-period-in-days :required
   common-lisp:t :member-name "LookbackPeriodInDays")
  (filter :target-type expression :member-name "Filter"))
 (:shape-name "GetSavingsPlansPurchaseRecommendationRequest"))

(smithy/sdk/shapes:define-output
 get-savings-plans-purchase-recommendation-response common-lisp:nil
 ((metadata :target-type savings-plans-purchase-recommendation-metadata
   :member-name "Metadata")
  (savings-plans-purchase-recommendation :target-type
   savings-plans-purchase-recommendation :member-name
   "SavingsPlansPurchaseRecommendation")
  (next-page-token :target-type next-page-token :member-name "NextPageToken"))
 (:shape-name "GetSavingsPlansPurchaseRecommendationResponse"))

(smithy/sdk/shapes:define-input get-savings-plans-utilization-details-request
                                common-lisp:nil
                                ((time-period :target-type date-interval
                                  :required common-lisp:t :member-name
                                  "TimePeriod")
                                 (filter :target-type expression :member-name
                                  "Filter")
                                 (data-type :target-type
                                  savings-plans-data-types :member-name
                                  "DataType")
                                 (next-token :target-type next-page-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (sort-by :target-type sort-definition
                                  :member-name "SortBy"))
                                (:shape-name
                                 "GetSavingsPlansUtilizationDetailsRequest"))

(smithy/sdk/shapes:define-output get-savings-plans-utilization-details-response
                                 common-lisp:nil
                                 ((savings-plans-utilization-details
                                   :target-type
                                   savings-plans-utilization-details :required
                                   common-lisp:t :member-name
                                   "SavingsPlansUtilizationDetails")
                                  (total :target-type
                                   savings-plans-utilization-aggregates
                                   :member-name "Total")
                                  (time-period :target-type date-interval
                                   :required common-lisp:t :member-name
                                   "TimePeriod")
                                  (next-token :target-type next-page-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "GetSavingsPlansUtilizationDetailsResponse"))

(smithy/sdk/shapes:define-input get-savings-plans-utilization-request
                                common-lisp:nil
                                ((time-period :target-type date-interval
                                  :required common-lisp:t :member-name
                                  "TimePeriod")
                                 (granularity :target-type granularity
                                  :member-name "Granularity")
                                 (filter :target-type expression :member-name
                                  "Filter")
                                 (sort-by :target-type sort-definition
                                  :member-name "SortBy"))
                                (:shape-name
                                 "GetSavingsPlansUtilizationRequest"))

(smithy/sdk/shapes:define-output get-savings-plans-utilization-response
                                 common-lisp:nil
                                 ((savings-plans-utilizations-by-time
                                   :target-type
                                   savings-plans-utilizations-by-time
                                   :member-name
                                   "SavingsPlansUtilizationsByTime")
                                  (total :target-type
                                   savings-plans-utilization-aggregates
                                   :required common-lisp:t :member-name
                                   "Total"))
                                 (:shape-name
                                  "GetSavingsPlansUtilizationResponse"))

(smithy/sdk/shapes:define-input get-tags-request common-lisp:nil
                                ((search-string :target-type search-string
                                  :member-name "SearchString")
                                 (time-period :target-type date-interval
                                  :required common-lisp:t :member-name
                                  "TimePeriod")
                                 (tag-key :target-type tag-key :member-name
                                  "TagKey")
                                 (filter :target-type expression :member-name
                                  "Filter")
                                 (sort-by :target-type sort-definitions
                                  :member-name "SortBy")
                                 (billing-view-arn :target-type
                                  billing-view-arn :member-name
                                  "BillingViewArn")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-page-token :target-type next-page-token
                                  :member-name "NextPageToken"))
                                (:shape-name "GetTagsRequest"))

(smithy/sdk/shapes:define-output get-tags-response common-lisp:nil
                                 ((next-page-token :target-type next-page-token
                                   :member-name "NextPageToken")
                                  (tags :target-type tag-list :required
                                   common-lisp:t :member-name "Tags")
                                  (return-size :target-type page-size :required
                                   common-lisp:t :member-name "ReturnSize")
                                  (total-size :target-type page-size :required
                                   common-lisp:t :member-name "TotalSize"))
                                 (:shape-name "GetTagsResponse"))

(smithy/sdk/shapes:define-input get-usage-forecast-request common-lisp:nil
                                ((time-period :target-type date-interval
                                  :required common-lisp:t :member-name
                                  "TimePeriod")
                                 (metric :target-type metric :required
                                  common-lisp:t :member-name "Metric")
                                 (granularity :target-type granularity
                                  :required common-lisp:t :member-name
                                  "Granularity")
                                 (filter :target-type expression :member-name
                                  "Filter")
                                 (billing-view-arn :target-type
                                  billing-view-arn :member-name
                                  "BillingViewArn")
                                 (prediction-interval-level :target-type
                                  prediction-interval-level :member-name
                                  "PredictionIntervalLevel"))
                                (:shape-name "GetUsageForecastRequest"))

(smithy/sdk/shapes:define-output get-usage-forecast-response common-lisp:nil
                                 ((total :target-type metric-value :member-name
                                   "Total")
                                  (forecast-results-by-time :target-type
                                   forecast-results-by-time :member-name
                                   "ForecastResultsByTime"))
                                 (:shape-name "GetUsageForecastResponse"))

(smithy/sdk/shapes:define-enum granularity
    common-lisp:nil
  (:daily "DAILY")
  (:monthly "MONTHLY")
  (:hourly "HOURLY"))

(smithy/sdk/shapes:define-structure group common-lisp:nil
                                    ((keys :target-type keys :member-name
                                      "Keys")
                                     (metrics :target-type metrics :member-name
                                      "Metrics"))
                                    (:shape-name "Group"))

(smithy/sdk/shapes:define-structure group-definition common-lisp:nil
                                    ((type :target-type group-definition-type
                                      :member-name "Type")
                                     (key :target-type group-definition-key
                                      :member-name "Key"))
                                    (:shape-name "GroupDefinition"))

(smithy/sdk/shapes:define-type group-definition-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum group-definition-type
    common-lisp:nil
  (:dimension "DIMENSION")
  (:tag "TAG")
  (:cost-category "COST_CATEGORY"))

(smithy/sdk/shapes:define-list group-definitions :member group-definition)

(smithy/sdk/shapes:define-list groups :member group)

(smithy/sdk/shapes:define-structure impact common-lisp:nil
                                    ((max-impact :target-type generic-double
                                      :required common-lisp:t :member-name
                                      "MaxImpact")
                                     (total-impact :target-type generic-double
                                      :member-name "TotalImpact")
                                     (total-actual-spend :target-type
                                      nullable-non-negative-double :member-name
                                      "TotalActualSpend")
                                     (total-expected-spend :target-type
                                      nullable-non-negative-double :member-name
                                      "TotalExpectedSpend")
                                     (total-impact-percentage :target-type
                                      nullable-non-negative-double :member-name
                                      "TotalImpactPercentage"))
                                    (:shape-name "Impact"))

(smithy/sdk/shapes:define-structure instance-details common-lisp:nil
                                    ((ec2instance-details :target-type
                                      ec2instance-details :member-name
                                      "EC2InstanceDetails")
                                     (rdsinstance-details :target-type
                                      rdsinstance-details :member-name
                                      "RDSInstanceDetails")
                                     (redshift-instance-details :target-type
                                      redshift-instance-details :member-name
                                      "RedshiftInstanceDetails")
                                     (elasti-cache-instance-details
                                      :target-type
                                      elasti-cache-instance-details
                                      :member-name
                                      "ElastiCacheInstanceDetails")
                                     (esinstance-details :target-type
                                      esinstance-details :member-name
                                      "ESInstanceDetails")
                                     (memory-dbinstance-details :target-type
                                      memory-dbinstance-details :member-name
                                      "MemoryDBInstanceDetails"))
                                    (:shape-name "InstanceDetails"))

(smithy/sdk/shapes:define-error invalid-next-token-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidNextTokenException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list keys :member key)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input list-commitment-purchase-analyses-request
                                common-lisp:nil
                                ((analysis-status :target-type analysis-status
                                  :member-name "AnalysisStatus")
                                 (next-page-token :target-type next-page-token
                                  :member-name "NextPageToken")
                                 (page-size :target-type non-negative-integer
                                  :member-name "PageSize")
                                 (analysis-ids :target-type analysis-ids
                                  :member-name "AnalysisIds"))
                                (:shape-name
                                 "ListCommitmentPurchaseAnalysesRequest"))

(smithy/sdk/shapes:define-output list-commitment-purchase-analyses-response
                                 common-lisp:nil
                                 ((analysis-summary-list :target-type
                                   analysis-summary-list :member-name
                                   "AnalysisSummaryList")
                                  (next-page-token :target-type next-page-token
                                   :member-name "NextPageToken"))
                                 (:shape-name
                                  "ListCommitmentPurchaseAnalysesResponse"))

(smithy/sdk/shapes:define-input
 list-cost-allocation-tag-backfill-history-request common-lisp:nil
 ((next-token :target-type next-page-token :member-name "NextToken")
  (max-results :target-type cost-allocation-tags-max-results :member-name
   "MaxResults"))
 (:shape-name "ListCostAllocationTagBackfillHistoryRequest"))

(smithy/sdk/shapes:define-output
 list-cost-allocation-tag-backfill-history-response common-lisp:nil
 ((backfill-requests :target-type cost-allocation-tag-backfill-request-list
   :member-name "BackfillRequests")
  (next-token :target-type next-page-token :member-name "NextToken"))
 (:shape-name "ListCostAllocationTagBackfillHistoryResponse"))

(smithy/sdk/shapes:define-input list-cost-allocation-tags-request
                                common-lisp:nil
                                ((status :target-type
                                  cost-allocation-tag-status :member-name
                                  "Status")
                                 (tag-keys :target-type
                                  cost-allocation-tag-key-list :member-name
                                  "TagKeys")
                                 (type :target-type cost-allocation-tag-type
                                  :member-name "Type")
                                 (next-token :target-type next-page-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  cost-allocation-tags-max-results :member-name
                                  "MaxResults"))
                                (:shape-name "ListCostAllocationTagsRequest"))

(smithy/sdk/shapes:define-output list-cost-allocation-tags-response
                                 common-lisp:nil
                                 ((cost-allocation-tags :target-type
                                   cost-allocation-tag-list :member-name
                                   "CostAllocationTags")
                                  (next-token :target-type next-page-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListCostAllocationTagsResponse"))

(smithy/sdk/shapes:define-input list-cost-category-definitions-request
                                common-lisp:nil
                                ((effective-on :target-type zoned-date-time
                                  :member-name "EffectiveOn")
                                 (next-token :target-type next-page-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  cost-category-max-results :member-name
                                  "MaxResults"))
                                (:shape-name
                                 "ListCostCategoryDefinitionsRequest"))

(smithy/sdk/shapes:define-output list-cost-category-definitions-response
                                 common-lisp:nil
                                 ((cost-category-references :target-type
                                   cost-category-references-list :member-name
                                   "CostCategoryReferences")
                                  (next-token :target-type next-page-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListCostCategoryDefinitionsResponse"))

(smithy/sdk/shapes:define-input
 list-savings-plans-purchase-recommendation-generation-request common-lisp:nil
 ((generation-status :target-type generation-status :member-name
   "GenerationStatus")
  (recommendation-ids :target-type recommendation-id-list :member-name
   "RecommendationIds")
  (page-size :target-type non-negative-integer :member-name "PageSize")
  (next-page-token :target-type next-page-token :member-name "NextPageToken"))
 (:shape-name "ListSavingsPlansPurchaseRecommendationGenerationRequest"))

(smithy/sdk/shapes:define-output
 list-savings-plans-purchase-recommendation-generation-response common-lisp:nil
 ((generation-summary-list :target-type generation-summary-list :member-name
   "GenerationSummaryList")
  (next-page-token :target-type next-page-token :member-name "NextPageToken"))
 (:shape-name "ListSavingsPlansPurchaseRecommendationGenerationResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((resource-tags :target-type resource-tag-list
                                   :member-name "ResourceTags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-enum lookback-period-in-days
    common-lisp:nil
  (:seven-days "SEVEN_DAYS")
  (:thirty-days "THIRTY_DAYS")
  (:sixty-days "SIXTY_DAYS"))

(smithy/sdk/shapes:define-enum match-option
    common-lisp:nil
  (:equals "EQUALS")
  (:absent "ABSENT")
  (:starts-with "STARTS_WITH")
  (:ends-with "ENDS_WITH")
  (:contains "CONTAINS")
  (:case-sensitive "CASE_SENSITIVE")
  (:case-insensitive "CASE_INSENSITIVE")
  (:greater-than-or-equal "GREATER_THAN_OR_EQUAL"))

(smithy/sdk/shapes:define-list match-options :member match-option)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure memory-dbinstance-details common-lisp:nil
                                    ((family :target-type generic-string
                                      :member-name "Family")
                                     (node-type :target-type generic-string
                                      :member-name "NodeType")
                                     (region :target-type generic-string
                                      :member-name "Region")
                                     (current-generation :target-type
                                      generic-boolean :member-name
                                      "CurrentGeneration")
                                     (size-flex-eligible :target-type
                                      generic-boolean :member-name
                                      "SizeFlexEligible"))
                                    (:shape-name "MemoryDBInstanceDetails"))

(smithy/sdk/shapes:define-enum metric
    common-lisp:nil
  (:blended-cost "BLENDED_COST")
  (:unblended-cost "UNBLENDED_COST")
  (:amortized-cost "AMORTIZED_COST")
  (:net-unblended-cost "NET_UNBLENDED_COST")
  (:net-amortized-cost "NET_AMORTIZED_COST")
  (:usage-quantity "USAGE_QUANTITY")
  (:normalized-usage-amount "NORMALIZED_USAGE_AMOUNT"))

(smithy/sdk/shapes:define-type metric-amount smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type metric-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list metric-names :member metric-name)

(smithy/sdk/shapes:define-type metric-unit smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure metric-value common-lisp:nil
                                    ((amount :target-type metric-amount
                                      :member-name "Amount")
                                     (unit :target-type metric-unit
                                      :member-name "Unit"))
                                    (:shape-name "MetricValue"))

(smithy/sdk/shapes:define-map metrics :key metric-name :value metric-value)

(smithy/sdk/shapes:define-list metrics-over-lookback-period :member
                               recommendation-detail-hourly-metrics)

(smithy/sdk/shapes:define-structure modify-recommendation-detail
                                    common-lisp:nil
                                    ((target-instances :target-type
                                      target-instances-list :member-name
                                      "TargetInstances"))
                                    (:shape-name "ModifyRecommendationDetail"))

(smithy/sdk/shapes:define-list monitor-arn-list :member arn)

(smithy/sdk/shapes:define-enum monitor-dimension
    common-lisp:nil
  (:service "SERVICE"))

(smithy/sdk/shapes:define-enum monitor-type
    common-lisp:nil
  (:dimensional "DIMENSIONAL")
  (:custom "CUSTOM"))

(smithy/sdk/shapes:define-type net-risavings smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure network-resource-utilization
                                    common-lisp:nil
                                    ((network-in-bytes-per-second :target-type
                                      generic-string :member-name
                                      "NetworkInBytesPerSecond")
                                     (network-out-bytes-per-second :target-type
                                      generic-string :member-name
                                      "NetworkOutBytesPerSecond")
                                     (network-packets-in-per-second
                                      :target-type generic-string :member-name
                                      "NetworkPacketsInPerSecond")
                                     (network-packets-out-per-second
                                      :target-type generic-string :member-name
                                      "NetworkPacketsOutPerSecond"))
                                    (:shape-name "NetworkResourceUtilization"))

(smithy/sdk/shapes:define-type next-page-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-negative-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type non-negative-long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type nullable-non-negative-double
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-enum numeric-operator
    common-lisp:nil
  (:equal "EQUAL")
  (:greater-than-or-equal "GREATER_THAN_OR_EQUAL")
  (:less-than-or-equal "LESS_THAN_OR_EQUAL")
  (:greater-than "GREATER_THAN")
  (:less-than "LESS_THAN")
  (:between "BETWEEN"))

(smithy/sdk/shapes:define-enum offering-class
    common-lisp:nil
  (:standard "STANDARD")
  (:convertible "CONVERTIBLE"))

(smithy/sdk/shapes:define-type on-demand-cost smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type on-demand-cost-of-rihours-used
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type on-demand-hours smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type on-demand-normalized-units
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type page-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum payment-option
    common-lisp:nil
  (:no-upfront "NO_UPFRONT")
  (:partial-upfront "PARTIAL_UPFRONT")
  (:all-upfront "ALL_UPFRONT")
  (:light-utilization "LIGHT_UTILIZATION")
  (:medium-utilization "MEDIUM_UTILIZATION")
  (:heavy-utilization "HEAVY_UTILIZATION"))

(smithy/sdk/shapes:define-enum platform-difference
    common-lisp:nil
  (:hypervisor "HYPERVISOR")
  (:network-interface "NETWORK_INTERFACE")
  (:storage-interface "STORAGE_INTERFACE")
  (:instance-store-availability "INSTANCE_STORE_AVAILABILITY")
  (:virtualization-type "VIRTUALIZATION_TYPE"))

(smithy/sdk/shapes:define-list platform-differences :member platform-difference)

(smithy/sdk/shapes:define-type prediction-interval-level
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input provide-anomaly-feedback-request
                                common-lisp:nil
                                ((anomaly-id :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "AnomalyId")
                                 (feedback :target-type anomaly-feedback-type
                                  :required common-lisp:t :member-name
                                  "Feedback"))
                                (:shape-name "ProvideAnomalyFeedbackRequest"))

(smithy/sdk/shapes:define-output provide-anomaly-feedback-response
                                 common-lisp:nil
                                 ((anomaly-id :target-type generic-string
                                   :required common-lisp:t :member-name
                                   "AnomalyId"))
                                 (:shape-name "ProvideAnomalyFeedbackResponse"))

(smithy/sdk/shapes:define-type purchased-hours smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type purchased-units smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure rdsinstance-details common-lisp:nil
                                    ((family :target-type generic-string
                                      :member-name "Family")
                                     (instance-type :target-type generic-string
                                      :member-name "InstanceType")
                                     (region :target-type generic-string
                                      :member-name "Region")
                                     (database-engine :target-type
                                      generic-string :member-name
                                      "DatabaseEngine")
                                     (database-edition :target-type
                                      generic-string :member-name
                                      "DatabaseEdition")
                                     (deployment-option :target-type
                                      generic-string :member-name
                                      "DeploymentOption")
                                     (license-model :target-type generic-string
                                      :member-name "LicenseModel")
                                     (current-generation :target-type
                                      generic-boolean :member-name
                                      "CurrentGeneration")
                                     (size-flex-eligible :target-type
                                      generic-boolean :member-name
                                      "SizeFlexEligible"))
                                    (:shape-name "RDSInstanceDetails"))

(smithy/sdk/shapes:define-type ricost-for-unused-hours
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type realized-savings smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure recommendation-detail-data common-lisp:nil
                                    ((account-scope :target-type account-scope
                                      :member-name "AccountScope")
                                     (lookback-period-in-days :target-type
                                      lookback-period-in-days :member-name
                                      "LookbackPeriodInDays")
                                     (savings-plans-type :target-type
                                      supported-savings-plans-type :member-name
                                      "SavingsPlansType")
                                     (term-in-years :target-type term-in-years
                                      :member-name "TermInYears")
                                     (payment-option :target-type
                                      payment-option :member-name
                                      "PaymentOption")
                                     (account-id :target-type generic-string
                                      :member-name "AccountId")
                                     (currency-code :target-type generic-string
                                      :member-name "CurrencyCode")
                                     (instance-family :target-type
                                      generic-string :member-name
                                      "InstanceFamily")
                                     (region :target-type generic-string
                                      :member-name "Region")
                                     (offering-id :target-type generic-string
                                      :member-name "OfferingId")
                                     (generation-timestamp :target-type
                                      zoned-date-time :member-name
                                      "GenerationTimestamp")
                                     (latest-usage-timestamp :target-type
                                      zoned-date-time :member-name
                                      "LatestUsageTimestamp")
                                     (current-average-hourly-on-demand-spend
                                      :target-type generic-string :member-name
                                      "CurrentAverageHourlyOnDemandSpend")
                                     (current-maximum-hourly-on-demand-spend
                                      :target-type generic-string :member-name
                                      "CurrentMaximumHourlyOnDemandSpend")
                                     (current-minimum-hourly-on-demand-spend
                                      :target-type generic-string :member-name
                                      "CurrentMinimumHourlyOnDemandSpend")
                                     (estimated-average-utilization
                                      :target-type generic-string :member-name
                                      "EstimatedAverageUtilization")
                                     (estimated-monthly-savings-amount
                                      :target-type generic-string :member-name
                                      "EstimatedMonthlySavingsAmount")
                                     (estimated-on-demand-cost :target-type
                                      generic-string :member-name
                                      "EstimatedOnDemandCost")
                                     (estimated-on-demand-cost-with-current-commitment
                                      :target-type generic-string :member-name
                                      "EstimatedOnDemandCostWithCurrentCommitment")
                                     (estimated-roi :target-type generic-string
                                      :member-name "EstimatedROI")
                                     (estimated-spcost :target-type
                                      generic-string :member-name
                                      "EstimatedSPCost")
                                     (estimated-savings-amount :target-type
                                      generic-string :member-name
                                      "EstimatedSavingsAmount")
                                     (estimated-savings-percentage :target-type
                                      generic-string :member-name
                                      "EstimatedSavingsPercentage")
                                     (existing-hourly-commitment :target-type
                                      generic-string :member-name
                                      "ExistingHourlyCommitment")
                                     (hourly-commitment-to-purchase
                                      :target-type generic-string :member-name
                                      "HourlyCommitmentToPurchase")
                                     (upfront-cost :target-type generic-string
                                      :member-name "UpfrontCost")
                                     (current-average-coverage :target-type
                                      generic-string :member-name
                                      "CurrentAverageCoverage")
                                     (estimated-average-coverage :target-type
                                      generic-string :member-name
                                      "EstimatedAverageCoverage")
                                     (metrics-over-lookback-period :target-type
                                      metrics-over-lookback-period :member-name
                                      "MetricsOverLookbackPeriod"))
                                    (:shape-name "RecommendationDetailData"))

(smithy/sdk/shapes:define-structure recommendation-detail-hourly-metrics
                                    common-lisp:nil
                                    ((start-time :target-type zoned-date-time
                                      :member-name "StartTime")
                                     (estimated-on-demand-cost :target-type
                                      generic-string :member-name
                                      "EstimatedOnDemandCost")
                                     (current-coverage :target-type
                                      generic-string :member-name
                                      "CurrentCoverage")
                                     (estimated-coverage :target-type
                                      generic-string :member-name
                                      "EstimatedCoverage")
                                     (estimated-new-commitment-utilization
                                      :target-type generic-string :member-name
                                      "EstimatedNewCommitmentUtilization"))
                                    (:shape-name
                                     "RecommendationDetailHourlyMetrics"))

(smithy/sdk/shapes:define-type recommendation-detail-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type recommendation-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list recommendation-id-list :member recommendation-id)

(smithy/sdk/shapes:define-enum recommendation-target
    common-lisp:nil
  (:same-instance-family "SAME_INSTANCE_FAMILY")
  (:cross-instance-family "CROSS_INSTANCE_FAMILY"))

(smithy/sdk/shapes:define-structure redshift-instance-details common-lisp:nil
                                    ((family :target-type generic-string
                                      :member-name "Family")
                                     (node-type :target-type generic-string
                                      :member-name "NodeType")
                                     (region :target-type generic-string
                                      :member-name "Region")
                                     (current-generation :target-type
                                      generic-boolean :member-name
                                      "CurrentGeneration")
                                     (size-flex-eligible :target-type
                                      generic-boolean :member-name
                                      "SizeFlexEligible"))
                                    (:shape-name "RedshiftInstanceDetails"))

(smithy/sdk/shapes:define-error request-changed-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "RequestChangedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure reservation-aggregates common-lisp:nil
                                    ((utilization-percentage :target-type
                                      utilization-percentage :member-name
                                      "UtilizationPercentage")
                                     (utilization-percentage-in-units
                                      :target-type
                                      utilization-percentage-in-units
                                      :member-name
                                      "UtilizationPercentageInUnits")
                                     (purchased-hours :target-type
                                      purchased-hours :member-name
                                      "PurchasedHours")
                                     (purchased-units :target-type
                                      purchased-units :member-name
                                      "PurchasedUnits")
                                     (total-actual-hours :target-type
                                      total-actual-hours :member-name
                                      "TotalActualHours")
                                     (total-actual-units :target-type
                                      total-actual-units :member-name
                                      "TotalActualUnits")
                                     (unused-hours :target-type unused-hours
                                      :member-name "UnusedHours")
                                     (unused-units :target-type unused-units
                                      :member-name "UnusedUnits")
                                     (on-demand-cost-of-rihours-used
                                      :target-type
                                      on-demand-cost-of-rihours-used
                                      :member-name "OnDemandCostOfRIHoursUsed")
                                     (net-risavings :target-type net-risavings
                                      :member-name "NetRISavings")
                                     (total-potential-risavings :target-type
                                      total-potential-risavings :member-name
                                      "TotalPotentialRISavings")
                                     (amortized-upfront-fee :target-type
                                      amortized-upfront-fee :member-name
                                      "AmortizedUpfrontFee")
                                     (amortized-recurring-fee :target-type
                                      amortized-recurring-fee :member-name
                                      "AmortizedRecurringFee")
                                     (total-amortized-fee :target-type
                                      total-amortized-fee :member-name
                                      "TotalAmortizedFee")
                                     (ricost-for-unused-hours :target-type
                                      ricost-for-unused-hours :member-name
                                      "RICostForUnusedHours")
                                     (realized-savings :target-type
                                      realized-savings :member-name
                                      "RealizedSavings")
                                     (unrealized-savings :target-type
                                      unrealized-savings :member-name
                                      "UnrealizedSavings"))
                                    (:shape-name "ReservationAggregates"))

(smithy/sdk/shapes:define-structure reservation-coverage-group common-lisp:nil
                                    ((attributes :target-type attributes
                                      :member-name "Attributes")
                                     (coverage :target-type coverage
                                      :member-name "Coverage"))
                                    (:shape-name "ReservationCoverageGroup"))

(smithy/sdk/shapes:define-list reservation-coverage-groups :member
                               reservation-coverage-group)

(smithy/sdk/shapes:define-type reservation-group-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type reservation-group-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure reservation-purchase-recommendation
                                    common-lisp:nil
                                    ((account-scope :target-type account-scope
                                      :member-name "AccountScope")
                                     (lookback-period-in-days :target-type
                                      lookback-period-in-days :member-name
                                      "LookbackPeriodInDays")
                                     (term-in-years :target-type term-in-years
                                      :member-name "TermInYears")
                                     (payment-option :target-type
                                      payment-option :member-name
                                      "PaymentOption")
                                     (service-specification :target-type
                                      service-specification :member-name
                                      "ServiceSpecification")
                                     (recommendation-details :target-type
                                      reservation-purchase-recommendation-details
                                      :member-name "RecommendationDetails")
                                     (recommendation-summary :target-type
                                      reservation-purchase-recommendation-summary
                                      :member-name "RecommendationSummary"))
                                    (:shape-name
                                     "ReservationPurchaseRecommendation"))

(smithy/sdk/shapes:define-structure reservation-purchase-recommendation-detail
                                    common-lisp:nil
                                    ((account-id :target-type generic-string
                                      :member-name "AccountId")
                                     (instance-details :target-type
                                      instance-details :member-name
                                      "InstanceDetails")
                                     (recommended-number-of-instances-to-purchase
                                      :target-type generic-string :member-name
                                      "RecommendedNumberOfInstancesToPurchase")
                                     (recommended-normalized-units-to-purchase
                                      :target-type generic-string :member-name
                                      "RecommendedNormalizedUnitsToPurchase")
                                     (minimum-number-of-instances-used-per-hour
                                      :target-type generic-string :member-name
                                      "MinimumNumberOfInstancesUsedPerHour")
                                     (minimum-normalized-units-used-per-hour
                                      :target-type generic-string :member-name
                                      "MinimumNormalizedUnitsUsedPerHour")
                                     (maximum-number-of-instances-used-per-hour
                                      :target-type generic-string :member-name
                                      "MaximumNumberOfInstancesUsedPerHour")
                                     (maximum-normalized-units-used-per-hour
                                      :target-type generic-string :member-name
                                      "MaximumNormalizedUnitsUsedPerHour")
                                     (average-number-of-instances-used-per-hour
                                      :target-type generic-string :member-name
                                      "AverageNumberOfInstancesUsedPerHour")
                                     (average-normalized-units-used-per-hour
                                      :target-type generic-string :member-name
                                      "AverageNormalizedUnitsUsedPerHour")
                                     (average-utilization :target-type
                                      generic-string :member-name
                                      "AverageUtilization")
                                     (estimated-break-even-in-months
                                      :target-type generic-string :member-name
                                      "EstimatedBreakEvenInMonths")
                                     (currency-code :target-type generic-string
                                      :member-name "CurrencyCode")
                                     (estimated-monthly-savings-amount
                                      :target-type generic-string :member-name
                                      "EstimatedMonthlySavingsAmount")
                                     (estimated-monthly-savings-percentage
                                      :target-type generic-string :member-name
                                      "EstimatedMonthlySavingsPercentage")
                                     (estimated-monthly-on-demand-cost
                                      :target-type generic-string :member-name
                                      "EstimatedMonthlyOnDemandCost")
                                     (estimated-reservation-cost-for-lookback-period
                                      :target-type generic-string :member-name
                                      "EstimatedReservationCostForLookbackPeriod")
                                     (upfront-cost :target-type generic-string
                                      :member-name "UpfrontCost")
                                     (recurring-standard-monthly-cost
                                      :target-type generic-string :member-name
                                      "RecurringStandardMonthlyCost")
                                     (reserved-capacity-details :target-type
                                      reserved-capacity-details :member-name
                                      "ReservedCapacityDetails")
                                     (recommended-number-of-capacity-units-to-purchase
                                      :target-type generic-string :member-name
                                      "RecommendedNumberOfCapacityUnitsToPurchase")
                                     (minimum-number-of-capacity-units-used-per-hour
                                      :target-type generic-string :member-name
                                      "MinimumNumberOfCapacityUnitsUsedPerHour")
                                     (maximum-number-of-capacity-units-used-per-hour
                                      :target-type generic-string :member-name
                                      "MaximumNumberOfCapacityUnitsUsedPerHour")
                                     (average-number-of-capacity-units-used-per-hour
                                      :target-type generic-string :member-name
                                      "AverageNumberOfCapacityUnitsUsedPerHour"))
                                    (:shape-name
                                     "ReservationPurchaseRecommendationDetail"))

(smithy/sdk/shapes:define-list reservation-purchase-recommendation-details
                               :member
                               reservation-purchase-recommendation-detail)

(smithy/sdk/shapes:define-structure
 reservation-purchase-recommendation-metadata common-lisp:nil
 ((recommendation-id :target-type generic-string :member-name
   "RecommendationId")
  (generation-timestamp :target-type generic-string :member-name
   "GenerationTimestamp")
  (additional-metadata :target-type generic-string :member-name
   "AdditionalMetadata"))
 (:shape-name "ReservationPurchaseRecommendationMetadata"))

(smithy/sdk/shapes:define-structure reservation-purchase-recommendation-summary
                                    common-lisp:nil
                                    ((total-estimated-monthly-savings-amount
                                      :target-type generic-string :member-name
                                      "TotalEstimatedMonthlySavingsAmount")
                                     (total-estimated-monthly-savings-percentage
                                      :target-type generic-string :member-name
                                      "TotalEstimatedMonthlySavingsPercentage")
                                     (currency-code :target-type generic-string
                                      :member-name "CurrencyCode"))
                                    (:shape-name
                                     "ReservationPurchaseRecommendationSummary"))

(smithy/sdk/shapes:define-list reservation-purchase-recommendations :member
                               reservation-purchase-recommendation)

(smithy/sdk/shapes:define-structure reservation-utilization-group
                                    common-lisp:nil
                                    ((key :target-type reservation-group-key
                                      :member-name "Key")
                                     (value :target-type
                                      reservation-group-value :member-name
                                      "Value")
                                     (attributes :target-type attributes
                                      :member-name "Attributes")
                                     (utilization :target-type
                                      reservation-aggregates :member-name
                                      "Utilization"))
                                    (:shape-name "ReservationUtilizationGroup"))

(smithy/sdk/shapes:define-list reservation-utilization-groups :member
                               reservation-utilization-group)

(smithy/sdk/shapes:define-structure reserved-capacity-details common-lisp:nil
                                    ((dynamo-dbcapacity-details :target-type
                                      dynamo-dbcapacity-details :member-name
                                      "DynamoDBCapacityDetails"))
                                    (:shape-name "ReservedCapacityDetails"))

(smithy/sdk/shapes:define-type reserved-hours smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type reserved-normalized-units
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resource-details common-lisp:nil
                                    ((ec2resource-details :target-type
                                      ec2resource-details :member-name
                                      "EC2ResourceDetails"))
                                    (:shape-name "ResourceDetails"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (resource-name :target-type arn :member-name
                                  "ResourceName"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure resource-tag common-lisp:nil
                                    ((key :target-type resource-tag-key
                                      :required common-lisp:t :member-name
                                      "Key")
                                     (value :target-type resource-tag-value
                                      :required common-lisp:t :member-name
                                      "Value"))
                                    (:shape-name "ResourceTag"))

(smithy/sdk/shapes:define-type resource-tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-tag-key-list :member resource-tag-key)

(smithy/sdk/shapes:define-list resource-tag-list :member resource-tag)

(smithy/sdk/shapes:define-type resource-tag-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resource-utilization common-lisp:nil
                                    ((ec2resource-utilization :target-type
                                      ec2resource-utilization :member-name
                                      "EC2ResourceUtilization"))
                                    (:shape-name "ResourceUtilization"))

(smithy/sdk/shapes:define-structure result-by-time common-lisp:nil
                                    ((time-period :target-type date-interval
                                      :member-name "TimePeriod")
                                     (total :target-type metrics :member-name
                                      "Total")
                                     (groups :target-type groups :member-name
                                      "Groups")
                                     (estimated :target-type estimated
                                      :member-name "Estimated"))
                                    (:shape-name "ResultByTime"))

(smithy/sdk/shapes:define-list results-by-time :member result-by-time)

(smithy/sdk/shapes:define-structure rightsizing-recommendation common-lisp:nil
                                    ((account-id :target-type generic-string
                                      :member-name "AccountId")
                                     (current-instance :target-type
                                      current-instance :member-name
                                      "CurrentInstance")
                                     (rightsizing-type :target-type
                                      rightsizing-type :member-name
                                      "RightsizingType")
                                     (modify-recommendation-detail :target-type
                                      modify-recommendation-detail :member-name
                                      "ModifyRecommendationDetail")
                                     (terminate-recommendation-detail
                                      :target-type
                                      terminate-recommendation-detail
                                      :member-name
                                      "TerminateRecommendationDetail")
                                     (finding-reason-codes :target-type
                                      finding-reason-codes :member-name
                                      "FindingReasonCodes"))
                                    (:shape-name "RightsizingRecommendation"))

(smithy/sdk/shapes:define-structure rightsizing-recommendation-configuration
                                    common-lisp:nil
                                    ((recommendation-target :target-type
                                      recommendation-target :required
                                      common-lisp:t :member-name
                                      "RecommendationTarget")
                                     (benefits-considered :target-type
                                      generic-boolean :required common-lisp:t
                                      :member-name "BenefitsConsidered"))
                                    (:shape-name
                                     "RightsizingRecommendationConfiguration"))

(smithy/sdk/shapes:define-list rightsizing-recommendation-list :member
                               rightsizing-recommendation)

(smithy/sdk/shapes:define-structure rightsizing-recommendation-metadata
                                    common-lisp:nil
                                    ((recommendation-id :target-type
                                      generic-string :member-name
                                      "RecommendationId")
                                     (generation-timestamp :target-type
                                      generic-string :member-name
                                      "GenerationTimestamp")
                                     (lookback-period-in-days :target-type
                                      lookback-period-in-days :member-name
                                      "LookbackPeriodInDays")
                                     (additional-metadata :target-type
                                      generic-string :member-name
                                      "AdditionalMetadata"))
                                    (:shape-name
                                     "RightsizingRecommendationMetadata"))

(smithy/sdk/shapes:define-structure rightsizing-recommendation-summary
                                    common-lisp:nil
                                    ((total-recommendation-count :target-type
                                      generic-string :member-name
                                      "TotalRecommendationCount")
                                     (estimated-total-monthly-savings-amount
                                      :target-type generic-string :member-name
                                      "EstimatedTotalMonthlySavingsAmount")
                                     (savings-currency-code :target-type
                                      generic-string :member-name
                                      "SavingsCurrencyCode")
                                     (savings-percentage :target-type
                                      generic-string :member-name
                                      "SavingsPercentage"))
                                    (:shape-name
                                     "RightsizingRecommendationSummary"))

(smithy/sdk/shapes:define-enum rightsizing-type
    common-lisp:nil
  (:terminate "TERMINATE")
  (:modify "MODIFY"))

(smithy/sdk/shapes:define-structure root-cause common-lisp:nil
                                    ((service :target-type generic-string
                                      :member-name "Service")
                                     (region :target-type generic-string
                                      :member-name "Region")
                                     (linked-account :target-type
                                      generic-string :member-name
                                      "LinkedAccount")
                                     (linked-account-name :target-type
                                      generic-string :member-name
                                      "LinkedAccountName")
                                     (usage-type :target-type generic-string
                                      :member-name "UsageType")
                                     (impact :target-type root-cause-impact
                                      :member-name "Impact"))
                                    (:shape-name "RootCause"))

(smithy/sdk/shapes:define-structure root-cause-impact common-lisp:nil
                                    ((contribution :target-type generic-double
                                      :required common-lisp:t :member-name
                                      "Contribution"))
                                    (:shape-name "RootCauseImpact"))

(smithy/sdk/shapes:define-list root-causes :member root-cause)

(smithy/sdk/shapes:define-type savings-plan-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure savings-plans common-lisp:nil
                                    ((payment-option :target-type
                                      payment-option :member-name
                                      "PaymentOption")
                                     (savings-plans-type :target-type
                                      supported-savings-plans-type :member-name
                                      "SavingsPlansType")
                                     (region :target-type generic-string
                                      :member-name "Region")
                                     (instance-family :target-type
                                      generic-string :member-name
                                      "InstanceFamily")
                                     (term-in-years :target-type term-in-years
                                      :member-name "TermInYears")
                                     (savings-plans-commitment :target-type
                                      savings-plans-commitment :member-name
                                      "SavingsPlansCommitment")
                                     (offering-id :target-type generic-string
                                      :member-name "OfferingId"))
                                    (:shape-name "SavingsPlans"))

(smithy/sdk/shapes:define-structure savings-plans-amortized-commitment
                                    common-lisp:nil
                                    ((amortized-recurring-commitment
                                      :target-type generic-string :member-name
                                      "AmortizedRecurringCommitment")
                                     (amortized-upfront-commitment :target-type
                                      generic-string :member-name
                                      "AmortizedUpfrontCommitment")
                                     (total-amortized-commitment :target-type
                                      generic-string :member-name
                                      "TotalAmortizedCommitment"))
                                    (:shape-name
                                     "SavingsPlansAmortizedCommitment"))

(smithy/sdk/shapes:define-type savings-plans-commitment
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure savings-plans-coverage common-lisp:nil
                                    ((attributes :target-type attributes
                                      :member-name "Attributes")
                                     (coverage :target-type
                                      savings-plans-coverage-data :member-name
                                      "Coverage")
                                     (time-period :target-type date-interval
                                      :member-name "TimePeriod"))
                                    (:shape-name "SavingsPlansCoverage"))

(smithy/sdk/shapes:define-structure savings-plans-coverage-data common-lisp:nil
                                    ((spend-covered-by-savings-plans
                                      :target-type generic-string :member-name
                                      "SpendCoveredBySavingsPlans")
                                     (on-demand-cost :target-type
                                      generic-string :member-name
                                      "OnDemandCost")
                                     (total-cost :target-type generic-string
                                      :member-name "TotalCost")
                                     (coverage-percentage :target-type
                                      generic-string :member-name
                                      "CoveragePercentage"))
                                    (:shape-name "SavingsPlansCoverageData"))

(smithy/sdk/shapes:define-list savings-plans-coverages :member
                               savings-plans-coverage)

(smithy/sdk/shapes:define-enum savings-plans-data-type
    common-lisp:nil
  (:attributes "ATTRIBUTES")
  (:utilization "UTILIZATION")
  (:amortized-commitment "AMORTIZED_COMMITMENT")
  (:savings "SAVINGS"))

(smithy/sdk/shapes:define-list savings-plans-data-types :member
                               savings-plans-data-type)

(smithy/sdk/shapes:define-structure savings-plans-details common-lisp:nil
                                    ((region :target-type generic-string
                                      :member-name "Region")
                                     (instance-family :target-type
                                      generic-string :member-name
                                      "InstanceFamily")
                                     (offering-id :target-type generic-string
                                      :member-name "OfferingId"))
                                    (:shape-name "SavingsPlansDetails"))

(smithy/sdk/shapes:define-type savings-plans-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 savings-plans-purchase-analysis-configuration common-lisp:nil
 ((account-scope :target-type account-scope :member-name "AccountScope")
  (account-id :target-type account-id :member-name "AccountId")
  (analysis-type :target-type analysis-type :required common-lisp:t
   :member-name "AnalysisType")
  (savings-plans-to-add :target-type savings-plans-to-add :required
   common-lisp:t :member-name "SavingsPlansToAdd")
  (savings-plans-to-exclude :target-type savings-plans-to-exclude :member-name
   "SavingsPlansToExclude")
  (look-back-time-period :target-type date-interval :required common-lisp:t
   :member-name "LookBackTimePeriod"))
 (:shape-name "SavingsPlansPurchaseAnalysisConfiguration"))

(smithy/sdk/shapes:define-structure savings-plans-purchase-analysis-details
                                    common-lisp:nil
                                    ((currency-code :target-type generic-string
                                      :member-name "CurrencyCode")
                                     (lookback-period-in-hours :target-type
                                      generic-string :member-name
                                      "LookbackPeriodInHours")
                                     (current-average-coverage :target-type
                                      generic-string :member-name
                                      "CurrentAverageCoverage")
                                     (current-average-hourly-on-demand-spend
                                      :target-type generic-string :member-name
                                      "CurrentAverageHourlyOnDemandSpend")
                                     (current-maximum-hourly-on-demand-spend
                                      :target-type generic-string :member-name
                                      "CurrentMaximumHourlyOnDemandSpend")
                                     (current-minimum-hourly-on-demand-spend
                                      :target-type generic-string :member-name
                                      "CurrentMinimumHourlyOnDemandSpend")
                                     (current-on-demand-spend :target-type
                                      generic-string :member-name
                                      "CurrentOnDemandSpend")
                                     (existing-hourly-commitment :target-type
                                      generic-string :member-name
                                      "ExistingHourlyCommitment")
                                     (hourly-commitment-to-purchase
                                      :target-type generic-string :member-name
                                      "HourlyCommitmentToPurchase")
                                     (estimated-average-coverage :target-type
                                      generic-string :member-name
                                      "EstimatedAverageCoverage")
                                     (estimated-average-utilization
                                      :target-type generic-string :member-name
                                      "EstimatedAverageUtilization")
                                     (estimated-monthly-savings-amount
                                      :target-type generic-string :member-name
                                      "EstimatedMonthlySavingsAmount")
                                     (estimated-on-demand-cost :target-type
                                      generic-string :member-name
                                      "EstimatedOnDemandCost")
                                     (estimated-on-demand-cost-with-current-commitment
                                      :target-type generic-string :member-name
                                      "EstimatedOnDemandCostWithCurrentCommitment")
                                     (estimated-roi :target-type generic-string
                                      :member-name "EstimatedROI")
                                     (estimated-savings-amount :target-type
                                      generic-string :member-name
                                      "EstimatedSavingsAmount")
                                     (estimated-savings-percentage :target-type
                                      generic-string :member-name
                                      "EstimatedSavingsPercentage")
                                     (estimated-commitment-cost :target-type
                                      generic-string :member-name
                                      "EstimatedCommitmentCost")
                                     (latest-usage-timestamp :target-type
                                      generic-string :member-name
                                      "LatestUsageTimestamp")
                                     (upfront-cost :target-type generic-string
                                      :member-name "UpfrontCost")
                                     (additional-metadata :target-type
                                      generic-string :member-name
                                      "AdditionalMetadata")
                                     (metrics-over-lookback-period :target-type
                                      metrics-over-lookback-period :member-name
                                      "MetricsOverLookbackPeriod"))
                                    (:shape-name
                                     "SavingsPlansPurchaseAnalysisDetails"))

(smithy/sdk/shapes:define-structure savings-plans-purchase-recommendation
                                    common-lisp:nil
                                    ((account-scope :target-type account-scope
                                      :member-name "AccountScope")
                                     (savings-plans-type :target-type
                                      supported-savings-plans-type :member-name
                                      "SavingsPlansType")
                                     (term-in-years :target-type term-in-years
                                      :member-name "TermInYears")
                                     (payment-option :target-type
                                      payment-option :member-name
                                      "PaymentOption")
                                     (lookback-period-in-days :target-type
                                      lookback-period-in-days :member-name
                                      "LookbackPeriodInDays")
                                     (savings-plans-purchase-recommendation-details
                                      :target-type
                                      savings-plans-purchase-recommendation-detail-list
                                      :member-name
                                      "SavingsPlansPurchaseRecommendationDetails")
                                     (savings-plans-purchase-recommendation-summary
                                      :target-type
                                      savings-plans-purchase-recommendation-summary
                                      :member-name
                                      "SavingsPlansPurchaseRecommendationSummary"))
                                    (:shape-name
                                     "SavingsPlansPurchaseRecommendation"))

(smithy/sdk/shapes:define-structure
 savings-plans-purchase-recommendation-detail common-lisp:nil
 ((savings-plans-details :target-type savings-plans-details :member-name
   "SavingsPlansDetails")
  (account-id :target-type generic-string :member-name "AccountId")
  (upfront-cost :target-type generic-string :member-name "UpfrontCost")
  (estimated-roi :target-type generic-string :member-name "EstimatedROI")
  (currency-code :target-type generic-string :member-name "CurrencyCode")
  (estimated-spcost :target-type generic-string :member-name "EstimatedSPCost")
  (estimated-on-demand-cost :target-type generic-string :member-name
   "EstimatedOnDemandCost")
  (estimated-on-demand-cost-with-current-commitment :target-type generic-string
   :member-name "EstimatedOnDemandCostWithCurrentCommitment")
  (estimated-savings-amount :target-type generic-string :member-name
   "EstimatedSavingsAmount")
  (estimated-savings-percentage :target-type generic-string :member-name
   "EstimatedSavingsPercentage")
  (hourly-commitment-to-purchase :target-type generic-string :member-name
   "HourlyCommitmentToPurchase")
  (estimated-average-utilization :target-type generic-string :member-name
   "EstimatedAverageUtilization")
  (estimated-monthly-savings-amount :target-type generic-string :member-name
   "EstimatedMonthlySavingsAmount")
  (current-minimum-hourly-on-demand-spend :target-type generic-string
   :member-name "CurrentMinimumHourlyOnDemandSpend")
  (current-maximum-hourly-on-demand-spend :target-type generic-string
   :member-name "CurrentMaximumHourlyOnDemandSpend")
  (current-average-hourly-on-demand-spend :target-type generic-string
   :member-name "CurrentAverageHourlyOnDemandSpend")
  (recommendation-detail-id :target-type recommendation-detail-id :member-name
   "RecommendationDetailId"))
 (:shape-name "SavingsPlansPurchaseRecommendationDetail"))

(smithy/sdk/shapes:define-list
 savings-plans-purchase-recommendation-detail-list :member
 savings-plans-purchase-recommendation-detail)

(smithy/sdk/shapes:define-structure
 savings-plans-purchase-recommendation-metadata common-lisp:nil
 ((recommendation-id :target-type generic-string :member-name
   "RecommendationId")
  (generation-timestamp :target-type generic-string :member-name
   "GenerationTimestamp")
  (additional-metadata :target-type generic-string :member-name
   "AdditionalMetadata"))
 (:shape-name "SavingsPlansPurchaseRecommendationMetadata"))

(smithy/sdk/shapes:define-structure
 savings-plans-purchase-recommendation-summary common-lisp:nil
 ((estimated-roi :target-type generic-string :member-name "EstimatedROI")
  (currency-code :target-type generic-string :member-name "CurrencyCode")
  (estimated-total-cost :target-type generic-string :member-name
   "EstimatedTotalCost")
  (current-on-demand-spend :target-type generic-string :member-name
   "CurrentOnDemandSpend")
  (estimated-savings-amount :target-type generic-string :member-name
   "EstimatedSavingsAmount")
  (total-recommendation-count :target-type generic-string :member-name
   "TotalRecommendationCount")
  (daily-commitment-to-purchase :target-type generic-string :member-name
   "DailyCommitmentToPurchase")
  (hourly-commitment-to-purchase :target-type generic-string :member-name
   "HourlyCommitmentToPurchase")
  (estimated-savings-percentage :target-type generic-string :member-name
   "EstimatedSavingsPercentage")
  (estimated-monthly-savings-amount :target-type generic-string :member-name
   "EstimatedMonthlySavingsAmount")
  (estimated-on-demand-cost-with-current-commitment :target-type generic-string
   :member-name "EstimatedOnDemandCostWithCurrentCommitment"))
 (:shape-name "SavingsPlansPurchaseRecommendationSummary"))

(smithy/sdk/shapes:define-structure savings-plans-savings common-lisp:nil
                                    ((net-savings :target-type generic-string
                                      :member-name "NetSavings")
                                     (on-demand-cost-equivalent :target-type
                                      generic-string :member-name
                                      "OnDemandCostEquivalent"))
                                    (:shape-name "SavingsPlansSavings"))

(smithy/sdk/shapes:define-list savings-plans-to-add :member savings-plans)

(smithy/sdk/shapes:define-list savings-plans-to-exclude :member
                               savings-plans-id)

(smithy/sdk/shapes:define-structure savings-plans-utilization common-lisp:nil
                                    ((total-commitment :target-type
                                      generic-string :member-name
                                      "TotalCommitment")
                                     (used-commitment :target-type
                                      generic-string :member-name
                                      "UsedCommitment")
                                     (unused-commitment :target-type
                                      generic-string :member-name
                                      "UnusedCommitment")
                                     (utilization-percentage :target-type
                                      generic-string :member-name
                                      "UtilizationPercentage"))
                                    (:shape-name "SavingsPlansUtilization"))

(smithy/sdk/shapes:define-structure savings-plans-utilization-aggregates
                                    common-lisp:nil
                                    ((utilization :target-type
                                      savings-plans-utilization :required
                                      common-lisp:t :member-name "Utilization")
                                     (savings :target-type
                                      savings-plans-savings :member-name
                                      "Savings")
                                     (amortized-commitment :target-type
                                      savings-plans-amortized-commitment
                                      :member-name "AmortizedCommitment"))
                                    (:shape-name
                                     "SavingsPlansUtilizationAggregates"))

(smithy/sdk/shapes:define-structure savings-plans-utilization-by-time
                                    common-lisp:nil
                                    ((time-period :target-type date-interval
                                      :required common-lisp:t :member-name
                                      "TimePeriod")
                                     (utilization :target-type
                                      savings-plans-utilization :required
                                      common-lisp:t :member-name "Utilization")
                                     (savings :target-type
                                      savings-plans-savings :member-name
                                      "Savings")
                                     (amortized-commitment :target-type
                                      savings-plans-amortized-commitment
                                      :member-name "AmortizedCommitment"))
                                    (:shape-name
                                     "SavingsPlansUtilizationByTime"))

(smithy/sdk/shapes:define-structure savings-plans-utilization-detail
                                    common-lisp:nil
                                    ((savings-plan-arn :target-type
                                      savings-plan-arn :member-name
                                      "SavingsPlanArn")
                                     (attributes :target-type attributes
                                      :member-name "Attributes")
                                     (utilization :target-type
                                      savings-plans-utilization :member-name
                                      "Utilization")
                                     (savings :target-type
                                      savings-plans-savings :member-name
                                      "Savings")
                                     (amortized-commitment :target-type
                                      savings-plans-amortized-commitment
                                      :member-name "AmortizedCommitment"))
                                    (:shape-name
                                     "SavingsPlansUtilizationDetail"))

(smithy/sdk/shapes:define-list savings-plans-utilization-details :member
                               savings-plans-utilization-detail)

(smithy/sdk/shapes:define-list savings-plans-utilizations-by-time :member
                               savings-plans-utilization-by-time)

(smithy/sdk/shapes:define-type search-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-structure service-specification common-lisp:nil
                                    ((ec2specification :target-type
                                      ec2specification :member-name
                                      "EC2Specification"))
                                    (:shape-name "ServiceSpecification"))

(smithy/sdk/shapes:define-structure sort-definition common-lisp:nil
                                    ((key :target-type sort-definition-key
                                      :required common-lisp:t :member-name
                                      "Key")
                                     (sort-order :target-type sort-order
                                      :member-name "SortOrder"))
                                    (:shape-name "SortDefinition"))

(smithy/sdk/shapes:define-type sort-definition-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list sort-definitions :member sort-definition)

(smithy/sdk/shapes:define-enum sort-order
    common-lisp:nil
  (:ascending "ASCENDING")
  (:descending "DESCENDING"))

(smithy/sdk/shapes:define-input start-commitment-purchase-analysis-request
                                common-lisp:nil
                                ((commitment-purchase-analysis-configuration
                                  :target-type
                                  commitment-purchase-analysis-configuration
                                  :required common-lisp:t :member-name
                                  "CommitmentPurchaseAnalysisConfiguration"))
                                (:shape-name
                                 "StartCommitmentPurchaseAnalysisRequest"))

(smithy/sdk/shapes:define-output start-commitment-purchase-analysis-response
                                 common-lisp:nil
                                 ((analysis-id :target-type analysis-id
                                   :required common-lisp:t :member-name
                                   "AnalysisId")
                                  (analysis-started-time :target-type
                                   zoned-date-time :required common-lisp:t
                                   :member-name "AnalysisStartedTime")
                                  (estimated-completion-time :target-type
                                   zoned-date-time :required common-lisp:t
                                   :member-name "EstimatedCompletionTime"))
                                 (:shape-name
                                  "StartCommitmentPurchaseAnalysisResponse"))

(smithy/sdk/shapes:define-input start-cost-allocation-tag-backfill-request
                                common-lisp:nil
                                ((backfill-from :target-type zoned-date-time
                                  :required common-lisp:t :member-name
                                  "BackfillFrom"))
                                (:shape-name
                                 "StartCostAllocationTagBackfillRequest"))

(smithy/sdk/shapes:define-output start-cost-allocation-tag-backfill-response
                                 common-lisp:nil
                                 ((backfill-request :target-type
                                   cost-allocation-tag-backfill-request
                                   :member-name "BackfillRequest"))
                                 (:shape-name
                                  "StartCostAllocationTagBackfillResponse"))

(smithy/sdk/shapes:define-input
 start-savings-plans-purchase-recommendation-generation-request common-lisp:nil
 common-lisp:nil
 (:shape-name "StartSavingsPlansPurchaseRecommendationGenerationRequest"))

(smithy/sdk/shapes:define-output
 start-savings-plans-purchase-recommendation-generation-response
 common-lisp:nil
 ((recommendation-id :target-type recommendation-id :member-name
   "RecommendationId")
  (generation-started-time :target-type zoned-date-time :member-name
   "GenerationStartedTime")
  (estimated-completion-time :target-type zoned-date-time :member-name
   "EstimatedCompletionTime"))
 (:shape-name "StartSavingsPlansPurchaseRecommendationGenerationResponse"))

(smithy/sdk/shapes:define-structure subscriber common-lisp:nil
                                    ((address :target-type subscriber-address
                                      :member-name "Address")
                                     (type :target-type subscriber-type
                                      :member-name "Type")
                                     (status :target-type subscriber-status
                                      :member-name "Status"))
                                    (:shape-name "Subscriber"))

(smithy/sdk/shapes:define-type subscriber-address
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum subscriber-status
    common-lisp:nil
  (:confirmed "CONFIRMED")
  (:declined "DECLINED"))

(smithy/sdk/shapes:define-enum subscriber-type
    common-lisp:nil
  (:email "EMAIL")
  (:sns "SNS"))

(smithy/sdk/shapes:define-list subscribers :member subscriber)

(smithy/sdk/shapes:define-enum supported-savings-plans-type
    common-lisp:nil
  (:compute-sp "COMPUTE_SP")
  (:ec2-instance-sp "EC2_INSTANCE_SP")
  (:sagemaker-sp "SAGEMAKER_SP"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-list :member entity)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (resource-tags :target-type resource-tag-list
                                  :required common-lisp:t :member-name
                                  "ResourceTags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-structure tag-values common-lisp:nil
                                    ((key :target-type tag-key :member-name
                                      "Key")
                                     (values :target-type values :member-name
                                      "Values")
                                     (match-options :target-type match-options
                                      :member-name "MatchOptions"))
                                    (:shape-name "TagValues"))

(smithy/sdk/shapes:define-list tag-values-list :member tag-values)

(smithy/sdk/shapes:define-structure target-instance common-lisp:nil
                                    ((estimated-monthly-cost :target-type
                                      generic-string :member-name
                                      "EstimatedMonthlyCost")
                                     (estimated-monthly-savings :target-type
                                      generic-string :member-name
                                      "EstimatedMonthlySavings")
                                     (currency-code :target-type generic-string
                                      :member-name "CurrencyCode")
                                     (default-target-instance :target-type
                                      generic-boolean :member-name
                                      "DefaultTargetInstance")
                                     (resource-details :target-type
                                      resource-details :member-name
                                      "ResourceDetails")
                                     (expected-resource-utilization
                                      :target-type resource-utilization
                                      :member-name
                                      "ExpectedResourceUtilization")
                                     (platform-differences :target-type
                                      platform-differences :member-name
                                      "PlatformDifferences"))
                                    (:shape-name "TargetInstance"))

(smithy/sdk/shapes:define-list target-instances-list :member target-instance)

(smithy/sdk/shapes:define-enum term-in-years
    common-lisp:nil
  (:one-year "ONE_YEAR")
  (:three-years "THREE_YEARS"))

(smithy/sdk/shapes:define-structure terminate-recommendation-detail
                                    common-lisp:nil
                                    ((estimated-monthly-savings :target-type
                                      generic-string :member-name
                                      "EstimatedMonthlySavings")
                                     (currency-code :target-type generic-string
                                      :member-name "CurrencyCode"))
                                    (:shape-name
                                     "TerminateRecommendationDetail"))

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (resource-name :target-type arn :member-name
                                  "ResourceName"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type total-actual-hours
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type total-actual-units
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type total-amortized-fee
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure total-impact-filter common-lisp:nil
                                    ((numeric-operator :target-type
                                      numeric-operator :required common-lisp:t
                                      :member-name "NumericOperator")
                                     (start-value :target-type generic-double
                                      :required common-lisp:t :member-name
                                      "StartValue")
                                     (end-value :target-type generic-double
                                      :member-name "EndValue"))
                                    (:shape-name "TotalImpactFilter"))

(smithy/sdk/shapes:define-type total-potential-risavings
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type total-running-hours
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type total-running-normalized-units
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error unknown-monitor-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "UnknownMonitorException")
                                (:error-code 404))

(smithy/sdk/shapes:define-error unknown-subscription-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "UnknownSubscriptionException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type unrealized-savings
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error unresolvable-usage-unit-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "UnresolvableUsageUnitException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (resource-tag-keys :target-type
                                  resource-tag-key-list :required common-lisp:t
                                  :member-name "ResourceTagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-type unused-hours smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type unused-units smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input update-anomaly-monitor-request common-lisp:nil
                                ((monitor-arn :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "MonitorArn")
                                 (monitor-name :target-type generic-string
                                  :member-name "MonitorName"))
                                (:shape-name "UpdateAnomalyMonitorRequest"))

(smithy/sdk/shapes:define-output update-anomaly-monitor-response
                                 common-lisp:nil
                                 ((monitor-arn :target-type generic-string
                                   :required common-lisp:t :member-name
                                   "MonitorArn"))
                                 (:shape-name "UpdateAnomalyMonitorResponse"))

(smithy/sdk/shapes:define-input update-anomaly-subscription-request
                                common-lisp:nil
                                ((subscription-arn :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "SubscriptionArn")
                                 (threshold :target-type
                                  nullable-non-negative-double :member-name
                                  "Threshold")
                                 (frequency :target-type
                                  anomaly-subscription-frequency :member-name
                                  "Frequency")
                                 (monitor-arn-list :target-type
                                  monitor-arn-list :member-name
                                  "MonitorArnList")
                                 (subscribers :target-type subscribers
                                  :member-name "Subscribers")
                                 (subscription-name :target-type generic-string
                                  :member-name "SubscriptionName")
                                 (threshold-expression :target-type expression
                                  :member-name "ThresholdExpression"))
                                (:shape-name
                                 "UpdateAnomalySubscriptionRequest"))

(smithy/sdk/shapes:define-output update-anomaly-subscription-response
                                 common-lisp:nil
                                 ((subscription-arn :target-type generic-string
                                   :required common-lisp:t :member-name
                                   "SubscriptionArn"))
                                 (:shape-name
                                  "UpdateAnomalySubscriptionResponse"))

(smithy/sdk/shapes:define-structure update-cost-allocation-tags-status-error
                                    common-lisp:nil
                                    ((tag-key :target-type tag-key :member-name
                                      "TagKey")
                                     (code :target-type generic-string
                                      :member-name "Code")
                                     (message :target-type error-message
                                      :member-name "Message"))
                                    (:shape-name
                                     "UpdateCostAllocationTagsStatusError"))

(smithy/sdk/shapes:define-list update-cost-allocation-tags-status-errors
                               :member update-cost-allocation-tags-status-error)

(smithy/sdk/shapes:define-input update-cost-allocation-tags-status-request
                                common-lisp:nil
                                ((cost-allocation-tags-status :target-type
                                  cost-allocation-tag-status-list :required
                                  common-lisp:t :member-name
                                  "CostAllocationTagsStatus"))
                                (:shape-name
                                 "UpdateCostAllocationTagsStatusRequest"))

(smithy/sdk/shapes:define-output update-cost-allocation-tags-status-response
                                 common-lisp:nil
                                 ((errors :target-type
                                   update-cost-allocation-tags-status-errors
                                   :member-name "Errors"))
                                 (:shape-name
                                  "UpdateCostAllocationTagsStatusResponse"))

(smithy/sdk/shapes:define-input update-cost-category-definition-request
                                common-lisp:nil
                                ((cost-category-arn :target-type arn :required
                                  common-lisp:t :member-name "CostCategoryArn")
                                 (effective-start :target-type zoned-date-time
                                  :member-name "EffectiveStart")
                                 (rule-version :target-type
                                  cost-category-rule-version :required
                                  common-lisp:t :member-name "RuleVersion")
                                 (rules :target-type cost-category-rules-list
                                  :required common-lisp:t :member-name "Rules")
                                 (default-value :target-type
                                  cost-category-value :member-name
                                  "DefaultValue")
                                 (split-charge-rules :target-type
                                  cost-category-split-charge-rules-list
                                  :member-name "SplitChargeRules"))
                                (:shape-name
                                 "UpdateCostCategoryDefinitionRequest"))

(smithy/sdk/shapes:define-output update-cost-category-definition-response
                                 common-lisp:nil
                                 ((cost-category-arn :target-type arn
                                   :member-name "CostCategoryArn")
                                  (effective-start :target-type zoned-date-time
                                   :member-name "EffectiveStart"))
                                 (:shape-name
                                  "UpdateCostCategoryDefinitionResponse"))

(smithy/sdk/shapes:define-list usage-services :member generic-string)

(smithy/sdk/shapes:define-structure utilization-by-time common-lisp:nil
                                    ((time-period :target-type date-interval
                                      :member-name "TimePeriod")
                                     (groups :target-type
                                      reservation-utilization-groups
                                      :member-name "Groups")
                                     (total :target-type reservation-aggregates
                                      :member-name "Total"))
                                    (:shape-name "UtilizationByTime"))

(smithy/sdk/shapes:define-type utilization-percentage
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type utilization-percentage-in-units
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list utilizations-by-time :member utilization-by-time)

(smithy/sdk/shapes:define-type value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list values :member value)

(smithy/sdk/shapes:define-type year-month-day smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type zoned-date-time smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-anomaly-monitor :shape-name
                                       "CreateAnomalyMonitor" :input
                                       create-anomaly-monitor-request :output
                                       create-anomaly-monitor-response :errors
                                       (limit-exceeded-exception))

(smithy/sdk/operation:define-operation create-anomaly-subscription :shape-name
                                       "CreateAnomalySubscription" :input
                                       create-anomaly-subscription-request
                                       :output
                                       create-anomaly-subscription-response
                                       :errors
                                       (limit-exceeded-exception
                                        unknown-monitor-exception))

(smithy/sdk/operation:define-operation create-cost-category-definition
                                       :shape-name
                                       "CreateCostCategoryDefinition" :input
                                       create-cost-category-definition-request
                                       :output
                                       create-cost-category-definition-response
                                       :errors
                                       (limit-exceeded-exception
                                        service-quota-exceeded-exception))

(smithy/sdk/operation:define-operation delete-anomaly-monitor :shape-name
                                       "DeleteAnomalyMonitor" :input
                                       delete-anomaly-monitor-request :output
                                       delete-anomaly-monitor-response :errors
                                       (limit-exceeded-exception
                                        unknown-monitor-exception))

(smithy/sdk/operation:define-operation delete-anomaly-subscription :shape-name
                                       "DeleteAnomalySubscription" :input
                                       delete-anomaly-subscription-request
                                       :output
                                       delete-anomaly-subscription-response
                                       :errors
                                       (limit-exceeded-exception
                                        unknown-subscription-exception))

(smithy/sdk/operation:define-operation delete-cost-category-definition
                                       :shape-name
                                       "DeleteCostCategoryDefinition" :input
                                       delete-cost-category-definition-request
                                       :output
                                       delete-cost-category-definition-response
                                       :errors
                                       (limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-cost-category-definition
                                       :shape-name
                                       "DescribeCostCategoryDefinition" :input
                                       describe-cost-category-definition-request
                                       :output
                                       describe-cost-category-definition-response
                                       :errors
                                       (limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-anomalies :shape-name "GetAnomalies"
                                       :input get-anomalies-request :output
                                       get-anomalies-response :errors
                                       (invalid-next-token-exception
                                        limit-exceeded-exception))

(smithy/sdk/operation:define-operation get-anomaly-monitors :shape-name
                                       "GetAnomalyMonitors" :input
                                       get-anomaly-monitors-request :output
                                       get-anomaly-monitors-response :errors
                                       (invalid-next-token-exception
                                        limit-exceeded-exception
                                        unknown-monitor-exception))

(smithy/sdk/operation:define-operation get-anomaly-subscriptions :shape-name
                                       "GetAnomalySubscriptions" :input
                                       get-anomaly-subscriptions-request
                                       :output
                                       get-anomaly-subscriptions-response
                                       :errors
                                       (invalid-next-token-exception
                                        limit-exceeded-exception
                                        unknown-subscription-exception))

(smithy/sdk/operation:define-operation get-approximate-usage-records
                                       :shape-name "GetApproximateUsageRecords"
                                       :input
                                       get-approximate-usage-records-request
                                       :output
                                       get-approximate-usage-records-response
                                       :errors
                                       (data-unavailable-exception
                                        limit-exceeded-exception))

(smithy/sdk/operation:define-operation get-commitment-purchase-analysis
                                       :shape-name
                                       "GetCommitmentPurchaseAnalysis" :input
                                       get-commitment-purchase-analysis-request
                                       :output
                                       get-commitment-purchase-analysis-response
                                       :errors
                                       (analysis-not-found-exception
                                        data-unavailable-exception
                                        limit-exceeded-exception))

(smithy/sdk/operation:define-operation get-cost-and-usage :shape-name
                                       "GetCostAndUsage" :input
                                       get-cost-and-usage-request :output
                                       get-cost-and-usage-response :errors
                                       (bill-expiration-exception
                                        data-unavailable-exception
                                        invalid-next-token-exception
                                        limit-exceeded-exception
                                        request-changed-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-cost-and-usage-comparisons
                                       :shape-name "GetCostAndUsageComparisons"
                                       :input
                                       get-cost-and-usage-comparisons-request
                                       :output
                                       get-cost-and-usage-comparisons-response
                                       :errors
                                       (data-unavailable-exception
                                        invalid-next-token-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-cost-and-usage-with-resources
                                       :shape-name
                                       "GetCostAndUsageWithResources" :input
                                       get-cost-and-usage-with-resources-request
                                       :output
                                       get-cost-and-usage-with-resources-response
                                       :errors
                                       (bill-expiration-exception
                                        data-unavailable-exception
                                        invalid-next-token-exception
                                        limit-exceeded-exception
                                        request-changed-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-cost-categories :shape-name
                                       "GetCostCategories" :input
                                       get-cost-categories-request :output
                                       get-cost-categories-response :errors
                                       (bill-expiration-exception
                                        data-unavailable-exception
                                        invalid-next-token-exception
                                        limit-exceeded-exception
                                        request-changed-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-cost-comparison-drivers :shape-name
                                       "GetCostComparisonDrivers" :input
                                       get-cost-comparison-drivers-request
                                       :output
                                       get-cost-comparison-drivers-response
                                       :errors
                                       (data-unavailable-exception
                                        invalid-next-token-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-cost-forecast :shape-name
                                       "GetCostForecast" :input
                                       get-cost-forecast-request :output
                                       get-cost-forecast-response :errors
                                       (data-unavailable-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-dimension-values :shape-name
                                       "GetDimensionValues" :input
                                       get-dimension-values-request :output
                                       get-dimension-values-response :errors
                                       (bill-expiration-exception
                                        data-unavailable-exception
                                        invalid-next-token-exception
                                        limit-exceeded-exception
                                        request-changed-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-reservation-coverage :shape-name
                                       "GetReservationCoverage" :input
                                       get-reservation-coverage-request :output
                                       get-reservation-coverage-response
                                       :errors
                                       (data-unavailable-exception
                                        invalid-next-token-exception
                                        limit-exceeded-exception))

(smithy/sdk/operation:define-operation get-reservation-purchase-recommendation
                                       :shape-name
                                       "GetReservationPurchaseRecommendation"
                                       :input
                                       get-reservation-purchase-recommendation-request
                                       :output
                                       get-reservation-purchase-recommendation-response
                                       :errors
                                       (data-unavailable-exception
                                        invalid-next-token-exception
                                        limit-exceeded-exception))

(smithy/sdk/operation:define-operation get-reservation-utilization :shape-name
                                       "GetReservationUtilization" :input
                                       get-reservation-utilization-request
                                       :output
                                       get-reservation-utilization-response
                                       :errors
                                       (data-unavailable-exception
                                        invalid-next-token-exception
                                        limit-exceeded-exception))

(smithy/sdk/operation:define-operation get-rightsizing-recommendation
                                       :shape-name
                                       "GetRightsizingRecommendation" :input
                                       get-rightsizing-recommendation-request
                                       :output
                                       get-rightsizing-recommendation-response
                                       :errors
                                       (invalid-next-token-exception
                                        limit-exceeded-exception))

(smithy/sdk/operation:define-operation
 get-savings-plan-purchase-recommendation-details :shape-name
 "GetSavingsPlanPurchaseRecommendationDetails" :input
 get-savings-plan-purchase-recommendation-details-request :output
 get-savings-plan-purchase-recommendation-details-response :errors
 (data-unavailable-exception limit-exceeded-exception))

(smithy/sdk/operation:define-operation get-savings-plans-coverage :shape-name
                                       "GetSavingsPlansCoverage" :input
                                       get-savings-plans-coverage-request
                                       :output
                                       get-savings-plans-coverage-response
                                       :errors
                                       (data-unavailable-exception
                                        invalid-next-token-exception
                                        limit-exceeded-exception))

(smithy/sdk/operation:define-operation
 get-savings-plans-purchase-recommendation :shape-name
 "GetSavingsPlansPurchaseRecommendation" :input
 get-savings-plans-purchase-recommendation-request :output
 get-savings-plans-purchase-recommendation-response :errors
 (invalid-next-token-exception limit-exceeded-exception))

(smithy/sdk/operation:define-operation get-savings-plans-utilization
                                       :shape-name "GetSavingsPlansUtilization"
                                       :input
                                       get-savings-plans-utilization-request
                                       :output
                                       get-savings-plans-utilization-response
                                       :errors
                                       (data-unavailable-exception
                                        limit-exceeded-exception))

(smithy/sdk/operation:define-operation get-savings-plans-utilization-details
                                       :shape-name
                                       "GetSavingsPlansUtilizationDetails"
                                       :input
                                       get-savings-plans-utilization-details-request
                                       :output
                                       get-savings-plans-utilization-details-response
                                       :errors
                                       (data-unavailable-exception
                                        invalid-next-token-exception
                                        limit-exceeded-exception))

(smithy/sdk/operation:define-operation get-tags :shape-name "GetTags" :input
                                       get-tags-request :output
                                       get-tags-response :errors
                                       (bill-expiration-exception
                                        data-unavailable-exception
                                        invalid-next-token-exception
                                        limit-exceeded-exception
                                        request-changed-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-usage-forecast :shape-name
                                       "GetUsageForecast" :input
                                       get-usage-forecast-request :output
                                       get-usage-forecast-response :errors
                                       (data-unavailable-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        unresolvable-usage-unit-exception))

(smithy/sdk/operation:define-operation list-commitment-purchase-analyses
                                       :shape-name
                                       "ListCommitmentPurchaseAnalyses" :input
                                       list-commitment-purchase-analyses-request
                                       :output
                                       list-commitment-purchase-analyses-response
                                       :errors
                                       (data-unavailable-exception
                                        invalid-next-token-exception
                                        limit-exceeded-exception))

(smithy/sdk/operation:define-operation
 list-cost-allocation-tag-backfill-history :shape-name
 "ListCostAllocationTagBackfillHistory" :input
 list-cost-allocation-tag-backfill-history-request :output
 list-cost-allocation-tag-backfill-history-response :errors
 (invalid-next-token-exception limit-exceeded-exception))

(smithy/sdk/operation:define-operation list-cost-allocation-tags :shape-name
                                       "ListCostAllocationTags" :input
                                       list-cost-allocation-tags-request
                                       :output
                                       list-cost-allocation-tags-response
                                       :errors
                                       (invalid-next-token-exception
                                        limit-exceeded-exception))

(smithy/sdk/operation:define-operation list-cost-category-definitions
                                       :shape-name
                                       "ListCostCategoryDefinitions" :input
                                       list-cost-category-definitions-request
                                       :output
                                       list-cost-category-definitions-response
                                       :errors (limit-exceeded-exception))

(smithy/sdk/operation:define-operation
 list-savings-plans-purchase-recommendation-generation :shape-name
 "ListSavingsPlansPurchaseRecommendationGeneration" :input
 list-savings-plans-purchase-recommendation-generation-request :output
 list-savings-plans-purchase-recommendation-generation-response :errors
 (data-unavailable-exception invalid-next-token-exception
  limit-exceeded-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation provide-anomaly-feedback :shape-name
                                       "ProvideAnomalyFeedback" :input
                                       provide-anomaly-feedback-request :output
                                       provide-anomaly-feedback-response
                                       :errors (limit-exceeded-exception))

(smithy/sdk/operation:define-operation start-commitment-purchase-analysis
                                       :shape-name
                                       "StartCommitmentPurchaseAnalysis" :input
                                       start-commitment-purchase-analysis-request
                                       :output
                                       start-commitment-purchase-analysis-response
                                       :errors
                                       (data-unavailable-exception
                                        generation-exists-exception
                                        limit-exceeded-exception
                                        service-quota-exceeded-exception))

(smithy/sdk/operation:define-operation start-cost-allocation-tag-backfill
                                       :shape-name
                                       "StartCostAllocationTagBackfill" :input
                                       start-cost-allocation-tag-backfill-request
                                       :output
                                       start-cost-allocation-tag-backfill-response
                                       :errors
                                       (backfill-limit-exceeded-exception
                                        limit-exceeded-exception))

(smithy/sdk/operation:define-operation
 start-savings-plans-purchase-recommendation-generation :shape-name
 "StartSavingsPlansPurchaseRecommendationGeneration" :input
 start-savings-plans-purchase-recommendation-generation-request :output
 start-savings-plans-purchase-recommendation-generation-response :errors
 (data-unavailable-exception generation-exists-exception
  limit-exceeded-exception service-quota-exceeded-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (limit-exceeded-exception
                                        resource-not-found-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-anomaly-monitor :shape-name
                                       "UpdateAnomalyMonitor" :input
                                       update-anomaly-monitor-request :output
                                       update-anomaly-monitor-response :errors
                                       (limit-exceeded-exception
                                        unknown-monitor-exception))

(smithy/sdk/operation:define-operation update-anomaly-subscription :shape-name
                                       "UpdateAnomalySubscription" :input
                                       update-anomaly-subscription-request
                                       :output
                                       update-anomaly-subscription-response
                                       :errors
                                       (limit-exceeded-exception
                                        unknown-monitor-exception
                                        unknown-subscription-exception))

(smithy/sdk/operation:define-operation update-cost-allocation-tags-status
                                       :shape-name
                                       "UpdateCostAllocationTagsStatus" :input
                                       update-cost-allocation-tags-status-request
                                       :output
                                       update-cost-allocation-tags-status-response
                                       :errors (limit-exceeded-exception))

(smithy/sdk/operation:define-operation update-cost-category-definition
                                       :shape-name
                                       "UpdateCostCategoryDefinition" :input
                                       update-cost-category-definition-request
                                       :output
                                       update-cost-category-definition-response
                                       :errors
                                       (limit-exceeded-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception))
