(uiop/package:define-package #:pira/codedeploy (:use)
                             (:export #:add-tags-to-on-premises-instances
                              #:additional-deployment-status-info #:alarm
                              #:alarm-configuration #:alarm-list #:alarm-name
                              #:app-spec-content #:application-id
                              #:application-info #:application-name
                              #:application-revision-sort-by
                              #:applications-info-list #:applications-list
                              #:arn #:auto-rollback-configuration
                              #:auto-rollback-event #:auto-rollback-events-list
                              #:auto-scaling-group #:auto-scaling-group-hook
                              #:auto-scaling-group-list
                              #:auto-scaling-group-name
                              #:auto-scaling-group-name-list
                              #:batch-get-application-revisions
                              #:batch-get-applications
                              #:batch-get-deployment-groups
                              #:batch-get-deployment-instances
                              #:batch-get-deployment-targets
                              #:batch-get-deployments
                              #:batch-get-on-premises-instances
                              #:blue-green-deployment-configuration
                              #:blue-instance-termination-option #:boolean
                              #:bundle-type #:cloud-formation-resource-type
                              #:cloud-formation-target #:code-deploy-20141006
                              #:commit-id #:compute-platform
                              #:continue-deployment #:create-application
                              #:create-deployment #:create-deployment-config
                              #:create-deployment-group #:delete-application
                              #:delete-deployment-config
                              #:delete-deployment-group
                              #:delete-git-hub-account-token
                              #:delete-resources-by-external-id
                              #:deployment-config-id #:deployment-config-info
                              #:deployment-config-name
                              #:deployment-configs-list #:deployment-creator
                              #:deployment-group-id #:deployment-group-info
                              #:deployment-group-info-list
                              #:deployment-group-name #:deployment-groups-list
                              #:deployment-id #:deployment-info
                              #:deployment-option #:deployment-overview
                              #:deployment-ready-action
                              #:deployment-ready-option #:deployment-status
                              #:deployment-status-list
                              #:deployment-status-message-list
                              #:deployment-style #:deployment-target
                              #:deployment-target-list #:deployment-target-type
                              #:deployment-type #:deployment-wait-type
                              #:deployments-info-list #:deployments-list
                              #:deregister-on-premises-instance #:description
                              #:diagnostics #:duration #:ec2tag-filter
                              #:ec2tag-filter-list #:ec2tag-filter-type
                              #:ec2tag-set #:ec2tag-set-list #:ecscluster-name
                              #:ecsservice #:ecsservice-list #:ecsservice-name
                              #:ecstarget #:ecstask-set #:ecstask-set-count
                              #:ecstask-set-identifier #:ecstask-set-list
                              #:ecstask-set-status #:elbinfo #:elbinfo-list
                              #:elbname #:etag #:error-code #:error-information
                              #:error-message #:external-id
                              #:file-exists-behavior #:filter-value
                              #:filter-value-list #:generic-revision-info
                              #:get-application #:get-application-revision
                              #:get-deployment #:get-deployment-config
                              #:get-deployment-group #:get-deployment-instance
                              #:get-deployment-target
                              #:get-on-premises-instance
                              #:git-hub-account-token-name
                              #:git-hub-account-token-name-list
                              #:git-hub-location
                              #:green-fleet-provisioning-action
                              #:green-fleet-provisioning-option
                              #:iam-session-arn #:iam-user-arn
                              #:instance-action #:instance-arn #:instance-count
                              #:instance-id #:instance-info
                              #:instance-info-list #:instance-name
                              #:instance-name-list #:instance-status
                              #:instance-status-list #:instance-summary
                              #:instance-summary-list #:instance-target
                              #:instance-type #:instance-type-list
                              #:instances-list #:key #:lambda-function-alias
                              #:lambda-function-info #:lambda-function-name
                              #:lambda-target #:last-deployment-info
                              #:lifecycle-error-code #:lifecycle-event
                              #:lifecycle-event-hook-execution-id
                              #:lifecycle-event-list #:lifecycle-event-name
                              #:lifecycle-event-status #:lifecycle-message
                              #:list-application-revisions #:list-applications
                              #:list-deployment-configs
                              #:list-deployment-groups
                              #:list-deployment-instances
                              #:list-deployment-targets #:list-deployments
                              #:list-git-hub-account-token-names
                              #:list-on-premises-instances
                              #:list-state-filter-action
                              #:list-tags-for-resource #:listener-arn
                              #:listener-arn-list #:load-balancer-info
                              #:log-tail #:message #:minimum-healthy-hosts
                              #:minimum-healthy-hosts-per-zone
                              #:minimum-healthy-hosts-per-zone-type
                              #:minimum-healthy-hosts-per-zone-value
                              #:minimum-healthy-hosts-type
                              #:minimum-healthy-hosts-value #:next-token
                              #:nullable-boolean #:on-premises-tag-set
                              #:on-premises-tag-set-list
                              #:outdated-instances-strategy #:percentage
                              #:put-lifecycle-event-hook-execution-status
                              #:raw-string #:raw-string-content
                              #:raw-string-sha256
                              #:register-application-revision
                              #:register-on-premises-instance
                              #:registration-status #:related-deployments
                              #:remove-tags-from-on-premises-instances
                              #:repository #:revision-info #:revision-info-list
                              #:revision-location #:revision-location-list
                              #:revision-location-type #:role #:rollback-info
                              #:s3bucket #:s3key #:s3location #:script-name
                              #:skip-wait-time-for-instance-termination
                              #:sort-order #:stop-deployment #:stop-status
                              #:tag #:tag-filter #:tag-filter-list
                              #:tag-filter-type #:tag-key-list #:tag-list
                              #:tag-resource #:target-arn #:target-filter-name
                              #:target-filters #:target-group-info
                              #:target-group-info-list #:target-group-name
                              #:target-group-pair-info
                              #:target-group-pair-info-list #:target-id
                              #:target-id-list #:target-instances
                              #:target-label #:target-status #:time
                              #:time-based-canary #:time-based-linear
                              #:time-range #:timestamp #:traffic-route
                              #:traffic-routing-config #:traffic-routing-type
                              #:traffic-weight #:trigger-config
                              #:trigger-config-list #:trigger-event-type
                              #:trigger-event-type-list #:trigger-name
                              #:trigger-target-arn #:untag-resource
                              #:update-application #:update-deployment-group
                              #:value #:version #:version-id
                              #:wait-time-in-mins #:wait-time-in-seconds
                              #:zonal-config))
(common-lisp:in-package #:pira/codedeploy)

(smithy/sdk/service:define-service code-deploy-20141006 :shape-name
                                   "CodeDeploy_20141006" :version "2014-10-06"
                                   :title "AWS CodeDeploy" :xml-namespace
                                   '(:uri
                                     "http://codedeploy.amazonaws.com/doc/2014-10-06/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "CodeDeploy")
                                      ("arnNamespace" . "codedeploy")
                                      ("cloudFormationName" . "CodeDeploy")
                                      ("cloudTrailEventSource"
                                       . "codedeploy.amazonaws.com")
                                      ("endpointPrefix" . "codedeploy"))
                                     ("aws.auth#sigv4" ("name" . "codedeploy"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-input add-tags-to-on-premises-instances-input
                                common-lisp:nil
                                ((tags :target-type tag-list :required
                                  common-lisp:t :member-name "tags")
                                 (instance-names :target-type
                                  instance-name-list :required common-lisp:t
                                  :member-name "instanceNames"))
                                (:shape-name
                                 "AddTagsToOnPremisesInstancesInput"))

(smithy/sdk/shapes:define-type additional-deployment-status-info
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure alarm common-lisp:nil
                                    ((name :target-type alarm-name :member-name
                                      "name"))
                                    (:shape-name "Alarm"))

(smithy/sdk/shapes:define-structure alarm-configuration common-lisp:nil
                                    ((enabled :target-type boolean :member-name
                                      "enabled")
                                     (ignore-poll-alarm-failure :target-type
                                      boolean :member-name
                                      "ignorePollAlarmFailure")
                                     (alarms :target-type alarm-list
                                      :member-name "alarms"))
                                    (:shape-name "AlarmConfiguration"))

(smithy/sdk/shapes:define-list alarm-list :member alarm)

(smithy/sdk/shapes:define-type alarm-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error alarms-limit-exceeded-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "AlarmsLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure app-spec-content common-lisp:nil
                                    ((content :target-type raw-string-content
                                      :member-name "content")
                                     (sha256 :target-type raw-string-sha256
                                      :member-name "sha256"))
                                    (:shape-name "AppSpecContent"))

(smithy/sdk/shapes:define-error application-already-exists-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "ApplicationAlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error application-does-not-exist-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "ApplicationDoesNotExistException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type application-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure application-info common-lisp:nil
                                    ((application-id :target-type
                                      application-id :member-name
                                      "applicationId")
                                     (application-name :target-type
                                      application-name :member-name
                                      "applicationName")
                                     (create-time :target-type timestamp
                                      :member-name "createTime")
                                     (linked-to-git-hub :target-type boolean
                                      :member-name "linkedToGitHub")
                                     (git-hub-account-name :target-type
                                      git-hub-account-token-name :member-name
                                      "gitHubAccountName")
                                     (compute-platform :target-type
                                      compute-platform :member-name
                                      "computePlatform"))
                                    (:shape-name "ApplicationInfo"))

(smithy/sdk/shapes:define-error application-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "ApplicationLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type application-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error application-name-required-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "ApplicationNameRequiredException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum application-revision-sort-by
    common-lisp:nil
  (:register-time "registerTime")
  (:first-used-time "firstUsedTime")
  (:last-used-time "lastUsedTime"))

(smithy/sdk/shapes:define-list applications-info-list :member application-info)

(smithy/sdk/shapes:define-list applications-list :member application-name)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error arn-not-supported-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "ArnNotSupportedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure auto-rollback-configuration common-lisp:nil
                                    ((enabled :target-type boolean :member-name
                                      "enabled")
                                     (events :target-type
                                      auto-rollback-events-list :member-name
                                      "events"))
                                    (:shape-name "AutoRollbackConfiguration"))

(smithy/sdk/shapes:define-enum auto-rollback-event
    common-lisp:nil
  (:deployment-failure "DEPLOYMENT_FAILURE")
  (:deployment-stop-on-alarm "DEPLOYMENT_STOP_ON_ALARM")
  (:deployment-stop-on-request "DEPLOYMENT_STOP_ON_REQUEST"))

(smithy/sdk/shapes:define-list auto-rollback-events-list :member
                               auto-rollback-event)

(smithy/sdk/shapes:define-structure auto-scaling-group common-lisp:nil
                                    ((name :target-type auto-scaling-group-name
                                      :member-name "name")
                                     (hook :target-type auto-scaling-group-hook
                                      :member-name "hook")
                                     (termination-hook :target-type
                                      auto-scaling-group-hook :member-name
                                      "terminationHook"))
                                    (:shape-name "AutoScalingGroup"))

(smithy/sdk/shapes:define-type auto-scaling-group-hook
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list auto-scaling-group-list :member
                               auto-scaling-group)

(smithy/sdk/shapes:define-type auto-scaling-group-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list auto-scaling-group-name-list :member
                               auto-scaling-group-name)

(smithy/sdk/shapes:define-input batch-get-application-revisions-input
                                common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "applicationName")
                                 (revisions :target-type revision-location-list
                                  :required common-lisp:t :member-name
                                  "revisions"))
                                (:shape-name
                                 "BatchGetApplicationRevisionsInput"))

(smithy/sdk/shapes:define-output batch-get-application-revisions-output
                                 common-lisp:nil
                                 ((application-name :target-type
                                   application-name :member-name
                                   "applicationName")
                                  (error-message :target-type error-message
                                   :member-name "errorMessage")
                                  (revisions :target-type revision-info-list
                                   :member-name "revisions"))
                                 (:shape-name
                                  "BatchGetApplicationRevisionsOutput"))

(smithy/sdk/shapes:define-input batch-get-applications-input common-lisp:nil
                                ((application-names :target-type
                                  applications-list :required common-lisp:t
                                  :member-name "applicationNames"))
                                (:shape-name "BatchGetApplicationsInput"))

(smithy/sdk/shapes:define-output batch-get-applications-output common-lisp:nil
                                 ((applications-info :target-type
                                   applications-info-list :member-name
                                   "applicationsInfo"))
                                 (:shape-name "BatchGetApplicationsOutput"))

(smithy/sdk/shapes:define-input batch-get-deployment-groups-input
                                common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "applicationName")
                                 (deployment-group-names :target-type
                                  deployment-groups-list :required
                                  common-lisp:t :member-name
                                  "deploymentGroupNames"))
                                (:shape-name "BatchGetDeploymentGroupsInput"))

(smithy/sdk/shapes:define-output batch-get-deployment-groups-output
                                 common-lisp:nil
                                 ((deployment-groups-info :target-type
                                   deployment-group-info-list :member-name
                                   "deploymentGroupsInfo")
                                  (error-message :target-type error-message
                                   :member-name "errorMessage"))
                                 (:shape-name "BatchGetDeploymentGroupsOutput"))

(smithy/sdk/shapes:define-input batch-get-deployment-instances-input
                                common-lisp:nil
                                ((deployment-id :target-type deployment-id
                                  :required common-lisp:t :member-name
                                  "deploymentId")
                                 (instance-ids :target-type instances-list
                                  :required common-lisp:t :member-name
                                  "instanceIds"))
                                (:shape-name
                                 "BatchGetDeploymentInstancesInput"))

