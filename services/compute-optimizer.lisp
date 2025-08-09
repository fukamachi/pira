(uiop/package:define-package #:pira/compute-optimizer (:use)
                             (:export #:access-denied-exception
                              #:account-enrollment-status
                              #:account-enrollment-statuses #:account-id
                              #:account-ids #:allocated-storage
                              #:allocation-strategy #:asg-type
                              #:auto-scaling-configuration
                              #:auto-scaling-group-arn
                              #:auto-scaling-group-arns
                              #:auto-scaling-group-configuration
                              #:auto-scaling-group-estimated-monthly-savings
                              #:auto-scaling-group-name
                              #:auto-scaling-group-recommendation
                              #:auto-scaling-group-recommendation-option
                              #:auto-scaling-group-recommendation-options
                              #:auto-scaling-group-recommendations
                              #:auto-scaling-group-savings-opportunity-after-discounts
                              #:code #:compute-optimizer-service
                              #:container-configuration
                              #:container-configurations #:container-name
                              #:container-recommendation
                              #:container-recommendations #:cpu-size
                              #:cpu-vendor-architecture
                              #:cpu-vendor-architectures #:creation-timestamp
                              #:currency #:current-dbinstance-class
                              #:current-instance-type
                              #:current-performance-risk
                              #:current-performance-risk-ratings
                              #:customizable-metric-headroom
                              #:customizable-metric-name
                              #:customizable-metric-parameters
                              #:customizable-metric-threshold
                              #:dbcluster-identifier #:dbinstance-class
                              #:dbstorage-configuration
                              #:delete-recommendation-preferences
                              #:delete-recommendation-preferences-request
                              #:delete-recommendation-preferences-response
                              #:describe-recommendation-export-jobs
                              #:describe-recommendation-export-jobs-request
                              #:describe-recommendation-export-jobs-response
                              #:desired-capacity #:destination-bucket
                              #:destination-key #:destination-key-prefix
                              #:dimension
                              #:ebseffective-recommendation-preferences
                              #:ebsestimated-monthly-savings #:ebsfilter
                              #:ebsfilter-name #:ebsfilters #:ebsfinding
                              #:ebsmetric-name #:ebssavings-estimation-mode
                              #:ebssavings-estimation-mode-source
                              #:ebssavings-opportunity-after-discounts
                              #:ebsutilization-metric #:ebsutilization-metrics
                              #:ecseffective-recommendation-preferences
                              #:ecsestimated-monthly-savings
                              #:ecssavings-estimation-mode
                              #:ecssavings-estimation-mode-source
                              #:ecssavings-opportunity-after-discounts
                              #:ecsservice-launch-type #:ecsservice-metric-name
                              #:ecsservice-metric-statistic
                              #:ecsservice-projected-metric
                              #:ecsservice-projected-metrics
                              #:ecsservice-projected-utilization-metric
                              #:ecsservice-projected-utilization-metrics
                              #:ecsservice-recommendation
                              #:ecsservice-recommendation-filter
                              #:ecsservice-recommendation-filter-name
                              #:ecsservice-recommendation-filters
                              #:ecsservice-recommendation-finding
                              #:ecsservice-recommendation-finding-reason-code
                              #:ecsservice-recommendation-finding-reason-codes
                              #:ecsservice-recommendation-option
                              #:ecsservice-recommendation-options
                              #:ecsservice-recommendations
                              #:ecsservice-recommended-option-projected-metric
                              #:ecsservice-recommended-option-projected-metrics
                              #:ecsservice-utilization-metric
                              #:ecsservice-utilization-metrics
                              #:effective-preferred-resource
                              #:effective-preferred-resources
                              #:effective-recommendation-preferences #:engine
                              #:engine-version
                              #:enhanced-infrastructure-metrics
                              #:enrollment-filter #:enrollment-filter-name
                              #:enrollment-filters #:error-message
                              #:estimated-monthly-savings
                              #:export-auto-scaling-group-recommendations
                              #:export-auto-scaling-group-recommendations-request
                              #:export-auto-scaling-group-recommendations-response
                              #:export-destination
                              #:export-ebsvolume-recommendations
                              #:export-ebsvolume-recommendations-request
                              #:export-ebsvolume-recommendations-response
                              #:export-ec2instance-recommendations
                              #:export-ec2instance-recommendations-request
                              #:export-ec2instance-recommendations-response
                              #:export-ecsservice-recommendations
                              #:export-ecsservice-recommendations-request
                              #:export-ecsservice-recommendations-response
                              #:export-idle-recommendations
                              #:export-idle-recommendations-request
                              #:export-idle-recommendations-response
                              #:export-lambda-function-recommendations
                              #:export-lambda-function-recommendations-request
                              #:export-lambda-function-recommendations-response
                              #:export-license-recommendations
                              #:export-license-recommendations-request
                              #:export-license-recommendations-response
                              #:export-rdsdatabase-recommendations
                              #:export-rdsdatabase-recommendations-request
                              #:export-rdsdatabase-recommendations-response
                              #:exportable-auto-scaling-group-field
                              #:exportable-auto-scaling-group-fields
                              #:exportable-ecsservice-field
                              #:exportable-ecsservice-fields
                              #:exportable-idle-field #:exportable-idle-fields
                              #:exportable-instance-field
                              #:exportable-instance-fields
                              #:exportable-lambda-function-field
                              #:exportable-lambda-function-fields
                              #:exportable-license-field
                              #:exportable-license-fields
                              #:exportable-rdsdbfield #:exportable-rdsdbfields
                              #:exportable-volume-field
                              #:exportable-volume-fields
                              #:external-metric-status
                              #:external-metric-status-code
                              #:external-metric-status-reason
                              #:external-metrics-preference
                              #:external-metrics-source #:failure-reason
                              #:file-format #:filter #:filter-name
                              #:filter-value #:filter-values #:filters
                              #:finding #:finding-reason-code #:function-arn
                              #:function-arns #:function-version
                              #:get-auto-scaling-group-recommendations
                              #:get-auto-scaling-group-recommendations-request
                              #:get-auto-scaling-group-recommendations-response
                              #:get-ebsvolume-recommendations
                              #:get-ebsvolume-recommendations-request
                              #:get-ebsvolume-recommendations-response
                              #:get-ec2instance-recommendations
                              #:get-ec2instance-recommendations-request
                              #:get-ec2instance-recommendations-response
                              #:get-ec2recommendation-projected-metrics
                              #:get-ec2recommendation-projected-metrics-request
                              #:get-ec2recommendation-projected-metrics-response
                              #:get-ecsservice-recommendation-projected-metrics
                              #:get-ecsservice-recommendation-projected-metrics-request
                              #:get-ecsservice-recommendation-projected-metrics-response
                              #:get-ecsservice-recommendations
                              #:get-ecsservice-recommendations-request
                              #:get-ecsservice-recommendations-response
                              #:get-effective-recommendation-preferences
                              #:get-effective-recommendation-preferences-request
                              #:get-effective-recommendation-preferences-response
                              #:get-enrollment-status
                              #:get-enrollment-status-request
                              #:get-enrollment-status-response
                              #:get-enrollment-statuses-for-organization
                              #:get-enrollment-statuses-for-organization-request
                              #:get-enrollment-statuses-for-organization-response
                              #:get-idle-recommendations
                              #:get-idle-recommendations-request
                              #:get-idle-recommendations-response
                              #:get-lambda-function-recommendations
                              #:get-lambda-function-recommendations-request
                              #:get-lambda-function-recommendations-response
                              #:get-license-recommendations
                              #:get-license-recommendations-request
                              #:get-license-recommendations-response
                              #:get-rdsdatabase-recommendation-projected-metrics
                              #:get-rdsdatabase-recommendation-projected-metrics-request
                              #:get-rdsdatabase-recommendation-projected-metrics-response
                              #:get-rdsdatabase-recommendations
                              #:get-rdsdatabase-recommendations-request
                              #:get-rdsdatabase-recommendations-response
                              #:get-recommendation-error
                              #:get-recommendation-errors
                              #:get-recommendation-preferences
                              #:get-recommendation-preferences-request
                              #:get-recommendation-preferences-response
                              #:get-recommendation-summaries
                              #:get-recommendation-summaries-request
                              #:get-recommendation-summaries-response #:gpu
                              #:gpu-count #:gpu-info #:gpu-memory-size-in-mi-b
                              #:gpus #:high #:identifier #:idle
                              #:idle-estimated-monthly-savings #:idle-finding
                              #:idle-finding-description #:idle-max-results
                              #:idle-metric-name #:idle-recommendation
                              #:idle-recommendation-error
                              #:idle-recommendation-errors
                              #:idle-recommendation-filter
                              #:idle-recommendation-filter-name
                              #:idle-recommendation-filters
                              #:idle-recommendation-resource-type
                              #:idle-recommendations #:idle-savings-opportunity
                              #:idle-savings-opportunity-after-discounts
                              #:idle-summaries #:idle-summary
                              #:idle-utilization-metric
                              #:idle-utilization-metrics
                              #:include-member-accounts
                              #:inferred-workload-saving
                              #:inferred-workload-savings
                              #:inferred-workload-type
                              #:inferred-workload-types
                              #:inferred-workload-types-preference
                              #:instance-arn #:instance-arns
                              #:instance-estimated-monthly-savings
                              #:instance-idle #:instance-name
                              #:instance-recommendation
                              #:instance-recommendation-finding-reason-code
                              #:instance-recommendation-finding-reason-codes
                              #:instance-recommendation-option
                              #:instance-recommendations
                              #:instance-savings-estimation-mode
                              #:instance-savings-estimation-mode-source
                              #:instance-savings-opportunity-after-discounts
                              #:instance-state #:instance-type
                              #:internal-server-exception
                              #:invalid-parameter-value-exception #:job-filter
                              #:job-filter-name #:job-filters #:job-id
                              #:job-ids #:job-status
                              #:lambda-effective-recommendation-preferences
                              #:lambda-estimated-monthly-savings
                              #:lambda-function-memory-metric-name
                              #:lambda-function-memory-metric-statistic
                              #:lambda-function-memory-projected-metric
                              #:lambda-function-memory-projected-metrics
                              #:lambda-function-memory-recommendation-option
                              #:lambda-function-memory-recommendation-options
                              #:lambda-function-metric-name
                              #:lambda-function-metric-statistic
                              #:lambda-function-recommendation
                              #:lambda-function-recommendation-filter
                              #:lambda-function-recommendation-filter-name
                              #:lambda-function-recommendation-filters
                              #:lambda-function-recommendation-finding
                              #:lambda-function-recommendation-finding-reason-code
                              #:lambda-function-recommendation-finding-reason-codes
                              #:lambda-function-recommendations
                              #:lambda-function-utilization-metric
                              #:lambda-function-utilization-metrics
                              #:lambda-savings-estimation-mode
                              #:lambda-savings-estimation-mode-source
                              #:lambda-savings-opportunity-after-discounts
                              #:last-refresh-timestamp #:last-updated-timestamp
                              #:license-configuration #:license-edition
                              #:license-finding #:license-finding-reason-code
                              #:license-finding-reason-codes #:license-model
                              #:license-name #:license-recommendation
                              #:license-recommendation-filter
                              #:license-recommendation-filter-name
                              #:license-recommendation-filters
                              #:license-recommendation-option
                              #:license-recommendation-options
                              #:license-recommendations #:license-version
                              #:limit-exceeded-exception
                              #:look-back-period-in-days
                              #:look-back-period-preference #:low
                              #:lower-bound-value #:max-results #:max-size
                              #:medium #:member-accounts-enrolled #:memory-size
                              #:memory-size-configuration #:message
                              #:metadata-key #:metric-name
                              #:metric-provider-arn #:metric-source
                              #:metric-source-provider #:metric-statistic
                              #:metric-value #:metric-values #:metrics-source
                              #:migration-effort #:min-size
                              #:missing-authentication-token
                              #:mixed-instance-type #:mixed-instance-types
                              #:next-token #:nullable-cpu
                              #:nullable-estimated-instance-hour-reduction-percentage
                              #:nullable-iops #:nullable-instance-type
                              #:nullable-max-allocated-storage
                              #:nullable-memory #:nullable-memory-reservation
                              #:nullable-storage-throughput #:number-of-cores
                              #:number-of-invocations
                              #:number-of-member-accounts-opted-in
                              #:operating-system #:opt-in-required-exception
                              #:order #:order-by #:performance-risk #:period
                              #:platform-difference #:platform-differences
                              #:preferred-resource #:preferred-resource-name
                              #:preferred-resource-value
                              #:preferred-resource-values #:preferred-resources
                              #:projected-metric #:projected-metrics
                              #:projected-utilization-metrics #:promotion-tier
                              #:put-recommendation-preferences
                              #:put-recommendation-preferences-request
                              #:put-recommendation-preferences-response
                              #:rdscurrent-instance-performance-risk
                              #:rdsdbinstance-recommendation-option
                              #:rdsdbinstance-recommendation-options
                              #:rdsdbmetric-name #:rdsdbmetric-statistic
                              #:rdsdbprojected-utilization-metrics
                              #:rdsdbrecommendation
                              #:rdsdbrecommendation-filter
                              #:rdsdbrecommendation-filter-name
                              #:rdsdbrecommendation-filters
                              #:rdsdbrecommendations
                              #:rdsdbstorage-recommendation-option
                              #:rdsdbstorage-recommendation-options
                              #:rdsdbutilization-metric
                              #:rdsdbutilization-metrics
                              #:rdsdatabase-projected-metric
                              #:rdsdatabase-projected-metrics
                              #:rdsdatabase-recommended-option-projected-metric
                              #:rdsdatabase-recommended-option-projected-metrics
                              #:rdseffective-recommendation-preferences
                              #:rdsestimated-monthly-volume-iops-cost-variation
                              #:rdsinstance-estimated-monthly-savings
                              #:rdsinstance-finding
                              #:rdsinstance-finding-reason-code
                              #:rdsinstance-finding-reason-codes
                              #:rdsinstance-savings-opportunity-after-discounts
                              #:rdssavings-estimation-mode
                              #:rdssavings-estimation-mode-source
                              #:rdsstorage-estimated-monthly-savings
                              #:rdsstorage-finding
                              #:rdsstorage-finding-reason-code
                              #:rdsstorage-finding-reason-codes
                              #:rdsstorage-savings-opportunity-after-discounts
                              #:rank #:reason-code-summaries
                              #:reason-code-summary #:recommendation-export-job
                              #:recommendation-export-jobs
                              #:recommendation-options
                              #:recommendation-preference-name
                              #:recommendation-preference-names
                              #:recommendation-preferences
                              #:recommendation-preferences-detail
                              #:recommendation-preferences-details
                              #:recommendation-source
                              #:recommendation-source-arn
                              #:recommendation-source-type
                              #:recommendation-sources
                              #:recommendation-summaries
                              #:recommendation-summary
                              #:recommended-dbinstance-class
                              #:recommended-instance-type
                              #:recommended-option-projected-metric
                              #:recommended-option-projected-metrics
                              #:resource-arn #:resource-arns #:resource-id
                              #:resource-not-found-exception #:resource-type
                              #:root-volume #:s3destination
                              #:s3destination-config #:savings-estimation-mode
                              #:savings-opportunity
                              #:savings-opportunity-percentage #:scope
                              #:scope-name #:scope-value #:service-arn
                              #:service-arns #:service-configuration
                              #:service-unavailable-exception #:status
                              #:status-reason #:storage-type #:summaries
                              #:summary #:summary-value #:tag #:tag-key
                              #:tag-value #:tags #:task-definition-arn
                              #:throttling-exception #:timestamp #:timestamps
                              #:update-enrollment-status
                              #:update-enrollment-status-request
                              #:update-enrollment-status-response
                              #:upper-bound-value #:utilization-metric
                              #:utilization-metrics #:utilization-preference
                              #:utilization-preferences #:value #:very-low
                              #:volume-arn #:volume-arns #:volume-baseline-iops
                              #:volume-baseline-throughput #:volume-burst-iops
                              #:volume-burst-throughput #:volume-configuration
                              #:volume-recommendation
                              #:volume-recommendation-option
                              #:volume-recommendation-options
                              #:volume-recommendations #:volume-size
                              #:volume-type))
(common-lisp:in-package #:pira/compute-optimizer)

(smithy/sdk/service:define-service compute-optimizer-service :shape-name
                                   "ComputeOptimizerService" :version
                                   "2019-11-01" :title "AWS Compute Optimizer"
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Compute Optimizer")
                                      ("arnNamespace" . "compute-optimizer")
                                      ("cloudFormationName"
                                       . "ComputeOptimizer")
                                      ("cloudTrailEventSource"
                                       . "computeoptimizer.amazonaws.com")
                                      ("endpointPrefix" . "compute-optimizer"))
                                     ("aws.auth#sigv4"
                                      ("name" . "compute-optimizer"))
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure account-enrollment-status common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "accountId")
                                     (status :target-type status :member-name
                                      "status")
                                     (status-reason :target-type status-reason
                                      :member-name "statusReason")
                                     (last-updated-timestamp :target-type
                                      last-updated-timestamp :member-name
                                      "lastUpdatedTimestamp"))
                                    (:shape-name "AccountEnrollmentStatus"))

(smithy/sdk/shapes:define-list account-enrollment-statuses :member
                               account-enrollment-status)

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list account-ids :member account-id)

(smithy/sdk/shapes:define-type allocated-storage
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum allocation-strategy
    common-lisp:nil
  (:prioritized "Prioritized")
  (:lowest-price "LowestPrice"))

(smithy/sdk/shapes:define-enum asg-type
    common-lisp:nil
  (:single-instance-type "SingleInstanceType")
  (:mixed-instance-type "MixedInstanceTypes"))

(smithy/sdk/shapes:define-enum auto-scaling-configuration
    common-lisp:nil
  (:target-tracking-scaling-cpu "TargetTrackingScalingCpu")
  (:target-tracking-scaling-memory "TargetTrackingScalingMemory"))

(smithy/sdk/shapes:define-type auto-scaling-group-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list auto-scaling-group-arns :member
                               auto-scaling-group-arn)

(smithy/sdk/shapes:define-structure auto-scaling-group-configuration
                                    common-lisp:nil
                                    ((desired-capacity :target-type
                                      desired-capacity :member-name
                                      "desiredCapacity")
                                     (min-size :target-type min-size
                                      :member-name "minSize")
                                     (max-size :target-type max-size
                                      :member-name "maxSize")
                                     (instance-type :target-type
                                      nullable-instance-type :member-name
                                      "instanceType")
                                     (allocation-strategy :target-type
                                      allocation-strategy :member-name
                                      "allocationStrategy")
                                     (estimated-instance-hour-reduction-percentage
                                      :target-type
                                      nullable-estimated-instance-hour-reduction-percentage
                                      :member-name
                                      "estimatedInstanceHourReductionPercentage")
                                     (type :target-type asg-type :member-name
                                      "type")
                                     (mixed-instance-types :target-type
                                      mixed-instance-types :member-name
                                      "mixedInstanceTypes"))
                                    (:shape-name
                                     "AutoScalingGroupConfiguration"))

(smithy/sdk/shapes:define-structure
 auto-scaling-group-estimated-monthly-savings common-lisp:nil
 ((currency :target-type currency :member-name "currency")
  (value :target-type value :member-name "value"))
 (:shape-name "AutoScalingGroupEstimatedMonthlySavings"))

(smithy/sdk/shapes:define-type auto-scaling-group-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure auto-scaling-group-recommendation
                                    common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "accountId")
                                     (auto-scaling-group-arn :target-type
                                      auto-scaling-group-arn :member-name
                                      "autoScalingGroupArn")
                                     (auto-scaling-group-name :target-type
                                      auto-scaling-group-name :member-name
                                      "autoScalingGroupName")
                                     (finding :target-type finding :member-name
                                      "finding")
                                     (utilization-metrics :target-type
                                      utilization-metrics :member-name
                                      "utilizationMetrics")
                                     (look-back-period-in-days :target-type
                                      look-back-period-in-days :member-name
                                      "lookBackPeriodInDays")
                                     (current-configuration :target-type
                                      auto-scaling-group-configuration
                                      :member-name "currentConfiguration")
                                     (current-instance-gpu-info :target-type
                                      gpu-info :member-name
                                      "currentInstanceGpuInfo")
                                     (recommendation-options :target-type
                                      auto-scaling-group-recommendation-options
                                      :member-name "recommendationOptions")
                                     (last-refresh-timestamp :target-type
                                      last-refresh-timestamp :member-name
                                      "lastRefreshTimestamp")
                                     (current-performance-risk :target-type
                                      current-performance-risk :member-name
                                      "currentPerformanceRisk")
                                     (effective-recommendation-preferences
                                      :target-type
                                      effective-recommendation-preferences
                                      :member-name
                                      "effectiveRecommendationPreferences")
                                     (inferred-workload-types :target-type
                                      inferred-workload-types :member-name
                                      "inferredWorkloadTypes"))
                                    (:shape-name
                                     "AutoScalingGroupRecommendation"))

(smithy/sdk/shapes:define-structure auto-scaling-group-recommendation-option
                                    common-lisp:nil
                                    ((configuration :target-type
                                      auto-scaling-group-configuration
                                      :member-name "configuration")
                                     (instance-gpu-info :target-type gpu-info
                                      :member-name "instanceGpuInfo")
                                     (projected-utilization-metrics
                                      :target-type
                                      projected-utilization-metrics
                                      :member-name
                                      "projectedUtilizationMetrics")
                                     (performance-risk :target-type
                                      performance-risk :member-name
                                      "performanceRisk")
                                     (rank :target-type rank :member-name
                                      "rank")
                                     (savings-opportunity :target-type
                                      savings-opportunity :member-name
                                      "savingsOpportunity")
                                     (savings-opportunity-after-discounts
                                      :target-type
                                      auto-scaling-group-savings-opportunity-after-discounts
                                      :member-name
                                      "savingsOpportunityAfterDiscounts")
                                     (migration-effort :target-type
                                      migration-effort :member-name
                                      "migrationEffort"))
                                    (:shape-name
                                     "AutoScalingGroupRecommendationOption"))

(smithy/sdk/shapes:define-list auto-scaling-group-recommendation-options
                               :member auto-scaling-group-recommendation-option)

(smithy/sdk/shapes:define-list auto-scaling-group-recommendations :member
                               auto-scaling-group-recommendation)

