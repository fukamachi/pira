(uiop/package:define-package #:pira/budgets (:use)
                             (:export #:awsbudget-service-gateway
                              #:access-denied-exception #:account-id #:action
                              #:action-histories #:action-history
                              #:action-history-details #:action-id
                              #:action-status #:action-sub-type
                              #:action-threshold #:action-type #:actions
                              #:adjustment-period #:amazon-resource-name
                              #:approval-model #:auto-adjust-data
                              #:auto-adjust-type #:budget #:budget-name
                              #:budget-notifications-for-account
                              #:budget-notifications-for-account-list
                              #:budget-performance-history #:budget-type
                              #:budgeted-and-actual-amounts
                              #:budgeted-and-actual-amounts-list #:budgets
                              #:calculated-spend #:comparison-operator
                              #:cost-category-name #:cost-category-values
                              #:cost-filters #:cost-types #:create-budget
                              #:create-budget-action #:create-notification
                              #:create-subscriber
                              #:creation-limit-exceeded-exception #:definition
                              #:delete-budget #:delete-budget-action
                              #:delete-notification #:delete-subscriber
                              #:describe-budget #:describe-budget-action
                              #:describe-budget-action-histories
                              #:describe-budget-actions-for-account
                              #:describe-budget-actions-for-budget
                              #:describe-budget-notifications-for-account
                              #:describe-budget-performance-history
                              #:describe-budgets
                              #:describe-notifications-for-budget
                              #:describe-subscribers-for-notification
                              #:dimension #:dimension-value #:dimension-values
                              #:duplicate-record-exception #:event-type
                              #:execute-budget-action #:execution-type
                              #:expired-next-token-exception #:expression
                              #:expression-dimension-values #:expressions
                              #:generic-string #:generic-timestamp #:group
                              #:groups #:historical-options
                              #:iam-action-definition #:instance-id
                              #:instance-ids #:internal-error-exception
                              #:invalid-next-token-exception
                              #:invalid-parameter-exception
                              #:list-tags-for-resource #:match-option
                              #:match-options #:max-results
                              #:max-results-budget-notifications
                              #:max-results-describe-budgets #:metric #:metrics
                              #:not-found-exception #:notification
                              #:notification-state #:notification-threshold
                              #:notification-type
                              #:notification-with-subscribers
                              #:notification-with-subscribers-list
                              #:notifications #:nullable-boolean
                              #:numeric-value #:planned-budget-limits
                              #:policy-arn #:policy-id #:region
                              #:resource-locked-exception #:resource-tag
                              #:resource-tag-key #:resource-tag-key-list
                              #:resource-tag-list #:resource-tag-value #:role
                              #:role-arn #:roles #:scp-action-definition
                              #:service-quota-exceeded-exception #:spend
                              #:ssm-action-definition #:subscriber
                              #:subscriber-address #:subscribers
                              #:subscription-type #:tag-key #:tag-resource
                              #:tag-values #:target-id #:target-ids
                              #:threshold-type #:throttling-exception
                              #:time-period #:time-unit #:unit-value
                              #:untag-resource #:update-budget
                              #:update-budget-action #:update-notification
                              #:update-subscriber #:user #:users #:value
                              #:values #:error-message #:budgets-error))
(common-lisp:in-package #:pira/budgets)

(common-lisp:define-condition budgets-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service awsbudget-service-gateway :shape-name
                                   "AWSBudgetServiceGateway" :version
                                   "2016-10-20" :title "AWS Budgets"
                                   :operations
                                   '(create-budget create-budget-action
                                     create-notification create-subscriber
                                     delete-budget delete-budget-action
                                     delete-notification delete-subscriber
                                     describe-budget describe-budget-action
                                     describe-budget-action-histories
                                     describe-budget-actions-for-account
                                     describe-budget-actions-for-budget
                                     describe-budget-notifications-for-account
                                     describe-budget-performance-history
                                     describe-budgets
                                     describe-notifications-for-budget
                                     describe-subscribers-for-notification
                                     execute-budget-action
                                     list-tags-for-resource tag-resource
                                     untag-resource update-budget
                                     update-budget-action update-notification
                                     update-subscriber)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "Budgets")
                                      ("arnNamespace" . "budgets")
                                      ("cloudFormationName" . "Budgets")
                                      ("cloudTrailEventSource"
                                       . "budgets.amazonaws.com")
                                      ("endpointPrefix" . "budgets"))
                                     ("aws.auth#sigv4" ("name" . "budgets"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403) (:base-class budgets-error))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure action common-lisp:nil
                                    ((action-id :target-type action-id
                                      :required common-lisp:t :member-name
                                      "ActionId")
                                     (budget-name :target-type budget-name
                                      :required common-lisp:t :member-name
                                      "BudgetName")
                                     (notification-type :target-type
                                      notification-type :required common-lisp:t
                                      :member-name "NotificationType")
                                     (action-type :target-type action-type
                                      :required common-lisp:t :member-name
                                      "ActionType")
                                     (action-threshold :target-type
                                      action-threshold :required common-lisp:t
                                      :member-name "ActionThreshold")
                                     (definition :target-type definition
                                      :required common-lisp:t :member-name
                                      "Definition")
                                     (execution-role-arn :target-type role-arn
                                      :required common-lisp:t :member-name
                                      "ExecutionRoleArn")
                                     (approval-model :target-type
                                      approval-model :required common-lisp:t
                                      :member-name "ApprovalModel")
                                     (status :target-type action-status
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (subscribers :target-type subscribers
                                      :required common-lisp:t :member-name
                                      "Subscribers"))
                                    (:shape-name "Action"))

(smithy/sdk/shapes:define-list action-histories :member action-history)

(smithy/sdk/shapes:define-structure action-history common-lisp:nil
                                    ((timestamp :target-type generic-timestamp
                                      :required common-lisp:t :member-name
                                      "Timestamp")
                                     (status :target-type action-status
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (event-type :target-type event-type
                                      :required common-lisp:t :member-name
                                      "EventType")
                                     (action-history-details :target-type
                                      action-history-details :required
                                      common-lisp:t :member-name
                                      "ActionHistoryDetails"))
                                    (:shape-name "ActionHistory"))

(smithy/sdk/shapes:define-structure action-history-details common-lisp:nil
                                    ((message :target-type generic-string
                                      :required common-lisp:t :member-name
                                      "Message")
                                     (action :target-type action :required
                                      common-lisp:t :member-name "Action"))
                                    (:shape-name "ActionHistoryDetails"))

(smithy/sdk/shapes:define-type action-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum action-status
    common-lisp:nil
  (:standby "STANDBY")
  (:pending "PENDING")
  (:execution-in-progress "EXECUTION_IN_PROGRESS")
  (:execution-success "EXECUTION_SUCCESS")
  (:execution-failure "EXECUTION_FAILURE")
  (:reverse-in-progress "REVERSE_IN_PROGRESS")
  (:reverse-success "REVERSE_SUCCESS")
  (:reverse-failure "REVERSE_FAILURE")
  (:reset-in-progress "RESET_IN_PROGRESS")
  (:reset-failure "RESET_FAILURE"))

(smithy/sdk/shapes:define-enum action-sub-type
    common-lisp:nil
  (:stop-ec2 "STOP_EC2_INSTANCES")
  (:stop-rds "STOP_RDS_INSTANCES"))

(smithy/sdk/shapes:define-structure action-threshold common-lisp:nil
                                    ((action-threshold-value :target-type
                                      notification-threshold :required
                                      common-lisp:t :member-name
                                      "ActionThresholdValue")
                                     (action-threshold-type :target-type
                                      threshold-type :required common-lisp:t
                                      :member-name "ActionThresholdType"))
                                    (:shape-name "ActionThreshold"))

(smithy/sdk/shapes:define-enum action-type
    common-lisp:nil
  (:iam "APPLY_IAM_POLICY")
  (:scp "APPLY_SCP_POLICY")
  (:ssm "RUN_SSM_DOCUMENTS"))

(smithy/sdk/shapes:define-list actions :member action)

(smithy/sdk/shapes:define-type adjustment-period
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum approval-model
    common-lisp:nil
  (:auto "AUTOMATIC")
  (:manual "MANUAL"))

(smithy/sdk/shapes:define-structure auto-adjust-data common-lisp:nil
                                    ((auto-adjust-type :target-type
                                      auto-adjust-type :required common-lisp:t
                                      :member-name "AutoAdjustType")
                                     (historical-options :target-type
                                      historical-options :member-name
                                      "HistoricalOptions")
                                     (last-auto-adjust-time :target-type
                                      generic-timestamp :member-name
                                      "LastAutoAdjustTime"))
                                    (:shape-name "AutoAdjustData"))

(smithy/sdk/shapes:define-enum auto-adjust-type
    common-lisp:nil
  (:historical "HISTORICAL")
  (:forecast "FORECAST"))

(smithy/sdk/shapes:define-structure budget common-lisp:nil
                                    ((budget-name :target-type budget-name
                                      :required common-lisp:t :member-name
                                      "BudgetName")
                                     (budget-limit :target-type spend
                                      :member-name "BudgetLimit")
                                     (planned-budget-limits :target-type
                                      planned-budget-limits :member-name
                                      "PlannedBudgetLimits")
                                     (cost-filters :target-type cost-filters
                                      :member-name "CostFilters")
                                     (cost-types :target-type cost-types
                                      :member-name "CostTypes")
                                     (time-unit :target-type time-unit
                                      :required common-lisp:t :member-name
                                      "TimeUnit")
                                     (time-period :target-type time-period
                                      :member-name "TimePeriod")
                                     (calculated-spend :target-type
                                      calculated-spend :member-name
                                      "CalculatedSpend")
                                     (budget-type :target-type budget-type
                                      :required common-lisp:t :member-name
                                      "BudgetType")
                                     (last-updated-time :target-type
                                      generic-timestamp :member-name
                                      "LastUpdatedTime")
                                     (auto-adjust-data :target-type
                                      auto-adjust-data :member-name
                                      "AutoAdjustData")
                                     (filter-expression :target-type expression
                                      :member-name "FilterExpression")
                                     (metrics :target-type metrics :member-name
                                      "Metrics"))
                                    (:shape-name "Budget"))

(smithy/sdk/shapes:define-type budget-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure budget-notifications-for-account
                                    common-lisp:nil
                                    ((notifications :target-type notifications
                                      :member-name "Notifications")
                                     (budget-name :target-type budget-name
                                      :member-name "BudgetName"))
                                    (:shape-name
                                     "BudgetNotificationsForAccount"))

(smithy/sdk/shapes:define-list budget-notifications-for-account-list :member
                               budget-notifications-for-account)

(smithy/sdk/shapes:define-structure budget-performance-history common-lisp:nil
                                    ((budget-name :target-type budget-name
                                      :member-name "BudgetName")
                                     (budget-type :target-type budget-type
                                      :member-name "BudgetType")
                                     (cost-filters :target-type cost-filters
                                      :member-name "CostFilters")
                                     (cost-types :target-type cost-types
                                      :member-name "CostTypes")
                                     (time-unit :target-type time-unit
                                      :member-name "TimeUnit")
                                     (budgeted-and-actual-amounts-list
                                      :target-type
                                      budgeted-and-actual-amounts-list
                                      :member-name
                                      "BudgetedAndActualAmountsList"))
                                    (:shape-name "BudgetPerformanceHistory"))

(smithy/sdk/shapes:define-enum budget-type
    common-lisp:nil
  (:usage "USAGE")
  (:cost "COST")
  (:riutilization "RI_UTILIZATION")
  (:ricoverage "RI_COVERAGE")
  (:sputilization "SAVINGS_PLANS_UTILIZATION")
  (:spcoverage "SAVINGS_PLANS_COVERAGE"))

(smithy/sdk/shapes:define-structure budgeted-and-actual-amounts common-lisp:nil
                                    ((budgeted-amount :target-type spend
                                      :member-name "BudgetedAmount")
                                     (actual-amount :target-type spend
                                      :member-name "ActualAmount")
                                     (time-period :target-type time-period
                                      :member-name "TimePeriod"))
                                    (:shape-name "BudgetedAndActualAmounts"))

(smithy/sdk/shapes:define-list budgeted-and-actual-amounts-list :member
                               budgeted-and-actual-amounts)

(smithy/sdk/shapes:define-list budgets :member budget)

(smithy/sdk/shapes:define-structure calculated-spend common-lisp:nil
                                    ((actual-spend :target-type spend :required
                                      common-lisp:t :member-name "ActualSpend")
                                     (forecasted-spend :target-type spend
                                      :member-name "ForecastedSpend"))
                                    (:shape-name "CalculatedSpend"))

(smithy/sdk/shapes:define-enum comparison-operator
    common-lisp:nil
  (:greater-than "GREATER_THAN")
  (:less-than "LESS_THAN")
  (:equal-to "EQUAL_TO"))

(smithy/sdk/shapes:define-type cost-category-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cost-category-values common-lisp:nil
                                    ((key :target-type cost-category-name
                                      :member-name "Key")
                                     (values :target-type values :member-name
                                      "Values")
                                     (match-options :target-type match-options
                                      :member-name "MatchOptions"))
                                    (:shape-name "CostCategoryValues"))

(smithy/sdk/shapes:define-map cost-filters :key generic-string :value
                              dimension-values)

(smithy/sdk/shapes:define-structure cost-types common-lisp:nil
                                    ((include-tax :target-type nullable-boolean
                                      :member-name "IncludeTax")
                                     (include-subscription :target-type
                                      nullable-boolean :member-name
                                      "IncludeSubscription")
                                     (use-blended :target-type nullable-boolean
                                      :member-name "UseBlended")
                                     (include-refund :target-type
                                      nullable-boolean :member-name
                                      "IncludeRefund")
                                     (include-credit :target-type
                                      nullable-boolean :member-name
                                      "IncludeCredit")
                                     (include-upfront :target-type
                                      nullable-boolean :member-name
                                      "IncludeUpfront")
                                     (include-recurring :target-type
                                      nullable-boolean :member-name
                                      "IncludeRecurring")
                                     (include-other-subscription :target-type
                                      nullable-boolean :member-name
                                      "IncludeOtherSubscription")
                                     (include-support :target-type
                                      nullable-boolean :member-name
                                      "IncludeSupport")
                                     (include-discount :target-type
                                      nullable-boolean :member-name
                                      "IncludeDiscount")
                                     (use-amortized :target-type
                                      nullable-boolean :member-name
                                      "UseAmortized"))
                                    (:shape-name "CostTypes"))

(smithy/sdk/shapes:define-input create-budget-action-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId")
                                 (budget-name :target-type budget-name
                                  :required common-lisp:t :member-name
                                  "BudgetName")
                                 (notification-type :target-type
                                  notification-type :required common-lisp:t
                                  :member-name "NotificationType")
                                 (action-type :target-type action-type
                                  :required common-lisp:t :member-name
                                  "ActionType")
                                 (action-threshold :target-type
                                  action-threshold :required common-lisp:t
                                  :member-name "ActionThreshold")
                                 (definition :target-type definition :required
                                  common-lisp:t :member-name "Definition")
                                 (execution-role-arn :target-type role-arn
                                  :required common-lisp:t :member-name
                                  "ExecutionRoleArn")
                                 (approval-model :target-type approval-model
                                  :required common-lisp:t :member-name
                                  "ApprovalModel")
                                 (subscribers :target-type subscribers
                                  :required common-lisp:t :member-name
                                  "Subscribers")
                                 (resource-tags :target-type resource-tag-list
                                  :member-name "ResourceTags"))
                                (:shape-name "CreateBudgetActionRequest"))

(smithy/sdk/shapes:define-output create-budget-action-response common-lisp:nil
                                 ((account-id :target-type account-id :required
                                   common-lisp:t :member-name "AccountId")
                                  (budget-name :target-type budget-name
                                   :required common-lisp:t :member-name
                                   "BudgetName")
                                  (action-id :target-type action-id :required
                                   common-lisp:t :member-name "ActionId"))
                                 (:shape-name "CreateBudgetActionResponse"))

(smithy/sdk/shapes:define-input create-budget-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId")
                                 (budget :target-type budget :required
                                  common-lisp:t :member-name "Budget")
                                 (notifications-with-subscribers :target-type
                                  notification-with-subscribers-list
                                  :member-name "NotificationsWithSubscribers")
                                 (resource-tags :target-type resource-tag-list
                                  :member-name "ResourceTags"))
                                (:shape-name "CreateBudgetRequest"))