(smithy/sdk/shapes:define-output batch-get-deployment-instances-output
                                 common-lisp:nil
                                 ((instances-summary :target-type
                                   instance-summary-list :member-name
                                   "instancesSummary")
                                  (error-message :target-type error-message
                                   :member-name "errorMessage"))
                                 (:shape-name
                                  "BatchGetDeploymentInstancesOutput"))

(smithy/sdk/shapes:define-input batch-get-deployment-targets-input
                                common-lisp:nil
                                ((deployment-id :target-type deployment-id
                                  :required common-lisp:t :member-name
                                  "deploymentId")
                                 (target-ids :target-type target-id-list
                                  :required common-lisp:t :member-name
                                  "targetIds"))
                                (:shape-name "BatchGetDeploymentTargetsInput"))

(smithy/sdk/shapes:define-output batch-get-deployment-targets-output
                                 common-lisp:nil
                                 ((deployment-targets :target-type
                                   deployment-target-list :member-name
                                   "deploymentTargets"))
                                 (:shape-name
                                  "BatchGetDeploymentTargetsOutput"))

(smithy/sdk/shapes:define-input batch-get-deployments-input common-lisp:nil
                                ((deployment-ids :target-type deployments-list
                                  :required common-lisp:t :member-name
                                  "deploymentIds"))
                                (:shape-name "BatchGetDeploymentsInput"))

(smithy/sdk/shapes:define-output batch-get-deployments-output common-lisp:nil
                                 ((deployments-info :target-type
                                   deployments-info-list :member-name
                                   "deploymentsInfo"))
                                 (:shape-name "BatchGetDeploymentsOutput"))

(smithy/sdk/shapes:define-input batch-get-on-premises-instances-input
                                common-lisp:nil
                                ((instance-names :target-type
                                  instance-name-list :required common-lisp:t
                                  :member-name "instanceNames"))
                                (:shape-name
                                 "BatchGetOnPremisesInstancesInput"))

(smithy/sdk/shapes:define-output batch-get-on-premises-instances-output
                                 common-lisp:nil
                                 ((instance-infos :target-type
                                   instance-info-list :member-name
                                   "instanceInfos"))
                                 (:shape-name
                                  "BatchGetOnPremisesInstancesOutput"))

(smithy/sdk/shapes:define-error batch-limit-exceeded-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "BatchLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure blue-green-deployment-configuration
                                    common-lisp:nil
                                    ((terminate-blue-instances-on-deployment-success
                                      :target-type
                                      blue-instance-termination-option
                                      :member-name
                                      "terminateBlueInstancesOnDeploymentSuccess")
                                     (deployment-ready-option :target-type
                                      deployment-ready-option :member-name
                                      "deploymentReadyOption")
                                     (green-fleet-provisioning-option
                                      :target-type
                                      green-fleet-provisioning-option
                                      :member-name
                                      "greenFleetProvisioningOption"))
                                    (:shape-name
                                     "BlueGreenDeploymentConfiguration"))

(smithy/sdk/shapes:define-structure blue-instance-termination-option
                                    common-lisp:nil
                                    ((action :target-type instance-action
                                      :member-name "action")
                                     (termination-wait-time-in-minutes
                                      :target-type duration :member-name
                                      "terminationWaitTimeInMinutes"))
                                    (:shape-name
                                     "BlueInstanceTerminationOption"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error bucket-name-filter-required-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "BucketNameFilterRequiredException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum bundle-type
    common-lisp:nil
  (:tar "tar")
  (:tar-gzip "tgz")
  (:zip "zip")
  (:yaml "YAML")
  (:json "JSON"))

(smithy/sdk/shapes:define-type cloud-formation-resource-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cloud-formation-target common-lisp:nil
                                    ((deployment-id :target-type deployment-id
                                      :member-name "deploymentId")
                                     (target-id :target-type target-id
                                      :member-name "targetId")
                                     (last-updated-at :target-type time
                                      :member-name "lastUpdatedAt")
                                     (lifecycle-events :target-type
                                      lifecycle-event-list :member-name
                                      "lifecycleEvents")
                                     (status :target-type target-status
                                      :member-name "status")
                                     (resource-type :target-type
                                      cloud-formation-resource-type
                                      :member-name "resourceType")
                                     (target-version-weight :target-type
                                      traffic-weight :member-name
                                      "targetVersionWeight"))
                                    (:shape-name "CloudFormationTarget"))

(smithy/sdk/shapes:define-type commit-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum compute-platform
    common-lisp:nil
  (:server "Server")
  (:lambda "Lambda")
  (:ecs "ECS"))

(smithy/sdk/shapes:define-input continue-deployment-input common-lisp:nil
                                ((deployment-id :target-type deployment-id
                                  :member-name "deploymentId")
                                 (deployment-wait-type :target-type
                                  deployment-wait-type :member-name
                                  "deploymentWaitType"))
                                (:shape-name "ContinueDeploymentInput"))

(smithy/sdk/shapes:define-input create-application-input common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "applicationName")
                                 (compute-platform :target-type
                                  compute-platform :member-name
                                  "computePlatform")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateApplicationInput"))

(smithy/sdk/shapes:define-output create-application-output common-lisp:nil
                                 ((application-id :target-type application-id
                                   :member-name "applicationId"))
                                 (:shape-name "CreateApplicationOutput"))

(smithy/sdk/shapes:define-input create-deployment-config-input common-lisp:nil
                                ((deployment-config-name :target-type
                                  deployment-config-name :required
                                  common-lisp:t :member-name
                                  "deploymentConfigName")
                                 (minimum-healthy-hosts :target-type
                                  minimum-healthy-hosts :member-name
                                  "minimumHealthyHosts")
                                 (traffic-routing-config :target-type
                                  traffic-routing-config :member-name
                                  "trafficRoutingConfig")
                                 (compute-platform :target-type
                                  compute-platform :member-name
                                  "computePlatform")
                                 (zonal-config :target-type zonal-config
                                  :member-name "zonalConfig"))
                                (:shape-name "CreateDeploymentConfigInput"))

(smithy/sdk/shapes:define-output create-deployment-config-output
                                 common-lisp:nil
                                 ((deployment-config-id :target-type
                                   deployment-config-id :member-name
                                   "deploymentConfigId"))
                                 (:shape-name "CreateDeploymentConfigOutput"))

(smithy/sdk/shapes:define-input create-deployment-group-input common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "applicationName")
                                 (deployment-group-name :target-type
                                  deployment-group-name :required common-lisp:t
                                  :member-name "deploymentGroupName")
                                 (deployment-config-name :target-type
                                  deployment-config-name :member-name
                                  "deploymentConfigName")
                                 (ec2tag-filters :target-type
                                  ec2tag-filter-list :member-name
                                  "ec2TagFilters")
                                 (on-premises-instance-tag-filters :target-type
                                  tag-filter-list :member-name
                                  "onPremisesInstanceTagFilters")
                                 (auto-scaling-groups :target-type
                                  auto-scaling-group-name-list :member-name
                                  "autoScalingGroups")
                                 (service-role-arn :target-type role :required
                                  common-lisp:t :member-name "serviceRoleArn")
                                 (trigger-configurations :target-type
                                  trigger-config-list :member-name
                                  "triggerConfigurations")
                                 (alarm-configuration :target-type
                                  alarm-configuration :member-name
                                  "alarmConfiguration")
                                 (auto-rollback-configuration :target-type
                                  auto-rollback-configuration :member-name
                                  "autoRollbackConfiguration")
                                 (outdated-instances-strategy :target-type
                                  outdated-instances-strategy :member-name
                                  "outdatedInstancesStrategy")
                                 (deployment-style :target-type
                                  deployment-style :member-name
                                  "deploymentStyle")
                                 (blue-green-deployment-configuration
                                  :target-type
                                  blue-green-deployment-configuration
                                  :member-name
                                  "blueGreenDeploymentConfiguration")
                                 (load-balancer-info :target-type
                                  load-balancer-info :member-name
                                  "loadBalancerInfo")
                                 (ec2tag-set :target-type ec2tag-set
                                  :member-name "ec2TagSet")
                                 (ecs-services :target-type ecsservice-list
                                  :member-name "ecsServices")
                                 (on-premises-tag-set :target-type
                                  on-premises-tag-set :member-name
                                  "onPremisesTagSet")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (termination-hook-enabled :target-type
                                  nullable-boolean :member-name
                                  "terminationHookEnabled"))
                                (:shape-name "CreateDeploymentGroupInput"))

(smithy/sdk/shapes:define-output create-deployment-group-output common-lisp:nil
                                 ((deployment-group-id :target-type
                                   deployment-group-id :member-name
                                   "deploymentGroupId"))
                                 (:shape-name "CreateDeploymentGroupOutput"))

(smithy/sdk/shapes:define-input create-deployment-input common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "applicationName")
                                 (deployment-group-name :target-type
                                  deployment-group-name :member-name
                                  "deploymentGroupName")
                                 (revision :target-type revision-location
                                  :member-name "revision")
                                 (deployment-config-name :target-type
                                  deployment-config-name :member-name
                                  "deploymentConfigName")
                                 (description :target-type description
                                  :member-name "description")
                                 (ignore-application-stop-failures :target-type
                                  boolean :member-name
                                  "ignoreApplicationStopFailures")
                                 (target-instances :target-type
                                  target-instances :member-name
                                  "targetInstances")
                                 (auto-rollback-configuration :target-type
                                  auto-rollback-configuration :member-name
                                  "autoRollbackConfiguration")
                                 (update-outdated-instances-only :target-type
                                  boolean :member-name
                                  "updateOutdatedInstancesOnly")
                                 (file-exists-behavior :target-type
                                  file-exists-behavior :member-name
                                  "fileExistsBehavior")
                                 (override-alarm-configuration :target-type
                                  alarm-configuration :member-name
                                  "overrideAlarmConfiguration"))
                                (:shape-name "CreateDeploymentInput"))

(smithy/sdk/shapes:define-output create-deployment-output common-lisp:nil
                                 ((deployment-id :target-type deployment-id
                                   :member-name "deploymentId"))
                                 (:shape-name "CreateDeploymentOutput"))

(smithy/sdk/shapes:define-input delete-application-input common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "applicationName"))
                                (:shape-name "DeleteApplicationInput"))

(smithy/sdk/shapes:define-input delete-deployment-config-input common-lisp:nil
                                ((deployment-config-name :target-type
                                  deployment-config-name :required
                                  common-lisp:t :member-name
                                  "deploymentConfigName"))
                                (:shape-name "DeleteDeploymentConfigInput"))

(smithy/sdk/shapes:define-input delete-deployment-group-input common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "applicationName")
                                 (deployment-group-name :target-type
                                  deployment-group-name :required common-lisp:t
                                  :member-name "deploymentGroupName"))
                                (:shape-name "DeleteDeploymentGroupInput"))

(smithy/sdk/shapes:define-output delete-deployment-group-output common-lisp:nil
                                 ((hooks-not-cleaned-up :target-type
                                   auto-scaling-group-list :member-name
                                   "hooksNotCleanedUp"))
                                 (:shape-name "DeleteDeploymentGroupOutput"))

(smithy/sdk/shapes:define-input delete-git-hub-account-token-input
                                common-lisp:nil
                                ((token-name :target-type
                                  git-hub-account-token-name :member-name
                                  "tokenName"))
                                (:shape-name "DeleteGitHubAccountTokenInput"))

(smithy/sdk/shapes:define-output delete-git-hub-account-token-output
                                 common-lisp:nil
                                 ((token-name :target-type
                                   git-hub-account-token-name :member-name
                                   "tokenName"))
                                 (:shape-name "DeleteGitHubAccountTokenOutput"))

(smithy/sdk/shapes:define-input delete-resources-by-external-id-input
                                common-lisp:nil
                                ((external-id :target-type external-id
                                  :member-name "externalId"))
                                (:shape-name
                                 "DeleteResourcesByExternalIdInput"))