(smithy/sdk/shapes:define-structure
 auto-scaling-group-savings-opportunity-after-discounts common-lisp:nil
 ((savings-opportunity-percentage :target-type savings-opportunity-percentage
   :member-name "savingsOpportunityPercentage")
  (estimated-monthly-savings :target-type
   auto-scaling-group-estimated-monthly-savings :member-name
   "estimatedMonthlySavings"))
 (:shape-name "AutoScalingGroupSavingsOpportunityAfterDiscounts"))

(smithy/sdk/shapes:define-type code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure container-configuration common-lisp:nil
                                    ((container-name :target-type
                                      container-name :member-name
                                      "containerName")
                                     (memory-size-configuration :target-type
                                      memory-size-configuration :member-name
                                      "memorySizeConfiguration")
                                     (cpu :target-type nullable-cpu
                                      :member-name "cpu"))
                                    (:shape-name "ContainerConfiguration"))

(smithy/sdk/shapes:define-list container-configurations :member
                               container-configuration)

(smithy/sdk/shapes:define-type container-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure container-recommendation common-lisp:nil
                                    ((container-name :target-type
                                      container-name :member-name
                                      "containerName")
                                     (memory-size-configuration :target-type
                                      memory-size-configuration :member-name
                                      "memorySizeConfiguration")
                                     (cpu :target-type nullable-cpu
                                      :member-name "cpu"))
                                    (:shape-name "ContainerRecommendation"))

(smithy/sdk/shapes:define-list container-recommendations :member
                               container-recommendation)

(smithy/sdk/shapes:define-type cpu-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum cpu-vendor-architecture
    common-lisp:nil
  (:aws-arm64 "AWS_ARM64")
  (:current "CURRENT"))

(smithy/sdk/shapes:define-list cpu-vendor-architectures :member
                               cpu-vendor-architecture)

(smithy/sdk/shapes:define-type creation-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-enum currency
    common-lisp:nil
  (:usd "USD")
  (:cny "CNY"))

(smithy/sdk/shapes:define-type current-dbinstance-class
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type current-instance-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum current-performance-risk
    common-lisp:nil
  (:very-low "VeryLow")
  (:low "Low")
  (:medium "Medium")
  (:high "High"))

(smithy/sdk/shapes:define-structure current-performance-risk-ratings
                                    common-lisp:nil
                                    ((high :target-type high :member-name
                                      "high")
                                     (medium :target-type medium :member-name
                                      "medium")
                                     (low :target-type low :member-name "low")
                                     (very-low :target-type very-low
                                      :member-name "veryLow"))
                                    (:shape-name
                                     "CurrentPerformanceRiskRatings"))

(smithy/sdk/shapes:define-enum customizable-metric-headroom
    common-lisp:nil
  (:percent-30 "PERCENT_30")
  (:percent-20 "PERCENT_20")
  (:percent-10 "PERCENT_10")
  (:percent-0 "PERCENT_0"))

(smithy/sdk/shapes:define-enum customizable-metric-name
    common-lisp:nil
  (:cpu-utilization "CpuUtilization")
  (:memory-utilization "MemoryUtilization"))

(smithy/sdk/shapes:define-structure customizable-metric-parameters
                                    common-lisp:nil
                                    ((threshold :target-type
                                      customizable-metric-threshold
                                      :member-name "threshold")
                                     (headroom :target-type
                                      customizable-metric-headroom :member-name
                                      "headroom"))
                                    (:shape-name
                                     "CustomizableMetricParameters"))

(smithy/sdk/shapes:define-enum customizable-metric-threshold
    common-lisp:nil
  (:p90 "P90")
  (:p95 "P95")
  (:p99-5 "P99_5"))

(smithy/sdk/shapes:define-type dbcluster-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dbinstance-class smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure dbstorage-configuration common-lisp:nil
                                    ((storage-type :target-type storage-type
                                      :member-name "storageType")
                                     (allocated-storage :target-type
                                      allocated-storage :member-name
                                      "allocatedStorage")
                                     (iops :target-type nullable-iops
                                      :member-name "iops")
                                     (max-allocated-storage :target-type
                                      nullable-max-allocated-storage
                                      :member-name "maxAllocatedStorage")
                                     (storage-throughput :target-type
                                      nullable-storage-throughput :member-name
                                      "storageThroughput"))
                                    (:shape-name "DBStorageConfiguration"))

(smithy/sdk/shapes:define-input delete-recommendation-preferences-request
                                common-lisp:nil
                                ((resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "resourceType")
                                 (scope :target-type scope :member-name
                                  "scope")
                                 (recommendation-preference-names :target-type
                                  recommendation-preference-names :required
                                  common-lisp:t :member-name
                                  "recommendationPreferenceNames"))
                                (:shape-name
                                 "DeleteRecommendationPreferencesRequest"))

(smithy/sdk/shapes:define-output delete-recommendation-preferences-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteRecommendationPreferencesResponse"))

(smithy/sdk/shapes:define-input describe-recommendation-export-jobs-request
                                common-lisp:nil
                                ((job-ids :target-type job-ids :member-name
                                  "jobIds")
                                 (filters :target-type job-filters :member-name
                                  "filters")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name
                                 "DescribeRecommendationExportJobsRequest"))

(smithy/sdk/shapes:define-output describe-recommendation-export-jobs-response
                                 common-lisp:nil
                                 ((recommendation-export-jobs :target-type
                                   recommendation-export-jobs :member-name
                                   "recommendationExportJobs")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "DescribeRecommendationExportJobsResponse"))

(smithy/sdk/shapes:define-type desired-capacity smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type destination-bucket
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type destination-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type destination-key-prefix
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum dimension
    common-lisp:nil
  (:savings-value "SavingsValue")
  (:savings-value-after-discount "SavingsValueAfterDiscount"))

(smithy/sdk/shapes:define-structure ebseffective-recommendation-preferences
                                    common-lisp:nil
                                    ((savings-estimation-mode :target-type
                                      ebssavings-estimation-mode :member-name
                                      "savingsEstimationMode"))
                                    (:shape-name
                                     "EBSEffectiveRecommendationPreferences"))

(smithy/sdk/shapes:define-structure ebsestimated-monthly-savings
                                    common-lisp:nil
                                    ((currency :target-type currency
                                      :member-name "currency")
                                     (value :target-type value :member-name
                                      "value"))
                                    (:shape-name "EBSEstimatedMonthlySavings"))

(smithy/sdk/shapes:define-structure ebsfilter common-lisp:nil
                                    ((name :target-type ebsfilter-name
                                      :member-name "name")
                                     (values :target-type filter-values
                                      :member-name "values"))
                                    (:shape-name "EBSFilter"))

(smithy/sdk/shapes:define-enum ebsfilter-name
    common-lisp:nil
  (:finding "Finding"))

(smithy/sdk/shapes:define-list ebsfilters :member ebsfilter)

(smithy/sdk/shapes:define-enum ebsfinding
    common-lisp:nil
  (:optimized "Optimized")
  (:not-optimized "NotOptimized"))

(smithy/sdk/shapes:define-enum ebsmetric-name
    common-lisp:nil
  (:volume-read-ops-per-second "VolumeReadOpsPerSecond")
  (:volume-write-ops-per-second "VolumeWriteOpsPerSecond")
  (:volume-read-bytes-per-second "VolumeReadBytesPerSecond")
  (:volume-write-bytes-per-second "VolumeWriteBytesPerSecond"))

(smithy/sdk/shapes:define-structure ebssavings-estimation-mode common-lisp:nil
                                    ((source :target-type
                                      ebssavings-estimation-mode-source
                                      :member-name "source"))
                                    (:shape-name "EBSSavingsEstimationMode"))

(smithy/sdk/shapes:define-enum ebssavings-estimation-mode-source
    common-lisp:nil
  (:public-pricing "PublicPricing")
  (:cost-explorer-rightsizing "CostExplorerRightsizing")
  (:cost-optimization-hub "CostOptimizationHub"))

(smithy/sdk/shapes:define-structure ebssavings-opportunity-after-discounts
                                    common-lisp:nil
                                    ((savings-opportunity-percentage
                                      :target-type
                                      savings-opportunity-percentage
                                      :member-name
                                      "savingsOpportunityPercentage")
                                     (estimated-monthly-savings :target-type
                                      ebsestimated-monthly-savings :member-name
                                      "estimatedMonthlySavings"))
                                    (:shape-name
                                     "EBSSavingsOpportunityAfterDiscounts"))

(smithy/sdk/shapes:define-structure ebsutilization-metric common-lisp:nil
                                    ((name :target-type ebsmetric-name
                                      :member-name "name")
                                     (statistic :target-type metric-statistic
                                      :member-name "statistic")
                                     (value :target-type metric-value
                                      :member-name "value"))
                                    (:shape-name "EBSUtilizationMetric"))

(smithy/sdk/shapes:define-list ebsutilization-metrics :member
                               ebsutilization-metric)

(smithy/sdk/shapes:define-structure ecseffective-recommendation-preferences
                                    common-lisp:nil
                                    ((savings-estimation-mode :target-type
                                      ecssavings-estimation-mode :member-name
                                      "savingsEstimationMode"))
                                    (:shape-name
                                     "ECSEffectiveRecommendationPreferences"))

(smithy/sdk/shapes:define-structure ecsestimated-monthly-savings
                                    common-lisp:nil
                                    ((currency :target-type currency
                                      :member-name "currency")
                                     (value :target-type value :member-name
                                      "value"))
                                    (:shape-name "ECSEstimatedMonthlySavings"))

(smithy/sdk/shapes:define-structure ecssavings-estimation-mode common-lisp:nil
                                    ((source :target-type
                                      ecssavings-estimation-mode-source
                                      :member-name "source"))
                                    (:shape-name "ECSSavingsEstimationMode"))

(smithy/sdk/shapes:define-enum ecssavings-estimation-mode-source
    common-lisp:nil
  (:public-pricing "PublicPricing")
  (:cost-explorer-rightsizing "CostExplorerRightsizing")
  (:cost-optimization-hub "CostOptimizationHub"))

(smithy/sdk/shapes:define-structure ecssavings-opportunity-after-discounts
                                    common-lisp:nil
                                    ((savings-opportunity-percentage
                                      :target-type
                                      savings-opportunity-percentage
                                      :member-name
                                      "savingsOpportunityPercentage")
                                     (estimated-monthly-savings :target-type
                                      ecsestimated-monthly-savings :member-name
                                      "estimatedMonthlySavings"))
                                    (:shape-name
                                     "ECSSavingsOpportunityAfterDiscounts"))

(smithy/sdk/shapes:define-enum ecsservice-launch-type
    common-lisp:nil
  (:ec2 "EC2")
  (:fargate "Fargate"))

(smithy/sdk/shapes:define-enum ecsservice-metric-name
    common-lisp:nil
  (:cpu "Cpu")
  (:memory "Memory"))

(smithy/sdk/shapes:define-enum ecsservice-metric-statistic
    common-lisp:nil
  (:maximum "Maximum")
  (:average "Average"))

(smithy/sdk/shapes:define-structure ecsservice-projected-metric common-lisp:nil
                                    ((name :target-type ecsservice-metric-name
                                      :member-name "name")
                                     (timestamps :target-type timestamps
                                      :member-name "timestamps")
                                     (upper-bound-values :target-type
                                      metric-values :member-name
                                      "upperBoundValues")
                                     (lower-bound-values :target-type
                                      metric-values :member-name
                                      "lowerBoundValues"))
                                    (:shape-name "ECSServiceProjectedMetric"))

(smithy/sdk/shapes:define-list ecsservice-projected-metrics :member
                               ecsservice-projected-metric)

(smithy/sdk/shapes:define-structure ecsservice-projected-utilization-metric
                                    common-lisp:nil
                                    ((name :target-type ecsservice-metric-name
                                      :member-name "name")
                                     (statistic :target-type
                                      ecsservice-metric-statistic :member-name
                                      "statistic")
                                     (lower-bound-value :target-type
                                      lower-bound-value :member-name
                                      "lowerBoundValue")
                                     (upper-bound-value :target-type
                                      upper-bound-value :member-name
                                      "upperBoundValue"))
                                    (:shape-name
                                     "ECSServiceProjectedUtilizationMetric"))

(smithy/sdk/shapes:define-list ecsservice-projected-utilization-metrics :member
                               ecsservice-projected-utilization-metric)

(smithy/sdk/shapes:define-structure ecsservice-recommendation common-lisp:nil
                                    ((service-arn :target-type service-arn
                                      :member-name "serviceArn")
                                     (account-id :target-type account-id
                                      :member-name "accountId")
                                     (current-service-configuration
                                      :target-type service-configuration
                                      :member-name
                                      "currentServiceConfiguration")
                                     (utilization-metrics :target-type
                                      ecsservice-utilization-metrics
                                      :member-name "utilizationMetrics")
                                     (lookback-period-in-days :target-type
                                      look-back-period-in-days :member-name
                                      "lookbackPeriodInDays")
                                     (launch-type :target-type
                                      ecsservice-launch-type :member-name
                                      "launchType")
                                     (last-refresh-timestamp :target-type
                                      last-refresh-timestamp :member-name
                                      "lastRefreshTimestamp")
                                     (finding :target-type
                                      ecsservice-recommendation-finding
                                      :member-name "finding")
                                     (finding-reason-codes :target-type
                                      ecsservice-recommendation-finding-reason-codes
                                      :member-name "findingReasonCodes")
                                     (service-recommendation-options
                                      :target-type
                                      ecsservice-recommendation-options
                                      :member-name
                                      "serviceRecommendationOptions")
                                     (current-performance-risk :target-type
                                      current-performance-risk :member-name
                                      "currentPerformanceRisk")
                                     (effective-recommendation-preferences
                                      :target-type
                                      ecseffective-recommendation-preferences
                                      :member-name
                                      "effectiveRecommendationPreferences")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "ECSServiceRecommendation"))

(smithy/sdk/shapes:define-structure ecsservice-recommendation-filter
                                    common-lisp:nil
                                    ((name :target-type
                                      ecsservice-recommendation-filter-name
                                      :member-name "name")
                                     (values :target-type filter-values
                                      :member-name "values"))
                                    (:shape-name
                                     "ECSServiceRecommendationFilter"))

(smithy/sdk/shapes:define-enum ecsservice-recommendation-filter-name
    common-lisp:nil
  (:finding "Finding")
  (:finding-reason-code "FindingReasonCode"))

(smithy/sdk/shapes:define-list ecsservice-recommendation-filters :member
                               ecsservice-recommendation-filter)

(smithy/sdk/shapes:define-enum ecsservice-recommendation-finding
    common-lisp:nil
  (:optimized "Optimized")
  (:under-provisioned "Underprovisioned")
  (:over-provisioned "Overprovisioned"))

(smithy/sdk/shapes:define-enum ecsservice-recommendation-finding-reason-code
    common-lisp:nil
  (:memory-over-provisioned "MemoryOverprovisioned")
  (:memory-under-provisioned "MemoryUnderprovisioned")
  (:cpu-over-provisioned "CPUOverprovisioned")
  (:cpu-under-provisioned "CPUUnderprovisioned"))

(smithy/sdk/shapes:define-list ecsservice-recommendation-finding-reason-codes
                               :member
                               ecsservice-recommendation-finding-reason-code)

(smithy/sdk/shapes:define-structure ecsservice-recommendation-option
                                    common-lisp:nil
                                    ((memory :target-type nullable-memory
                                      :member-name "memory")
                                     (cpu :target-type nullable-cpu
                                      :member-name "cpu")
                                     (savings-opportunity :target-type
                                      savings-opportunity :member-name
                                      "savingsOpportunity")
                                     (savings-opportunity-after-discounts
                                      :target-type
                                      ecssavings-opportunity-after-discounts
                                      :member-name
                                      "savingsOpportunityAfterDiscounts")
                                     (projected-utilization-metrics
                                      :target-type
                                      ecsservice-projected-utilization-metrics
                                      :member-name
                                      "projectedUtilizationMetrics")
                                     (container-recommendations :target-type
                                      container-recommendations :member-name
                                      "containerRecommendations"))
                                    (:shape-name
                                     "ECSServiceRecommendationOption"))

(smithy/sdk/shapes:define-list ecsservice-recommendation-options :member
                               ecsservice-recommendation-option)

(smithy/sdk/shapes:define-list ecsservice-recommendations :member
                               ecsservice-recommendation)

(smithy/sdk/shapes:define-structure
 ecsservice-recommended-option-projected-metric common-lisp:nil
 ((recommended-cpu-units :target-type cpu-size :member-name
   "recommendedCpuUnits")
  (recommended-memory-size :target-type memory-size :member-name
   "recommendedMemorySize")
  (projected-metrics :target-type ecsservice-projected-metrics :member-name
   "projectedMetrics"))
 (:shape-name "ECSServiceRecommendedOptionProjectedMetric"))

(smithy/sdk/shapes:define-list ecsservice-recommended-option-projected-metrics
                               :member
                               ecsservice-recommended-option-projected-metric)

(smithy/sdk/shapes:define-structure ecsservice-utilization-metric
                                    common-lisp:nil
                                    ((name :target-type ecsservice-metric-name
                                      :member-name "name")
                                     (statistic :target-type
                                      ecsservice-metric-statistic :member-name
                                      "statistic")
                                     (value :target-type metric-value
                                      :member-name "value"))
                                    (:shape-name "ECSServiceUtilizationMetric"))

(smithy/sdk/shapes:define-list ecsservice-utilization-metrics :member
                               ecsservice-utilization-metric)

(smithy/sdk/shapes:define-structure effective-preferred-resource
                                    common-lisp:nil
                                    ((name :target-type preferred-resource-name
                                      :member-name "name")
                                     (include-list :target-type
                                      preferred-resource-values :member-name
                                      "includeList")
                                     (effective-include-list :target-type
                                      preferred-resource-values :member-name
                                      "effectiveIncludeList")
                                     (exclude-list :target-type
                                      preferred-resource-values :member-name
                                      "excludeList"))
                                    (:shape-name "EffectivePreferredResource"))

(smithy/sdk/shapes:define-list effective-preferred-resources :member
                               effective-preferred-resource)

(smithy/sdk/shapes:define-structure effective-recommendation-preferences
                                    common-lisp:nil
                                    ((cpu-vendor-architectures :target-type
                                      cpu-vendor-architectures :member-name
                                      "cpuVendorArchitectures")
                                     (enhanced-infrastructure-metrics
                                      :target-type
                                      enhanced-infrastructure-metrics
                                      :member-name
                                      "enhancedInfrastructureMetrics")
                                     (inferred-workload-types :target-type
                                      inferred-workload-types-preference
                                      :member-name "inferredWorkloadTypes")
                                     (external-metrics-preference :target-type
                                      external-metrics-preference :member-name
                                      "externalMetricsPreference")
                                     (look-back-period :target-type
                                      look-back-period-preference :member-name
                                      "lookBackPeriod")
                                     (utilization-preferences :target-type
                                      utilization-preferences :member-name
                                      "utilizationPreferences")
                                     (preferred-resources :target-type
                                      effective-preferred-resources
                                      :member-name "preferredResources")
                                     (savings-estimation-mode :target-type
                                      instance-savings-estimation-mode
                                      :member-name "savingsEstimationMode"))
                                    (:shape-name
                                     "EffectiveRecommendationPreferences"))

(smithy/sdk/shapes:define-type engine smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type engine-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum enhanced-infrastructure-metrics
    common-lisp:nil
  (:active "Active")
  (:inactive "Inactive"))

(smithy/sdk/shapes:define-structure enrollment-filter common-lisp:nil
                                    ((name :target-type enrollment-filter-name
                                      :member-name "name")
                                     (values :target-type filter-values
                                      :member-name "values"))
                                    (:shape-name "EnrollmentFilter"))

(smithy/sdk/shapes:define-enum enrollment-filter-name
    common-lisp:nil
  (:status "Status"))

(smithy/sdk/shapes:define-list enrollment-filters :member enrollment-filter)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure estimated-monthly-savings common-lisp:nil
                                    ((currency :target-type currency
                                      :member-name "currency")
                                     (value :target-type value :member-name
                                      "value"))
                                    (:shape-name "EstimatedMonthlySavings"))

(smithy/sdk/shapes:define-input
 export-auto-scaling-group-recommendations-request common-lisp:nil
 ((account-ids :target-type account-ids :member-name "accountIds")
  (filters :target-type filters :member-name "filters")
  (fields-to-export :target-type exportable-auto-scaling-group-fields
   :member-name "fieldsToExport")
  (s3destination-config :target-type s3destination-config :required
   common-lisp:t :member-name "s3DestinationConfig")
  (file-format :target-type file-format :member-name "fileFormat")
  (include-member-accounts :target-type include-member-accounts :member-name
   "includeMemberAccounts")
  (recommendation-preferences :target-type recommendation-preferences
   :member-name "recommendationPreferences"))
 (:shape-name "ExportAutoScalingGroupRecommendationsRequest"))

(smithy/sdk/shapes:define-output
 export-auto-scaling-group-recommendations-response common-lisp:nil
 ((job-id :target-type job-id :member-name "jobId")
  (s3destination :target-type s3destination :member-name "s3Destination"))
 (:shape-name "ExportAutoScalingGroupRecommendationsResponse"))

(smithy/sdk/shapes:define-structure export-destination common-lisp:nil
                                    ((s3 :target-type s3destination
                                      :member-name "s3"))
                                    (:shape-name "ExportDestination"))

(smithy/sdk/shapes:define-input export-ebsvolume-recommendations-request
                                common-lisp:nil
                                ((account-ids :target-type account-ids
                                  :member-name "accountIds")
                                 (filters :target-type ebsfilters :member-name
                                  "filters")
                                 (fields-to-export :target-type
                                  exportable-volume-fields :member-name
                                  "fieldsToExport")
                                 (s3destination-config :target-type
                                  s3destination-config :required common-lisp:t
                                  :member-name "s3DestinationConfig")
                                 (file-format :target-type file-format
                                  :member-name "fileFormat")
                                 (include-member-accounts :target-type
                                  include-member-accounts :member-name
                                  "includeMemberAccounts"))
                                (:shape-name
                                 "ExportEBSVolumeRecommendationsRequest"))

(smithy/sdk/shapes:define-output export-ebsvolume-recommendations-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "jobId")
                                  (s3destination :target-type s3destination
                                   :member-name "s3Destination"))
                                 (:shape-name
                                  "ExportEBSVolumeRecommendationsResponse"))

