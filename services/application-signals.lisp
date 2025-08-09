(uiop/package:define-package #:pira/application-signals (:use)
                             (:export #:account-id #:amazon-resource-name
                              #:application-signals #:attainment
                              #:attainment-goal #:attribute-map
                              #:attribute-maps #:attributes #:aws-account-id
                              #:batch-get-service-level-objective-budget-report
                              #:batch-update-exclusion-windows
                              #:batch-update-exclusion-windows-error
                              #:batch-update-exclusion-windows-errors
                              #:budget-requests-remaining
                              #:budget-seconds-remaining
                              #:burn-rate-configuration
                              #:burn-rate-configurations
                              #:burn-rate-look-back-window-minutes
                              #:calendar-interval #:calendar-interval-duration
                              #:create-service-level-objective
                              #:delete-service-level-objective
                              #:dependency-config #:dimension #:dimension-name
                              #:dimension-value #:dimensions #:duration-unit
                              #:evaluation-type #:exclusion-duration
                              #:exclusion-reason #:exclusion-window
                              #:exclusion-window-error-code
                              #:exclusion-window-error-message
                              #:exclusion-windows #:expression
                              #:fault-description #:get-service
                              #:get-service-level-objective #:goal #:interval
                              #:key-attribute-name #:key-attribute-value
                              #:list-service-dependencies
                              #:list-service-dependencies-max-results
                              #:list-service-dependents
                              #:list-service-dependents-max-results
                              #:list-service-level-objective-exclusion-windows
                              #:list-service-level-objective-exclusion-windows-max-results
                              #:list-service-level-objectives
                              #:list-service-level-objectives-max-results
                              #:list-service-operation-max-results
                              #:list-service-operations #:list-services
                              #:list-services-max-results
                              #:list-tags-for-resource #:log-group-references
                              #:metric #:metric-data-queries
                              #:metric-data-query #:metric-expression
                              #:metric-id #:metric-label #:metric-name
                              #:metric-reference #:metric-references
                              #:metric-source-type #:metric-source-types
                              #:metric-stat #:metric-type
                              #:monitored-request-count-metric-data-queries
                              #:namespace #:next-token #:operation-name
                              #:period #:recurrence-rule
                              #:request-based-service-level-indicator
                              #:request-based-service-level-indicator-config
                              #:request-based-service-level-indicator-metric
                              #:request-based-service-level-indicator-metric-config
                              #:resource-id #:resource-type #:return-data
                              #:rolling-interval #:rolling-interval-duration
                              #:sliperiod-seconds #:service
                              #:service-dependencies #:service-dependency
                              #:service-dependent #:service-dependents
                              #:service-error-message #:service-level-indicator
                              #:service-level-indicator-comparison-operator
                              #:service-level-indicator-config
                              #:service-level-indicator-metric
                              #:service-level-indicator-metric-config
                              #:service-level-indicator-metric-threshold
                              #:service-level-indicator-metric-type
                              #:service-level-indicator-statistic
                              #:service-level-objective
                              #:service-level-objective-arn
                              #:service-level-objective-budget-report
                              #:service-level-objective-budget-report-error
                              #:service-level-objective-budget-report-error-code
                              #:service-level-objective-budget-report-error-message
                              #:service-level-objective-budget-report-errors
                              #:service-level-objective-budget-reports
                              #:service-level-objective-budget-status
                              #:service-level-objective-description
                              #:service-level-objective-id
                              #:service-level-objective-ids
                              #:service-level-objective-name
                              #:service-level-objective-resource
                              #:service-level-objective-summaries
                              #:service-level-objective-summary
                              #:service-operation #:service-operations
                              #:service-summaries #:service-summary
                              #:standard-unit #:start-discovery #:stat #:tag
                              #:tag-key #:tag-key-list #:tag-list
                              #:tag-resource #:tag-value
                              #:total-budget-requests #:total-budget-seconds
                              #:untag-resource #:update-service-level-objective
                              #:validation-exception-message
                              #:warning-threshold #:window))
(common-lisp:in-package #:pira/application-signals)

(smithy/sdk/service:define-service application-signals :shape-name
                                   "ApplicationSignals" :version "2024-04-15"
                                   :title
                                   "Amazon CloudWatch Application Signals"
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Application Signals")
                                      ("arnNamespace" . "application-signals")
                                      ("endpointPrefix"
                                       . "application-signals"))
                                     ("aws.auth#sigv4"
                                      ("name" . "application-signals"))
                                     ("aws.endpoints#dualStackOnlyEndpoints")
                                     ("aws.endpoints#standardRegionalEndpoints")
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type service-error-message
                                  :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attainment smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type attainment-goal smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-map attribute-map :key smithy/sdk/smithy-types:string
                              :value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list attribute-maps :member attribute-map)

(smithy/sdk/shapes:define-map attributes :key key-attribute-name :value
                              key-attribute-value)

(smithy/sdk/shapes:define-type aws-account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input
 batch-get-service-level-objective-budget-report-input common-lisp:nil
 ((timestamp :target-type smithy/sdk/smithy-types:timestamp :required
   common-lisp:t :member-name "Timestamp")
  (slo-ids :target-type service-level-objective-ids :required common-lisp:t
   :member-name "SloIds"))
 (:shape-name "BatchGetServiceLevelObjectiveBudgetReportInput"))

(smithy/sdk/shapes:define-output
 batch-get-service-level-objective-budget-report-output common-lisp:nil
 ((timestamp :target-type smithy/sdk/smithy-types:timestamp :required
   common-lisp:t :member-name "Timestamp")
  (reports :target-type service-level-objective-budget-reports :required
   common-lisp:t :member-name "Reports")
  (errors :target-type service-level-objective-budget-report-errors :required
   common-lisp:t :member-name "Errors"))
 (:shape-name "BatchGetServiceLevelObjectiveBudgetReportOutput"))

(smithy/sdk/shapes:define-structure batch-update-exclusion-windows-error
                                    common-lisp:nil
                                    ((slo-id :target-type
                                      service-level-objective-id :required
                                      common-lisp:t :member-name "SloId")
                                     (error-code :target-type
                                      exclusion-window-error-code :required
                                      common-lisp:t :member-name "ErrorCode")
                                     (error-message :target-type
                                      exclusion-window-error-message :required
                                      common-lisp:t :member-name
                                      "ErrorMessage"))
                                    (:shape-name
                                     "BatchUpdateExclusionWindowsError"))

(smithy/sdk/shapes:define-list batch-update-exclusion-windows-errors :member
                               batch-update-exclusion-windows-error)

(smithy/sdk/shapes:define-input batch-update-exclusion-windows-input
                                common-lisp:nil
                                ((slo-ids :target-type
                                  service-level-objective-ids :required
                                  common-lisp:t :member-name "SloIds")
                                 (add-exclusion-windows :target-type
                                  exclusion-windows :member-name
                                  "AddExclusionWindows")
                                 (remove-exclusion-windows :target-type
                                  exclusion-windows :member-name
                                  "RemoveExclusionWindows"))
                                (:shape-name
                                 "BatchUpdateExclusionWindowsInput"))

(smithy/sdk/shapes:define-output batch-update-exclusion-windows-output
                                 common-lisp:nil
                                 ((slo-ids :target-type
                                   service-level-objective-ids :required
                                   common-lisp:t :member-name "SloIds")
                                  (errors :target-type
                                   batch-update-exclusion-windows-errors
                                   :required common-lisp:t :member-name
                                   "Errors"))
                                 (:shape-name
                                  "BatchUpdateExclusionWindowsOutput"))

(smithy/sdk/shapes:define-type budget-requests-remaining
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type budget-seconds-remaining
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure burn-rate-configuration common-lisp:nil
                                    ((look-back-window-minutes :target-type
                                      burn-rate-look-back-window-minutes
                                      :required common-lisp:t :member-name
                                      "LookBackWindowMinutes"))
                                    (:shape-name "BurnRateConfiguration"))

(smithy/sdk/shapes:define-list burn-rate-configurations :member
                               burn-rate-configuration)

(smithy/sdk/shapes:define-type burn-rate-look-back-window-minutes
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure calendar-interval common-lisp:nil
                                    ((start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "StartTime")
                                     (duration-unit :target-type duration-unit
                                      :required common-lisp:t :member-name
                                      "DurationUnit")
                                     (duration :target-type
                                      calendar-interval-duration :required
                                      common-lisp:t :member-name "Duration"))
                                    (:shape-name "CalendarInterval"))

(smithy/sdk/shapes:define-type calendar-interval-duration
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-service-level-objective-input
                                common-lisp:nil
                                ((name :target-type
                                  service-level-objective-name :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type
                                  service-level-objective-description
                                  :member-name "Description")
                                 (sli-config :target-type
                                  service-level-indicator-config :member-name
                                  "SliConfig")
                                 (request-based-sli-config :target-type
                                  request-based-service-level-indicator-config
                                  :member-name "RequestBasedSliConfig")
                                 (goal :target-type goal :member-name "Goal")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (burn-rate-configurations :target-type
                                  burn-rate-configurations :member-name
                                  "BurnRateConfigurations"))
                                (:shape-name
                                 "CreateServiceLevelObjectiveInput"))

(smithy/sdk/shapes:define-output create-service-level-objective-output
                                 common-lisp:nil
                                 ((slo :target-type service-level-objective
                                   :required common-lisp:t :member-name "Slo"))
                                 (:shape-name
                                  "CreateServiceLevelObjectiveOutput"))

(smithy/sdk/shapes:define-input delete-service-level-objective-input
                                common-lisp:nil
                                ((id :target-type service-level-objective-id
                                  :required common-lisp:t :member-name "Id"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteServiceLevelObjectiveInput"))

(smithy/sdk/shapes:define-output delete-service-level-objective-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteServiceLevelObjectiveOutput"))

(smithy/sdk/shapes:define-structure dependency-config common-lisp:nil
                                    ((dependency-key-attributes :target-type
                                      attributes :required common-lisp:t
                                      :member-name "DependencyKeyAttributes")
                                     (dependency-operation-name :target-type
                                      operation-name :required common-lisp:t
                                      :member-name "DependencyOperationName"))
                                    (:shape-name "DependencyConfig"))

(smithy/sdk/shapes:define-structure dimension common-lisp:nil
                                    ((name :target-type dimension-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (value :target-type dimension-value
                                      :required common-lisp:t :member-name
                                      "Value"))
                                    (:shape-name "Dimension"))

(smithy/sdk/shapes:define-type dimension-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dimension-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list dimensions :member dimension)

(smithy/sdk/shapes:define-enum duration-unit
    common-lisp:nil
  (:minute "MINUTE")
  (:hour "HOUR")
  (:day "DAY")
  (:month "MONTH"))

(smithy/sdk/shapes:define-enum evaluation-type
    common-lisp:nil
  (:period-based "PeriodBased")
  (:request-based "RequestBased"))

(smithy/sdk/shapes:define-type exclusion-duration
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type exclusion-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure exclusion-window common-lisp:nil
                                    ((window :target-type window :required
                                      common-lisp:t :member-name "Window")
                                     (start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "StartTime")
                                     (recurrence-rule :target-type
                                      recurrence-rule :member-name
                                      "RecurrenceRule")
                                     (reason :target-type exclusion-reason
                                      :member-name "Reason"))
                                    (:shape-name "ExclusionWindow"))

(smithy/sdk/shapes:define-type exclusion-window-error-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type exclusion-window-error-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list exclusion-windows :member exclusion-window)

(smithy/sdk/shapes:define-type expression smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type fault-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-service-input common-lisp:nil
                                ((start-time :target-type
                                  smithy/sdk/smithy-types:timestamp :required
                                  common-lisp:t :member-name "StartTime"
                                  :http-query "StartTime")
                                 (end-time :target-type
                                  smithy/sdk/smithy-types:timestamp :required
                                  common-lisp:t :member-name "EndTime"
                                  :http-query "EndTime")
                                 (key-attributes :target-type attributes
                                  :required common-lisp:t :member-name
                                  "KeyAttributes"))
                                (:shape-name "GetServiceInput"))

(smithy/sdk/shapes:define-input get-service-level-objective-input
                                common-lisp:nil
                                ((id :target-type service-level-objective-id
                                  :required common-lisp:t :member-name "Id"
                                  :http-label common-lisp:t))
                                (:shape-name "GetServiceLevelObjectiveInput"))

(smithy/sdk/shapes:define-output get-service-level-objective-output
                                 common-lisp:nil
                                 ((slo :target-type service-level-objective
                                   :required common-lisp:t :member-name "Slo"))
                                 (:shape-name "GetServiceLevelObjectiveOutput"))

(smithy/sdk/shapes:define-output get-service-output common-lisp:nil
                                 ((service :target-type service :required
                                   common-lisp:t :member-name "Service")
                                  (start-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "StartTime")
                                  (end-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "EndTime")
                                  (log-group-references :target-type
                                   log-group-references :member-name
                                   "LogGroupReferences"))
                                 (:shape-name "GetServiceOutput"))

(smithy/sdk/shapes:define-structure goal common-lisp:nil
                                    ((interval :target-type interval
                                      :member-name "Interval")
                                     (attainment-goal :target-type
                                      attainment-goal :member-name
                                      "AttainmentGoal")
                                     (warning-threshold :target-type
                                      warning-threshold :member-name
                                      "WarningThreshold"))
                                    (:shape-name "Goal"))

(smithy/sdk/shapes:define-union interval common-lisp:nil
                                ((rolling-interval :target-type
                                  rolling-interval :member-name
                                  "RollingInterval")
                                 (calendar-interval :target-type
                                  calendar-interval :member-name
                                  "CalendarInterval"))
                                (:shape-name "Interval"))

(smithy/sdk/shapes:define-type key-attribute-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type key-attribute-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-service-dependencies-input common-lisp:nil
                                ((start-time :target-type
                                  smithy/sdk/smithy-types:timestamp :required
                                  common-lisp:t :member-name "StartTime"
                                  :http-query "StartTime")
                                 (end-time :target-type
                                  smithy/sdk/smithy-types:timestamp :required
                                  common-lisp:t :member-name "EndTime"
                                  :http-query "EndTime")
                                 (key-attributes :target-type attributes
                                  :required common-lisp:t :member-name
                                  "KeyAttributes")
                                 (max-results :target-type
                                  list-service-dependencies-max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken"))
                                (:shape-name "ListServiceDependenciesInput"))

(smithy/sdk/shapes:define-type list-service-dependencies-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-service-dependencies-output
                                 common-lisp:nil
                                 ((start-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "StartTime")
                                  (end-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "EndTime")
                                  (service-dependencies :target-type
                                   service-dependencies :required common-lisp:t
                                   :member-name "ServiceDependencies")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListServiceDependenciesOutput"))

(smithy/sdk/shapes:define-input list-service-dependents-input common-lisp:nil
                                ((start-time :target-type
                                  smithy/sdk/smithy-types:timestamp :required
                                  common-lisp:t :member-name "StartTime"
                                  :http-query "StartTime")
                                 (end-time :target-type
                                  smithy/sdk/smithy-types:timestamp :required
                                  common-lisp:t :member-name "EndTime"
                                  :http-query "EndTime")
                                 (key-attributes :target-type attributes
                                  :required common-lisp:t :member-name
                                  "KeyAttributes")
                                 (max-results :target-type
                                  list-service-dependents-max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken"))
                                (:shape-name "ListServiceDependentsInput"))

(smithy/sdk/shapes:define-type list-service-dependents-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-service-dependents-output common-lisp:nil
                                 ((start-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "StartTime")
                                  (end-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "EndTime")
                                  (service-dependents :target-type
                                   service-dependents :required common-lisp:t
                                   :member-name "ServiceDependents")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListServiceDependentsOutput"))

(smithy/sdk/shapes:define-input
 list-service-level-objective-exclusion-windows-input common-lisp:nil
 ((id :target-type service-level-objective-id :required common-lisp:t
   :member-name "Id" :http-label common-lisp:t)
  (max-results :target-type
   list-service-level-objective-exclusion-windows-max-results :member-name
   "MaxResults" :http-query "MaxResults")
  (next-token :target-type next-token :member-name "NextToken" :http-query
   "NextToken"))
 (:shape-name "ListServiceLevelObjectiveExclusionWindowsInput"))

(smithy/sdk/shapes:define-type
 list-service-level-objective-exclusion-windows-max-results
 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output
 list-service-level-objective-exclusion-windows-output common-lisp:nil
 ((exclusion-windows :target-type exclusion-windows :required common-lisp:t
   :member-name "ExclusionWindows")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "ListServiceLevelObjectiveExclusionWindowsOutput"))

(smithy/sdk/shapes:define-input list-service-level-objectives-input
                                common-lisp:nil
                                ((key-attributes :target-type attributes
                                  :member-name "KeyAttributes")
                                 (operation-name :target-type operation-name
                                  :member-name "OperationName" :http-query
                                  "OperationName")
                                 (dependency-config :target-type
                                  dependency-config :member-name
                                  "DependencyConfig")
                                 (max-results :target-type
                                  list-service-level-objectives-max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (metric-source-types :target-type
                                  metric-source-types :member-name
                                  "MetricSourceTypes")
                                 (include-linked-accounts :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "IncludeLinkedAccounts" :http-query
                                  "IncludeLinkedAccounts")
                                 (slo-owner-aws-account-id :target-type
                                  aws-account-id :member-name
                                  "SloOwnerAwsAccountId" :http-query
                                  "SloOwnerAwsAccountId"))
                                (:shape-name "ListServiceLevelObjectivesInput"))

(smithy/sdk/shapes:define-type list-service-level-objectives-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-service-level-objectives-output
                                 common-lisp:nil
                                 ((slo-summaries :target-type
                                   service-level-objective-summaries
                                   :member-name "SloSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListServiceLevelObjectivesOutput"))

(smithy/sdk/shapes:define-type list-service-operation-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-service-operations-input common-lisp:nil
                                ((start-time :target-type
                                  smithy/sdk/smithy-types:timestamp :required
                                  common-lisp:t :member-name "StartTime"
                                  :http-query "StartTime")
                                 (end-time :target-type
                                  smithy/sdk/smithy-types:timestamp :required
                                  common-lisp:t :member-name "EndTime"
                                  :http-query "EndTime")
                                 (key-attributes :target-type attributes
                                  :required common-lisp:t :member-name
                                  "KeyAttributes")
                                 (max-results :target-type
                                  list-service-operation-max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken"))
                                (:shape-name "ListServiceOperationsInput"))

(smithy/sdk/shapes:define-output list-service-operations-output common-lisp:nil
                                 ((start-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "StartTime")
                                  (end-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "EndTime")
                                  (service-operations :target-type
                                   service-operations :required common-lisp:t
                                   :member-name "ServiceOperations")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListServiceOperationsOutput"))

(smithy/sdk/shapes:define-input list-services-input common-lisp:nil
                                ((start-time :target-type
                                  smithy/sdk/smithy-types:timestamp :required
                                  common-lisp:t :member-name "StartTime"
                                  :http-query "StartTime")
                                 (end-time :target-type
                                  smithy/sdk/smithy-types:timestamp :required
                                  common-lisp:t :member-name "EndTime"
                                  :http-query "EndTime")
                                 (max-results :target-type
                                  list-services-max-results :member-name
                                  "MaxResults" :http-query "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (include-linked-accounts :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "IncludeLinkedAccounts" :http-query
                                  "IncludeLinkedAccounts")
                                 (aws-account-id :target-type aws-account-id
                                  :member-name "AwsAccountId" :http-query
                                  "AwsAccountId"))
                                (:shape-name "ListServicesInput"))

(smithy/sdk/shapes:define-type list-services-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-services-output common-lisp:nil
                                 ((start-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "StartTime")
                                  (end-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "EndTime")
                                  (service-summaries :target-type
                                   service-summaries :required common-lisp:t
                                   :member-name "ServiceSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListServicesOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceArn" :http-query
                                  "ResourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-list log-group-references :member attributes)

(smithy/sdk/shapes:define-structure metric common-lisp:nil
                                    ((namespace :target-type namespace
                                      :member-name "Namespace")
                                     (metric-name :target-type metric-name
                                      :member-name "MetricName")
                                     (dimensions :target-type dimensions
                                      :member-name "Dimensions"))
                                    (:shape-name "Metric"))

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

(smithy/sdk/shapes:define-type metric-expression smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type metric-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type metric-label smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type metric-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure metric-reference common-lisp:nil
                                    ((namespace :target-type namespace
                                      :required common-lisp:t :member-name
                                      "Namespace")
                                     (metric-type :target-type metric-type
                                      :required common-lisp:t :member-name
                                      "MetricType")
                                     (dimensions :target-type dimensions
                                      :member-name "Dimensions")
                                     (metric-name :target-type metric-name
                                      :required common-lisp:t :member-name
                                      "MetricName")
                                     (account-id :target-type aws-account-id
                                      :member-name "AccountId"))
                                    (:shape-name "MetricReference"))

(smithy/sdk/shapes:define-list metric-references :member metric-reference)

(smithy/sdk/shapes:define-enum metric-source-type
    common-lisp:nil
  (:service-operation "ServiceOperation")
  (:cloudwatch-metric "CloudWatchMetric")
  (:service-dependency "ServiceDependency"))

(smithy/sdk/shapes:define-list metric-source-types :member metric-source-type)

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

(smithy/sdk/shapes:define-type metric-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union monitored-request-count-metric-data-queries
                                common-lisp:nil
                                ((good-count-metric :target-type
                                  metric-data-queries :member-name
                                  "GoodCountMetric")
                                 (bad-count-metric :target-type
                                  metric-data-queries :member-name
                                  "BadCountMetric"))
                                (:shape-name
                                 "MonitoredRequestCountMetricDataQueries"))

(smithy/sdk/shapes:define-type namespace smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type operation-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type period smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure recurrence-rule common-lisp:nil
                                    ((expression :target-type expression
                                      :required common-lisp:t :member-name
                                      "Expression"))
                                    (:shape-name "RecurrenceRule"))

(smithy/sdk/shapes:define-structure request-based-service-level-indicator
                                    common-lisp:nil
                                    ((request-based-sli-metric :target-type
                                      request-based-service-level-indicator-metric
                                      :required common-lisp:t :member-name
                                      "RequestBasedSliMetric")
                                     (metric-threshold :target-type
                                      service-level-indicator-metric-threshold
                                      :member-name "MetricThreshold")
                                     (comparison-operator :target-type
                                      service-level-indicator-comparison-operator
                                      :member-name "ComparisonOperator"))
                                    (:shape-name
                                     "RequestBasedServiceLevelIndicator"))

(smithy/sdk/shapes:define-structure
 request-based-service-level-indicator-config common-lisp:nil
 ((request-based-sli-metric-config :target-type
   request-based-service-level-indicator-metric-config :required common-lisp:t
   :member-name "RequestBasedSliMetricConfig")
  (metric-threshold :target-type service-level-indicator-metric-threshold
   :member-name "MetricThreshold")
  (comparison-operator :target-type service-level-indicator-comparison-operator
   :member-name "ComparisonOperator"))
 (:shape-name "RequestBasedServiceLevelIndicatorConfig"))

(smithy/sdk/shapes:define-structure
 request-based-service-level-indicator-metric common-lisp:nil
 ((key-attributes :target-type attributes :member-name "KeyAttributes")
  (operation-name :target-type operation-name :member-name "OperationName")
  (metric-type :target-type service-level-indicator-metric-type :member-name
   "MetricType")
  (total-request-count-metric :target-type metric-data-queries :required
   common-lisp:t :member-name "TotalRequestCountMetric")
  (monitored-request-count-metric :target-type
   monitored-request-count-metric-data-queries :required common-lisp:t
   :member-name "MonitoredRequestCountMetric")
  (dependency-config :target-type dependency-config :member-name
   "DependencyConfig"))
 (:shape-name "RequestBasedServiceLevelIndicatorMetric"))

(smithy/sdk/shapes:define-structure
 request-based-service-level-indicator-metric-config common-lisp:nil
 ((key-attributes :target-type attributes :member-name "KeyAttributes")
  (operation-name :target-type operation-name :member-name "OperationName")
  (metric-type :target-type service-level-indicator-metric-type :member-name
   "MetricType")
  (total-request-count-metric :target-type metric-data-queries :member-name
   "TotalRequestCountMetric")
  (monitored-request-count-metric :target-type
   monitored-request-count-metric-data-queries :member-name
   "MonitoredRequestCountMetric")
  (dependency-config :target-type dependency-config :member-name
   "DependencyConfig"))
 (:shape-name "RequestBasedServiceLevelIndicatorMetricConfig"))

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "ResourceType")
                                 (resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (message :target-type fault-description
                                  :required common-lisp:t :member-name
                                  "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type resource-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type return-data smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure rolling-interval common-lisp:nil
                                    ((duration-unit :target-type duration-unit
                                      :required common-lisp:t :member-name
                                      "DurationUnit")
                                     (duration :target-type
                                      rolling-interval-duration :required
                                      common-lisp:t :member-name "Duration"))
                                    (:shape-name "RollingInterval"))

(smithy/sdk/shapes:define-type rolling-interval-duration
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type sliperiod-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure service common-lisp:nil
                                    ((key-attributes :target-type attributes
                                      :required common-lisp:t :member-name
                                      "KeyAttributes")
                                     (attribute-maps :target-type
                                      attribute-maps :member-name
                                      "AttributeMaps")
                                     (metric-references :target-type
                                      metric-references :required common-lisp:t
                                      :member-name "MetricReferences")
                                     (log-group-references :target-type
                                      log-group-references :member-name
                                      "LogGroupReferences"))
                                    (:shape-name "Service"))

(smithy/sdk/shapes:define-list service-dependencies :member service-dependency)

(smithy/sdk/shapes:define-structure service-dependency common-lisp:nil
                                    ((operation-name :target-type
                                      operation-name :required common-lisp:t
                                      :member-name "OperationName")
                                     (dependency-key-attributes :target-type
                                      attributes :required common-lisp:t
                                      :member-name "DependencyKeyAttributes")
                                     (dependency-operation-name :target-type
                                      operation-name :required common-lisp:t
                                      :member-name "DependencyOperationName")
                                     (metric-references :target-type
                                      metric-references :required common-lisp:t
                                      :member-name "MetricReferences"))
                                    (:shape-name "ServiceDependency"))

(smithy/sdk/shapes:define-structure service-dependent common-lisp:nil
                                    ((operation-name :target-type
                                      operation-name :member-name
                                      "OperationName")
                                     (dependent-key-attributes :target-type
                                      attributes :required common-lisp:t
                                      :member-name "DependentKeyAttributes")
                                     (dependent-operation-name :target-type
                                      operation-name :member-name
                                      "DependentOperationName")
                                     (metric-references :target-type
                                      metric-references :required common-lisp:t
                                      :member-name "MetricReferences"))
                                    (:shape-name "ServiceDependent"))

(smithy/sdk/shapes:define-list service-dependents :member service-dependent)

(smithy/sdk/shapes:define-type service-error-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure service-level-indicator common-lisp:nil
                                    ((sli-metric :target-type
                                      service-level-indicator-metric :required
                                      common-lisp:t :member-name "SliMetric")
                                     (metric-threshold :target-type
                                      service-level-indicator-metric-threshold
                                      :required common-lisp:t :member-name
                                      "MetricThreshold")
                                     (comparison-operator :target-type
                                      service-level-indicator-comparison-operator
                                      :required common-lisp:t :member-name
                                      "ComparisonOperator"))
                                    (:shape-name "ServiceLevelIndicator"))

(smithy/sdk/shapes:define-enum service-level-indicator-comparison-operator
    common-lisp:nil
  (:greater-than-or-equal-to "GreaterThanOrEqualTo")
  (:greater-than "GreaterThan")
  (:less-than "LessThan")
  (:less-than-or-equal-to "LessThanOrEqualTo"))

(smithy/sdk/shapes:define-structure service-level-indicator-config
                                    common-lisp:nil
                                    ((sli-metric-config :target-type
                                      service-level-indicator-metric-config
                                      :required common-lisp:t :member-name
                                      "SliMetricConfig")
                                     (metric-threshold :target-type
                                      service-level-indicator-metric-threshold
                                      :required common-lisp:t :member-name
                                      "MetricThreshold")
                                     (comparison-operator :target-type
                                      service-level-indicator-comparison-operator
                                      :required common-lisp:t :member-name
                                      "ComparisonOperator"))
                                    (:shape-name "ServiceLevelIndicatorConfig"))

(smithy/sdk/shapes:define-structure service-level-indicator-metric
                                    common-lisp:nil
                                    ((key-attributes :target-type attributes
                                      :member-name "KeyAttributes")
                                     (operation-name :target-type
                                      operation-name :member-name
                                      "OperationName")
                                     (metric-type :target-type
                                      service-level-indicator-metric-type
                                      :member-name "MetricType")
                                     (metric-data-queries :target-type
                                      metric-data-queries :required
                                      common-lisp:t :member-name
                                      "MetricDataQueries")
                                     (dependency-config :target-type
                                      dependency-config :member-name
                                      "DependencyConfig"))
                                    (:shape-name "ServiceLevelIndicatorMetric"))

(smithy/sdk/shapes:define-structure service-level-indicator-metric-config
                                    common-lisp:nil
                                    ((key-attributes :target-type attributes
                                      :member-name "KeyAttributes")
                                     (operation-name :target-type
                                      operation-name :member-name
                                      "OperationName")
                                     (metric-type :target-type
                                      service-level-indicator-metric-type
                                      :member-name "MetricType")
                                     (statistic :target-type
                                      service-level-indicator-statistic
                                      :member-name "Statistic")
                                     (period-seconds :target-type
                                      sliperiod-seconds :member-name
                                      "PeriodSeconds")
                                     (metric-data-queries :target-type
                                      metric-data-queries :member-name
                                      "MetricDataQueries")
                                     (dependency-config :target-type
                                      dependency-config :member-name
                                      "DependencyConfig"))
                                    (:shape-name
                                     "ServiceLevelIndicatorMetricConfig"))

(smithy/sdk/shapes:define-type service-level-indicator-metric-threshold
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-enum service-level-indicator-metric-type
    common-lisp:nil
  (:latency "LATENCY")
  (:availability "AVAILABILITY"))

(smithy/sdk/shapes:define-type service-level-indicator-statistic
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure service-level-objective common-lisp:nil
                                    ((arn :target-type
                                      service-level-objective-arn :required
                                      common-lisp:t :member-name "Arn")
                                     (name :target-type
                                      service-level-objective-name :required
                                      common-lisp:t :member-name "Name")
                                     (description :target-type
                                      service-level-objective-description
                                      :member-name "Description")
                                     (created-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "CreatedTime")
                                     (last-updated-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "LastUpdatedTime")
                                     (sli :target-type service-level-indicator
                                      :member-name "Sli")
                                     (request-based-sli :target-type
                                      request-based-service-level-indicator
                                      :member-name "RequestBasedSli")
                                     (evaluation-type :target-type
                                      evaluation-type :member-name
                                      "EvaluationType")
                                     (goal :target-type goal :required
                                      common-lisp:t :member-name "Goal")
                                     (burn-rate-configurations :target-type
                                      burn-rate-configurations :member-name
                                      "BurnRateConfigurations")
                                     (metric-source-type :target-type
                                      metric-source-type :member-name
                                      "MetricSourceType"))
                                    (:shape-name "ServiceLevelObjective"))

(smithy/sdk/shapes:define-type service-level-objective-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure service-level-objective-budget-report
                                    common-lisp:nil
                                    ((arn :target-type
                                      service-level-objective-arn :required
                                      common-lisp:t :member-name "Arn")
                                     (name :target-type
                                      service-level-objective-name :required
                                      common-lisp:t :member-name "Name")
                                     (evaluation-type :target-type
                                      evaluation-type :member-name
                                      "EvaluationType")
                                     (budget-status :target-type
                                      service-level-objective-budget-status
                                      :required common-lisp:t :member-name
                                      "BudgetStatus")
                                     (attainment :target-type attainment
                                      :member-name "Attainment")
                                     (total-budget-seconds :target-type
                                      total-budget-seconds :member-name
                                      "TotalBudgetSeconds")
                                     (budget-seconds-remaining :target-type
                                      budget-seconds-remaining :member-name
                                      "BudgetSecondsRemaining")
                                     (total-budget-requests :target-type
                                      total-budget-requests :member-name
                                      "TotalBudgetRequests")
                                     (budget-requests-remaining :target-type
                                      budget-requests-remaining :member-name
                                      "BudgetRequestsRemaining")
                                     (sli :target-type service-level-indicator
                                      :member-name "Sli")
                                     (request-based-sli :target-type
                                      request-based-service-level-indicator
                                      :member-name "RequestBasedSli")
                                     (goal :target-type goal :member-name
                                      "Goal"))
                                    (:shape-name
                                     "ServiceLevelObjectiveBudgetReport"))

(smithy/sdk/shapes:define-structure service-level-objective-budget-report-error
                                    common-lisp:nil
                                    ((name :target-type
                                      service-level-objective-name :required
                                      common-lisp:t :member-name "Name")
                                     (arn :target-type
                                      service-level-objective-arn :required
                                      common-lisp:t :member-name "Arn")
                                     (error-code :target-type
                                      service-level-objective-budget-report-error-code
                                      :required common-lisp:t :member-name
                                      "ErrorCode")
                                     (error-message :target-type
                                      service-level-objective-budget-report-error-message
                                      :required common-lisp:t :member-name
                                      "ErrorMessage"))
                                    (:shape-name
                                     "ServiceLevelObjectiveBudgetReportError"))

(smithy/sdk/shapes:define-type service-level-objective-budget-report-error-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 service-level-objective-budget-report-error-message
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list service-level-objective-budget-report-errors
                               :member
                               service-level-objective-budget-report-error)

(smithy/sdk/shapes:define-list service-level-objective-budget-reports :member
                               service-level-objective-budget-report)

(smithy/sdk/shapes:define-enum service-level-objective-budget-status
    common-lisp:nil
  (:ok "OK")
  (:warning "WARNING")
  (:breached "BREACHED")
  (:insufficient-data "INSUFFICIENT_DATA"))

(smithy/sdk/shapes:define-type service-level-objective-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-level-objective-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list service-level-objective-ids :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-level-objective-name
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-list service-level-objective-summaries :member
                               service-level-objective-summary)

(smithy/sdk/shapes:define-structure service-level-objective-summary
                                    common-lisp:nil
                                    ((arn :target-type
                                      service-level-objective-arn :required
                                      common-lisp:t :member-name "Arn")
                                     (name :target-type
                                      service-level-objective-name :required
                                      common-lisp:t :member-name "Name")
                                     (key-attributes :target-type attributes
                                      :member-name "KeyAttributes")
                                     (operation-name :target-type
                                      operation-name :member-name
                                      "OperationName")
                                     (dependency-config :target-type
                                      dependency-config :member-name
                                      "DependencyConfig")
                                     (created-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreatedTime")
                                     (evaluation-type :target-type
                                      evaluation-type :member-name
                                      "EvaluationType")
                                     (metric-source-type :target-type
                                      metric-source-type :member-name
                                      "MetricSourceType"))
                                    (:shape-name
                                     "ServiceLevelObjectiveSummary"))

(smithy/sdk/shapes:define-structure service-operation common-lisp:nil
                                    ((name :target-type operation-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (metric-references :target-type
                                      metric-references :required common-lisp:t
                                      :member-name "MetricReferences"))
                                    (:shape-name "ServiceOperation"))

(smithy/sdk/shapes:define-list service-operations :member service-operation)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-list service-summaries :member service-summary)

(smithy/sdk/shapes:define-structure service-summary common-lisp:nil
                                    ((key-attributes :target-type attributes
                                      :required common-lisp:t :member-name
                                      "KeyAttributes")
                                     (attribute-maps :target-type
                                      attribute-maps :member-name
                                      "AttributeMaps")
                                     (metric-references :target-type
                                      metric-references :required common-lisp:t
                                      :member-name "MetricReferences"))
                                    (:shape-name "ServiceSummary"))

(smithy/sdk/shapes:define-enum standard-unit
    common-lisp:nil
  (:microseconds "Microseconds")
  (:milliseconds "Milliseconds")
  (:seconds "Seconds")
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

(smithy/sdk/shapes:define-input start-discovery-input common-lisp:nil
                                common-lisp:nil
                                (:shape-name "StartDiscoveryInput"))

(smithy/sdk/shapes:define-output start-discovery-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StartDiscoveryOutput"))

(smithy/sdk/shapes:define-type stat smithy/sdk/smithy-types:string)

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
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type total-budget-requests
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type total-budget-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-service-level-objective-input
                                common-lisp:nil
                                ((id :target-type service-level-objective-id
                                  :required common-lisp:t :member-name "Id"
                                  :http-label common-lisp:t)
                                 (description :target-type
                                  service-level-objective-description
                                  :member-name "Description")
                                 (sli-config :target-type
                                  service-level-indicator-config :member-name
                                  "SliConfig")
                                 (request-based-sli-config :target-type
                                  request-based-service-level-indicator-config
                                  :member-name "RequestBasedSliConfig")
                                 (goal :target-type goal :member-name "Goal")
                                 (burn-rate-configurations :target-type
                                  burn-rate-configurations :member-name
                                  "BurnRateConfigurations"))
                                (:shape-name
                                 "UpdateServiceLevelObjectiveInput"))

(smithy/sdk/shapes:define-output update-service-level-objective-output
                                 common-lisp:nil
                                 ((slo :target-type service-level-objective
                                   :required common-lisp:t :member-name "Slo"))
                                 (:shape-name
                                  "UpdateServiceLevelObjectiveOutput"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  validation-exception-message :member-name
                                  "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type validation-exception-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type warning-threshold smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure window common-lisp:nil
                                    ((duration-unit :target-type duration-unit
                                      :required common-lisp:t :member-name
                                      "DurationUnit")
                                     (duration :target-type exclusion-duration
                                      :required common-lisp:t :member-name
                                      "Duration"))
                                    (:shape-name "Window"))

(smithy/sdk/operation:define-operation
 batch-get-service-level-objective-budget-report :shape-name
 "BatchGetServiceLevelObjectiveBudgetReport" :input
 batch-get-service-level-objective-budget-report-input :output
 batch-get-service-level-objective-budget-report-output :errors
 (throttling-exception validation-exception) :method "POST" :uri
 "/budget-report" :code 200)

(smithy/sdk/operation:define-operation batch-update-exclusion-windows
                                       :shape-name
                                       "BatchUpdateExclusionWindows" :input
                                       batch-update-exclusion-windows-input
                                       :output
                                       batch-update-exclusion-windows-output
                                       :errors
                                       (resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/exclusion-windows" :code 200)

(smithy/sdk/operation:define-operation create-service-level-objective
                                       :shape-name
                                       "CreateServiceLevelObjective" :input
                                       create-service-level-objective-input
                                       :output
                                       create-service-level-objective-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/slo" :code 200)

(smithy/sdk/operation:define-operation delete-service-level-objective
                                       :shape-name
                                       "DeleteServiceLevelObjective" :input
                                       delete-service-level-objective-input
                                       :output
                                       delete-service-level-objective-output
                                       :errors
                                       (resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri "/slo/{Id}" :code
                                       200)

(smithy/sdk/operation:define-operation get-service :shape-name "GetService"
                                       :input get-service-input :output
                                       get-service-output :errors
                                       (throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/service" :code 200)

(smithy/sdk/operation:define-operation get-service-level-objective :shape-name
                                       "GetServiceLevelObjective" :input
                                       get-service-level-objective-input
                                       :output
                                       get-service-level-objective-output
                                       :errors
                                       (resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/slo/{Id}" :code 200)

(smithy/sdk/operation:define-operation list-service-dependencies :shape-name
                                       "ListServiceDependencies" :input
                                       list-service-dependencies-input :output
                                       list-service-dependencies-output :errors
                                       (throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/service-dependencies" :code 200)

(smithy/sdk/operation:define-operation list-service-dependents :shape-name
                                       "ListServiceDependents" :input
                                       list-service-dependents-input :output
                                       list-service-dependents-output :errors
                                       (throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/service-dependents" :code 200)

(smithy/sdk/operation:define-operation
 list-service-level-objective-exclusion-windows :shape-name
 "ListServiceLevelObjectiveExclusionWindows" :input
 list-service-level-objective-exclusion-windows-input :output
 list-service-level-objective-exclusion-windows-output :errors
 (resource-not-found-exception throttling-exception validation-exception)
 :method "GET" :uri "/slo/{Id}/exclusion-windows" :code 200)

(smithy/sdk/operation:define-operation list-service-level-objectives
                                       :shape-name "ListServiceLevelObjectives"
                                       :input
                                       list-service-level-objectives-input
                                       :output
                                       list-service-level-objectives-output
                                       :errors
                                       (throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/slos" :code 200)

(smithy/sdk/operation:define-operation list-service-operations :shape-name
                                       "ListServiceOperations" :input
                                       list-service-operations-input :output
                                       list-service-operations-output :errors
                                       (throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/service-operations" :code 200)

(smithy/sdk/operation:define-operation list-services :shape-name "ListServices"
                                       :input list-services-input :output
                                       list-services-output :errors
                                       (throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/services" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri "/tags" :code 200)

(smithy/sdk/operation:define-operation start-discovery :shape-name
                                       "StartDiscovery" :input
                                       start-discovery-input :output
                                       start-discovery-output :errors
                                       (access-denied-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/start-discovery"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception)
                                       :method "POST" :uri "/tag-resource"
                                       :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri "/untag-resource"
                                       :code 200)

(smithy/sdk/operation:define-operation update-service-level-objective
                                       :shape-name
                                       "UpdateServiceLevelObjective" :input
                                       update-service-level-objective-input
                                       :output
                                       update-service-level-objective-output
                                       :errors
                                       (resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri "/slo/{Id}" :code
                                       200)
