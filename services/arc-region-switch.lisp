(uiop/package:define-package #:pira/arc-region-switch (:use)
                             (:export #:abbreviated-execution
                              #:abbreviated-executions-list #:abbreviated-plan
                              #:account-id #:alarm-condition #:alarm-type
                              #:approval #:approve-plan-execution-step
                              #:arc-region-switch
                              #:arc-routing-control-configuration
                              #:arc-routing-control-state
                              #:arc-routing-control-states #:asg #:asg-arn
                              #:asg-list #:associated-alarm
                              #:associated-alarm-map #:aurora-cluster-arn
                              #:aurora-cluster-arns #:cancel-plan-execution
                              #:create-plan
                              #:custom-action-lambda-configuration
                              #:delete-plan #:duration
                              #:ec2asg-capacity-increase-configuration
                              #:ec2asg-capacity-monitoring-approach
                              #:ec2ungraceful
                              #:ecs-capacity-increase-configuration
                              #:ecs-capacity-monitoring-approach
                              #:ecs-cluster-arn #:ecs-service-arn
                              #:ecs-ungraceful
                              #:eks-capacity-monitoring-approach #:eks-cluster
                              #:eks-cluster-arn #:eks-clusters
                              #:eks-resource-scaling-configuration
                              #:eks-resource-scaling-ungraceful
                              #:evaluation-status #:execution-action
                              #:execution-approval-configuration
                              #:execution-block-configuration
                              #:execution-block-type #:execution-comment
                              #:execution-event #:execution-event-list
                              #:execution-event-type #:execution-id
                              #:execution-mode #:execution-state #:get-plan
                              #:get-plan-evaluation-status #:get-plan-execution
                              #:get-plan-execution-step-states-max-results
                              #:get-plan-in-region
                              #:global-aurora-configuration
                              #:global-aurora-default-behavior
                              #:global-aurora-ungraceful
                              #:global-aurora-ungraceful-behavior
                              #:global-cluster-identifier #:iam-role-arn
                              #:kubernetes-namespace #:kubernetes-resource-type
                              #:kubernetes-scaling-application
                              #:kubernetes-scaling-apps
                              #:kubernetes-scaling-resource #:lambda-arn
                              #:lambda-list #:lambda-ungraceful
                              #:lambda-ungraceful-behavior #:lambdas
                              #:list-execution-events-max-results
                              #:list-executions-max-results
                              #:list-plan-execution-events
                              #:list-plan-executions #:list-plans
                              #:list-plans-in-region
                              #:list-route53health-checks
                              #:list-tags-for-resource #:max-results
                              #:minimal-workflow #:next-token
                              #:parallel-execution-block-configuration #:plan
                              #:plan-arn #:plan-list #:plan-name
                              #:plan-warnings #:recovery-approach #:region
                              #:region-and-routing-controls #:region-list
                              #:region-switch-plan
                              #:region-switch-plan-configuration
                              #:region-to-run-in #:regional-scaling-resource
                              #:resource-arn #:resource-warning
                              #:resource-warning-status #:resources #:role-arn
                              #:route53health-check
                              #:route53health-check-configuration
                              #:route53health-check-id
                              #:route53health-check-list
                              #:route53hosted-zone-id #:route53record-name
                              #:route53resource-record-set
                              #:route53resource-record-set-identifier
                              #:route53resource-record-set-list
                              #:routing-control-arn
                              #:routing-control-state-change #:service
                              #:service-list #:start-plan-execution #:step
                              #:step-name #:step-state #:step-states
                              #:step-status #:steps #:tag-key #:tag-keys
                              #:tag-resource #:tag-value #:tags #:trigger
                              #:trigger-condition #:trigger-condition-list
                              #:trigger-list #:untag-resource #:update-plan
                              #:update-plan-execution
                              #:update-plan-execution-action
                              #:update-plan-execution-step
                              #:update-plan-execution-step-action #:workflow
                              #:workflow-list #:workflow-target-action))
(common-lisp:in-package #:pira/arc-region-switch)

(smithy/sdk/service:define-service arc-region-switch :shape-name
                                   "ArcRegionSwitch" :version "2022-07-26"
                                   :title "ARC - Region switch" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "ARC Region switch")
                                      ("endpointPrefix" . "arc-region-switch")
                                      ("arnNamespace" . "arc-region-switch")
                                      ("cloudFormationName"
                                       . "ARCRegionSwitch"))
                                     ("aws.auth#sigv4"
                                      ("name" . "arc-region-switch"))
                                     ("aws.endpoints#dualStackOnlyEndpoints")
                                     ("aws.endpoints#rulesBasedEndpoints")
                                     ("aws.endpoints#standardRegionalEndpoints")
                                     ("aws.iam#defineConditionKeys"
                                      ("aws:ResourceTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by a tag's key and value in a request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"))
                                      ("aws:RequestTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by tag key-value pairs attached to the resource")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"))
                                      ("aws:TagKeys" ("type" . "ArrayOfString")
                                       ("documentation"
                                        . "Filters access by the presence of tag keys in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys")))
                                     ("aws.iam#supportedPrincipalTypes"
                                      . #("Root" "IAMUser" "IAMRole"
                                          "FederatedUser"))
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-structure abbreviated-execution common-lisp:nil
                                    ((plan-arn :target-type plan-arn :required
                                      common-lisp:t :member-name "planArn")
                                     (execution-id :target-type execution-id
                                      :required common-lisp:t :member-name
                                      "executionId")
                                     (version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "version")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "updatedAt")
                                     (comment :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "comment")
                                     (start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "startTime")
                                     (end-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "endTime")
                                     (mode :target-type execution-mode
                                      :required common-lisp:t :member-name
                                      "mode")
                                     (execution-state :target-type
                                      execution-state :required common-lisp:t
                                      :member-name "executionState")
                                     (execution-action :target-type
                                      execution-action :required common-lisp:t
                                      :member-name "executionAction")
                                     (execution-region :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "executionRegion")
                                     (actual-recovery-time :target-type
                                      duration :member-name
                                      "actualRecoveryTime"))
                                    (:shape-name "AbbreviatedExecution"))