(smithy/sdk/shapes:define-input export-ec2instance-recommendations-request
                                common-lisp:nil
                                ((account-ids :target-type account-ids
                                  :member-name "accountIds")
                                 (filters :target-type filters :member-name
                                  "filters")
                                 (fields-to-export :target-type
                                  exportable-instance-fields :member-name
                                  "fieldsToExport")
                                 (s3destination-config :target-type
                                  s3destination-config :required common-lisp:t
                                  :member-name "s3DestinationConfig")
                                 (file-format :target-type file-format
                                  :member-name "fileFormat")
                                 (include-member-accounts :target-type
                                  include-member-accounts :member-name
                                  "includeMemberAccounts")
                                 (recommendation-preferences :target-type
                                  recommendation-preferences :member-name
                                  "recommendationPreferences"))
                                (:shape-name
                                 "ExportEC2InstanceRecommendationsRequest"))

(smithy/sdk/shapes:define-output export-ec2instance-recommendations-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "jobId")
                                  (s3destination :target-type s3destination
                                   :member-name "s3Destination"))
                                 (:shape-name
                                  "ExportEC2InstanceRecommendationsResponse"))

(smithy/sdk/shapes:define-input export-ecsservice-recommendations-request
                                common-lisp:nil
                                ((account-ids :target-type account-ids
                                  :member-name "accountIds")
                                 (filters :target-type
                                  ecsservice-recommendation-filters
                                  :member-name "filters")
                                 (fields-to-export :target-type
                                  exportable-ecsservice-fields :member-name
                                  "fieldsToExport")
                                 (s3destination-config :target-type
                                  s3destination-config :required common-lisp:t
                                  :member-name "s3DestinationConfig")
                                 (file-format :target-type file-format
                                  :member-name "fileFormat")
                                 (include-member-accounts :target-type
                                  include-member-accounts :member-name
                                  "includeMemberAccounts"))
                                (:shape-name
                                 "ExportECSServiceRecommendationsRequest"))

(smithy/sdk/shapes:define-output export-ecsservice-recommendations-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "jobId")
                                  (s3destination :target-type s3destination
                                   :member-name "s3Destination"))
                                 (:shape-name
                                  "ExportECSServiceRecommendationsResponse"))

(smithy/sdk/shapes:define-input export-idle-recommendations-request
                                common-lisp:nil
                                ((account-ids :target-type account-ids
                                  :member-name "accountIds")
                                 (filters :target-type
                                  idle-recommendation-filters :member-name
                                  "filters")
                                 (fields-to-export :target-type
                                  exportable-idle-fields :member-name
                                  "fieldsToExport")
                                 (s3destination-config :target-type
                                  s3destination-config :required common-lisp:t
                                  :member-name "s3DestinationConfig")
                                 (file-format :target-type file-format
                                  :member-name "fileFormat")
                                 (include-member-accounts :target-type
                                  include-member-accounts :member-name
                                  "includeMemberAccounts"))
                                (:shape-name
                                 "ExportIdleRecommendationsRequest"))

(smithy/sdk/shapes:define-output export-idle-recommendations-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "jobId")
                                  (s3destination :target-type s3destination
                                   :member-name "s3Destination"))
                                 (:shape-name
                                  "ExportIdleRecommendationsResponse"))

(smithy/sdk/shapes:define-input export-lambda-function-recommendations-request
                                common-lisp:nil
                                ((account-ids :target-type account-ids
                                  :member-name "accountIds")
                                 (filters :target-type
                                  lambda-function-recommendation-filters
                                  :member-name "filters")
                                 (fields-to-export :target-type
                                  exportable-lambda-function-fields
                                  :member-name "fieldsToExport")
                                 (s3destination-config :target-type
                                  s3destination-config :required common-lisp:t
                                  :member-name "s3DestinationConfig")
                                 (file-format :target-type file-format
                                  :member-name "fileFormat")
                                 (include-member-accounts :target-type
                                  include-member-accounts :member-name
                                  "includeMemberAccounts"))
                                (:shape-name
                                 "ExportLambdaFunctionRecommendationsRequest"))

(smithy/sdk/shapes:define-output
 export-lambda-function-recommendations-response common-lisp:nil
 ((job-id :target-type job-id :member-name "jobId")
  (s3destination :target-type s3destination :member-name "s3Destination"))
 (:shape-name "ExportLambdaFunctionRecommendationsResponse"))

(smithy/sdk/shapes:define-input export-license-recommendations-request
                                common-lisp:nil
                                ((account-ids :target-type account-ids
                                  :member-name "accountIds")
                                 (filters :target-type
                                  license-recommendation-filters :member-name
                                  "filters")
                                 (fields-to-export :target-type
                                  exportable-license-fields :member-name
                                  "fieldsToExport")
                                 (s3destination-config :target-type
                                  s3destination-config :required common-lisp:t
                                  :member-name "s3DestinationConfig")
                                 (file-format :target-type file-format
                                  :member-name "fileFormat")
                                 (include-member-accounts :target-type
                                  include-member-accounts :member-name
                                  "includeMemberAccounts"))
                                (:shape-name
                                 "ExportLicenseRecommendationsRequest"))

(smithy/sdk/shapes:define-output export-license-recommendations-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "jobId")
                                  (s3destination :target-type s3destination
                                   :member-name "s3Destination"))
                                 (:shape-name
                                  "ExportLicenseRecommendationsResponse"))

(smithy/sdk/shapes:define-input export-rdsdatabase-recommendations-request
                                common-lisp:nil
                                ((account-ids :target-type account-ids
                                  :member-name "accountIds")
                                 (filters :target-type
                                  rdsdbrecommendation-filters :member-name
                                  "filters")
                                 (fields-to-export :target-type
                                  exportable-rdsdbfields :member-name
                                  "fieldsToExport")
                                 (s3destination-config :target-type
                                  s3destination-config :required common-lisp:t
                                  :member-name "s3DestinationConfig")
                                 (file-format :target-type file-format
                                  :member-name "fileFormat")
                                 (include-member-accounts :target-type
                                  include-member-accounts :member-name
                                  "includeMemberAccounts")
                                 (recommendation-preferences :target-type
                                  recommendation-preferences :member-name
                                  "recommendationPreferences"))
                                (:shape-name
                                 "ExportRDSDatabaseRecommendationsRequest"))

(smithy/sdk/shapes:define-output export-rdsdatabase-recommendations-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "jobId")
                                  (s3destination :target-type s3destination
                                   :member-name "s3Destination"))
                                 (:shape-name
                                  "ExportRDSDatabaseRecommendationsResponse"))

(smithy/sdk/shapes:define-enum exportable-auto-scaling-group-field
    common-lisp:nil
  (:account-id "AccountId")
  (:auto-scaling-group-arn "AutoScalingGroupArn")
  (:auto-scaling-group-name "AutoScalingGroupName")
  (:finding "Finding")
  (:utilization-metrics-cpu-maximum "UtilizationMetricsCpuMaximum")
  (:utilization-metrics-memory-maximum "UtilizationMetricsMemoryMaximum")
  (:utilization-metrics-ebs-read-ops-per-second-maximum
   "UtilizationMetricsEbsReadOpsPerSecondMaximum")
  (:utilization-metrics-ebs-write-ops-per-second-maximum
   "UtilizationMetricsEbsWriteOpsPerSecondMaximum")
  (:utilization-metrics-ebs-read-bytes-per-second-maximum
   "UtilizationMetricsEbsReadBytesPerSecondMaximum")
  (:utilization-metrics-ebs-write-bytes-per-second-maximum
   "UtilizationMetricsEbsWriteBytesPerSecondMaximum")
  (:utilization-metrics-disk-read-ops-per-second-maximum
   "UtilizationMetricsDiskReadOpsPerSecondMaximum")
  (:utilization-metrics-disk-write-ops-per-second-maximum
   "UtilizationMetricsDiskWriteOpsPerSecondMaximum")
  (:utilization-metrics-disk-read-bytes-per-second-maximum
   "UtilizationMetricsDiskReadBytesPerSecondMaximum")
  (:utilization-metrics-disk-write-bytes-per-second-maximum
   "UtilizationMetricsDiskWriteBytesPerSecondMaximum")
  (:utilization-metrics-network-in-bytes-per-second-maximum
   "UtilizationMetricsNetworkInBytesPerSecondMaximum")
  (:utilization-metrics-network-out-bytes-per-second-maximum
   "UtilizationMetricsNetworkOutBytesPerSecondMaximum")
  (:utilization-metrics-network-packets-in-per-second-maximum
   "UtilizationMetricsNetworkPacketsInPerSecondMaximum")
  (:utilization-metrics-network-packets-out-per-second-maximum
   "UtilizationMetricsNetworkPacketsOutPerSecondMaximum")
  (:lookback-period-in-days "LookbackPeriodInDays")
  (:current-configuration-instance-type "CurrentConfigurationInstanceType")
  (:current-configuration-desired-capacity
   "CurrentConfigurationDesiredCapacity")
  (:current-configuration-min-size "CurrentConfigurationMinSize")
  (:current-configuration-max-size "CurrentConfigurationMaxSize")
  (:current-configuration-allocation-strategy
   "CurrentConfigurationAllocationStrategy")
  (:current-configuration-mixed-instance-types
   "CurrentConfigurationMixedInstanceTypes")
  (:current-configuration-type "CurrentConfigurationType")
  (:current-on-demand-price "CurrentOnDemandPrice")
  (:current-standard-one-year-no-upfront-reserved-price
   "CurrentStandardOneYearNoUpfrontReservedPrice")
  (:current-standard-three-year-no-upfront-reserved-price
   "CurrentStandardThreeYearNoUpfrontReservedPrice")
  (:current-vcpus "CurrentVCpus")
  (:current-memory "CurrentMemory")
  (:current-storage "CurrentStorage")
  (:current-network "CurrentNetwork")
  (:recommendation-options-configuration-instance-type
   "RecommendationOptionsConfigurationInstanceType")
  (:recommendation-options-configuration-desired-capacity
   "RecommendationOptionsConfigurationDesiredCapacity")
  (:recommendation-options-configuration-min-size
   "RecommendationOptionsConfigurationMinSize")
  (:recommendation-options-configuration-max-size
   "RecommendationOptionsConfigurationMaxSize")
  (:recommendation-options-configuration-estimated-instance-hour-reduction-percentage
   "RecommendationOptionsConfigurationEstimatedInstanceHourReductionPercentage")
  (:recommendation-options-configuration-allocation-strategy
   "RecommendationOptionsConfigurationAllocationStrategy")
  (:recommendation-options-configuration-mixed-instance-types
   "RecommendationOptionsConfigurationMixedInstanceTypes")
  (:recommendation-options-configuration-type
   "RecommendationOptionsConfigurationType")
  (:recommendation-options-projected-utilization-metrics-cpu-maximum
   "RecommendationOptionsProjectedUtilizationMetricsCpuMaximum")
  (:recommendation-options-projected-utilization-metrics-memory-maximum
   "RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum")
  (:recommendation-options-performance-risk
   "RecommendationOptionsPerformanceRisk")
  (:recommendation-options-on-demand-price "RecommendationOptionsOnDemandPrice")
  (:recommendation-options-standard-one-year-no-upfront-reserved-price
   "RecommendationOptionsStandardOneYearNoUpfrontReservedPrice")
  (:recommendation-options-standard-three-year-no-upfront-reserved-price
   "RecommendationOptionsStandardThreeYearNoUpfrontReservedPrice")
  (:recommendation-options-vcpus "RecommendationOptionsVcpus")
  (:recommendation-options-memory "RecommendationOptionsMemory")
  (:recommendation-options-storage "RecommendationOptionsStorage")
  (:recommendation-options-network "RecommendationOptionsNetwork")
  (:last-refresh-timestamp "LastRefreshTimestamp")
  (:current-performance-risk "CurrentPerformanceRisk")
  (:recommendation-options-savings-opportunity-percentage
   "RecommendationOptionsSavingsOpportunityPercentage")
  (:recommendation-options-estimated-monthly-savings-currency
   "RecommendationOptionsEstimatedMonthlySavingsCurrency")
  (:recommendation-options-estimated-monthly-savings-value
   "RecommendationOptionsEstimatedMonthlySavingsValue")
  (:effective-recommendation-preferences-cpu-vendor-architectures
   "EffectiveRecommendationPreferencesCpuVendorArchitectures")
  (:effective-recommendation-preferences-enhanced-infrastructure-metrics
   "EffectiveRecommendationPreferencesEnhancedInfrastructureMetrics")
  (:effective-recommendation-preferences-inferred-workload-types
   "EffectiveRecommendationPreferencesInferredWorkloadTypes")
  (:effective-recommendation-preferences-preferred-resources
   "EffectiveRecommendationPreferencesPreferredResources")
  (:effective-recommendation-preferences-lookback-period
   "EffectiveRecommendationPreferencesLookBackPeriod")
  (:inferred-workload-types "InferredWorkloadTypes")
  (:recommendation-options-migration-effort
   "RecommendationOptionsMigrationEffort")
  (:current-instance-gpu-info "CurrentInstanceGpuInfo")
  (:recommendation-options-instance-gpu-info
   "RecommendationOptionsInstanceGpuInfo")
  (:utilization-metrics-gpu-percentage-maximum
   "UtilizationMetricsGpuPercentageMaximum")
  (:utilization-metrics-gpu-memory-percentage-maximum
   "UtilizationMetricsGpuMemoryPercentageMaximum")
  (:recommendation-options-projected-utilization-metrics-gpu-maximum
   "RecommendationOptionsProjectedUtilizationMetricsGpuPercentageMaximum")
  (:recommendation-options-projected-utilization-metrics-gpu-memory-maximum
   "RecommendationOptionsProjectedUtilizationMetricsGpuMemoryPercentageMaximum")
  (:effective-recommendation-preferences-savings-estimation-mode
   "EffectiveRecommendationPreferencesSavingsEstimationMode")
  (:recommendation-options-savings-opportunity-after-discounts-percentage
   "RecommendationOptionsSavingsOpportunityAfterDiscountsPercentage")
  (:recommendation-options-estimated-monthly-savings-currency-after-discounts
   "RecommendationOptionsEstimatedMonthlySavingsCurrencyAfterDiscounts")
  (:recommendation-options-estimated-monthly-savings-value-after-discounts
   "RecommendationOptionsEstimatedMonthlySavingsValueAfterDiscounts"))

(smithy/sdk/shapes:define-list exportable-auto-scaling-group-fields :member
                               exportable-auto-scaling-group-field)

(smithy/sdk/shapes:define-enum exportable-ecsservice-field
    common-lisp:nil
  (:account-id "AccountId")
  (:service-arn "ServiceArn")
  (:lookback-period-in-days "LookbackPeriodInDays")
  (:last-refresh-timestamp "LastRefreshTimestamp")
  (:launch-type "LaunchType")
  (:current-performance-risk "CurrentPerformanceRisk")
  (:current-service-configuration-memory "CurrentServiceConfigurationMemory")
  (:current-service-configuration-cpu "CurrentServiceConfigurationCpu")
  (:current-service-configuration-task-definition-arn
   "CurrentServiceConfigurationTaskDefinitionArn")
  (:current-service-configuration-auto-scaling-configuration
   "CurrentServiceConfigurationAutoScalingConfiguration")
  (:current-service-container-configurations
   "CurrentServiceContainerConfigurations")
  (:utilization-metrics-cpu-maximum "UtilizationMetricsCpuMaximum")
  (:utilization-metrics-memory-maximum "UtilizationMetricsMemoryMaximum")
  (:finding "Finding")
  (:finding-reason-codes "FindingReasonCodes")
  (:recommendation-options-memory "RecommendationOptionsMemory")
  (:recommendation-options-cpu "RecommendationOptionsCpu")
  (:recommendation-options-savings-opportunity-percentage
   "RecommendationOptionsSavingsOpportunityPercentage")
  (:recommendation-options-estimated-monthly-savings-currency
   "RecommendationOptionsEstimatedMonthlySavingsCurrency")
  (:recommendation-options-estimated-monthly-savings-value
   "RecommendationOptionsEstimatedMonthlySavingsValue")
  (:recommendation-options-container-recommendations
   "RecommendationOptionsContainerRecommendations")
  (:recommendation-options-projected-utilization-metrics-cpu-maximum
   "RecommendationOptionsProjectedUtilizationMetricsCpuMaximum")
  (:recommendation-options-projected-utilization-metrics-memory-maximum
   "RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum")
  (:tags "Tags")
  (:effective-recommendation-preferences-savings-estimation-mode
   "EffectiveRecommendationPreferencesSavingsEstimationMode")
  (:recommendation-options-savings-opportunity-after-discounts-percentage
   "RecommendationOptionsSavingsOpportunityAfterDiscountsPercentage")
  (:recommendation-options-estimated-monthly-savings-currency-after-discounts
   "RecommendationOptionsEstimatedMonthlySavingsCurrencyAfterDiscounts")
  (:recommendation-options-estimated-monthly-savings-value-after-discounts
   "RecommendationOptionsEstimatedMonthlySavingsValueAfterDiscounts"))

(smithy/sdk/shapes:define-list exportable-ecsservice-fields :member
                               exportable-ecsservice-field)

(smithy/sdk/shapes:define-enum exportable-idle-field
    common-lisp:nil
  (:account-id "AccountId")
  (:resource-arn "ResourceArn")
  (:resource-id "ResourceId")
  (:resource-type "ResourceType")
  (:last-refresh-timestamp "LastRefreshTimestamp")
  (:lookback-period-in-days "LookbackPeriodInDays")
  (:savings-opportunity "SavingsOpportunity")
  (:savings-opportunity-after-discount "SavingsOpportunityAfterDiscount")
  (:utilization-metrics-cpu-maximum "UtilizationMetricsCpuMaximum")
  (:utilization-metrics-memory-maximum "UtilizationMetricsMemoryMaximum")
  (:utilization-metrics-network-out-bytes-per-second-maximum
   "UtilizationMetricsNetworkOutBytesPerSecondMaximum")
  (:utilization-metrics-network-in-bytes-per-second-maximum
   "UtilizationMetricsNetworkInBytesPerSecondMaximum")
  (:utilization-metrics-database-connections-maximum
   "UtilizationMetricsDatabaseConnectionsMaximum")
  (:utilization-metrics-ebs-volume-read-iops-maximum
   "UtilizationMetricsEBSVolumeReadIOPSMaximum")
  (:utilization-metrics-ebs-volume-write-iops-maximum
   "UtilizationMetricsEBSVolumeWriteIOPSMaximum")
  (:utilization-metrics-volume-read-ops-per-second-maximum
   "UtilizationMetricsVolumeReadOpsPerSecondMaximum")
  (:utilization-metrics-volume-write-ops-per-second-maximum
   "UtilizationMetricsVolumeWriteOpsPerSecondMaximum")
  (:finding "Finding")
  (:finding-description "FindingDescription")
  (:tags "Tags"))

(smithy/sdk/shapes:define-list exportable-idle-fields :member
                               exportable-idle-field)

