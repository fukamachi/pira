(uiop/package:define-package #:pira/cost-optimization-hub (:use)
                             (:export #:account-enrollment-status
                              #:account-enrollment-statuses #:account-id
                              #:account-id-list #:action-type
                              #:action-type-list #:allocation-strategy
                              #:aurora-db-cluster-storage
                              #:aurora-db-cluster-storage-configuration
                              #:block-storage-performance-configuration
                              #:compute-configuration #:compute-savings-plans
                              #:compute-savings-plans-configuration
                              #:cost-optimization-hub-service #:datetime
                              #:db-instance-configuration
                              #:dynamo-db-reserved-capacity
                              #:dynamo-db-reserved-capacity-configuration
                              #:ebs-volume #:ebs-volume-configuration
                              #:ec2auto-scaling-group
                              #:ec2auto-scaling-group-configuration
                              #:ec2auto-scaling-group-type #:ec2instance
                              #:ec2instance-configuration
                              #:ec2instance-savings-plans
                              #:ec2instance-savings-plans-configuration
                              #:ec2reserved-instances
                              #:ec2reserved-instances-configuration
                              #:ecs-service #:ecs-service-configuration
                              #:elasti-cache-reserved-instances
                              #:elasti-cache-reserved-instances-configuration
                              #:enrollment-status #:estimated-discounts
                              #:filter #:get-preferences #:get-recommendation
                              #:implementation-effort
                              #:implementation-effort-list
                              #:instance-configuration #:lambda-function
                              #:lambda-function-configuration
                              #:list-enrollment-statuses
                              #:list-recommendation-summaries
                              #:list-recommendations #:max-results
                              #:member-account-discount-visibility
                              #:memory-db-reserved-instances
                              #:memory-db-reserved-instances-configuration
                              #:mixed-instance-configuration
                              #:mixed-instance-configuration-list
                              #:open-search-reserved-instances
                              #:open-search-reserved-instances-configuration
                              #:order #:order-by #:payment-option
                              #:preferred-commitment #:rds-db-instance
                              #:rds-db-instance-configuration
                              #:rds-db-instance-storage
                              #:rds-db-instance-storage-configuration
                              #:rds-reserved-instances
                              #:rds-reserved-instances-configuration
                              #:recommendation #:recommendation-id-list
                              #:recommendation-list
                              #:recommendation-summaries-list
                              #:recommendation-summary
                              #:redshift-reserved-instances
                              #:redshift-reserved-instances-configuration
                              #:region-list
                              #:reserved-instances-cost-calculation
                              #:reserved-instances-pricing #:resource-arn-list
                              #:resource-cost-calculation #:resource-details
                              #:resource-id-list #:resource-pricing
                              #:resource-type #:resource-type-list
                              #:sage-maker-savings-plans
                              #:sage-maker-savings-plans-configuration
                              #:savings-estimation-mode
                              #:savings-plans-cost-calculation
                              #:savings-plans-pricing #:source
                              #:storage-configuration #:summary-metrics
                              #:summary-metrics-list #:summary-metrics-result
                              #:tag #:tag-list #:term
                              #:update-enrollment-status #:update-preferences
                              #:usage #:usage-list
                              #:validation-exception-detail
                              #:validation-exception-details
                              #:validation-exception-reason))
(common-lisp:in-package #:pira/cost-optimization-hub)

(smithy/sdk/service:define-service cost-optimization-hub-service :shape-name
                                   "CostOptimizationHubService" :version
                                   "2022-07-26" :title "Cost Optimization Hub"
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Cost Optimization Hub")
                                      ("endpointPrefix"
                                       . "cost-optimization-hub"))
                                     ("aws.auth#sigv4"
                                      ("name" . "cost-optimization-hub"))
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure account-enrollment-status common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "accountId")
                                     (status :target-type enrollment-status
                                      :member-name "status")
                                     (last-updated-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "lastUpdatedTimestamp")
                                     (created-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdTimestamp"))
                                    (:shape-name "AccountEnrollmentStatus"))

(smithy/sdk/shapes:define-list account-enrollment-statuses :member
                               account-enrollment-status)

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list account-id-list :member account-id)

(smithy/sdk/shapes:define-enum action-type
    common-lisp:nil
  (:rightsize "Rightsize")
  (:stop "Stop")
  (:upgrade "Upgrade")
  (:purchase-savings-plans "PurchaseSavingsPlans")
  (:purchase-reserved-instances "PurchaseReservedInstances")
  (:migrate-to-graviton "MigrateToGraviton")
  (:delete "Delete")
  (:scale-in "ScaleIn"))

(smithy/sdk/shapes:define-list action-type-list :member action-type)

(smithy/sdk/shapes:define-enum allocation-strategy
    common-lisp:nil
  (:prioritized "Prioritized")
  (:lowest-price "LowestPrice"))

(smithy/sdk/shapes:define-structure aurora-db-cluster-storage common-lisp:nil
                                    ((configuration :target-type
                                      aurora-db-cluster-storage-configuration
                                      :member-name "configuration")
                                     (cost-calculation :target-type
                                      resource-cost-calculation :member-name
                                      "costCalculation"))
                                    (:shape-name "AuroraDbClusterStorage"))

(smithy/sdk/shapes:define-structure aurora-db-cluster-storage-configuration
                                    common-lisp:nil
                                    ((storage-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "storageType"))
                                    (:shape-name
                                     "AuroraDbClusterStorageConfiguration"))

(smithy/sdk/shapes:define-structure block-storage-performance-configuration
                                    common-lisp:nil
                                    ((iops :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "iops")
                                     (throughput :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "throughput"))
                                    (:shape-name
                                     "BlockStoragePerformanceConfiguration"))

(smithy/sdk/shapes:define-structure compute-configuration common-lisp:nil
                                    ((v-cpu :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "vCpu")
                                     (memory-size-in-mb :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "memorySizeInMB")
                                     (architecture :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "architecture")
                                     (platform :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "platform"))
                                    (:shape-name "ComputeConfiguration"))

(smithy/sdk/shapes:define-structure compute-savings-plans common-lisp:nil
                                    ((configuration :target-type
                                      compute-savings-plans-configuration
                                      :member-name "configuration")
                                     (cost-calculation :target-type
                                      savings-plans-cost-calculation
                                      :member-name "costCalculation"))
                                    (:shape-name "ComputeSavingsPlans"))

(smithy/sdk/shapes:define-structure compute-savings-plans-configuration
                                    common-lisp:nil
                                    ((account-scope :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "accountScope")
                                     (term :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "term")
                                     (payment-option :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "paymentOption")
                                     (hourly-commitment :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "hourlyCommitment"))
                                    (:shape-name
                                     "ComputeSavingsPlansConfiguration"))

(smithy/sdk/shapes:define-type datetime smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure db-instance-configuration common-lisp:nil
                                    ((db-instance-class :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "dbInstanceClass"))
                                    (:shape-name "DbInstanceConfiguration"))

(smithy/sdk/shapes:define-structure dynamo-db-reserved-capacity common-lisp:nil
                                    ((configuration :target-type
                                      dynamo-db-reserved-capacity-configuration
                                      :member-name "configuration")
                                     (cost-calculation :target-type
                                      reserved-instances-cost-calculation
                                      :member-name "costCalculation"))
                                    (:shape-name "DynamoDbReservedCapacity"))

(smithy/sdk/shapes:define-structure dynamo-db-reserved-capacity-configuration
                                    common-lisp:nil
                                    ((account-scope :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "accountScope")
                                     (service :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "service")
                                     (term :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "term")
                                     (payment-option :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "paymentOption")
                                     (reserved-instances-region :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "reservedInstancesRegion")
                                     (upfront-cost :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "upfrontCost")
                                     (monthly-recurring-cost :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "monthlyRecurringCost")
                                     (number-of-capacity-units-to-purchase
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "numberOfCapacityUnitsToPurchase")
                                     (capacity-units :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "capacityUnits"))
                                    (:shape-name
                                     "DynamoDbReservedCapacityConfiguration"))

(smithy/sdk/shapes:define-structure ebs-volume common-lisp:nil
                                    ((configuration :target-type
                                      ebs-volume-configuration :member-name
                                      "configuration")
                                     (cost-calculation :target-type
                                      resource-cost-calculation :member-name
                                      "costCalculation"))
                                    (:shape-name "EbsVolume"))

(smithy/sdk/shapes:define-structure ebs-volume-configuration common-lisp:nil
                                    ((storage :target-type
                                      storage-configuration :member-name
                                      "storage")
                                     (performance :target-type
                                      block-storage-performance-configuration
                                      :member-name "performance")
                                     (attachment-state :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "attachmentState"))
                                    (:shape-name "EbsVolumeConfiguration"))

(smithy/sdk/shapes:define-structure ec2auto-scaling-group common-lisp:nil
                                    ((configuration :target-type
                                      ec2auto-scaling-group-configuration
                                      :member-name "configuration")
                                     (cost-calculation :target-type
                                      resource-cost-calculation :member-name
                                      "costCalculation"))
                                    (:shape-name "Ec2AutoScalingGroup"))

(smithy/sdk/shapes:define-structure ec2auto-scaling-group-configuration
                                    common-lisp:nil
                                    ((instance :target-type
                                      instance-configuration :member-name
                                      "instance")
                                     (mixed-instances :target-type
                                      mixed-instance-configuration-list
                                      :member-name "mixedInstances")
                                     (type :target-type
                                      ec2auto-scaling-group-type :member-name
                                      "type")
                                     (allocation-strategy :target-type
                                      allocation-strategy :member-name
                                      "allocationStrategy"))
                                    (:shape-name
                                     "Ec2AutoScalingGroupConfiguration"))

(smithy/sdk/shapes:define-enum ec2auto-scaling-group-type
    common-lisp:nil
  (:single-instance-type "SingleInstanceType")
  (:mixed-instance-types "MixedInstanceTypes"))

(smithy/sdk/shapes:define-structure ec2instance common-lisp:nil
                                    ((configuration :target-type
                                      ec2instance-configuration :member-name
                                      "configuration")
                                     (cost-calculation :target-type
                                      resource-cost-calculation :member-name
                                      "costCalculation"))
                                    (:shape-name "Ec2Instance"))

(smithy/sdk/shapes:define-structure ec2instance-configuration common-lisp:nil
                                    ((instance :target-type
                                      instance-configuration :member-name
                                      "instance"))
                                    (:shape-name "Ec2InstanceConfiguration"))

(smithy/sdk/shapes:define-structure ec2instance-savings-plans common-lisp:nil
                                    ((configuration :target-type
                                      ec2instance-savings-plans-configuration
                                      :member-name "configuration")
                                     (cost-calculation :target-type
                                      savings-plans-cost-calculation
                                      :member-name "costCalculation"))
                                    (:shape-name "Ec2InstanceSavingsPlans"))

(smithy/sdk/shapes:define-structure ec2instance-savings-plans-configuration
                                    common-lisp:nil
                                    ((account-scope :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "accountScope")
                                     (term :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "term")
                                     (payment-option :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "paymentOption")
                                     (hourly-commitment :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "hourlyCommitment")
                                     (instance-family :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "instanceFamily")
                                     (savings-plans-region :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "savingsPlansRegion"))
                                    (:shape-name
                                     "Ec2InstanceSavingsPlansConfiguration"))

(smithy/sdk/shapes:define-structure ec2reserved-instances common-lisp:nil
                                    ((configuration :target-type
                                      ec2reserved-instances-configuration
                                      :member-name "configuration")
                                     (cost-calculation :target-type
                                      reserved-instances-cost-calculation
                                      :member-name "costCalculation"))
                                    (:shape-name "Ec2ReservedInstances"))

(smithy/sdk/shapes:define-structure ec2reserved-instances-configuration
                                    common-lisp:nil
                                    ((account-scope :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "accountScope")
                                     (service :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "service")
                                     (term :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "term")
                                     (payment-option :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "paymentOption")
                                     (reserved-instances-region :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "reservedInstancesRegion")
                                     (upfront-cost :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "upfrontCost")
                                     (monthly-recurring-cost :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "monthlyRecurringCost")
                                     (normalized-units-to-purchase :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "normalizedUnitsToPurchase")
                                     (number-of-instances-to-purchase
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "numberOfInstancesToPurchase")
                                     (offering-class :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "offeringClass")
                                     (instance-family :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "instanceFamily")
                                     (instance-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "instanceType")
                                     (current-generation :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "currentGeneration")
                                     (platform :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "platform")
                                     (tenancy :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "tenancy")
                                     (size-flex-eligible :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "sizeFlexEligible"))
                                    (:shape-name
                                     "Ec2ReservedInstancesConfiguration"))

(smithy/sdk/shapes:define-structure ecs-service common-lisp:nil
                                    ((configuration :target-type
                                      ecs-service-configuration :member-name
                                      "configuration")
                                     (cost-calculation :target-type
                                      resource-cost-calculation :member-name
                                      "costCalculation"))
                                    (:shape-name "EcsService"))

(smithy/sdk/shapes:define-structure ecs-service-configuration common-lisp:nil
                                    ((compute :target-type
                                      compute-configuration :member-name
                                      "compute"))
                                    (:shape-name "EcsServiceConfiguration"))

(smithy/sdk/shapes:define-structure elasti-cache-reserved-instances
                                    common-lisp:nil
                                    ((configuration :target-type
                                      elasti-cache-reserved-instances-configuration
                                      :member-name "configuration")
                                     (cost-calculation :target-type
                                      reserved-instances-cost-calculation
                                      :member-name "costCalculation"))
                                    (:shape-name
                                     "ElastiCacheReservedInstances"))

(smithy/sdk/shapes:define-structure
 elasti-cache-reserved-instances-configuration common-lisp:nil
 ((account-scope :target-type smithy/sdk/smithy-types:string :member-name
   "accountScope")
  (service :target-type smithy/sdk/smithy-types:string :member-name "service")
  (term :target-type smithy/sdk/smithy-types:string :member-name "term")
  (payment-option :target-type smithy/sdk/smithy-types:string :member-name
   "paymentOption")
  (reserved-instances-region :target-type smithy/sdk/smithy-types:string
   :member-name "reservedInstancesRegion")
  (upfront-cost :target-type smithy/sdk/smithy-types:string :member-name
   "upfrontCost")
  (monthly-recurring-cost :target-type smithy/sdk/smithy-types:string
   :member-name "monthlyRecurringCost")
  (normalized-units-to-purchase :target-type smithy/sdk/smithy-types:string
   :member-name "normalizedUnitsToPurchase")
  (number-of-instances-to-purchase :target-type smithy/sdk/smithy-types:string
   :member-name "numberOfInstancesToPurchase")
  (instance-family :target-type smithy/sdk/smithy-types:string :member-name
   "instanceFamily")
  (instance-type :target-type smithy/sdk/smithy-types:string :member-name
   "instanceType")
  (current-generation :target-type smithy/sdk/smithy-types:string :member-name
   "currentGeneration")
  (size-flex-eligible :target-type smithy/sdk/smithy-types:boolean :member-name
   "sizeFlexEligible"))
 (:shape-name "ElastiCacheReservedInstancesConfiguration"))

(smithy/sdk/shapes:define-enum enrollment-status
    common-lisp:nil
  (:active "Active")
  (:inactive "Inactive"))

(smithy/sdk/shapes:define-structure estimated-discounts common-lisp:nil
                                    ((savings-plans-discount :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "savingsPlansDiscount")
                                     (reserved-instances-discount :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "reservedInstancesDiscount")
                                     (other-discount :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "otherDiscount"))
                                    (:shape-name "EstimatedDiscounts"))

(smithy/sdk/shapes:define-structure filter common-lisp:nil
                                    ((restart-needed :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "restartNeeded")
                                     (rollback-possible :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "rollbackPossible")
                                     (implementation-efforts :target-type
                                      implementation-effort-list :member-name
                                      "implementationEfforts")
                                     (account-ids :target-type account-id-list
                                      :member-name "accountIds")
                                     (regions :target-type region-list
                                      :member-name "regions")
                                     (resource-types :target-type
                                      resource-type-list :member-name
                                      "resourceTypes")
                                     (action-types :target-type
                                      action-type-list :member-name
                                      "actionTypes")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (resource-ids :target-type
                                      resource-id-list :member-name
                                      "resourceIds")
                                     (resource-arns :target-type
                                      resource-arn-list :member-name
                                      "resourceArns")
                                     (recommendation-ids :target-type
                                      recommendation-id-list :member-name
                                      "recommendationIds"))
                                    (:shape-name "Filter"))

(smithy/sdk/shapes:define-input get-preferences-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetPreferencesRequest"))

(smithy/sdk/shapes:define-output get-preferences-response common-lisp:nil
                                 ((savings-estimation-mode :target-type
                                   savings-estimation-mode :member-name
                                   "savingsEstimationMode")
                                  (member-account-discount-visibility
                                   :target-type
                                   member-account-discount-visibility
                                   :member-name
                                   "memberAccountDiscountVisibility")
                                  (preferred-commitment :target-type
                                   preferred-commitment :member-name
                                   "preferredCommitment"))
                                 (:shape-name "GetPreferencesResponse"))

(smithy/sdk/shapes:define-input get-recommendation-request common-lisp:nil
                                ((recommendation-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "recommendationId"))
                                (:shape-name "GetRecommendationRequest"))

(smithy/sdk/shapes:define-output get-recommendation-response common-lisp:nil
                                 ((recommendation-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "recommendationId")
                                  (resource-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "resourceId")
                                  (resource-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "resourceArn")
                                  (account-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "accountId")
                                  (currency-code :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "currencyCode")
                                  (recommendation-lookback-period-in-days
                                   :target-type smithy/sdk/smithy-types:integer
                                   :member-name
                                   "recommendationLookbackPeriodInDays")
                                  (cost-calculation-lookback-period-in-days
                                   :target-type smithy/sdk/smithy-types:integer
                                   :member-name
                                   "costCalculationLookbackPeriodInDays")
                                  (estimated-savings-percentage :target-type
                                   smithy/sdk/smithy-types:double :member-name
                                   "estimatedSavingsPercentage")
                                  (estimated-savings-over-cost-calculation-lookback-period
                                   :target-type smithy/sdk/smithy-types:double
                                   :member-name
                                   "estimatedSavingsOverCostCalculationLookbackPeriod")
                                  (current-resource-type :target-type
                                   resource-type :member-name
                                   "currentResourceType")
                                  (recommended-resource-type :target-type
                                   resource-type :member-name
                                   "recommendedResourceType")
                                  (region :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "region")
                                  (source :target-type source :member-name
                                   "source")
                                  (last-refresh-timestamp :target-type datetime
                                   :member-name "lastRefreshTimestamp")
                                  (estimated-monthly-savings :target-type
                                   smithy/sdk/smithy-types:double :member-name
                                   "estimatedMonthlySavings")
                                  (estimated-monthly-cost :target-type
                                   smithy/sdk/smithy-types:double :member-name
                                   "estimatedMonthlyCost")
                                  (implementation-effort :target-type
                                   implementation-effort :member-name
                                   "implementationEffort")
                                  (restart-needed :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "restartNeeded")
                                  (action-type :target-type action-type
                                   :member-name "actionType")
                                  (rollback-possible :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "rollbackPossible")
                                  (current-resource-details :target-type
                                   resource-details :member-name
                                   "currentResourceDetails")
                                  (recommended-resource-details :target-type
                                   resource-details :member-name
                                   "recommendedResourceDetails")
                                  (tags :target-type tag-list :member-name
                                   "tags"))
                                 (:shape-name "GetRecommendationResponse"))

(smithy/sdk/shapes:define-enum implementation-effort
    common-lisp:nil
  (:very-low "VeryLow")
  (:low "Low")
  (:medium "Medium")
  (:high "High")
  (:very-high "VeryHigh"))

(smithy/sdk/shapes:define-list implementation-effort-list :member
                               implementation-effort)

(smithy/sdk/shapes:define-structure instance-configuration common-lisp:nil
                                    ((type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "type"))
                                    (:shape-name "InstanceConfiguration"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure lambda-function common-lisp:nil
                                    ((configuration :target-type
                                      lambda-function-configuration
                                      :member-name "configuration")
                                     (cost-calculation :target-type
                                      resource-cost-calculation :member-name
                                      "costCalculation"))
                                    (:shape-name "LambdaFunction"))

(smithy/sdk/shapes:define-structure lambda-function-configuration
                                    common-lisp:nil
                                    ((compute :target-type
                                      compute-configuration :member-name
                                      "compute"))
                                    (:shape-name "LambdaFunctionConfiguration"))

(smithy/sdk/shapes:define-input list-enrollment-statuses-request
                                common-lisp:nil
                                ((include-organization-info :target-type
                                  smithy/shapes/primitive-types:primitive-boolean
                                  :member-name "includeOrganizationInfo")
                                 (account-id :target-type account-id
                                  :member-name "accountId")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListEnrollmentStatusesRequest"))

(smithy/sdk/shapes:define-output list-enrollment-statuses-response
                                 common-lisp:nil
                                 ((items :target-type
                                   account-enrollment-statuses :member-name
                                   "items")
                                  (include-member-accounts :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "includeMemberAccounts")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name "ListEnrollmentStatusesResponse"))

(smithy/sdk/shapes:define-input list-recommendation-summaries-request
                                common-lisp:nil
                                ((filter :target-type filter :member-name
                                  "filter")
                                 (group-by :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "groupBy")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (metrics :target-type summary-metrics-list
                                  :member-name "metrics")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken"))
                                (:shape-name
                                 "ListRecommendationSummariesRequest"))

(smithy/sdk/shapes:define-output list-recommendation-summaries-response
                                 common-lisp:nil
                                 ((estimated-total-deduped-savings :target-type
                                   smithy/sdk/smithy-types:double :member-name
                                   "estimatedTotalDedupedSavings")
                                  (items :target-type
                                   recommendation-summaries-list :member-name
                                   "items")
                                  (group-by :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "groupBy")
                                  (currency-code :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "currencyCode")
                                  (metrics :target-type summary-metrics-result
                                   :member-name "metrics")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "ListRecommendationSummariesResponse"))

(smithy/sdk/shapes:define-input list-recommendations-request common-lisp:nil
                                ((filter :target-type filter :member-name
                                  "filter")
                                 (order-by :target-type order-by :member-name
                                  "orderBy")
                                 (include-all-recommendations :target-type
                                  smithy/shapes/primitive-types:primitive-boolean
                                  :member-name "includeAllRecommendations")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken"))
                                (:shape-name "ListRecommendationsRequest"))

(smithy/sdk/shapes:define-output list-recommendations-response common-lisp:nil
                                 ((items :target-type recommendation-list
                                   :member-name "items")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name "ListRecommendationsResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum member-account-discount-visibility
    common-lisp:nil
  (:all "All")
  (:none "None"))

(smithy/sdk/shapes:define-structure memory-db-reserved-instances
                                    common-lisp:nil
                                    ((configuration :target-type
                                      memory-db-reserved-instances-configuration
                                      :member-name "configuration")
                                     (cost-calculation :target-type
                                      reserved-instances-cost-calculation
                                      :member-name "costCalculation"))
                                    (:shape-name "MemoryDbReservedInstances"))

(smithy/sdk/shapes:define-structure memory-db-reserved-instances-configuration
                                    common-lisp:nil
                                    ((account-scope :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "accountScope")
                                     (service :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "service")
                                     (term :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "term")
                                     (payment-option :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "paymentOption")
                                     (reserved-instances-region :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "reservedInstancesRegion")
                                     (upfront-cost :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "upfrontCost")
                                     (monthly-recurring-cost :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "monthlyRecurringCost")
                                     (normalized-units-to-purchase :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "normalizedUnitsToPurchase")
                                     (number-of-instances-to-purchase
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "numberOfInstancesToPurchase")
                                     (instance-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "instanceType")
                                     (instance-family :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "instanceFamily")
                                     (size-flex-eligible :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "sizeFlexEligible")
                                     (current-generation :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "currentGeneration"))
                                    (:shape-name
                                     "MemoryDbReservedInstancesConfiguration"))

(smithy/sdk/shapes:define-structure mixed-instance-configuration
                                    common-lisp:nil
                                    ((type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "type"))
                                    (:shape-name "MixedInstanceConfiguration"))

(smithy/sdk/shapes:define-list mixed-instance-configuration-list :member
                               mixed-instance-configuration)

(smithy/sdk/shapes:define-structure open-search-reserved-instances
                                    common-lisp:nil
                                    ((configuration :target-type
                                      open-search-reserved-instances-configuration
                                      :member-name "configuration")
                                     (cost-calculation :target-type
                                      reserved-instances-cost-calculation
                                      :member-name "costCalculation"))
                                    (:shape-name "OpenSearchReservedInstances"))

(smithy/sdk/shapes:define-structure
 open-search-reserved-instances-configuration common-lisp:nil
 ((account-scope :target-type smithy/sdk/smithy-types:string :member-name
   "accountScope")
  (service :target-type smithy/sdk/smithy-types:string :member-name "service")
  (term :target-type smithy/sdk/smithy-types:string :member-name "term")
  (payment-option :target-type smithy/sdk/smithy-types:string :member-name
   "paymentOption")
  (reserved-instances-region :target-type smithy/sdk/smithy-types:string
   :member-name "reservedInstancesRegion")
  (upfront-cost :target-type smithy/sdk/smithy-types:string :member-name
   "upfrontCost")
  (monthly-recurring-cost :target-type smithy/sdk/smithy-types:string
   :member-name "monthlyRecurringCost")
  (normalized-units-to-purchase :target-type smithy/sdk/smithy-types:string
   :member-name "normalizedUnitsToPurchase")
  (number-of-instances-to-purchase :target-type smithy/sdk/smithy-types:string
   :member-name "numberOfInstancesToPurchase")
  (instance-type :target-type smithy/sdk/smithy-types:string :member-name
   "instanceType")
  (current-generation :target-type smithy/sdk/smithy-types:string :member-name
   "currentGeneration")
  (size-flex-eligible :target-type smithy/sdk/smithy-types:boolean :member-name
   "sizeFlexEligible"))
 (:shape-name "OpenSearchReservedInstancesConfiguration"))

(smithy/sdk/shapes:define-enum order
    common-lisp:nil
  (:asc "Asc")
  (:desc "Desc"))

(smithy/sdk/shapes:define-structure order-by common-lisp:nil
                                    ((dimension :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "dimension")
                                     (order :target-type order :member-name
                                      "order"))
                                    (:shape-name "OrderBy"))

(smithy/sdk/shapes:define-enum payment-option
    common-lisp:nil
  (:all-upfront "AllUpfront")
  (:partial-upfront "PartialUpfront")
  (:no-upfront "NoUpfront"))

(smithy/sdk/shapes:define-structure preferred-commitment common-lisp:nil
                                    ((term :target-type term :member-name
                                      "term")
                                     (payment-option :target-type
                                      payment-option :member-name
                                      "paymentOption"))
                                    (:shape-name "PreferredCommitment"))

(smithy/sdk/shapes:define-structure rds-db-instance common-lisp:nil
                                    ((configuration :target-type
                                      rds-db-instance-configuration
                                      :member-name "configuration")
                                     (cost-calculation :target-type
                                      resource-cost-calculation :member-name
                                      "costCalculation"))
                                    (:shape-name "RdsDbInstance"))

(smithy/sdk/shapes:define-structure rds-db-instance-configuration
                                    common-lisp:nil
                                    ((instance :target-type
                                      db-instance-configuration :member-name
                                      "instance"))
                                    (:shape-name "RdsDbInstanceConfiguration"))

(smithy/sdk/shapes:define-structure rds-db-instance-storage common-lisp:nil
                                    ((configuration :target-type
                                      rds-db-instance-storage-configuration
                                      :member-name "configuration")
                                     (cost-calculation :target-type
                                      resource-cost-calculation :member-name
                                      "costCalculation"))
                                    (:shape-name "RdsDbInstanceStorage"))

(smithy/sdk/shapes:define-structure rds-db-instance-storage-configuration
                                    common-lisp:nil
                                    ((storage-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "storageType")
                                     (allocated-storage-in-gb :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "allocatedStorageInGb")
                                     (iops :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "iops")
                                     (storage-throughput :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "storageThroughput"))
                                    (:shape-name
                                     "RdsDbInstanceStorageConfiguration"))

(smithy/sdk/shapes:define-structure rds-reserved-instances common-lisp:nil
                                    ((configuration :target-type
                                      rds-reserved-instances-configuration
                                      :member-name "configuration")
                                     (cost-calculation :target-type
                                      reserved-instances-cost-calculation
                                      :member-name "costCalculation"))
                                    (:shape-name "RdsReservedInstances"))

(smithy/sdk/shapes:define-structure rds-reserved-instances-configuration
                                    common-lisp:nil
                                    ((account-scope :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "accountScope")
                                     (service :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "service")
                                     (term :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "term")
                                     (payment-option :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "paymentOption")
                                     (reserved-instances-region :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "reservedInstancesRegion")
                                     (upfront-cost :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "upfrontCost")
                                     (monthly-recurring-cost :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "monthlyRecurringCost")
                                     (normalized-units-to-purchase :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "normalizedUnitsToPurchase")
                                     (number-of-instances-to-purchase
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "numberOfInstancesToPurchase")
                                     (instance-family :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "instanceFamily")
                                     (instance-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "instanceType")
                                     (size-flex-eligible :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "sizeFlexEligible")
                                     (current-generation :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "currentGeneration")
                                     (license-model :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "licenseModel")
                                     (database-edition :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "databaseEdition")
                                     (database-engine :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "databaseEngine")
                                     (deployment-option :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "deploymentOption"))
                                    (:shape-name
                                     "RdsReservedInstancesConfiguration"))

(smithy/sdk/shapes:define-structure recommendation common-lisp:nil
                                    ((recommendation-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "recommendationId")
                                     (account-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "accountId")
                                     (region :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "region")
                                     (resource-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "resourceId")
                                     (resource-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "resourceArn")
                                     (current-resource-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "currentResourceType")
                                     (recommended-resource-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "recommendedResourceType")
                                     (estimated-monthly-savings :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "estimatedMonthlySavings")
                                     (estimated-savings-percentage :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name
                                      "estimatedSavingsPercentage")
                                     (estimated-monthly-cost :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "estimatedMonthlyCost")
                                     (currency-code :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "currencyCode")
                                     (implementation-effort :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "implementationEffort")
                                     (restart-needed :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "restartNeeded")
                                     (action-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "actionType")
                                     (rollback-possible :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "rollbackPossible")
                                     (current-resource-summary :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "currentResourceSummary")
                                     (recommended-resource-summary :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "recommendedResourceSummary")
                                     (last-refresh-timestamp :target-type
                                      datetime :member-name
                                      "lastRefreshTimestamp")
                                     (recommendation-lookback-period-in-days
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "recommendationLookbackPeriodInDays")
                                     (source :target-type source :member-name
                                      "source")
                                     (tags :target-type tag-list :member-name
                                      "tags"))
                                    (:shape-name "Recommendation"))

(smithy/sdk/shapes:define-list recommendation-id-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list recommendation-list :member recommendation)

(smithy/sdk/shapes:define-list recommendation-summaries-list :member
                               recommendation-summary)

(smithy/sdk/shapes:define-structure recommendation-summary common-lisp:nil
                                    ((group :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "group")
                                     (estimated-monthly-savings :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "estimatedMonthlySavings")
                                     (recommendation-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "recommendationCount"))
                                    (:shape-name "RecommendationSummary"))

(smithy/sdk/shapes:define-structure redshift-reserved-instances common-lisp:nil
                                    ((configuration :target-type
                                      redshift-reserved-instances-configuration
                                      :member-name "configuration")
                                     (cost-calculation :target-type
                                      reserved-instances-cost-calculation
                                      :member-name "costCalculation"))
                                    (:shape-name "RedshiftReservedInstances"))

(smithy/sdk/shapes:define-structure redshift-reserved-instances-configuration
                                    common-lisp:nil
                                    ((account-scope :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "accountScope")
                                     (service :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "service")
                                     (term :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "term")
                                     (payment-option :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "paymentOption")
                                     (reserved-instances-region :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "reservedInstancesRegion")
                                     (upfront-cost :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "upfrontCost")
                                     (monthly-recurring-cost :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "monthlyRecurringCost")
                                     (normalized-units-to-purchase :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "normalizedUnitsToPurchase")
                                     (number-of-instances-to-purchase
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "numberOfInstancesToPurchase")
                                     (instance-family :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "instanceFamily")
                                     (instance-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "instanceType")
                                     (size-flex-eligible :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "sizeFlexEligible")
                                     (current-generation :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "currentGeneration"))
                                    (:shape-name
                                     "RedshiftReservedInstancesConfiguration"))

(smithy/sdk/shapes:define-list region-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure reserved-instances-cost-calculation
                                    common-lisp:nil
                                    ((pricing :target-type
                                      reserved-instances-pricing :member-name
                                      "pricing"))
                                    (:shape-name
                                     "ReservedInstancesCostCalculation"))

(smithy/sdk/shapes:define-structure reserved-instances-pricing common-lisp:nil
                                    ((estimated-on-demand-cost :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "estimatedOnDemandCost")
                                     (monthly-reservation-eligible-cost
                                      :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name
                                      "monthlyReservationEligibleCost")
                                     (savings-percentage :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "savingsPercentage")
                                     (estimated-monthly-amortized-reservation-cost
                                      :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name
                                      "estimatedMonthlyAmortizedReservationCost"))
                                    (:shape-name "ReservedInstancesPricing"))

(smithy/sdk/shapes:define-list resource-arn-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resource-cost-calculation common-lisp:nil
                                    ((usages :target-type usage-list
                                      :member-name "usages")
                                     (pricing :target-type resource-pricing
                                      :member-name "pricing"))
                                    (:shape-name "ResourceCostCalculation"))

(smithy/sdk/shapes:define-union resource-details common-lisp:nil
                                ((lambda-function :target-type lambda-function
                                  :member-name "lambdaFunction")
                                 (ecs-service :target-type ecs-service
                                  :member-name "ecsService")
                                 (ec2instance :target-type ec2instance
                                  :member-name "ec2Instance")
                                 (ebs-volume :target-type ebs-volume
                                  :member-name "ebsVolume")
                                 (ec2auto-scaling-group :target-type
                                  ec2auto-scaling-group :member-name
                                  "ec2AutoScalingGroup")
                                 (ec2reserved-instances :target-type
                                  ec2reserved-instances :member-name
                                  "ec2ReservedInstances")
                                 (rds-reserved-instances :target-type
                                  rds-reserved-instances :member-name
                                  "rdsReservedInstances")
                                 (elasti-cache-reserved-instances :target-type
                                  elasti-cache-reserved-instances :member-name
                                  "elastiCacheReservedInstances")
                                 (open-search-reserved-instances :target-type
                                  open-search-reserved-instances :member-name
                                  "openSearchReservedInstances")
                                 (redshift-reserved-instances :target-type
                                  redshift-reserved-instances :member-name
                                  "redshiftReservedInstances")
                                 (ec2instance-savings-plans :target-type
                                  ec2instance-savings-plans :member-name
                                  "ec2InstanceSavingsPlans")
                                 (compute-savings-plans :target-type
                                  compute-savings-plans :member-name
                                  "computeSavingsPlans")
                                 (sage-maker-savings-plans :target-type
                                  sage-maker-savings-plans :member-name
                                  "sageMakerSavingsPlans")
                                 (rds-db-instance :target-type rds-db-instance
                                  :member-name "rdsDbInstance")
                                 (rds-db-instance-storage :target-type
                                  rds-db-instance-storage :member-name
                                  "rdsDbInstanceStorage")
                                 (aurora-db-cluster-storage :target-type
                                  aurora-db-cluster-storage :member-name
                                  "auroraDbClusterStorage")
                                 (dynamo-db-reserved-capacity :target-type
                                  dynamo-db-reserved-capacity :member-name
                                  "dynamoDbReservedCapacity")
                                 (memory-db-reserved-instances :target-type
                                  memory-db-reserved-instances :member-name
                                  "memoryDbReservedInstances"))
                                (:shape-name "ResourceDetails"))

(smithy/sdk/shapes:define-list resource-id-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceId"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure resource-pricing common-lisp:nil
                                    ((estimated-cost-before-discounts
                                      :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name
                                      "estimatedCostBeforeDiscounts")
                                     (estimated-net-unused-amortized-commitments
                                      :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name
                                      "estimatedNetUnusedAmortizedCommitments")
                                     (estimated-discounts :target-type
                                      estimated-discounts :member-name
                                      "estimatedDiscounts")
                                     (estimated-cost-after-discounts
                                      :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name
                                      "estimatedCostAfterDiscounts"))
                                    (:shape-name "ResourcePricing"))

(smithy/sdk/shapes:define-enum resource-type
    common-lisp:nil
  (:ec2-instance "Ec2Instance")
  (:lambda-function "LambdaFunction")
  (:ebs-volume "EbsVolume")
  (:ecs-service "EcsService")
  (:ec2-auto-scaling-group "Ec2AutoScalingGroup")
  (:ec2-instance-savings-plans "Ec2InstanceSavingsPlans")
  (:compute-savings-plans "ComputeSavingsPlans")
  (:sage-maker-savings-plans "SageMakerSavingsPlans")
  (:ec2-reserved-instances "Ec2ReservedInstances")
  (:rds-reserved-instances "RdsReservedInstances")
  (:open-search-reserved-instances "OpenSearchReservedInstances")
  (:redshift-reserved-instances "RedshiftReservedInstances")
  (:elasti-cache-reserved-instances "ElastiCacheReservedInstances")
  (:rds-db-instance-storage "RdsDbInstanceStorage")
  (:rds-db-instance "RdsDbInstance")
  (:aurora-db-cluster-storage "AuroraDbClusterStorage")
  (:dynamo-db-reserved-capacity "DynamoDbReservedCapacity")
  (:memory-db-reserved-instances "MemoryDbReservedInstances"))

(smithy/sdk/shapes:define-list resource-type-list :member resource-type)

(smithy/sdk/shapes:define-structure sage-maker-savings-plans common-lisp:nil
                                    ((configuration :target-type
                                      sage-maker-savings-plans-configuration
                                      :member-name "configuration")
                                     (cost-calculation :target-type
                                      savings-plans-cost-calculation
                                      :member-name "costCalculation"))
                                    (:shape-name "SageMakerSavingsPlans"))

(smithy/sdk/shapes:define-structure sage-maker-savings-plans-configuration
                                    common-lisp:nil
                                    ((account-scope :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "accountScope")
                                     (term :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "term")
                                     (payment-option :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "paymentOption")
                                     (hourly-commitment :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "hourlyCommitment"))
                                    (:shape-name
                                     "SageMakerSavingsPlansConfiguration"))

(smithy/sdk/shapes:define-enum savings-estimation-mode
    common-lisp:nil
  (:before-discounts "BeforeDiscounts")
  (:after-discounts "AfterDiscounts"))

(smithy/sdk/shapes:define-structure savings-plans-cost-calculation
                                    common-lisp:nil
                                    ((pricing :target-type
                                      savings-plans-pricing :member-name
                                      "pricing"))
                                    (:shape-name "SavingsPlansCostCalculation"))

(smithy/sdk/shapes:define-structure savings-plans-pricing common-lisp:nil
                                    ((monthly-savings-plans-eligible-cost
                                      :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name
                                      "monthlySavingsPlansEligibleCost")
                                     (estimated-monthly-commitment :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name
                                      "estimatedMonthlyCommitment")
                                     (savings-percentage :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "savingsPercentage")
                                     (estimated-on-demand-cost :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "estimatedOnDemandCost"))
                                    (:shape-name "SavingsPlansPricing"))

(smithy/sdk/shapes:define-enum source
    common-lisp:nil
  (:compute-optimizer "ComputeOptimizer")
  (:cost-explorer "CostExplorer"))

(smithy/sdk/shapes:define-structure storage-configuration common-lisp:nil
                                    ((type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "type")
                                     (size-in-gb :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "sizeInGb"))
                                    (:shape-name "StorageConfiguration"))

(smithy/sdk/shapes:define-enum summary-metrics
    common-lisp:nil
  (:savings-percentage "SavingsPercentage"))

(smithy/sdk/shapes:define-list summary-metrics-list :member summary-metrics)

(smithy/sdk/shapes:define-structure summary-metrics-result common-lisp:nil
                                    ((savings-percentage :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "savingsPercentage"))
                                    (:shape-name "SummaryMetricsResult"))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "key")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-enum term
    common-lisp:nil
  (:one-year "OneYear")
  (:three-years "ThreeYears"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-input update-enrollment-status-request
                                common-lisp:nil
                                ((status :target-type enrollment-status
                                  :required common-lisp:t :member-name
                                  "status")
                                 (include-member-accounts :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "includeMemberAccounts"))
                                (:shape-name "UpdateEnrollmentStatusRequest"))

(smithy/sdk/shapes:define-output update-enrollment-status-response
                                 common-lisp:nil
                                 ((status :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "status"))
                                 (:shape-name "UpdateEnrollmentStatusResponse"))

(smithy/sdk/shapes:define-input update-preferences-request common-lisp:nil
                                ((savings-estimation-mode :target-type
                                  savings-estimation-mode :member-name
                                  "savingsEstimationMode")
                                 (member-account-discount-visibility
                                  :target-type
                                  member-account-discount-visibility
                                  :member-name
                                  "memberAccountDiscountVisibility")
                                 (preferred-commitment :target-type
                                  preferred-commitment :member-name
                                  "preferredCommitment"))
                                (:shape-name "UpdatePreferencesRequest"))

(smithy/sdk/shapes:define-output update-preferences-response common-lisp:nil
                                 ((savings-estimation-mode :target-type
                                   savings-estimation-mode :member-name
                                   "savingsEstimationMode")
                                  (member-account-discount-visibility
                                   :target-type
                                   member-account-discount-visibility
                                   :member-name
                                   "memberAccountDiscountVisibility")
                                  (preferred-commitment :target-type
                                   preferred-commitment :member-name
                                   "preferredCommitment"))
                                 (:shape-name "UpdatePreferencesResponse"))

(smithy/sdk/shapes:define-structure usage common-lisp:nil
                                    ((usage-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "usageType")
                                     (usage-amount :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "usageAmount")
                                     (operation :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "operation")
                                     (product-code :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "productCode")
                                     (unit :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "unit"))
                                    (:shape-name "Usage"))

(smithy/sdk/shapes:define-list usage-list :member usage)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (reason :target-type
                                  validation-exception-reason :member-name
                                  "reason")
                                 (fields :target-type
                                  validation-exception-details :member-name
                                  "fields"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-detail common-lisp:nil
                                    ((field-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "fieldName")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "ValidationExceptionDetail"))

(smithy/sdk/shapes:define-list validation-exception-details :member
                               validation-exception-detail)

(smithy/sdk/shapes:define-enum validation-exception-reason
    common-lisp:nil
  (:field-validation-failed "FieldValidationFailed")
  (:other "Other"))

(smithy/sdk/operation:define-operation get-preferences :shape-name
                                       "GetPreferences" :input
                                       get-preferences-request :output
                                       get-preferences-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-recommendation :shape-name
                                       "GetRecommendation" :input
                                       get-recommendation-request :output
                                       get-recommendation-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-enrollment-statuses :shape-name
                                       "ListEnrollmentStatuses" :input
                                       list-enrollment-statuses-request :output
                                       list-enrollment-statuses-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-recommendation-summaries
                                       :shape-name
                                       "ListRecommendationSummaries" :input
                                       list-recommendation-summaries-request
                                       :output
                                       list-recommendation-summaries-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-recommendations :shape-name
                                       "ListRecommendations" :input
                                       list-recommendations-request :output
                                       list-recommendations-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-enrollment-status :shape-name
                                       "UpdateEnrollmentStatus" :input
                                       update-enrollment-status-request :output
                                       update-enrollment-status-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-preferences :shape-name
                                       "UpdatePreferences" :input
                                       update-preferences-request :output
                                       update-preferences-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))