(smithy/sdk/shapes:define-output delete-resources-by-external-id-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteResourcesByExternalIdOutput"))

(smithy/sdk/shapes:define-error deployment-already-completed-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "DeploymentAlreadyCompletedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error deployment-config-already-exists-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "DeploymentConfigAlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error deployment-config-does-not-exist-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "DeploymentConfigDoesNotExistException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type deployment-config-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error deployment-config-in-use-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "DeploymentConfigInUseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure deployment-config-info common-lisp:nil
                                    ((deployment-config-id :target-type
                                      deployment-config-id :member-name
                                      "deploymentConfigId")
                                     (deployment-config-name :target-type
                                      deployment-config-name :member-name
                                      "deploymentConfigName")
                                     (minimum-healthy-hosts :target-type
                                      minimum-healthy-hosts :member-name
                                      "minimumHealthyHosts")
                                     (create-time :target-type timestamp
                                      :member-name "createTime")
                                     (compute-platform :target-type
                                      compute-platform :member-name
                                      "computePlatform")
                                     (traffic-routing-config :target-type
                                      traffic-routing-config :member-name
                                      "trafficRoutingConfig")
                                     (zonal-config :target-type zonal-config
                                      :member-name "zonalConfig"))
                                    (:shape-name "DeploymentConfigInfo"))

(smithy/sdk/shapes:define-error deployment-config-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "DeploymentConfigLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type deployment-config-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error deployment-config-name-required-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "DeploymentConfigNameRequiredException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list deployment-configs-list :member
                               deployment-config-name)

(smithy/sdk/shapes:define-enum deployment-creator
    common-lisp:nil
  (:user "user")
  (:autoscaling "autoscaling")
  (:code-deploy-rollback "codeDeployRollback")
  (:code-deploy "CodeDeploy")
  (:code-deploy-auto-update "CodeDeployAutoUpdate")
  (:cloud-formation "CloudFormation")
  (:cloud-formation-rollback "CloudFormationRollback")
  (:autoscaling-termination "autoscalingTermination"))

(smithy/sdk/shapes:define-error deployment-does-not-exist-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "DeploymentDoesNotExistException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error deployment-group-already-exists-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "DeploymentGroupAlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error deployment-group-does-not-exist-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "DeploymentGroupDoesNotExistException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type deployment-group-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure deployment-group-info common-lisp:nil
                                    ((application-name :target-type
                                      application-name :member-name
                                      "applicationName")
                                     (deployment-group-id :target-type
                                      deployment-group-id :member-name
                                      "deploymentGroupId")
                                     (deployment-group-name :target-type
                                      deployment-group-name :member-name
                                      "deploymentGroupName")
                                     (deployment-config-name :target-type
                                      deployment-config-name :member-name
                                      "deploymentConfigName")
                                     (ec2tag-filters :target-type
                                      ec2tag-filter-list :member-name
                                      "ec2TagFilters")
                                     (on-premises-instance-tag-filters
                                      :target-type tag-filter-list :member-name
                                      "onPremisesInstanceTagFilters")
                                     (auto-scaling-groups :target-type
                                      auto-scaling-group-list :member-name
                                      "autoScalingGroups")
                                     (service-role-arn :target-type role
                                      :member-name "serviceRoleArn")
                                     (target-revision :target-type
                                      revision-location :member-name
                                      "targetRevision")
                                     (trigger-configurations :target-type
                                      trigger-config-list :member-name
                                      "triggerConfigurations")
                                     (alarm-configuration :target-type
                                      alarm-configuration :member-name
                                      "alarmConfiguration")
                                     (auto-rollback-configuration :target-type
                                      auto-rollback-configuration :member-name
                                      "autoRollbackConfiguration")
                                     (deployment-style :target-type
                                      deployment-style :member-name
                                      "deploymentStyle")
                                     (outdated-instances-strategy :target-type
                                      outdated-instances-strategy :member-name
                                      "outdatedInstancesStrategy")
                                     (blue-green-deployment-configuration
                                      :target-type
                                      blue-green-deployment-configuration
                                      :member-name
                                      "blueGreenDeploymentConfiguration")
                                     (load-balancer-info :target-type
                                      load-balancer-info :member-name
                                      "loadBalancerInfo")
                                     (last-successful-deployment :target-type
                                      last-deployment-info :member-name
                                      "lastSuccessfulDeployment")
                                     (last-attempted-deployment :target-type
                                      last-deployment-info :member-name
                                      "lastAttemptedDeployment")
                                     (ec2tag-set :target-type ec2tag-set
                                      :member-name "ec2TagSet")
                                     (on-premises-tag-set :target-type
                                      on-premises-tag-set :member-name
                                      "onPremisesTagSet")
                                     (compute-platform :target-type
                                      compute-platform :member-name
                                      "computePlatform")
                                     (ecs-services :target-type ecsservice-list
                                      :member-name "ecsServices")
                                     (termination-hook-enabled :target-type
                                      boolean :member-name
                                      "terminationHookEnabled"))
                                    (:shape-name "DeploymentGroupInfo"))

(smithy/sdk/shapes:define-list deployment-group-info-list :member
                               deployment-group-info)

(smithy/sdk/shapes:define-error deployment-group-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "DeploymentGroupLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type deployment-group-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error deployment-group-name-required-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "DeploymentGroupNameRequiredException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list deployment-groups-list :member
                               deployment-group-name)

(smithy/sdk/shapes:define-type deployment-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error deployment-id-required-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "DeploymentIdRequiredException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure deployment-info common-lisp:nil
                                    ((application-name :target-type
                                      application-name :member-name
                                      "applicationName")
                                     (deployment-group-name :target-type
                                      deployment-group-name :member-name
                                      "deploymentGroupName")
                                     (deployment-config-name :target-type
                                      deployment-config-name :member-name
                                      "deploymentConfigName")
                                     (deployment-id :target-type deployment-id
                                      :member-name "deploymentId")
                                     (previous-revision :target-type
                                      revision-location :member-name
                                      "previousRevision")
                                     (revision :target-type revision-location
                                      :member-name "revision")
                                     (status :target-type deployment-status
                                      :member-name "status")
                                     (error-information :target-type
                                      error-information :member-name
                                      "errorInformation")
                                     (create-time :target-type timestamp
                                      :member-name "createTime")
                                     (start-time :target-type timestamp
                                      :member-name "startTime")
                                     (complete-time :target-type timestamp
                                      :member-name "completeTime")
                                     (deployment-overview :target-type
                                      deployment-overview :member-name
                                      "deploymentOverview")
                                     (description :target-type description
                                      :member-name "description")
                                     (creator :target-type deployment-creator
                                      :member-name "creator")
                                     (ignore-application-stop-failures
                                      :target-type boolean :member-name
                                      "ignoreApplicationStopFailures")
                                     (auto-rollback-configuration :target-type
                                      auto-rollback-configuration :member-name
                                      "autoRollbackConfiguration")
                                     (update-outdated-instances-only
                                      :target-type boolean :member-name
                                      "updateOutdatedInstancesOnly")
                                     (rollback-info :target-type rollback-info
                                      :member-name "rollbackInfo")
                                     (deployment-style :target-type
                                      deployment-style :member-name
                                      "deploymentStyle")
                                     (target-instances :target-type
                                      target-instances :member-name
                                      "targetInstances")
                                     (instance-termination-wait-time-started
                                      :target-type boolean :member-name
                                      "instanceTerminationWaitTimeStarted")
                                     (blue-green-deployment-configuration
                                      :target-type
                                      blue-green-deployment-configuration
                                      :member-name
                                      "blueGreenDeploymentConfiguration")
                                     (load-balancer-info :target-type
                                      load-balancer-info :member-name
                                      "loadBalancerInfo")
                                     (additional-deployment-status-info
                                      :target-type
                                      additional-deployment-status-info
                                      :member-name
                                      "additionalDeploymentStatusInfo")
                                     (file-exists-behavior :target-type
                                      file-exists-behavior :member-name
                                      "fileExistsBehavior")
                                     (deployment-status-messages :target-type
                                      deployment-status-message-list
                                      :member-name "deploymentStatusMessages")
                                     (compute-platform :target-type
                                      compute-platform :member-name
                                      "computePlatform")
                                     (external-id :target-type external-id
                                      :member-name "externalId")
                                     (related-deployments :target-type
                                      related-deployments :member-name
                                      "relatedDeployments")
                                     (override-alarm-configuration :target-type
                                      alarm-configuration :member-name
                                      "overrideAlarmConfiguration"))
                                    (:shape-name "DeploymentInfo"))

(smithy/sdk/shapes:define-error deployment-is-not-in-ready-state-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "DeploymentIsNotInReadyStateException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error deployment-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "DeploymentLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error deployment-not-started-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "DeploymentNotStartedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum deployment-option
    common-lisp:nil
  (:with-traffic-control "WITH_TRAFFIC_CONTROL")
  (:without-traffic-control "WITHOUT_TRAFFIC_CONTROL"))

(smithy/sdk/shapes:define-structure deployment-overview common-lisp:nil
                                    ((pending :target-type instance-count
                                      :member-name "Pending")
                                     (in-progress :target-type instance-count
                                      :member-name "InProgress")
                                     (succeeded :target-type instance-count
                                      :member-name "Succeeded")
                                     (failed :target-type instance-count
                                      :member-name "Failed")
                                     (skipped :target-type instance-count
                                      :member-name "Skipped")
                                     (ready :target-type instance-count
                                      :member-name "Ready"))
                                    (:shape-name "DeploymentOverview"))

(smithy/sdk/shapes:define-enum deployment-ready-action
    common-lisp:nil
  (:continue-deployment "CONTINUE_DEPLOYMENT")
  (:stop-deployment "STOP_DEPLOYMENT"))

(smithy/sdk/shapes:define-structure deployment-ready-option common-lisp:nil
                                    ((action-on-timeout :target-type
                                      deployment-ready-action :member-name
                                      "actionOnTimeout")
                                     (wait-time-in-minutes :target-type
                                      duration :member-name
                                      "waitTimeInMinutes"))
                                    (:shape-name "DeploymentReadyOption"))

(smithy/sdk/shapes:define-enum deployment-status
    common-lisp:nil
  (:created "Created")
  (:queued "Queued")
  (:in-progress "InProgress")
  (:baking "Baking")
  (:succeeded "Succeeded")
  (:failed "Failed")
  (:stopped "Stopped")
  (:ready "Ready"))

(smithy/sdk/shapes:define-list deployment-status-list :member deployment-status)

(smithy/sdk/shapes:define-list deployment-status-message-list :member
                               error-message)

(smithy/sdk/shapes:define-structure deployment-style common-lisp:nil
                                    ((deployment-type :target-type
                                      deployment-type :member-name
                                      "deploymentType")
                                     (deployment-option :target-type
                                      deployment-option :member-name
                                      "deploymentOption"))
                                    (:shape-name "DeploymentStyle"))

(smithy/sdk/shapes:define-structure deployment-target common-lisp:nil
                                    ((deployment-target-type :target-type
                                      deployment-target-type :member-name
                                      "deploymentTargetType")
                                     (instance-target :target-type
                                      instance-target :member-name
                                      "instanceTarget")
                                     (lambda-target :target-type lambda-target
                                      :member-name "lambdaTarget")
                                     (ecs-target :target-type ecstarget
                                      :member-name "ecsTarget")
                                     (cloud-formation-target :target-type
                                      cloud-formation-target :member-name
                                      "cloudFormationTarget"))
                                    (:shape-name "DeploymentTarget"))

(smithy/sdk/shapes:define-error deployment-target-does-not-exist-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "DeploymentTargetDoesNotExistException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error deployment-target-id-required-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "DeploymentTargetIdRequiredException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list deployment-target-list :member deployment-target)

(smithy/sdk/shapes:define-error deployment-target-list-size-exceeded-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "DeploymentTargetListSizeExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum deployment-target-type
    common-lisp:nil
  (:instance-target "InstanceTarget")
  (:lambda-target "LambdaTarget")
  (:ecs-target "ECSTarget")
  (:cloudformation-target "CloudFormationTarget"))

(smithy/sdk/shapes:define-enum deployment-type
    common-lisp:nil
  (:in-place "IN_PLACE")
  (:blue-green "BLUE_GREEN"))

(smithy/sdk/shapes:define-enum deployment-wait-type
    common-lisp:nil
  (:ready-wait "READY_WAIT")
  (:termination-wait "TERMINATION_WAIT"))

(smithy/sdk/shapes:define-list deployments-info-list :member deployment-info)

(smithy/sdk/shapes:define-list deployments-list :member deployment-id)

(smithy/sdk/shapes:define-input deregister-on-premises-instance-input
                                common-lisp:nil
                                ((instance-name :target-type instance-name
                                  :required common-lisp:t :member-name
                                  "instanceName"))
                                (:shape-name
                                 "DeregisterOnPremisesInstanceInput"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error description-too-long-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "DescriptionTooLongException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure diagnostics common-lisp:nil
                                    ((error-code :target-type
                                      lifecycle-error-code :member-name
                                      "errorCode")
                                     (script-name :target-type script-name
                                      :member-name "scriptName")
                                     (message :target-type lifecycle-message
                                      :member-name "message")
                                     (log-tail :target-type log-tail
                                      :member-name "logTail"))
                                    (:shape-name "Diagnostics"))

(smithy/sdk/shapes:define-type duration smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure ec2tag-filter common-lisp:nil
                                    ((key :target-type key :member-name "Key")
                                     (value :target-type value :member-name
                                      "Value")
                                     (type :target-type ec2tag-filter-type
                                      :member-name "Type"))
                                    (:shape-name "EC2TagFilter"))

(smithy/sdk/shapes:define-list ec2tag-filter-list :member ec2tag-filter)

(smithy/sdk/shapes:define-enum ec2tag-filter-type
    common-lisp:nil
  (:key-only "KEY_ONLY")
  (:value-only "VALUE_ONLY")
  (:key-and-value "KEY_AND_VALUE"))

(smithy/sdk/shapes:define-structure ec2tag-set common-lisp:nil
                                    ((ec2tag-set-list :target-type
                                      ec2tag-set-list :member-name
                                      "ec2TagSetList"))
                                    (:shape-name "EC2TagSet"))

(smithy/sdk/shapes:define-list ec2tag-set-list :member ec2tag-filter-list)

(smithy/sdk/shapes:define-type ecscluster-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ecsservice common-lisp:nil
                                    ((service-name :target-type ecsservice-name
                                      :member-name "serviceName")
                                     (cluster-name :target-type ecscluster-name
                                      :member-name "clusterName"))
                                    (:shape-name "ECSService"))

(smithy/sdk/shapes:define-list ecsservice-list :member ecsservice)

(smithy/sdk/shapes:define-error ecsservice-mapping-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "ECSServiceMappingLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type ecsservice-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ecstarget common-lisp:nil
                                    ((deployment-id :target-type deployment-id
                                      :member-name "deploymentId")
                                     (target-id :target-type target-id
                                      :member-name "targetId")
                                     (target-arn :target-type target-arn
                                      :member-name "targetArn")
                                     (last-updated-at :target-type time
                                      :member-name "lastUpdatedAt")
                                     (lifecycle-events :target-type
                                      lifecycle-event-list :member-name
                                      "lifecycleEvents")
                                     (status :target-type target-status
                                      :member-name "status")
                                     (task-sets-info :target-type
                                      ecstask-set-list :member-name
                                      "taskSetsInfo"))
                                    (:shape-name "ECSTarget"))

(smithy/sdk/shapes:define-structure ecstask-set common-lisp:nil
                                    ((identifer :target-type
                                      ecstask-set-identifier :member-name
                                      "identifer")
                                     (desired-count :target-type
                                      ecstask-set-count :member-name
                                      "desiredCount")
                                     (pending-count :target-type
                                      ecstask-set-count :member-name
                                      "pendingCount")
                                     (running-count :target-type
                                      ecstask-set-count :member-name
                                      "runningCount")
                                     (status :target-type ecstask-set-status
                                      :member-name "status")
                                     (traffic-weight :target-type
                                      traffic-weight :member-name
                                      "trafficWeight")
                                     (target-group :target-type
                                      target-group-info :member-name
                                      "targetGroup")
                                     (task-set-label :target-type target-label
                                      :member-name "taskSetLabel"))
                                    (:shape-name "ECSTaskSet"))

(smithy/sdk/shapes:define-type ecstask-set-count smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type ecstask-set-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ecstask-set-list :member ecstask-set)

(smithy/sdk/shapes:define-type ecstask-set-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure elbinfo common-lisp:nil
                                    ((name :target-type elbname :member-name
                                      "name"))
                                    (:shape-name "ELBInfo"))

(smithy/sdk/shapes:define-list elbinfo-list :member elbinfo)

(smithy/sdk/shapes:define-type elbname smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type etag smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum error-code
    common-lisp:nil
  (:agent-issue "AGENT_ISSUE")
  (:alarm-active "ALARM_ACTIVE")
  (:application-missing "APPLICATION_MISSING")
  (:autoscaling-validation-error "AUTOSCALING_VALIDATION_ERROR")
  (:auto-scaling-configuration "AUTO_SCALING_CONFIGURATION")
  (:auto-scaling-iam-role-permissions "AUTO_SCALING_IAM_ROLE_PERMISSIONS")
  (:codedeploy-resource-cannot-be-found "CODEDEPLOY_RESOURCE_CANNOT_BE_FOUND")
  (:customer-application-unhealthy "CUSTOMER_APPLICATION_UNHEALTHY")
  (:deployment-group-missing "DEPLOYMENT_GROUP_MISSING")
  (:ecs-update-error "ECS_UPDATE_ERROR")
  (:elastic-load-balancing-invalid "ELASTIC_LOAD_BALANCING_INVALID")
  (:elb-invalid-instance "ELB_INVALID_INSTANCE")
  (:health-constraints "HEALTH_CONSTRAINTS")
  (:health-constraints-invalid "HEALTH_CONSTRAINTS_INVALID")
  (:hook-execution-failure "HOOK_EXECUTION_FAILURE")
  (:iam-role-missing "IAM_ROLE_MISSING")
  (:iam-role-permissions "IAM_ROLE_PERMISSIONS")
  (:internal-error "INTERNAL_ERROR")
  (:invalid-ecs-service "INVALID_ECS_SERVICE")
  (:invalid-lambda-configuration "INVALID_LAMBDA_CONFIGURATION")
  (:invalid-lambda-function "INVALID_LAMBDA_FUNCTION")
  (:invalid-revision "INVALID_REVISION")
  (:manual-stop "MANUAL_STOP")
  (:missing-blue-green-deployment-configuration
   "MISSING_BLUE_GREEN_DEPLOYMENT_CONFIGURATION")
  (:missing-elb-information "MISSING_ELB_INFORMATION")
  (:missing-github-token "MISSING_GITHUB_TOKEN")
  (:no-ec2-subscription "NO_EC2_SUBSCRIPTION")
  (:no-instances "NO_INSTANCES")
  (:over-max-instances "OVER_MAX_INSTANCES")
  (:resource-limit-exceeded "RESOURCE_LIMIT_EXCEEDED")
  (:revision-missing "REVISION_MISSING")
  (:throttled "THROTTLED")
  (:timeout "TIMEOUT")
  (:cloudformation-stack-failure "CLOUDFORMATION_STACK_FAILURE"))

(smithy/sdk/shapes:define-structure error-information common-lisp:nil
                                    ((code :target-type error-code :member-name
                                      "code")
                                     (message :target-type error-message
                                      :member-name "message"))
                                    (:shape-name "ErrorInformation"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type external-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum file-exists-behavior
    common-lisp:nil
  (:disallow "DISALLOW")
  (:overwrite "OVERWRITE")
  (:retain "RETAIN"))

(smithy/sdk/shapes:define-type filter-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list filter-value-list :member filter-value)

(smithy/sdk/shapes:define-structure generic-revision-info common-lisp:nil
                                    ((description :target-type description
                                      :member-name "description")
                                     (deployment-groups :target-type
                                      deployment-groups-list :member-name
                                      "deploymentGroups")
                                     (first-used-time :target-type timestamp
                                      :member-name "firstUsedTime")
                                     (last-used-time :target-type timestamp
                                      :member-name "lastUsedTime")
                                     (register-time :target-type timestamp
                                      :member-name "registerTime"))
                                    (:shape-name "GenericRevisionInfo"))

(smithy/sdk/shapes:define-input get-application-input common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "applicationName"))
                                (:shape-name "GetApplicationInput"))

(smithy/sdk/shapes:define-output get-application-output common-lisp:nil
                                 ((application :target-type application-info
                                   :member-name "application"))
                                 (:shape-name "GetApplicationOutput"))

(smithy/sdk/shapes:define-input get-application-revision-input common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "applicationName")
                                 (revision :target-type revision-location
                                  :required common-lisp:t :member-name
                                  "revision"))
                                (:shape-name "GetApplicationRevisionInput"))

