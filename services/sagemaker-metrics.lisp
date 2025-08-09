(uiop/package:define-package #:pira/sagemaker-metrics (:use)
                             (:export #:batch-get-metrics #:batch-put-metrics
                              #:batch-put-metrics-error
                              #:batch-put-metrics-error-list #:double
                              #:experiment-entity-name #:integer #:long
                              #:message #:metric-name #:metric-query
                              #:metric-query-list #:metric-query-result
                              #:metric-query-result-list
                              #:metric-query-result-status #:metric-statistic
                              #:metric-values #:period #:put-metrics-error-code
                              #:raw-metric-data #:raw-metric-data-list
                              #:sage-maker-metrics-service
                              #:sage-maker-resource-arn #:step #:timestamp
                              #:xaxis-type #:xaxis-values))
(common-lisp:in-package #:pira/sagemaker-metrics)

(smithy/sdk/service:define-service sage-maker-metrics-service :shape-name
                                   "SageMakerMetricsService" :version
                                   "2022-09-30" :title
                                   "Amazon SageMaker Metrics Service" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "SageMaker Metrics")
                                      ("arnNamespace" . "sagemaker")
                                      ("cloudFormationName"
                                       . "SageMakerMetrics")
                                      ("cloudTrailEventSource"
                                       . "sagemakermetrics.amazonaws.com")
                                      ("endpointPrefix" . "metrics.sagemaker"))
                                     ("aws.auth#sigv4" ("name" . "sagemaker"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-input batch-get-metrics-request common-lisp:nil
                                ((metric-queries :target-type metric-query-list
                                  :required common-lisp:t :member-name
                                  "MetricQueries"))
                                (:shape-name "BatchGetMetricsRequest"))

(smithy/sdk/shapes:define-output batch-get-metrics-response common-lisp:nil
                                 ((metric-query-results :target-type
                                   metric-query-result-list :member-name
                                   "MetricQueryResults"))
                                 (:shape-name "BatchGetMetricsResponse"))

(smithy/sdk/shapes:define-structure batch-put-metrics-error common-lisp:nil
                                    ((code :target-type put-metrics-error-code
                                      :member-name "Code")
                                     (metric-index :target-type integer
                                      :member-name "MetricIndex"))
                                    (:shape-name "BatchPutMetricsError"))

(smithy/sdk/shapes:define-list batch-put-metrics-error-list :member
                               batch-put-metrics-error)

(smithy/sdk/shapes:define-input batch-put-metrics-request common-lisp:nil
                                ((trial-component-name :target-type
                                  experiment-entity-name :required
                                  common-lisp:t :member-name
                                  "TrialComponentName")
                                 (metric-data :target-type raw-metric-data-list
                                  :required common-lisp:t :member-name
                                  "MetricData"))
                                (:shape-name "BatchPutMetricsRequest"))

(smithy/sdk/shapes:define-output batch-put-metrics-response common-lisp:nil
                                 ((errors :target-type
                                   batch-put-metrics-error-list :member-name
                                   "Errors"))
                                 (:shape-name "BatchPutMetricsResponse"))

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type experiment-entity-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type metric-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure metric-query common-lisp:nil
                                    ((metric-name :target-type metric-name
                                      :required common-lisp:t :member-name
                                      "MetricName")
                                     (resource-arn :target-type
                                      sage-maker-resource-arn :required
                                      common-lisp:t :member-name "ResourceArn")
                                     (metric-stat :target-type metric-statistic
                                      :required common-lisp:t :member-name
                                      "MetricStat")
                                     (period :target-type period :required
                                      common-lisp:t :member-name "Period")
                                     (xaxis-type :target-type xaxis-type
                                      :required common-lisp:t :member-name
                                      "XAxisType")
                                     (start :target-type long :member-name
                                      "Start")
                                     (end :target-type long :member-name
                                      "End"))
                                    (:shape-name "MetricQuery"))

(smithy/sdk/shapes:define-list metric-query-list :member metric-query)

(smithy/sdk/shapes:define-structure metric-query-result common-lisp:nil
                                    ((status :target-type
                                      metric-query-result-status :required
                                      common-lisp:t :member-name "Status")
                                     (message :target-type message :member-name
                                      "Message")
                                     (xaxis-values :target-type xaxis-values
                                      :required common-lisp:t :member-name
                                      "XAxisValues")
                                     (metric-values :target-type metric-values
                                      :required common-lisp:t :member-name
                                      "MetricValues"))
                                    (:shape-name "MetricQueryResult"))

(smithy/sdk/shapes:define-list metric-query-result-list :member
                               metric-query-result)

(smithy/sdk/shapes:define-enum metric-query-result-status
    common-lisp:nil
  (:complete "Complete")
  (:truncated "Truncated")
  (:internal-error "InternalError")
  (:validation-error "ValidationError"))

(smithy/sdk/shapes:define-enum metric-statistic
    common-lisp:nil
  (:min "Min")
  (:max "Max")
  (:avg "Avg")
  (:count "Count")
  (:std-dev "StdDev")
  (:last "Last"))

(smithy/sdk/shapes:define-list metric-values :member double)

(smithy/sdk/shapes:define-enum period
    common-lisp:nil
  (:one-minute "OneMinute")
  (:five-minute "FiveMinute")
  (:one-hour "OneHour")
  (:iteration-number "IterationNumber"))

(smithy/sdk/shapes:define-enum put-metrics-error-code
    common-lisp:nil
  (:metric-limit-exceeded "METRIC_LIMIT_EXCEEDED")
  (:internal-error "INTERNAL_ERROR")
  (:validation-error "VALIDATION_ERROR")
  (:conflict-error "CONFLICT_ERROR"))

(smithy/sdk/shapes:define-structure raw-metric-data common-lisp:nil
                                    ((metric-name :target-type metric-name
                                      :required common-lisp:t :member-name
                                      "MetricName")
                                     (timestamp :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "Timestamp")
                                     (step :target-type step :member-name
                                      "Step")
                                     (value :target-type double :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "RawMetricData"))

(smithy/sdk/shapes:define-list raw-metric-data-list :member raw-metric-data)

(smithy/sdk/shapes:define-type sage-maker-resource-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type step smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-enum xaxis-type
    common-lisp:nil
  (:iteration-number "IterationNumber")
  (:timestamp "Timestamp"))

(smithy/sdk/shapes:define-list xaxis-values :member long)

(smithy/sdk/operation:define-operation batch-get-metrics :shape-name
                                       "BatchGetMetrics" :input
                                       batch-get-metrics-request :output
                                       batch-get-metrics-response :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/BatchGetMetrics" :code 200)

(smithy/sdk/operation:define-operation batch-put-metrics :shape-name
                                       "BatchPutMetrics" :input
                                       batch-put-metrics-request :output
                                       batch-put-metrics-response :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/BatchPutMetrics" :code 200)