(smithy/sdk/shapes:define-enum exportable-instance-field
    common-lisp:nil
  (:account-id "AccountId")
  (:instance-arn "InstanceArn")
  (:instance-name "InstanceName")
  (:finding "Finding")
  (:finding-reason-codes "FindingReasonCodes")
  (:lookback-period-in-days "LookbackPeriodInDays")
  (:current-instance-type "CurrentInstanceType")
  (:utilization-metrics-cpu-maximum "UtilizationMetricsCpuMaximum")
  (:utilization-metrics-memory-maximum "UtilizationMetricsMemoryMaximum")
  (:utilization-metrics-ebs-read-ops-per-second-maximum
   "UtilizationMetricsEbsReadOpsPerSecondMaximum")
  (:utilization-metrics-ebs-write-ops-per-second-maximum
   "UtilizationMetricsEbsWriteOpsPerSecondMaximum")
  (:utilization-metrics-ebs-read-bytes-per-second-maximum
   "UtilizationMetricsEbsReadBytesPerSecondMaximum")
  (:utilization-metrics-ebs-write-bytes-per-second-maximum
   "UtilizationMetricsEbsWriteBytesPerSecondMaximum")
  (:utilization-metrics-disk-read-ops-per-second-maximum
   "UtilizationMetricsDiskReadOpsPerSecondMaximum")
  (:utilization-metrics-disk-write-ops-per-second-maximum
   "UtilizationMetricsDiskWriteOpsPerSecondMaximum")
  (:utilization-metrics-disk-read-bytes-per-second-maximum
   "UtilizationMetricsDiskReadBytesPerSecondMaximum")
  (:utilization-metrics-disk-write-bytes-per-second-maximum
   "UtilizationMetricsDiskWriteBytesPerSecondMaximum")
  (:utilization-metrics-network-in-bytes-per-second-maximum
   "UtilizationMetricsNetworkInBytesPerSecondMaximum")
  (:utilization-metrics-network-out-bytes-per-second-maximum
   "UtilizationMetricsNetworkOutBytesPerSecondMaximum")
  (:utilization-metrics-network-packets-in-per-second-maximum
   "UtilizationMetricsNetworkPacketsInPerSecondMaximum")
  (:utilization-metrics-network-packets-out-per-second-maximum
   "UtilizationMetricsNetworkPacketsOutPerSecondMaximum")
  (:current-on-demand-price "CurrentOnDemandPrice")
  (:current-standard-one-year-no-upfront-reserved-price
   "CurrentStandardOneYearNoUpfrontReservedPrice")
  (:current-standard-three-year-no-upfront-reserved-price
   "CurrentStandardThreeYearNoUpfrontReservedPrice")
  (:current-vcpus "CurrentVCpus")
  (:current-memory "CurrentMemory")
  (:current-storage "CurrentStorage")
  (:current-network "CurrentNetwork")
  (:recommendation-options-instance-type "RecommendationOptionsInstanceType")
  (:recommendation-options-projected-utilization-metrics-cpu-maximum
   "RecommendationOptionsProjectedUtilizationMetricsCpuMaximum")
  (:recommendation-options-projected-utilization-metrics-memory-maximum
   "RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum")
  (:recommendation-options-platform-differences
   "RecommendationOptionsPlatformDifferences")
  (:recommendation-options-performance-risk
   "RecommendationOptionsPerformanceRisk")
  (:recommendation-options-vcpus "RecommendationOptionsVcpus")
  (:recommendation-options-memory "RecommendationOptionsMemory")
  (:recommendation-options-storage "RecommendationOptionsStorage")
  (:recommendation-options-network "RecommendationOptionsNetwork")
  (:recommendation-options-on-demand-price "RecommendationOptionsOnDemandPrice")
  (:recommendation-options-standard-one-year-no-upfront-reserved-price
   "RecommendationOptionsStandardOneYearNoUpfrontReservedPrice")
  (:recommendation-options-standard-three-year-no-upfront-reserved-price
   "RecommendationOptionsStandardThreeYearNoUpfrontReservedPrice")
  (:recommendations-sources-recommendation-source-arn
   "RecommendationsSourcesRecommendationSourceArn")
  (:recommendations-sources-recommendation-source-type
   "RecommendationsSourcesRecommendationSourceType")
  (:last-refresh-timestamp "LastRefreshTimestamp")
  (:current-performance-risk "CurrentPerformanceRisk")
  (:recommendation-options-savings-opportunity-percentage
   "RecommendationOptionsSavingsOpportunityPercentage")
  (:recommendation-options-estimated-monthly-savings-currency
   "RecommendationOptionsEstimatedMonthlySavingsCurrency")
  (:recommendation-options-estimated-monthly-savings-value
   "RecommendationOptionsEstimatedMonthlySavingsValue")
  (:effective-recommendation-preferences-cpu-vendor-architectures
   "EffectiveRecommendationPreferencesCpuVendorArchitectures")
  (:effective-recommendation-preferences-enhanced-infrastructure-metrics
   "EffectiveRecommendationPreferencesEnhancedInfrastructureMetrics")
  (:effective-recommendation-preferences-inferred-workload-types
   "EffectiveRecommendationPreferencesInferredWorkloadTypes")
  (:inferred-workload-types "InferredWorkloadTypes")
  (:recommendation-options-migration-effort
   "RecommendationOptionsMigrationEffort")
  (:effective-recommendation-preferences-external-metrics-source
   "EffectiveRecommendationPreferencesExternalMetricsSource")
  (:tags "Tags")
  (:instance-state "InstanceState")
  (:external-metric-status-code "ExternalMetricStatusCode")
  (:external-metric-status-reason "ExternalMetricStatusReason")
  (:current-instance-gpu-info "CurrentInstanceGpuInfo")
  (:recommendation-options-instance-gpu-info
   "RecommendationOptionsInstanceGpuInfo")
  (:utilization-metrics-gpu-percentage-maximum
   "UtilizationMetricsGpuPercentageMaximum")
  (:utilization-metrics-gpu-memory-percentage-maximum
   "UtilizationMetricsGpuMemoryPercentageMaximum")
  (:recommendation-options-projected-utilization-metrics-gpu-percentage-maximum
   "RecommendationOptionsProjectedUtilizationMetricsGpuPercentageMaximum")
  (:recommendation-options-projected-utilization-metrics-gpu-memory-percentage-maximum
   "RecommendationOptionsProjectedUtilizationMetricsGpuMemoryPercentageMaximum")
  (:idle "Idle")
  (:effective-recommendation-preferences-preferred-resources
   "EffectiveRecommendationPreferencesPreferredResources")
  (:effective-recommendation-preferences-lookback-period
   "EffectiveRecommendationPreferencesLookBackPeriod")
  (:effective-recommendation-preferences-utilization-preferences
   "EffectiveRecommendationPreferencesUtilizationPreferences")
  (:effective-recommendation-preferences-savings-estimation-mode
   "EffectiveRecommendationPreferencesSavingsEstimationMode")
  (:recommendation-options-savings-opportunity-after-discounts-percentage
   "RecommendationOptionsSavingsOpportunityAfterDiscountsPercentage")
  (:recommendation-options-estimated-monthly-savings-currency-after-discounts
   "RecommendationOptionsEstimatedMonthlySavingsCurrencyAfterDiscounts")
  (:recommendation-options-estimated-monthly-savings-value-after-discounts
   "RecommendationOptionsEstimatedMonthlySavingsValueAfterDiscounts"))

(smithy/sdk/shapes:define-list exportable-instance-fields :member
                               exportable-instance-field)

(smithy/sdk/shapes:define-enum exportable-lambda-function-field
    common-lisp:nil
  (:account-id "AccountId")
  (:function-arn "FunctionArn")
  (:function-version "FunctionVersion")
  (:finding "Finding")
  (:finding-reason-codes "FindingReasonCodes")
  (:number-of-invocations "NumberOfInvocations")
  (:utilization-metrics-duration-maximum "UtilizationMetricsDurationMaximum")
  (:utilization-metrics-duration-average "UtilizationMetricsDurationAverage")
  (:utilization-metrics-memory-maximum "UtilizationMetricsMemoryMaximum")
  (:utilization-metrics-memory-average "UtilizationMetricsMemoryAverage")
  (:lookback-period-in-days "LookbackPeriodInDays")
  (:current-configuration-memory-size "CurrentConfigurationMemorySize")
  (:current-configuration-timeout "CurrentConfigurationTimeout")
  (:current-cost-total "CurrentCostTotal")
  (:current-cost-average "CurrentCostAverage")
  (:recommendation-options-configuration-memory-size
   "RecommendationOptionsConfigurationMemorySize")
  (:recommendation-options-cost-low "RecommendationOptionsCostLow")
  (:recommendation-options-cost-high "RecommendationOptionsCostHigh")
  (:recommendation-options-projected-utilization-metrics-duration-lower-bound
   "RecommendationOptionsProjectedUtilizationMetricsDurationLowerBound")
  (:recommendation-options-projected-utilization-metrics-duration-upper-bound
   "RecommendationOptionsProjectedUtilizationMetricsDurationUpperBound")
  (:recommendation-options-projected-utilization-metrics-duration-expected
   "RecommendationOptionsProjectedUtilizationMetricsDurationExpected")
  (:last-refresh-timestamp "LastRefreshTimestamp")
  (:current-performance-risk "CurrentPerformanceRisk")
  (:recommendation-options-savings-opportunity-percentage
   "RecommendationOptionsSavingsOpportunityPercentage")
  (:recommendation-options-estimated-monthly-savings-currency
   "RecommendationOptionsEstimatedMonthlySavingsCurrency")
  (:recommendation-options-estimated-monthly-savings-value
   "RecommendationOptionsEstimatedMonthlySavingsValue")
  (:tags "Tags")
  (:effective-recommendation-preferences-savings-estimation-mode
   "EffectiveRecommendationPreferencesSavingsEstimationMode")
  (:recommendation-options-savings-opportunity-after-discounts-percentage
   "RecommendationOptionsSavingsOpportunityAfterDiscountsPercentage")
  (:recommendation-options-estimated-monthly-savings-currency-after-discounts
   "RecommendationOptionsEstimatedMonthlySavingsCurrencyAfterDiscounts")
  (:recommendation-options-estimated-monthly-savings-value-after-discounts
   "RecommendationOptionsEstimatedMonthlySavingsValueAfterDiscounts"))

(smithy/sdk/shapes:define-list exportable-lambda-function-fields :member
                               exportable-lambda-function-field)

(smithy/sdk/shapes:define-enum exportable-license-field
    common-lisp:nil
  (:account-id "AccountId")
  (:resource-arn "ResourceArn")
  (:lookback-period-in-days "LookbackPeriodInDays")
  (:last-refresh-timestamp "LastRefreshTimestamp")
  (:license-finding "Finding")
  (:license-finding-reason-codes "FindingReasonCodes")
  (:current-license-configuration-number-of-cores
   "CurrentLicenseConfigurationNumberOfCores")
  (:current-license-configuration-instance-type
   "CurrentLicenseConfigurationInstanceType")
  (:current-license-configuration-operating-system
   "CurrentLicenseConfigurationOperatingSystem")
  (:current-license-configuration-license-name
   "CurrentLicenseConfigurationLicenseName")
  (:current-license-configuration-license-edition
   "CurrentLicenseConfigurationLicenseEdition")
  (:current-license-configuration-license-model
   "CurrentLicenseConfigurationLicenseModel")
  (:current-license-configuration-license-version
   "CurrentLicenseConfigurationLicenseVersion")
  (:current-license-configuration-metrics-source
   "CurrentLicenseConfigurationMetricsSource")
  (:recommendation-options-operating-system
   "RecommendationOptionsOperatingSystem")
  (:recommendation-options-license-edition
   "RecommendationOptionsLicenseEdition")
  (:recommendation-options-license-model "RecommendationOptionsLicenseModel")
  (:recommendation-options-savings-opportunity-percentage
   "RecommendationOptionsSavingsOpportunityPercentage")
  (:recommendation-options-estimated-monthly-savings-currency
   "RecommendationOptionsEstimatedMonthlySavingsCurrency")
  (:recommendation-options-estimated-monthly-savings-value
   "RecommendationOptionsEstimatedMonthlySavingsValue")
  (:tags "Tags"))

(smithy/sdk/shapes:define-list exportable-license-fields :member
                               exportable-license-field)

(smithy/sdk/shapes:define-enum exportable-rdsdbfield
    common-lisp:nil
  (:resource-arn "ResourceArn")
  (:account-id "AccountId")
  (:engine "Engine")
  (:engine-version "EngineVersion")
  (:idle "Idle")
  (:multi-az-db-instance "MultiAZDBInstance")
  (:cluster-writer "ClusterWriter")
  (:current-db-instance-class "CurrentDBInstanceClass")
  (:current-storage-configuration-storage-type
   "CurrentStorageConfigurationStorageType")
  (:current-storage-configuration-allocated-storage
   "CurrentStorageConfigurationAllocatedStorage")
  (:current-storage-configuration-max-allocated-storage
   "CurrentStorageConfigurationMaxAllocatedStorage")
  (:current-storage-configuration-iops "CurrentStorageConfigurationIOPS")
  (:current-storage-configuration-storage-throughput
   "CurrentStorageConfigurationStorageThroughput")
  (:current-storage-estimated-monthly-volume-iops-cost-variation
   "CurrentStorageEstimatedMonthlyVolumeIOPsCostVariation")
  (:current-instance-on-demand-hourly-price
   "CurrentInstanceOnDemandHourlyPrice")
  (:current-storage-on-demand-monthly-price
   "CurrentStorageOnDemandMonthlyPrice")
  (:lookback-period-in-days "LookbackPeriodInDays")
  (:current-storage-estimated-cluster-instance-on-demand-monthly-cost
   "CurrentStorageEstimatedClusterInstanceOnDemandMonthlyCost")
  (:current-storage-estimated-cluster-storage-on-demand-monthly-cost
   "CurrentStorageEstimatedClusterStorageOnDemandMonthlyCost")
  (:current-storage-estimated-cluster-storage-io-on-demand-monthly-cost
   "CurrentStorageEstimatedClusterStorageIOOnDemandMonthlyCost")
  (:current-instance-performance-risk "CurrentInstancePerformanceRisk")
  (:utilization-metrics-cpu-maximum "UtilizationMetricsCpuMaximum")
  (:utilization-metrics-memory-maximum "UtilizationMetricsMemoryMaximum")
  (:utilization-metrics-ebs-volume-storage-space-utilization-maximum
   "UtilizationMetricsEBSVolumeStorageSpaceUtilizationMaximum")
  (:utilization-metrics-network-receive-throughput-maximum
   "UtilizationMetricsNetworkReceiveThroughputMaximum")
  (:utilization-metrics-network-transmit-throughput-maximum
   "UtilizationMetricsNetworkTransmitThroughputMaximum")
  (:utilization-metrics-ebs-volume-read-iops-maximum
   "UtilizationMetricsEBSVolumeReadIOPSMaximum")
  (:utilization-metrics-ebs-volume-write-iops-maximum
   "UtilizationMetricsEBSVolumeWriteIOPSMaximum")
  (:utilization-metrics-ebs-volume-read-throughput-maximum
   "UtilizationMetricsEBSVolumeReadThroughputMaximum")
  (:utilization-metrics-ebs-volume-write-throughput-maximum
   "UtilizationMetricsEBSVolumeWriteThroughputMaximum")
  (:utilization-metrics-database-connections-maximum
   "UtilizationMetricsDatabaseConnectionsMaximum")
  (:utilization-metrics-storage-network-receive-throughput-maximum
   "UtilizationMetricsStorageNetworkReceiveThroughputMaximum")
  (:utilization-metrics-storage-network-transmit-throughput-maximum
   "UtilizationMetricsStorageNetworkTransmitThroughputMaximum")
  (:utilization-metrics-aurora-memory-health-state-maximum
   "UtilizationMetricsAuroraMemoryHealthStateMaximum")
  (:utilization-metrics-aurora-memory-num-declined-sql-total-maximum
   "UtilizationMetricsAuroraMemoryNumDeclinedSqlTotalMaximum")
  (:utilization-metrics-aurora-memory-num-kill-conn-total-maximum
   "UtilizationMetricsAuroraMemoryNumKillConnTotalMaximum")
  (:utilization-metrics-aurora-memory-num-kill-query-total-maximum
   "UtilizationMetricsAuroraMemoryNumKillQueryTotalMaximum")
  (:utilization-metrics-read-iops-ephemeral-storage-maximum
   "UtilizationMetricsReadIOPSEphemeralStorageMaximum")
  (:utilization-metrics-write-iops-ephemeral-storage-maximum
   "UtilizationMetricsWriteIOPSEphemeralStorageMaximum")
  (:utilization-metrics-volume-bytes-used-average
   "UtilizationMetricsVolumeBytesUsedAverage")
  (:utilization-metrics-volume-read-iops-average
   "UtilizationMetricsVolumeReadIOPsAverage")
  (:utilization-metrics-volume-write-iops-average
   "UtilizationMetricsVolumeWriteIOPsAverage")
  (:instance-finding "InstanceFinding")
  (:instance-finding-reason-codes "InstanceFindingReasonCodes")
  (:storage-finding "StorageFinding")
  (:storage-finding-reason-codes "StorageFindingReasonCodes")
  (:instance-recommendation-options-db-instance-class
   "InstanceRecommendationOptionsDBInstanceClass")
  (:instance-recommendation-options-rank "InstanceRecommendationOptionsRank")
  (:instance-recommendation-options-performance-risk
   "InstanceRecommendationOptionsPerformanceRisk")
  (:instance-recommendation-options-projected-utilization-metrics-cpu-maximum
   "InstanceRecommendationOptionsProjectedUtilizationMetricsCpuMaximum")
  (:storage-recommendation-options-storage-type
   "StorageRecommendationOptionsStorageType")
  (:storage-recommendation-options-allocated-storage
   "StorageRecommendationOptionsAllocatedStorage")
  (:storage-recommendation-options-max-allocated-storage
   "StorageRecommendationOptionsMaxAllocatedStorage")
  (:storage-recommendation-options-iops "StorageRecommendationOptionsIOPS")
  (:storage-recommendation-options-storage-throughput
   "StorageRecommendationOptionsStorageThroughput")
  (:storage-recommendation-options-rank "StorageRecommendationOptionsRank")
  (:storage-recommendation-options-estimated-monthly-volume-iops-cost-variation
   "StorageRecommendationOptionsEstimatedMonthlyVolumeIOPsCostVariation")
  (:instance-recommendation-options-instance-on-demand-hourly-price
   "InstanceRecommendationOptionsInstanceOnDemandHourlyPrice")
  (:instance-recommendation-options-savings-opportunity-percentage
   "InstanceRecommendationOptionsSavingsOpportunityPercentage")
  (:instance-recommendation-options-estimated-monthly-savings-currency
   "InstanceRecommendationOptionsEstimatedMonthlySavingsCurrency")
  (:instance-recommendation-options-estimated-monthly-savings-value
   "InstanceRecommendationOptionsEstimatedMonthlySavingsValue")
  (:instance-recommendation-options-savings-opportunity-after-discounts-percentage
   "InstanceRecommendationOptionsSavingsOpportunityAfterDiscountsPercentage")
  (:instance-recommendation-options-estimated-monthly-savings-currency-after-discounts
   "InstanceRecommendationOptionsEstimatedMonthlySavingsCurrencyAfterDiscounts")
  (:instance-recommendation-options-estimated-monthly-savings-value-after-discounts
   "InstanceRecommendationOptionsEstimatedMonthlySavingsValueAfterDiscounts")
  (:storage-recommendation-options-on-demand-monthly-price
   "StorageRecommendationOptionsOnDemandMonthlyPrice")
  (:storage-recommendation-options-estimated-cluster-instance-on-demand-monthly-cost
   "StorageRecommendationOptionsEstimatedClusterInstanceOnDemandMonthlyCost")
  (:storage-recommendation-options-estimated-cluster-storage-on-demand-monthly-cost
   "StorageRecommendationOptionsEstimatedClusterStorageOnDemandMonthlyCost")
  (:storage-recommendation-options-estimated-cluster-storage-io-on-demand-monthly-cost
   "StorageRecommendationOptionsEstimatedClusterStorageIOOnDemandMonthlyCost")
  (:storage-recommendation-options-savings-opportunity-percentage
   "StorageRecommendationOptionsSavingsOpportunityPercentage")
  (:storage-recommendation-options-estimated-monthly-savings-currency
   "StorageRecommendationOptionsEstimatedMonthlySavingsCurrency")
  (:storage-recommendation-options-estimated-monthly-savings-value
   "StorageRecommendationOptionsEstimatedMonthlySavingsValue")
  (:storage-recommendation-options-savings-opportunity-after-discounts-percentage
   "StorageRecommendationOptionsSavingsOpportunityAfterDiscountsPercentage")
  (:storage-recommendation-options-estimated-monthly-savings-currency-after-discounts
   "StorageRecommendationOptionsEstimatedMonthlySavingsCurrencyAfterDiscounts")
  (:storage-recommendation-options-estimated-monthly-savings-value-after-discounts
   "StorageRecommendationOptionsEstimatedMonthlySavingsValueAfterDiscounts")
  (:effective-recommendation-preferences-cpu-vendor-architectures
   "EffectiveRecommendationPreferencesCpuVendorArchitectures")
  (:effective-recommendation-preferences-enhanced-infrastructure-metrics
   "EffectiveRecommendationPreferencesEnhancedInfrastructureMetrics")
  (:effective-recommendation-preferences-lookback-period
   "EffectiveRecommendationPreferencesLookBackPeriod")
  (:effective-recommendation-preferences-savings-estimation-mode
   "EffectiveRecommendationPreferencesSavingsEstimationMode")
  (:last-refresh-timestamp "LastRefreshTimestamp")
  (:tags "Tags")
  (:db-cluster-identifier "DBClusterIdentifier")
  (:promotion-tier "PromotionTier"))

(smithy/sdk/shapes:define-list exportable-rdsdbfields :member
                               exportable-rdsdbfield)

(smithy/sdk/shapes:define-enum exportable-volume-field
    common-lisp:nil
  (:account-id "AccountId")
  (:volume-arn "VolumeArn")
  (:finding "Finding")
  (:utilization-metrics-volume-read-ops-per-second-maximum
   "UtilizationMetricsVolumeReadOpsPerSecondMaximum")
  (:utilization-metrics-volume-write-ops-per-second-maximum
   "UtilizationMetricsVolumeWriteOpsPerSecondMaximum")
  (:utilization-metrics-volume-read-bytes-per-second-maximum
   "UtilizationMetricsVolumeReadBytesPerSecondMaximum")
  (:utilization-metrics-volume-write-bytes-per-second-maximum
   "UtilizationMetricsVolumeWriteBytesPerSecondMaximum")
  (:lookback-period-in-days "LookbackPeriodInDays")
  (:current-configuration-volume-type "CurrentConfigurationVolumeType")
  (:current-configuration-volume-baseline-iops
   "CurrentConfigurationVolumeBaselineIOPS")
  (:current-configuration-volume-baseline-throughput
   "CurrentConfigurationVolumeBaselineThroughput")
  (:current-configuration-volume-burst-iops
   "CurrentConfigurationVolumeBurstIOPS")
  (:current-configuration-volume-burst-throughput
   "CurrentConfigurationVolumeBurstThroughput")
  (:current-configuration-volume-size "CurrentConfigurationVolumeSize")
  (:current-monthly-price "CurrentMonthlyPrice")
  (:recommendation-options-configuration-volume-type
   "RecommendationOptionsConfigurationVolumeType")
  (:recommendation-options-configuration-volume-baseline-iops
   "RecommendationOptionsConfigurationVolumeBaselineIOPS")
  (:recommendation-options-configuration-volume-baseline-throughput
   "RecommendationOptionsConfigurationVolumeBaselineThroughput")
  (:recommendation-options-configuration-volume-burst-iops
   "RecommendationOptionsConfigurationVolumeBurstIOPS")
  (:recommendation-options-configuration-volume-burst-throughput
   "RecommendationOptionsConfigurationVolumeBurstThroughput")
  (:recommendation-options-configuration-volume-size
   "RecommendationOptionsConfigurationVolumeSize")
  (:recommendation-options-monthly-price "RecommendationOptionsMonthlyPrice")
  (:recommendation-options-performance-risk
   "RecommendationOptionsPerformanceRisk")
  (:last-refresh-timestamp "LastRefreshTimestamp")
  (:current-performance-risk "CurrentPerformanceRisk")
  (:recommendation-options-savings-opportunity-percentage
   "RecommendationOptionsSavingsOpportunityPercentage")
  (:recommendation-options-estimated-monthly-savings-currency
   "RecommendationOptionsEstimatedMonthlySavingsCurrency")
  (:recommendation-options-estimated-monthly-savings-value
   "RecommendationOptionsEstimatedMonthlySavingsValue")
  (:tags "Tags")
  (:root-volume "RootVolume")
  (:current-configuration-root-volume "CurrentConfigurationRootVolume")
  (:effective-recommendation-preferences-savings-estimation-mode
   "EffectiveRecommendationPreferencesSavingsEstimationMode")
  (:recommendation-options-savings-opportunity-after-discounts-percentage
   "RecommendationOptionsSavingsOpportunityAfterDiscountsPercentage")
  (:recommendation-options-estimated-monthly-savings-currency-after-discounts
   "RecommendationOptionsEstimatedMonthlySavingsCurrencyAfterDiscounts")
  (:recommendation-options-estimated-monthly-savings-value-after-discounts
   "RecommendationOptionsEstimatedMonthlySavingsValueAfterDiscounts"))

(smithy/sdk/shapes:define-list exportable-volume-fields :member
                               exportable-volume-field)