(smithy/sdk/shapes:define-output get-application-revision-output
                                 common-lisp:nil
                                 ((application-name :target-type
                                   application-name :member-name
                                   "applicationName")
                                  (revision :target-type revision-location
                                   :member-name "revision")
                                  (revision-info :target-type
                                   generic-revision-info :member-name
                                   "revisionInfo"))
                                 (:shape-name "GetApplicationRevisionOutput"))

(smithy/sdk/shapes:define-input get-deployment-config-input common-lisp:nil
                                ((deployment-config-name :target-type
                                  deployment-config-name :required
                                  common-lisp:t :member-name
                                  "deploymentConfigName"))
                                (:shape-name "GetDeploymentConfigInput"))

(smithy/sdk/shapes:define-output get-deployment-config-output common-lisp:nil
                                 ((deployment-config-info :target-type
                                   deployment-config-info :member-name
                                   "deploymentConfigInfo"))
                                 (:shape-name "GetDeploymentConfigOutput"))

(smithy/sdk/shapes:define-input get-deployment-group-input common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "applicationName")
                                 (deployment-group-name :target-type
                                  deployment-group-name :required common-lisp:t
                                  :member-name "deploymentGroupName"))
                                (:shape-name "GetDeploymentGroupInput"))

(smithy/sdk/shapes:define-output get-deployment-group-output common-lisp:nil
                                 ((deployment-group-info :target-type
                                   deployment-group-info :member-name
                                   "deploymentGroupInfo"))
                                 (:shape-name "GetDeploymentGroupOutput"))

(smithy/sdk/shapes:define-input get-deployment-input common-lisp:nil
                                ((deployment-id :target-type deployment-id
                                  :required common-lisp:t :member-name
                                  "deploymentId"))
                                (:shape-name "GetDeploymentInput"))

(smithy/sdk/shapes:define-input get-deployment-instance-input common-lisp:nil
                                ((deployment-id :target-type deployment-id
                                  :required common-lisp:t :member-name
                                  "deploymentId")
                                 (instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "instanceId"))
                                (:shape-name "GetDeploymentInstanceInput"))

(smithy/sdk/shapes:define-output get-deployment-instance-output common-lisp:nil
                                 ((instance-summary :target-type
                                   instance-summary :member-name
                                   "instanceSummary"))
                                 (:shape-name "GetDeploymentInstanceOutput"))

(smithy/sdk/shapes:define-output get-deployment-output common-lisp:nil
                                 ((deployment-info :target-type deployment-info
                                   :member-name "deploymentInfo"))
                                 (:shape-name "GetDeploymentOutput"))

(smithy/sdk/shapes:define-input get-deployment-target-input common-lisp:nil
                                ((deployment-id :target-type deployment-id
                                  :required common-lisp:t :member-name
                                  "deploymentId")
                                 (target-id :target-type target-id :required
                                  common-lisp:t :member-name "targetId"))
                                (:shape-name "GetDeploymentTargetInput"))

(smithy/sdk/shapes:define-output get-deployment-target-output common-lisp:nil
                                 ((deployment-target :target-type
                                   deployment-target :member-name
                                   "deploymentTarget"))
                                 (:shape-name "GetDeploymentTargetOutput"))

(smithy/sdk/shapes:define-input get-on-premises-instance-input common-lisp:nil
                                ((instance-name :target-type instance-name
                                  :required common-lisp:t :member-name
                                  "instanceName"))
                                (:shape-name "GetOnPremisesInstanceInput"))

(smithy/sdk/shapes:define-output get-on-premises-instance-output
                                 common-lisp:nil
                                 ((instance-info :target-type instance-info
                                   :member-name "instanceInfo"))
                                 (:shape-name "GetOnPremisesInstanceOutput"))

(smithy/sdk/shapes:define-error git-hub-account-token-does-not-exist-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "GitHubAccountTokenDoesNotExistException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type git-hub-account-token-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list git-hub-account-token-name-list :member
                               git-hub-account-token-name)

(smithy/sdk/shapes:define-error git-hub-account-token-name-required-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "GitHubAccountTokenNameRequiredException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure git-hub-location common-lisp:nil
                                    ((repository :target-type repository
                                      :member-name "repository")
                                     (commit-id :target-type commit-id
                                      :member-name "commitId"))
                                    (:shape-name "GitHubLocation"))

(smithy/sdk/shapes:define-enum green-fleet-provisioning-action
    common-lisp:nil
  (:discover-existing "DISCOVER_EXISTING")
  (:copy-auto-scaling-group "COPY_AUTO_SCALING_GROUP"))

(smithy/sdk/shapes:define-structure green-fleet-provisioning-option
                                    common-lisp:nil
                                    ((action :target-type
                                      green-fleet-provisioning-action
                                      :member-name "action"))
                                    (:shape-name
                                     "GreenFleetProvisioningOption"))

(smithy/sdk/shapes:define-error iam-arn-required-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "IamArnRequiredException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type iam-session-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error iam-session-arn-already-registered-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "IamSessionArnAlreadyRegisteredException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type iam-user-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error iam-user-arn-already-registered-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "IamUserArnAlreadyRegisteredException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error iam-user-arn-required-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "IamUserArnRequiredException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum instance-action
    common-lisp:nil
  (:terminate "TERMINATE")
  (:keep-alive "KEEP_ALIVE"))

(smithy/sdk/shapes:define-type instance-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type instance-count smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-error instance-does-not-exist-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InstanceDoesNotExistException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type instance-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error instance-id-required-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InstanceIdRequiredException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure instance-info common-lisp:nil
                                    ((instance-name :target-type instance-name
                                      :member-name "instanceName")
                                     (iam-session-arn :target-type
                                      iam-session-arn :member-name
                                      "iamSessionArn")
                                     (iam-user-arn :target-type iam-user-arn
                                      :member-name "iamUserArn")
                                     (instance-arn :target-type instance-arn
                                      :member-name "instanceArn")
                                     (register-time :target-type timestamp
                                      :member-name "registerTime")
                                     (deregister-time :target-type timestamp
                                      :member-name "deregisterTime")
                                     (tags :target-type tag-list :member-name
                                      "tags"))
                                    (:shape-name "InstanceInfo"))

(smithy/sdk/shapes:define-list instance-info-list :member instance-info)

(smithy/sdk/shapes:define-error instance-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InstanceLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type instance-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error instance-name-already-registered-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InstanceNameAlreadyRegisteredException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list instance-name-list :member instance-name)

(smithy/sdk/shapes:define-error instance-name-required-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InstanceNameRequiredException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error instance-not-registered-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InstanceNotRegisteredException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum instance-status
    common-lisp:nil
  (:pending "Pending")
  (:in-progress "InProgress")
  (:succeeded "Succeeded")
  (:failed "Failed")
  (:skipped "Skipped")
  (:unknown "Unknown")
  (:ready "Ready"))

(smithy/sdk/shapes:define-list instance-status-list :member instance-status)

(smithy/sdk/shapes:define-structure instance-summary common-lisp:nil
                                    ((deployment-id :target-type deployment-id
                                      :member-name "deploymentId")
                                     (instance-id :target-type instance-id
                                      :member-name "instanceId")
                                     (status :target-type instance-status
                                      :member-name "status")
                                     (last-updated-at :target-type timestamp
                                      :member-name "lastUpdatedAt")
                                     (lifecycle-events :target-type
                                      lifecycle-event-list :member-name
                                      "lifecycleEvents")
                                     (instance-type :target-type instance-type
                                      :member-name "instanceType"))
                                    (:shape-name "InstanceSummary"))

(smithy/sdk/shapes:define-list instance-summary-list :member instance-summary)

(smithy/sdk/shapes:define-structure instance-target common-lisp:nil
                                    ((deployment-id :target-type deployment-id
                                      :member-name "deploymentId")
                                     (target-id :target-type target-id
                                      :member-name "targetId")
                                     (target-arn :target-type target-arn
                                      :member-name "targetArn")
                                     (status :target-type target-status
                                      :member-name "status")
                                     (last-updated-at :target-type time
                                      :member-name "lastUpdatedAt")
                                     (lifecycle-events :target-type
                                      lifecycle-event-list :member-name
                                      "lifecycleEvents")
                                     (instance-label :target-type target-label
                                      :member-name "instanceLabel"))
                                    (:shape-name "InstanceTarget"))