(smithy/sdk/shapes:define-output create-budget-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CreateBudgetResponse"))

(smithy/sdk/shapes:define-input create-notification-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId")
                                 (budget-name :target-type budget-name
                                  :required common-lisp:t :member-name
                                  "BudgetName")
                                 (notification :target-type notification
                                  :required common-lisp:t :member-name
                                  "Notification")
                                 (subscribers :target-type subscribers
                                  :required common-lisp:t :member-name
                                  "Subscribers"))
                                (:shape-name "CreateNotificationRequest"))

(smithy/sdk/shapes:define-output create-notification-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CreateNotificationResponse"))

(smithy/sdk/shapes:define-input create-subscriber-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId")
                                 (budget-name :target-type budget-name
                                  :required common-lisp:t :member-name
                                  "BudgetName")
                                 (notification :target-type notification
                                  :required common-lisp:t :member-name
                                  "Notification")
                                 (subscriber :target-type subscriber :required
                                  common-lisp:t :member-name "Subscriber"))
                                (:shape-name "CreateSubscriberRequest"))

(smithy/sdk/shapes:define-output create-subscriber-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CreateSubscriberResponse"))

(smithy/sdk/shapes:define-error creation-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "CreationLimitExceededException")
                                (:error-code 405) (:base-class budgets-error))

