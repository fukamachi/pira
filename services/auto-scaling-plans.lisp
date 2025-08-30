(uiop/package:define-package #:pira/auto-scaling-plans (:use)
                             (:export
                              #:any-scale-scaling-planner-frontend-service
                              #:application-source #:application-sources
                              #:concurrent-update-exception #:cooldown
                              #:create-scaling-plan
                              #:customized-load-metric-specification
                              #:customized-scaling-metric-specification
                              #:datapoint #:datapoints #:delete-scaling-plan
                              #:describe-scaling-plan-resources
                              #:describe-scaling-plans
                              #:disable-dynamic-scaling #:disable-scale-in
                              #:error-message #:forecast-data-type
                              #:get-scaling-plan-resource-forecast-data
                              #:internal-service-exception
                              #:invalid-next-token-exception
                              #:limit-exceeded-exception #:load-metric-type
                              #:max-results #:metric-dimension
                              #:metric-dimension-name #:metric-dimension-value
                              #:metric-dimensions #:metric-name
                              #:metric-namespace #:metric-scale
                              #:metric-statistic #:metric-unit #:next-token
                              #:object-not-found-exception #:policy-name
                              #:policy-type
                              #:predefined-load-metric-specification
                              #:predefined-scaling-metric-specification
                              #:predictive-scaling-max-capacity-behavior
                              #:predictive-scaling-mode #:resource-capacity
                              #:resource-id-max-len1600 #:resource-label
                              #:scalable-dimension #:scaling-instruction
                              #:scaling-instructions #:scaling-metric-type
                              #:scaling-plan #:scaling-plan-name
                              #:scaling-plan-names #:scaling-plan-resource
                              #:scaling-plan-resources
                              #:scaling-plan-status-code #:scaling-plan-version
                              #:scaling-plans #:scaling-policies
                              #:scaling-policy #:scaling-policy-update-behavior
                              #:scaling-status-code
                              #:scheduled-action-buffer-time
                              #:service-namespace #:tag-filter #:tag-filters
                              #:tag-values #:target-tracking-configuration
                              #:target-tracking-configurations #:timestamp-type
                              #:update-scaling-plan #:validation-exception
                              #:xml-string #:xml-string-max-len128
                              #:xml-string-max-len256
                              #:auto-scaling-plans-error))
(common-lisp:in-package #:pira/auto-scaling-plans)

(common-lisp:define-condition auto-scaling-plans-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service any-scale-scaling-planner-frontend-service
                                   :shape-name
                                   "AnyScaleScalingPlannerFrontendService"
                                   :version "2018-01-06" :title
                                   "AWS Auto Scaling Plans" :operations
                                   '(create-scaling-plan delete-scaling-plan
                                     describe-scaling-plan-resources
                                     describe-scaling-plans
                                     get-scaling-plan-resource-forecast-data
                                     update-scaling-plan)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Auto Scaling Plans")
                                      ("arnNamespace" . "autoscaling-plans")
                                      ("cloudFormationName"
                                       . "AutoScalingPlans")
                                      ("cloudTrailEventSource"
                                       . "autoscalingplans.amazonaws.com")
                                      ("docId"
                                       . "autoscaling-plans-2018-01-06")
                                      ("endpointPrefix" . "autoscaling-plans"))
                                     ("aws.auth#sigv4"
                                      ("name" . "autoscaling-plans"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-structure application-source common-lisp:nil
                                    ((cloud-formation-stack-arn :target-type
                                      xml-string :member-name
                                      "CloudFormationStackARN")
                                     (tag-filters :target-type tag-filters
                                      :member-name "TagFilters"))
                                    (:shape-name "ApplicationSource"))

(smithy/sdk/shapes:define-list application-sources :member application-source)

(smithy/sdk/shapes:define-error concurrent-update-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ConcurrentUpdateException")
                                (:error-name "ConcurrentUpdateException")
                                (:error-code 500)
                                (:base-class auto-scaling-plans-error))

(smithy/sdk/shapes:define-type cooldown smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input create-scaling-plan-request common-lisp:nil
                                ((scaling-plan-name :target-type
                                  scaling-plan-name :required common-lisp:t
                                  :member-name "ScalingPlanName")
                                 (application-source :target-type
                                  application-source :required common-lisp:t
                                  :member-name "ApplicationSource")
                                 (scaling-instructions :target-type
                                  scaling-instructions :required common-lisp:t
                                  :member-name "ScalingInstructions"))
                                (:shape-name "CreateScalingPlanRequest"))

(smithy/sdk/shapes:define-output create-scaling-plan-response common-lisp:nil
                                 ((scaling-plan-version :target-type
                                   scaling-plan-version :required common-lisp:t
                                   :member-name "ScalingPlanVersion"))
                                 (:shape-name "CreateScalingPlanResponse"))

(smithy/sdk/shapes:define-structure customized-load-metric-specification
                                    common-lisp:nil
                                    ((metric-name :target-type metric-name
                                      :required common-lisp:t :member-name
                                      "MetricName")
                                     (namespace :target-type metric-namespace
                                      :required common-lisp:t :member-name
                                      "Namespace")
                                     (dimensions :target-type metric-dimensions
                                      :member-name "Dimensions")
                                     (statistic :target-type metric-statistic
                                      :required common-lisp:t :member-name
                                      "Statistic")
                                     (unit :target-type metric-unit
                                      :member-name "Unit"))
                                    (:shape-name
                                     "CustomizedLoadMetricSpecification"))

(smithy/sdk/shapes:define-structure customized-scaling-metric-specification
                                    common-lisp:nil
                                    ((metric-name :target-type metric-name
                                      :required common-lisp:t :member-name
                                      "MetricName")
                                     (namespace :target-type metric-namespace
                                      :required common-lisp:t :member-name
                                      "Namespace")
                                     (dimensions :target-type metric-dimensions
                                      :member-name "Dimensions")
                                     (statistic :target-type metric-statistic
                                      :required common-lisp:t :member-name
                                      "Statistic")
                                     (unit :target-type metric-unit
                                      :member-name "Unit"))
                                    (:shape-name
                                     "CustomizedScalingMetricSpecification"))

(smithy/sdk/shapes:define-structure datapoint common-lisp:nil
                                    ((timestamp :target-type timestamp-type
                                      :member-name "Timestamp")
                                     (value :target-type metric-scale
                                      :member-name "Value"))
                                    (:shape-name "Datapoint"))

(smithy/sdk/shapes:define-list datapoints :member datapoint)

(smithy/sdk/shapes:define-input delete-scaling-plan-request common-lisp:nil
                                ((scaling-plan-name :target-type
                                  scaling-plan-name :required common-lisp:t
                                  :member-name "ScalingPlanName")
                                 (scaling-plan-version :target-type
                                  scaling-plan-version :required common-lisp:t
                                  :member-name "ScalingPlanVersion"))
                                (:shape-name "DeleteScalingPlanRequest"))

(smithy/sdk/shapes:define-output delete-scaling-plan-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteScalingPlanResponse"))

(smithy/sdk/shapes:define-input describe-scaling-plan-resources-request
                                common-lisp:nil
                                ((scaling-plan-name :target-type
                                  scaling-plan-name :required common-lisp:t
                                  :member-name "ScalingPlanName")
                                 (scaling-plan-version :target-type
                                  scaling-plan-version :required common-lisp:t
                                  :member-name "ScalingPlanVersion")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "DescribeScalingPlanResourcesRequest"))

(smithy/sdk/shapes:define-output describe-scaling-plan-resources-response
                                 common-lisp:nil
                                 ((scaling-plan-resources :target-type
                                   scaling-plan-resources :member-name
                                   "ScalingPlanResources")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeScalingPlanResourcesResponse"))

(smithy/sdk/shapes:define-input describe-scaling-plans-request common-lisp:nil
                                ((scaling-plan-names :target-type
                                  scaling-plan-names :member-name
                                  "ScalingPlanNames")
                                 (scaling-plan-version :target-type
                                  scaling-plan-version :member-name
                                  "ScalingPlanVersion")
                                 (application-sources :target-type
                                  application-sources :member-name
                                  "ApplicationSources")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "DescribeScalingPlansRequest"))

(smithy/sdk/shapes:define-output describe-scaling-plans-response
                                 common-lisp:nil
                                 ((scaling-plans :target-type scaling-plans
                                   :member-name "ScalingPlans")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeScalingPlansResponse"))

(smithy/sdk/shapes:define-type disable-dynamic-scaling
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type disable-scale-in smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum forecast-data-type
    common-lisp:nil
  (:capacity-forecast "CapacityForecast")
  (:load-forecast "LoadForecast")
  (:scheduled-action-min-capacity "ScheduledActionMinCapacity")
  (:scheduled-action-max-capacity "ScheduledActionMaxCapacity"))

(smithy/sdk/shapes:define-input get-scaling-plan-resource-forecast-data-request
                                common-lisp:nil
                                ((scaling-plan-name :target-type
                                  scaling-plan-name :required common-lisp:t
                                  :member-name "ScalingPlanName")
                                 (scaling-plan-version :target-type
                                  scaling-plan-version :required common-lisp:t
                                  :member-name "ScalingPlanVersion")
                                 (service-namespace :target-type
                                  service-namespace :required common-lisp:t
                                  :member-name "ServiceNamespace")
                                 (resource-id :target-type xml-string :required
                                  common-lisp:t :member-name "ResourceId")
                                 (scalable-dimension :target-type
                                  scalable-dimension :required common-lisp:t
                                  :member-name "ScalableDimension")
                                 (forecast-data-type :target-type
                                  forecast-data-type :required common-lisp:t
                                  :member-name "ForecastDataType")
                                 (start-time :target-type timestamp-type
                                  :required common-lisp:t :member-name
                                  "StartTime")
                                 (end-time :target-type timestamp-type
                                  :required common-lisp:t :member-name
                                  "EndTime"))
                                (:shape-name
                                 "GetScalingPlanResourceForecastDataRequest"))

(smithy/sdk/shapes:define-output
 get-scaling-plan-resource-forecast-data-response common-lisp:nil
 ((datapoints :target-type datapoints :required common-lisp:t :member-name
   "Datapoints"))
 (:shape-name "GetScalingPlanResourceForecastDataResponse"))

(smithy/sdk/shapes:define-error internal-service-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InternalServiceException")
                                (:error-name "InternalServiceException")
                                (:error-code 500)
                                (:base-class auto-scaling-plans-error))

(smithy/sdk/shapes:define-error invalid-next-token-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidNextTokenException")
                                (:error-name "InvalidNextTokenException")
                                (:error-code 400)
                                (:base-class auto-scaling-plans-error))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "LimitExceededException")
                                (:error-name "LimitExceededException")
                                (:error-code 400)
                                (:base-class auto-scaling-plans-error))

(smithy/sdk/shapes:define-enum load-metric-type
    common-lisp:nil
  (:asgtotal-cpuutilization "ASGTotalCPUUtilization")
  (:asgtotal-network-in "ASGTotalNetworkIn")
  (:asgtotal-network-out "ASGTotalNetworkOut")
  (:albtarget-group-request-count "ALBTargetGroupRequestCount"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

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

(smithy/sdk/shapes:define-type metric-unit smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error object-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ObjectNotFoundException")
                                (:error-name "ObjectNotFoundException")
                                (:error-code 400)
                                (:base-class auto-scaling-plans-error))

(smithy/sdk/shapes:define-type policy-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum policy-type
    common-lisp:nil
  (:target-tracking-scaling "TargetTrackingScaling"))

(smithy/sdk/shapes:define-structure predefined-load-metric-specification
                                    common-lisp:nil
                                    ((predefined-load-metric-type :target-type
                                      load-metric-type :required common-lisp:t
                                      :member-name "PredefinedLoadMetricType")
                                     (resource-label :target-type
                                      resource-label :member-name
                                      "ResourceLabel"))
                                    (:shape-name
                                     "PredefinedLoadMetricSpecification"))

(smithy/sdk/shapes:define-structure predefined-scaling-metric-specification
                                    common-lisp:nil
                                    ((predefined-scaling-metric-type
                                      :target-type scaling-metric-type
                                      :required common-lisp:t :member-name
                                      "PredefinedScalingMetricType")
                                     (resource-label :target-type
                                      resource-label :member-name
                                      "ResourceLabel"))
                                    (:shape-name
                                     "PredefinedScalingMetricSpecification"))

(smithy/sdk/shapes:define-enum predictive-scaling-max-capacity-behavior
    common-lisp:nil
  (:set-forecast-capacity-to-max-capacity "SetForecastCapacityToMaxCapacity")
  (:set-max-capacity-to-forecast-capacity "SetMaxCapacityToForecastCapacity")
  (:set-max-capacity-above-forecast-capacity
   "SetMaxCapacityAboveForecastCapacity"))

(smithy/sdk/shapes:define-enum predictive-scaling-mode
    common-lisp:nil
  (:forecast-and-scale "ForecastAndScale")
  (:forecast-only "ForecastOnly"))

(smithy/sdk/shapes:define-type resource-capacity
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type resource-id-max-len1600
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-label smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum scalable-dimension
    common-lisp:nil
  (:auto-scaling-group-desired-capacity
   "autoscaling:autoScalingGroup:DesiredCapacity")
  (:ecsservice-desired-count "ecs:service:DesiredCount")
  (:ec2spot-fleet-request-target-capacity
   "ec2:spot-fleet-request:TargetCapacity")
  (:rdscluster-read-replica-count "rds:cluster:ReadReplicaCount")
  (:dynamo-dbtable-read-capacity-units "dynamodb:table:ReadCapacityUnits")
  (:dynamo-dbtable-write-capacity-units "dynamodb:table:WriteCapacityUnits")
  (:dynamo-dbindex-read-capacity-units "dynamodb:index:ReadCapacityUnits")
  (:dynamo-dbindex-write-capacity-units "dynamodb:index:WriteCapacityUnits"))

(smithy/sdk/shapes:define-structure scaling-instruction common-lisp:nil
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
                                     (target-tracking-configurations
                                      :target-type
                                      target-tracking-configurations :required
                                      common-lisp:t :member-name
                                      "TargetTrackingConfigurations")
                                     (predefined-load-metric-specification
                                      :target-type
                                      predefined-load-metric-specification
                                      :member-name
                                      "PredefinedLoadMetricSpecification")
                                     (customized-load-metric-specification
                                      :target-type
                                      customized-load-metric-specification
                                      :member-name
                                      "CustomizedLoadMetricSpecification")
                                     (scheduled-action-buffer-time :target-type
                                      scheduled-action-buffer-time :member-name
                                      "ScheduledActionBufferTime")
                                     (predictive-scaling-max-capacity-behavior
                                      :target-type
                                      predictive-scaling-max-capacity-behavior
                                      :member-name
                                      "PredictiveScalingMaxCapacityBehavior")
                                     (predictive-scaling-max-capacity-buffer
                                      :target-type resource-capacity
                                      :member-name
                                      "PredictiveScalingMaxCapacityBuffer")
                                     (predictive-scaling-mode :target-type
                                      predictive-scaling-mode :member-name
                                      "PredictiveScalingMode")
                                     (scaling-policy-update-behavior
                                      :target-type
                                      scaling-policy-update-behavior
                                      :member-name
                                      "ScalingPolicyUpdateBehavior")
                                     (disable-dynamic-scaling :target-type
                                      disable-dynamic-scaling :member-name
                                      "DisableDynamicScaling"))
                                    (:shape-name "ScalingInstruction"))

(smithy/sdk/shapes:define-list scaling-instructions :member scaling-instruction)

(smithy/sdk/shapes:define-enum scaling-metric-type
    common-lisp:nil
  (:asgaverage-cpuutilization "ASGAverageCPUUtilization")
  (:asgaverage-network-in "ASGAverageNetworkIn")
  (:asgaverage-network-out "ASGAverageNetworkOut")
  (:dynamo-dbread-capacity-utilization "DynamoDBReadCapacityUtilization")
  (:dynamo-dbwrite-capacity-utilization "DynamoDBWriteCapacityUtilization")
  (:ecsservice-average-cpuutilization "ECSServiceAverageCPUUtilization")
  (:ecsservice-average-memory-utilization "ECSServiceAverageMemoryUtilization")
  (:albrequest-count-per-target "ALBRequestCountPerTarget")
  (:rdsreader-average-cpuutilization "RDSReaderAverageCPUUtilization")
  (:rdsreader-average-database-connections
   "RDSReaderAverageDatabaseConnections")
  (:ec2spot-fleet-request-average-cpuutilization
   "EC2SpotFleetRequestAverageCPUUtilization")
  (:ec2spot-fleet-request-average-network-in
   "EC2SpotFleetRequestAverageNetworkIn")
  (:ec2spot-fleet-request-average-network-out
   "EC2SpotFleetRequestAverageNetworkOut"))

(smithy/sdk/shapes:define-structure scaling-plan common-lisp:nil
                                    ((scaling-plan-name :target-type
                                      scaling-plan-name :required common-lisp:t
                                      :member-name "ScalingPlanName")
                                     (scaling-plan-version :target-type
                                      scaling-plan-version :required
                                      common-lisp:t :member-name
                                      "ScalingPlanVersion")
                                     (application-source :target-type
                                      application-source :required
                                      common-lisp:t :member-name
                                      "ApplicationSource")
                                     (scaling-instructions :target-type
                                      scaling-instructions :required
                                      common-lisp:t :member-name
                                      "ScalingInstructions")
                                     (status-code :target-type
                                      scaling-plan-status-code :required
                                      common-lisp:t :member-name "StatusCode")
                                     (status-message :target-type xml-string
                                      :member-name "StatusMessage")
                                     (status-start-time :target-type
                                      timestamp-type :member-name
                                      "StatusStartTime")
                                     (creation-time :target-type timestamp-type
                                      :member-name "CreationTime"))
                                    (:shape-name "ScalingPlan"))

(smithy/sdk/shapes:define-type scaling-plan-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list scaling-plan-names :member scaling-plan-name)

(smithy/sdk/shapes:define-structure scaling-plan-resource common-lisp:nil
                                    ((scaling-plan-name :target-type
                                      scaling-plan-name :required common-lisp:t
                                      :member-name "ScalingPlanName")
                                     (scaling-plan-version :target-type
                                      scaling-plan-version :required
                                      common-lisp:t :member-name
                                      "ScalingPlanVersion")
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
                                     (scaling-policies :target-type
                                      scaling-policies :member-name
                                      "ScalingPolicies")
                                     (scaling-status-code :target-type
                                      scaling-status-code :required
                                      common-lisp:t :member-name
                                      "ScalingStatusCode")
                                     (scaling-status-message :target-type
                                      xml-string :member-name
                                      "ScalingStatusMessage"))
                                    (:shape-name "ScalingPlanResource"))

(smithy/sdk/shapes:define-list scaling-plan-resources :member
                               scaling-plan-resource)

(smithy/sdk/shapes:define-enum scaling-plan-status-code
    common-lisp:nil
  (:active "Active")
  (:active-with-problems "ActiveWithProblems")
  (:creation-in-progress "CreationInProgress")
  (:creation-failed "CreationFailed")
  (:deletion-in-progress "DeletionInProgress")
  (:deletion-failed "DeletionFailed")
  (:update-in-progress "UpdateInProgress")
  (:update-failed "UpdateFailed"))

(smithy/sdk/shapes:define-type scaling-plan-version
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-list scaling-plans :member scaling-plan)

(smithy/sdk/shapes:define-list scaling-policies :member scaling-policy)

(smithy/sdk/shapes:define-structure scaling-policy common-lisp:nil
                                    ((policy-name :target-type policy-name
                                      :required common-lisp:t :member-name
                                      "PolicyName")
                                     (policy-type :target-type policy-type
                                      :required common-lisp:t :member-name
                                      "PolicyType")
                                     (target-tracking-configuration
                                      :target-type
                                      target-tracking-configuration
                                      :member-name
                                      "TargetTrackingConfiguration"))
                                    (:shape-name "ScalingPolicy"))

(smithy/sdk/shapes:define-enum scaling-policy-update-behavior
    common-lisp:nil
  (:keep-external-policies "KeepExternalPolicies")
  (:replace-external-policies "ReplaceExternalPolicies"))

(smithy/sdk/shapes:define-enum scaling-status-code
    common-lisp:nil
  (:inactive "Inactive")
  (:partially-active "PartiallyActive")
  (:active "Active"))

(smithy/sdk/shapes:define-type scheduled-action-buffer-time
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum service-namespace
    common-lisp:nil
  (:autoscaling "autoscaling")
  (:ecs "ecs")
  (:ec2 "ec2")
  (:rds "rds")
  (:dynamodb "dynamodb"))

(smithy/sdk/shapes:define-structure tag-filter common-lisp:nil
                                    ((key :target-type xml-string-max-len128
                                      :member-name "Key")
                                     (values :target-type tag-values
                                      :member-name "Values"))
                                    (:shape-name "TagFilter"))

(smithy/sdk/shapes:define-list tag-filters :member tag-filter)

(smithy/sdk/shapes:define-list tag-values :member xml-string-max-len256)

(smithy/sdk/shapes:define-structure target-tracking-configuration
                                    common-lisp:nil
                                    ((predefined-scaling-metric-specification
                                      :target-type
                                      predefined-scaling-metric-specification
                                      :member-name
                                      "PredefinedScalingMetricSpecification")
                                     (customized-scaling-metric-specification
                                      :target-type
                                      customized-scaling-metric-specification
                                      :member-name
                                      "CustomizedScalingMetricSpecification")
                                     (target-value :target-type metric-scale
                                      :required common-lisp:t :member-name
                                      "TargetValue")
                                     (disable-scale-in :target-type
                                      disable-scale-in :member-name
                                      "DisableScaleIn")
                                     (scale-out-cooldown :target-type cooldown
                                      :member-name "ScaleOutCooldown")
                                     (scale-in-cooldown :target-type cooldown
                                      :member-name "ScaleInCooldown")
                                     (estimated-instance-warmup :target-type
                                      cooldown :member-name
                                      "EstimatedInstanceWarmup"))
                                    (:shape-name "TargetTrackingConfiguration"))

(smithy/sdk/shapes:define-list target-tracking-configurations :member
                               target-tracking-configuration)

(smithy/sdk/shapes:define-type timestamp-type smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input update-scaling-plan-request common-lisp:nil
                                ((scaling-plan-name :target-type
                                  scaling-plan-name :required common-lisp:t
                                  :member-name "ScalingPlanName")
                                 (scaling-plan-version :target-type
                                  scaling-plan-version :required common-lisp:t
                                  :member-name "ScalingPlanVersion")
                                 (application-source :target-type
                                  application-source :member-name
                                  "ApplicationSource")
                                 (scaling-instructions :target-type
                                  scaling-instructions :member-name
                                  "ScalingInstructions"))
                                (:shape-name "UpdateScalingPlanRequest"))

(smithy/sdk/shapes:define-output update-scaling-plan-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateScalingPlanResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ValidationException")
                                (:error-name "ValidationException")
                                (:error-code 400)
                                (:base-class auto-scaling-plans-error))

(smithy/sdk/shapes:define-type xml-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type xml-string-max-len128
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type xml-string-max-len256
                               smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-scaling-plan :shape-name
                                       "CreateScalingPlan" :input
                                       create-scaling-plan-request :output
                                       create-scaling-plan-response :errors
                                       (concurrent-update-exception
                                        internal-service-exception
                                        limit-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-scaling-plan :shape-name
                                       "DeleteScalingPlan" :input
                                       delete-scaling-plan-request :output
                                       delete-scaling-plan-response :errors
                                       (concurrent-update-exception
                                        internal-service-exception
                                        object-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-scaling-plan-resources
                                       :shape-name
                                       "DescribeScalingPlanResources" :input
                                       describe-scaling-plan-resources-request
                                       :output
                                       describe-scaling-plan-resources-response
                                       :errors
                                       (concurrent-update-exception
                                        internal-service-exception
                                        invalid-next-token-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-scaling-plans :shape-name
                                       "DescribeScalingPlans" :input
                                       describe-scaling-plans-request :output
                                       describe-scaling-plans-response :errors
                                       (concurrent-update-exception
                                        internal-service-exception
                                        invalid-next-token-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-scaling-plan-resource-forecast-data
                                       :shape-name
                                       "GetScalingPlanResourceForecastData"
                                       :input
                                       get-scaling-plan-resource-forecast-data-request
                                       :output
                                       get-scaling-plan-resource-forecast-data-response
                                       :errors
                                       (internal-service-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-scaling-plan :shape-name
                                       "UpdateScalingPlan" :input
                                       update-scaling-plan-request :output
                                       update-scaling-plan-response :errors
                                       (concurrent-update-exception
                                        internal-service-exception
                                        object-not-found-exception
                                        validation-exception))