(smithy/sdk/shapes:define-structure external-metric-status common-lisp:nil
                                    ((status-code :target-type
                                      external-metric-status-code :member-name
                                      "statusCode")
                                     (status-reason :target-type
                                      external-metric-status-reason
                                      :member-name "statusReason"))
                                    (:shape-name "ExternalMetricStatus"))

(smithy/sdk/shapes:define-enum external-metric-status-code
    common-lisp:nil
  (:no-external-metric-set "NO_EXTERNAL_METRIC_SET")
  (:integration-success "INTEGRATION_SUCCESS")
  (:datadog-integration-error "DATADOG_INTEGRATION_ERROR")
  (:dynatrace-integration-error "DYNATRACE_INTEGRATION_ERROR")
  (:newrelic-integration-error "NEWRELIC_INTEGRATION_ERROR")
  (:instana-integration-error "INSTANA_INTEGRATION_ERROR")
  (:insufficient-datadog-metrics "INSUFFICIENT_DATADOG_METRICS")
  (:insufficient-dynatrace-metrics "INSUFFICIENT_DYNATRACE_METRICS")
  (:insufficient-newrelic-metrics "INSUFFICIENT_NEWRELIC_METRICS")
  (:insufficient-instana-metrics "INSUFFICIENT_INSTANA_METRICS"))

(smithy/sdk/shapes:define-type external-metric-status-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure external-metrics-preference common-lisp:nil
                                    ((source :target-type
                                      external-metrics-source :member-name
                                      "source"))
                                    (:shape-name "ExternalMetricsPreference"))

(smithy/sdk/shapes:define-enum external-metrics-source
    common-lisp:nil
  (:datadog "Datadog")
  (:dynatrace "Dynatrace")
  (:newrelic "NewRelic")
  (:instana "Instana"))

(smithy/sdk/shapes:define-type failure-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum file-format
    common-lisp:nil
  (:csv "Csv"))

(smithy/sdk/shapes:define-structure filter common-lisp:nil
                                    ((name :target-type filter-name
                                      :member-name "name")
                                     (values :target-type filter-values
                                      :member-name "values"))
                                    (:shape-name "Filter"))

(smithy/sdk/shapes:define-enum filter-name
    common-lisp:nil
  (:finding "Finding")
  (:finding-reason-codes "FindingReasonCodes")
  (:recommendation-source-type "RecommendationSourceType")
  (:inferred-workload-types "InferredWorkloadTypes"))

(smithy/sdk/shapes:define-type filter-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list filter-values :member filter-value)

(smithy/sdk/shapes:define-list filters :member filter)

(smithy/sdk/shapes:define-enum finding
    common-lisp:nil
  (:under-provisioned "Underprovisioned")
  (:over-provisioned "Overprovisioned")
  (:optimized "Optimized")
  (:not-optimized "NotOptimized"))

(smithy/sdk/shapes:define-enum finding-reason-code
    common-lisp:nil
  (:memory-over-provisioned "MemoryOverprovisioned")
  (:memory-under-provisioned "MemoryUnderprovisioned"))

(smithy/sdk/shapes:define-type function-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list function-arns :member function-arn)

(smithy/sdk/shapes:define-type function-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-auto-scaling-group-recommendations-request
                                common-lisp:nil
                                ((account-ids :target-type account-ids
                                  :member-name "accountIds")
                                 (auto-scaling-group-arns :target-type
                                  auto-scaling-group-arns :member-name
                                  "autoScalingGroupArns")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (filters :target-type filters :member-name
                                  "filters")
                                 (recommendation-preferences :target-type
                                  recommendation-preferences :member-name
                                  "recommendationPreferences"))
                                (:shape-name
                                 "GetAutoScalingGroupRecommendationsRequest"))

(smithy/sdk/shapes:define-output
 get-auto-scaling-group-recommendations-response common-lisp:nil
 ((next-token :target-type next-token :member-name "nextToken")
  (auto-scaling-group-recommendations :target-type
   auto-scaling-group-recommendations :member-name
   "autoScalingGroupRecommendations")
  (errors :target-type get-recommendation-errors :member-name "errors"))
 (:shape-name "GetAutoScalingGroupRecommendationsResponse"))

(smithy/sdk/shapes:define-input get-ebsvolume-recommendations-request
                                common-lisp:nil
                                ((volume-arns :target-type volume-arns
                                  :member-name "volumeArns")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (filters :target-type ebsfilters :member-name
                                  "filters")
                                 (account-ids :target-type account-ids
                                  :member-name "accountIds"))
                                (:shape-name
                                 "GetEBSVolumeRecommendationsRequest"))

(smithy/sdk/shapes:define-output get-ebsvolume-recommendations-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (volume-recommendations :target-type
                                   volume-recommendations :member-name
                                   "volumeRecommendations")
                                  (errors :target-type
                                   get-recommendation-errors :member-name
                                   "errors"))
                                 (:shape-name
                                  "GetEBSVolumeRecommendationsResponse"))

(smithy/sdk/shapes:define-input get-ec2instance-recommendations-request
                                common-lisp:nil
                                ((instance-arns :target-type instance-arns
                                  :member-name "instanceArns")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (filters :target-type filters :member-name
                                  "filters")
                                 (account-ids :target-type account-ids
                                  :member-name "accountIds")
                                 (recommendation-preferences :target-type
                                  recommendation-preferences :member-name
                                  "recommendationPreferences"))
                                (:shape-name
                                 "GetEC2InstanceRecommendationsRequest"))

(smithy/sdk/shapes:define-output get-ec2instance-recommendations-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (instance-recommendations :target-type
                                   instance-recommendations :member-name
                                   "instanceRecommendations")
                                  (errors :target-type
                                   get-recommendation-errors :member-name
                                   "errors"))
                                 (:shape-name
                                  "GetEC2InstanceRecommendationsResponse"))

(smithy/sdk/shapes:define-input get-ec2recommendation-projected-metrics-request
                                common-lisp:nil
                                ((instance-arn :target-type instance-arn
                                  :required common-lisp:t :member-name
                                  "instanceArn")
                                 (stat :target-type metric-statistic :required
                                  common-lisp:t :member-name "stat")
                                 (period :target-type period :required
                                  common-lisp:t :member-name "period")
                                 (start-time :target-type timestamp :required
                                  common-lisp:t :member-name "startTime")
                                 (end-time :target-type timestamp :required
                                  common-lisp:t :member-name "endTime")
                                 (recommendation-preferences :target-type
                                  recommendation-preferences :member-name
                                  "recommendationPreferences"))
                                (:shape-name
                                 "GetEC2RecommendationProjectedMetricsRequest"))

(smithy/sdk/shapes:define-output
 get-ec2recommendation-projected-metrics-response common-lisp:nil
 ((recommended-option-projected-metrics :target-type
   recommended-option-projected-metrics :member-name
   "recommendedOptionProjectedMetrics"))
 (:shape-name "GetEC2RecommendationProjectedMetricsResponse"))

(smithy/sdk/shapes:define-input
 get-ecsservice-recommendation-projected-metrics-request common-lisp:nil
 ((service-arn :target-type service-arn :required common-lisp:t :member-name
   "serviceArn")
  (stat :target-type metric-statistic :required common-lisp:t :member-name
   "stat")
  (period :target-type period :required common-lisp:t :member-name "period")
  (start-time :target-type timestamp :required common-lisp:t :member-name
   "startTime")
  (end-time :target-type timestamp :required common-lisp:t :member-name
   "endTime"))
 (:shape-name "GetECSServiceRecommendationProjectedMetricsRequest"))

(smithy/sdk/shapes:define-output
 get-ecsservice-recommendation-projected-metrics-response common-lisp:nil
 ((recommended-option-projected-metrics :target-type
   ecsservice-recommended-option-projected-metrics :member-name
   "recommendedOptionProjectedMetrics"))
 (:shape-name "GetECSServiceRecommendationProjectedMetricsResponse"))

(smithy/sdk/shapes:define-input get-ecsservice-recommendations-request
                                common-lisp:nil
                                ((service-arns :target-type service-arns
                                  :member-name "serviceArns")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (filters :target-type
                                  ecsservice-recommendation-filters
                                  :member-name "filters")
                                 (account-ids :target-type account-ids
                                  :member-name "accountIds"))
                                (:shape-name
                                 "GetECSServiceRecommendationsRequest"))

(smithy/sdk/shapes:define-output get-ecsservice-recommendations-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (ecs-service-recommendations :target-type
                                   ecsservice-recommendations :member-name
                                   "ecsServiceRecommendations")
                                  (errors :target-type
                                   get-recommendation-errors :member-name
                                   "errors"))
                                 (:shape-name
                                  "GetECSServiceRecommendationsResponse"))

(smithy/sdk/shapes:define-input
 get-effective-recommendation-preferences-request common-lisp:nil
 ((resource-arn :target-type resource-arn :required common-lisp:t :member-name
   "resourceArn"))
 (:shape-name "GetEffectiveRecommendationPreferencesRequest"))

(smithy/sdk/shapes:define-output
 get-effective-recommendation-preferences-response common-lisp:nil
 ((enhanced-infrastructure-metrics :target-type enhanced-infrastructure-metrics
   :member-name "enhancedInfrastructureMetrics")
  (external-metrics-preference :target-type external-metrics-preference
   :member-name "externalMetricsPreference")
  (look-back-period :target-type look-back-period-preference :member-name
   "lookBackPeriod")
  (utilization-preferences :target-type utilization-preferences :member-name
   "utilizationPreferences")
  (preferred-resources :target-type effective-preferred-resources :member-name
   "preferredResources"))
 (:shape-name "GetEffectiveRecommendationPreferencesResponse"))

(smithy/sdk/shapes:define-input get-enrollment-status-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetEnrollmentStatusRequest"))

(smithy/sdk/shapes:define-output get-enrollment-status-response common-lisp:nil
                                 ((status :target-type status :member-name
                                   "status")
                                  (status-reason :target-type status-reason
                                   :member-name "statusReason")
                                  (member-accounts-enrolled :target-type
                                   member-accounts-enrolled :member-name
                                   "memberAccountsEnrolled")
                                  (last-updated-timestamp :target-type
                                   last-updated-timestamp :member-name
                                   "lastUpdatedTimestamp")
                                  (number-of-member-accounts-opted-in
                                   :target-type
                                   number-of-member-accounts-opted-in
                                   :member-name
                                   "numberOfMemberAccountsOptedIn"))
                                 (:shape-name "GetEnrollmentStatusResponse"))

(smithy/sdk/shapes:define-input
 get-enrollment-statuses-for-organization-request common-lisp:nil
 ((filters :target-type enrollment-filters :member-name "filters")
  (next-token :target-type next-token :member-name "nextToken")
  (max-results :target-type max-results :member-name "maxResults"))
 (:shape-name "GetEnrollmentStatusesForOrganizationRequest"))

(smithy/sdk/shapes:define-output
 get-enrollment-statuses-for-organization-response common-lisp:nil
 ((account-enrollment-statuses :target-type account-enrollment-statuses
   :member-name "accountEnrollmentStatuses")
  (next-token :target-type next-token :member-name "nextToken"))
 (:shape-name "GetEnrollmentStatusesForOrganizationResponse"))

(smithy/sdk/shapes:define-input get-idle-recommendations-request
                                common-lisp:nil
                                ((resource-arns :target-type resource-arns
                                  :member-name "resourceArns")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type idle-max-results
                                  :member-name "maxResults")
                                 (filters :target-type
                                  idle-recommendation-filters :member-name
                                  "filters")
                                 (account-ids :target-type account-ids
                                  :member-name "accountIds")
                                 (order-by :target-type order-by :member-name
                                  "orderBy"))
                                (:shape-name "GetIdleRecommendationsRequest"))

(smithy/sdk/shapes:define-output get-idle-recommendations-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (idle-recommendations :target-type
                                   idle-recommendations :member-name
                                   "idleRecommendations")
                                  (errors :target-type
                                   idle-recommendation-errors :member-name
                                   "errors"))
                                 (:shape-name "GetIdleRecommendationsResponse"))

(smithy/sdk/shapes:define-input get-lambda-function-recommendations-request
                                common-lisp:nil
                                ((function-arns :target-type function-arns
                                  :member-name "functionArns")
                                 (account-ids :target-type account-ids
                                  :member-name "accountIds")
                                 (filters :target-type
                                  lambda-function-recommendation-filters
                                  :member-name "filters")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name
                                 "GetLambdaFunctionRecommendationsRequest"))

(smithy/sdk/shapes:define-output get-lambda-function-recommendations-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (lambda-function-recommendations :target-type
                                   lambda-function-recommendations :member-name
                                   "lambdaFunctionRecommendations"))
                                 (:shape-name
                                  "GetLambdaFunctionRecommendationsResponse"))

(smithy/sdk/shapes:define-input get-license-recommendations-request
                                common-lisp:nil
                                ((resource-arns :target-type resource-arns
                                  :member-name "resourceArns")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (filters :target-type
                                  license-recommendation-filters :member-name
                                  "filters")
                                 (account-ids :target-type account-ids
                                  :member-name "accountIds"))
                                (:shape-name
                                 "GetLicenseRecommendationsRequest"))

(smithy/sdk/shapes:define-output get-license-recommendations-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (license-recommendations :target-type
                                   license-recommendations :member-name
                                   "licenseRecommendations")
                                  (errors :target-type
                                   get-recommendation-errors :member-name
                                   "errors"))
                                 (:shape-name
                                  "GetLicenseRecommendationsResponse"))

(smithy/sdk/shapes:define-input
 get-rdsdatabase-recommendation-projected-metrics-request common-lisp:nil
 ((resource-arn :target-type resource-arn :required common-lisp:t :member-name
   "resourceArn")
  (stat :target-type metric-statistic :required common-lisp:t :member-name
   "stat")
  (period :target-type period :required common-lisp:t :member-name "period")
  (start-time :target-type timestamp :required common-lisp:t :member-name
   "startTime")
  (end-time :target-type timestamp :required common-lisp:t :member-name
   "endTime")
  (recommendation-preferences :target-type recommendation-preferences
   :member-name "recommendationPreferences"))
 (:shape-name "GetRDSDatabaseRecommendationProjectedMetricsRequest"))

(smithy/sdk/shapes:define-output
 get-rdsdatabase-recommendation-projected-metrics-response common-lisp:nil
 ((recommended-option-projected-metrics :target-type
   rdsdatabase-recommended-option-projected-metrics :member-name
   "recommendedOptionProjectedMetrics"))
 (:shape-name "GetRDSDatabaseRecommendationProjectedMetricsResponse"))

(smithy/sdk/shapes:define-input get-rdsdatabase-recommendations-request
                                common-lisp:nil
                                ((resource-arns :target-type resource-arns
                                  :member-name "resourceArns")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (filters :target-type
                                  rdsdbrecommendation-filters :member-name
                                  "filters")
                                 (account-ids :target-type account-ids
                                  :member-name "accountIds")
                                 (recommendation-preferences :target-type
                                  recommendation-preferences :member-name
                                  "recommendationPreferences"))
                                (:shape-name
                                 "GetRDSDatabaseRecommendationsRequest"))

(smithy/sdk/shapes:define-output get-rdsdatabase-recommendations-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (rds-dbrecommendations :target-type
                                   rdsdbrecommendations :member-name
                                   "rdsDBRecommendations")
                                  (errors :target-type
                                   get-recommendation-errors :member-name
                                   "errors"))
                                 (:shape-name
                                  "GetRDSDatabaseRecommendationsResponse"))

(smithy/sdk/shapes:define-structure get-recommendation-error common-lisp:nil
                                    ((identifier :target-type identifier
                                      :member-name "identifier")
                                     (code :target-type code :member-name
                                      "code")
                                     (message :target-type message :member-name
                                      "message"))
                                    (:shape-name "GetRecommendationError"))

(smithy/sdk/shapes:define-list get-recommendation-errors :member
                               get-recommendation-error)

(smithy/sdk/shapes:define-input get-recommendation-preferences-request
                                common-lisp:nil
                                ((resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "resourceType")
                                 (scope :target-type scope :member-name
                                  "scope")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name
                                 "GetRecommendationPreferencesRequest"))

(smithy/sdk/shapes:define-output get-recommendation-preferences-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (recommendation-preferences-details
                                   :target-type
                                   recommendation-preferences-details
                                   :member-name
                                   "recommendationPreferencesDetails"))
                                 (:shape-name
                                  "GetRecommendationPreferencesResponse"))

(smithy/sdk/shapes:define-input get-recommendation-summaries-request
                                common-lisp:nil
                                ((account-ids :target-type account-ids
                                  :member-name "accountIds")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name
                                 "GetRecommendationSummariesRequest"))

(smithy/sdk/shapes:define-output get-recommendation-summaries-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (recommendation-summaries :target-type
                                   recommendation-summaries :member-name
                                   "recommendationSummaries"))
                                 (:shape-name
                                  "GetRecommendationSummariesResponse"))

(smithy/sdk/shapes:define-structure gpu common-lisp:nil
                                    ((gpu-count :target-type gpu-count
                                      :member-name "gpuCount")
                                     (gpu-memory-size-in-mi-b :target-type
                                      gpu-memory-size-in-mi-b :member-name
                                      "gpuMemorySizeInMiB"))
                                    (:shape-name "Gpu"))

(smithy/sdk/shapes:define-type gpu-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure gpu-info common-lisp:nil
                                    ((gpus :target-type gpus :member-name
                                      "gpus"))
                                    (:shape-name "GpuInfo"))

(smithy/sdk/shapes:define-type gpu-memory-size-in-mi-b
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list gpus :member gpu)

(smithy/sdk/shapes:define-type high smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum idle
    common-lisp:nil
  (:true "True")
  (:false "False"))

(smithy/sdk/shapes:define-structure idle-estimated-monthly-savings
                                    common-lisp:nil
                                    ((currency :target-type currency
                                      :member-name "currency")
                                     (value :target-type value :member-name
                                      "value"))
                                    (:shape-name "IdleEstimatedMonthlySavings"))

(smithy/sdk/shapes:define-enum idle-finding
    common-lisp:nil
  (:idle "Idle")
  (:unattached "Unattached"))

(smithy/sdk/shapes:define-type idle-finding-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type idle-max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum idle-metric-name
    common-lisp:nil
  (:cpu "CPU")
  (:memory "Memory")
  (:network-out-bytes-per-second "NetworkOutBytesPerSecond")
  (:network-in-bytes-per-second "NetworkInBytesPerSecond")
  (:database-connections "DatabaseConnections")
  (:ebs-volume-read-iops "EBSVolumeReadIOPS")
  (:ebs-volume-write-iops "EBSVolumeWriteIOPS")
  (:volume-read-ops-per-second "VolumeReadOpsPerSecond")
  (:volume-write-ops-per-second "VolumeWriteOpsPerSecond"))

(smithy/sdk/shapes:define-structure idle-recommendation common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :member-name "resourceArn")
                                     (resource-id :target-type resource-id
                                      :member-name "resourceId")
                                     (resource-type :target-type
                                      idle-recommendation-resource-type
                                      :member-name "resourceType")
                                     (account-id :target-type account-id
                                      :member-name "accountId")
                                     (finding :target-type idle-finding
                                      :member-name "finding")
                                     (finding-description :target-type
                                      idle-finding-description :member-name
                                      "findingDescription")
                                     (savings-opportunity :target-type
                                      idle-savings-opportunity :member-name
                                      "savingsOpportunity")
                                     (savings-opportunity-after-discounts
                                      :target-type
                                      idle-savings-opportunity-after-discounts
                                      :member-name
                                      "savingsOpportunityAfterDiscounts")
                                     (utilization-metrics :target-type
                                      idle-utilization-metrics :member-name
                                      "utilizationMetrics")
                                     (look-back-period-in-days :target-type
                                      look-back-period-in-days :member-name
                                      "lookBackPeriodInDays")
                                     (last-refresh-timestamp :target-type
                                      last-refresh-timestamp :member-name
                                      "lastRefreshTimestamp")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "IdleRecommendation"))

(smithy/sdk/shapes:define-structure idle-recommendation-error common-lisp:nil
                                    ((identifier :target-type identifier
                                      :member-name "identifier")
                                     (code :target-type code :member-name
                                      "code")
                                     (message :target-type message :member-name
                                      "message")
                                     (resource-type :target-type
                                      idle-recommendation-resource-type
                                      :member-name "resourceType"))
                                    (:shape-name "IdleRecommendationError"))

(smithy/sdk/shapes:define-list idle-recommendation-errors :member
                               idle-recommendation-error)

(smithy/sdk/shapes:define-structure idle-recommendation-filter common-lisp:nil
                                    ((name :target-type
                                      idle-recommendation-filter-name
                                      :member-name "name")
                                     (values :target-type filter-values
                                      :member-name "values"))
                                    (:shape-name "IdleRecommendationFilter"))

(smithy/sdk/shapes:define-enum idle-recommendation-filter-name
    common-lisp:nil
  (:finding "Finding")
  (:resource-type "ResourceType"))

(smithy/sdk/shapes:define-list idle-recommendation-filters :member
                               idle-recommendation-filter)

(smithy/sdk/shapes:define-enum idle-recommendation-resource-type
    common-lisp:nil
  (:ec2-instance "EC2Instance")
  (:auto-scaling-group "AutoScalingGroup")
  (:ebs-volume "EBSVolume")
  (:ecs-service "ECSService")
  (:rds-db-instance "RDSDBInstance"))

(smithy/sdk/shapes:define-list idle-recommendations :member idle-recommendation)

(smithy/sdk/shapes:define-structure idle-savings-opportunity common-lisp:nil
                                    ((savings-opportunity-percentage
                                      :target-type
                                      savings-opportunity-percentage
                                      :member-name
                                      "savingsOpportunityPercentage")
                                     (estimated-monthly-savings :target-type
                                      idle-estimated-monthly-savings
                                      :member-name "estimatedMonthlySavings"))
                                    (:shape-name "IdleSavingsOpportunity"))

(smithy/sdk/shapes:define-structure idle-savings-opportunity-after-discounts
                                    common-lisp:nil
                                    ((savings-opportunity-percentage
                                      :target-type
                                      savings-opportunity-percentage
                                      :member-name
                                      "savingsOpportunityPercentage")
                                     (estimated-monthly-savings :target-type
                                      idle-estimated-monthly-savings
                                      :member-name "estimatedMonthlySavings"))
                                    (:shape-name
                                     "IdleSavingsOpportunityAfterDiscounts"))