(smithy/sdk/shapes:define-list abbreviated-executions-list :member
                               abbreviated-execution)

(smithy/sdk/shapes:define-structure abbreviated-plan common-lisp:nil
                                    ((arn :target-type plan-arn :required
                                      common-lisp:t :member-name "arn")
                                     (owner :target-type account-id :required
                                      common-lisp:t :member-name "owner")
                                     (name :target-type plan-name :required
                                      common-lisp:t :member-name "name")
                                     (regions :target-type region-list
                                      :required common-lisp:t :member-name
                                      "regions")
                                     (recovery-approach :target-type
                                      recovery-approach :required common-lisp:t
                                      :member-name "recoveryApproach")
                                     (primary-region :target-type region
                                      :member-name "primaryRegion")
                                     (version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "version")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "updatedAt")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (execution-role :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "executionRole")
                                     (active-plan-execution :target-type
                                      execution-id :member-name
                                      "activePlanExecution")
                                     (recovery-time-objective-minutes
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "recoveryTimeObjectiveMinutes"))
                                    (:shape-name "AbbreviatedPlan"))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum alarm-condition
    common-lisp:nil
  (:red "red")
  (:green "green"))

(smithy/sdk/shapes:define-enum alarm-type
    common-lisp:nil
  (:application-health "applicationHealth")
  (:trigger "trigger"))

(smithy/sdk/shapes:define-enum approval
    common-lisp:nil
  (:approve "approve")
  (:decline "decline"))

(smithy/sdk/shapes:define-input approve-plan-execution-step-request
                                common-lisp:nil
                                ((plan-arn :target-type plan-arn :required
                                  common-lisp:t :member-name "planArn")
                                 (execution-id :target-type execution-id
                                  :required common-lisp:t :member-name
                                  "executionId")
                                 (step-name :target-type step-name :required
                                  common-lisp:t :member-name "stepName")
                                 (approval :target-type approval :required
                                  common-lisp:t :member-name "approval")
                                 (comment :target-type execution-comment
                                  :member-name "comment"))
                                (:shape-name "ApprovePlanExecutionStepRequest"))

(smithy/sdk/shapes:define-output approve-plan-execution-step-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "ApprovePlanExecutionStepResponse"))

(smithy/sdk/shapes:define-structure arc-routing-control-configuration
                                    common-lisp:nil
                                    ((timeout-minutes :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "timeoutMinutes")
                                     (cross-account-role :target-type
                                      iam-role-arn :member-name
                                      "crossAccountRole")
                                     (external-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "externalId")
                                     (region-and-routing-controls :target-type
                                      region-and-routing-controls :required
                                      common-lisp:t :member-name
                                      "regionAndRoutingControls"))
                                    (:shape-name
                                     "ArcRoutingControlConfiguration"))

(smithy/sdk/shapes:define-structure arc-routing-control-state common-lisp:nil
                                    ((routing-control-arn :target-type
                                      routing-control-arn :required
                                      common-lisp:t :member-name
                                      "routingControlArn")
                                     (state :target-type
                                      routing-control-state-change :required
                                      common-lisp:t :member-name "state"))
                                    (:shape-name "ArcRoutingControlState"))

(smithy/sdk/shapes:define-list arc-routing-control-states :member
                               arc-routing-control-state)

(smithy/sdk/shapes:define-structure asg common-lisp:nil
                                    ((cross-account-role :target-type
                                      iam-role-arn :member-name
                                      "crossAccountRole")
                                     (external-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "externalId")
                                     (arn :target-type asg-arn :member-name
                                      "arn"))
                                    (:shape-name "Asg"))

(smithy/sdk/shapes:define-type asg-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list asg-list :member asg)

(smithy/sdk/shapes:define-structure associated-alarm common-lisp:nil
                                    ((cross-account-role :target-type
                                      iam-role-arn :member-name
                                      "crossAccountRole")
                                     (external-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "externalId")
                                     (resource-identifier :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "resourceIdentifier")
                                     (alarm-type :target-type alarm-type
                                      :required common-lisp:t :member-name
                                      "alarmType"))
                                    (:shape-name "AssociatedAlarm"))

(smithy/sdk/shapes:define-map associated-alarm-map :key
                              smithy/sdk/smithy-types:string :value
                              associated-alarm)

(smithy/sdk/shapes:define-type aurora-cluster-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list aurora-cluster-arns :member aurora-cluster-arn)

(smithy/sdk/shapes:define-input cancel-plan-execution-request common-lisp:nil
                                ((plan-arn :target-type plan-arn :required
                                  common-lisp:t :member-name "planArn")
                                 (execution-id :target-type execution-id
                                  :required common-lisp:t :member-name
                                  "executionId")
                                 (comment :target-type execution-comment
                                  :member-name "comment"))
                                (:shape-name "CancelPlanExecutionRequest"))