(smithy/sdk/shapes:define-structure definition common-lisp:nil
                                    ((iam-action-definition :target-type
                                      iam-action-definition :member-name
                                      "IamActionDefinition")
                                     (scp-action-definition :target-type
                                      scp-action-definition :member-name
                                      "ScpActionDefinition")
                                     (ssm-action-definition :target-type
                                      ssm-action-definition :member-name
                                      "SsmActionDefinition"))
                                    (:shape-name "Definition"))

(smithy/sdk/shapes:define-input delete-budget-action-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId")
                                 (budget-name :target-type budget-name
                                  :required common-lisp:t :member-name
                                  "BudgetName")
                                 (action-id :target-type action-id :required
                                  common-lisp:t :member-name "ActionId"))
                                (:shape-name "DeleteBudgetActionRequest"))

(smithy/sdk/shapes:define-output delete-budget-action-response common-lisp:nil
                                 ((account-id :target-type account-id :required
                                   common-lisp:t :member-name "AccountId")
                                  (budget-name :target-type budget-name
                                   :required common-lisp:t :member-name
                                   "BudgetName")
                                  (action :target-type action :required
                                   common-lisp:t :member-name "Action"))
                                 (:shape-name "DeleteBudgetActionResponse"))

(smithy/sdk/shapes:define-input delete-budget-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId")
                                 (budget-name :target-type budget-name
                                  :required common-lisp:t :member-name
                                  "BudgetName"))
                                (:shape-name "DeleteBudgetRequest"))