(smithy/sdk/shapes:define-list idle-summaries :member idle-summary)

(smithy/sdk/shapes:define-structure idle-summary common-lisp:nil
                                    ((name :target-type idle-finding
                                      :member-name "name")
                                     (value :target-type summary-value
                                      :member-name "value"))
                                    (:shape-name "IdleSummary"))

(smithy/sdk/shapes:define-structure idle-utilization-metric common-lisp:nil
                                    ((name :target-type idle-metric-name
                                      :member-name "name")
                                     (statistic :target-type metric-statistic
                                      :member-name "statistic")
                                     (value :target-type metric-value
                                      :member-name "value"))
                                    (:shape-name "IdleUtilizationMetric"))

(smithy/sdk/shapes:define-list idle-utilization-metrics :member
                               idle-utilization-metric)

(smithy/sdk/shapes:define-type include-member-accounts
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure inferred-workload-saving common-lisp:nil
                                    ((inferred-workload-types :target-type
                                      inferred-workload-types :member-name
                                      "inferredWorkloadTypes")
                                     (estimated-monthly-savings :target-type
                                      estimated-monthly-savings :member-name
                                      "estimatedMonthlySavings"))
                                    (:shape-name "InferredWorkloadSaving"))

(smithy/sdk/shapes:define-list inferred-workload-savings :member
                               inferred-workload-saving)

(smithy/sdk/shapes:define-enum inferred-workload-type
    common-lisp:nil
  (:amazon-emr "AmazonEmr")
  (:apache-cassandra "ApacheCassandra")
  (:apache-hadoop "ApacheHadoop")
  (:memcached "Memcached")
  (:nginx "Nginx")
  (:postgre-sql "PostgreSql")
  (:redis "Redis")
  (:kafka "Kafka")
  (:sqlserver "SQLServer"))

(smithy/sdk/shapes:define-list inferred-workload-types :member
                               inferred-workload-type)

(smithy/sdk/shapes:define-enum inferred-workload-types-preference
    common-lisp:nil
  (:active "Active")
  (:inactive "Inactive"))

(smithy/sdk/shapes:define-type instance-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list instance-arns :member instance-arn)

(smithy/sdk/shapes:define-structure instance-estimated-monthly-savings
                                    common-lisp:nil
                                    ((currency :target-type currency
                                      :member-name "currency")
                                     (value :target-type value :member-name
                                      "value"))
                                    (:shape-name
                                     "InstanceEstimatedMonthlySavings"))

(smithy/sdk/shapes:define-enum instance-idle
    common-lisp:nil
  (:true "True")
  (:false "False"))

(smithy/sdk/shapes:define-type instance-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure instance-recommendation common-lisp:nil
                                    ((instance-arn :target-type instance-arn
                                      :member-name "instanceArn")
                                     (account-id :target-type account-id
                                      :member-name "accountId")
                                     (instance-name :target-type instance-name
                                      :member-name "instanceName")
                                     (current-instance-type :target-type
                                      current-instance-type :member-name
                                      "currentInstanceType")
                                     (finding :target-type finding :member-name
                                      "finding")
                                     (finding-reason-codes :target-type
                                      instance-recommendation-finding-reason-codes
                                      :member-name "findingReasonCodes")
                                     (utilization-metrics :target-type
                                      utilization-metrics :member-name
                                      "utilizationMetrics")
                                     (look-back-period-in-days :target-type
                                      look-back-period-in-days :member-name
                                      "lookBackPeriodInDays")
                                     (recommendation-options :target-type
                                      recommendation-options :member-name
                                      "recommendationOptions")
                                     (recommendation-sources :target-type
                                      recommendation-sources :member-name
                                      "recommendationSources")
                                     (last-refresh-timestamp :target-type
                                      last-refresh-timestamp :member-name
                                      "lastRefreshTimestamp")
                                     (current-performance-risk :target-type
                                      current-performance-risk :member-name
                                      "currentPerformanceRisk")
                                     (effective-recommendation-preferences
                                      :target-type
                                      effective-recommendation-preferences
                                      :member-name
                                      "effectiveRecommendationPreferences")
                                     (inferred-workload-types :target-type
                                      inferred-workload-types :member-name
                                      "inferredWorkloadTypes")
                                     (instance-state :target-type
                                      instance-state :member-name
                                      "instanceState")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (external-metric-status :target-type
                                      external-metric-status :member-name
                                      "externalMetricStatus")
                                     (current-instance-gpu-info :target-type
                                      gpu-info :member-name
                                      "currentInstanceGpuInfo")
                                     (idle :target-type instance-idle
                                      :member-name "idle"))
                                    (:shape-name "InstanceRecommendation"))

(smithy/sdk/shapes:define-enum instance-recommendation-finding-reason-code
    common-lisp:nil
  (:cpu-over-provisioned "CPUOverprovisioned")
  (:cpu-under-provisioned "CPUUnderprovisioned")
  (:memory-over-provisioned "MemoryOverprovisioned")
  (:memory-under-provisioned "MemoryUnderprovisioned")
  (:ebs-throughput-over-provisioned "EBSThroughputOverprovisioned")
  (:ebs-throughput-under-provisioned "EBSThroughputUnderprovisioned")
  (:ebs-iops-over-provisioned "EBSIOPSOverprovisioned")
  (:ebs-iops-under-provisioned "EBSIOPSUnderprovisioned")
  (:network-bandwidth-over-provisioned "NetworkBandwidthOverprovisioned")
  (:network-bandwidth-under-provisioned "NetworkBandwidthUnderprovisioned")
  (:network-pps-over-provisioned "NetworkPPSOverprovisioned")
  (:network-pps-under-provisioned "NetworkPPSUnderprovisioned")
  (:disk-iops-over-provisioned "DiskIOPSOverprovisioned")
  (:disk-iops-under-provisioned "DiskIOPSUnderprovisioned")
  (:disk-throughput-over-provisioned "DiskThroughputOverprovisioned")
  (:disk-throughput-under-provisioned "DiskThroughputUnderprovisioned")
  (:gpu-under-provisioned "GPUUnderprovisioned")
  (:gpu-over-provisioned "GPUOverprovisioned")
  (:gpu-memory-under-provisioned "GPUMemoryUnderprovisioned")
  (:gpu-memory-over-provisioned "GPUMemoryOverprovisioned"))

(smithy/sdk/shapes:define-list instance-recommendation-finding-reason-codes
                               :member
                               instance-recommendation-finding-reason-code)

(smithy/sdk/shapes:define-structure instance-recommendation-option
                                    common-lisp:nil
                                    ((instance-type :target-type instance-type
                                      :member-name "instanceType")
                                     (instance-gpu-info :target-type gpu-info
                                      :member-name "instanceGpuInfo")
                                     (projected-utilization-metrics
                                      :target-type
                                      projected-utilization-metrics
                                      :member-name
                                      "projectedUtilizationMetrics")
                                     (platform-differences :target-type
                                      platform-differences :member-name
                                      "platformDifferences")
                                     (performance-risk :target-type
                                      performance-risk :member-name
                                      "performanceRisk")
                                     (rank :target-type rank :member-name
                                      "rank")
                                     (savings-opportunity :target-type
                                      savings-opportunity :member-name
                                      "savingsOpportunity")
                                     (savings-opportunity-after-discounts
                                      :target-type
                                      instance-savings-opportunity-after-discounts
                                      :member-name
                                      "savingsOpportunityAfterDiscounts")
                                     (migration-effort :target-type
                                      migration-effort :member-name
                                      "migrationEffort"))
                                    (:shape-name
                                     "InstanceRecommendationOption"))

(smithy/sdk/shapes:define-list instance-recommendations :member
                               instance-recommendation)

(smithy/sdk/shapes:define-structure instance-savings-estimation-mode
                                    common-lisp:nil
                                    ((source :target-type
                                      instance-savings-estimation-mode-source
                                      :member-name "source"))
                                    (:shape-name
                                     "InstanceSavingsEstimationMode"))

(smithy/sdk/shapes:define-enum instance-savings-estimation-mode-source
    common-lisp:nil
  (:public-pricing "PublicPricing")
  (:cost-explorer-rightsizing "CostExplorerRightsizing")
  (:cost-optimization-hub "CostOptimizationHub"))

(smithy/sdk/shapes:define-structure
 instance-savings-opportunity-after-discounts common-lisp:nil
 ((savings-opportunity-percentage :target-type savings-opportunity-percentage
   :member-name "savingsOpportunityPercentage")
  (estimated-monthly-savings :target-type instance-estimated-monthly-savings
   :member-name "estimatedMonthlySavings"))
 (:shape-name "InstanceSavingsOpportunityAfterDiscounts"))

(smithy/sdk/shapes:define-enum instance-state
    common-lisp:nil
  (:pending "pending")
  (:running "running")
  (:shutting-down "shutting-down")
  (:terminated "terminated")
  (:stopping "stopping")
  (:stopped "stopped"))

(smithy/sdk/shapes:define-type instance-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-parameter-value-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidParameterValueException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure job-filter common-lisp:nil
                                    ((name :target-type job-filter-name
                                      :member-name "name")
                                     (values :target-type filter-values
                                      :member-name "values"))
                                    (:shape-name "JobFilter"))

(smithy/sdk/shapes:define-enum job-filter-name
    common-lisp:nil
  (:resource-type "ResourceType")
  (:job-status "JobStatus"))

(smithy/sdk/shapes:define-list job-filters :member job-filter)

(smithy/sdk/shapes:define-type job-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list job-ids :member job-id)

(smithy/sdk/shapes:define-enum job-status
    common-lisp:nil
  (:queued "Queued")
  (:in-progress "InProgress")
  (:complete "Complete")
  (:failed "Failed"))

(smithy/sdk/shapes:define-structure lambda-effective-recommendation-preferences
                                    common-lisp:nil
                                    ((savings-estimation-mode :target-type
                                      lambda-savings-estimation-mode
                                      :member-name "savingsEstimationMode"))
                                    (:shape-name
                                     "LambdaEffectiveRecommendationPreferences"))

(smithy/sdk/shapes:define-structure lambda-estimated-monthly-savings
                                    common-lisp:nil
                                    ((currency :target-type currency
                                      :member-name "currency")
                                     (value :target-type value :member-name
                                      "value"))
                                    (:shape-name
                                     "LambdaEstimatedMonthlySavings"))

(smithy/sdk/shapes:define-enum lambda-function-memory-metric-name
    common-lisp:nil
  (:duration "Duration"))

(smithy/sdk/shapes:define-enum lambda-function-memory-metric-statistic
    common-lisp:nil
  (:lower-bound "LowerBound")
  (:upper-bound "UpperBound")
  (:expected "Expected"))

(smithy/sdk/shapes:define-structure lambda-function-memory-projected-metric
                                    common-lisp:nil
                                    ((name :target-type
                                      lambda-function-memory-metric-name
                                      :member-name "name")
                                     (statistic :target-type
                                      lambda-function-memory-metric-statistic
                                      :member-name "statistic")
                                     (value :target-type metric-value
                                      :member-name "value"))
                                    (:shape-name
                                     "LambdaFunctionMemoryProjectedMetric"))

(smithy/sdk/shapes:define-list lambda-function-memory-projected-metrics :member
                               lambda-function-memory-projected-metric)

(smithy/sdk/shapes:define-structure
 lambda-function-memory-recommendation-option common-lisp:nil
 ((rank :target-type rank :member-name "rank")
  (memory-size :target-type memory-size :member-name "memorySize")
  (projected-utilization-metrics :target-type
   lambda-function-memory-projected-metrics :member-name
   "projectedUtilizationMetrics")
  (savings-opportunity :target-type savings-opportunity :member-name
   "savingsOpportunity")
  (savings-opportunity-after-discounts :target-type
   lambda-savings-opportunity-after-discounts :member-name
   "savingsOpportunityAfterDiscounts"))
 (:shape-name "LambdaFunctionMemoryRecommendationOption"))

(smithy/sdk/shapes:define-list lambda-function-memory-recommendation-options
                               :member
                               lambda-function-memory-recommendation-option)

(smithy/sdk/shapes:define-enum lambda-function-metric-name
    common-lisp:nil
  (:duration "Duration")
  (:memory "Memory"))

(smithy/sdk/shapes:define-enum lambda-function-metric-statistic
    common-lisp:nil
  (:maximum "Maximum")
  (:average "Average"))

(smithy/sdk/shapes:define-structure lambda-function-recommendation
                                    common-lisp:nil
                                    ((function-arn :target-type function-arn
                                      :member-name "functionArn")
                                     (function-version :target-type
                                      function-version :member-name
                                      "functionVersion")
                                     (account-id :target-type account-id
                                      :member-name "accountId")
                                     (current-memory-size :target-type
                                      memory-size :member-name
                                      "currentMemorySize")
                                     (number-of-invocations :target-type
                                      number-of-invocations :member-name
                                      "numberOfInvocations")
                                     (utilization-metrics :target-type
                                      lambda-function-utilization-metrics
                                      :member-name "utilizationMetrics")
                                     (lookback-period-in-days :target-type
                                      look-back-period-in-days :member-name
                                      "lookbackPeriodInDays")
                                     (last-refresh-timestamp :target-type
                                      last-refresh-timestamp :member-name
                                      "lastRefreshTimestamp")
                                     (finding :target-type
                                      lambda-function-recommendation-finding
                                      :member-name "finding")
                                     (finding-reason-codes :target-type
                                      lambda-function-recommendation-finding-reason-codes
                                      :member-name "findingReasonCodes")
                                     (memory-size-recommendation-options
                                      :target-type
                                      lambda-function-memory-recommendation-options
                                      :member-name
                                      "memorySizeRecommendationOptions")
                                     (current-performance-risk :target-type
                                      current-performance-risk :member-name
                                      "currentPerformanceRisk")
                                     (effective-recommendation-preferences
                                      :target-type
                                      lambda-effective-recommendation-preferences
                                      :member-name
                                      "effectiveRecommendationPreferences")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name
                                     "LambdaFunctionRecommendation"))

(smithy/sdk/shapes:define-structure lambda-function-recommendation-filter
                                    common-lisp:nil
                                    ((name :target-type
                                      lambda-function-recommendation-filter-name
                                      :member-name "name")
                                     (values :target-type filter-values
                                      :member-name "values"))
                                    (:shape-name
                                     "LambdaFunctionRecommendationFilter"))

(smithy/sdk/shapes:define-enum lambda-function-recommendation-filter-name
    common-lisp:nil
  (:finding "Finding")
  (:finding-reason-code "FindingReasonCode"))

(smithy/sdk/shapes:define-list lambda-function-recommendation-filters :member
                               lambda-function-recommendation-filter)

(smithy/sdk/shapes:define-enum lambda-function-recommendation-finding
    common-lisp:nil
  (:optimized "Optimized")
  (:not-optimized "NotOptimized")
  (:unavailable "Unavailable"))

(smithy/sdk/shapes:define-enum lambda-function-recommendation-finding-reason-code
    common-lisp:nil
  (:memory-over-provisioned "MemoryOverprovisioned")
  (:memory-under-provisioned "MemoryUnderprovisioned")
  (:insufficient-data "InsufficientData")
  (:inconclusive "Inconclusive"))

(smithy/sdk/shapes:define-list
 lambda-function-recommendation-finding-reason-codes :member
 lambda-function-recommendation-finding-reason-code)

(smithy/sdk/shapes:define-list lambda-function-recommendations :member
                               lambda-function-recommendation)

(smithy/sdk/shapes:define-structure lambda-function-utilization-metric
                                    common-lisp:nil
                                    ((name :target-type
                                      lambda-function-metric-name :member-name
                                      "name")
                                     (statistic :target-type
                                      lambda-function-metric-statistic
                                      :member-name "statistic")
                                     (value :target-type metric-value
                                      :member-name "value"))
                                    (:shape-name
                                     "LambdaFunctionUtilizationMetric"))

(smithy/sdk/shapes:define-list lambda-function-utilization-metrics :member
                               lambda-function-utilization-metric)

(smithy/sdk/shapes:define-structure lambda-savings-estimation-mode
                                    common-lisp:nil
                                    ((source :target-type
                                      lambda-savings-estimation-mode-source
                                      :member-name "source"))
                                    (:shape-name "LambdaSavingsEstimationMode"))

(smithy/sdk/shapes:define-enum lambda-savings-estimation-mode-source
    common-lisp:nil
  (:public-pricing "PublicPricing")
  (:cost-explorer-rightsizing "CostExplorerRightsizing")
  (:cost-optimization-hub "CostOptimizationHub"))

(smithy/sdk/shapes:define-structure lambda-savings-opportunity-after-discounts
                                    common-lisp:nil
                                    ((savings-opportunity-percentage
                                      :target-type
                                      savings-opportunity-percentage
                                      :member-name
                                      "savingsOpportunityPercentage")
                                     (estimated-monthly-savings :target-type
                                      lambda-estimated-monthly-savings
                                      :member-name "estimatedMonthlySavings"))
                                    (:shape-name
                                     "LambdaSavingsOpportunityAfterDiscounts"))

(smithy/sdk/shapes:define-type last-refresh-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type last-updated-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure license-configuration common-lisp:nil
                                    ((number-of-cores :target-type
                                      number-of-cores :member-name
                                      "numberOfCores")
                                     (instance-type :target-type instance-type
                                      :member-name "instanceType")
                                     (operating-system :target-type
                                      operating-system :member-name
                                      "operatingSystem")
                                     (license-edition :target-type
                                      license-edition :member-name
                                      "licenseEdition")
                                     (license-name :target-type license-name
                                      :member-name "licenseName")
                                     (license-model :target-type license-model
                                      :member-name "licenseModel")
                                     (license-version :target-type
                                      license-version :member-name
                                      "licenseVersion")
                                     (metrics-source :target-type
                                      metrics-source :member-name
                                      "metricsSource"))
                                    (:shape-name "LicenseConfiguration"))

(smithy/sdk/shapes:define-enum license-edition
    common-lisp:nil
  (:enterprise "Enterprise")
  (:standard "Standard")
  (:free "Free")
  (:no-license-edition-found "NoLicenseEditionFound"))

(smithy/sdk/shapes:define-enum license-finding
    common-lisp:nil
  (:insufficient-metrics "InsufficientMetrics")
  (:optimized "Optimized")
  (:not-optimized "NotOptimized"))

(smithy/sdk/shapes:define-enum license-finding-reason-code
    common-lisp:nil
  (:cw-app-insights-disabled "InvalidCloudWatchApplicationInsightsSetup")
  (:cw-app-insights-error "CloudWatchApplicationInsightsError")
  (:license-over-provisioned "LicenseOverprovisioned")
  (:optimized "Optimized"))

(smithy/sdk/shapes:define-list license-finding-reason-codes :member
                               license-finding-reason-code)

(smithy/sdk/shapes:define-enum license-model
    common-lisp:nil
  (:license-included "LicenseIncluded")
  (:bring-your-own-license "BringYourOwnLicense"))

(smithy/sdk/shapes:define-enum license-name
    common-lisp:nil
  (:sqlserver "SQLServer"))

(smithy/sdk/shapes:define-structure license-recommendation common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :member-name "resourceArn")
                                     (account-id :target-type account-id
                                      :member-name "accountId")
                                     (current-license-configuration
                                      :target-type license-configuration
                                      :member-name
                                      "currentLicenseConfiguration")
                                     (lookback-period-in-days :target-type
                                      look-back-period-in-days :member-name
                                      "lookbackPeriodInDays")
                                     (last-refresh-timestamp :target-type
                                      last-refresh-timestamp :member-name
                                      "lastRefreshTimestamp")
                                     (finding :target-type license-finding
                                      :member-name "finding")
                                     (finding-reason-codes :target-type
                                      license-finding-reason-codes :member-name
                                      "findingReasonCodes")
                                     (license-recommendation-options
                                      :target-type
                                      license-recommendation-options
                                      :member-name
                                      "licenseRecommendationOptions")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "LicenseRecommendation"))

(smithy/sdk/shapes:define-structure license-recommendation-filter
                                    common-lisp:nil
                                    ((name :target-type
                                      license-recommendation-filter-name
                                      :member-name "name")
                                     (values :target-type filter-values
                                      :member-name "values"))
                                    (:shape-name "LicenseRecommendationFilter"))

(smithy/sdk/shapes:define-enum license-recommendation-filter-name
    common-lisp:nil
  (:license-finding "Finding")
  (:license-finding-reason-code "FindingReasonCode")
  (:license-name "LicenseName"))

(smithy/sdk/shapes:define-list license-recommendation-filters :member
                               license-recommendation-filter)

(smithy/sdk/shapes:define-structure license-recommendation-option
                                    common-lisp:nil
                                    ((rank :target-type rank :member-name
                                      "rank")
                                     (operating-system :target-type
                                      operating-system :member-name
                                      "operatingSystem")
                                     (license-edition :target-type
                                      license-edition :member-name
                                      "licenseEdition")
                                     (license-model :target-type license-model
                                      :member-name "licenseModel")
                                     (savings-opportunity :target-type
                                      savings-opportunity :member-name
                                      "savingsOpportunity"))
                                    (:shape-name "LicenseRecommendationOption"))

(smithy/sdk/shapes:define-list license-recommendation-options :member
                               license-recommendation-option)

(smithy/sdk/shapes:define-list license-recommendations :member
                               license-recommendation)

(smithy/sdk/shapes:define-type license-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type look-back-period-in-days
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-enum look-back-period-preference
    common-lisp:nil
  (:days-14 "DAYS_14")
  (:days-32 "DAYS_32")
  (:days-93 "DAYS_93"))

