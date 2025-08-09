(uiop/package:define-package #:pira/application-auto-scaling (:use)
                             (:export #:adjustment-type #:alarm #:alarms
                              #:amazon-resource-name
                              #:any-scale-frontend-service #:capacity-forecast
                              #:cooldown #:customized-metric-specification
                              #:delete-scaling-policy #:delete-scheduled-action
                              #:deregister-scalable-target
                              #:describe-scalable-targets
                              #:describe-scaling-activities
                              #:describe-scaling-policies
                              #:describe-scheduled-actions #:disable-scale-in
                              #:error-message #:exception-message #:expression
                              #:get-predictive-scaling-forecast #:id
                              #:include-not-scaled-activities
                              #:list-tags-for-resource #:load-forecast
                              #:load-forecasts #:max-results
                              #:metric-aggregation-type #:metric-dimension
                              #:metric-dimension-name #:metric-dimension-value
                              #:metric-dimensions #:metric-name
                              #:metric-namespace #:metric-scale
                              #:metric-statistic #:metric-type #:metric-unit
                              #:min-adjustment-magnitude #:not-scaled-reason
                              #:not-scaled-reasons #:policy-name #:policy-type
                              #:predefined-metric-specification
                              #:predictive-scaling-customized-metric-specification
                              #:predictive-scaling-forecast-timestamps
                              #:predictive-scaling-forecast-values
                              #:predictive-scaling-max-capacity-breach-behavior
                              #:predictive-scaling-max-capacity-buffer
                              #:predictive-scaling-metric
                              #:predictive-scaling-metric-data-queries
                              #:predictive-scaling-metric-data-query
                              #:predictive-scaling-metric-dimension
                              #:predictive-scaling-metric-dimension-name
                              #:predictive-scaling-metric-dimension-value
                              #:predictive-scaling-metric-dimensions
                              #:predictive-scaling-metric-name
                              #:predictive-scaling-metric-namespace
                              #:predictive-scaling-metric-specification
                              #:predictive-scaling-metric-specifications
                              #:predictive-scaling-metric-stat
                              #:predictive-scaling-metric-type
                              #:predictive-scaling-metric-unit
                              #:predictive-scaling-mode
                              #:predictive-scaling-policy-configuration
                              #:predictive-scaling-predefined-load-metric-specification
                              #:predictive-scaling-predefined-metric-pair-specification
                              #:predictive-scaling-predefined-scaling-metric-specification
                              #:predictive-scaling-scheduling-buffer-time
                              #:put-scaling-policy #:put-scheduled-action
                              #:register-scalable-target #:resource-capacity
                              #:resource-id #:resource-id-max-len1600
                              #:resource-ids-max-len1600 #:resource-label
                              #:return-data #:scalable-dimension
                              #:scalable-target #:scalable-target-action
                              #:scalable-targets #:scaling-activities
                              #:scaling-activity #:scaling-activity-status-code
                              #:scaling-adjustment #:scaling-policies
                              #:scaling-policy #:scaling-suspended
                              #:scheduled-action #:scheduled-action-name
                              #:scheduled-actions #:service-namespace
                              #:step-adjustment #:step-adjustments
                              #:step-scaling-policy-configuration
                              #:suspended-state #:tag-key #:tag-key-list
                              #:tag-map #:tag-resource #:tag-value
                              #:target-tracking-metric
                              #:target-tracking-metric-data-queries
                              #:target-tracking-metric-data-query
                              #:target-tracking-metric-dimension
                              #:target-tracking-metric-dimension-name
                              #:target-tracking-metric-dimension-value
                              #:target-tracking-metric-dimensions
                              #:target-tracking-metric-name
                              #:target-tracking-metric-namespace
                              #:target-tracking-metric-stat
                              #:target-tracking-metric-unit
                              #:target-tracking-scaling-policy-configuration
                              #:timestamp-type #:untag-resource #:xml-string))
(common-lisp:in-package #:pira/application-auto-scaling)

(smithy/sdk/service:define-service any-scale-frontend-service :shape-name
                                   "AnyScaleFrontendService" :version
                                   "2016-02-06" :title
                                   "Application Auto Scaling" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Application Auto Scaling")
                                      ("arnNamespace"
                                       . "application-autoscaling")
                                      ("cloudFormationName"
                                       . "ApplicationAutoScaling")
                                      ("cloudTrailEventSource"
                                       . "applicationautoscaling.amazonaws.com")
                                      ("docId"
                                       . "application-autoscaling-2016-02-06")
                                      ("endpointPrefix"
                                       . "application-autoscaling"))
                                     ("aws.auth#sigv4"
                                      ("name" . "application-autoscaling"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-enum adjustment-type
    common-lisp:nil
  (:change-in-capacity "ChangeInCapacity")
  (:percent-change-in-capacity "PercentChangeInCapacity")
  (:exact-capacity "ExactCapacity"))

(smithy/sdk/shapes:define-structure alarm common-lisp:nil
                                    ((alarm-name :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "AlarmName")
                                     (alarm-arn :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "AlarmARN"))
                                    (:shape-name "Alarm"))

(smithy/sdk/shapes:define-list alarms :member alarm)

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure capacity-forecast common-lisp:nil
                                    ((timestamps :target-type
                                      predictive-scaling-forecast-timestamps
                                      :required common-lisp:t :member-name
                                      "Timestamps")
                                     (values :target-type
                                      predictive-scaling-forecast-values
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name "CapacityForecast"))

(smithy/sdk/shapes:define-error concurrent-update-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ConcurrentUpdateException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type cooldown smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure customized-metric-specification
                                    common-lisp:nil
                                    ((metric-name :target-type metric-name
                                      :member-name "MetricName")
                                     (namespace :target-type metric-namespace
                                      :member-name "Namespace")
                                     (dimensions :target-type metric-dimensions
                                      :member-name "Dimensions")
                                     (statistic :target-type metric-statistic
                                      :member-name "Statistic")
                                     (unit :target-type metric-unit
                                      :member-name "Unit")
                                     (metrics :target-type
                                      target-tracking-metric-data-queries
                                      :member-name "Metrics"))
                                    (:shape-name
                                     "CustomizedMetricSpecification"))

(smithy/sdk/shapes:define-input delete-scaling-policy-request common-lisp:nil
                                ((policy-name :target-type
                                  resource-id-max-len1600 :required
                                  common-lisp:t :member-name "PolicyName")
                                 (service-namespace :target-type
                                  service-namespace :required common-lisp:t
                                  :member-name "ServiceNamespace")
                                 (resource-id :target-type
                                  resource-id-max-len1600 :required
                                  common-lisp:t :member-name "ResourceId")
                                 (scalable-dimension :target-type
                                  scalable-dimension :required common-lisp:t
                                  :member-name "ScalableDimension"))
                                (:shape-name "DeleteScalingPolicyRequest"))

(smithy/sdk/shapes:define-output delete-scaling-policy-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteScalingPolicyResponse"))

(smithy/sdk/shapes:define-input delete-scheduled-action-request common-lisp:nil
                                ((service-namespace :target-type
                                  service-namespace :required common-lisp:t
                                  :member-name "ServiceNamespace")
                                 (scheduled-action-name :target-type
                                  resource-id-max-len1600 :required
                                  common-lisp:t :member-name
                                  "ScheduledActionName")
                                 (resource-id :target-type
                                  resource-id-max-len1600 :required
                                  common-lisp:t :member-name "ResourceId")
                                 (scalable-dimension :target-type
                                  scalable-dimension :required common-lisp:t
                                  :member-name "ScalableDimension"))
                                (:shape-name "DeleteScheduledActionRequest"))

(smithy/sdk/shapes:define-output delete-scheduled-action-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteScheduledActionResponse"))

(smithy/sdk/shapes:define-input deregister-scalable-target-request
                                common-lisp:nil
                                ((service-namespace :target-type
                                  service-namespace :required common-lisp:t
                                  :member-name "ServiceNamespace")
                                 (resource-id :target-type
                                  resource-id-max-len1600 :required
                                  common-lisp:t :member-name "ResourceId")
                                 (scalable-dimension :target-type
                                  scalable-dimension :required common-lisp:t
                                  :member-name "ScalableDimension"))
                                (:shape-name "DeregisterScalableTargetRequest"))

(smithy/sdk/shapes:define-output deregister-scalable-target-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeregisterScalableTargetResponse"))

(smithy/sdk/shapes:define-input describe-scalable-targets-request
                                common-lisp:nil
                                ((service-namespace :target-type
                                  service-namespace :required common-lisp:t
                                  :member-name "ServiceNamespace")
                                 (resource-ids :target-type
                                  resource-ids-max-len1600 :member-name
                                  "ResourceIds")
                                 (scalable-dimension :target-type
                                  scalable-dimension :member-name
                                  "ScalableDimension")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type xml-string
                                  :member-name "NextToken"))
                                (:shape-name "DescribeScalableTargetsRequest"))

(smithy/sdk/shapes:define-output describe-scalable-targets-response
                                 common-lisp:nil
                                 ((scalable-targets :target-type
                                   scalable-targets :member-name
                                   "ScalableTargets")
                                  (next-token :target-type xml-string
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeScalableTargetsResponse"))

(smithy/sdk/shapes:define-input describe-scaling-activities-request
                                common-lisp:nil
                                ((service-namespace :target-type
                                  service-namespace :required common-lisp:t
                                  :member-name "ServiceNamespace")
                                 (resource-id :target-type
                                  resource-id-max-len1600 :member-name
                                  "ResourceId")
                                 (scalable-dimension :target-type
                                  scalable-dimension :member-name
                                  "ScalableDimension")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type xml-string
                                  :member-name "NextToken")
                                 (include-not-scaled-activities :target-type
                                  include-not-scaled-activities :member-name
                                  "IncludeNotScaledActivities"))
                                (:shape-name
                                 "DescribeScalingActivitiesRequest"))

(smithy/sdk/shapes:define-output describe-scaling-activities-response
                                 common-lisp:nil
                                 ((scaling-activities :target-type
                                   scaling-activities :member-name
                                   "ScalingActivities")
                                  (next-token :target-type xml-string
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeScalingActivitiesResponse"))

(smithy/sdk/shapes:define-input describe-scaling-policies-request
                                common-lisp:nil
                                ((policy-names :target-type
                                  resource-ids-max-len1600 :member-name
                                  "PolicyNames")
                                 (service-namespace :target-type
                                  service-namespace :required common-lisp:t
                                  :member-name "ServiceNamespace")
                                 (resource-id :target-type
                                  resource-id-max-len1600 :member-name
                                  "ResourceId")
                                 (scalable-dimension :target-type
                                  scalable-dimension :member-name
                                  "ScalableDimension")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type xml-string
                                  :member-name "NextToken"))
                                (:shape-name "DescribeScalingPoliciesRequest"))

(smithy/sdk/shapes:define-output describe-scaling-policies-response
                                 common-lisp:nil
                                 ((scaling-policies :target-type
                                   scaling-policies :member-name
                                   "ScalingPolicies")
                                  (next-token :target-type xml-string
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeScalingPoliciesResponse"))

(smithy/sdk/shapes:define-input describe-scheduled-actions-request
                                common-lisp:nil
                                ((scheduled-action-names :target-type
                                  resource-ids-max-len1600 :member-name
                                  "ScheduledActionNames")
                                 (service-namespace :target-type
                                  service-namespace :required common-lisp:t
                                  :member-name "ServiceNamespace")
                                 (resource-id :target-type
                                  resource-id-max-len1600 :member-name
                                  "ResourceId")
                                 (scalable-dimension :target-type
                                  scalable-dimension :member-name
                                  "ScalableDimension")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type xml-string
                                  :member-name "NextToken"))
                                (:shape-name "DescribeScheduledActionsRequest"))

(smithy/sdk/shapes:define-output describe-scheduled-actions-response
                                 common-lisp:nil
                                 ((scheduled-actions :target-type
                                   scheduled-actions :member-name
                                   "ScheduledActions")
                                  (next-token :target-type xml-string
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeScheduledActionsResponse"))

(smithy/sdk/shapes:define-type disable-scale-in smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type expression smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error failed-resource-access-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "FailedResourceAccessException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input get-predictive-scaling-forecast-request
                                common-lisp:nil
                                ((service-namespace :target-type
                                  service-namespace :required common-lisp:t
                                  :member-name "ServiceNamespace")
                                 (resource-id :target-type
                                  resource-id-max-len1600 :required
                                  common-lisp:t :member-name "ResourceId")
                                 (scalable-dimension :target-type
                                  scalable-dimension :required common-lisp:t
                                  :member-name "ScalableDimension")
                                 (policy-name :target-type policy-name
                                  :required common-lisp:t :member-name
                                  "PolicyName")
                                 (start-time :target-type timestamp-type
                                  :required common-lisp:t :member-name
                                  "StartTime")
                                 (end-time :target-type timestamp-type
                                  :required common-lisp:t :member-name
                                  "EndTime"))
                                (:shape-name
                                 "GetPredictiveScalingForecastRequest"))

(smithy/sdk/shapes:define-output get-predictive-scaling-forecast-response
                                 common-lisp:nil
                                 ((load-forecast :target-type load-forecasts
                                   :member-name "LoadForecast")
                                  (capacity-forecast :target-type
                                   capacity-forecast :member-name
                                   "CapacityForecast")
                                  (update-time :target-type timestamp-type
                                   :member-name "UpdateTime"))
                                 (:shape-name
                                  "GetPredictiveScalingForecastResponse"))

(smithy/sdk/shapes:define-type id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type include-not-scaled-activities
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error internal-service-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InternalServiceException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-next-token-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidNextTokenException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-structure load-forecast common-lisp:nil
                                    ((timestamps :target-type
                                      predictive-scaling-forecast-timestamps
                                      :required common-lisp:t :member-name
                                      "Timestamps")
                                     (values :target-type
                                      predictive-scaling-forecast-values
                                      :required common-lisp:t :member-name
                                      "Values")
                                     (metric-specification :target-type
                                      predictive-scaling-metric-specification
                                      :required common-lisp:t :member-name
                                      "MetricSpecification"))
                                    (:shape-name "LoadForecast"))

(smithy/sdk/shapes:define-list load-forecasts :member load-forecast)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum metric-aggregation-type
    common-lisp:nil
  (:average "Average")
  (:minimum "Minimum")
  (:maximum "Maximum"))

(smithy/sdk/shapes:define-structure metric-dimension common-lisp:nil
                                    ((name :target-type metric-dimension-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (value :target-type metric-dimension-value
                                      :required common-lisp:t :member-name
                                      "Value"))
                                    (:shape-name "MetricDimension"))

(smithy/sdk/shapes:define-type metric-dimension-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type metric-dimension-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list metric-dimensions :member metric-dimension)

(smithy/sdk/shapes:define-type metric-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type metric-namespace smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type metric-scale smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-enum metric-statistic
    common-lisp:nil
  (:average "Average")
  (:minimum "Minimum")
  (:maximum "Maximum")
  (:sample-count "SampleCount")
  (:sum "Sum"))

(smithy/sdk/shapes:define-enum metric-type
    common-lisp:nil
  (:dynamo-dbread-capacity-utilization "DynamoDBReadCapacityUtilization")
  (:dynamo-dbwrite-capacity-utilization "DynamoDBWriteCapacityUtilization")
  (:albrequest-count-per-target "ALBRequestCountPerTarget")
  (:rdsreader-average-cpuutilization "RDSReaderAverageCPUUtilization")
  (:rdsreader-average-database-connections
   "RDSReaderAverageDatabaseConnections")
  (:ec2spot-fleet-request-average-cpuutilization
   "EC2SpotFleetRequestAverageCPUUtilization")
  (:ec2spot-fleet-request-average-network-in
   "EC2SpotFleetRequestAverageNetworkIn")
  (:ec2spot-fleet-request-average-network-out
   "EC2SpotFleetRequestAverageNetworkOut")
  (:sage-maker-variant-invocations-per-instance
   "SageMakerVariantInvocationsPerInstance")
  (:ecsservice-average-cpuutilization "ECSServiceAverageCPUUtilization")
  (:ecsservice-average-memory-utilization "ECSServiceAverageMemoryUtilization")
  (:app-stream-average-capacity-utilization
   "AppStreamAverageCapacityUtilization")
  (:comprehend-inference-utilization "ComprehendInferenceUtilization")
  (:lambda-provisioned-concurrency-utilization
   "LambdaProvisionedConcurrencyUtilization")
  (:cassandra-read-capacity-utilization "CassandraReadCapacityUtilization")
  (:cassandra-write-capacity-utilization "CassandraWriteCapacityUtilization")
  (:kafka-broker-storage-utilization "KafkaBrokerStorageUtilization")
  (:elasti-cache-engine-cpuutilization "ElastiCacheEngineCPUUtilization")
  (:elasti-cache-database-memory-usage-percentage
   "ElastiCacheDatabaseMemoryUsagePercentage")
  (:elasti-cache-primary-engine-cpuutilization
   "ElastiCachePrimaryEngineCPUUtilization")
  (:elasti-cache-replica-engine-cpuutilization
   "ElastiCacheReplicaEngineCPUUtilization")
  (:elasti-cache-database-memory-usage-counted-for-evict-percentage
   "ElastiCacheDatabaseMemoryUsageCountedForEvictPercentage")
  (:neptune-reader-average-cpuutilization "NeptuneReaderAverageCPUUtilization")
  (:sage-maker-variant-provisioned-concurrency-utilization
   "SageMakerVariantProvisionedConcurrencyUtilization")
  (:elasti-cache-database-capacity-usage-counted-for-evict-percentage
   "ElastiCacheDatabaseCapacityUsageCountedForEvictPercentage")
  (:sage-maker-inference-component-invocations-per-copy
   "SageMakerInferenceComponentInvocationsPerCopy")
  (:work-spaces-average-user-sessions-capacity-utilization
   "WorkSpacesAverageUserSessionsCapacityUtilization")
  (:sage-maker-inference-component-concurrent-requests-per-copy-high-resolution
   "SageMakerInferenceComponentConcurrentRequestsPerCopyHighResolution")
  (:sage-maker-variant-concurrent-requests-per-model-high-resolution
   "SageMakerVariantConcurrentRequestsPerModelHighResolution"))

(smithy/sdk/shapes:define-type metric-unit smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type min-adjustment-magnitude
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure not-scaled-reason common-lisp:nil
                                    ((code :target-type xml-string :required
                                      common-lisp:t :member-name "Code")
                                     (max-capacity :target-type
                                      resource-capacity :member-name
                                      "MaxCapacity")
                                     (min-capacity :target-type
                                      resource-capacity :member-name
                                      "MinCapacity")
                                     (current-capacity :target-type
                                      resource-capacity :member-name
                                      "CurrentCapacity"))
                                    (:shape-name "NotScaledReason"))

(smithy/sdk/shapes:define-list not-scaled-reasons :member not-scaled-reason)

(smithy/sdk/shapes:define-error object-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ObjectNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type policy-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum policy-type
    common-lisp:nil
  (:step-scaling "StepScaling")
  (:target-tracking-scaling "TargetTrackingScaling")
  (:predictive-scaling "PredictiveScaling"))

(smithy/sdk/shapes:define-structure predefined-metric-specification
                                    common-lisp:nil
                                    ((predefined-metric-type :target-type
                                      metric-type :required common-lisp:t
                                      :member-name "PredefinedMetricType")
                                     (resource-label :target-type
                                      resource-label :member-name
                                      "ResourceLabel"))
                                    (:shape-name
                                     "PredefinedMetricSpecification"))

(smithy/sdk/shapes:define-structure
 predictive-scaling-customized-metric-specification common-lisp:nil
 ((metric-data-queries :target-type predictive-scaling-metric-data-queries
   :required common-lisp:t :member-name "MetricDataQueries"))
 (:shape-name "PredictiveScalingCustomizedMetricSpecification"))

(smithy/sdk/shapes:define-list predictive-scaling-forecast-timestamps :member
                               timestamp-type)

(smithy/sdk/shapes:define-list predictive-scaling-forecast-values :member
                               metric-scale)

(smithy/sdk/shapes:define-enum predictive-scaling-max-capacity-breach-behavior
    common-lisp:nil
  (:honor-max-capacity "HonorMaxCapacity")
  (:increase-max-capacity "IncreaseMaxCapacity"))

(smithy/sdk/shapes:define-type predictive-scaling-max-capacity-buffer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure predictive-scaling-metric common-lisp:nil
                                    ((dimensions :target-type
                                      predictive-scaling-metric-dimensions
                                      :member-name "Dimensions")
                                     (metric-name :target-type
                                      predictive-scaling-metric-name
                                      :member-name "MetricName")
                                     (namespace :target-type
                                      predictive-scaling-metric-namespace
                                      :member-name "Namespace"))
                                    (:shape-name "PredictiveScalingMetric"))

(smithy/sdk/shapes:define-list predictive-scaling-metric-data-queries :member
                               predictive-scaling-metric-data-query)

(smithy/sdk/shapes:define-structure predictive-scaling-metric-data-query
                                    common-lisp:nil
                                    ((id :target-type id :required
                                      common-lisp:t :member-name "Id")
                                     (expression :target-type expression
                                      :member-name "Expression")
                                     (metric-stat :target-type
                                      predictive-scaling-metric-stat
                                      :member-name "MetricStat")
                                     (label :target-type xml-string
                                      :member-name "Label")
                                     (return-data :target-type return-data
                                      :member-name "ReturnData"))
                                    (:shape-name
                                     "PredictiveScalingMetricDataQuery"))

(smithy/sdk/shapes:define-structure predictive-scaling-metric-dimension
                                    common-lisp:nil
                                    ((name :target-type
                                      predictive-scaling-metric-dimension-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (value :target-type
                                      predictive-scaling-metric-dimension-value
                                      :required common-lisp:t :member-name
                                      "Value"))
                                    (:shape-name
                                     "PredictiveScalingMetricDimension"))

(smithy/sdk/shapes:define-type predictive-scaling-metric-dimension-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type predictive-scaling-metric-dimension-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list predictive-scaling-metric-dimensions :member
                               predictive-scaling-metric-dimension)

(smithy/sdk/shapes:define-type predictive-scaling-metric-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type predictive-scaling-metric-namespace
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure predictive-scaling-metric-specification
                                    common-lisp:nil
                                    ((target-value :target-type metric-scale
                                      :required common-lisp:t :member-name
                                      "TargetValue")
                                     (predefined-metric-pair-specification
                                      :target-type
                                      predictive-scaling-predefined-metric-pair-specification
                                      :member-name
                                      "PredefinedMetricPairSpecification")
                                     (predefined-scaling-metric-specification
                                      :target-type
                                      predictive-scaling-predefined-scaling-metric-specification
                                      :member-name
                                      "PredefinedScalingMetricSpecification")
                                     (predefined-load-metric-specification
                                      :target-type
                                      predictive-scaling-predefined-load-metric-specification
                                      :member-name
                                      "PredefinedLoadMetricSpecification")
                                     (customized-scaling-metric-specification
                                      :target-type
                                      predictive-scaling-customized-metric-specification
                                      :member-name
                                      "CustomizedScalingMetricSpecification")
                                     (customized-load-metric-specification
                                      :target-type
                                      predictive-scaling-customized-metric-specification
                                      :member-name
                                      "CustomizedLoadMetricSpecification")
                                     (customized-capacity-metric-specification
                                      :target-type
                                      predictive-scaling-customized-metric-specification
                                      :member-name
                                      "CustomizedCapacityMetricSpecification"))
                                    (:shape-name
                                     "PredictiveScalingMetricSpecification"))

(smithy/sdk/shapes:define-list predictive-scaling-metric-specifications :member
                               predictive-scaling-metric-specification)

(smithy/sdk/shapes:define-structure predictive-scaling-metric-stat
                                    common-lisp:nil
                                    ((metric :target-type
                                      predictive-scaling-metric :required
                                      common-lisp:t :member-name "Metric")
                                     (stat :target-type xml-string :required
                                      common-lisp:t :member-name "Stat")
                                     (unit :target-type
                                      predictive-scaling-metric-unit
                                      :member-name "Unit"))
                                    (:shape-name "PredictiveScalingMetricStat"))

(smithy/sdk/shapes:define-type predictive-scaling-metric-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type predictive-scaling-metric-unit
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum predictive-scaling-mode
    common-lisp:nil
  (:forecast-only "ForecastOnly")
  (:forecast-and-scale "ForecastAndScale"))

(smithy/sdk/shapes:define-structure predictive-scaling-policy-configuration
                                    common-lisp:nil
                                    ((metric-specifications :target-type
                                      predictive-scaling-metric-specifications
                                      :required common-lisp:t :member-name
                                      "MetricSpecifications")
                                     (mode :target-type predictive-scaling-mode
                                      :member-name "Mode")
                                     (scheduling-buffer-time :target-type
                                      predictive-scaling-scheduling-buffer-time
                                      :member-name "SchedulingBufferTime")
                                     (max-capacity-breach-behavior :target-type
                                      predictive-scaling-max-capacity-breach-behavior
                                      :member-name "MaxCapacityBreachBehavior")
                                     (max-capacity-buffer :target-type
                                      predictive-scaling-max-capacity-buffer
                                      :member-name "MaxCapacityBuffer"))
                                    (:shape-name
                                     "PredictiveScalingPolicyConfiguration"))

(smithy/sdk/shapes:define-structure
 predictive-scaling-predefined-load-metric-specification common-lisp:nil
 ((predefined-metric-type :target-type predictive-scaling-metric-type :required
   common-lisp:t :member-name "PredefinedMetricType")
  (resource-label :target-type resource-label :member-name "ResourceLabel"))
 (:shape-name "PredictiveScalingPredefinedLoadMetricSpecification"))

(smithy/sdk/shapes:define-structure
 predictive-scaling-predefined-metric-pair-specification common-lisp:nil
 ((predefined-metric-type :target-type predictive-scaling-metric-type :required
   common-lisp:t :member-name "PredefinedMetricType")
  (resource-label :target-type resource-label :member-name "ResourceLabel"))
 (:shape-name "PredictiveScalingPredefinedMetricPairSpecification"))

(smithy/sdk/shapes:define-structure
 predictive-scaling-predefined-scaling-metric-specification common-lisp:nil
 ((predefined-metric-type :target-type predictive-scaling-metric-type :required
   common-lisp:t :member-name "PredefinedMetricType")
  (resource-label :target-type resource-label :member-name "ResourceLabel"))
 (:shape-name "PredictiveScalingPredefinedScalingMetricSpecification"))

(smithy/sdk/shapes:define-type predictive-scaling-scheduling-buffer-time
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input put-scaling-policy-request common-lisp:nil
                                ((policy-name :target-type policy-name
                                  :required common-lisp:t :member-name
                                  "PolicyName")
                                 (service-namespace :target-type
                                  service-namespace :required common-lisp:t
                                  :member-name "ServiceNamespace")
                                 (resource-id :target-type
                                  resource-id-max-len1600 :required
                                  common-lisp:t :member-name "ResourceId")
                                 (scalable-dimension :target-type
                                  scalable-dimension :required common-lisp:t
                                  :member-name "ScalableDimension")
                                 (policy-type :target-type policy-type
                                  :member-name "PolicyType")
                                 (step-scaling-policy-configuration
                                  :target-type
                                  step-scaling-policy-configuration
                                  :member-name
                                  "StepScalingPolicyConfiguration")
                                 (target-tracking-scaling-policy-configuration
                                  :target-type
                                  target-tracking-scaling-policy-configuration
                                  :member-name
                                  "TargetTrackingScalingPolicyConfiguration")
                                 (predictive-scaling-policy-configuration
                                  :target-type
                                  predictive-scaling-policy-configuration
                                  :member-name
                                  "PredictiveScalingPolicyConfiguration"))
                                (:shape-name "PutScalingPolicyRequest"))

(smithy/sdk/shapes:define-output put-scaling-policy-response common-lisp:nil
                                 ((policy-arn :target-type
                                   resource-id-max-len1600 :required
                                   common-lisp:t :member-name "PolicyARN")
                                  (alarms :target-type alarms :member-name
                                   "Alarms"))
                                 (:shape-name "PutScalingPolicyResponse"))

(smithy/sdk/shapes:define-input put-scheduled-action-request common-lisp:nil
                                ((service-namespace :target-type
                                  service-namespace :required common-lisp:t
                                  :member-name "ServiceNamespace")
                                 (schedule :target-type resource-id-max-len1600
                                  :member-name "Schedule")
                                 (timezone :target-type resource-id-max-len1600
                                  :member-name "Timezone")
                                 (scheduled-action-name :target-type
                                  scheduled-action-name :required common-lisp:t
                                  :member-name "ScheduledActionName")
                                 (resource-id :target-type
                                  resource-id-max-len1600 :required
                                  common-lisp:t :member-name "ResourceId")
                                 (scalable-dimension :target-type
                                  scalable-dimension :required common-lisp:t
                                  :member-name "ScalableDimension")
                                 (start-time :target-type timestamp-type
                                  :member-name "StartTime")
                                 (end-time :target-type timestamp-type
                                  :member-name "EndTime")
                                 (scalable-target-action :target-type
                                  scalable-target-action :member-name
                                  "ScalableTargetAction"))
                                (:shape-name "PutScheduledActionRequest"))

(smithy/sdk/shapes:define-output put-scheduled-action-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "PutScheduledActionResponse"))

(smithy/sdk/shapes:define-input register-scalable-target-request
                                common-lisp:nil
                                ((service-namespace :target-type
                                  service-namespace :required common-lisp:t
                                  :member-name "ServiceNamespace")
                                 (resource-id :target-type
                                  resource-id-max-len1600 :required
                                  common-lisp:t :member-name "ResourceId")
                                 (scalable-dimension :target-type
                                  scalable-dimension :required common-lisp:t
                                  :member-name "ScalableDimension")
                                 (min-capacity :target-type resource-capacity
                                  :member-name "MinCapacity")
                                 (max-capacity :target-type resource-capacity
                                  :member-name "MaxCapacity")
                                 (role-arn :target-type resource-id-max-len1600
                                  :member-name "RoleARN")
                                 (suspended-state :target-type suspended-state
                                  :member-name "SuspendedState")
                                 (tags :target-type tag-map :member-name
                                  "Tags"))
                                (:shape-name "RegisterScalableTargetRequest"))

(smithy/sdk/shapes:define-output register-scalable-target-response
                                 common-lisp:nil
                                 ((scalable-target-arn :target-type xml-string
                                   :member-name "ScalableTargetARN"))
                                 (:shape-name "RegisterScalableTargetResponse"))

(smithy/sdk/shapes:define-type resource-capacity
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-id-max-len1600
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-ids-max-len1600 :member
                               resource-id-max-len1600)

(smithy/sdk/shapes:define-type resource-label smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (resource-name :target-type
                                  amazon-resource-name :member-name
                                  "ResourceName"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type return-data smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum scalable-dimension
    common-lisp:nil
  (:ecsservice-desired-count "ecs:service:DesiredCount")
  (:ec2spot-fleet-request-target-capacity
   "ec2:spot-fleet-request:TargetCapacity")
  (:emrinstance-group-instance-count
   "elasticmapreduce:instancegroup:InstanceCount")
  (:appstream-fleet-desired-capacity "appstream:fleet:DesiredCapacity")
  (:dynamo-dbtable-read-capacity-units "dynamodb:table:ReadCapacityUnits")
  (:dynamo-dbtable-write-capacity-units "dynamodb:table:WriteCapacityUnits")
  (:dynamo-dbindex-read-capacity-units "dynamodb:index:ReadCapacityUnits")
  (:dynamo-dbindex-write-capacity-units "dynamodb:index:WriteCapacityUnits")
  (:rdscluster-read-replica-count "rds:cluster:ReadReplicaCount")
  (:sage-maker-variant-desired-instance-count
   "sagemaker:variant:DesiredInstanceCount")
  (:custom-resource-scalable-dimension "custom-resource:ResourceType:Property")
  (:comprehend-doc-classifier-endpoint-inference-units
   "comprehend:document-classifier-endpoint:DesiredInferenceUnits")
  (:comprehend-entity-recognizer-endpoint-inference-units
   "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits")
  (:lambda-function-provisioned-concurrency
   "lambda:function:ProvisionedConcurrency")
  (:cassandra-table-read-capacity-units "cassandra:table:ReadCapacityUnits")
  (:cassandra-table-write-capacity-units "cassandra:table:WriteCapacityUnits")
  (:kafka-broker-storage-volume-size "kafka:broker-storage:VolumeSize")
  (:elasti-cache-cache-cluster-nodes "elasticache:cache-cluster:Nodes")
  (:elasti-cache-replication-group-node-groups
   "elasticache:replication-group:NodeGroups")
  (:elasti-cache-replication-group-replicas
   "elasticache:replication-group:Replicas")
  (:neptune-cluster-read-replica-count "neptune:cluster:ReadReplicaCount")
  (:sage-maker-variant-desired-provisioned-concurrency
   "sagemaker:variant:DesiredProvisionedConcurrency")
  (:sage-maker-inference-component-desired-copy-count
   "sagemaker:inference-component:DesiredCopyCount")
  (:work-spaces-work-spaces-pool-desired-user-sessions
   "workspaces:workspacespool:DesiredUserSessions"))

(smithy/sdk/shapes:define-structure scalable-target common-lisp:nil
                                    ((service-namespace :target-type
                                      service-namespace :required common-lisp:t
                                      :member-name "ServiceNamespace")
                                     (resource-id :target-type
                                      resource-id-max-len1600 :required
                                      common-lisp:t :member-name "ResourceId")
                                     (scalable-dimension :target-type
                                      scalable-dimension :required
                                      common-lisp:t :member-name
                                      "ScalableDimension")
                                     (min-capacity :target-type
                                      resource-capacity :required common-lisp:t
                                      :member-name "MinCapacity")
                                     (max-capacity :target-type
                                      resource-capacity :required common-lisp:t
                                      :member-name "MaxCapacity")
                                     (predicted-capacity :target-type
                                      resource-capacity :member-name
                                      "PredictedCapacity")
                                     (role-arn :target-type
                                      resource-id-max-len1600 :required
                                      common-lisp:t :member-name "RoleARN")
                                     (creation-time :target-type timestamp-type
                                      :required common-lisp:t :member-name
                                      "CreationTime")
                                     (suspended-state :target-type
                                      suspended-state :member-name
                                      "SuspendedState")
                                     (scalable-target-arn :target-type
                                      xml-string :member-name
                                      "ScalableTargetARN"))
                                    (:shape-name "ScalableTarget"))

(smithy/sdk/shapes:define-structure scalable-target-action common-lisp:nil
                                    ((min-capacity :target-type
                                      resource-capacity :member-name
                                      "MinCapacity")
                                     (max-capacity :target-type
                                      resource-capacity :member-name
                                      "MaxCapacity"))
                                    (:shape-name "ScalableTargetAction"))

(smithy/sdk/shapes:define-list scalable-targets :member scalable-target)

(smithy/sdk/shapes:define-list scaling-activities :member scaling-activity)

(smithy/sdk/shapes:define-structure scaling-activity common-lisp:nil
                                    ((activity-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "ActivityId")
                                     (service-namespace :target-type
                                      service-namespace :required common-lisp:t
                                      :member-name "ServiceNamespace")
                                     (resource-id :target-type
                                      resource-id-max-len1600 :required
                                      common-lisp:t :member-name "ResourceId")
                                     (scalable-dimension :target-type
                                      scalable-dimension :required
                                      common-lisp:t :member-name
                                      "ScalableDimension")
                                     (description :target-type xml-string
                                      :required common-lisp:t :member-name
                                      "Description")
                                     (cause :target-type xml-string :required
                                      common-lisp:t :member-name "Cause")
                                     (start-time :target-type timestamp-type
                                      :required common-lisp:t :member-name
                                      "StartTime")
                                     (end-time :target-type timestamp-type
                                      :member-name "EndTime")
                                     (status-code :target-type
                                      scaling-activity-status-code :required
                                      common-lisp:t :member-name "StatusCode")
                                     (status-message :target-type xml-string
                                      :member-name "StatusMessage")
                                     (details :target-type xml-string
                                      :member-name "Details")
                                     (not-scaled-reasons :target-type
                                      not-scaled-reasons :member-name
                                      "NotScaledReasons"))
                                    (:shape-name "ScalingActivity"))

(smithy/sdk/shapes:define-enum scaling-activity-status-code
    common-lisp:nil
  (:pending "Pending")
  (:in-progress "InProgress")
  (:successful "Successful")
  (:overridden "Overridden")
  (:unfulfilled "Unfulfilled")
  (:failed "Failed"))

(smithy/sdk/shapes:define-type scaling-adjustment
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list scaling-policies :member scaling-policy)

(smithy/sdk/shapes:define-structure scaling-policy common-lisp:nil
                                    ((policy-arn :target-type
                                      resource-id-max-len1600 :required
                                      common-lisp:t :member-name "PolicyARN")
                                     (policy-name :target-type policy-name
                                      :required common-lisp:t :member-name
                                      "PolicyName")
                                     (service-namespace :target-type
                                      service-namespace :required common-lisp:t
                                      :member-name "ServiceNamespace")
                                     (resource-id :target-type
                                      resource-id-max-len1600 :required
                                      common-lisp:t :member-name "ResourceId")
                                     (scalable-dimension :target-type
                                      scalable-dimension :required
                                      common-lisp:t :member-name
                                      "ScalableDimension")
                                     (policy-type :target-type policy-type
                                      :required common-lisp:t :member-name
                                      "PolicyType")
                                     (step-scaling-policy-configuration
                                      :target-type
                                      step-scaling-policy-configuration
                                      :member-name
                                      "StepScalingPolicyConfiguration")
                                     (target-tracking-scaling-policy-configuration
                                      :target-type
                                      target-tracking-scaling-policy-configuration
                                      :member-name
                                      "TargetTrackingScalingPolicyConfiguration")
                                     (predictive-scaling-policy-configuration
                                      :target-type
                                      predictive-scaling-policy-configuration
                                      :member-name
                                      "PredictiveScalingPolicyConfiguration")
                                     (alarms :target-type alarms :member-name
                                      "Alarms")
                                     (creation-time :target-type timestamp-type
                                      :required common-lisp:t :member-name
                                      "CreationTime"))
                                    (:shape-name "ScalingPolicy"))

(smithy/sdk/shapes:define-type scaling-suspended
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure scheduled-action common-lisp:nil
                                    ((scheduled-action-name :target-type
                                      scheduled-action-name :required
                                      common-lisp:t :member-name
                                      "ScheduledActionName")
                                     (scheduled-action-arn :target-type
                                      resource-id-max-len1600 :required
                                      common-lisp:t :member-name
                                      "ScheduledActionARN")
                                     (service-namespace :target-type
                                      service-namespace :required common-lisp:t
                                      :member-name "ServiceNamespace")
                                     (schedule :target-type
                                      resource-id-max-len1600 :required
                                      common-lisp:t :member-name "Schedule")
                                     (timezone :target-type
                                      resource-id-max-len1600 :member-name
                                      "Timezone")
                                     (resource-id :target-type
                                      resource-id-max-len1600 :required
                                      common-lisp:t :member-name "ResourceId")
                                     (scalable-dimension :target-type
                                      scalable-dimension :member-name
                                      "ScalableDimension")
                                     (start-time :target-type timestamp-type
                                      :member-name "StartTime")
                                     (end-time :target-type timestamp-type
                                      :member-name "EndTime")
                                     (scalable-target-action :target-type
                                      scalable-target-action :member-name
                                      "ScalableTargetAction")
                                     (creation-time :target-type timestamp-type
                                      :required common-lisp:t :member-name
                                      "CreationTime"))
                                    (:shape-name "ScheduledAction"))

(smithy/sdk/shapes:define-type scheduled-action-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list scheduled-actions :member scheduled-action)

(smithy/sdk/shapes:define-enum service-namespace
    common-lisp:nil
  (:ecs "ecs")
  (:emr "elasticmapreduce")
  (:ec2 "ec2")
  (:appstream "appstream")
  (:dynamodb "dynamodb")
  (:rds "rds")
  (:sagemaker "sagemaker")
  (:custom-resource "custom-resource")
  (:comprehend "comprehend")
  (:lambda "lambda")
  (:cassandra "cassandra")
  (:kafka "kafka")
  (:elasticache "elasticache")
  (:neptune "neptune")
  (:workspaces "workspaces"))

(smithy/sdk/shapes:define-structure step-adjustment common-lisp:nil
                                    ((metric-interval-lower-bound :target-type
                                      metric-scale :member-name
                                      "MetricIntervalLowerBound")
                                     (metric-interval-upper-bound :target-type
                                      metric-scale :member-name
                                      "MetricIntervalUpperBound")
                                     (scaling-adjustment :target-type
                                      scaling-adjustment :required
                                      common-lisp:t :member-name
                                      "ScalingAdjustment"))
                                    (:shape-name "StepAdjustment"))

(smithy/sdk/shapes:define-list step-adjustments :member step-adjustment)

(smithy/sdk/shapes:define-structure step-scaling-policy-configuration
                                    common-lisp:nil
                                    ((adjustment-type :target-type
                                      adjustment-type :member-name
                                      "AdjustmentType")
                                     (step-adjustments :target-type
                                      step-adjustments :member-name
                                      "StepAdjustments")
                                     (min-adjustment-magnitude :target-type
                                      min-adjustment-magnitude :member-name
                                      "MinAdjustmentMagnitude")
                                     (cooldown :target-type cooldown
                                      :member-name "Cooldown")
                                     (metric-aggregation-type :target-type
                                      metric-aggregation-type :member-name
                                      "MetricAggregationType"))
                                    (:shape-name
                                     "StepScalingPolicyConfiguration"))

(smithy/sdk/shapes:define-structure suspended-state common-lisp:nil
                                    ((dynamic-scaling-in-suspended :target-type
                                      scaling-suspended :member-name
                                      "DynamicScalingInSuspended")
                                     (dynamic-scaling-out-suspended
                                      :target-type scaling-suspended
                                      :member-name
                                      "DynamicScalingOutSuspended")
                                     (scheduled-scaling-suspended :target-type
                                      scaling-suspended :member-name
                                      "ScheduledScalingSuspended"))
                                    (:shape-name "SuspendedState"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure target-tracking-metric common-lisp:nil
                                    ((dimensions :target-type
                                      target-tracking-metric-dimensions
                                      :member-name "Dimensions")
                                     (metric-name :target-type
                                      target-tracking-metric-name :member-name
                                      "MetricName")
                                     (namespace :target-type
                                      target-tracking-metric-namespace
                                      :member-name "Namespace"))
                                    (:shape-name "TargetTrackingMetric"))

(smithy/sdk/shapes:define-list target-tracking-metric-data-queries :member
                               target-tracking-metric-data-query)

(smithy/sdk/shapes:define-structure target-tracking-metric-data-query
                                    common-lisp:nil
                                    ((expression :target-type expression
                                      :member-name "Expression")
                                     (id :target-type id :required
                                      common-lisp:t :member-name "Id")
                                     (label :target-type xml-string
                                      :member-name "Label")
                                     (metric-stat :target-type
                                      target-tracking-metric-stat :member-name
                                      "MetricStat")
                                     (return-data :target-type return-data
                                      :member-name "ReturnData"))
                                    (:shape-name
                                     "TargetTrackingMetricDataQuery"))

(smithy/sdk/shapes:define-structure target-tracking-metric-dimension
                                    common-lisp:nil
                                    ((name :target-type
                                      target-tracking-metric-dimension-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (value :target-type
                                      target-tracking-metric-dimension-value
                                      :required common-lisp:t :member-name
                                      "Value"))
                                    (:shape-name
                                     "TargetTrackingMetricDimension"))

(smithy/sdk/shapes:define-type target-tracking-metric-dimension-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-tracking-metric-dimension-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list target-tracking-metric-dimensions :member
                               target-tracking-metric-dimension)

(smithy/sdk/shapes:define-type target-tracking-metric-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-tracking-metric-namespace
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure target-tracking-metric-stat common-lisp:nil
                                    ((metric :target-type
                                      target-tracking-metric :required
                                      common-lisp:t :member-name "Metric")
                                     (stat :target-type xml-string :required
                                      common-lisp:t :member-name "Stat")
                                     (unit :target-type
                                      target-tracking-metric-unit :member-name
                                      "Unit"))
                                    (:shape-name "TargetTrackingMetricStat"))

(smithy/sdk/shapes:define-type target-tracking-metric-unit
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 target-tracking-scaling-policy-configuration common-lisp:nil
 ((target-value :target-type metric-scale :required common-lisp:t :member-name
   "TargetValue")
  (predefined-metric-specification :target-type predefined-metric-specification
   :member-name "PredefinedMetricSpecification")
  (customized-metric-specification :target-type customized-metric-specification
   :member-name "CustomizedMetricSpecification")
  (scale-out-cooldown :target-type cooldown :member-name "ScaleOutCooldown")
  (scale-in-cooldown :target-type cooldown :member-name "ScaleInCooldown")
  (disable-scale-in :target-type disable-scale-in :member-name
   "DisableScaleIn"))
 (:shape-name "TargetTrackingScalingPolicyConfiguration"))

(smithy/sdk/shapes:define-type timestamp-type smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (resource-name :target-type
                                  amazon-resource-name :member-name
                                  "ResourceName"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type xml-string smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation delete-scaling-policy :shape-name
                                       "DeleteScalingPolicy" :input
                                       delete-scaling-policy-request :output
                                       delete-scaling-policy-response :errors
                                       (concurrent-update-exception
                                        internal-service-exception
                                        object-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-scheduled-action :shape-name
                                       "DeleteScheduledAction" :input
                                       delete-scheduled-action-request :output
                                       delete-scheduled-action-response :errors
                                       (concurrent-update-exception
                                        internal-service-exception
                                        object-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation deregister-scalable-target :shape-name
                                       "DeregisterScalableTarget" :input
                                       deregister-scalable-target-request
                                       :output
                                       deregister-scalable-target-response
                                       :errors
                                       (concurrent-update-exception
                                        internal-service-exception
                                        object-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-scalable-targets :shape-name
                                       "DescribeScalableTargets" :input
                                       describe-scalable-targets-request
                                       :output
                                       describe-scalable-targets-response
                                       :errors
                                       (concurrent-update-exception
                                        internal-service-exception
                                        invalid-next-token-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-scaling-activities :shape-name
                                       "DescribeScalingActivities" :input
                                       describe-scaling-activities-request
                                       :output
                                       describe-scaling-activities-response
                                       :errors
                                       (concurrent-update-exception
                                        internal-service-exception
                                        invalid-next-token-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-scaling-policies :shape-name
                                       "DescribeScalingPolicies" :input
                                       describe-scaling-policies-request
                                       :output
                                       describe-scaling-policies-response
                                       :errors
                                       (concurrent-update-exception
                                        failed-resource-access-exception
                                        internal-service-exception
                                        invalid-next-token-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-scheduled-actions :shape-name
                                       "DescribeScheduledActions" :input
                                       describe-scheduled-actions-request
                                       :output
                                       describe-scheduled-actions-response
                                       :errors
                                       (concurrent-update-exception
                                        internal-service-exception
                                        invalid-next-token-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-predictive-scaling-forecast
                                       :shape-name
                                       "GetPredictiveScalingForecast" :input
                                       get-predictive-scaling-forecast-request
                                       :output
                                       get-predictive-scaling-forecast-response
                                       :errors
                                       (internal-service-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation put-scaling-policy :shape-name
                                       "PutScalingPolicy" :input
                                       put-scaling-policy-request :output
                                       put-scaling-policy-response :errors
                                       (concurrent-update-exception
                                        failed-resource-access-exception
                                        internal-service-exception
                                        limit-exceeded-exception
                                        object-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-scheduled-action :shape-name
                                       "PutScheduledAction" :input
                                       put-scheduled-action-request :output
                                       put-scheduled-action-response :errors
                                       (concurrent-update-exception
                                        internal-service-exception
                                        limit-exceeded-exception
                                        object-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation register-scalable-target :shape-name
                                       "RegisterScalableTarget" :input
                                       register-scalable-target-request :output
                                       register-scalable-target-response
                                       :errors
                                       (concurrent-update-exception
                                        internal-service-exception
                                        limit-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (resource-not-found-exception
                                        too-many-tags-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (resource-not-found-exception
                                        validation-exception))