(smithy/sdk/shapes:define-enum instance-type
    common-lisp:nil
  (:blue "Blue")
  (:green "Green"))

(smithy/sdk/shapes:define-list instance-type-list :member instance-type)

(smithy/sdk/shapes:define-list instances-list :member instance-id)

(smithy/sdk/shapes:define-error invalid-alarm-config-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidAlarmConfigException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-application-name-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidApplicationNameException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-arn-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidArnException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-auto-rollback-config-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidAutoRollbackConfigException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-auto-scaling-group-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidAutoScalingGroupException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error
 invalid-blue-green-deployment-configuration-exception common-lisp:nil
 ((message :target-type message :member-name "message"))
 (:shape-name "InvalidBlueGreenDeploymentConfigurationException")
 (:error-code 400))

(smithy/sdk/shapes:define-error invalid-bucket-name-filter-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidBucketNameFilterException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-compute-platform-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidComputePlatformException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-deployed-state-filter-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidDeployedStateFilterException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-deployment-config-name-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidDeploymentConfigNameException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-deployment-group-name-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidDeploymentGroupNameException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-deployment-id-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidDeploymentIdException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-deployment-instance-type-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidDeploymentInstanceTypeException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-deployment-status-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidDeploymentStatusException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-deployment-style-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidDeploymentStyleException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-deployment-target-id-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidDeploymentTargetIdException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-deployment-wait-type-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidDeploymentWaitTypeException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-ec2tag-combination-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidEC2TagCombinationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-ec2tag-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidEC2TagException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-ecsservice-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidECSServiceException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-external-id-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidExternalIdException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-file-exists-behavior-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidFileExistsBehaviorException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-git-hub-account-token-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidGitHubAccountTokenException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-git-hub-account-token-name-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidGitHubAccountTokenNameException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-iam-session-arn-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidIamSessionArnException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-iam-user-arn-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidIamUserArnException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error
 invalid-ignore-application-stop-failures-value-exception common-lisp:nil
 ((message :target-type message :member-name "message"))
 (:shape-name "InvalidIgnoreApplicationStopFailuresValueException")
 (:error-code 400))

(smithy/sdk/shapes:define-error invalid-input-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidInputException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-instance-name-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidInstanceNameException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-instance-status-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidInstanceStatusException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-instance-type-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidInstanceTypeException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-key-prefix-filter-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidKeyPrefixFilterException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error
 invalid-lifecycle-event-hook-execution-id-exception common-lisp:nil
 ((message :target-type message :member-name "message"))
 (:shape-name "InvalidLifecycleEventHookExecutionIdException")
 (:error-code 400))

(smithy/sdk/shapes:define-error
 invalid-lifecycle-event-hook-execution-status-exception common-lisp:nil
 ((message :target-type message :member-name "message"))
 (:shape-name "InvalidLifecycleEventHookExecutionStatusException")
 (:error-code 400))

(smithy/sdk/shapes:define-error invalid-load-balancer-info-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidLoadBalancerInfoException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-minimum-healthy-host-value-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidMinimumHealthyHostValueException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-next-token-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidNextTokenException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-on-premises-tag-combination-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidOnPremisesTagCombinationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-operation-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidOperationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-registration-status-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidRegistrationStatusException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-revision-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidRevisionException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-role-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidRoleException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-sort-by-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidSortByException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-sort-order-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidSortOrderException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-tag-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidTagException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-tag-filter-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidTagFilterException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-tags-to-add-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidTagsToAddException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-target-filter-name-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidTargetFilterNameException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-target-group-pair-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidTargetGroupPairException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-target-instances-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidTargetInstancesException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-time-range-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidTimeRangeException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-traffic-routing-configuration-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidTrafficRoutingConfigurationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-trigger-config-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidTriggerConfigException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error
 invalid-update-outdated-instances-only-value-exception common-lisp:nil
 ((message :target-type message :member-name "message"))
 (:shape-name "InvalidUpdateOutdatedInstancesOnlyValueException")
 (:error-code 400))

(smithy/sdk/shapes:define-error
 invalid-zonal-deployment-configuration-exception common-lisp:nil
 ((message :target-type message :member-name "message"))
 (:shape-name "InvalidZonalDeploymentConfigurationException") (:error-code 400))

(smithy/sdk/shapes:define-type key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type lambda-function-alias
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lambda-function-info common-lisp:nil
                                    ((function-name :target-type
                                      lambda-function-name :member-name
                                      "functionName")
                                     (function-alias :target-type
                                      lambda-function-alias :member-name
                                      "functionAlias")
                                     (current-version :target-type version
                                      :member-name "currentVersion")
                                     (target-version :target-type version
                                      :member-name "targetVersion")
                                     (target-version-weight :target-type
                                      traffic-weight :member-name
                                      "targetVersionWeight"))
                                    (:shape-name "LambdaFunctionInfo"))

(smithy/sdk/shapes:define-type lambda-function-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lambda-target common-lisp:nil
                                    ((deployment-id :target-type deployment-id
                                      :member-name "deploymentId")
                                     (target-id :target-type target-id
                                      :member-name "targetId")
                                     (target-arn :target-type target-arn
                                      :member-name "targetArn")
                                     (status :target-type target-status
                                      :member-name "status")
                                     (last-updated-at :target-type time
                                      :member-name "lastUpdatedAt")
                                     (lifecycle-events :target-type
                                      lifecycle-event-list :member-name
                                      "lifecycleEvents")
                                     (lambda-function-info :target-type
                                      lambda-function-info :member-name
                                      "lambdaFunctionInfo"))
                                    (:shape-name "LambdaTarget"))

(smithy/sdk/shapes:define-structure last-deployment-info common-lisp:nil
                                    ((deployment-id :target-type deployment-id
                                      :member-name "deploymentId")
                                     (status :target-type deployment-status
                                      :member-name "status")
                                     (end-time :target-type timestamp
                                      :member-name "endTime")
                                     (create-time :target-type timestamp
                                      :member-name "createTime"))
                                    (:shape-name "LastDeploymentInfo"))

(smithy/sdk/shapes:define-enum lifecycle-error-code
    common-lisp:nil
  (:success "Success")
  (:script-missing "ScriptMissing")
  (:script-not-executable "ScriptNotExecutable")
  (:script-timed-out "ScriptTimedOut")
  (:script-failed "ScriptFailed")
  (:unknown-error "UnknownError"))

(smithy/sdk/shapes:define-structure lifecycle-event common-lisp:nil
                                    ((lifecycle-event-name :target-type
                                      lifecycle-event-name :member-name
                                      "lifecycleEventName")
                                     (diagnostics :target-type diagnostics
                                      :member-name "diagnostics")
                                     (start-time :target-type timestamp
                                      :member-name "startTime")
                                     (end-time :target-type timestamp
                                      :member-name "endTime")
                                     (status :target-type
                                      lifecycle-event-status :member-name
                                      "status"))
                                    (:shape-name "LifecycleEvent"))