(smithy/sdk/shapes:define-type low smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type lower-bound-value smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type medium smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type member-accounts-enrolled
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type memory-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure memory-size-configuration common-lisp:nil
                                    ((memory :target-type nullable-memory
                                      :member-name "memory")
                                     (memory-reservation :target-type
                                      nullable-memory-reservation :member-name
                                      "memoryReservation"))
                                    (:shape-name "MemorySizeConfiguration"))

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type metadata-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum metric-name
    common-lisp:nil
  (:cpu "Cpu")
  (:memory "Memory")
  (:ebs-read-ops-per-second "EBS_READ_OPS_PER_SECOND")
  (:ebs-write-ops-per-second "EBS_WRITE_OPS_PER_SECOND")
  (:ebs-read-bytes-per-second "EBS_READ_BYTES_PER_SECOND")
  (:ebs-write-bytes-per-second "EBS_WRITE_BYTES_PER_SECOND")
  (:disk-read-ops-per-second "DISK_READ_OPS_PER_SECOND")
  (:disk-write-ops-per-second "DISK_WRITE_OPS_PER_SECOND")
  (:disk-read-bytes-per-second "DISK_READ_BYTES_PER_SECOND")
  (:disk-write-bytes-per-second "DISK_WRITE_BYTES_PER_SECOND")
  (:network-in-bytes-per-second "NETWORK_IN_BYTES_PER_SECOND")
  (:network-out-bytes-per-second "NETWORK_OUT_BYTES_PER_SECOND")
  (:network-packets-in-per-second "NETWORK_PACKETS_IN_PER_SECOND")
  (:network-packets-out-per-second "NETWORK_PACKETS_OUT_PER_SECOND")
  (:gpu-percentage "GPU_PERCENTAGE")
  (:gpu-memory-percentage "GPU_MEMORY_PERCENTAGE"))

(smithy/sdk/shapes:define-type metric-provider-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure metric-source common-lisp:nil
                                    ((provider :target-type
                                      metric-source-provider :member-name
                                      "provider")
                                     (provider-arn :target-type
                                      metric-provider-arn :member-name
                                      "providerArn"))
                                    (:shape-name "MetricSource"))

(smithy/sdk/shapes:define-enum metric-source-provider
    common-lisp:nil
  (:cloud-watch-app-insights "CloudWatchApplicationInsights"))

(smithy/sdk/shapes:define-enum metric-statistic
    common-lisp:nil
  (:maximum "Maximum")
  (:average "Average"))

(smithy/sdk/shapes:define-type metric-value smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-list metric-values :member metric-value)

(smithy/sdk/shapes:define-list metrics-source :member metric-source)

(smithy/sdk/shapes:define-enum migration-effort
    common-lisp:nil
  (:very-low "VeryLow")
  (:low "Low")
  (:medium "Medium")
  (:high "High"))

(smithy/sdk/shapes:define-type min-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error missing-authentication-token common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "MissingAuthenticationToken")
                                (:error-code 403))

(smithy/sdk/shapes:define-type mixed-instance-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list mixed-instance-types :member mixed-instance-type)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type nullable-cpu smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type
 nullable-estimated-instance-hour-reduction-percentage
 smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type nullable-iops smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type nullable-instance-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type nullable-max-allocated-storage
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type nullable-memory smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type nullable-memory-reservation
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type nullable-storage-throughput
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type number-of-cores smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type number-of-invocations
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type number-of-member-accounts-opted-in
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type operating-system smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error opt-in-required-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "OptInRequiredException")
                                (:error-code 403))

(smithy/sdk/shapes:define-enum order
    common-lisp:nil
  (:asc "Asc")
  (:desc "Desc"))

(smithy/sdk/shapes:define-structure order-by common-lisp:nil
                                    ((dimension :target-type dimension
                                      :member-name "dimension")
                                     (order :target-type order :member-name
                                      "order"))
                                    (:shape-name "OrderBy"))

(smithy/sdk/shapes:define-type performance-risk smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type period smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum platform-difference
    common-lisp:nil
  (:hypervisor "Hypervisor")
  (:network-interface "NetworkInterface")
  (:storage-interface "StorageInterface")
  (:instance-store-availability "InstanceStoreAvailability")
  (:virtualization-type "VirtualizationType")
  (:architecture "Architecture"))

(smithy/sdk/shapes:define-list platform-differences :member platform-difference)

(smithy/sdk/shapes:define-structure preferred-resource common-lisp:nil
                                    ((name :target-type preferred-resource-name
                                      :member-name "name")
                                     (include-list :target-type
                                      preferred-resource-values :member-name
                                      "includeList")
                                     (exclude-list :target-type
                                      preferred-resource-values :member-name
                                      "excludeList"))
                                    (:shape-name "PreferredResource"))

(smithy/sdk/shapes:define-enum preferred-resource-name
    common-lisp:nil
  (:ec2-instance-types "Ec2InstanceTypes"))

(smithy/sdk/shapes:define-type preferred-resource-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list preferred-resource-values :member
                               preferred-resource-value)

(smithy/sdk/shapes:define-list preferred-resources :member preferred-resource)

(smithy/sdk/shapes:define-structure projected-metric common-lisp:nil
                                    ((name :target-type metric-name
                                      :member-name "name")
                                     (timestamps :target-type timestamps
                                      :member-name "timestamps")
                                     (values :target-type metric-values
                                      :member-name "values"))
                                    (:shape-name "ProjectedMetric"))

(smithy/sdk/shapes:define-list projected-metrics :member projected-metric)

(smithy/sdk/shapes:define-list projected-utilization-metrics :member
                               utilization-metric)

(smithy/sdk/shapes:define-type promotion-tier smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input put-recommendation-preferences-request
                                common-lisp:nil
                                ((resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "resourceType")
                                 (scope :target-type scope :member-name
                                  "scope")
                                 (enhanced-infrastructure-metrics :target-type
                                  enhanced-infrastructure-metrics :member-name
                                  "enhancedInfrastructureMetrics")
                                 (inferred-workload-types :target-type
                                  inferred-workload-types-preference
                                  :member-name "inferredWorkloadTypes")
                                 (external-metrics-preference :target-type
                                  external-metrics-preference :member-name
                                  "externalMetricsPreference")
                                 (look-back-period :target-type
                                  look-back-period-preference :member-name
                                  "lookBackPeriod")
                                 (utilization-preferences :target-type
                                  utilization-preferences :member-name
                                  "utilizationPreferences")
                                 (preferred-resources :target-type
                                  preferred-resources :member-name
                                  "preferredResources")
                                 (savings-estimation-mode :target-type
                                  savings-estimation-mode :member-name
                                  "savingsEstimationMode"))
                                (:shape-name
                                 "PutRecommendationPreferencesRequest"))

(smithy/sdk/shapes:define-output put-recommendation-preferences-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "PutRecommendationPreferencesResponse"))

(smithy/sdk/shapes:define-enum rdscurrent-instance-performance-risk
    common-lisp:nil
  (:very-low "VeryLow")
  (:low "Low")
  (:medium "Medium")
  (:high "High"))

(smithy/sdk/shapes:define-structure rdsdbinstance-recommendation-option
                                    common-lisp:nil
                                    ((db-instance-class :target-type
                                      dbinstance-class :member-name
                                      "dbInstanceClass")
                                     (projected-utilization-metrics
                                      :target-type
                                      rdsdbprojected-utilization-metrics
                                      :member-name
                                      "projectedUtilizationMetrics")
                                     (performance-risk :target-type
                                      performance-risk :member-name
                                      "performanceRisk")
                                     (rank :target-type rank :member-name
                                      "rank")
                                     (savings-opportunity :target-type
                                      savings-opportunity :member-name
                                      "savingsOpportunity")
                                     (savings-opportunity-after-discounts
                                      :target-type
                                      rdsinstance-savings-opportunity-after-discounts
                                      :member-name
                                      "savingsOpportunityAfterDiscounts"))
                                    (:shape-name
                                     "RDSDBInstanceRecommendationOption"))

(smithy/sdk/shapes:define-list rdsdbinstance-recommendation-options :member
                               rdsdbinstance-recommendation-option)

(smithy/sdk/shapes:define-enum rdsdbmetric-name
    common-lisp:nil
  (:cpu "CPU")
  (:memory "Memory")
  (:ebs-volume-storage-space-utilization "EBSVolumeStorageSpaceUtilization")
  (:network-receive-throughput "NetworkReceiveThroughput")
  (:network-transmit-throughput "NetworkTransmitThroughput")
  (:ebs-volume-read-iops "EBSVolumeReadIOPS")
  (:ebs-volume-write-iops "EBSVolumeWriteIOPS")
  (:ebs-volume-read-throughput "EBSVolumeReadThroughput")
  (:ebs-volume-write-throughput "EBSVolumeWriteThroughput")
  (:database-connections "DatabaseConnections")
  (:storage-network-receive-throughput "StorageNetworkReceiveThroughput")
  (:storage-network-transmit-throughput "StorageNetworkTransmitThroughput")
  (:aurora-memory-health-state "AuroraMemoryHealthState")
  (:aurora-memory-num-declined-sql "AuroraMemoryNumDeclinedSql")
  (:aurora-memory-num-kill-conn-total "AuroraMemoryNumKillConnTotal")
  (:aurora-memory-num-kill-query-total "AuroraMemoryNumKillQueryTotal")
  (:read-iops-ephemeral-storage "ReadIOPSEphemeralStorage")
  (:write-iops-ephemeral-storage "WriteIOPSEphemeralStorage")
  (:volume-read-iops "VolumeReadIOPs")
  (:volume-bytes-used "VolumeBytesUsed")
  (:volume-write-iops "VolumeWriteIOPs"))

(smithy/sdk/shapes:define-enum rdsdbmetric-statistic
    common-lisp:nil
  (:maximum "Maximum")
  (:minimum "Minimum")
  (:average "Average"))

(smithy/sdk/shapes:define-list rdsdbprojected-utilization-metrics :member
                               rdsdbutilization-metric)

(smithy/sdk/shapes:define-structure rdsdbrecommendation common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :member-name "resourceArn")
                                     (account-id :target-type account-id
                                      :member-name "accountId")
                                     (engine :target-type engine :member-name
                                      "engine")
                                     (engine-version :target-type
                                      engine-version :member-name
                                      "engineVersion")
                                     (promotion-tier :target-type
                                      promotion-tier :member-name
                                      "promotionTier")
                                     (current-dbinstance-class :target-type
                                      current-dbinstance-class :member-name
                                      "currentDBInstanceClass")
                                     (current-storage-configuration
                                      :target-type dbstorage-configuration
                                      :member-name
                                      "currentStorageConfiguration")
                                     (db-cluster-identifier :target-type
                                      dbcluster-identifier :member-name
                                      "dbClusterIdentifier")
                                     (idle :target-type idle :member-name
                                      "idle")
                                     (instance-finding :target-type
                                      rdsinstance-finding :member-name
                                      "instanceFinding")
                                     (storage-finding :target-type
                                      rdsstorage-finding :member-name
                                      "storageFinding")
                                     (instance-finding-reason-codes
                                      :target-type
                                      rdsinstance-finding-reason-codes
                                      :member-name
                                      "instanceFindingReasonCodes")
                                     (current-instance-performance-risk
                                      :target-type
                                      rdscurrent-instance-performance-risk
                                      :member-name
                                      "currentInstancePerformanceRisk")
                                     (current-storage-estimated-monthly-volume-iops-cost-variation
                                      :target-type
                                      rdsestimated-monthly-volume-iops-cost-variation
                                      :member-name
                                      "currentStorageEstimatedMonthlyVolumeIOPsCostVariation")
                                     (storage-finding-reason-codes :target-type
                                      rdsstorage-finding-reason-codes
                                      :member-name "storageFindingReasonCodes")
                                     (instance-recommendation-options
                                      :target-type
                                      rdsdbinstance-recommendation-options
                                      :member-name
                                      "instanceRecommendationOptions")
                                     (storage-recommendation-options
                                      :target-type
                                      rdsdbstorage-recommendation-options
                                      :member-name
                                      "storageRecommendationOptions")
                                     (utilization-metrics :target-type
                                      rdsdbutilization-metrics :member-name
                                      "utilizationMetrics")
                                     (effective-recommendation-preferences
                                      :target-type
                                      rdseffective-recommendation-preferences
                                      :member-name
                                      "effectiveRecommendationPreferences")
                                     (lookback-period-in-days :target-type
                                      look-back-period-in-days :member-name
                                      "lookbackPeriodInDays")
                                     (last-refresh-timestamp :target-type
                                      last-refresh-timestamp :member-name
                                      "lastRefreshTimestamp")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "RDSDBRecommendation"))

(smithy/sdk/shapes:define-structure rdsdbrecommendation-filter common-lisp:nil
                                    ((name :target-type
                                      rdsdbrecommendation-filter-name
                                      :member-name "name")
                                     (values :target-type filter-values
                                      :member-name "values"))
                                    (:shape-name "RDSDBRecommendationFilter"))

(smithy/sdk/shapes:define-enum rdsdbrecommendation-filter-name
    common-lisp:nil
  (:instance-finding "InstanceFinding")
  (:instance-finding-reason-code "InstanceFindingReasonCode")
  (:storage-finding "StorageFinding")
  (:storage-finding-reason-code "StorageFindingReasonCode")
  (:idle "Idle"))

(smithy/sdk/shapes:define-list rdsdbrecommendation-filters :member
                               rdsdbrecommendation-filter)

(smithy/sdk/shapes:define-list rdsdbrecommendations :member rdsdbrecommendation)

(smithy/sdk/shapes:define-structure rdsdbstorage-recommendation-option
                                    common-lisp:nil
                                    ((storage-configuration :target-type
                                      dbstorage-configuration :member-name
                                      "storageConfiguration")
                                     (rank :target-type rank :member-name
                                      "rank")
                                     (savings-opportunity :target-type
                                      savings-opportunity :member-name
                                      "savingsOpportunity")
                                     (savings-opportunity-after-discounts
                                      :target-type
                                      rdsstorage-savings-opportunity-after-discounts
                                      :member-name
                                      "savingsOpportunityAfterDiscounts")
                                     (estimated-monthly-volume-iops-cost-variation
                                      :target-type
                                      rdsestimated-monthly-volume-iops-cost-variation
                                      :member-name
                                      "estimatedMonthlyVolumeIOPsCostVariation"))
                                    (:shape-name
                                     "RDSDBStorageRecommendationOption"))

(smithy/sdk/shapes:define-list rdsdbstorage-recommendation-options :member
                               rdsdbstorage-recommendation-option)

(smithy/sdk/shapes:define-structure rdsdbutilization-metric common-lisp:nil
                                    ((name :target-type rdsdbmetric-name
                                      :member-name "name")
                                     (statistic :target-type
                                      rdsdbmetric-statistic :member-name
                                      "statistic")
                                     (value :target-type metric-value
                                      :member-name "value"))
                                    (:shape-name "RDSDBUtilizationMetric"))

(smithy/sdk/shapes:define-list rdsdbutilization-metrics :member
                               rdsdbutilization-metric)

(smithy/sdk/shapes:define-structure rdsdatabase-projected-metric
                                    common-lisp:nil
                                    ((name :target-type rdsdbmetric-name
                                      :member-name "name")
                                     (timestamps :target-type timestamps
                                      :member-name "timestamps")
                                     (values :target-type metric-values
                                      :member-name "values"))
                                    (:shape-name "RDSDatabaseProjectedMetric"))

(smithy/sdk/shapes:define-list rdsdatabase-projected-metrics :member
                               rdsdatabase-projected-metric)

(smithy/sdk/shapes:define-structure
 rdsdatabase-recommended-option-projected-metric common-lisp:nil
 ((recommended-dbinstance-class :target-type recommended-dbinstance-class
   :member-name "recommendedDBInstanceClass")
  (rank :target-type rank :member-name "rank")
  (projected-metrics :target-type rdsdatabase-projected-metrics :member-name
   "projectedMetrics"))
 (:shape-name "RDSDatabaseRecommendedOptionProjectedMetric"))

(smithy/sdk/shapes:define-list rdsdatabase-recommended-option-projected-metrics
                               :member
                               rdsdatabase-recommended-option-projected-metric)

(smithy/sdk/shapes:define-structure rdseffective-recommendation-preferences
                                    common-lisp:nil
                                    ((cpu-vendor-architectures :target-type
                                      cpu-vendor-architectures :member-name
                                      "cpuVendorArchitectures")
                                     (enhanced-infrastructure-metrics
                                      :target-type
                                      enhanced-infrastructure-metrics
                                      :member-name
                                      "enhancedInfrastructureMetrics")
                                     (look-back-period :target-type
                                      look-back-period-preference :member-name
                                      "lookBackPeriod")
                                     (savings-estimation-mode :target-type
                                      rdssavings-estimation-mode :member-name
                                      "savingsEstimationMode"))
                                    (:shape-name
                                     "RDSEffectiveRecommendationPreferences"))

(smithy/sdk/shapes:define-enum rdsestimated-monthly-volume-iops-cost-variation
    common-lisp:nil
  (:none "None")
  (:low "Low")
  (:medium "Medium")
  (:high "High"))

(smithy/sdk/shapes:define-structure rdsinstance-estimated-monthly-savings
                                    common-lisp:nil
                                    ((currency :target-type currency
                                      :member-name "currency")
                                     (value :target-type value :member-name
                                      "value"))
                                    (:shape-name
                                     "RDSInstanceEstimatedMonthlySavings"))

(smithy/sdk/shapes:define-enum rdsinstance-finding
    common-lisp:nil
  (:optimized "Optimized")
  (:under-provisioned "Underprovisioned")
  (:over-provisioned "Overprovisioned"))

(smithy/sdk/shapes:define-enum rdsinstance-finding-reason-code
    common-lisp:nil
  (:cpu-over-provisioned "CPUOverprovisioned")
  (:network-bandwidth-over-provisioned "NetworkBandwidthOverprovisioned")
  (:ebs-iops-over-provisioned "EBSIOPSOverprovisioned")
  (:ebs-iops-under-provisioned "EBSIOPSUnderprovisioned")
  (:ebs-throughput-over-provisioned "EBSThroughputOverprovisioned")
  (:cpu-under-provisioned "CPUUnderprovisioned")
  (:network-bandwidth-under-provisioned "NetworkBandwidthUnderprovisioned")
  (:ebs-throughput-under-provisioned "EBSThroughputUnderprovisioned")
  (:new-generation-db-instance-class-available
   "NewGenerationDBInstanceClassAvailable")
  (:new-engine-version-available "NewEngineVersionAvailable")
  (:db-cluster-writer-under-provisioned "DBClusterWriterUnderprovisioned")
  (:memory-under-provisioned "MemoryUnderprovisioned")
  (:instance-storage-read-iops-under-provisioned
   "InstanceStorageReadIOPSUnderprovisioned")
  (:instance-storage-write-iops-under-provisioned
   "InstanceStorageWriteIOPSUnderprovisioned"))

(smithy/sdk/shapes:define-list rdsinstance-finding-reason-codes :member
                               rdsinstance-finding-reason-code)

(smithy/sdk/shapes:define-structure
 rdsinstance-savings-opportunity-after-discounts common-lisp:nil
 ((savings-opportunity-percentage :target-type savings-opportunity-percentage
   :member-name "savingsOpportunityPercentage")
  (estimated-monthly-savings :target-type rdsinstance-estimated-monthly-savings
   :member-name "estimatedMonthlySavings"))
 (:shape-name "RDSInstanceSavingsOpportunityAfterDiscounts"))

(smithy/sdk/shapes:define-structure rdssavings-estimation-mode common-lisp:nil
                                    ((source :target-type
                                      rdssavings-estimation-mode-source
                                      :member-name "source"))
                                    (:shape-name "RDSSavingsEstimationMode"))

(smithy/sdk/shapes:define-enum rdssavings-estimation-mode-source
    common-lisp:nil
  (:public-pricing "PublicPricing")
  (:cost-explorer-rightsizing "CostExplorerRightsizing")
  (:cost-optimization-hub "CostOptimizationHub"))

(smithy/sdk/shapes:define-structure rdsstorage-estimated-monthly-savings
                                    common-lisp:nil
                                    ((currency :target-type currency
                                      :member-name "currency")
                                     (value :target-type value :member-name
                                      "value"))
                                    (:shape-name
                                     "RDSStorageEstimatedMonthlySavings"))

(smithy/sdk/shapes:define-enum rdsstorage-finding
    common-lisp:nil
  (:optimized "Optimized")
  (:under-provisioned "Underprovisioned")
  (:over-provisioned "Overprovisioned")
  (:not-optimized "NotOptimized"))

(smithy/sdk/shapes:define-enum rdsstorage-finding-reason-code
    common-lisp:nil
  (:ebs-volume-allocated-storage-under-provisioned
   "EBSVolumeAllocatedStorageUnderprovisioned")
  (:ebs-volume-throughput-under-provisioned
   "EBSVolumeThroughputUnderprovisioned")
  (:ebs-volume-iops-over-provisioned "EBSVolumeIOPSOverprovisioned")
  (:ebs-volume-throughput-over-provisioned "EBSVolumeThroughputOverprovisioned")
  (:new-generation-storage-type-available "NewGenerationStorageTypeAvailable")
  (:db-cluster-storage-option-available "DBClusterStorageOptionAvailable")
  (:db-cluster-storage-savings-available "DBClusterStorageSavingsAvailable"))

(smithy/sdk/shapes:define-list rdsstorage-finding-reason-codes :member
                               rdsstorage-finding-reason-code)

(smithy/sdk/shapes:define-structure
 rdsstorage-savings-opportunity-after-discounts common-lisp:nil
 ((savings-opportunity-percentage :target-type savings-opportunity-percentage
   :member-name "savingsOpportunityPercentage")
  (estimated-monthly-savings :target-type rdsstorage-estimated-monthly-savings
   :member-name "estimatedMonthlySavings"))
 (:shape-name "RDSStorageSavingsOpportunityAfterDiscounts"))

(smithy/sdk/shapes:define-type rank smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list reason-code-summaries :member
                               reason-code-summary)

(smithy/sdk/shapes:define-structure reason-code-summary common-lisp:nil
                                    ((name :target-type finding-reason-code
                                      :member-name "name")
                                     (value :target-type summary-value
                                      :member-name "value"))
                                    (:shape-name "ReasonCodeSummary"))

(smithy/sdk/shapes:define-structure recommendation-export-job common-lisp:nil
                                    ((job-id :target-type job-id :member-name
                                      "jobId")
                                     (destination :target-type
                                      export-destination :member-name
                                      "destination")
                                     (resource-type :target-type resource-type
                                      :member-name "resourceType")
                                     (status :target-type job-status
                                      :member-name "status")
                                     (creation-timestamp :target-type
                                      creation-timestamp :member-name
                                      "creationTimestamp")
                                     (last-updated-timestamp :target-type
                                      last-updated-timestamp :member-name
                                      "lastUpdatedTimestamp")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "failureReason"))
                                    (:shape-name "RecommendationExportJob"))

(smithy/sdk/shapes:define-list recommendation-export-jobs :member
                               recommendation-export-job)

(smithy/sdk/shapes:define-list recommendation-options :member
                               instance-recommendation-option)