(smithy/sdk/shapes:define-output cancel-plan-execution-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CancelPlanExecutionResponse"))

(smithy/sdk/shapes:define-input create-plan-request common-lisp:nil
                                ((description :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "description")
                                 (workflows :target-type workflow-list
                                  :required common-lisp:t :member-name
                                  "workflows")
                                 (execution-role :target-type iam-role-arn
                                  :required common-lisp:t :member-name
                                  "executionRole")
                                 (recovery-time-objective-minutes :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "recoveryTimeObjectiveMinutes")
                                 (associated-alarms :target-type
                                  associated-alarm-map :member-name
                                  "associatedAlarms")
                                 (triggers :target-type trigger-list
                                  :member-name "triggers")
                                 (name :target-type plan-name :required
                                  common-lisp:t :member-name "name")
                                 (regions :target-type region-list :required
                                  common-lisp:t :member-name "regions")
                                 (recovery-approach :target-type
                                  recovery-approach :required common-lisp:t
                                  :member-name "recoveryApproach")
                                 (primary-region :target-type region
                                  :member-name "primaryRegion")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreatePlanRequest"))

(smithy/sdk/shapes:define-output create-plan-response common-lisp:nil
                                 ((plan :target-type plan :member-name "plan"))
                                 (:shape-name "CreatePlanResponse"))

(smithy/sdk/shapes:define-structure custom-action-lambda-configuration
                                    common-lisp:nil
                                    ((timeout-minutes :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "timeoutMinutes")
                                     (lambdas :target-type lambda-list
                                      :required common-lisp:t :member-name
                                      "lambdas")
                                     (retry-interval-minutes :target-type
                                      smithy/sdk/smithy-types:float :required
                                      common-lisp:t :member-name
                                      "retryIntervalMinutes")
                                     (region-to-run :target-type
                                      region-to-run-in :required common-lisp:t
                                      :member-name "regionToRun")
                                     (ungraceful :target-type lambda-ungraceful
                                      :member-name "ungraceful"))
                                    (:shape-name
                                     "CustomActionLambdaConfiguration"))

(smithy/sdk/shapes:define-input delete-plan-request common-lisp:nil
                                ((arn :target-type plan-arn :required
                                  common-lisp:t :member-name "arn"))
                                (:shape-name "DeletePlanRequest"))

(smithy/sdk/shapes:define-output delete-plan-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeletePlanResponse"))

(smithy/sdk/shapes:define-type duration smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ec2asg-capacity-increase-configuration
                                    common-lisp:nil
                                    ((timeout-minutes :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "timeoutMinutes")
                                     (asgs :target-type asg-list :required
                                      common-lisp:t :member-name "asgs")
                                     (ungraceful :target-type ec2ungraceful
                                      :member-name "ungraceful")
                                     (target-percent :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "targetPercent")
                                     (capacity-monitoring-approach :target-type
                                      ec2asg-capacity-monitoring-approach
                                      :member-name
                                      "capacityMonitoringApproach"))
                                    (:shape-name
                                     "Ec2AsgCapacityIncreaseConfiguration"))

(smithy/sdk/shapes:define-enum ec2asg-capacity-monitoring-approach
    common-lisp:nil
  (:sampled-max-in-last-24-hours "sampledMaxInLast24Hours")
  (:autoscaling-max-in-last-24-hours "autoscalingMaxInLast24Hours"))

(smithy/sdk/shapes:define-structure ec2ungraceful common-lisp:nil
                                    ((minimum-success-percentage :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "minimumSuccessPercentage"))
                                    (:shape-name "Ec2Ungraceful"))

(smithy/sdk/shapes:define-structure ecs-capacity-increase-configuration
                                    common-lisp:nil
                                    ((timeout-minutes :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "timeoutMinutes")
                                     (services :target-type service-list
                                      :required common-lisp:t :member-name
                                      "services")
                                     (ungraceful :target-type ecs-ungraceful
                                      :member-name "ungraceful")
                                     (target-percent :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "targetPercent")
                                     (capacity-monitoring-approach :target-type
                                      ecs-capacity-monitoring-approach
                                      :member-name
                                      "capacityMonitoringApproach"))
                                    (:shape-name
                                     "EcsCapacityIncreaseConfiguration"))

(smithy/sdk/shapes:define-enum ecs-capacity-monitoring-approach
    common-lisp:nil
  (:sampled-max-in-last-24-hours "sampledMaxInLast24Hours")
  (:container-insights-max-in-last-24-hours
   "containerInsightsMaxInLast24Hours"))

(smithy/sdk/shapes:define-type ecs-cluster-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ecs-service-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ecs-ungraceful common-lisp:nil
                                    ((minimum-success-percentage :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "minimumSuccessPercentage"))
                                    (:shape-name "EcsUngraceful"))

(smithy/sdk/shapes:define-enum eks-capacity-monitoring-approach
    common-lisp:nil
  (:sampled-max-in-last-24-hours "sampledMaxInLast24Hours"))

(smithy/sdk/shapes:define-structure eks-cluster common-lisp:nil
                                    ((cross-account-role :target-type
                                      iam-role-arn :member-name
                                      "crossAccountRole")
                                     (external-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "externalId")
                                     (cluster-arn :target-type eks-cluster-arn
                                      :required common-lisp:t :member-name
                                      "clusterArn"))
                                    (:shape-name "EksCluster"))

(smithy/sdk/shapes:define-type eks-cluster-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list eks-clusters :member eks-cluster)

(smithy/sdk/shapes:define-structure eks-resource-scaling-configuration
                                    common-lisp:nil
                                    ((timeout-minutes :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "timeoutMinutes")
                                     (kubernetes-resource-type :target-type
                                      kubernetes-resource-type :required
                                      common-lisp:t :member-name
                                      "kubernetesResourceType")
                                     (scaling-resources :target-type
                                      kubernetes-scaling-apps :member-name
                                      "scalingResources")
                                     (eks-clusters :target-type eks-clusters
                                      :member-name "eksClusters")
                                     (ungraceful :target-type
                                      eks-resource-scaling-ungraceful
                                      :member-name "ungraceful")
                                     (target-percent :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "targetPercent")
                                     (capacity-monitoring-approach :target-type
                                      eks-capacity-monitoring-approach
                                      :member-name
                                      "capacityMonitoringApproach"))
                                    (:shape-name
                                     "EksResourceScalingConfiguration"))

(smithy/sdk/shapes:define-structure eks-resource-scaling-ungraceful
                                    common-lisp:nil
                                    ((minimum-success-percentage :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "minimumSuccessPercentage"))
                                    (:shape-name
                                     "EksResourceScalingUngraceful"))

(smithy/sdk/shapes:define-enum evaluation-status
    common-lisp:nil
  (:passed "passed")
  (:action-required "actionRequired")
  (:pending-evaluation "pendingEvaluation")
  (:unknown "unknown"))

(smithy/sdk/shapes:define-enum execution-action
    common-lisp:nil
  (:activate "activate")
  (:deactivate "deactivate"))

(smithy/sdk/shapes:define-structure execution-approval-configuration
                                    common-lisp:nil
                                    ((timeout-minutes :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "timeoutMinutes")
                                     (approval-role :target-type role-arn
                                      :required common-lisp:t :member-name
                                      "approvalRole"))
                                    (:shape-name
                                     "ExecutionApprovalConfiguration"))

(smithy/sdk/shapes:define-union execution-block-configuration common-lisp:nil
                                ((custom-action-lambda-config :target-type
                                  custom-action-lambda-configuration
                                  :member-name "customActionLambdaConfig")
                                 (ec2asg-capacity-increase-config :target-type
                                  ec2asg-capacity-increase-configuration
                                  :member-name "ec2AsgCapacityIncreaseConfig")
                                 (execution-approval-config :target-type
                                  execution-approval-configuration :member-name
                                  "executionApprovalConfig")
                                 (arc-routing-control-config :target-type
                                  arc-routing-control-configuration
                                  :member-name "arcRoutingControlConfig")
                                 (global-aurora-config :target-type
                                  global-aurora-configuration :member-name
                                  "globalAuroraConfig")
                                 (parallel-config :target-type
                                  parallel-execution-block-configuration
                                  :member-name "parallelConfig")
                                 (region-switch-plan-config :target-type
                                  region-switch-plan-configuration :member-name
                                  "regionSwitchPlanConfig")
                                 (ecs-capacity-increase-config :target-type
                                  ecs-capacity-increase-configuration
                                  :member-name "ecsCapacityIncreaseConfig")
                                 (eks-resource-scaling-config :target-type
                                  eks-resource-scaling-configuration
                                  :member-name "eksResourceScalingConfig")
                                 (route53health-check-config :target-type
                                  route53health-check-configuration
                                  :member-name "route53HealthCheckConfig"))
                                (:shape-name "ExecutionBlockConfiguration"))

(smithy/sdk/shapes:define-enum execution-block-type
    common-lisp:nil
  (:custom-action-lambda "CustomActionLambda")
  (:execution-approval "ManualApproval")
  (:aurora "AuroraGlobalDatabase")
  (:ec2-asg "EC2AutoScaling")
  (:routing-control "ARCRoutingControl")
  (:region-switch "ARCRegionSwitchPlan")
  (:parallel "Parallel")
  (:ecs "ECSServiceScaling")
  (:eks-resource-scaling "EKSResourceScaling")
  (:route53-health-check "Route53HealthCheck"))

(smithy/sdk/shapes:define-type execution-comment smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure execution-event common-lisp:nil
                                    ((timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "timestamp")
                                     (type :target-type execution-event-type
                                      :member-name "type")
                                     (step-name :target-type step-name
                                      :member-name "stepName")
                                     (execution-block-type :target-type
                                      execution-block-type :member-name
                                      "executionBlockType")
                                     (resources :target-type resources
                                      :member-name "resources")
                                     (error :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "error")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (event-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "eventId")
                                     (previous-event-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "previousEventId"))
                                    (:shape-name "ExecutionEvent"))

(smithy/sdk/shapes:define-list execution-event-list :member execution-event)

(smithy/sdk/shapes:define-enum execution-event-type
    common-lisp:nil
  (:unknown "unknown")
  (:execution-pending "executionPending")
  (:execution-started "executionStarted")
  (:execution-succeeded "executionSucceeded")
  (:execution-failed "executionFailed")
  (:execution-pausing "executionPausing")
  (:execution-paused "executionPaused")
  (:execution-canceling "executionCanceling")
  (:execution-canceled "executionCanceled")
  (:execution-pending-approval "executionPendingApproval")
  (:execution-behavior-changed-to-ungraceful
   "executionBehaviorChangedToUngraceful")
  (:execution-behavior-changed-to-graceful "executionBehaviorChangedToGraceful")
  (:execution-pending-child-plan-manual-approval
   "executionPendingChildPlanManualApproval")
  (:execution-success-monitoring-application-health
   "executionSuccessMonitoringApplicationHealth")
  (:step-started "stepStarted")
  (:step-update "stepUpdate")
  (:step-succeeded "stepSucceeded")
  (:step-failed "stepFailed")
  (:step-skipped "stepSkipped")
  (:step-paused-by-error "stepPausedByError")
  (:step-paused-by-operator "stepPausedByOperator")
  (:step-canceled "stepCanceled")
  (:step-pending-approval "stepPendingApproval")
  (:step-execution-behavior-changed-to-ungraceful
   "stepExecutionBehaviorChangedToUngraceful")
  (:step-pending-application-health-monitor
   "stepPendingApplicationHealthMonitor"))

(smithy/sdk/shapes:define-type execution-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum execution-mode
    common-lisp:nil
  (:graceful "graceful")
  (:ungraceful "ungraceful"))

(smithy/sdk/shapes:define-enum execution-state
    common-lisp:nil
  (:in-progress "inProgress")
  (:paused-by-failed-step "pausedByFailedStep")
  (:paused-by-operator "pausedByOperator")
  (:completed "completed")
  (:completed-with-exceptions "completedWithExceptions")
  (:cancelled "canceled")
  (:plan-execution-timed-out "planExecutionTimedOut")
  (:pending-manual-approval "pendingManualApproval")
  (:failed "failed")
  (:pending "pending")
  (:completed-monitoring-application-health
   "completedMonitoringApplicationHealth"))

(smithy/sdk/shapes:define-input get-plan-evaluation-status-request
                                common-lisp:nil
                                ((plan-arn :target-type plan-arn :required
                                  common-lisp:t :member-name "planArn")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "GetPlanEvaluationStatusRequest"))

(smithy/sdk/shapes:define-output get-plan-evaluation-status-response
                                 common-lisp:nil
                                 ((plan-arn :target-type plan-arn :required
                                   common-lisp:t :member-name "planArn")
                                  (last-evaluation-time :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "lastEvaluationTime")
                                  (last-evaluated-version :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "lastEvaluatedVersion")
                                  (region :target-type region :member-name
                                   "region")
                                  (evaluation-state :target-type
                                   evaluation-status :member-name
                                   "evaluationState")
                                  (warnings :target-type plan-warnings
                                   :member-name "warnings")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "GetPlanEvaluationStatusResponse"))

(smithy/sdk/shapes:define-input get-plan-execution-request common-lisp:nil
                                ((plan-arn :target-type plan-arn :required
                                  common-lisp:t :member-name "planArn")
                                 (execution-id :target-type execution-id
                                  :required common-lisp:t :member-name
                                  "executionId")
                                 (max-results :target-type
                                  get-plan-execution-step-states-max-results
                                  :member-name "maxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken"))
                                (:shape-name "GetPlanExecutionRequest"))

(smithy/sdk/shapes:define-output get-plan-execution-response common-lisp:nil
                                 ((plan-arn :target-type plan-arn :required
                                   common-lisp:t :member-name "planArn")
                                  (execution-id :target-type execution-id
                                   :required common-lisp:t :member-name
                                   "executionId")
                                  (version :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "version")
                                  (updated-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "updatedAt")
                                  (comment :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "comment")
                                  (start-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "startTime")
                                  (end-time :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "endTime")
                                  (mode :target-type execution-mode :required
                                   common-lisp:t :member-name "mode")
                                  (execution-state :target-type execution-state
                                   :required common-lisp:t :member-name
                                   "executionState")
                                  (execution-action :target-type
                                   execution-action :required common-lisp:t
                                   :member-name "executionAction")
                                  (execution-region :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "executionRegion")
                                  (step-states :target-type step-states
                                   :member-name "stepStates")
                                  (plan :target-type plan :member-name "plan")
                                  (actual-recovery-time :target-type duration
                                   :member-name "actualRecoveryTime")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name "GetPlanExecutionResponse"))

(smithy/sdk/shapes:define-type get-plan-execution-step-states-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input get-plan-in-region-request common-lisp:nil
                                ((arn :target-type plan-arn :required
                                  common-lisp:t :member-name "arn"))
                                (:shape-name "GetPlanInRegionRequest"))

(smithy/sdk/shapes:define-output get-plan-in-region-response common-lisp:nil
                                 ((plan :target-type plan :member-name "plan"))
                                 (:shape-name "GetPlanInRegionResponse"))

(smithy/sdk/shapes:define-input get-plan-request common-lisp:nil
                                ((arn :target-type plan-arn :required
                                  common-lisp:t :member-name "arn"))
                                (:shape-name "GetPlanRequest"))

(smithy/sdk/shapes:define-output get-plan-response common-lisp:nil
                                 ((plan :target-type plan :member-name "plan"))
                                 (:shape-name "GetPlanResponse"))

(smithy/sdk/shapes:define-structure global-aurora-configuration common-lisp:nil
                                    ((timeout-minutes :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "timeoutMinutes")
                                     (cross-account-role :target-type
                                      iam-role-arn :member-name
                                      "crossAccountRole")
                                     (external-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "externalId")
                                     (behavior :target-type
                                      global-aurora-default-behavior :required
                                      common-lisp:t :member-name "behavior")
                                     (ungraceful :target-type
                                      global-aurora-ungraceful :member-name
                                      "ungraceful")
                                     (global-cluster-identifier :target-type
                                      global-cluster-identifier :required
                                      common-lisp:t :member-name
                                      "globalClusterIdentifier")
                                     (database-cluster-arns :target-type
                                      aurora-cluster-arns :required
                                      common-lisp:t :member-name
                                      "databaseClusterArns"))
                                    (:shape-name "GlobalAuroraConfiguration"))

(smithy/sdk/shapes:define-enum global-aurora-default-behavior
    common-lisp:nil
  (:switchover-only "switchoverOnly")
  (:failover "failover"))

(smithy/sdk/shapes:define-structure global-aurora-ungraceful common-lisp:nil
                                    ((ungraceful :target-type
                                      global-aurora-ungraceful-behavior
                                      :member-name "ungraceful"))
                                    (:shape-name "GlobalAuroraUngraceful"))

(smithy/sdk/shapes:define-enum global-aurora-ungraceful-behavior
    common-lisp:nil
  (:failover "failover"))

(smithy/sdk/shapes:define-type global-cluster-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type iam-role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error illegal-argument-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "IllegalArgumentException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error illegal-state-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "IllegalStateException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type kubernetes-namespace
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure kubernetes-resource-type common-lisp:nil
                                    ((api-version :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "apiVersion")
                                     (kind :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "kind"))
                                    (:shape-name "KubernetesResourceType"))

(smithy/sdk/shapes:define-map kubernetes-scaling-application :key
                              smithy/sdk/smithy-types:string :value
                              regional-scaling-resource)

(smithy/sdk/shapes:define-list kubernetes-scaling-apps :member
                               kubernetes-scaling-application)

(smithy/sdk/shapes:define-structure kubernetes-scaling-resource common-lisp:nil
                                    ((namespace :target-type
                                      kubernetes-namespace :required
                                      common-lisp:t :member-name "namespace")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (hpa-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "hpaName"))
                                    (:shape-name "KubernetesScalingResource"))

(smithy/sdk/shapes:define-type lambda-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list lambda-list :member lambdas)

(smithy/sdk/shapes:define-structure lambda-ungraceful common-lisp:nil
                                    ((behavior :target-type
                                      lambda-ungraceful-behavior :member-name
                                      "behavior"))
                                    (:shape-name "LambdaUngraceful"))

(smithy/sdk/shapes:define-enum lambda-ungraceful-behavior
    common-lisp:nil
  (:skip "skip"))

(smithy/sdk/shapes:define-structure lambdas common-lisp:nil
                                    ((cross-account-role :target-type
                                      iam-role-arn :member-name
                                      "crossAccountRole")
                                     (external-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "externalId")
                                     (arn :target-type lambda-arn :member-name
                                      "arn"))
                                    (:shape-name "Lambdas"))

(smithy/sdk/shapes:define-type list-execution-events-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type list-executions-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-plan-execution-events-request
                                common-lisp:nil
                                ((plan-arn :target-type plan-arn :required
                                  common-lisp:t :member-name "planArn")
                                 (execution-id :target-type execution-id
                                  :required common-lisp:t :member-name
                                  "executionId")
                                 (max-results :target-type
                                  list-execution-events-max-results
                                  :member-name "maxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken")
                                 (name :target-type step-name :member-name
                                  "name"))
                                (:shape-name "ListPlanExecutionEventsRequest"))

(smithy/sdk/shapes:define-output list-plan-execution-events-response
                                 common-lisp:nil
                                 ((items :target-type execution-event-list
                                   :member-name "items")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "ListPlanExecutionEventsResponse"))

(smithy/sdk/shapes:define-input list-plan-executions-request common-lisp:nil
                                ((plan-arn :target-type plan-arn :required
                                  common-lisp:t :member-name "planArn")
                                 (max-results :target-type
                                  list-executions-max-results :member-name
                                  "maxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken")
                                 (state :target-type execution-state
                                  :member-name "state"))
                                (:shape-name "ListPlanExecutionsRequest"))

(smithy/sdk/shapes:define-output list-plan-executions-response common-lisp:nil
                                 ((items :target-type
                                   abbreviated-executions-list :member-name
                                   "items")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name "ListPlanExecutionsResponse"))

(smithy/sdk/shapes:define-input list-plans-in-region-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListPlansInRegionRequest"))

(smithy/sdk/shapes:define-output list-plans-in-region-response common-lisp:nil
                                 ((plans :target-type plan-list :member-name
                                   "plans")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListPlansInRegionResponse"))

(smithy/sdk/shapes:define-input list-plans-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListPlansRequest"))

(smithy/sdk/shapes:define-output list-plans-response common-lisp:nil
                                 ((plans :target-type plan-list :member-name
                                   "plans")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListPlansResponse"))

(smithy/sdk/shapes:define-input list-route53health-checks-request
                                common-lisp:nil
                                ((arn :target-type plan-arn :required
                                  common-lisp:t :member-name "arn")
                                 (hosted-zone-id :target-type
                                  route53hosted-zone-id :member-name
                                  "hostedZoneId")
                                 (record-name :target-type route53record-name
                                  :member-name "recordName")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListRoute53HealthChecksRequest"))

(smithy/sdk/shapes:define-output list-route53health-checks-response
                                 common-lisp:nil
                                 ((health-checks :target-type
                                   route53health-check-list :member-name
                                   "healthChecks")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListRoute53HealthChecksResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((arn :target-type plan-arn :required
                                  common-lisp:t :member-name "arn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((resource-tags :target-type tags :member-name
                                   "resourceTags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure minimal-workflow common-lisp:nil
                                    ((action :target-type execution-action
                                      :member-name "action")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name"))
                                    (:shape-name "MinimalWorkflow"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure parallel-execution-block-configuration
                                    common-lisp:nil
                                    ((steps :target-type steps :required
                                      common-lisp:t :member-name "steps"))
                                    (:shape-name
                                     "ParallelExecutionBlockConfiguration"))

(smithy/sdk/shapes:define-structure plan common-lisp:nil
                                    ((arn :target-type plan-arn :required
                                      common-lisp:t :member-name "arn")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (workflows :target-type workflow-list
                                      :required common-lisp:t :member-name
                                      "workflows")
                                     (execution-role :target-type iam-role-arn
                                      :required common-lisp:t :member-name
                                      "executionRole")
                                     (recovery-time-objective-minutes
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "recoveryTimeObjectiveMinutes")
                                     (associated-alarms :target-type
                                      associated-alarm-map :member-name
                                      "associatedAlarms")
                                     (triggers :target-type trigger-list
                                      :member-name "triggers")
                                     (name :target-type plan-name :required
                                      common-lisp:t :member-name "name")
                                     (regions :target-type region-list
                                      :required common-lisp:t :member-name
                                      "regions")
                                     (recovery-approach :target-type
                                      recovery-approach :required common-lisp:t
                                      :member-name "recoveryApproach")
                                     (primary-region :target-type region
                                      :member-name "primaryRegion")
                                     (owner :target-type account-id :required
                                      common-lisp:t :member-name "owner")
                                     (version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "version")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "updatedAt"))
                                    (:shape-name "Plan"))

(smithy/sdk/shapes:define-type plan-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list plan-list :member abbreviated-plan)

(smithy/sdk/shapes:define-type plan-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list plan-warnings :member resource-warning)

(smithy/sdk/shapes:define-enum recovery-approach
    common-lisp:nil
  (:active-active "activeActive")
  (:active-passive "activePassive"))

(smithy/sdk/shapes:define-type region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map region-and-routing-controls :key
                              smithy/sdk/smithy-types:string :value
                              arc-routing-control-states)

(smithy/sdk/shapes:define-list region-list :member region)

common-lisp:nil

(smithy/sdk/shapes:define-structure region-switch-plan-configuration
                                    common-lisp:nil
                                    ((cross-account-role :target-type
                                      iam-role-arn :member-name
                                      "crossAccountRole")
                                     (external-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "externalId")
                                     (arn :target-type plan-arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name
                                     "RegionSwitchPlanConfiguration"))

(smithy/sdk/shapes:define-enum region-to-run-in
    common-lisp:nil
  (:activating-region "activatingRegion")
  (:deactivating-region "deactivatingRegion"))

(smithy/sdk/shapes:define-map regional-scaling-resource :key region :value
                              kubernetes-scaling-resource)

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure resource-warning common-lisp:nil
                                    ((workflow :target-type minimal-workflow
                                      :member-name "workflow")
                                     (version :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "version")
                                     (step-name :target-type step-name
                                      :member-name "stepName")
                                     (resource-arn :target-type resource-arn
                                      :member-name "resourceArn")
                                     (warning-status :target-type
                                      resource-warning-status :required
                                      common-lisp:t :member-name
                                      "warningStatus")
                                     (warning-updated-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "warningUpdatedTime")
                                     (warning-message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "warningMessage"))
                                    (:shape-name "ResourceWarning"))

(smithy/sdk/shapes:define-enum resource-warning-status
    common-lisp:nil
  (:active "active")
  (:resolved "resolved"))

(smithy/sdk/shapes:define-list resources :member smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure route53health-check common-lisp:nil
                                    ((hosted-zone-id :target-type
                                      route53hosted-zone-id :required
                                      common-lisp:t :member-name
                                      "hostedZoneId")
                                     (record-name :target-type
                                      route53record-name :required
                                      common-lisp:t :member-name "recordName")
                                     (health-check-id :target-type
                                      route53health-check-id :member-name
                                      "healthCheckId")
                                     (region :target-type region :required
                                      common-lisp:t :member-name "region"))
                                    (:shape-name "Route53HealthCheck"))

(smithy/sdk/shapes:define-structure route53health-check-configuration
                                    common-lisp:nil
                                    ((timeout-minutes :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "timeoutMinutes")
                                     (cross-account-role :target-type
                                      iam-role-arn :member-name
                                      "crossAccountRole")
                                     (external-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "externalId")
                                     (hosted-zone-id :target-type
                                      route53hosted-zone-id :required
                                      common-lisp:t :member-name
                                      "hostedZoneId")
                                     (record-name :target-type
                                      route53record-name :required
                                      common-lisp:t :member-name "recordName")
                                     (record-sets :target-type
                                      route53resource-record-set-list
                                      :member-name "recordSets"))
                                    (:shape-name
                                     "Route53HealthCheckConfiguration"))

(smithy/sdk/shapes:define-type route53health-check-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list route53health-check-list :member
                               route53health-check)

(smithy/sdk/shapes:define-type route53hosted-zone-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type route53record-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure route53resource-record-set common-lisp:nil
                                    ((record-set-identifier :target-type
                                      route53resource-record-set-identifier
                                      :member-name "recordSetIdentifier")
                                     (region :target-type region :member-name
                                      "region"))
                                    (:shape-name "Route53ResourceRecordSet"))

(smithy/sdk/shapes:define-type route53resource-record-set-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list route53resource-record-set-list :member
                               route53resource-record-set)

(smithy/sdk/shapes:define-type routing-control-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum routing-control-state-change
    common-lisp:nil
  (:on "On")
  (:off "Off"))

(smithy/sdk/shapes:define-structure service common-lisp:nil
                                    ((cross-account-role :target-type
                                      iam-role-arn :member-name
                                      "crossAccountRole")
                                     (external-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "externalId")
                                     (cluster-arn :target-type ecs-cluster-arn
                                      :member-name "clusterArn")
                                     (service-arn :target-type ecs-service-arn
                                      :member-name "serviceArn"))
                                    (:shape-name "Service"))

(smithy/sdk/shapes:define-list service-list :member service)

(smithy/sdk/shapes:define-input start-plan-execution-request common-lisp:nil
                                ((plan-arn :target-type plan-arn :required
                                  common-lisp:t :member-name "planArn")
                                 (target-region :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "targetRegion")
                                 (action :target-type execution-action
                                  :required common-lisp:t :member-name
                                  "action")
                                 (mode :target-type execution-mode :member-name
                                  "mode")
                                 (comment :target-type execution-comment
                                  :member-name "comment")
                                 (latest-version :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "latestVersion"))
                                (:shape-name "StartPlanExecutionRequest"))

(smithy/sdk/shapes:define-output start-plan-execution-response common-lisp:nil
                                 ((execution-id :target-type execution-id
                                   :member-name "executionId")
                                  (plan :target-type plan-arn :member-name
                                   "plan")
                                  (plan-version :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "planVersion")
                                  (activate-region :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "activateRegion")
                                  (deactivate-region :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "deactivateRegion"))
                                 (:shape-name "StartPlanExecutionResponse"))

(smithy/sdk/shapes:define-structure step common-lisp:nil
                                    ((name :target-type step-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (execution-block-configuration
                                      :target-type
                                      execution-block-configuration :required
                                      common-lisp:t :member-name
                                      "executionBlockConfiguration")
                                     (execution-block-type :target-type
                                      execution-block-type :required
                                      common-lisp:t :member-name
                                      "executionBlockType"))
                                    (:shape-name "Step"))

(smithy/sdk/shapes:define-type step-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure step-state common-lisp:nil
                                    ((name :target-type step-name :member-name
                                      "name")
                                     (status :target-type step-status
                                      :member-name "status")
                                     (start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "startTime")
                                     (end-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "endTime")
                                     (step-mode :target-type execution-mode
                                      :member-name "stepMode"))
                                    (:shape-name "StepState"))

(smithy/sdk/shapes:define-list step-states :member step-state)

(smithy/sdk/shapes:define-enum step-status
    common-lisp:nil
  (:not-started "notStarted")
  (:running "running")
  (:failed "failed")
  (:completed "completed")
  (:cancelled "canceled")
  (:skipped "skipped")
  (:pending-approval "pendingApproval"))

(smithy/sdk/shapes:define-list steps :member step)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((arn :target-type plan-arn :required
                                  common-lisp:t :member-name "arn")
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map tags :key tag-key :value tag-value)

(smithy/sdk/shapes:define-structure trigger common-lisp:nil
                                    ((description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (target-region :target-type region
                                      :required common-lisp:t :member-name
                                      "targetRegion")
                                     (action :target-type
                                      workflow-target-action :required
                                      common-lisp:t :member-name "action")
                                     (conditions :target-type
                                      trigger-condition-list :required
                                      common-lisp:t :member-name "conditions")
                                     (min-delay-minutes-between-executions
                                      :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "minDelayMinutesBetweenExecutions"))
                                    (:shape-name "Trigger"))

(smithy/sdk/shapes:define-structure trigger-condition common-lisp:nil
                                    ((associated-alarm-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "associatedAlarmName")
                                     (condition :target-type alarm-condition
                                      :required common-lisp:t :member-name
                                      "condition"))
                                    (:shape-name "TriggerCondition"))

(smithy/sdk/shapes:define-list trigger-condition-list :member trigger-condition)

(smithy/sdk/shapes:define-list trigger-list :member trigger)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((arn :target-type plan-arn :required
                                  common-lisp:t :member-name "arn")
                                 (resource-tag-keys :target-type tag-keys
                                  :required common-lisp:t :member-name
                                  "resourceTagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-enum update-plan-execution-action
    common-lisp:nil
  (:switch-to-graceful "switchToGraceful")
  (:switch-to-ungraceful "switchToUngraceful")
  (:pause "pause")
  (:resume "resume"))

(smithy/sdk/shapes:define-input update-plan-execution-request common-lisp:nil
                                ((plan-arn :target-type plan-arn :required
                                  common-lisp:t :member-name "planArn")
                                 (execution-id :target-type execution-id
                                  :required common-lisp:t :member-name
                                  "executionId")
                                 (action :target-type
                                  update-plan-execution-action :required
                                  common-lisp:t :member-name "action")
                                 (comment :target-type execution-comment
                                  :member-name "comment"))
                                (:shape-name "UpdatePlanExecutionRequest"))

(smithy/sdk/shapes:define-output update-plan-execution-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdatePlanExecutionResponse"))

(smithy/sdk/shapes:define-enum update-plan-execution-step-action
    common-lisp:nil
  (:switch-to-ungraceful "switchToUngraceful")
  (:skip "skip"))

(smithy/sdk/shapes:define-input update-plan-execution-step-request
                                common-lisp:nil
                                ((plan-arn :target-type plan-arn :required
                                  common-lisp:t :member-name "planArn")
                                 (execution-id :target-type execution-id
                                  :required common-lisp:t :member-name
                                  "executionId")
                                 (comment :target-type execution-comment
                                  :required common-lisp:t :member-name
                                  "comment")
                                 (step-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "stepName")
                                 (action-to-take :target-type
                                  update-plan-execution-step-action :required
                                  common-lisp:t :member-name "actionToTake"))
                                (:shape-name "UpdatePlanExecutionStepRequest"))

(smithy/sdk/shapes:define-output update-plan-execution-step-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdatePlanExecutionStepResponse"))

(smithy/sdk/shapes:define-input update-plan-request common-lisp:nil
                                ((arn :target-type plan-arn :required
                                  common-lisp:t :member-name "arn")
                                 (description :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "description")
                                 (workflows :target-type workflow-list
                                  :required common-lisp:t :member-name
                                  "workflows")
                                 (execution-role :target-type iam-role-arn
                                  :required common-lisp:t :member-name
                                  "executionRole")
                                 (recovery-time-objective-minutes :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "recoveryTimeObjectiveMinutes")
                                 (associated-alarms :target-type
                                  associated-alarm-map :member-name
                                  "associatedAlarms")
                                 (triggers :target-type trigger-list
                                  :member-name "triggers"))
                                (:shape-name "UpdatePlanRequest"))

(smithy/sdk/shapes:define-output update-plan-response common-lisp:nil
                                 ((plan :target-type plan :member-name "plan"))
                                 (:shape-name "UpdatePlanResponse"))

(smithy/sdk/shapes:define-structure workflow common-lisp:nil
                                    ((steps :target-type steps :member-name
                                      "steps")
                                     (workflow-target-action :target-type
                                      workflow-target-action :required
                                      common-lisp:t :member-name
                                      "workflowTargetAction")
                                     (workflow-target-region :target-type
                                      region :member-name
                                      "workflowTargetRegion")
                                     (workflow-description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "workflowDescription"))
                                    (:shape-name "Workflow"))

(smithy/sdk/shapes:define-list workflow-list :member workflow)

(smithy/sdk/shapes:define-enum workflow-target-action
    common-lisp:nil
  (:activate "activate")
  (:deactivate "deactivate"))

(smithy/sdk/operation:define-operation approve-plan-execution-step :shape-name
                                       "ApprovePlanExecutionStep" :input
                                       approve-plan-execution-step-request
                                       :output
                                       approve-plan-execution-step-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation cancel-plan-execution :shape-name
                                       "CancelPlanExecution" :input
                                       cancel-plan-execution-request :output
                                       cancel-plan-execution-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-plan :shape-name "CreatePlan"
                                       :input create-plan-request :output
                                       create-plan-response :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation delete-plan :shape-name "DeletePlan"
                                       :input delete-plan-request :output
                                       delete-plan-response :errors
                                       (illegal-state-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-plan :shape-name "GetPlan" :input
                                       get-plan-request :output
                                       get-plan-response :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation get-plan-evaluation-status :shape-name
                                       "GetPlanEvaluationStatus" :input
                                       get-plan-evaluation-status-request
                                       :output
                                       get-plan-evaluation-status-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-plan-execution :shape-name
                                       "GetPlanExecution" :input
                                       get-plan-execution-request :output
                                       get-plan-execution-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-plan-in-region :shape-name
                                       "GetPlanInRegion" :input
                                       get-plan-in-region-request :output
                                       get-plan-in-region-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-plan-execution-events :shape-name
                                       "ListPlanExecutionEvents" :input
                                       list-plan-execution-events-request
                                       :output
                                       list-plan-execution-events-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-plan-executions :shape-name
                                       "ListPlanExecutions" :input
                                       list-plan-executions-request :output
                                       list-plan-executions-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-plans :shape-name "ListPlans"
                                       :input list-plans-request :output
                                       list-plans-response :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation list-plans-in-region :shape-name
                                       "ListPlansInRegion" :input
                                       list-plans-in-region-request :output
                                       list-plans-in-region-response :errors
                                       (access-denied-exception))

(smithy/sdk/operation:define-operation list-route53health-checks :shape-name
                                       "ListRoute53HealthChecks" :input
                                       list-route53health-checks-request
                                       :output
                                       list-route53health-checks-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation start-plan-execution :shape-name
                                       "StartPlanExecution" :input
                                       start-plan-execution-request :output
                                       start-plan-execution-response :errors
                                       (access-denied-exception
                                        illegal-argument-exception
                                        illegal-state-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-plan :shape-name "UpdatePlan"
                                       :input update-plan-request :output
                                       update-plan-response :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation update-plan-execution :shape-name
                                       "UpdatePlanExecution" :input
                                       update-plan-execution-request :output
                                       update-plan-execution-response :errors
                                       (access-denied-exception
                                        illegal-state-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-plan-execution-step :shape-name
                                       "UpdatePlanExecutionStep" :input
                                       update-plan-execution-step-request
                                       :output
                                       update-plan-execution-step-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception))
