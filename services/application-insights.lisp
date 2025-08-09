(uiop/package:define-package #:pira/application-insights (:use)
                             (:export #:access-denied-exception #:account-id
                              #:add-workload #:add-workload-request
                              #:add-workload-response #:affected-resource
                              #:amazon-resource-name #:application-component
                              #:application-component-list #:application-info
                              #:application-info-list
                              #:attach-missing-permission #:auto-config-enabled
                              #:auto-create #:bad-request-exception
                              #:cwemonitor-enabled
                              #:cloud-watch-event-detail-type
                              #:cloud-watch-event-id #:cloud-watch-event-source
                              #:code-deploy-application
                              #:code-deploy-deployment-group
                              #:code-deploy-deployment-id
                              #:code-deploy-instance-group-id
                              #:code-deploy-state #:component-configuration
                              #:component-name #:configuration-event
                              #:configuration-event-detail
                              #:configuration-event-list
                              #:configuration-event-monitored-resource-arn
                              #:configuration-event-resource-name
                              #:configuration-event-resource-type
                              #:configuration-event-status
                              #:configuration-event-time #:create-application
                              #:create-application-request
                              #:create-application-response #:create-component
                              #:create-component-request
                              #:create-component-response #:create-log-pattern
                              #:create-log-pattern-request
                              #:create-log-pattern-response
                              #:custom-component-name #:delete-application
                              #:delete-application-request
                              #:delete-application-response #:delete-component
                              #:delete-component-request
                              #:delete-component-response #:delete-log-pattern
                              #:delete-log-pattern-request
                              #:delete-log-pattern-response
                              #:describe-application
                              #:describe-application-request
                              #:describe-application-response
                              #:describe-component
                              #:describe-component-configuration
                              #:describe-component-configuration-recommendation
                              #:describe-component-configuration-recommendation-request
                              #:describe-component-configuration-recommendation-response
                              #:describe-component-configuration-request
                              #:describe-component-configuration-response
                              #:describe-component-request
                              #:describe-component-response
                              #:describe-log-pattern
                              #:describe-log-pattern-request
                              #:describe-log-pattern-response
                              #:describe-observation
                              #:describe-observation-request
                              #:describe-observation-response
                              #:describe-problem
                              #:describe-problem-observations
                              #:describe-problem-observations-request
                              #:describe-problem-observations-response
                              #:describe-problem-request
                              #:describe-problem-response #:describe-workload
                              #:describe-workload-request
                              #:describe-workload-response #:detected-workload
                              #:discovery-type #:ec2windows-barley-service
                              #:ebs-cause #:ebs-event #:ebs-request-id
                              #:ebs-result #:ec2state #:end-time #:error-msg
                              #:exception-message #:feedback #:feedback-key
                              #:feedback-value #:grouping-type
                              #:health-event-arn #:health-event-description
                              #:health-event-type-category
                              #:health-event-type-code #:health-service
                              #:insights #:internal-server-exception
                              #:last-recurrence-time #:life-cycle #:line-time
                              #:list-applications #:list-applications-request
                              #:list-applications-response #:list-components
                              #:list-components-request
                              #:list-components-response
                              #:list-configuration-history
                              #:list-configuration-history-request
                              #:list-configuration-history-response
                              #:list-log-pattern-sets
                              #:list-log-pattern-sets-request
                              #:list-log-pattern-sets-response
                              #:list-log-patterns #:list-log-patterns-request
                              #:list-log-patterns-response #:list-problems
                              #:list-problems-request #:list-problems-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:list-workloads #:list-workloads-request
                              #:list-workloads-response #:log-filter
                              #:log-group #:log-pattern #:log-pattern-list
                              #:log-pattern-name #:log-pattern-rank
                              #:log-pattern-regex #:log-pattern-set-list
                              #:log-pattern-set-name #:log-text #:max-entities
                              #:meta-data-key #:meta-data-value #:metric-name
                              #:metric-namespace #:missing-workload-config
                              #:monitor #:observation #:observation-id
                              #:observation-list #:ops-center-enabled
                              #:ops-item-snstopic-arn #:os-type
                              #:pagination-token #:problem #:problem-id
                              #:problem-list #:rds-event-categories
                              #:rds-event-message #:recommendation-type
                              #:recurring-count #:related-observations
                              #:remarks #:remove-snstopic #:remove-workload
                              #:remove-workload-request
                              #:remove-workload-response #:resolution-method
                              #:resource-arn #:resource-group-name
                              #:resource-in-use-exception #:resource-list
                              #:resource-not-found-exception #:resource-type
                              #:s3event-name #:snsnotification-arn
                              #:severity-level #:short-name #:source-arn
                              #:source-type #:start-time #:states-arn
                              #:states-execution-arn #:states-input
                              #:states-status #:status #:tag #:tag-key
                              #:tag-key-list #:tag-list #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:tags-already-exist-exception #:tier
                              #:title #:too-many-tags-exception #:unit
                              #:untag-resource #:untag-resource-request
                              #:untag-resource-response #:update-application
                              #:update-application-request
                              #:update-application-response #:update-component
                              #:update-component-configuration
                              #:update-component-configuration-request
                              #:update-component-configuration-response
                              #:update-component-request
                              #:update-component-response #:update-log-pattern
                              #:update-log-pattern-request
                              #:update-log-pattern-response #:update-problem
                              #:update-problem-request
                              #:update-problem-response #:update-status
                              #:update-workload #:update-workload-request
                              #:update-workload-response #:validation-exception
                              #:value #:visibility #:workload
                              #:workload-configuration #:workload-id
                              #:workload-list #:workload-meta-data
                              #:workload-name #:xray-error-percent
                              #:xray-fault-percent #:xray-node-name
                              #:xray-node-type #:xray-request-average-latency
                              #:xray-request-count #:xray-throttle-percent))
(common-lisp:in-package #:pira/application-insights)

(smithy/sdk/service:define-service ec2windows-barley-service :shape-name
                                   "EC2WindowsBarleyService" :version
                                   "2018-11-25" :title
                                   "Amazon CloudWatch Application Insights"
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Application Insights")
                                      ("arnNamespace" . "applicationinsights")
                                      ("cloudFormationName"
                                       . "ApplicationInsights")
                                      ("cloudTrailEventSource"
                                       . "applicationinsights.amazonaws.com")
                                      ("endpointPrefix"
                                       . "applicationinsights"))
                                     ("aws.auth#sigv4"
                                      ("name" . "applicationinsights"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-msg :member-name
                                  "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input add-workload-request common-lisp:nil
                                ((resource-group-name :target-type
                                  resource-group-name :required common-lisp:t
                                  :member-name "ResourceGroupName")
                                 (component-name :target-type component-name
                                  :required common-lisp:t :member-name
                                  "ComponentName")
                                 (workload-configuration :target-type
                                  workload-configuration :required
                                  common-lisp:t :member-name
                                  "WorkloadConfiguration"))
                                (:shape-name "AddWorkloadRequest"))

(smithy/sdk/shapes:define-output add-workload-response common-lisp:nil
                                 ((workload-id :target-type workload-id
                                   :member-name "WorkloadId")
                                  (workload-configuration :target-type
                                   workload-configuration :member-name
                                   "WorkloadConfiguration"))
                                 (:shape-name "AddWorkloadResponse"))

(smithy/sdk/shapes:define-type affected-resource smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure application-component common-lisp:nil
                                    ((component-name :target-type
                                      component-name :member-name
                                      "ComponentName")
                                     (component-remarks :target-type remarks
                                      :member-name "ComponentRemarks")
                                     (resource-type :target-type resource-type
                                      :member-name "ResourceType")
                                     (os-type :target-type os-type :member-name
                                      "OsType")
                                     (tier :target-type tier :member-name
                                      "Tier")
                                     (monitor :target-type monitor :member-name
                                      "Monitor")
                                     (detected-workload :target-type
                                      detected-workload :member-name
                                      "DetectedWorkload"))
                                    (:shape-name "ApplicationComponent"))

(smithy/sdk/shapes:define-list application-component-list :member
                               application-component)

(smithy/sdk/shapes:define-structure application-info common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "AccountId")
                                     (resource-group-name :target-type
                                      resource-group-name :member-name
                                      "ResourceGroupName")
                                     (life-cycle :target-type life-cycle
                                      :member-name "LifeCycle")
                                     (ops-item-snstopic-arn :target-type
                                      ops-item-snstopic-arn :member-name
                                      "OpsItemSNSTopicArn")
                                     (snsnotification-arn :target-type
                                      snsnotification-arn :member-name
                                      "SNSNotificationArn")
                                     (ops-center-enabled :target-type
                                      ops-center-enabled :member-name
                                      "OpsCenterEnabled")
                                     (cwemonitor-enabled :target-type
                                      cwemonitor-enabled :member-name
                                      "CWEMonitorEnabled")
                                     (remarks :target-type remarks :member-name
                                      "Remarks")
                                     (auto-config-enabled :target-type
                                      auto-config-enabled :member-name
                                      "AutoConfigEnabled")
                                     (discovery-type :target-type
                                      discovery-type :member-name
                                      "DiscoveryType")
                                     (attach-missing-permission :target-type
                                      attach-missing-permission :member-name
                                      "AttachMissingPermission"))
                                    (:shape-name "ApplicationInfo"))

(smithy/sdk/shapes:define-list application-info-list :member application-info)

(smithy/sdk/shapes:define-type attach-missing-permission
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type auto-config-enabled
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type auto-create smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type error-msg :member-name
                                  "Message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type cwemonitor-enabled
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type cloud-watch-event-detail-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type cloud-watch-event-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum cloud-watch-event-source
    common-lisp:nil
  (:ec2 "EC2")
  (:code-deploy "CODE_DEPLOY")
  (:health "HEALTH")
  (:rds "RDS"))

(smithy/sdk/shapes:define-type code-deploy-application
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type code-deploy-deployment-group
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type code-deploy-deployment-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type code-deploy-instance-group-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type code-deploy-state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type component-configuration
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type component-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure configuration-event common-lisp:nil
                                    ((resource-group-name :target-type
                                      resource-group-name :member-name
                                      "ResourceGroupName")
                                     (account-id :target-type account-id
                                      :member-name "AccountId")
                                     (monitored-resource-arn :target-type
                                      configuration-event-monitored-resource-arn
                                      :member-name "MonitoredResourceARN")
                                     (event-status :target-type
                                      configuration-event-status :member-name
                                      "EventStatus")
                                     (event-resource-type :target-type
                                      configuration-event-resource-type
                                      :member-name "EventResourceType")
                                     (event-time :target-type
                                      configuration-event-time :member-name
                                      "EventTime")
                                     (event-detail :target-type
                                      configuration-event-detail :member-name
                                      "EventDetail")
                                     (event-resource-name :target-type
                                      configuration-event-resource-name
                                      :member-name "EventResourceName"))
                                    (:shape-name "ConfigurationEvent"))

(smithy/sdk/shapes:define-type configuration-event-detail
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list configuration-event-list :member
                               configuration-event)

(smithy/sdk/shapes:define-type configuration-event-monitored-resource-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type configuration-event-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum configuration-event-resource-type
    common-lisp:nil
  (:cloudwatch-alarm "CLOUDWATCH_ALARM")
  (:cloudwatch-log "CLOUDWATCH_LOG")
  (:cloudformation "CLOUDFORMATION")
  (:ssm-association "SSM_ASSOCIATION"))

(smithy/sdk/shapes:define-enum configuration-event-status
    common-lisp:nil
  (:info "INFO")
  (:warn "WARN")
  (:error "ERROR"))

(smithy/sdk/shapes:define-type configuration-event-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input create-application-request common-lisp:nil
                                ((resource-group-name :target-type
                                  resource-group-name :member-name
                                  "ResourceGroupName")
                                 (ops-center-enabled :target-type
                                  ops-center-enabled :member-name
                                  "OpsCenterEnabled")
                                 (cwemonitor-enabled :target-type
                                  cwemonitor-enabled :member-name
                                  "CWEMonitorEnabled")
                                 (ops-item-snstopic-arn :target-type
                                  ops-item-snstopic-arn :member-name
                                  "OpsItemSNSTopicArn")
                                 (snsnotification-arn :target-type
                                  snsnotification-arn :member-name
                                  "SNSNotificationArn")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (auto-config-enabled :target-type
                                  auto-config-enabled :member-name
                                  "AutoConfigEnabled")
                                 (auto-create :target-type auto-create
                                  :member-name "AutoCreate")
                                 (grouping-type :target-type grouping-type
                                  :member-name "GroupingType")
                                 (attach-missing-permission :target-type
                                  attach-missing-permission :member-name
                                  "AttachMissingPermission"))
                                (:shape-name "CreateApplicationRequest"))

(smithy/sdk/shapes:define-output create-application-response common-lisp:nil
                                 ((application-info :target-type
                                   application-info :member-name
                                   "ApplicationInfo"))
                                 (:shape-name "CreateApplicationResponse"))

(smithy/sdk/shapes:define-input create-component-request common-lisp:nil
                                ((resource-group-name :target-type
                                  resource-group-name :required common-lisp:t
                                  :member-name "ResourceGroupName")
                                 (component-name :target-type
                                  custom-component-name :required common-lisp:t
                                  :member-name "ComponentName")
                                 (resource-list :target-type resource-list
                                  :required common-lisp:t :member-name
                                  "ResourceList"))
                                (:shape-name "CreateComponentRequest"))

(smithy/sdk/shapes:define-output create-component-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CreateComponentResponse"))

(smithy/sdk/shapes:define-input create-log-pattern-request common-lisp:nil
                                ((resource-group-name :target-type
                                  resource-group-name :required common-lisp:t
                                  :member-name "ResourceGroupName")
                                 (pattern-set-name :target-type
                                  log-pattern-set-name :required common-lisp:t
                                  :member-name "PatternSetName")
                                 (pattern-name :target-type log-pattern-name
                                  :required common-lisp:t :member-name
                                  "PatternName")
                                 (pattern :target-type log-pattern-regex
                                  :required common-lisp:t :member-name
                                  "Pattern")
                                 (rank :target-type log-pattern-rank :required
                                  common-lisp:t :member-name "Rank"))
                                (:shape-name "CreateLogPatternRequest"))

(smithy/sdk/shapes:define-output create-log-pattern-response common-lisp:nil
                                 ((log-pattern :target-type log-pattern
                                   :member-name "LogPattern")
                                  (resource-group-name :target-type
                                   resource-group-name :member-name
                                   "ResourceGroupName"))
                                 (:shape-name "CreateLogPatternResponse"))

(smithy/sdk/shapes:define-type custom-component-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-application-request common-lisp:nil
                                ((resource-group-name :target-type
                                  resource-group-name :required common-lisp:t
                                  :member-name "ResourceGroupName"))
                                (:shape-name "DeleteApplicationRequest"))

(smithy/sdk/shapes:define-output delete-application-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteApplicationResponse"))

(smithy/sdk/shapes:define-input delete-component-request common-lisp:nil
                                ((resource-group-name :target-type
                                  resource-group-name :required common-lisp:t
                                  :member-name "ResourceGroupName")
                                 (component-name :target-type
                                  custom-component-name :required common-lisp:t
                                  :member-name "ComponentName"))
                                (:shape-name "DeleteComponentRequest"))

(smithy/sdk/shapes:define-output delete-component-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteComponentResponse"))

(smithy/sdk/shapes:define-input delete-log-pattern-request common-lisp:nil
                                ((resource-group-name :target-type
                                  resource-group-name :required common-lisp:t
                                  :member-name "ResourceGroupName")
                                 (pattern-set-name :target-type
                                  log-pattern-set-name :required common-lisp:t
                                  :member-name "PatternSetName")
                                 (pattern-name :target-type log-pattern-name
                                  :required common-lisp:t :member-name
                                  "PatternName"))
                                (:shape-name "DeleteLogPatternRequest"))

(smithy/sdk/shapes:define-output delete-log-pattern-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteLogPatternResponse"))

(smithy/sdk/shapes:define-input describe-application-request common-lisp:nil
                                ((resource-group-name :target-type
                                  resource-group-name :required common-lisp:t
                                  :member-name "ResourceGroupName")
                                 (account-id :target-type account-id
                                  :member-name "AccountId"))
                                (:shape-name "DescribeApplicationRequest"))

(smithy/sdk/shapes:define-output describe-application-response common-lisp:nil
                                 ((application-info :target-type
                                   application-info :member-name
                                   "ApplicationInfo"))
                                 (:shape-name "DescribeApplicationResponse"))

(smithy/sdk/shapes:define-input
 describe-component-configuration-recommendation-request common-lisp:nil
 ((resource-group-name :target-type resource-group-name :required common-lisp:t
   :member-name "ResourceGroupName")
  (component-name :target-type component-name :required common-lisp:t
   :member-name "ComponentName")
  (tier :target-type tier :required common-lisp:t :member-name "Tier")
  (workload-name :target-type workload-name :member-name "WorkloadName")
  (recommendation-type :target-type recommendation-type :member-name
   "RecommendationType"))
 (:shape-name "DescribeComponentConfigurationRecommendationRequest"))

(smithy/sdk/shapes:define-output
 describe-component-configuration-recommendation-response common-lisp:nil
 ((component-configuration :target-type component-configuration :member-name
   "ComponentConfiguration"))
 (:shape-name "DescribeComponentConfigurationRecommendationResponse"))

(smithy/sdk/shapes:define-input describe-component-configuration-request
                                common-lisp:nil
                                ((resource-group-name :target-type
                                  resource-group-name :required common-lisp:t
                                  :member-name "ResourceGroupName")
                                 (component-name :target-type component-name
                                  :required common-lisp:t :member-name
                                  "ComponentName")
                                 (account-id :target-type account-id
                                  :member-name "AccountId"))
                                (:shape-name
                                 "DescribeComponentConfigurationRequest"))

(smithy/sdk/shapes:define-output describe-component-configuration-response
                                 common-lisp:nil
                                 ((monitor :target-type monitor :member-name
                                   "Monitor")
                                  (tier :target-type tier :member-name "Tier")
                                  (component-configuration :target-type
                                   component-configuration :member-name
                                   "ComponentConfiguration"))
                                 (:shape-name
                                  "DescribeComponentConfigurationResponse"))

(smithy/sdk/shapes:define-input describe-component-request common-lisp:nil
                                ((resource-group-name :target-type
                                  resource-group-name :required common-lisp:t
                                  :member-name "ResourceGroupName")
                                 (component-name :target-type component-name
                                  :required common-lisp:t :member-name
                                  "ComponentName")
                                 (account-id :target-type account-id
                                  :member-name "AccountId"))
                                (:shape-name "DescribeComponentRequest"))

(smithy/sdk/shapes:define-output describe-component-response common-lisp:nil
                                 ((application-component :target-type
                                   application-component :member-name
                                   "ApplicationComponent")
                                  (resource-list :target-type resource-list
                                   :member-name "ResourceList"))
                                 (:shape-name "DescribeComponentResponse"))

(smithy/sdk/shapes:define-input describe-log-pattern-request common-lisp:nil
                                ((resource-group-name :target-type
                                  resource-group-name :required common-lisp:t
                                  :member-name "ResourceGroupName")
                                 (pattern-set-name :target-type
                                  log-pattern-set-name :required common-lisp:t
                                  :member-name "PatternSetName")
                                 (pattern-name :target-type log-pattern-name
                                  :required common-lisp:t :member-name
                                  "PatternName")
                                 (account-id :target-type account-id
                                  :member-name "AccountId"))
                                (:shape-name "DescribeLogPatternRequest"))

(smithy/sdk/shapes:define-output describe-log-pattern-response common-lisp:nil
                                 ((resource-group-name :target-type
                                   resource-group-name :member-name
                                   "ResourceGroupName")
                                  (account-id :target-type account-id
                                   :member-name "AccountId")
                                  (log-pattern :target-type log-pattern
                                   :member-name "LogPattern"))
                                 (:shape-name "DescribeLogPatternResponse"))

(smithy/sdk/shapes:define-input describe-observation-request common-lisp:nil
                                ((observation-id :target-type observation-id
                                  :required common-lisp:t :member-name
                                  "ObservationId")
                                 (account-id :target-type account-id
                                  :member-name "AccountId"))
                                (:shape-name "DescribeObservationRequest"))

(smithy/sdk/shapes:define-output describe-observation-response common-lisp:nil
                                 ((observation :target-type observation
                                   :member-name "Observation"))
                                 (:shape-name "DescribeObservationResponse"))

(smithy/sdk/shapes:define-input describe-problem-observations-request
                                common-lisp:nil
                                ((problem-id :target-type problem-id :required
                                  common-lisp:t :member-name "ProblemId")
                                 (account-id :target-type account-id
                                  :member-name "AccountId"))
                                (:shape-name
                                 "DescribeProblemObservationsRequest"))

(smithy/sdk/shapes:define-output describe-problem-observations-response
                                 common-lisp:nil
                                 ((related-observations :target-type
                                   related-observations :member-name
                                   "RelatedObservations"))
                                 (:shape-name
                                  "DescribeProblemObservationsResponse"))

(smithy/sdk/shapes:define-input describe-problem-request common-lisp:nil
                                ((problem-id :target-type problem-id :required
                                  common-lisp:t :member-name "ProblemId")
                                 (account-id :target-type account-id
                                  :member-name "AccountId"))
                                (:shape-name "DescribeProblemRequest"))

(smithy/sdk/shapes:define-output describe-problem-response common-lisp:nil
                                 ((problem :target-type problem :member-name
                                   "Problem")
                                  (snsnotification-arn :target-type
                                   snsnotification-arn :member-name
                                   "SNSNotificationArn"))
                                 (:shape-name "DescribeProblemResponse"))

(smithy/sdk/shapes:define-input describe-workload-request common-lisp:nil
                                ((resource-group-name :target-type
                                  resource-group-name :required common-lisp:t
                                  :member-name "ResourceGroupName")
                                 (component-name :target-type component-name
                                  :required common-lisp:t :member-name
                                  "ComponentName")
                                 (workload-id :target-type workload-id
                                  :required common-lisp:t :member-name
                                  "WorkloadId")
                                 (account-id :target-type account-id
                                  :member-name "AccountId"))
                                (:shape-name "DescribeWorkloadRequest"))

(smithy/sdk/shapes:define-output describe-workload-response common-lisp:nil
                                 ((workload-id :target-type workload-id
                                   :member-name "WorkloadId")
                                  (workload-remarks :target-type remarks
                                   :member-name "WorkloadRemarks")
                                  (workload-configuration :target-type
                                   workload-configuration :member-name
                                   "WorkloadConfiguration"))
                                 (:shape-name "DescribeWorkloadResponse"))

(smithy/sdk/shapes:define-map detected-workload :key tier :value
                              workload-meta-data)

(smithy/sdk/shapes:define-enum discovery-type
    common-lisp:nil
  (:resource-group-based "RESOURCE_GROUP_BASED")
  (:account-based "ACCOUNT_BASED"))

(smithy/sdk/shapes:define-type ebs-cause smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ebs-event smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ebs-request-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ebs-result smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ec2state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type end-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type error-msg smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map feedback :key feedback-key :value feedback-value)

(smithy/sdk/shapes:define-enum feedback-key
    common-lisp:nil
  (:insights-feedback "INSIGHTS_FEEDBACK"))

(smithy/sdk/shapes:define-enum feedback-value
    common-lisp:nil
  (:not-specified "NOT_SPECIFIED")
  (:useful "USEFUL")
  (:not-useful "NOT_USEFUL"))

(smithy/sdk/shapes:define-enum grouping-type
    common-lisp:nil
  (:account-based "ACCOUNT_BASED"))

(smithy/sdk/shapes:define-type health-event-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type health-event-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type health-event-type-category
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type health-event-type-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type health-service smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type insights smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-msg :member-name
                                  "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type last-recurrence-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type life-cycle smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type line-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input list-applications-request common-lisp:nil
                                ((max-results :target-type max-entities
                                  :member-name "MaxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (account-id :target-type account-id
                                  :member-name "AccountId"))
                                (:shape-name "ListApplicationsRequest"))

(smithy/sdk/shapes:define-output list-applications-response common-lisp:nil
                                 ((application-info-list :target-type
                                   application-info-list :member-name
                                   "ApplicationInfoList")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListApplicationsResponse"))

(smithy/sdk/shapes:define-input list-components-request common-lisp:nil
                                ((resource-group-name :target-type
                                  resource-group-name :required common-lisp:t
                                  :member-name "ResourceGroupName")
                                 (max-results :target-type max-entities
                                  :member-name "MaxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (account-id :target-type account-id
                                  :member-name "AccountId"))
                                (:shape-name "ListComponentsRequest"))

(smithy/sdk/shapes:define-output list-components-response common-lisp:nil
                                 ((application-component-list :target-type
                                   application-component-list :member-name
                                   "ApplicationComponentList")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListComponentsResponse"))

(smithy/sdk/shapes:define-input list-configuration-history-request
                                common-lisp:nil
                                ((resource-group-name :target-type
                                  resource-group-name :member-name
                                  "ResourceGroupName")
                                 (start-time :target-type start-time
                                  :member-name "StartTime")
                                 (end-time :target-type end-time :member-name
                                  "EndTime")
                                 (event-status :target-type
                                  configuration-event-status :member-name
                                  "EventStatus")
                                 (max-results :target-type max-entities
                                  :member-name "MaxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (account-id :target-type account-id
                                  :member-name "AccountId"))
                                (:shape-name "ListConfigurationHistoryRequest"))

(smithy/sdk/shapes:define-output list-configuration-history-response
                                 common-lisp:nil
                                 ((event-list :target-type
                                   configuration-event-list :member-name
                                   "EventList")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListConfigurationHistoryResponse"))

(smithy/sdk/shapes:define-input list-log-pattern-sets-request common-lisp:nil
                                ((resource-group-name :target-type
                                  resource-group-name :required common-lisp:t
                                  :member-name "ResourceGroupName")
                                 (max-results :target-type max-entities
                                  :member-name "MaxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (account-id :target-type account-id
                                  :member-name "AccountId"))
                                (:shape-name "ListLogPatternSetsRequest"))

(smithy/sdk/shapes:define-output list-log-pattern-sets-response common-lisp:nil
                                 ((resource-group-name :target-type
                                   resource-group-name :member-name
                                   "ResourceGroupName")
                                  (account-id :target-type account-id
                                   :member-name "AccountId")
                                  (log-pattern-sets :target-type
                                   log-pattern-set-list :member-name
                                   "LogPatternSets")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListLogPatternSetsResponse"))

(smithy/sdk/shapes:define-input list-log-patterns-request common-lisp:nil
                                ((resource-group-name :target-type
                                  resource-group-name :required common-lisp:t
                                  :member-name "ResourceGroupName")
                                 (pattern-set-name :target-type
                                  log-pattern-set-name :member-name
                                  "PatternSetName")
                                 (max-results :target-type max-entities
                                  :member-name "MaxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (account-id :target-type account-id
                                  :member-name "AccountId"))
                                (:shape-name "ListLogPatternsRequest"))

(smithy/sdk/shapes:define-output list-log-patterns-response common-lisp:nil
                                 ((resource-group-name :target-type
                                   resource-group-name :member-name
                                   "ResourceGroupName")
                                  (account-id :target-type account-id
                                   :member-name "AccountId")
                                  (log-patterns :target-type log-pattern-list
                                   :member-name "LogPatterns")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListLogPatternsResponse"))

(smithy/sdk/shapes:define-input list-problems-request common-lisp:nil
                                ((account-id :target-type account-id
                                  :member-name "AccountId")
                                 (resource-group-name :target-type
                                  resource-group-name :member-name
                                  "ResourceGroupName")
                                 (start-time :target-type start-time
                                  :member-name "StartTime")
                                 (end-time :target-type end-time :member-name
                                  "EndTime")
                                 (max-results :target-type max-entities
                                  :member-name "MaxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (component-name :target-type component-name
                                  :member-name "ComponentName")
                                 (visibility :target-type visibility
                                  :member-name "Visibility"))
                                (:shape-name "ListProblemsRequest"))

(smithy/sdk/shapes:define-output list-problems-response common-lisp:nil
                                 ((problem-list :target-type problem-list
                                   :member-name "ProblemList")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (resource-group-name :target-type
                                   resource-group-name :member-name
                                   "ResourceGroupName")
                                  (account-id :target-type account-id
                                   :member-name "AccountId"))
                                 (:shape-name "ListProblemsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-workloads-request common-lisp:nil
                                ((resource-group-name :target-type
                                  resource-group-name :required common-lisp:t
                                  :member-name "ResourceGroupName")
                                 (component-name :target-type component-name
                                  :required common-lisp:t :member-name
                                  "ComponentName")
                                 (max-results :target-type max-entities
                                  :member-name "MaxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (account-id :target-type account-id
                                  :member-name "AccountId"))
                                (:shape-name "ListWorkloadsRequest"))

(smithy/sdk/shapes:define-output list-workloads-response common-lisp:nil
                                 ((workload-list :target-type workload-list
                                   :member-name "WorkloadList")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListWorkloadsResponse"))

(smithy/sdk/shapes:define-enum log-filter
    common-lisp:nil
  (:error "ERROR")
  (:warn "WARN")
  (:info "INFO"))

(smithy/sdk/shapes:define-type log-group smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure log-pattern common-lisp:nil
                                    ((pattern-set-name :target-type
                                      log-pattern-set-name :member-name
                                      "PatternSetName")
                                     (pattern-name :target-type
                                      log-pattern-name :member-name
                                      "PatternName")
                                     (pattern :target-type log-pattern-regex
                                      :member-name "Pattern")
                                     (rank :target-type log-pattern-rank
                                      :member-name "Rank"))
                                    (:shape-name "LogPattern"))

(smithy/sdk/shapes:define-list log-pattern-list :member log-pattern)

(smithy/sdk/shapes:define-type log-pattern-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type log-pattern-rank smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type log-pattern-regex smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list log-pattern-set-list :member
                               log-pattern-set-name)

(smithy/sdk/shapes:define-type log-pattern-set-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type log-text smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-entities smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type meta-data-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type meta-data-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type metric-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type metric-namespace smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type missing-workload-config
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type monitor smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure observation common-lisp:nil
                                    ((id :target-type observation-id
                                      :member-name "Id")
                                     (start-time :target-type start-time
                                      :member-name "StartTime")
                                     (end-time :target-type end-time
                                      :member-name "EndTime")
                                     (source-type :target-type source-type
                                      :member-name "SourceType")
                                     (source-arn :target-type source-arn
                                      :member-name "SourceARN")
                                     (log-group :target-type log-group
                                      :member-name "LogGroup")
                                     (line-time :target-type line-time
                                      :member-name "LineTime")
                                     (log-text :target-type log-text
                                      :member-name "LogText")
                                     (log-filter :target-type log-filter
                                      :member-name "LogFilter")
                                     (metric-namespace :target-type
                                      metric-namespace :member-name
                                      "MetricNamespace")
                                     (metric-name :target-type metric-name
                                      :member-name "MetricName")
                                     (unit :target-type unit :member-name
                                      "Unit")
                                     (value :target-type value :member-name
                                      "Value")
                                     (cloud-watch-event-id :target-type
                                      cloud-watch-event-id :member-name
                                      "CloudWatchEventId")
                                     (cloud-watch-event-source :target-type
                                      cloud-watch-event-source :member-name
                                      "CloudWatchEventSource")
                                     (cloud-watch-event-detail-type
                                      :target-type
                                      cloud-watch-event-detail-type
                                      :member-name "CloudWatchEventDetailType")
                                     (health-event-arn :target-type
                                      health-event-arn :member-name
                                      "HealthEventArn")
                                     (health-service :target-type
                                      health-service :member-name
                                      "HealthService")
                                     (health-event-type-code :target-type
                                      health-event-type-code :member-name
                                      "HealthEventTypeCode")
                                     (health-event-type-category :target-type
                                      health-event-type-category :member-name
                                      "HealthEventTypeCategory")
                                     (health-event-description :target-type
                                      health-event-description :member-name
                                      "HealthEventDescription")
                                     (code-deploy-deployment-id :target-type
                                      code-deploy-deployment-id :member-name
                                      "CodeDeployDeploymentId")
                                     (code-deploy-deployment-group :target-type
                                      code-deploy-deployment-group :member-name
                                      "CodeDeployDeploymentGroup")
                                     (code-deploy-state :target-type
                                      code-deploy-state :member-name
                                      "CodeDeployState")
                                     (code-deploy-application :target-type
                                      code-deploy-application :member-name
                                      "CodeDeployApplication")
                                     (code-deploy-instance-group-id
                                      :target-type
                                      code-deploy-instance-group-id
                                      :member-name "CodeDeployInstanceGroupId")
                                     (ec2state :target-type ec2state
                                      :member-name "Ec2State")
                                     (rds-event-categories :target-type
                                      rds-event-categories :member-name
                                      "RdsEventCategories")
                                     (rds-event-message :target-type
                                      rds-event-message :member-name
                                      "RdsEventMessage")
                                     (s3event-name :target-type s3event-name
                                      :member-name "S3EventName")
                                     (states-execution-arn :target-type
                                      states-execution-arn :member-name
                                      "StatesExecutionArn")
                                     (states-arn :target-type states-arn
                                      :member-name "StatesArn")
                                     (states-status :target-type states-status
                                      :member-name "StatesStatus")
                                     (states-input :target-type states-input
                                      :member-name "StatesInput")
                                     (ebs-event :target-type ebs-event
                                      :member-name "EbsEvent")
                                     (ebs-result :target-type ebs-result
                                      :member-name "EbsResult")
                                     (ebs-cause :target-type ebs-cause
                                      :member-name "EbsCause")
                                     (ebs-request-id :target-type
                                      ebs-request-id :member-name
                                      "EbsRequestId")
                                     (xray-fault-percent :target-type
                                      xray-fault-percent :member-name
                                      "XRayFaultPercent")
                                     (xray-throttle-percent :target-type
                                      xray-throttle-percent :member-name
                                      "XRayThrottlePercent")
                                     (xray-error-percent :target-type
                                      xray-error-percent :member-name
                                      "XRayErrorPercent")
                                     (xray-request-count :target-type
                                      xray-request-count :member-name
                                      "XRayRequestCount")
                                     (xray-request-average-latency :target-type
                                      xray-request-average-latency :member-name
                                      "XRayRequestAverageLatency")
                                     (xray-node-name :target-type
                                      xray-node-name :member-name
                                      "XRayNodeName")
                                     (xray-node-type :target-type
                                      xray-node-type :member-name
                                      "XRayNodeType"))
                                    (:shape-name "Observation"))

(smithy/sdk/shapes:define-type observation-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list observation-list :member observation)

(smithy/sdk/shapes:define-type ops-center-enabled
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type ops-item-snstopic-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum os-type
    common-lisp:nil
  (:windows "WINDOWS")
  (:linux "LINUX"))

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure problem common-lisp:nil
                                    ((id :target-type problem-id :member-name
                                      "Id")
                                     (title :target-type title :member-name
                                      "Title")
                                     (short-name :target-type short-name
                                      :member-name "ShortName")
                                     (insights :target-type insights
                                      :member-name "Insights")
                                     (status :target-type status :member-name
                                      "Status")
                                     (affected-resource :target-type
                                      affected-resource :member-name
                                      "AffectedResource")
                                     (start-time :target-type start-time
                                      :member-name "StartTime")
                                     (end-time :target-type end-time
                                      :member-name "EndTime")
                                     (severity-level :target-type
                                      severity-level :member-name
                                      "SeverityLevel")
                                     (account-id :target-type account-id
                                      :member-name "AccountId")
                                     (resource-group-name :target-type
                                      resource-group-name :member-name
                                      "ResourceGroupName")
                                     (feedback :target-type feedback
                                      :member-name "Feedback")
                                     (recurring-count :target-type
                                      recurring-count :member-name
                                      "RecurringCount")
                                     (last-recurrence-time :target-type
                                      last-recurrence-time :member-name
                                      "LastRecurrenceTime")
                                     (visibility :target-type visibility
                                      :member-name "Visibility")
                                     (resolution-method :target-type
                                      resolution-method :member-name
                                      "ResolutionMethod"))
                                    (:shape-name "Problem"))

(smithy/sdk/shapes:define-type problem-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list problem-list :member problem)

(smithy/sdk/shapes:define-type rds-event-categories
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rds-event-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum recommendation-type
    common-lisp:nil
  (:infra-only "INFRA_ONLY")
  (:workload-only "WORKLOAD_ONLY")
  (:all "ALL"))

(smithy/sdk/shapes:define-type recurring-count smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure related-observations common-lisp:nil
                                    ((observation-list :target-type
                                      observation-list :member-name
                                      "ObservationList"))
                                    (:shape-name "RelatedObservations"))

(smithy/sdk/shapes:define-type remarks smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type remove-snstopic smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input remove-workload-request common-lisp:nil
                                ((resource-group-name :target-type
                                  resource-group-name :required common-lisp:t
                                  :member-name "ResourceGroupName")
                                 (component-name :target-type component-name
                                  :required common-lisp:t :member-name
                                  "ComponentName")
                                 (workload-id :target-type workload-id
                                  :required common-lisp:t :member-name
                                  "WorkloadId"))
                                (:shape-name "RemoveWorkloadRequest"))

(smithy/sdk/shapes:define-output remove-workload-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "RemoveWorkloadResponse"))

(smithy/sdk/shapes:define-enum resolution-method
    common-lisp:nil
  (:manual "MANUAL")
  (:automatic "AUTOMATIC")
  (:unresolved "UNRESOLVED"))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-group-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-in-use-exception common-lisp:nil
                                ((message :target-type error-msg :member-name
                                  "Message"))
                                (:shape-name "ResourceInUseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list resource-list :member resource-arn)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-msg :member-name
                                  "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type resource-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3event-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type snsnotification-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum severity-level
    common-lisp:nil
  (:informative "Informative")
  (:low "Low")
  (:medium "Medium")
  (:high "High"))

(smithy/sdk/shapes:define-type short-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type source-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type source-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type start-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type states-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type states-execution-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type states-input smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type states-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum status
    common-lisp:nil
  (:ignore "IGNORE")
  (:resolved "RESOLVED")
  (:pending "PENDING")
  (:recurring "RECURRING")
  (:recovering "RECOVERING"))

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
                                  :member-name "ResourceARN")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error tags-already-exist-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "TagsAlreadyExistException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum tier
    common-lisp:nil
  (:custom "CUSTOM")
  (:default "DEFAULT")
  (:dot-net-core "DOT_NET_CORE")
  (:dot-net-worker "DOT_NET_WORKER")
  (:dot-net-web-tier "DOT_NET_WEB_TIER")
  (:dot-net-web "DOT_NET_WEB")
  (:sql-server "SQL_SERVER")
  (:sql-server-alwayson-availability-group
   "SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP")
  (:mysql "MYSQL")
  (:postgresql "POSTGRESQL")
  (:java-jmx "JAVA_JMX")
  (:oracle "ORACLE")
  (:sap-hana-multi-node "SAP_HANA_MULTI_NODE")
  (:sap-hana-single-node "SAP_HANA_SINGLE_NODE")
  (:sap-hana-high-availability "SAP_HANA_HIGH_AVAILABILITY")
  (:sap-ase-single-node "SAP_ASE_SINGLE_NODE")
  (:sap-ase-high-availability "SAP_ASE_HIGH_AVAILABILITY")
  (:sql-server-failover-cluster-instance "SQL_SERVER_FAILOVER_CLUSTER_INSTANCE")
  (:sharepoint "SHAREPOINT")
  (:active-directory "ACTIVE_DIRECTORY")
  (:sap-netweaver-standard "SAP_NETWEAVER_STANDARD")
  (:sap-netweaver-distributed "SAP_NETWEAVER_DISTRIBUTED")
  (:sap-netweaver-high-availability "SAP_NETWEAVER_HIGH_AVAILABILITY"))

(smithy/sdk/shapes:define-type title smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (resource-name :target-type
                                  amazon-resource-name :member-name
                                  "ResourceName"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type unit smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-input update-application-request common-lisp:nil
                                ((resource-group-name :target-type
                                  resource-group-name :required common-lisp:t
                                  :member-name "ResourceGroupName")
                                 (ops-center-enabled :target-type
                                  ops-center-enabled :member-name
                                  "OpsCenterEnabled")
                                 (cwemonitor-enabled :target-type
                                  cwemonitor-enabled :member-name
                                  "CWEMonitorEnabled")
                                 (ops-item-snstopic-arn :target-type
                                  ops-item-snstopic-arn :member-name
                                  "OpsItemSNSTopicArn")
                                 (snsnotification-arn :target-type
                                  snsnotification-arn :member-name
                                  "SNSNotificationArn")
                                 (remove-snstopic :target-type remove-snstopic
                                  :member-name "RemoveSNSTopic")
                                 (auto-config-enabled :target-type
                                  auto-config-enabled :member-name
                                  "AutoConfigEnabled")
                                 (attach-missing-permission :target-type
                                  attach-missing-permission :member-name
                                  "AttachMissingPermission"))
                                (:shape-name "UpdateApplicationRequest"))

(smithy/sdk/shapes:define-output update-application-response common-lisp:nil
                                 ((application-info :target-type
                                   application-info :member-name
                                   "ApplicationInfo"))
                                 (:shape-name "UpdateApplicationResponse"))

(smithy/sdk/shapes:define-input update-component-configuration-request
                                common-lisp:nil
                                ((resource-group-name :target-type
                                  resource-group-name :required common-lisp:t
                                  :member-name "ResourceGroupName")
                                 (component-name :target-type component-name
                                  :required common-lisp:t :member-name
                                  "ComponentName")
                                 (monitor :target-type monitor :member-name
                                  "Monitor")
                                 (tier :target-type tier :member-name "Tier")
                                 (component-configuration :target-type
                                  component-configuration :member-name
                                  "ComponentConfiguration")
                                 (auto-config-enabled :target-type
                                  auto-config-enabled :member-name
                                  "AutoConfigEnabled"))
                                (:shape-name
                                 "UpdateComponentConfigurationRequest"))

(smithy/sdk/shapes:define-output update-component-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateComponentConfigurationResponse"))

(smithy/sdk/shapes:define-input update-component-request common-lisp:nil
                                ((resource-group-name :target-type
                                  resource-group-name :required common-lisp:t
                                  :member-name "ResourceGroupName")
                                 (component-name :target-type
                                  custom-component-name :required common-lisp:t
                                  :member-name "ComponentName")
                                 (new-component-name :target-type
                                  custom-component-name :member-name
                                  "NewComponentName")
                                 (resource-list :target-type resource-list
                                  :member-name "ResourceList"))
                                (:shape-name "UpdateComponentRequest"))

(smithy/sdk/shapes:define-output update-component-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateComponentResponse"))

(smithy/sdk/shapes:define-input update-log-pattern-request common-lisp:nil
                                ((resource-group-name :target-type
                                  resource-group-name :required common-lisp:t
                                  :member-name "ResourceGroupName")
                                 (pattern-set-name :target-type
                                  log-pattern-set-name :required common-lisp:t
                                  :member-name "PatternSetName")
                                 (pattern-name :target-type log-pattern-name
                                  :required common-lisp:t :member-name
                                  "PatternName")
                                 (pattern :target-type log-pattern-regex
                                  :member-name "Pattern")
                                 (rank :target-type log-pattern-rank
                                  :member-name "Rank"))
                                (:shape-name "UpdateLogPatternRequest"))

(smithy/sdk/shapes:define-output update-log-pattern-response common-lisp:nil
                                 ((resource-group-name :target-type
                                   resource-group-name :member-name
                                   "ResourceGroupName")
                                  (log-pattern :target-type log-pattern
                                   :member-name "LogPattern"))
                                 (:shape-name "UpdateLogPatternResponse"))

(smithy/sdk/shapes:define-input update-problem-request common-lisp:nil
                                ((problem-id :target-type problem-id :required
                                  common-lisp:t :member-name "ProblemId")
                                 (update-status :target-type update-status
                                  :member-name "UpdateStatus")
                                 (visibility :target-type visibility
                                  :member-name "Visibility"))
                                (:shape-name "UpdateProblemRequest"))

(smithy/sdk/shapes:define-output update-problem-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateProblemResponse"))

(smithy/sdk/shapes:define-enum update-status
    common-lisp:nil
  (:resolved "RESOLVED"))

(smithy/sdk/shapes:define-input update-workload-request common-lisp:nil
                                ((resource-group-name :target-type
                                  resource-group-name :required common-lisp:t
                                  :member-name "ResourceGroupName")
                                 (component-name :target-type component-name
                                  :required common-lisp:t :member-name
                                  "ComponentName")
                                 (workload-id :target-type workload-id
                                  :member-name "WorkloadId")
                                 (workload-configuration :target-type
                                  workload-configuration :required
                                  common-lisp:t :member-name
                                  "WorkloadConfiguration"))
                                (:shape-name "UpdateWorkloadRequest"))

(smithy/sdk/shapes:define-output update-workload-response common-lisp:nil
                                 ((workload-id :target-type workload-id
                                   :member-name "WorkloadId")
                                  (workload-configuration :target-type
                                   workload-configuration :member-name
                                   "WorkloadConfiguration"))
                                 (:shape-name "UpdateWorkloadResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-msg :member-name
                                  "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type value smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-enum visibility
    common-lisp:nil
  (:ignored "IGNORED")
  (:visible "VISIBLE"))

(smithy/sdk/shapes:define-structure workload common-lisp:nil
                                    ((workload-id :target-type workload-id
                                      :member-name "WorkloadId")
                                     (component-name :target-type
                                      component-name :member-name
                                      "ComponentName")
                                     (workload-name :target-type workload-name
                                      :member-name "WorkloadName")
                                     (tier :target-type tier :member-name
                                      "Tier")
                                     (workload-remarks :target-type remarks
                                      :member-name "WorkloadRemarks")
                                     (missing-workload-config :target-type
                                      missing-workload-config :member-name
                                      "MissingWorkloadConfig"))
                                    (:shape-name "Workload"))

(smithy/sdk/shapes:define-structure workload-configuration common-lisp:nil
                                    ((workload-name :target-type workload-name
                                      :member-name "WorkloadName")
                                     (tier :target-type tier :member-name
                                      "Tier")
                                     (configuration :target-type
                                      component-configuration :member-name
                                      "Configuration"))
                                    (:shape-name "WorkloadConfiguration"))

(smithy/sdk/shapes:define-type workload-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list workload-list :member workload)

(smithy/sdk/shapes:define-map workload-meta-data :key meta-data-key :value
                              meta-data-value)

(smithy/sdk/shapes:define-type workload-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type xray-error-percent
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type xray-fault-percent
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type xray-node-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type xray-node-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type xray-request-average-latency
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type xray-request-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type xray-throttle-percent
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/operation:define-operation add-workload :shape-name "AddWorkload"
                                       :input add-workload-request :output
                                       add-workload-response :errors
                                       (internal-server-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-application :shape-name
                                       "CreateApplication" :input
                                       create-application-request :output
                                       create-application-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        tags-already-exist-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-component :shape-name
                                       "CreateComponent" :input
                                       create-component-request :output
                                       create-component-response :errors
                                       (internal-server-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-log-pattern :shape-name
                                       "CreateLogPattern" :input
                                       create-log-pattern-request :output
                                       create-log-pattern-response :errors
                                       (internal-server-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-application :shape-name
                                       "DeleteApplication" :input
                                       delete-application-request :output
                                       delete-application-response :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-component :shape-name
                                       "DeleteComponent" :input
                                       delete-component-request :output
                                       delete-component-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-log-pattern :shape-name
                                       "DeleteLogPattern" :input
                                       delete-log-pattern-request :output
                                       delete-log-pattern-response :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-application :shape-name
                                       "DescribeApplication" :input
                                       describe-application-request :output
                                       describe-application-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-component :shape-name
                                       "DescribeComponent" :input
                                       describe-component-request :output
                                       describe-component-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-component-configuration
                                       :shape-name
                                       "DescribeComponentConfiguration" :input
                                       describe-component-configuration-request
                                       :output
                                       describe-component-configuration-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation
 describe-component-configuration-recommendation :shape-name
 "DescribeComponentConfigurationRecommendation" :input
 describe-component-configuration-recommendation-request :output
 describe-component-configuration-recommendation-response :errors
 (internal-server-exception resource-not-found-exception validation-exception))

(smithy/sdk/operation:define-operation describe-log-pattern :shape-name
                                       "DescribeLogPattern" :input
                                       describe-log-pattern-request :output
                                       describe-log-pattern-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-observation :shape-name
                                       "DescribeObservation" :input
                                       describe-observation-request :output
                                       describe-observation-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-problem :shape-name
                                       "DescribeProblem" :input
                                       describe-problem-request :output
                                       describe-problem-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-problem-observations
                                       :shape-name
                                       "DescribeProblemObservations" :input
                                       describe-problem-observations-request
                                       :output
                                       describe-problem-observations-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-workload :shape-name
                                       "DescribeWorkload" :input
                                       describe-workload-request :output
                                       describe-workload-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-applications :shape-name
                                       "ListApplications" :input
                                       list-applications-request :output
                                       list-applications-response :errors
                                       (internal-server-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-components :shape-name
                                       "ListComponents" :input
                                       list-components-request :output
                                       list-components-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-configuration-history :shape-name
                                       "ListConfigurationHistory" :input
                                       list-configuration-history-request
                                       :output
                                       list-configuration-history-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-log-pattern-sets :shape-name
                                       "ListLogPatternSets" :input
                                       list-log-pattern-sets-request :output
                                       list-log-pattern-sets-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-log-patterns :shape-name
                                       "ListLogPatterns" :input
                                       list-log-patterns-request :output
                                       list-log-patterns-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-problems :shape-name "ListProblems"
                                       :input list-problems-request :output
                                       list-problems-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-workloads :shape-name
                                       "ListWorkloads" :input
                                       list-workloads-request :output
                                       list-workloads-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation remove-workload :shape-name
                                       "RemoveWorkload" :input
                                       remove-workload-request :output
                                       remove-workload-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
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

(smithy/sdk/operation:define-operation update-application :shape-name
                                       "UpdateApplication" :input
                                       update-application-request :output
                                       update-application-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-component :shape-name
                                       "UpdateComponent" :input
                                       update-component-request :output
                                       update-component-response :errors
                                       (internal-server-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-component-configuration
                                       :shape-name
                                       "UpdateComponentConfiguration" :input
                                       update-component-configuration-request
                                       :output
                                       update-component-configuration-response
                                       :errors
                                       (internal-server-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-log-pattern :shape-name
                                       "UpdateLogPattern" :input
                                       update-log-pattern-request :output
                                       update-log-pattern-response :errors
                                       (internal-server-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-problem :shape-name
                                       "UpdateProblem" :input
                                       update-problem-request :output
                                       update-problem-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-workload :shape-name
                                       "UpdateWorkload" :input
                                       update-workload-request :output
                                       update-workload-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))