(smithy/sdk/shapes:define-enum recommendation-preference-name
    common-lisp:nil
  (:enhanced-infrastructure-metrics "EnhancedInfrastructureMetrics")
  (:inferred-workload-types "InferredWorkloadTypes")
  (:external-metrics-preference "ExternalMetricsPreference")
  (:lookback-period-preference "LookBackPeriodPreference")
  (:preferred-resources "PreferredResources")
  (:utilization-preferences "UtilizationPreferences"))

(smithy/sdk/shapes:define-list recommendation-preference-names :member
                               recommendation-preference-name)

(smithy/sdk/shapes:define-structure recommendation-preferences common-lisp:nil
                                    ((cpu-vendor-architectures :target-type
                                      cpu-vendor-architectures :member-name
                                      "cpuVendorArchitectures"))
                                    (:shape-name "RecommendationPreferences"))

(smithy/sdk/shapes:define-structure recommendation-preferences-detail
                                    common-lisp:nil
                                    ((scope :target-type scope :member-name
                                      "scope")
                                     (resource-type :target-type resource-type
                                      :member-name "resourceType")
                                     (enhanced-infrastructure-metrics
                                      :target-type
                                      enhanced-infrastructure-metrics
                                      :member-name
                                      "enhancedInfrastructureMetrics")
                                     (inferred-workload-types :target-type
                                      inferred-workload-types-preference
                                      :member-name "inferredWorkloadTypes")
                                     (external-metrics-preference :target-type
                                      external-metrics-preference :member-name
                                      "externalMetricsPreference")
                                     (look-back-period :target-type
                                      look-back-period-preference :member-name
                                      "lookBackPeriod")
                                     (utilization-preferences :target-type
                                      utilization-preferences :member-name
                                      "utilizationPreferences")
                                     (preferred-resources :target-type
                                      effective-preferred-resources
                                      :member-name "preferredResources")
                                     (savings-estimation-mode :target-type
                                      savings-estimation-mode :member-name
                                      "savingsEstimationMode"))
                                    (:shape-name
                                     "RecommendationPreferencesDetail"))

(smithy/sdk/shapes:define-list recommendation-preferences-details :member
                               recommendation-preferences-detail)

(smithy/sdk/shapes:define-structure recommendation-source common-lisp:nil
                                    ((recommendation-source-arn :target-type
                                      recommendation-source-arn :member-name
                                      "recommendationSourceArn")
                                     (recommendation-source-type :target-type
                                      recommendation-source-type :member-name
                                      "recommendationSourceType"))
                                    (:shape-name "RecommendationSource"))

(smithy/sdk/shapes:define-type recommendation-source-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum recommendation-source-type
    common-lisp:nil
  (:ec2-instance "Ec2Instance")
  (:auto-scaling-group "AutoScalingGroup")
  (:ebs-volume "EbsVolume")
  (:lambda-function "LambdaFunction")
  (:ecs-service "EcsService")
  (:license "License")
  (:rds-db-instance "RdsDBInstance")
  (:rds-db-instance-storage "RdsDBInstanceStorage")
  (:aurora-db-cluster-storage "AuroraDBClusterStorage"))

(smithy/sdk/shapes:define-list recommendation-sources :member
                               recommendation-source)

(smithy/sdk/shapes:define-list recommendation-summaries :member
                               recommendation-summary)

(smithy/sdk/shapes:define-structure recommendation-summary common-lisp:nil
                                    ((summaries :target-type summaries
                                      :member-name "summaries")
                                     (idle-summaries :target-type
                                      idle-summaries :member-name
                                      "idleSummaries")
                                     (recommendation-resource-type :target-type
                                      recommendation-source-type :member-name
                                      "recommendationResourceType")
                                     (account-id :target-type account-id
                                      :member-name "accountId")
                                     (savings-opportunity :target-type
                                      savings-opportunity :member-name
                                      "savingsOpportunity")
                                     (idle-savings-opportunity :target-type
                                      savings-opportunity :member-name
                                      "idleSavingsOpportunity")
                                     (aggregated-savings-opportunity
                                      :target-type savings-opportunity
                                      :member-name
                                      "aggregatedSavingsOpportunity")
                                     (current-performance-risk-ratings
                                      :target-type
                                      current-performance-risk-ratings
                                      :member-name
                                      "currentPerformanceRiskRatings")
                                     (inferred-workload-savings :target-type
                                      inferred-workload-savings :member-name
                                      "inferredWorkloadSavings"))
                                    (:shape-name "RecommendationSummary"))

(smithy/sdk/shapes:define-type recommended-dbinstance-class
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type recommended-instance-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure recommended-option-projected-metric
                                    common-lisp:nil
                                    ((recommended-instance-type :target-type
                                      recommended-instance-type :member-name
                                      "recommendedInstanceType")
                                     (rank :target-type rank :member-name
                                      "rank")
                                     (projected-metrics :target-type
                                      projected-metrics :member-name
                                      "projectedMetrics"))
                                    (:shape-name
                                     "RecommendedOptionProjectedMetric"))

(smithy/sdk/shapes:define-list recommended-option-projected-metrics :member
                               recommended-option-projected-metric)

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-arns :member resource-arn)

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum resource-type
    common-lisp:nil
  (:ec2-instance "Ec2Instance")
  (:auto-scaling-group "AutoScalingGroup")
  (:ebs-volume "EbsVolume")
  (:lambda-function "LambdaFunction")
  (:not-applicable "NotApplicable")
  (:ecs-service "EcsService")
  (:license "License")
  (:rds-db-instance "RdsDBInstance")
  (:aurora-db-cluster-storage "AuroraDBClusterStorage")
  (:idle "Idle"))

(smithy/sdk/shapes:define-type root-volume smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure s3destination common-lisp:nil
                                    ((bucket :target-type destination-bucket
                                      :member-name "bucket")
                                     (key :target-type destination-key
                                      :member-name "key")
                                     (metadata-key :target-type metadata-key
                                      :member-name "metadataKey"))
                                    (:shape-name "S3Destination"))

(smithy/sdk/shapes:define-structure s3destination-config common-lisp:nil
                                    ((bucket :target-type destination-bucket
                                      :member-name "bucket")
                                     (key-prefix :target-type
                                      destination-key-prefix :member-name
                                      "keyPrefix"))
                                    (:shape-name "S3DestinationConfig"))

(smithy/sdk/shapes:define-enum savings-estimation-mode
    common-lisp:nil
  (:after-discounts "AfterDiscounts")
  (:before-discounts "BeforeDiscounts"))

(smithy/sdk/shapes:define-structure savings-opportunity common-lisp:nil
                                    ((savings-opportunity-percentage
                                      :target-type
                                      savings-opportunity-percentage
                                      :member-name
                                      "savingsOpportunityPercentage")
                                     (estimated-monthly-savings :target-type
                                      estimated-monthly-savings :member-name
                                      "estimatedMonthlySavings"))
                                    (:shape-name "SavingsOpportunity"))

(smithy/sdk/shapes:define-type savings-opportunity-percentage
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure scope common-lisp:nil
                                    ((name :target-type scope-name :member-name
                                      "name")
                                     (value :target-type scope-value
                                      :member-name "value"))
                                    (:shape-name "Scope"))

(smithy/sdk/shapes:define-enum scope-name
    common-lisp:nil
  (:organization "Organization")
  (:account-id "AccountId")
  (:resource-arn "ResourceArn"))

(smithy/sdk/shapes:define-type scope-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list service-arns :member service-arn)

(smithy/sdk/shapes:define-structure service-configuration common-lisp:nil
                                    ((memory :target-type nullable-memory
                                      :member-name "memory")
                                     (cpu :target-type nullable-cpu
                                      :member-name "cpu")
                                     (container-configurations :target-type
                                      container-configurations :member-name
                                      "containerConfigurations")
                                     (auto-scaling-configuration :target-type
                                      auto-scaling-configuration :member-name
                                      "autoScalingConfiguration")
                                     (task-definition-arn :target-type
                                      task-definition-arn :member-name
                                      "taskDefinitionArn"))
                                    (:shape-name "ServiceConfiguration"))

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503))

(smithy/sdk/shapes:define-enum status
    common-lisp:nil
  (:active "Active")
  (:inactive "Inactive")
  (:pending "Pending")
  (:failed "Failed"))

(smithy/sdk/shapes:define-type status-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type storage-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list summaries :member summary)

(smithy/sdk/shapes:define-structure summary common-lisp:nil
                                    ((name :target-type finding :member-name
                                      "name")
                                     (value :target-type summary-value
                                      :member-name "value")
                                     (reason-code-summaries :target-type
                                      reason-code-summaries :member-name
                                      "reasonCodeSummaries"))
                                    (:shape-name "Summary"))

(smithy/sdk/shapes:define-type summary-value smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :member-name
                                      "key")
                                     (value :target-type tag-value :member-name
                                      "value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tags :member tag)

(smithy/sdk/shapes:define-type task-definition-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-list timestamps :member timestamp)

(smithy/sdk/shapes:define-input update-enrollment-status-request
                                common-lisp:nil
                                ((status :target-type status :required
                                  common-lisp:t :member-name "status")
                                 (include-member-accounts :target-type
                                  include-member-accounts :member-name
                                  "includeMemberAccounts"))
                                (:shape-name "UpdateEnrollmentStatusRequest"))

(smithy/sdk/shapes:define-output update-enrollment-status-response
                                 common-lisp:nil
                                 ((status :target-type status :member-name
                                   "status")
                                  (status-reason :target-type status-reason
                                   :member-name "statusReason"))
                                 (:shape-name "UpdateEnrollmentStatusResponse"))

(smithy/sdk/shapes:define-type upper-bound-value smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure utilization-metric common-lisp:nil
                                    ((name :target-type metric-name
                                      :member-name "name")
                                     (statistic :target-type metric-statistic
                                      :member-name "statistic")
                                     (value :target-type metric-value
                                      :member-name "value"))
                                    (:shape-name "UtilizationMetric"))

(smithy/sdk/shapes:define-list utilization-metrics :member utilization-metric)

(smithy/sdk/shapes:define-structure utilization-preference common-lisp:nil
                                    ((metric-name :target-type
                                      customizable-metric-name :member-name
                                      "metricName")
                                     (metric-parameters :target-type
                                      customizable-metric-parameters
                                      :member-name "metricParameters"))
                                    (:shape-name "UtilizationPreference"))

(smithy/sdk/shapes:define-list utilization-preferences :member
                               utilization-preference)

(smithy/sdk/shapes:define-type value smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type very-low smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type volume-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list volume-arns :member volume-arn)

(smithy/sdk/shapes:define-type volume-baseline-iops
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type volume-baseline-throughput
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type volume-burst-iops
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type volume-burst-throughput
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure volume-configuration common-lisp:nil
                                    ((volume-type :target-type volume-type
                                      :member-name "volumeType")
                                     (volume-size :target-type volume-size
                                      :member-name "volumeSize")
                                     (volume-baseline-iops :target-type
                                      volume-baseline-iops :member-name
                                      "volumeBaselineIOPS")
                                     (volume-burst-iops :target-type
                                      volume-burst-iops :member-name
                                      "volumeBurstIOPS")
                                     (volume-baseline-throughput :target-type
                                      volume-baseline-throughput :member-name
                                      "volumeBaselineThroughput")
                                     (volume-burst-throughput :target-type
                                      volume-burst-throughput :member-name
                                      "volumeBurstThroughput")
                                     (root-volume :target-type root-volume
                                      :member-name "rootVolume"))
                                    (:shape-name "VolumeConfiguration"))

(smithy/sdk/shapes:define-structure volume-recommendation common-lisp:nil
                                    ((volume-arn :target-type volume-arn
                                      :member-name "volumeArn")
                                     (account-id :target-type account-id
                                      :member-name "accountId")
                                     (current-configuration :target-type
                                      volume-configuration :member-name
                                      "currentConfiguration")
                                     (finding :target-type ebsfinding
                                      :member-name "finding")
                                     (utilization-metrics :target-type
                                      ebsutilization-metrics :member-name
                                      "utilizationMetrics")
                                     (look-back-period-in-days :target-type
                                      look-back-period-in-days :member-name
                                      "lookBackPeriodInDays")
                                     (volume-recommendation-options
                                      :target-type
                                      volume-recommendation-options
                                      :member-name
                                      "volumeRecommendationOptions")
                                     (last-refresh-timestamp :target-type
                                      last-refresh-timestamp :member-name
                                      "lastRefreshTimestamp")
                                     (current-performance-risk :target-type
                                      current-performance-risk :member-name
                                      "currentPerformanceRisk")
                                     (effective-recommendation-preferences
                                      :target-type
                                      ebseffective-recommendation-preferences
                                      :member-name
                                      "effectiveRecommendationPreferences")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "VolumeRecommendation"))

(smithy/sdk/shapes:define-structure volume-recommendation-option
                                    common-lisp:nil
                                    ((configuration :target-type
                                      volume-configuration :member-name
                                      "configuration")
                                     (performance-risk :target-type
                                      performance-risk :member-name
                                      "performanceRisk")
                                     (rank :target-type rank :member-name
                                      "rank")
                                     (savings-opportunity :target-type
                                      savings-opportunity :member-name
                                      "savingsOpportunity")
                                     (savings-opportunity-after-discounts
                                      :target-type
                                      ebssavings-opportunity-after-discounts
                                      :member-name
                                      "savingsOpportunityAfterDiscounts"))
                                    (:shape-name "VolumeRecommendationOption"))

(smithy/sdk/shapes:define-list volume-recommendation-options :member
                               volume-recommendation-option)

(smithy/sdk/shapes:define-list volume-recommendations :member
                               volume-recommendation)

(smithy/sdk/shapes:define-type volume-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type volume-type smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation delete-recommendation-preferences
                                       :shape-name
                                       "DeleteRecommendationPreferences" :input
                                       delete-recommendation-preferences-request
                                       :output
                                       delete-recommendation-preferences-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-parameter-value-exception
                                        missing-authentication-token
                                        opt-in-required-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation describe-recommendation-export-jobs
                                       :shape-name
                                       "DescribeRecommendationExportJobs"
                                       :input
                                       describe-recommendation-export-jobs-request
                                       :output
                                       describe-recommendation-export-jobs-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-parameter-value-exception
                                        missing-authentication-token
                                        opt-in-required-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation
 export-auto-scaling-group-recommendations :shape-name
 "ExportAutoScalingGroupRecommendations" :input
 export-auto-scaling-group-recommendations-request :output
 export-auto-scaling-group-recommendations-response :errors
 (access-denied-exception internal-server-exception
  invalid-parameter-value-exception limit-exceeded-exception
  missing-authentication-token opt-in-required-exception
  service-unavailable-exception throttling-exception))

(smithy/sdk/operation:define-operation export-ebsvolume-recommendations
                                       :shape-name
                                       "ExportEBSVolumeRecommendations" :input
                                       export-ebsvolume-recommendations-request
                                       :output
                                       export-ebsvolume-recommendations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-parameter-value-exception
                                        limit-exceeded-exception
                                        missing-authentication-token
                                        opt-in-required-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation export-ec2instance-recommendations
                                       :shape-name
                                       "ExportEC2InstanceRecommendations"
                                       :input
                                       export-ec2instance-recommendations-request
                                       :output
                                       export-ec2instance-recommendations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-parameter-value-exception
                                        limit-exceeded-exception
                                        missing-authentication-token
                                        opt-in-required-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation export-ecsservice-recommendations
                                       :shape-name
                                       "ExportECSServiceRecommendations" :input
                                       export-ecsservice-recommendations-request
                                       :output
                                       export-ecsservice-recommendations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-parameter-value-exception
                                        limit-exceeded-exception
                                        missing-authentication-token
                                        opt-in-required-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation export-idle-recommendations :shape-name
                                       "ExportIdleRecommendations" :input
                                       export-idle-recommendations-request
                                       :output
                                       export-idle-recommendations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-parameter-value-exception
                                        limit-exceeded-exception
                                        missing-authentication-token
                                        opt-in-required-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation export-lambda-function-recommendations
                                       :shape-name
                                       "ExportLambdaFunctionRecommendations"
                                       :input
                                       export-lambda-function-recommendations-request
                                       :output
                                       export-lambda-function-recommendations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-parameter-value-exception
                                        limit-exceeded-exception
                                        missing-authentication-token
                                        opt-in-required-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation export-license-recommendations
                                       :shape-name
                                       "ExportLicenseRecommendations" :input
                                       export-license-recommendations-request
                                       :output
                                       export-license-recommendations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-parameter-value-exception
                                        limit-exceeded-exception
                                        missing-authentication-token
                                        opt-in-required-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation export-rdsdatabase-recommendations
                                       :shape-name
                                       "ExportRDSDatabaseRecommendations"
                                       :input
                                       export-rdsdatabase-recommendations-request
                                       :output
                                       export-rdsdatabase-recommendations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-parameter-value-exception
                                        limit-exceeded-exception
                                        missing-authentication-token
                                        opt-in-required-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-auto-scaling-group-recommendations
                                       :shape-name
                                       "GetAutoScalingGroupRecommendations"
                                       :input
                                       get-auto-scaling-group-recommendations-request
                                       :output
                                       get-auto-scaling-group-recommendations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-parameter-value-exception
                                        missing-authentication-token
                                        opt-in-required-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-ebsvolume-recommendations
                                       :shape-name
                                       "GetEBSVolumeRecommendations" :input
                                       get-ebsvolume-recommendations-request
                                       :output
                                       get-ebsvolume-recommendations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-parameter-value-exception
                                        missing-authentication-token
                                        opt-in-required-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-ec2instance-recommendations
                                       :shape-name
                                       "GetEC2InstanceRecommendations" :input
                                       get-ec2instance-recommendations-request
                                       :output
                                       get-ec2instance-recommendations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-parameter-value-exception
                                        missing-authentication-token
                                        opt-in-required-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-ec2recommendation-projected-metrics
                                       :shape-name
                                       "GetEC2RecommendationProjectedMetrics"
                                       :input
                                       get-ec2recommendation-projected-metrics-request
                                       :output
                                       get-ec2recommendation-projected-metrics-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-parameter-value-exception
                                        missing-authentication-token
                                        opt-in-required-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation
 get-ecsservice-recommendation-projected-metrics :shape-name
 "GetECSServiceRecommendationProjectedMetrics" :input
 get-ecsservice-recommendation-projected-metrics-request :output
 get-ecsservice-recommendation-projected-metrics-response :errors
 (access-denied-exception internal-server-exception
  invalid-parameter-value-exception missing-authentication-token
  opt-in-required-exception resource-not-found-exception
  service-unavailable-exception throttling-exception))

(smithy/sdk/operation:define-operation get-ecsservice-recommendations
                                       :shape-name
                                       "GetECSServiceRecommendations" :input
                                       get-ecsservice-recommendations-request
                                       :output
                                       get-ecsservice-recommendations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-parameter-value-exception
                                        missing-authentication-token
                                        opt-in-required-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-effective-recommendation-preferences
                                       :shape-name
                                       "GetEffectiveRecommendationPreferences"
                                       :input
                                       get-effective-recommendation-preferences-request
                                       :output
                                       get-effective-recommendation-preferences-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-parameter-value-exception
                                        missing-authentication-token
                                        opt-in-required-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-enrollment-status :shape-name
                                       "GetEnrollmentStatus" :input
                                       get-enrollment-status-request :output
                                       get-enrollment-status-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-parameter-value-exception
                                        missing-authentication-token
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-enrollment-statuses-for-organization
                                       :shape-name
                                       "GetEnrollmentStatusesForOrganization"
                                       :input
                                       get-enrollment-statuses-for-organization-request
                                       :output
                                       get-enrollment-statuses-for-organization-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-parameter-value-exception
                                        missing-authentication-token
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-idle-recommendations :shape-name
                                       "GetIdleRecommendations" :input
                                       get-idle-recommendations-request :output
                                       get-idle-recommendations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-parameter-value-exception
                                        missing-authentication-token
                                        opt-in-required-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-lambda-function-recommendations
                                       :shape-name
                                       "GetLambdaFunctionRecommendations"
                                       :input
                                       get-lambda-function-recommendations-request
                                       :output
                                       get-lambda-function-recommendations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-parameter-value-exception
                                        limit-exceeded-exception
                                        missing-authentication-token
                                        opt-in-required-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-license-recommendations :shape-name
                                       "GetLicenseRecommendations" :input
                                       get-license-recommendations-request
                                       :output
                                       get-license-recommendations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-parameter-value-exception
                                        missing-authentication-token
                                        opt-in-required-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation
 get-rdsdatabase-recommendation-projected-metrics :shape-name
 "GetRDSDatabaseRecommendationProjectedMetrics" :input
 get-rdsdatabase-recommendation-projected-metrics-request :output
 get-rdsdatabase-recommendation-projected-metrics-response :errors
 (access-denied-exception internal-server-exception
  invalid-parameter-value-exception missing-authentication-token
  opt-in-required-exception resource-not-found-exception
  service-unavailable-exception throttling-exception))

(smithy/sdk/operation:define-operation get-rdsdatabase-recommendations
                                       :shape-name
                                       "GetRDSDatabaseRecommendations" :input
                                       get-rdsdatabase-recommendations-request
                                       :output
                                       get-rdsdatabase-recommendations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-parameter-value-exception
                                        missing-authentication-token
                                        opt-in-required-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-recommendation-preferences
                                       :shape-name
                                       "GetRecommendationPreferences" :input
                                       get-recommendation-preferences-request
                                       :output
                                       get-recommendation-preferences-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-parameter-value-exception
                                        missing-authentication-token
                                        opt-in-required-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-recommendation-summaries :shape-name
                                       "GetRecommendationSummaries" :input
                                       get-recommendation-summaries-request
                                       :output
                                       get-recommendation-summaries-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-parameter-value-exception
                                        missing-authentication-token
                                        opt-in-required-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation put-recommendation-preferences
                                       :shape-name
                                       "PutRecommendationPreferences" :input
                                       put-recommendation-preferences-request
                                       :output
                                       put-recommendation-preferences-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-parameter-value-exception
                                        missing-authentication-token
                                        opt-in-required-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation update-enrollment-status :shape-name
                                       "UpdateEnrollmentStatus" :input
                                       update-enrollment-status-request :output
                                       update-enrollment-status-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-parameter-value-exception
                                        missing-authentication-token
                                        service-unavailable-exception
                                        throttling-exception))