(smithy/sdk/shapes:define-output delete-budget-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteBudgetResponse"))

(smithy/sdk/shapes:define-input delete-notification-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId")
                                 (budget-name :target-type budget-name
                                  :required common-lisp:t :member-name
                                  "BudgetName")
                                 (notification :target-type notification
                                  :required common-lisp:t :member-name
                                  "Notification"))
                                (:shape-name "DeleteNotificationRequest"))

(smithy/sdk/shapes:define-output delete-notification-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteNotificationResponse"))

(smithy/sdk/shapes:define-input delete-subscriber-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId")
                                 (budget-name :target-type budget-name
                                  :required common-lisp:t :member-name
                                  "BudgetName")
                                 (notification :target-type notification
                                  :required common-lisp:t :member-name
                                  "Notification")
                                 (subscriber :target-type subscriber :required
                                  common-lisp:t :member-name "Subscriber"))
                                (:shape-name "DeleteSubscriberRequest"))

(smithy/sdk/shapes:define-output delete-subscriber-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteSubscriberResponse"))

(smithy/sdk/shapes:define-input describe-budget-action-histories-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId")
                                 (budget-name :target-type budget-name
                                  :required common-lisp:t :member-name
                                  "BudgetName")
                                 (action-id :target-type action-id :required
                                  common-lisp:t :member-name "ActionId")
                                 (time-period :target-type time-period
                                  :member-name "TimePeriod")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type generic-string
                                  :member-name "NextToken"))
                                (:shape-name
                                 "DescribeBudgetActionHistoriesRequest"))

(smithy/sdk/shapes:define-output describe-budget-action-histories-response
                                 common-lisp:nil
                                 ((action-histories :target-type
                                   action-histories :required common-lisp:t
                                   :member-name "ActionHistories")
                                  (next-token :target-type generic-string
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeBudgetActionHistoriesResponse"))

(smithy/sdk/shapes:define-input describe-budget-action-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId")
                                 (budget-name :target-type budget-name
                                  :required common-lisp:t :member-name
                                  "BudgetName")
                                 (action-id :target-type action-id :required
                                  common-lisp:t :member-name "ActionId"))
                                (:shape-name "DescribeBudgetActionRequest"))

(smithy/sdk/shapes:define-output describe-budget-action-response
                                 common-lisp:nil
                                 ((account-id :target-type account-id :required
                                   common-lisp:t :member-name "AccountId")
                                  (budget-name :target-type budget-name
                                   :required common-lisp:t :member-name
                                   "BudgetName")
                                  (action :target-type action :required
                                   common-lisp:t :member-name "Action"))
                                 (:shape-name "DescribeBudgetActionResponse"))

(smithy/sdk/shapes:define-input describe-budget-actions-for-account-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type generic-string
                                  :member-name "NextToken"))
                                (:shape-name
                                 "DescribeBudgetActionsForAccountRequest"))