(smithy/sdk/shapes:define-error lifecycle-event-already-completed-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "LifecycleEventAlreadyCompletedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type lifecycle-event-hook-execution-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list lifecycle-event-list :member lifecycle-event)

(smithy/sdk/shapes:define-type lifecycle-event-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum lifecycle-event-status
    common-lisp:nil
  (:pending "Pending")
  (:in-progress "InProgress")
  (:succeeded "Succeeded")
  (:failed "Failed")
  (:skipped "Skipped")
  (:unknown "Unknown"))

(smithy/sdk/shapes:define-error lifecycle-hook-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "LifecycleHookLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type lifecycle-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-application-revisions-input
                                common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "applicationName")
                                 (sort-by :target-type
                                  application-revision-sort-by :member-name
                                  "sortBy")
                                 (sort-order :target-type sort-order
                                  :member-name "sortOrder")
                                 (s3bucket :target-type s3bucket :member-name
                                  "s3Bucket")
                                 (s3key-prefix :target-type s3key :member-name
                                  "s3KeyPrefix")
                                 (deployed :target-type
                                  list-state-filter-action :member-name
                                  "deployed")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListApplicationRevisionsInput"))

(smithy/sdk/shapes:define-output list-application-revisions-output
                                 common-lisp:nil
                                 ((revisions :target-type
                                   revision-location-list :member-name
                                   "revisions")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListApplicationRevisionsOutput"))

(smithy/sdk/shapes:define-input list-applications-input common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListApplicationsInput"))

(smithy/sdk/shapes:define-output list-applications-output common-lisp:nil
                                 ((applications :target-type applications-list
                                   :member-name "applications")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListApplicationsOutput"))

(smithy/sdk/shapes:define-input list-deployment-configs-input common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListDeploymentConfigsInput"))

(smithy/sdk/shapes:define-output list-deployment-configs-output common-lisp:nil
                                 ((deployment-configs-list :target-type
                                   deployment-configs-list :member-name
                                   "deploymentConfigsList")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDeploymentConfigsOutput"))

(smithy/sdk/shapes:define-input list-deployment-groups-input common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "applicationName")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListDeploymentGroupsInput"))

(smithy/sdk/shapes:define-output list-deployment-groups-output common-lisp:nil
                                 ((application-name :target-type
                                   application-name :member-name
                                   "applicationName")
                                  (deployment-groups :target-type
                                   deployment-groups-list :member-name
                                   "deploymentGroups")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDeploymentGroupsOutput"))

(smithy/sdk/shapes:define-input list-deployment-instances-input common-lisp:nil
                                ((deployment-id :target-type deployment-id
                                  :required common-lisp:t :member-name
                                  "deploymentId")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (instance-status-filter :target-type
                                  instance-status-list :member-name
                                  "instanceStatusFilter")
                                 (instance-type-filter :target-type
                                  instance-type-list :member-name
                                  "instanceTypeFilter"))
                                (:shape-name "ListDeploymentInstancesInput"))

(smithy/sdk/shapes:define-output list-deployment-instances-output
                                 common-lisp:nil
                                 ((instances-list :target-type instances-list
                                   :member-name "instancesList")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDeploymentInstancesOutput"))

(smithy/sdk/shapes:define-input list-deployment-targets-input common-lisp:nil
                                ((deployment-id :target-type deployment-id
                                  :required common-lisp:t :member-name
                                  "deploymentId")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (target-filters :target-type target-filters
                                  :member-name "targetFilters"))
                                (:shape-name "ListDeploymentTargetsInput"))

(smithy/sdk/shapes:define-output list-deployment-targets-output common-lisp:nil
                                 ((target-ids :target-type target-id-list
                                   :member-name "targetIds")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDeploymentTargetsOutput"))

(smithy/sdk/shapes:define-input list-deployments-input common-lisp:nil
                                ((application-name :target-type
                                  application-name :member-name
                                  "applicationName")
                                 (deployment-group-name :target-type
                                  deployment-group-name :member-name
                                  "deploymentGroupName")
                                 (external-id :target-type external-id
                                  :member-name "externalId")
                                 (include-only-statuses :target-type
                                  deployment-status-list :member-name
                                  "includeOnlyStatuses")
                                 (create-time-range :target-type time-range
                                  :member-name "createTimeRange")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListDeploymentsInput"))

(smithy/sdk/shapes:define-output list-deployments-output common-lisp:nil
                                 ((deployments :target-type deployments-list
                                   :member-name "deployments")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDeploymentsOutput"))

(smithy/sdk/shapes:define-input list-git-hub-account-token-names-input
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name
                                 "ListGitHubAccountTokenNamesInput"))

(smithy/sdk/shapes:define-output list-git-hub-account-token-names-output
                                 common-lisp:nil
                                 ((token-name-list :target-type
                                   git-hub-account-token-name-list :member-name
                                   "tokenNameList")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListGitHubAccountTokenNamesOutput"))

(smithy/sdk/shapes:define-input list-on-premises-instances-input
                                common-lisp:nil
                                ((registration-status :target-type
                                  registration-status :member-name
                                  "registrationStatus")
                                 (tag-filters :target-type tag-filter-list
                                  :member-name "tagFilters")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListOnPremisesInstancesInput"))

(smithy/sdk/shapes:define-output list-on-premises-instances-output
                                 common-lisp:nil
                                 ((instance-names :target-type
                                   instance-name-list :member-name
                                   "instanceNames")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListOnPremisesInstancesOutput"))

(smithy/sdk/shapes:define-enum list-state-filter-action
    common-lisp:nil
  (:include "include")
  (:exclude "exclude")
  (:ignore "ignore"))

(smithy/sdk/shapes:define-input list-tags-for-resource-input common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListTagsForResourceInput"))

(smithy/sdk/shapes:define-output list-tags-for-resource-output common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListTagsForResourceOutput"))

(smithy/sdk/shapes:define-type listener-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list listener-arn-list :member listener-arn)

(smithy/sdk/shapes:define-structure load-balancer-info common-lisp:nil
                                    ((elb-info-list :target-type elbinfo-list
                                      :member-name "elbInfoList")
                                     (target-group-info-list :target-type
                                      target-group-info-list :member-name
                                      "targetGroupInfoList")
                                     (target-group-pair-info-list :target-type
                                      target-group-pair-info-list :member-name
                                      "targetGroupPairInfoList"))
                                    (:shape-name "LoadBalancerInfo"))

(smithy/sdk/shapes:define-type log-tail smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure minimum-healthy-hosts common-lisp:nil
                                    ((type :target-type
                                      minimum-healthy-hosts-type :member-name
                                      "type")
                                     (value :target-type
                                      minimum-healthy-hosts-value :member-name
                                      "value"))
                                    (:shape-name "MinimumHealthyHosts"))

(smithy/sdk/shapes:define-structure minimum-healthy-hosts-per-zone
                                    common-lisp:nil
                                    ((type :target-type
                                      minimum-healthy-hosts-per-zone-type
                                      :member-name "type")
                                     (value :target-type
                                      minimum-healthy-hosts-per-zone-value
                                      :member-name "value"))
                                    (:shape-name "MinimumHealthyHostsPerZone"))

(smithy/sdk/shapes:define-enum minimum-healthy-hosts-per-zone-type
    common-lisp:nil
  (:host-count "HOST_COUNT")
  (:fleet-percent "FLEET_PERCENT"))

(smithy/sdk/shapes:define-type minimum-healthy-hosts-per-zone-value
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum minimum-healthy-hosts-type
    common-lisp:nil
  (:host-count "HOST_COUNT")
  (:fleet-percent "FLEET_PERCENT"))

(smithy/sdk/shapes:define-type minimum-healthy-hosts-value
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error multiple-iam-arns-provided-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "MultipleIamArnsProvidedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type nullable-boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure on-premises-tag-set common-lisp:nil
                                    ((on-premises-tag-set-list :target-type
                                      on-premises-tag-set-list :member-name
                                      "onPremisesTagSetList"))
                                    (:shape-name "OnPremisesTagSet"))

(smithy/sdk/shapes:define-list on-premises-tag-set-list :member tag-filter-list)

(smithy/sdk/shapes:define-error operation-not-supported-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "OperationNotSupportedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum outdated-instances-strategy
    common-lisp:nil
  (:update "UPDATE")
  (:ignore "IGNORE"))

(smithy/sdk/shapes:define-type percentage smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input put-lifecycle-event-hook-execution-status-input
                                common-lisp:nil
                                ((deployment-id :target-type deployment-id
                                  :member-name "deploymentId")
                                 (lifecycle-event-hook-execution-id
                                  :target-type
                                  lifecycle-event-hook-execution-id
                                  :member-name "lifecycleEventHookExecutionId")
                                 (status :target-type lifecycle-event-status
                                  :member-name "status"))
                                (:shape-name
                                 "PutLifecycleEventHookExecutionStatusInput"))

(smithy/sdk/shapes:define-output
 put-lifecycle-event-hook-execution-status-output common-lisp:nil
 ((lifecycle-event-hook-execution-id :target-type
   lifecycle-event-hook-execution-id :member-name
   "lifecycleEventHookExecutionId"))
 (:shape-name "PutLifecycleEventHookExecutionStatusOutput"))

(smithy/sdk/shapes:define-structure raw-string common-lisp:nil
                                    ((content :target-type raw-string-content
                                      :member-name "content")
                                     (sha256 :target-type raw-string-sha256
                                      :member-name "sha256"))
                                    (:shape-name "RawString"))

(smithy/sdk/shapes:define-type raw-string-content
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type raw-string-sha256 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input register-application-revision-input
                                common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "applicationName")
                                 (description :target-type description
                                  :member-name "description")
                                 (revision :target-type revision-location
                                  :required common-lisp:t :member-name
                                  "revision"))
                                (:shape-name
                                 "RegisterApplicationRevisionInput"))

(smithy/sdk/shapes:define-input register-on-premises-instance-input
                                common-lisp:nil
                                ((instance-name :target-type instance-name
                                  :required common-lisp:t :member-name
                                  "instanceName")
                                 (iam-session-arn :target-type iam-session-arn
                                  :member-name "iamSessionArn")
                                 (iam-user-arn :target-type iam-user-arn
                                  :member-name "iamUserArn"))
                                (:shape-name "RegisterOnPremisesInstanceInput"))

(smithy/sdk/shapes:define-enum registration-status
    common-lisp:nil
  (:registered "Registered")
  (:deregistered "Deregistered"))

(smithy/sdk/shapes:define-structure related-deployments common-lisp:nil
                                    ((auto-update-outdated-instances-root-deployment-id
                                      :target-type deployment-id :member-name
                                      "autoUpdateOutdatedInstancesRootDeploymentId")
                                     (auto-update-outdated-instances-deployment-ids
                                      :target-type deployments-list
                                      :member-name
                                      "autoUpdateOutdatedInstancesDeploymentIds"))
                                    (:shape-name "RelatedDeployments"))

(smithy/sdk/shapes:define-input remove-tags-from-on-premises-instances-input
                                common-lisp:nil
                                ((tags :target-type tag-list :required
                                  common-lisp:t :member-name "tags")
                                 (instance-names :target-type
                                  instance-name-list :required common-lisp:t
                                  :member-name "instanceNames"))
                                (:shape-name
                                 "RemoveTagsFromOnPremisesInstancesInput"))

(smithy/sdk/shapes:define-type repository smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-arn-required-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "ResourceArnRequiredException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-validation-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "ResourceValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error revision-does-not-exist-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "RevisionDoesNotExistException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure revision-info common-lisp:nil
                                    ((revision-location :target-type
                                      revision-location :member-name
                                      "revisionLocation")
                                     (generic-revision-info :target-type
                                      generic-revision-info :member-name
                                      "genericRevisionInfo"))
                                    (:shape-name "RevisionInfo"))

(smithy/sdk/shapes:define-list revision-info-list :member revision-info)

(smithy/sdk/shapes:define-structure revision-location common-lisp:nil
                                    ((revision-type :target-type
                                      revision-location-type :member-name
                                      "revisionType")
                                     (s3location :target-type s3location
                                      :member-name "s3Location")
                                     (git-hub-location :target-type
                                      git-hub-location :member-name
                                      "gitHubLocation")
                                     (string :target-type raw-string
                                      :member-name "string")
                                     (app-spec-content :target-type
                                      app-spec-content :member-name
                                      "appSpecContent"))
                                    (:shape-name "RevisionLocation"))

(smithy/sdk/shapes:define-list revision-location-list :member revision-location)

(smithy/sdk/shapes:define-enum revision-location-type
    common-lisp:nil
  (:s3 "S3")
  (:git-hub "GitHub")
  (:string "String")
  (:app-spec-content "AppSpecContent"))

(smithy/sdk/shapes:define-error revision-required-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "RevisionRequiredException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type role smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error role-required-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "RoleRequiredException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure rollback-info common-lisp:nil
                                    ((rollback-deployment-id :target-type
                                      deployment-id :member-name
                                      "rollbackDeploymentId")
                                     (rollback-triggering-deployment-id
                                      :target-type deployment-id :member-name
                                      "rollbackTriggeringDeploymentId")
                                     (rollback-message :target-type description
                                      :member-name "rollbackMessage"))
                                    (:shape-name "RollbackInfo"))

(smithy/sdk/shapes:define-type s3bucket smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3location common-lisp:nil
                                    ((bucket :target-type s3bucket :member-name
                                      "bucket")
                                     (key :target-type s3key :member-name
                                      "key")
                                     (bundle-type :target-type bundle-type
                                      :member-name "bundleType")
                                     (version :target-type version-id
                                      :member-name "version")
                                     (e-tag :target-type etag :member-name
                                      "eTag"))
                                    (:shape-name "S3Location"))

(smithy/sdk/shapes:define-type script-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input skip-wait-time-for-instance-termination-input
                                common-lisp:nil
                                ((deployment-id :target-type deployment-id
                                  :member-name "deploymentId"))
                                (:shape-name
                                 "SkipWaitTimeForInstanceTerminationInput"))

(smithy/sdk/shapes:define-enum sort-order
    common-lisp:nil
  (:ascending "ascending")
  (:descending "descending"))

(smithy/sdk/shapes:define-input stop-deployment-input common-lisp:nil
                                ((deployment-id :target-type deployment-id
                                  :required common-lisp:t :member-name
                                  "deploymentId")
                                 (auto-rollback-enabled :target-type
                                  nullable-boolean :member-name
                                  "autoRollbackEnabled"))
                                (:shape-name "StopDeploymentInput"))

(smithy/sdk/shapes:define-output stop-deployment-output common-lisp:nil
                                 ((status :target-type stop-status :member-name
                                   "status")
                                  (status-message :target-type message
                                   :member-name "statusMessage"))
                                 (:shape-name "StopDeploymentOutput"))

(smithy/sdk/shapes:define-enum stop-status
    common-lisp:nil
  (:pending "Pending")
  (:succeeded "Succeeded"))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type key :member-name "Key")
                                     (value :target-type value :member-name
                                      "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-structure tag-filter common-lisp:nil
                                    ((key :target-type key :member-name "Key")
                                     (value :target-type value :member-name
                                      "Value")
                                     (type :target-type tag-filter-type
                                      :member-name "Type"))
                                    (:shape-name "TagFilter"))

(smithy/sdk/shapes:define-list tag-filter-list :member tag-filter)

(smithy/sdk/shapes:define-enum tag-filter-type
    common-lisp:nil
  (:key-only "KEY_ONLY")
  (:value-only "VALUE_ONLY")
  (:key-and-value "KEY_AND_VALUE"))

(smithy/sdk/shapes:define-list tag-key-list :member key)

(smithy/sdk/shapes:define-error tag-limit-exceeded-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "TagLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-error tag-required-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "TagRequiredException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input tag-resource-input common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-output tag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceOutput"))

(smithy/sdk/shapes:define-error tag-set-list-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "TagSetListLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type target-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum target-filter-name
    common-lisp:nil
  (:target-status "TargetStatus")
  (:server-instance-label "ServerInstanceLabel"))

(smithy/sdk/shapes:define-map target-filters :key target-filter-name :value
                              filter-value-list)

(smithy/sdk/shapes:define-structure target-group-info common-lisp:nil
                                    ((name :target-type target-group-name
                                      :member-name "name"))
                                    (:shape-name "TargetGroupInfo"))

(smithy/sdk/shapes:define-list target-group-info-list :member target-group-info)

(smithy/sdk/shapes:define-type target-group-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure target-group-pair-info common-lisp:nil
                                    ((target-groups :target-type
                                      target-group-info-list :member-name
                                      "targetGroups")
                                     (prod-traffic-route :target-type
                                      traffic-route :member-name
                                      "prodTrafficRoute")
                                     (test-traffic-route :target-type
                                      traffic-route :member-name
                                      "testTrafficRoute"))
                                    (:shape-name "TargetGroupPairInfo"))

(smithy/sdk/shapes:define-list target-group-pair-info-list :member
                               target-group-pair-info)

(smithy/sdk/shapes:define-type target-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list target-id-list :member target-id)

(smithy/sdk/shapes:define-structure target-instances common-lisp:nil
                                    ((tag-filters :target-type
                                      ec2tag-filter-list :member-name
                                      "tagFilters")
                                     (auto-scaling-groups :target-type
                                      auto-scaling-group-name-list :member-name
                                      "autoScalingGroups")
                                     (ec2tag-set :target-type ec2tag-set
                                      :member-name "ec2TagSet"))
                                    (:shape-name "TargetInstances"))

(smithy/sdk/shapes:define-enum target-label
    common-lisp:nil
  (:blue "Blue")
  (:green "Green"))

(smithy/sdk/shapes:define-enum target-status
    common-lisp:nil
  (:pending "Pending")
  (:in-progress "InProgress")
  (:succeeded "Succeeded")
  (:failed "Failed")
  (:skipped "Skipped")
  (:unknown "Unknown")
  (:ready "Ready"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure time-based-canary common-lisp:nil
                                    ((canary-percentage :target-type percentage
                                      :member-name "canaryPercentage")
                                     (canary-interval :target-type
                                      wait-time-in-mins :member-name
                                      "canaryInterval"))
                                    (:shape-name "TimeBasedCanary"))

(smithy/sdk/shapes:define-structure time-based-linear common-lisp:nil
                                    ((linear-percentage :target-type percentage
                                      :member-name "linearPercentage")
                                     (linear-interval :target-type
                                      wait-time-in-mins :member-name
                                      "linearInterval"))
                                    (:shape-name "TimeBasedLinear"))

(smithy/sdk/shapes:define-structure time-range common-lisp:nil
                                    ((start :target-type timestamp :member-name
                                      "start")
                                     (end :target-type timestamp :member-name
                                      "end"))
                                    (:shape-name "TimeRange"))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure traffic-route common-lisp:nil
                                    ((listener-arns :target-type
                                      listener-arn-list :member-name
                                      "listenerArns"))
                                    (:shape-name "TrafficRoute"))

(smithy/sdk/shapes:define-structure traffic-routing-config common-lisp:nil
                                    ((type :target-type traffic-routing-type
                                      :member-name "type")
                                     (time-based-canary :target-type
                                      time-based-canary :member-name
                                      "timeBasedCanary")
                                     (time-based-linear :target-type
                                      time-based-linear :member-name
                                      "timeBasedLinear"))
                                    (:shape-name "TrafficRoutingConfig"))

(smithy/sdk/shapes:define-enum traffic-routing-type
    common-lisp:nil
  (:time-based-canary "TimeBasedCanary")
  (:time-based-linear "TimeBasedLinear")
  (:all-at-once "AllAtOnce"))

(smithy/sdk/shapes:define-type traffic-weight smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure trigger-config common-lisp:nil
                                    ((trigger-name :target-type trigger-name
                                      :member-name "triggerName")
                                     (trigger-target-arn :target-type
                                      trigger-target-arn :member-name
                                      "triggerTargetArn")
                                     (trigger-events :target-type
                                      trigger-event-type-list :member-name
                                      "triggerEvents"))
                                    (:shape-name "TriggerConfig"))

(smithy/sdk/shapes:define-list trigger-config-list :member trigger-config)

(smithy/sdk/shapes:define-enum trigger-event-type
    common-lisp:nil
  (:deployment-start "DeploymentStart")
  (:deployment-success "DeploymentSuccess")
  (:deployment-failure "DeploymentFailure")
  (:deployment-stop "DeploymentStop")
  (:deployment-rollback "DeploymentRollback")
  (:deployment-ready "DeploymentReady")
  (:instance-start "InstanceStart")
  (:instance-success "InstanceSuccess")
  (:instance-failure "InstanceFailure")
  (:instance-ready "InstanceReady"))

(smithy/sdk/shapes:define-list trigger-event-type-list :member
                               trigger-event-type)

(smithy/sdk/shapes:define-type trigger-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type trigger-target-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error trigger-targets-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "TriggerTargetsLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error
 unsupported-action-for-deployment-type-exception common-lisp:nil
 ((message :target-type message :member-name "message"))
 (:shape-name "UnsupportedActionForDeploymentTypeException") (:error-code 400))

(smithy/sdk/shapes:define-input untag-resource-input common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-output untag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceOutput"))

(smithy/sdk/shapes:define-input update-application-input common-lisp:nil
                                ((application-name :target-type
                                  application-name :member-name
                                  "applicationName")
                                 (new-application-name :target-type
                                  application-name :member-name
                                  "newApplicationName"))
                                (:shape-name "UpdateApplicationInput"))

(smithy/sdk/shapes:define-input update-deployment-group-input common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "applicationName")
                                 (current-deployment-group-name :target-type
                                  deployment-group-name :required common-lisp:t
                                  :member-name "currentDeploymentGroupName")
                                 (new-deployment-group-name :target-type
                                  deployment-group-name :member-name
                                  "newDeploymentGroupName")
                                 (deployment-config-name :target-type
                                  deployment-config-name :member-name
                                  "deploymentConfigName")
                                 (ec2tag-filters :target-type
                                  ec2tag-filter-list :member-name
                                  "ec2TagFilters")
                                 (on-premises-instance-tag-filters :target-type
                                  tag-filter-list :member-name
                                  "onPremisesInstanceTagFilters")
                                 (auto-scaling-groups :target-type
                                  auto-scaling-group-name-list :member-name
                                  "autoScalingGroups")
                                 (service-role-arn :target-type role
                                  :member-name "serviceRoleArn")
                                 (trigger-configurations :target-type
                                  trigger-config-list :member-name
                                  "triggerConfigurations")
                                 (alarm-configuration :target-type
                                  alarm-configuration :member-name
                                  "alarmConfiguration")
                                 (auto-rollback-configuration :target-type
                                  auto-rollback-configuration :member-name
                                  "autoRollbackConfiguration")
                                 (outdated-instances-strategy :target-type
                                  outdated-instances-strategy :member-name
                                  "outdatedInstancesStrategy")
                                 (deployment-style :target-type
                                  deployment-style :member-name
                                  "deploymentStyle")
                                 (blue-green-deployment-configuration
                                  :target-type
                                  blue-green-deployment-configuration
                                  :member-name
                                  "blueGreenDeploymentConfiguration")
                                 (load-balancer-info :target-type
                                  load-balancer-info :member-name
                                  "loadBalancerInfo")
                                 (ec2tag-set :target-type ec2tag-set
                                  :member-name "ec2TagSet")
                                 (ecs-services :target-type ecsservice-list
                                  :member-name "ecsServices")
                                 (on-premises-tag-set :target-type
                                  on-premises-tag-set :member-name
                                  "onPremisesTagSet")
                                 (termination-hook-enabled :target-type
                                  nullable-boolean :member-name
                                  "terminationHookEnabled"))
                                (:shape-name "UpdateDeploymentGroupInput"))

(smithy/sdk/shapes:define-output update-deployment-group-output common-lisp:nil
                                 ((hooks-not-cleaned-up :target-type
                                   auto-scaling-group-list :member-name
                                   "hooksNotCleanedUp"))
                                 (:shape-name "UpdateDeploymentGroupOutput"))

(smithy/sdk/shapes:define-type value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type version-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type wait-time-in-mins
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type wait-time-in-seconds
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure zonal-config common-lisp:nil
                                    ((first-zone-monitor-duration-in-seconds
                                      :target-type wait-time-in-seconds
                                      :member-name
                                      "firstZoneMonitorDurationInSeconds")
                                     (monitor-duration-in-seconds :target-type
                                      wait-time-in-seconds :member-name
                                      "monitorDurationInSeconds")
                                     (minimum-healthy-hosts-per-zone
                                      :target-type
                                      minimum-healthy-hosts-per-zone
                                      :member-name
                                      "minimumHealthyHostsPerZone"))
                                    (:shape-name "ZonalConfig"))

(smithy/sdk/operation:define-operation add-tags-to-on-premises-instances
                                       :shape-name
                                       "AddTagsToOnPremisesInstances" :input
                                       add-tags-to-on-premises-instances-input
                                       :output common-lisp:null :errors
                                       (instance-limit-exceeded-exception
                                        instance-name-required-exception
                                        instance-not-registered-exception
                                        invalid-instance-name-exception
                                        invalid-tag-exception
                                        tag-limit-exceeded-exception
                                        tag-required-exception))

(smithy/sdk/operation:define-operation batch-get-application-revisions
                                       :shape-name
                                       "BatchGetApplicationRevisions" :input
                                       batch-get-application-revisions-input
                                       :output
                                       batch-get-application-revisions-output
                                       :errors
                                       (application-does-not-exist-exception
                                        application-name-required-exception
                                        batch-limit-exceeded-exception
                                        invalid-application-name-exception
                                        invalid-revision-exception
                                        revision-required-exception))

(smithy/sdk/operation:define-operation batch-get-applications :shape-name
                                       "BatchGetApplications" :input
                                       batch-get-applications-input :output
                                       batch-get-applications-output :errors
                                       (application-does-not-exist-exception
                                        application-name-required-exception
                                        batch-limit-exceeded-exception
                                        invalid-application-name-exception))

(smithy/sdk/operation:define-operation batch-get-deployment-groups :shape-name
                                       "BatchGetDeploymentGroups" :input
                                       batch-get-deployment-groups-input
                                       :output
                                       batch-get-deployment-groups-output
                                       :errors
                                       (application-does-not-exist-exception
                                        application-name-required-exception
                                        batch-limit-exceeded-exception
                                        deployment-config-does-not-exist-exception
                                        deployment-group-name-required-exception
                                        invalid-application-name-exception
                                        invalid-deployment-group-name-exception))

(smithy/sdk/operation:define-operation batch-get-deployment-instances
                                       :shape-name
                                       "BatchGetDeploymentInstances" :input
                                       batch-get-deployment-instances-input
                                       :output
                                       batch-get-deployment-instances-output
                                       :errors
                                       (batch-limit-exceeded-exception
                                        deployment-does-not-exist-exception
                                        deployment-id-required-exception
                                        instance-id-required-exception
                                        invalid-compute-platform-exception
                                        invalid-deployment-id-exception
                                        invalid-instance-name-exception))

(smithy/sdk/operation:define-operation batch-get-deployment-targets :shape-name
                                       "BatchGetDeploymentTargets" :input
                                       batch-get-deployment-targets-input
                                       :output
                                       batch-get-deployment-targets-output
                                       :errors
                                       (deployment-does-not-exist-exception
                                        deployment-id-required-exception
                                        deployment-not-started-exception
                                        deployment-target-does-not-exist-exception
                                        deployment-target-id-required-exception
                                        deployment-target-list-size-exceeded-exception
                                        instance-does-not-exist-exception
                                        invalid-deployment-id-exception
                                        invalid-deployment-target-id-exception))

(smithy/sdk/operation:define-operation batch-get-deployments :shape-name
                                       "BatchGetDeployments" :input
                                       batch-get-deployments-input :output
                                       batch-get-deployments-output :errors
                                       (batch-limit-exceeded-exception
                                        deployment-id-required-exception
                                        invalid-deployment-id-exception))

(smithy/sdk/operation:define-operation batch-get-on-premises-instances
                                       :shape-name
                                       "BatchGetOnPremisesInstances" :input
                                       batch-get-on-premises-instances-input
                                       :output
                                       batch-get-on-premises-instances-output
                                       :errors
                                       (batch-limit-exceeded-exception
                                        instance-name-required-exception
                                        invalid-instance-name-exception))

(smithy/sdk/operation:define-operation continue-deployment :shape-name
                                       "ContinueDeployment" :input
                                       continue-deployment-input :output
                                       common-lisp:null :errors
                                       (deployment-already-completed-exception
                                        deployment-does-not-exist-exception
                                        deployment-id-required-exception
                                        deployment-is-not-in-ready-state-exception
                                        invalid-deployment-id-exception
                                        invalid-deployment-status-exception
                                        invalid-deployment-wait-type-exception
                                        unsupported-action-for-deployment-type-exception))

(smithy/sdk/operation:define-operation create-application :shape-name
                                       "CreateApplication" :input
                                       create-application-input :output
                                       create-application-output :errors
                                       (application-already-exists-exception
                                        application-limit-exceeded-exception
                                        application-name-required-exception
                                        invalid-application-name-exception
                                        invalid-compute-platform-exception
                                        invalid-tags-to-add-exception))

(smithy/sdk/operation:define-operation create-deployment :shape-name
                                       "CreateDeployment" :input
                                       create-deployment-input :output
                                       create-deployment-output :errors
                                       (alarms-limit-exceeded-exception
                                        application-does-not-exist-exception
                                        application-name-required-exception
                                        deployment-config-does-not-exist-exception
                                        deployment-group-does-not-exist-exception
                                        deployment-group-name-required-exception
                                        deployment-limit-exceeded-exception
                                        description-too-long-exception
                                        invalid-alarm-config-exception
                                        invalid-application-name-exception
                                        invalid-auto-rollback-config-exception
                                        invalid-auto-scaling-group-exception
                                        invalid-deployment-config-name-exception
                                        invalid-deployment-group-name-exception
                                        invalid-file-exists-behavior-exception
                                        invalid-git-hub-account-token-exception
                                        invalid-ignore-application-stop-failures-value-exception
                                        invalid-load-balancer-info-exception
                                        invalid-revision-exception
                                        invalid-role-exception
                                        invalid-target-instances-exception
                                        invalid-traffic-routing-configuration-exception
                                        invalid-update-outdated-instances-only-value-exception
                                        revision-does-not-exist-exception
                                        revision-required-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation create-deployment-config :shape-name
                                       "CreateDeploymentConfig" :input
                                       create-deployment-config-input :output
                                       create-deployment-config-output :errors
                                       (deployment-config-already-exists-exception
                                        deployment-config-limit-exceeded-exception
                                        deployment-config-name-required-exception
                                        invalid-compute-platform-exception
                                        invalid-deployment-config-name-exception
                                        invalid-minimum-healthy-host-value-exception
                                        invalid-traffic-routing-configuration-exception
                                        invalid-zonal-deployment-configuration-exception))

(smithy/sdk/operation:define-operation create-deployment-group :shape-name
                                       "CreateDeploymentGroup" :input
                                       create-deployment-group-input :output
                                       create-deployment-group-output :errors
                                       (alarms-limit-exceeded-exception
                                        application-does-not-exist-exception
                                        application-name-required-exception
                                        deployment-config-does-not-exist-exception
                                        deployment-group-already-exists-exception
                                        deployment-group-limit-exceeded-exception
                                        deployment-group-name-required-exception
                                        ecsservice-mapping-limit-exceeded-exception
                                        invalid-alarm-config-exception
                                        invalid-application-name-exception
                                        invalid-auto-rollback-config-exception
                                        invalid-auto-scaling-group-exception
                                        invalid-blue-green-deployment-configuration-exception
                                        invalid-deployment-config-name-exception
                                        invalid-deployment-group-name-exception
                                        invalid-deployment-style-exception
                                        invalid-ec2tag-combination-exception
                                        invalid-ec2tag-exception
                                        invalid-ecsservice-exception
                                        invalid-input-exception
                                        invalid-load-balancer-info-exception
                                        invalid-on-premises-tag-combination-exception
                                        invalid-role-exception
                                        invalid-tag-exception
                                        invalid-tags-to-add-exception
                                        invalid-target-group-pair-exception
                                        invalid-traffic-routing-configuration-exception
                                        invalid-trigger-config-exception
                                        lifecycle-hook-limit-exceeded-exception
                                        role-required-exception
                                        tag-set-list-limit-exceeded-exception
                                        throttling-exception
                                        trigger-targets-limit-exceeded-exception))

(smithy/sdk/operation:define-operation delete-application :shape-name
                                       "DeleteApplication" :input
                                       delete-application-input :output
                                       common-lisp:null :errors
                                       (application-name-required-exception
                                        invalid-application-name-exception
                                        invalid-role-exception))

(smithy/sdk/operation:define-operation delete-deployment-config :shape-name
                                       "DeleteDeploymentConfig" :input
                                       delete-deployment-config-input :output
                                       common-lisp:null :errors
                                       (deployment-config-in-use-exception
                                        deployment-config-name-required-exception
                                        invalid-deployment-config-name-exception
                                        invalid-operation-exception))

(smithy/sdk/operation:define-operation delete-deployment-group :shape-name
                                       "DeleteDeploymentGroup" :input
                                       delete-deployment-group-input :output
                                       delete-deployment-group-output :errors
                                       (application-name-required-exception
                                        deployment-group-name-required-exception
                                        invalid-application-name-exception
                                        invalid-deployment-group-name-exception
                                        invalid-role-exception))

(smithy/sdk/operation:define-operation delete-git-hub-account-token :shape-name
                                       "DeleteGitHubAccountToken" :input
                                       delete-git-hub-account-token-input
                                       :output
                                       delete-git-hub-account-token-output
                                       :errors
                                       (git-hub-account-token-does-not-exist-exception
                                        git-hub-account-token-name-required-exception
                                        invalid-git-hub-account-token-name-exception
                                        operation-not-supported-exception
                                        resource-validation-exception))

(smithy/sdk/operation:define-operation delete-resources-by-external-id
                                       :shape-name
                                       "DeleteResourcesByExternalId" :input
                                       delete-resources-by-external-id-input
                                       :output
                                       delete-resources-by-external-id-output
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation deregister-on-premises-instance
                                       :shape-name
                                       "DeregisterOnPremisesInstance" :input
                                       deregister-on-premises-instance-input
                                       :output common-lisp:null :errors
                                       (instance-name-required-exception
                                        invalid-instance-name-exception))

(smithy/sdk/operation:define-operation get-application :shape-name
                                       "GetApplication" :input
                                       get-application-input :output
                                       get-application-output :errors
                                       (application-does-not-exist-exception
                                        application-name-required-exception
                                        invalid-application-name-exception))

(smithy/sdk/operation:define-operation get-application-revision :shape-name
                                       "GetApplicationRevision" :input
                                       get-application-revision-input :output
                                       get-application-revision-output :errors
                                       (application-does-not-exist-exception
                                        application-name-required-exception
                                        invalid-application-name-exception
                                        invalid-revision-exception
                                        revision-does-not-exist-exception
                                        revision-required-exception))

(smithy/sdk/operation:define-operation get-deployment :shape-name
                                       "GetDeployment" :input
                                       get-deployment-input :output
                                       get-deployment-output :errors
                                       (deployment-does-not-exist-exception
                                        deployment-id-required-exception
                                        invalid-deployment-id-exception))

(smithy/sdk/operation:define-operation get-deployment-config :shape-name
                                       "GetDeploymentConfig" :input
                                       get-deployment-config-input :output
                                       get-deployment-config-output :errors
                                       (deployment-config-does-not-exist-exception
                                        deployment-config-name-required-exception
                                        invalid-compute-platform-exception
                                        invalid-deployment-config-name-exception))

(smithy/sdk/operation:define-operation get-deployment-group :shape-name
                                       "GetDeploymentGroup" :input
                                       get-deployment-group-input :output
                                       get-deployment-group-output :errors
                                       (application-does-not-exist-exception
                                        application-name-required-exception
                                        deployment-config-does-not-exist-exception
                                        deployment-group-does-not-exist-exception
                                        deployment-group-name-required-exception
                                        invalid-application-name-exception
                                        invalid-deployment-group-name-exception))

(smithy/sdk/operation:define-operation get-deployment-instance :shape-name
                                       "GetDeploymentInstance" :input
                                       get-deployment-instance-input :output
                                       get-deployment-instance-output :errors
                                       (deployment-does-not-exist-exception
                                        deployment-id-required-exception
                                        instance-does-not-exist-exception
                                        instance-id-required-exception
                                        invalid-compute-platform-exception
                                        invalid-deployment-id-exception
                                        invalid-instance-name-exception))

(smithy/sdk/operation:define-operation get-deployment-target :shape-name
                                       "GetDeploymentTarget" :input
                                       get-deployment-target-input :output
                                       get-deployment-target-output :errors
                                       (deployment-does-not-exist-exception
                                        deployment-id-required-exception
                                        deployment-not-started-exception
                                        deployment-target-does-not-exist-exception
                                        deployment-target-id-required-exception
                                        invalid-deployment-id-exception
                                        invalid-deployment-target-id-exception
                                        invalid-instance-name-exception))

(smithy/sdk/operation:define-operation get-on-premises-instance :shape-name
                                       "GetOnPremisesInstance" :input
                                       get-on-premises-instance-input :output
                                       get-on-premises-instance-output :errors
                                       (instance-name-required-exception
                                        instance-not-registered-exception
                                        invalid-instance-name-exception))

(smithy/sdk/operation:define-operation list-application-revisions :shape-name
                                       "ListApplicationRevisions" :input
                                       list-application-revisions-input :output
                                       list-application-revisions-output
                                       :errors
                                       (application-does-not-exist-exception
                                        application-name-required-exception
                                        bucket-name-filter-required-exception
                                        invalid-application-name-exception
                                        invalid-bucket-name-filter-exception
                                        invalid-deployed-state-filter-exception
                                        invalid-key-prefix-filter-exception
                                        invalid-next-token-exception
                                        invalid-sort-by-exception
                                        invalid-sort-order-exception))

(smithy/sdk/operation:define-operation list-applications :shape-name
                                       "ListApplications" :input
                                       list-applications-input :output
                                       list-applications-output :errors
                                       (invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-deployment-configs :shape-name
                                       "ListDeploymentConfigs" :input
                                       list-deployment-configs-input :output
                                       list-deployment-configs-output :errors
                                       (invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-deployment-groups :shape-name
                                       "ListDeploymentGroups" :input
                                       list-deployment-groups-input :output
                                       list-deployment-groups-output :errors
                                       (application-does-not-exist-exception
                                        application-name-required-exception
                                        invalid-application-name-exception
                                        invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-deployment-instances :shape-name
                                       "ListDeploymentInstances" :input
                                       list-deployment-instances-input :output
                                       list-deployment-instances-output :errors
                                       (deployment-does-not-exist-exception
                                        deployment-id-required-exception
                                        deployment-not-started-exception
                                        invalid-compute-platform-exception
                                        invalid-deployment-id-exception
                                        invalid-deployment-instance-type-exception
                                        invalid-instance-status-exception
                                        invalid-instance-type-exception
                                        invalid-next-token-exception
                                        invalid-target-filter-name-exception))

(smithy/sdk/operation:define-operation list-deployment-targets :shape-name
                                       "ListDeploymentTargets" :input
                                       list-deployment-targets-input :output
                                       list-deployment-targets-output :errors
                                       (deployment-does-not-exist-exception
                                        deployment-id-required-exception
                                        deployment-not-started-exception
                                        invalid-deployment-id-exception
                                        invalid-deployment-instance-type-exception
                                        invalid-instance-status-exception
                                        invalid-instance-type-exception
                                        invalid-next-token-exception
                                        invalid-target-filter-name-exception))

(smithy/sdk/operation:define-operation list-deployments :shape-name
                                       "ListDeployments" :input
                                       list-deployments-input :output
                                       list-deployments-output :errors
                                       (application-does-not-exist-exception
                                        application-name-required-exception
                                        deployment-group-does-not-exist-exception
                                        deployment-group-name-required-exception
                                        invalid-application-name-exception
                                        invalid-deployment-group-name-exception
                                        invalid-deployment-status-exception
                                        invalid-external-id-exception
                                        invalid-input-exception
                                        invalid-next-token-exception
                                        invalid-time-range-exception))

(smithy/sdk/operation:define-operation list-git-hub-account-token-names
                                       :shape-name
                                       "ListGitHubAccountTokenNames" :input
                                       list-git-hub-account-token-names-input
                                       :output
                                       list-git-hub-account-token-names-output
                                       :errors
                                       (invalid-next-token-exception
                                        operation-not-supported-exception
                                        resource-validation-exception))

(smithy/sdk/operation:define-operation list-on-premises-instances :shape-name
                                       "ListOnPremisesInstances" :input
                                       list-on-premises-instances-input :output
                                       list-on-premises-instances-output
                                       :errors
                                       (invalid-next-token-exception
                                        invalid-registration-status-exception
                                        invalid-tag-filter-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-input :output
                                       list-tags-for-resource-output :errors
                                       (arn-not-supported-exception
                                        invalid-arn-exception
                                        resource-arn-required-exception))

(smithy/sdk/operation:define-operation
 put-lifecycle-event-hook-execution-status :shape-name
 "PutLifecycleEventHookExecutionStatus" :input
 put-lifecycle-event-hook-execution-status-input :output
 put-lifecycle-event-hook-execution-status-output :errors
 (deployment-does-not-exist-exception deployment-id-required-exception
  invalid-deployment-id-exception
  invalid-lifecycle-event-hook-execution-id-exception
  invalid-lifecycle-event-hook-execution-status-exception
  lifecycle-event-already-completed-exception
  unsupported-action-for-deployment-type-exception))

(smithy/sdk/operation:define-operation register-application-revision
                                       :shape-name
                                       "RegisterApplicationRevision" :input
                                       register-application-revision-input
                                       :output common-lisp:null :errors
                                       (application-does-not-exist-exception
                                        application-name-required-exception
                                        description-too-long-exception
                                        invalid-application-name-exception
                                        invalid-revision-exception
                                        revision-required-exception))

(smithy/sdk/operation:define-operation register-on-premises-instance
                                       :shape-name "RegisterOnPremisesInstance"
                                       :input
                                       register-on-premises-instance-input
                                       :output common-lisp:null :errors
                                       (iam-arn-required-exception
                                        iam-session-arn-already-registered-exception
                                        iam-user-arn-already-registered-exception
                                        iam-user-arn-required-exception
                                        instance-name-already-registered-exception
                                        instance-name-required-exception
                                        invalid-iam-session-arn-exception
                                        invalid-iam-user-arn-exception
                                        invalid-instance-name-exception
                                        multiple-iam-arns-provided-exception))

(smithy/sdk/operation:define-operation remove-tags-from-on-premises-instances
                                       :shape-name
                                       "RemoveTagsFromOnPremisesInstances"
                                       :input
                                       remove-tags-from-on-premises-instances-input
                                       :output common-lisp:null :errors
                                       (instance-limit-exceeded-exception
                                        instance-name-required-exception
                                        instance-not-registered-exception
                                        invalid-instance-name-exception
                                        invalid-tag-exception
                                        tag-limit-exceeded-exception
                                        tag-required-exception))

(smithy/sdk/operation:define-operation skip-wait-time-for-instance-termination
                                       :shape-name
                                       "SkipWaitTimeForInstanceTermination"
                                       :input
                                       skip-wait-time-for-instance-termination-input
                                       :output common-lisp:null :errors
                                       (deployment-already-completed-exception
                                        deployment-does-not-exist-exception
                                        deployment-id-required-exception
                                        deployment-not-started-exception
                                        invalid-deployment-id-exception
                                        unsupported-action-for-deployment-type-exception))

(smithy/sdk/operation:define-operation stop-deployment :shape-name
                                       "StopDeployment" :input
                                       stop-deployment-input :output
                                       stop-deployment-output :errors
                                       (deployment-already-completed-exception
                                        deployment-does-not-exist-exception
                                        deployment-group-does-not-exist-exception
                                        deployment-id-required-exception
                                        invalid-deployment-id-exception
                                        unsupported-action-for-deployment-type-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       tag-resource-output :errors
                                       (application-does-not-exist-exception
                                        arn-not-supported-exception
                                        deployment-config-does-not-exist-exception
                                        deployment-group-does-not-exist-exception
                                        invalid-arn-exception
                                        invalid-tags-to-add-exception
                                        resource-arn-required-exception
                                        tag-required-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       untag-resource-output :errors
                                       (application-does-not-exist-exception
                                        arn-not-supported-exception
                                        deployment-config-does-not-exist-exception
                                        deployment-group-does-not-exist-exception
                                        invalid-arn-exception
                                        invalid-tags-to-add-exception
                                        resource-arn-required-exception
                                        tag-required-exception))

(smithy/sdk/operation:define-operation update-application :shape-name
                                       "UpdateApplication" :input
                                       update-application-input :output
                                       common-lisp:null :errors
                                       (application-already-exists-exception
                                        application-does-not-exist-exception
                                        application-name-required-exception
                                        invalid-application-name-exception))

(smithy/sdk/operation:define-operation update-deployment-group :shape-name
                                       "UpdateDeploymentGroup" :input
                                       update-deployment-group-input :output
                                       update-deployment-group-output :errors
                                       (alarms-limit-exceeded-exception
                                        application-does-not-exist-exception
                                        application-name-required-exception
                                        deployment-config-does-not-exist-exception
                                        deployment-group-already-exists-exception
                                        deployment-group-does-not-exist-exception
                                        deployment-group-name-required-exception
                                        ecsservice-mapping-limit-exceeded-exception
                                        invalid-alarm-config-exception
                                        invalid-application-name-exception
                                        invalid-auto-rollback-config-exception
                                        invalid-auto-scaling-group-exception
                                        invalid-blue-green-deployment-configuration-exception
                                        invalid-deployment-config-name-exception
                                        invalid-deployment-group-name-exception
                                        invalid-deployment-style-exception
                                        invalid-ec2tag-combination-exception
                                        invalid-ec2tag-exception
                                        invalid-ecsservice-exception
                                        invalid-input-exception
                                        invalid-load-balancer-info-exception
                                        invalid-on-premises-tag-combination-exception
                                        invalid-role-exception
                                        invalid-tag-exception
                                        invalid-target-group-pair-exception
                                        invalid-traffic-routing-configuration-exception
                                        invalid-trigger-config-exception
                                        lifecycle-hook-limit-exceeded-exception
                                        tag-set-list-limit-exceeded-exception
                                        throttling-exception
                                        trigger-targets-limit-exceeded-exception))