(smithy/sdk/shapes:define-output describe-budget-actions-for-account-response
                                 common-lisp:nil
                                 ((actions :target-type actions :required
                                   common-lisp:t :member-name "Actions")
                                  (next-token :target-type generic-string
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeBudgetActionsForAccountResponse"))

(smithy/sdk/shapes:define-input describe-budget-actions-for-budget-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId")
                                 (budget-name :target-type budget-name
                                  :required common-lisp:t :member-name
                                  "BudgetName")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type generic-string
                                  :member-name "NextToken"))
                                (:shape-name
                                 "DescribeBudgetActionsForBudgetRequest"))

(smithy/sdk/shapes:define-output describe-budget-actions-for-budget-response
                                 common-lisp:nil
                                 ((actions :target-type actions :required
                                   common-lisp:t :member-name "Actions")
                                  (next-token :target-type generic-string
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeBudgetActionsForBudgetResponse"))

(smithy/sdk/shapes:define-input
 describe-budget-notifications-for-account-request common-lisp:nil
 ((account-id :target-type account-id :required common-lisp:t :member-name
   "AccountId")
  (max-results :target-type max-results-budget-notifications :member-name
   "MaxResults")
  (next-token :target-type generic-string :member-name "NextToken"))
 (:shape-name "DescribeBudgetNotificationsForAccountRequest"))

(smithy/sdk/shapes:define-output
 describe-budget-notifications-for-account-response common-lisp:nil
 ((budget-notifications-for-account :target-type
   budget-notifications-for-account-list :member-name
   "BudgetNotificationsForAccount")
  (next-token :target-type generic-string :member-name "NextToken"))
 (:shape-name "DescribeBudgetNotificationsForAccountResponse"))

(smithy/sdk/shapes:define-input describe-budget-performance-history-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId")
                                 (budget-name :target-type budget-name
                                  :required common-lisp:t :member-name
                                  "BudgetName")
                                 (time-period :target-type time-period
                                  :member-name "TimePeriod")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type generic-string
                                  :member-name "NextToken"))
                                (:shape-name
                                 "DescribeBudgetPerformanceHistoryRequest"))

(smithy/sdk/shapes:define-output describe-budget-performance-history-response
                                 common-lisp:nil
                                 ((budget-performance-history :target-type
                                   budget-performance-history :member-name
                                   "BudgetPerformanceHistory")
                                  (next-token :target-type generic-string
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeBudgetPerformanceHistoryResponse"))

(smithy/sdk/shapes:define-input describe-budget-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId")
                                 (budget-name :target-type budget-name
                                  :required common-lisp:t :member-name
                                  "BudgetName")
                                 (show-filter-expression :target-type
                                  nullable-boolean :member-name
                                  "ShowFilterExpression"))
                                (:shape-name "DescribeBudgetRequest"))

(smithy/sdk/shapes:define-output describe-budget-response common-lisp:nil
                                 ((budget :target-type budget :member-name
                                   "Budget"))
                                 (:shape-name "DescribeBudgetResponse"))

(smithy/sdk/shapes:define-input describe-budgets-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId")
                                 (max-results :target-type
                                  max-results-describe-budgets :member-name
                                  "MaxResults")
                                 (next-token :target-type generic-string
                                  :member-name "NextToken")
                                 (show-filter-expression :target-type
                                  nullable-boolean :member-name
                                  "ShowFilterExpression"))
                                (:shape-name "DescribeBudgetsRequest"))

(smithy/sdk/shapes:define-output describe-budgets-response common-lisp:nil
                                 ((budgets :target-type budgets :member-name
                                   "Budgets")
                                  (next-token :target-type generic-string
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeBudgetsResponse"))

(smithy/sdk/shapes:define-input describe-notifications-for-budget-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId")
                                 (budget-name :target-type budget-name
                                  :required common-lisp:t :member-name
                                  "BudgetName")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type generic-string
                                  :member-name "NextToken"))
                                (:shape-name
                                 "DescribeNotificationsForBudgetRequest"))

(smithy/sdk/shapes:define-output describe-notifications-for-budget-response
                                 common-lisp:nil
                                 ((notifications :target-type notifications
                                   :member-name "Notifications")
                                  (next-token :target-type generic-string
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeNotificationsForBudgetResponse"))

(smithy/sdk/shapes:define-input describe-subscribers-for-notification-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId")
                                 (budget-name :target-type budget-name
                                  :required common-lisp:t :member-name
                                  "BudgetName")
                                 (notification :target-type notification
                                  :required common-lisp:t :member-name
                                  "Notification")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type generic-string
                                  :member-name "NextToken"))
                                (:shape-name
                                 "DescribeSubscribersForNotificationRequest"))

(smithy/sdk/shapes:define-output describe-subscribers-for-notification-response
                                 common-lisp:nil
                                 ((subscribers :target-type subscribers
                                   :member-name "Subscribers")
                                  (next-token :target-type generic-string
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeSubscribersForNotificationResponse"))

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
  (:invoicing-entity "INVOICING_ENTITY")
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
  (:reservation-modified "RESERVATION_MODIFIED")
  (:tag-key "TAG_KEY")
  (:cost-category-name "COST_CATEGORY_NAME"))

(smithy/sdk/shapes:define-type dimension-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list dimension-values :member dimension-value)

(smithy/sdk/shapes:define-error duplicate-record-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "DuplicateRecordException")
                                (:error-code 409) (:base-class budgets-error))

(smithy/sdk/shapes:define-enum event-type
    common-lisp:nil
  (:system "SYSTEM")
  (:create-action "CREATE_ACTION")
  (:delete-action "DELETE_ACTION")
  (:update-action "UPDATE_ACTION")
  (:execute-action "EXECUTE_ACTION"))

(smithy/sdk/shapes:define-input execute-budget-action-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId")
                                 (budget-name :target-type budget-name
                                  :required common-lisp:t :member-name
                                  "BudgetName")
                                 (action-id :target-type action-id :required
                                  common-lisp:t :member-name "ActionId")
                                 (execution-type :target-type execution-type
                                  :required common-lisp:t :member-name
                                  "ExecutionType"))
                                (:shape-name "ExecuteBudgetActionRequest"))

(smithy/sdk/shapes:define-output execute-budget-action-response common-lisp:nil
                                 ((account-id :target-type account-id :required
                                   common-lisp:t :member-name "AccountId")
                                  (budget-name :target-type budget-name
                                   :required common-lisp:t :member-name
                                   "BudgetName")
                                  (action-id :target-type action-id :required
                                   common-lisp:t :member-name "ActionId")
                                  (execution-type :target-type execution-type
                                   :required common-lisp:t :member-name
                                   "ExecutionType"))
                                 (:shape-name "ExecuteBudgetActionResponse"))

(smithy/sdk/shapes:define-enum execution-type
    common-lisp:nil
  (:approve-budget-action "APPROVE_BUDGET_ACTION")
  (:retry-budget-action "RETRY_BUDGET_ACTION")
  (:reverse-budget-action "REVERSE_BUDGET_ACTION")
  (:reset-budget-action "RESET_BUDGET_ACTION"))

(smithy/sdk/shapes:define-error expired-next-token-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ExpiredNextTokenException")
                                (:error-code 400) (:base-class budgets-error))

(smithy/sdk/shapes:define-structure expression common-lisp:nil
                                    ((or :target-type expressions :member-name
                                      "Or")
                                     (and :target-type expressions :member-name
                                      "And")
                                     (not :target-type expression :member-name
                                      "Not")
                                     (dimensions :target-type
                                      expression-dimension-values :member-name
                                      "Dimensions")
                                     (tags :target-type tag-values :member-name
                                      "Tags")
                                     (cost-categories :target-type
                                      cost-category-values :member-name
                                      "CostCategories"))
                                    (:shape-name "Expression"))

(smithy/sdk/shapes:define-structure expression-dimension-values common-lisp:nil
                                    ((key :target-type dimension :required
                                      common-lisp:t :member-name "Key")
                                     (values :target-type values :required
                                      common-lisp:t :member-name "Values")
                                     (match-options :target-type match-options
                                      :member-name "MatchOptions"))
                                    (:shape-name "ExpressionDimensionValues"))

(smithy/sdk/shapes:define-list expressions :member expression)

(smithy/sdk/shapes:define-type generic-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type generic-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type group smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list groups :member group)

(smithy/sdk/shapes:define-structure historical-options common-lisp:nil
                                    ((budget-adjustment-period :target-type
                                      adjustment-period :required common-lisp:t
                                      :member-name "BudgetAdjustmentPeriod")
                                     (look-back-available-periods :target-type
                                      adjustment-period :member-name
                                      "LookBackAvailablePeriods"))
                                    (:shape-name "HistoricalOptions"))

(smithy/sdk/shapes:define-structure iam-action-definition common-lisp:nil
                                    ((policy-arn :target-type policy-arn
                                      :required common-lisp:t :member-name
                                      "PolicyArn")
                                     (roles :target-type roles :member-name
                                      "Roles")
                                     (groups :target-type groups :member-name
                                      "Groups")
                                     (users :target-type users :member-name
                                      "Users"))
                                    (:shape-name "IamActionDefinition"))

(smithy/sdk/shapes:define-type instance-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list instance-ids :member instance-id)

(smithy/sdk/shapes:define-error internal-error-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InternalErrorException")
                                (:error-code 500) (:base-class budgets-error))

(smithy/sdk/shapes:define-error invalid-next-token-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidNextTokenException")
                                (:error-code 400) (:base-class budgets-error))

(smithy/sdk/shapes:define-error invalid-parameter-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidParameterException")
                                (:error-code 400) (:base-class budgets-error))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((resource-tags :target-type resource-tag-list
                                   :member-name "ResourceTags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-enum match-option
    common-lisp:nil
  (:equals "EQUALS")
  (:absent "ABSENT")
  (:starts-with "STARTS_WITH")
  (:ends-with "ENDS_WITH")
  (:contains "CONTAINS")
  (:greater-than-or-equal "GREATER_THAN_OR_EQUAL")
  (:case-sensitive "CASE_SENSITIVE")
  (:case-insensitive "CASE_INSENSITIVE"))

(smithy/sdk/shapes:define-list match-options :member match-option)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results-budget-notifications
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results-describe-budgets
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum metric
    common-lisp:nil
  (:blended-cost "BlendedCost")
  (:unblended-cost "UnblendedCost")
  (:amortized-cost "AmortizedCost")
  (:net-unblended-cost "NetUnblendedCost")
  (:net-amortized-cost "NetAmortizedCost")
  (:usage-quantity "UsageQuantity")
  (:normalized-usage-amount "NormalizedUsageAmount")
  (:hours "Hours"))

(smithy/sdk/shapes:define-list metrics :member metric)

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "NotFoundException")
                                (:error-code 404) (:base-class budgets-error))

(smithy/sdk/shapes:define-structure notification common-lisp:nil
                                    ((notification-type :target-type
                                      notification-type :required common-lisp:t
                                      :member-name "NotificationType")
                                     (comparison-operator :target-type
                                      comparison-operator :required
                                      common-lisp:t :member-name
                                      "ComparisonOperator")
                                     (threshold :target-type
                                      notification-threshold :required
                                      common-lisp:t :member-name "Threshold")
                                     (threshold-type :target-type
                                      threshold-type :member-name
                                      "ThresholdType")
                                     (notification-state :target-type
                                      notification-state :member-name
                                      "NotificationState"))
                                    (:shape-name "Notification"))

(smithy/sdk/shapes:define-enum notification-state
    common-lisp:nil
  (:ok "OK")
  (:alarm "ALARM"))

(smithy/sdk/shapes:define-type notification-threshold
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-enum notification-type
    common-lisp:nil
  (:actual "ACTUAL")
  (:forecasted "FORECASTED"))

(smithy/sdk/shapes:define-structure notification-with-subscribers
                                    common-lisp:nil
                                    ((notification :target-type notification
                                      :required common-lisp:t :member-name
                                      "Notification")
                                     (subscribers :target-type subscribers
                                      :required common-lisp:t :member-name
                                      "Subscribers"))
                                    (:shape-name "NotificationWithSubscribers"))

(smithy/sdk/shapes:define-list notification-with-subscribers-list :member
                               notification-with-subscribers)

(smithy/sdk/shapes:define-list notifications :member notification)

(smithy/sdk/shapes:define-type nullable-boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type numeric-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map planned-budget-limits :key generic-string :value
                              spend)

(smithy/sdk/shapes:define-type policy-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type policy-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-locked-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceLockedException")
                                (:error-code 423) (:base-class budgets-error))

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

(smithy/sdk/shapes:define-type role smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list roles :member role)

(smithy/sdk/shapes:define-structure scp-action-definition common-lisp:nil
                                    ((policy-id :target-type policy-id
                                      :required common-lisp:t :member-name
                                      "PolicyId")
                                     (target-ids :target-type target-ids
                                      :required common-lisp:t :member-name
                                      "TargetIds"))
                                    (:shape-name "ScpActionDefinition"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402) (:base-class budgets-error))

(smithy/sdk/shapes:define-structure spend common-lisp:nil
                                    ((amount :target-type numeric-value
                                      :required common-lisp:t :member-name
                                      "Amount")
                                     (unit :target-type unit-value :required
                                      common-lisp:t :member-name "Unit"))
                                    (:shape-name "Spend"))

(smithy/sdk/shapes:define-structure ssm-action-definition common-lisp:nil
                                    ((action-sub-type :target-type
                                      action-sub-type :required common-lisp:t
                                      :member-name "ActionSubType")
                                     (region :target-type region :required
                                      common-lisp:t :member-name "Region")
                                     (instance-ids :target-type instance-ids
                                      :required common-lisp:t :member-name
                                      "InstanceIds"))
                                    (:shape-name "SsmActionDefinition"))

(smithy/sdk/shapes:define-structure subscriber common-lisp:nil
                                    ((subscription-type :target-type
                                      subscription-type :required common-lisp:t
                                      :member-name "SubscriptionType")
                                     (address :target-type subscriber-address
                                      :required common-lisp:t :member-name
                                      "Address"))
                                    (:shape-name "Subscriber"))

(smithy/sdk/shapes:define-type subscriber-address
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subscribers :member subscriber)

(smithy/sdk/shapes:define-enum subscription-type
    common-lisp:nil
  (:sns "SNS")
  (:email "EMAIL"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN")
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

(smithy/sdk/shapes:define-type target-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list target-ids :member target-id)

(smithy/sdk/shapes:define-enum threshold-type
    common-lisp:nil
  (:percentage "PERCENTAGE")
  (:absolute-value "ABSOLUTE_VALUE"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 400) (:base-class budgets-error))

(smithy/sdk/shapes:define-structure time-period common-lisp:nil
                                    ((start :target-type generic-timestamp
                                      :member-name "Start")
                                     (end :target-type generic-timestamp
                                      :member-name "End"))
                                    (:shape-name "TimePeriod"))

(smithy/sdk/shapes:define-enum time-unit
    common-lisp:nil
  (:daily "DAILY")
  (:monthly "MONTHLY")
  (:quarterly "QUARTERLY")
  (:annually "ANNUALLY"))

(smithy/sdk/shapes:define-type unit-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (resource-tag-keys :target-type
                                  resource-tag-key-list :required common-lisp:t
                                  :member-name "ResourceTagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-budget-action-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId")
                                 (budget-name :target-type budget-name
                                  :required common-lisp:t :member-name
                                  "BudgetName")
                                 (action-id :target-type action-id :required
                                  common-lisp:t :member-name "ActionId")
                                 (notification-type :target-type
                                  notification-type :member-name
                                  "NotificationType")
                                 (action-threshold :target-type
                                  action-threshold :member-name
                                  "ActionThreshold")
                                 (definition :target-type definition
                                  :member-name "Definition")
                                 (execution-role-arn :target-type role-arn
                                  :member-name "ExecutionRoleArn")
                                 (approval-model :target-type approval-model
                                  :member-name "ApprovalModel")
                                 (subscribers :target-type subscribers
                                  :member-name "Subscribers"))
                                (:shape-name "UpdateBudgetActionRequest"))

(smithy/sdk/shapes:define-output update-budget-action-response common-lisp:nil
                                 ((account-id :target-type account-id :required
                                   common-lisp:t :member-name "AccountId")
                                  (budget-name :target-type budget-name
                                   :required common-lisp:t :member-name
                                   "BudgetName")
                                  (old-action :target-type action :required
                                   common-lisp:t :member-name "OldAction")
                                  (new-action :target-type action :required
                                   common-lisp:t :member-name "NewAction"))
                                 (:shape-name "UpdateBudgetActionResponse"))

(smithy/sdk/shapes:define-input update-budget-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId")
                                 (new-budget :target-type budget :required
                                  common-lisp:t :member-name "NewBudget"))
                                (:shape-name "UpdateBudgetRequest"))

(smithy/sdk/shapes:define-output update-budget-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateBudgetResponse"))

(smithy/sdk/shapes:define-input update-notification-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId")
                                 (budget-name :target-type budget-name
                                  :required common-lisp:t :member-name
                                  "BudgetName")
                                 (old-notification :target-type notification
                                  :required common-lisp:t :member-name
                                  "OldNotification")
                                 (new-notification :target-type notification
                                  :required common-lisp:t :member-name
                                  "NewNotification"))
                                (:shape-name "UpdateNotificationRequest"))

(smithy/sdk/shapes:define-output update-notification-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateNotificationResponse"))

(smithy/sdk/shapes:define-input update-subscriber-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId")
                                 (budget-name :target-type budget-name
                                  :required common-lisp:t :member-name
                                  "BudgetName")
                                 (notification :target-type notification
                                  :required common-lisp:t :member-name
                                  "Notification")
                                 (old-subscriber :target-type subscriber
                                  :required common-lisp:t :member-name
                                  "OldSubscriber")
                                 (new-subscriber :target-type subscriber
                                  :required common-lisp:t :member-name
                                  "NewSubscriber"))
                                (:shape-name "UpdateSubscriberRequest"))

(smithy/sdk/shapes:define-output update-subscriber-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateSubscriberResponse"))

(smithy/sdk/shapes:define-type user smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list users :member user)

(smithy/sdk/shapes:define-type value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list values :member value)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-budget :shape-name "CreateBudget"
                                       :input create-budget-request :output
                                       create-budget-response :errors
                                       (access-denied-exception
                                        creation-limit-exceeded-exception
                                        duplicate-record-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        service-quota-exceeded-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation create-budget-action :shape-name
                                       "CreateBudgetAction" :input
                                       create-budget-action-request :output
                                       create-budget-action-response :errors
                                       (access-denied-exception
                                        creation-limit-exceeded-exception
                                        duplicate-record-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation create-notification :shape-name
                                       "CreateNotification" :input
                                       create-notification-request :output
                                       create-notification-response :errors
                                       (access-denied-exception
                                        creation-limit-exceeded-exception
                                        duplicate-record-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation create-subscriber :shape-name
                                       "CreateSubscriber" :input
                                       create-subscriber-request :output
                                       create-subscriber-response :errors
                                       (access-denied-exception
                                        creation-limit-exceeded-exception
                                        duplicate-record-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation delete-budget :shape-name "DeleteBudget"
                                       :input delete-budget-request :output
                                       delete-budget-response :errors
                                       (access-denied-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation delete-budget-action :shape-name
                                       "DeleteBudgetAction" :input
                                       delete-budget-action-request :output
                                       delete-budget-action-response :errors
                                       (access-denied-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-found-exception
                                        resource-locked-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation delete-notification :shape-name
                                       "DeleteNotification" :input
                                       delete-notification-request :output
                                       delete-notification-response :errors
                                       (access-denied-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation delete-subscriber :shape-name
                                       "DeleteSubscriber" :input
                                       delete-subscriber-request :output
                                       delete-subscriber-response :errors
                                       (access-denied-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation describe-budget :shape-name
                                       "DescribeBudget" :input
                                       describe-budget-request :output
                                       describe-budget-response :errors
                                       (access-denied-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation describe-budget-action :shape-name
                                       "DescribeBudgetAction" :input
                                       describe-budget-action-request :output
                                       describe-budget-action-response :errors
                                       (access-denied-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation describe-budget-action-histories
                                       :shape-name
                                       "DescribeBudgetActionHistories" :input
                                       describe-budget-action-histories-request
                                       :output
                                       describe-budget-action-histories-response
                                       :errors
                                       (access-denied-exception
                                        internal-error-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation describe-budget-actions-for-account
                                       :shape-name
                                       "DescribeBudgetActionsForAccount" :input
                                       describe-budget-actions-for-account-request
                                       :output
                                       describe-budget-actions-for-account-response
                                       :errors
                                       (access-denied-exception
                                        internal-error-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation describe-budget-actions-for-budget
                                       :shape-name
                                       "DescribeBudgetActionsForBudget" :input
                                       describe-budget-actions-for-budget-request
                                       :output
                                       describe-budget-actions-for-budget-response
                                       :errors
                                       (access-denied-exception
                                        internal-error-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation
 describe-budget-notifications-for-account :shape-name
 "DescribeBudgetNotificationsForAccount" :input
 describe-budget-notifications-for-account-request :output
 describe-budget-notifications-for-account-response :errors
 (access-denied-exception expired-next-token-exception internal-error-exception
  invalid-next-token-exception invalid-parameter-exception not-found-exception
  throttling-exception))

(smithy/sdk/operation:define-operation describe-budget-performance-history
                                       :shape-name
                                       "DescribeBudgetPerformanceHistory"
                                       :input
                                       describe-budget-performance-history-request
                                       :output
                                       describe-budget-performance-history-response
                                       :errors
                                       (access-denied-exception
                                        expired-next-token-exception
                                        internal-error-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation describe-budgets :shape-name
                                       "DescribeBudgets" :input
                                       describe-budgets-request :output
                                       describe-budgets-response :errors
                                       (access-denied-exception
                                        expired-next-token-exception
                                        internal-error-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation describe-notifications-for-budget
                                       :shape-name
                                       "DescribeNotificationsForBudget" :input
                                       describe-notifications-for-budget-request
                                       :output
                                       describe-notifications-for-budget-response
                                       :errors
                                       (access-denied-exception
                                        expired-next-token-exception
                                        internal-error-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation describe-subscribers-for-notification
                                       :shape-name
                                       "DescribeSubscribersForNotification"
                                       :input
                                       describe-subscribers-for-notification-request
                                       :output
                                       describe-subscribers-for-notification-response
                                       :errors
                                       (access-denied-exception
                                        expired-next-token-exception
                                        internal-error-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation execute-budget-action :shape-name
                                       "ExecuteBudgetAction" :input
                                       execute-budget-action-request :output
                                       execute-budget-action-response :errors
                                       (access-denied-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-found-exception
                                        resource-locked-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation update-budget :shape-name "UpdateBudget"
                                       :input update-budget-request :output
                                       update-budget-response :errors
                                       (access-denied-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation update-budget-action :shape-name
                                       "UpdateBudgetAction" :input
                                       update-budget-action-request :output
                                       update-budget-action-response :errors
                                       (access-denied-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-found-exception
                                        resource-locked-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation update-notification :shape-name
                                       "UpdateNotification" :input
                                       update-notification-request :output
                                       update-notification-response :errors
                                       (access-denied-exception
                                        duplicate-record-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation update-subscriber :shape-name
                                       "UpdateSubscriber" :input
                                       update-subscriber-request :output
                                       update-subscriber-response :errors
                                       (access-denied-exception
                                        duplicate-record-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-found-exception
                                        throttling-exception))
