(uiop/package:define-package #:pira/emr (:use)
                             (:export #:action-on-failure #:add-instance-fleet
                              #:add-instance-groups #:add-job-flow-steps
                              #:add-tags #:adjustment-type #:application
                              #:application-list #:arn-type #:auth-mode
                              #:auto-scaling-policy
                              #:auto-scaling-policy-description
                              #:auto-scaling-policy-state
                              #:auto-scaling-policy-state-change-reason
                              #:auto-scaling-policy-state-change-reason-code
                              #:auto-scaling-policy-status
                              #:auto-termination-policy
                              #:block-public-access-configuration
                              #:block-public-access-configuration-metadata
                              #:boolean #:boolean-object
                              #:bootstrap-action-config
                              #:bootstrap-action-config-list
                              #:bootstrap-action-detail
                              #:bootstrap-action-detail-list #:cancel-steps
                              #:cancel-steps-info #:cancel-steps-info-list
                              #:cancel-steps-request-status
                              #:cloud-watch-alarm-definition #:cluster
                              #:cluster-id #:cluster-state
                              #:cluster-state-change-reason
                              #:cluster-state-change-reason-code
                              #:cluster-state-list #:cluster-status
                              #:cluster-summary #:cluster-summary-list
                              #:cluster-timeline #:command #:command-list
                              #:comparison-operator #:compute-limits
                              #:compute-limits-unit-type #:configuration
                              #:configuration-list #:create-persistent-app-ui
                              #:create-security-configuration #:create-studio
                              #:create-studio-session-mapping #:credentials
                              #:date #:delete-security-configuration
                              #:delete-studio #:delete-studio-session-mapping
                              #:describe-cluster #:describe-job-flows
                              #:describe-notebook-execution
                              #:describe-persistent-app-ui
                              #:describe-release-label
                              #:describe-security-configuration #:describe-step
                              #:describe-studio #:ec2instance-ids-list
                              #:ec2instance-ids-to-terminate-list
                              #:emrcontainers-config #:ebs-block-device
                              #:ebs-block-device-config
                              #:ebs-block-device-config-list
                              #:ebs-block-device-list #:ebs-configuration
                              #:ebs-volume #:ebs-volume-list
                              #:ec2instance-attributes #:elastic-map-reduce
                              #:environment-variables-map #:error-code
                              #:error-data #:error-detail #:error-detail-list
                              #:error-message #:execution-engine-config
                              #:execution-engine-type #:failure-details #:float
                              #:get-auto-termination-policy
                              #:get-block-public-access-configuration
                              #:get-cluster-session-credentials
                              #:get-managed-scaling-policy
                              #:get-on-cluster-app-uipresigned-url
                              #:get-persistent-app-uipresigned-url
                              #:get-studio-session-mapping
                              #:hadoop-jar-step-config #:hadoop-step-config
                              #:iamrole-arn #:idc-user-assignment
                              #:identity-type #:instance
                              #:instance-collection-type #:instance-fleet
                              #:instance-fleet-config
                              #:instance-fleet-config-list #:instance-fleet-id
                              #:instance-fleet-list
                              #:instance-fleet-modify-config
                              #:instance-fleet-provisioning-specifications
                              #:instance-fleet-resizing-specifications
                              #:instance-fleet-state
                              #:instance-fleet-state-change-reason
                              #:instance-fleet-state-change-reason-code
                              #:instance-fleet-status #:instance-fleet-timeline
                              #:instance-fleet-type #:instance-group
                              #:instance-group-config
                              #:instance-group-config-list
                              #:instance-group-detail
                              #:instance-group-detail-list #:instance-group-id
                              #:instance-group-ids-list #:instance-group-list
                              #:instance-group-modify-config
                              #:instance-group-modify-config-list
                              #:instance-group-state
                              #:instance-group-state-change-reason
                              #:instance-group-state-change-reason-code
                              #:instance-group-status #:instance-group-timeline
                              #:instance-group-type #:instance-group-type-list
                              #:instance-id #:instance-list
                              #:instance-resize-policy #:instance-role-type
                              #:instance-state #:instance-state-change-reason
                              #:instance-state-change-reason-code
                              #:instance-state-list #:instance-status
                              #:instance-timeline #:instance-type
                              #:instance-type-config
                              #:instance-type-config-list
                              #:instance-type-specification
                              #:instance-type-specification-list #:integer
                              #:job-flow-detail #:job-flow-detail-list
                              #:job-flow-execution-state
                              #:job-flow-execution-state-list
                              #:job-flow-execution-status-detail
                              #:job-flow-instances-config
                              #:job-flow-instances-detail #:kerberos-attributes
                              #:key-value #:key-value-list
                              #:list-bootstrap-actions #:list-clusters
                              #:list-instance-fleets #:list-instance-groups
                              #:list-instances #:list-notebook-executions
                              #:list-release-labels
                              #:list-security-configurations #:list-steps
                              #:list-studio-session-mappings #:list-studios
                              #:list-supported-instance-types #:long
                              #:managed-scaling-policy #:marker #:market-type
                              #:max-results-number #:metric-dimension
                              #:metric-dimension-list #:modify-cluster
                              #:modify-instance-fleet #:modify-instance-groups
                              #:new-supported-products-list
                              #:non-negative-double #:notebook-execution
                              #:notebook-execution-status
                              #:notebook-execution-summary
                              #:notebook-execution-summary-list
                              #:notebook-s3location-for-output
                              #:notebook-s3location-from-input #:osrelease
                              #:osrelease-list #:on-cluster-app-uitype
                              #:on-demand-capacity-reservation-options
                              #:on-demand-capacity-reservation-preference
                              #:on-demand-capacity-reservation-usage-strategy
                              #:on-demand-provisioning-allocation-strategy
                              #:on-demand-provisioning-specification
                              #:on-demand-resizing-specification
                              #:optional-arn-type #:output-notebook-format
                              #:output-notebook-s3location-for-output
                              #:output-notebook-s3location-from-input
                              #:persistent-app-ui #:persistent-app-uitype
                              #:persistent-app-uitype-list
                              #:placement-group-config
                              #:placement-group-config-list
                              #:placement-group-strategy #:placement-type
                              #:port #:port-range #:port-ranges #:profiler-type
                              #:put-auto-scaling-policy
                              #:put-auto-termination-policy
                              #:put-block-public-access-configuration
                              #:put-managed-scaling-policy
                              #:reconfiguration-type #:release-label-filter
                              #:remove-auto-scaling-policy
                              #:remove-auto-termination-policy
                              #:remove-managed-scaling-policy #:remove-tags
                              #:repo-upgrade-on-boot #:resource-id
                              #:run-job-flow #:scale-down-behavior
                              #:scaling-action #:scaling-constraints
                              #:scaling-rule #:scaling-rule-list
                              #:scaling-strategy #:scaling-trigger
                              #:script-bootstrap-action-config
                              #:security-configuration-list
                              #:security-configuration-summary
                              #:security-groups-list #:session-mapping-detail
                              #:session-mapping-summary
                              #:session-mapping-summary-list
                              #:set-keep-job-flow-alive-when-no-steps
                              #:set-termination-protection
                              #:set-unhealthy-node-replacement
                              #:set-visible-to-all-users #:shrink-policy
                              #:simple-scaling-policy-configuration
                              #:simplified-application
                              #:simplified-application-list
                              #:spot-provisioning-allocation-strategy
                              #:spot-provisioning-specification
                              #:spot-provisioning-timeout-action
                              #:spot-resizing-specification
                              #:start-notebook-execution #:statistic #:step
                              #:step-cancellation-option #:step-config
                              #:step-config-list #:step-detail
                              #:step-detail-list #:step-execution-state
                              #:step-execution-status-detail #:step-id
                              #:step-ids-list #:step-state
                              #:step-state-change-reason
                              #:step-state-change-reason-code #:step-state-list
                              #:step-status #:step-summary #:step-summary-list
                              #:step-timeline #:stop-notebook-execution
                              #:string #:string-list #:string-map #:studio
                              #:studio-summary #:studio-summary-list
                              #:subnet-id-list #:supported-instance-type
                              #:supported-instance-types-list
                              #:supported-product-config
                              #:supported-products-list #:tag #:tag-list
                              #:terminate-job-flows #:throughput-val #:unit
                              #:update-studio #:update-studio-session-mapping
                              #:uri-string #:username-password
                              #:utilization-performance-index-integer
                              #:volume-specification #:whole-number
                              #:xml-string #:xml-string-list
                              #:xml-string-max-len256
                              #:xml-string-max-len256list))
(common-lisp:in-package #:pira/emr)

(smithy/sdk/service:define-service elastic-map-reduce :shape-name
                                   "ElasticMapReduce" :version "2009-03-31"
                                   :title "Amazon EMR" :xml-namespace
                                   '(:uri
                                     "http://elasticmapreduce.amazonaws.com/doc/2009-03-31"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "EMR")
                                      ("arnNamespace" . "elasticmapreduce")
                                      ("cloudFormationName" . "EMR")
                                      ("cloudTrailEventSource"
                                       . "elasticmapreduce.amazonaws.com")
                                      ("docId" . "elasticmapreduce-2009-03-31")
                                      ("endpointPrefix" . "elasticmapreduce"))
                                     ("aws.auth#sigv4"
                                      ("name" . "elasticmapreduce"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-enum action-on-failure
    common-lisp:nil
  (:terminate-job-flow "TERMINATE_JOB_FLOW")
  (:terminate-cluster "TERMINATE_CLUSTER")
  (:cancel-and-wait "CANCEL_AND_WAIT")
  (:continue "CONTINUE"))

(smithy/sdk/shapes:define-input add-instance-fleet-input common-lisp:nil
                                ((cluster-id :target-type xml-string-max-len256
                                  :required common-lisp:t :member-name
                                  "ClusterId")
                                 (instance-fleet :target-type
                                  instance-fleet-config :required common-lisp:t
                                  :member-name "InstanceFleet"))
                                (:shape-name "AddInstanceFleetInput"))

(smithy/sdk/shapes:define-output add-instance-fleet-output common-lisp:nil
                                 ((cluster-id :target-type
                                   xml-string-max-len256 :member-name
                                   "ClusterId")
                                  (instance-fleet-id :target-type
                                   instance-fleet-id :member-name
                                   "InstanceFleetId")
                                  (cluster-arn :target-type arn-type
                                   :member-name "ClusterArn"))
                                 (:shape-name "AddInstanceFleetOutput"))

(smithy/sdk/shapes:define-input add-instance-groups-input common-lisp:nil
                                ((instance-groups :target-type
                                  instance-group-config-list :required
                                  common-lisp:t :member-name "InstanceGroups")
                                 (job-flow-id :target-type
                                  xml-string-max-len256 :required common-lisp:t
                                  :member-name "JobFlowId"))
                                (:shape-name "AddInstanceGroupsInput"))

(smithy/sdk/shapes:define-output add-instance-groups-output common-lisp:nil
                                 ((job-flow-id :target-type
                                   xml-string-max-len256 :member-name
                                   "JobFlowId")
                                  (instance-group-ids :target-type
                                   instance-group-ids-list :member-name
                                   "InstanceGroupIds")
                                  (cluster-arn :target-type arn-type
                                   :member-name "ClusterArn"))
                                 (:shape-name "AddInstanceGroupsOutput"))

(smithy/sdk/shapes:define-input add-job-flow-steps-input common-lisp:nil
                                ((job-flow-id :target-type
                                  xml-string-max-len256 :required common-lisp:t
                                  :member-name "JobFlowId")
                                 (steps :target-type step-config-list :required
                                  common-lisp:t :member-name "Steps")
                                 (execution-role-arn :target-type arn-type
                                  :member-name "ExecutionRoleArn"))
                                (:shape-name "AddJobFlowStepsInput"))

(smithy/sdk/shapes:define-output add-job-flow-steps-output common-lisp:nil
                                 ((step-ids :target-type step-ids-list
                                   :member-name "StepIds"))
                                 (:shape-name "AddJobFlowStepsOutput"))

(smithy/sdk/shapes:define-input add-tags-input common-lisp:nil
                                ((resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "AddTagsInput"))

(smithy/sdk/shapes:define-output add-tags-output common-lisp:nil
                                 common-lisp:nil (:shape-name "AddTagsOutput"))

(smithy/sdk/shapes:define-enum adjustment-type
    common-lisp:nil
  (:change-in-capacity "CHANGE_IN_CAPACITY")
  (:percent-change-in-capacity "PERCENT_CHANGE_IN_CAPACITY")
  (:exact-capacity "EXACT_CAPACITY"))

(smithy/sdk/shapes:define-structure application common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (version :target-type string :member-name
                                      "Version")
                                     (args :target-type string-list
                                      :member-name "Args")
                                     (additional-info :target-type string-map
                                      :member-name "AdditionalInfo"))
                                    (:shape-name "Application"))

(smithy/sdk/shapes:define-list application-list :member application)

(smithy/sdk/shapes:define-type arn-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum auth-mode
    common-lisp:nil
  (:sso "SSO")
  (:iam "IAM"))

(smithy/sdk/shapes:define-structure auto-scaling-policy common-lisp:nil
                                    ((constraints :target-type
                                      scaling-constraints :required
                                      common-lisp:t :member-name "Constraints")
                                     (rules :target-type scaling-rule-list
                                      :required common-lisp:t :member-name
                                      "Rules"))
                                    (:shape-name "AutoScalingPolicy"))

(smithy/sdk/shapes:define-structure auto-scaling-policy-description
                                    common-lisp:nil
                                    ((status :target-type
                                      auto-scaling-policy-status :member-name
                                      "Status")
                                     (constraints :target-type
                                      scaling-constraints :member-name
                                      "Constraints")
                                     (rules :target-type scaling-rule-list
                                      :member-name "Rules"))
                                    (:shape-name
                                     "AutoScalingPolicyDescription"))

(smithy/sdk/shapes:define-enum auto-scaling-policy-state
    common-lisp:nil
  (:pending "PENDING")
  (:attaching "ATTACHING")
  (:attached "ATTACHED")
  (:detaching "DETACHING")
  (:detached "DETACHED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure auto-scaling-policy-state-change-reason
                                    common-lisp:nil
                                    ((code :target-type
                                      auto-scaling-policy-state-change-reason-code
                                      :member-name "Code")
                                     (message :target-type string :member-name
                                      "Message"))
                                    (:shape-name
                                     "AutoScalingPolicyStateChangeReason"))

(smithy/sdk/shapes:define-enum auto-scaling-policy-state-change-reason-code
    common-lisp:nil
  (:user-request "USER_REQUEST")
  (:provision-failure "PROVISION_FAILURE")
  (:cleanup-failure "CLEANUP_FAILURE"))

(smithy/sdk/shapes:define-structure auto-scaling-policy-status common-lisp:nil
                                    ((state :target-type
                                      auto-scaling-policy-state :member-name
                                      "State")
                                     (state-change-reason :target-type
                                      auto-scaling-policy-state-change-reason
                                      :member-name "StateChangeReason"))
                                    (:shape-name "AutoScalingPolicyStatus"))

(smithy/sdk/shapes:define-structure auto-termination-policy common-lisp:nil
                                    ((idle-timeout :target-type long
                                      :member-name "IdleTimeout"))
                                    (:shape-name "AutoTerminationPolicy"))

(smithy/sdk/shapes:define-structure block-public-access-configuration
                                    common-lisp:nil
                                    ((block-public-security-group-rules
                                      :target-type boolean :required
                                      common-lisp:t :member-name
                                      "BlockPublicSecurityGroupRules")
                                     (permitted-public-security-group-rule-ranges
                                      :target-type port-ranges :member-name
                                      "PermittedPublicSecurityGroupRuleRanges")
                                     (classification :target-type string
                                      :member-name "Classification")
                                     (configurations :target-type
                                      configuration-list :member-name
                                      "Configurations")
                                     (properties :target-type string-map
                                      :member-name "Properties"))
                                    (:shape-name
                                     "BlockPublicAccessConfiguration"))

(smithy/sdk/shapes:define-structure block-public-access-configuration-metadata
                                    common-lisp:nil
                                    ((creation-date-time :target-type date
                                      :required common-lisp:t :member-name
                                      "CreationDateTime")
                                     (created-by-arn :target-type arn-type
                                      :required common-lisp:t :member-name
                                      "CreatedByArn"))
                                    (:shape-name
                                     "BlockPublicAccessConfigurationMetadata"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type boolean-object smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure bootstrap-action-config common-lisp:nil
                                    ((name :target-type xml-string-max-len256
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (script-bootstrap-action :target-type
                                      script-bootstrap-action-config :required
                                      common-lisp:t :member-name
                                      "ScriptBootstrapAction"))
                                    (:shape-name "BootstrapActionConfig"))

(smithy/sdk/shapes:define-list bootstrap-action-config-list :member
                               bootstrap-action-config)

(smithy/sdk/shapes:define-structure bootstrap-action-detail common-lisp:nil
                                    ((bootstrap-action-config :target-type
                                      bootstrap-action-config :member-name
                                      "BootstrapActionConfig"))
                                    (:shape-name "BootstrapActionDetail"))

(smithy/sdk/shapes:define-list bootstrap-action-detail-list :member
                               bootstrap-action-detail)

(smithy/sdk/shapes:define-structure cancel-steps-info common-lisp:nil
                                    ((step-id :target-type step-id :member-name
                                      "StepId")
                                     (status :target-type
                                      cancel-steps-request-status :member-name
                                      "Status")
                                     (reason :target-type string :member-name
                                      "Reason"))
                                    (:shape-name "CancelStepsInfo"))

(smithy/sdk/shapes:define-list cancel-steps-info-list :member cancel-steps-info)

(smithy/sdk/shapes:define-input cancel-steps-input common-lisp:nil
                                ((cluster-id :target-type xml-string-max-len256
                                  :required common-lisp:t :member-name
                                  "ClusterId")
                                 (step-ids :target-type step-ids-list :required
                                  common-lisp:t :member-name "StepIds")
                                 (step-cancellation-option :target-type
                                  step-cancellation-option :member-name
                                  "StepCancellationOption"))
                                (:shape-name "CancelStepsInput"))

(smithy/sdk/shapes:define-output cancel-steps-output common-lisp:nil
                                 ((cancel-steps-info-list :target-type
                                   cancel-steps-info-list :member-name
                                   "CancelStepsInfoList"))
                                 (:shape-name "CancelStepsOutput"))

(smithy/sdk/shapes:define-enum cancel-steps-request-status
    common-lisp:nil
  (:submitted "SUBMITTED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure cloud-watch-alarm-definition
                                    common-lisp:nil
                                    ((comparison-operator :target-type
                                      comparison-operator :required
                                      common-lisp:t :member-name
                                      "ComparisonOperator")
                                     (evaluation-periods :target-type integer
                                      :member-name "EvaluationPeriods")
                                     (metric-name :target-type string :required
                                      common-lisp:t :member-name "MetricName")
                                     (namespace :target-type string
                                      :member-name "Namespace")
                                     (period :target-type integer :required
                                      common-lisp:t :member-name "Period")
                                     (statistic :target-type statistic
                                      :member-name "Statistic")
                                     (threshold :target-type
                                      non-negative-double :required
                                      common-lisp:t :member-name "Threshold")
                                     (unit :target-type unit :member-name
                                      "Unit")
                                     (dimensions :target-type
                                      metric-dimension-list :member-name
                                      "Dimensions"))
                                    (:shape-name "CloudWatchAlarmDefinition"))

(smithy/sdk/shapes:define-structure cluster common-lisp:nil
                                    ((id :target-type cluster-id :member-name
                                      "Id")
                                     (name :target-type string :member-name
                                      "Name")
                                     (status :target-type cluster-status
                                      :member-name "Status")
                                     (ec2instance-attributes :target-type
                                      ec2instance-attributes :member-name
                                      "Ec2InstanceAttributes")
                                     (instance-collection-type :target-type
                                      instance-collection-type :member-name
                                      "InstanceCollectionType")
                                     (log-uri :target-type string :member-name
                                      "LogUri")
                                     (log-encryption-kms-key-id :target-type
                                      string :member-name
                                      "LogEncryptionKmsKeyId")
                                     (requested-ami-version :target-type string
                                      :member-name "RequestedAmiVersion")
                                     (running-ami-version :target-type string
                                      :member-name "RunningAmiVersion")
                                     (release-label :target-type string
                                      :member-name "ReleaseLabel")
                                     (auto-terminate :target-type boolean
                                      :member-name "AutoTerminate")
                                     (termination-protected :target-type
                                      boolean :member-name
                                      "TerminationProtected")
                                     (unhealthy-node-replacement :target-type
                                      boolean-object :member-name
                                      "UnhealthyNodeReplacement")
                                     (visible-to-all-users :target-type boolean
                                      :member-name "VisibleToAllUsers")
                                     (applications :target-type
                                      application-list :member-name
                                      "Applications")
                                     (tags :target-type tag-list :member-name
                                      "Tags")
                                     (service-role :target-type string
                                      :member-name "ServiceRole")
                                     (normalized-instance-hours :target-type
                                      integer :member-name
                                      "NormalizedInstanceHours")
                                     (master-public-dns-name :target-type
                                      string :member-name
                                      "MasterPublicDnsName")
                                     (configurations :target-type
                                      configuration-list :member-name
                                      "Configurations")
                                     (security-configuration :target-type
                                      xml-string :member-name
                                      "SecurityConfiguration")
                                     (auto-scaling-role :target-type xml-string
                                      :member-name "AutoScalingRole")
                                     (scale-down-behavior :target-type
                                      scale-down-behavior :member-name
                                      "ScaleDownBehavior")
                                     (custom-ami-id :target-type
                                      xml-string-max-len256 :member-name
                                      "CustomAmiId")
                                     (ebs-root-volume-size :target-type integer
                                      :member-name "EbsRootVolumeSize")
                                     (repo-upgrade-on-boot :target-type
                                      repo-upgrade-on-boot :member-name
                                      "RepoUpgradeOnBoot")
                                     (kerberos-attributes :target-type
                                      kerberos-attributes :member-name
                                      "KerberosAttributes")
                                     (cluster-arn :target-type arn-type
                                      :member-name "ClusterArn")
                                     (outpost-arn :target-type
                                      optional-arn-type :member-name
                                      "OutpostArn")
                                     (step-concurrency-level :target-type
                                      integer :member-name
                                      "StepConcurrencyLevel")
                                     (placement-groups :target-type
                                      placement-group-config-list :member-name
                                      "PlacementGroups")
                                     (osrelease-label :target-type string
                                      :member-name "OSReleaseLabel")
                                     (ebs-root-volume-iops :target-type integer
                                      :member-name "EbsRootVolumeIops")
                                     (ebs-root-volume-throughput :target-type
                                      integer :member-name
                                      "EbsRootVolumeThroughput")
                                     (extended-support :target-type
                                      boolean-object :member-name
                                      "ExtendedSupport"))
                                    (:shape-name "Cluster"))

(smithy/sdk/shapes:define-type cluster-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum cluster-state
    common-lisp:nil
  (:starting "STARTING")
  (:bootstrapping "BOOTSTRAPPING")
  (:running "RUNNING")
  (:waiting "WAITING")
  (:terminating "TERMINATING")
  (:terminated "TERMINATED")
  (:terminated-with-errors "TERMINATED_WITH_ERRORS"))

(smithy/sdk/shapes:define-structure cluster-state-change-reason common-lisp:nil
                                    ((code :target-type
                                      cluster-state-change-reason-code
                                      :member-name "Code")
                                     (message :target-type string :member-name
                                      "Message"))
                                    (:shape-name "ClusterStateChangeReason"))

(smithy/sdk/shapes:define-enum cluster-state-change-reason-code
    common-lisp:nil
  (:internal-error "INTERNAL_ERROR")
  (:validation-error "VALIDATION_ERROR")
  (:instance-failure "INSTANCE_FAILURE")
  (:instance-fleet-timeout "INSTANCE_FLEET_TIMEOUT")
  (:bootstrap-failure "BOOTSTRAP_FAILURE")
  (:user-request "USER_REQUEST")
  (:step-failure "STEP_FAILURE")
  (:all-steps-completed "ALL_STEPS_COMPLETED"))

(smithy/sdk/shapes:define-list cluster-state-list :member cluster-state)

(smithy/sdk/shapes:define-structure cluster-status common-lisp:nil
                                    ((state :target-type cluster-state
                                      :member-name "State")
                                     (state-change-reason :target-type
                                      cluster-state-change-reason :member-name
                                      "StateChangeReason")
                                     (timeline :target-type cluster-timeline
                                      :member-name "Timeline")
                                     (error-details :target-type
                                      error-detail-list :member-name
                                      "ErrorDetails"))
                                    (:shape-name "ClusterStatus"))

(smithy/sdk/shapes:define-structure cluster-summary common-lisp:nil
                                    ((id :target-type cluster-id :member-name
                                      "Id")
                                     (name :target-type string :member-name
                                      "Name")
                                     (status :target-type cluster-status
                                      :member-name "Status")
                                     (normalized-instance-hours :target-type
                                      integer :member-name
                                      "NormalizedInstanceHours")
                                     (cluster-arn :target-type arn-type
                                      :member-name "ClusterArn")
                                     (outpost-arn :target-type
                                      optional-arn-type :member-name
                                      "OutpostArn"))
                                    (:shape-name "ClusterSummary"))

(smithy/sdk/shapes:define-list cluster-summary-list :member cluster-summary)

(smithy/sdk/shapes:define-structure cluster-timeline common-lisp:nil
                                    ((creation-date-time :target-type date
                                      :member-name "CreationDateTime")
                                     (ready-date-time :target-type date
                                      :member-name "ReadyDateTime")
                                     (end-date-time :target-type date
                                      :member-name "EndDateTime"))
                                    (:shape-name "ClusterTimeline"))

(smithy/sdk/shapes:define-structure command common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (script-path :target-type string
                                      :member-name "ScriptPath")
                                     (args :target-type string-list
                                      :member-name "Args"))
                                    (:shape-name "Command"))

(smithy/sdk/shapes:define-list command-list :member command)

(smithy/sdk/shapes:define-enum comparison-operator
    common-lisp:nil
  (:greater-than-or-equal "GREATER_THAN_OR_EQUAL")
  (:greater-than "GREATER_THAN")
  (:less-than "LESS_THAN")
  (:less-than-or-equal "LESS_THAN_OR_EQUAL"))

(smithy/sdk/shapes:define-structure compute-limits common-lisp:nil
                                    ((unit-type :target-type
                                      compute-limits-unit-type :required
                                      common-lisp:t :member-name "UnitType")
                                     (minimum-capacity-units :target-type
                                      integer :required common-lisp:t
                                      :member-name "MinimumCapacityUnits")
                                     (maximum-capacity-units :target-type
                                      integer :required common-lisp:t
                                      :member-name "MaximumCapacityUnits")
                                     (maximum-on-demand-capacity-units
                                      :target-type integer :member-name
                                      "MaximumOnDemandCapacityUnits")
                                     (maximum-core-capacity-units :target-type
                                      integer :member-name
                                      "MaximumCoreCapacityUnits"))
                                    (:shape-name "ComputeLimits"))

(smithy/sdk/shapes:define-enum compute-limits-unit-type
    common-lisp:nil
  (:instance-fleet-units "InstanceFleetUnits")
  (:instances "Instances")
  (:vcpu "VCPU"))

(smithy/sdk/shapes:define-structure configuration common-lisp:nil
                                    ((classification :target-type string
                                      :member-name "Classification")
                                     (configurations :target-type
                                      configuration-list :member-name
                                      "Configurations")
                                     (properties :target-type string-map
                                      :member-name "Properties"))
                                    (:shape-name "Configuration"))

(smithy/sdk/shapes:define-list configuration-list :member configuration)

(smithy/sdk/shapes:define-input create-persistent-app-uiinput common-lisp:nil
                                ((target-resource-arn :target-type arn-type
                                  :required common-lisp:t :member-name
                                  "TargetResourceArn")
                                 (emrcontainers-config :target-type
                                  emrcontainers-config :member-name
                                  "EMRContainersConfig")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (xreferer :target-type string :member-name
                                  "XReferer")
                                 (profiler-type :target-type profiler-type
                                  :member-name "ProfilerType"))
                                (:shape-name "CreatePersistentAppUIInput"))

(smithy/sdk/shapes:define-output create-persistent-app-uioutput common-lisp:nil
                                 ((persistent-app-uiid :target-type
                                   xml-string-max-len256 :member-name
                                   "PersistentAppUIId")
                                  (runtime-role-enabled-cluster :target-type
                                   boolean :member-name
                                   "RuntimeRoleEnabledCluster"))
                                 (:shape-name "CreatePersistentAppUIOutput"))

(smithy/sdk/shapes:define-input create-security-configuration-input
                                common-lisp:nil
                                ((name :target-type xml-string :required
                                  common-lisp:t :member-name "Name")
                                 (security-configuration :target-type string
                                  :required common-lisp:t :member-name
                                  "SecurityConfiguration"))
                                (:shape-name
                                 "CreateSecurityConfigurationInput"))

(smithy/sdk/shapes:define-output create-security-configuration-output
                                 common-lisp:nil
                                 ((name :target-type xml-string :required
                                   common-lisp:t :member-name "Name")
                                  (creation-date-time :target-type date
                                   :required common-lisp:t :member-name
                                   "CreationDateTime"))
                                 (:shape-name
                                  "CreateSecurityConfigurationOutput"))

(smithy/sdk/shapes:define-input create-studio-input common-lisp:nil
                                ((name :target-type xml-string-max-len256
                                  :required common-lisp:t :member-name "Name")
                                 (description :target-type
                                  xml-string-max-len256 :member-name
                                  "Description")
                                 (auth-mode :target-type auth-mode :required
                                  common-lisp:t :member-name "AuthMode")
                                 (vpc-id :target-type xml-string-max-len256
                                  :required common-lisp:t :member-name "VpcId")
                                 (subnet-ids :target-type subnet-id-list
                                  :required common-lisp:t :member-name
                                  "SubnetIds")
                                 (service-role :target-type xml-string
                                  :required common-lisp:t :member-name
                                  "ServiceRole")
                                 (user-role :target-type xml-string
                                  :member-name "UserRole")
                                 (workspace-security-group-id :target-type
                                  xml-string-max-len256 :required common-lisp:t
                                  :member-name "WorkspaceSecurityGroupId")
                                 (engine-security-group-id :target-type
                                  xml-string-max-len256 :required common-lisp:t
                                  :member-name "EngineSecurityGroupId")
                                 (default-s3location :target-type xml-string
                                  :required common-lisp:t :member-name
                                  "DefaultS3Location")
                                 (idp-auth-url :target-type xml-string
                                  :member-name "IdpAuthUrl")
                                 (idp-relay-state-parameter-name :target-type
                                  xml-string-max-len256 :member-name
                                  "IdpRelayStateParameterName")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (trusted-identity-propagation-enabled
                                  :target-type boolean-object :member-name
                                  "TrustedIdentityPropagationEnabled")
                                 (idc-user-assignment :target-type
                                  idc-user-assignment :member-name
                                  "IdcUserAssignment")
                                 (idc-instance-arn :target-type arn-type
                                  :member-name "IdcInstanceArn")
                                 (encryption-key-arn :target-type xml-string
                                  :member-name "EncryptionKeyArn"))
                                (:shape-name "CreateStudioInput"))

(smithy/sdk/shapes:define-output create-studio-output common-lisp:nil
                                 ((studio-id :target-type xml-string-max-len256
                                   :member-name "StudioId")
                                  (url :target-type xml-string :member-name
                                   "Url"))
                                 (:shape-name "CreateStudioOutput"))

(smithy/sdk/shapes:define-input create-studio-session-mapping-input
                                common-lisp:nil
                                ((studio-id :target-type xml-string-max-len256
                                  :required common-lisp:t :member-name
                                  "StudioId")
                                 (identity-id :target-type
                                  xml-string-max-len256 :member-name
                                  "IdentityId")
                                 (identity-name :target-type
                                  xml-string-max-len256 :member-name
                                  "IdentityName")
                                 (identity-type :target-type identity-type
                                  :required common-lisp:t :member-name
                                  "IdentityType")
                                 (session-policy-arn :target-type
                                  xml-string-max-len256 :required common-lisp:t
                                  :member-name "SessionPolicyArn"))
                                (:shape-name "CreateStudioSessionMappingInput"))

(smithy/sdk/shapes:define-union credentials common-lisp:nil
                                ((username-password :target-type
                                  username-password :member-name
                                  "UsernamePassword"))
                                (:shape-name "Credentials"))

(smithy/sdk/shapes:define-type date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input delete-security-configuration-input
                                common-lisp:nil
                                ((name :target-type xml-string :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name
                                 "DeleteSecurityConfigurationInput"))

(smithy/sdk/shapes:define-output delete-security-configuration-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteSecurityConfigurationOutput"))

(smithy/sdk/shapes:define-input delete-studio-input common-lisp:nil
                                ((studio-id :target-type xml-string-max-len256
                                  :required common-lisp:t :member-name
                                  "StudioId"))
                                (:shape-name "DeleteStudioInput"))

(smithy/sdk/shapes:define-input delete-studio-session-mapping-input
                                common-lisp:nil
                                ((studio-id :target-type xml-string-max-len256
                                  :required common-lisp:t :member-name
                                  "StudioId")
                                 (identity-id :target-type
                                  xml-string-max-len256 :member-name
                                  "IdentityId")
                                 (identity-name :target-type
                                  xml-string-max-len256 :member-name
                                  "IdentityName")
                                 (identity-type :target-type identity-type
                                  :required common-lisp:t :member-name
                                  "IdentityType"))
                                (:shape-name "DeleteStudioSessionMappingInput"))

(smithy/sdk/shapes:define-input describe-cluster-input common-lisp:nil
                                ((cluster-id :target-type cluster-id :required
                                  common-lisp:t :member-name "ClusterId"))
                                (:shape-name "DescribeClusterInput"))

(smithy/sdk/shapes:define-output describe-cluster-output common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "Cluster"))
                                 (:shape-name "DescribeClusterOutput"))

(smithy/sdk/shapes:define-input describe-job-flows-input common-lisp:nil
                                ((created-after :target-type date :member-name
                                  "CreatedAfter")
                                 (created-before :target-type date :member-name
                                  "CreatedBefore")
                                 (job-flow-ids :target-type xml-string-list
                                  :member-name "JobFlowIds")
                                 (job-flow-states :target-type
                                  job-flow-execution-state-list :member-name
                                  "JobFlowStates"))
                                (:shape-name "DescribeJobFlowsInput"))

(smithy/sdk/shapes:define-output describe-job-flows-output common-lisp:nil
                                 ((job-flows :target-type job-flow-detail-list
                                   :member-name "JobFlows"))
                                 (:shape-name "DescribeJobFlowsOutput"))

(smithy/sdk/shapes:define-input describe-notebook-execution-input
                                common-lisp:nil
                                ((notebook-execution-id :target-type
                                  xml-string-max-len256 :required common-lisp:t
                                  :member-name "NotebookExecutionId"))
                                (:shape-name "DescribeNotebookExecutionInput"))

(smithy/sdk/shapes:define-output describe-notebook-execution-output
                                 common-lisp:nil
                                 ((notebook-execution :target-type
                                   notebook-execution :member-name
                                   "NotebookExecution"))
                                 (:shape-name
                                  "DescribeNotebookExecutionOutput"))

(smithy/sdk/shapes:define-input describe-persistent-app-uiinput common-lisp:nil
                                ((persistent-app-uiid :target-type
                                  xml-string-max-len256 :required common-lisp:t
                                  :member-name "PersistentAppUIId"))
                                (:shape-name "DescribePersistentAppUIInput"))

(smithy/sdk/shapes:define-output describe-persistent-app-uioutput
                                 common-lisp:nil
                                 ((persistent-app-ui :target-type
                                   persistent-app-ui :member-name
                                   "PersistentAppUI"))
                                 (:shape-name "DescribePersistentAppUIOutput"))

(smithy/sdk/shapes:define-input describe-release-label-input common-lisp:nil
                                ((release-label :target-type string
                                  :member-name "ReleaseLabel")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type max-results-number
                                  :member-name "MaxResults"))
                                (:shape-name "DescribeReleaseLabelInput"))

(smithy/sdk/shapes:define-output describe-release-label-output common-lisp:nil
                                 ((release-label :target-type string
                                   :member-name "ReleaseLabel")
                                  (applications :target-type
                                   simplified-application-list :member-name
                                   "Applications")
                                  (next-token :target-type string :member-name
                                   "NextToken")
                                  (available-osreleases :target-type
                                   osrelease-list :member-name
                                   "AvailableOSReleases"))
                                 (:shape-name "DescribeReleaseLabelOutput"))

(smithy/sdk/shapes:define-input describe-security-configuration-input
                                common-lisp:nil
                                ((name :target-type xml-string :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name
                                 "DescribeSecurityConfigurationInput"))

(smithy/sdk/shapes:define-output describe-security-configuration-output
                                 common-lisp:nil
                                 ((name :target-type xml-string :member-name
                                   "Name")
                                  (security-configuration :target-type string
                                   :member-name "SecurityConfiguration")
                                  (creation-date-time :target-type date
                                   :member-name "CreationDateTime"))
                                 (:shape-name
                                  "DescribeSecurityConfigurationOutput"))

(smithy/sdk/shapes:define-input describe-step-input common-lisp:nil
                                ((cluster-id :target-type cluster-id :required
                                  common-lisp:t :member-name "ClusterId")
                                 (step-id :target-type step-id :required
                                  common-lisp:t :member-name "StepId"))
                                (:shape-name "DescribeStepInput"))

(smithy/sdk/shapes:define-output describe-step-output common-lisp:nil
                                 ((step :target-type step :member-name "Step"))
                                 (:shape-name "DescribeStepOutput"))

(smithy/sdk/shapes:define-input describe-studio-input common-lisp:nil
                                ((studio-id :target-type xml-string-max-len256
                                  :required common-lisp:t :member-name
                                  "StudioId"))
                                (:shape-name "DescribeStudioInput"))

(smithy/sdk/shapes:define-output describe-studio-output common-lisp:nil
                                 ((studio :target-type studio :member-name
                                   "Studio"))
                                 (:shape-name "DescribeStudioOutput"))

(smithy/sdk/shapes:define-list ec2instance-ids-list :member instance-id)

(smithy/sdk/shapes:define-list ec2instance-ids-to-terminate-list :member
                               instance-id)

(smithy/sdk/shapes:define-structure emrcontainers-config common-lisp:nil
                                    ((job-run-id :target-type
                                      xml-string-max-len256 :member-name
                                      "JobRunId"))
                                    (:shape-name "EMRContainersConfig"))

(smithy/sdk/shapes:define-structure ebs-block-device common-lisp:nil
                                    ((volume-specification :target-type
                                      volume-specification :member-name
                                      "VolumeSpecification")
                                     (device :target-type string :member-name
                                      "Device"))
                                    (:shape-name "EbsBlockDevice"))

(smithy/sdk/shapes:define-structure ebs-block-device-config common-lisp:nil
                                    ((volume-specification :target-type
                                      volume-specification :required
                                      common-lisp:t :member-name
                                      "VolumeSpecification")
                                     (volumes-per-instance :target-type integer
                                      :member-name "VolumesPerInstance"))
                                    (:shape-name "EbsBlockDeviceConfig"))

(smithy/sdk/shapes:define-list ebs-block-device-config-list :member
                               ebs-block-device-config)

(smithy/sdk/shapes:define-list ebs-block-device-list :member ebs-block-device)

(smithy/sdk/shapes:define-structure ebs-configuration common-lisp:nil
                                    ((ebs-block-device-configs :target-type
                                      ebs-block-device-config-list :member-name
                                      "EbsBlockDeviceConfigs")
                                     (ebs-optimized :target-type boolean-object
                                      :member-name "EbsOptimized"))
                                    (:shape-name "EbsConfiguration"))

(smithy/sdk/shapes:define-structure ebs-volume common-lisp:nil
                                    ((device :target-type string :member-name
                                      "Device")
                                     (volume-id :target-type string
                                      :member-name "VolumeId"))
                                    (:shape-name "EbsVolume"))

(smithy/sdk/shapes:define-list ebs-volume-list :member ebs-volume)

(smithy/sdk/shapes:define-structure ec2instance-attributes common-lisp:nil
                                    ((ec2key-name :target-type string
                                      :member-name "Ec2KeyName")
                                     (ec2subnet-id :target-type string
                                      :member-name "Ec2SubnetId")
                                     (requested-ec2subnet-ids :target-type
                                      xml-string-max-len256list :member-name
                                      "RequestedEc2SubnetIds")
                                     (ec2availability-zone :target-type string
                                      :member-name "Ec2AvailabilityZone")
                                     (requested-ec2availability-zones
                                      :target-type xml-string-max-len256list
                                      :member-name
                                      "RequestedEc2AvailabilityZones")
                                     (iam-instance-profile :target-type string
                                      :member-name "IamInstanceProfile")
                                     (emr-managed-master-security-group
                                      :target-type string :member-name
                                      "EmrManagedMasterSecurityGroup")
                                     (emr-managed-slave-security-group
                                      :target-type string :member-name
                                      "EmrManagedSlaveSecurityGroup")
                                     (service-access-security-group
                                      :target-type string :member-name
                                      "ServiceAccessSecurityGroup")
                                     (additional-master-security-groups
                                      :target-type string-list :member-name
                                      "AdditionalMasterSecurityGroups")
                                     (additional-slave-security-groups
                                      :target-type string-list :member-name
                                      "AdditionalSlaveSecurityGroups"))
                                    (:shape-name "Ec2InstanceAttributes"))

(smithy/sdk/shapes:define-map environment-variables-map :key
                              xml-string-max-len256 :value xml-string)

(smithy/sdk/shapes:define-type error-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list error-data :member string-map)

(smithy/sdk/shapes:define-structure error-detail common-lisp:nil
                                    ((error-code :target-type string
                                      :member-name "ErrorCode")
                                     (error-data :target-type error-data
                                      :member-name "ErrorData")
                                     (error-message :target-type string
                                      :member-name "ErrorMessage"))
                                    (:shape-name "ErrorDetail"))

(smithy/sdk/shapes:define-list error-detail-list :member error-detail)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure execution-engine-config common-lisp:nil
                                    ((id :target-type xml-string-max-len256
                                      :required common-lisp:t :member-name
                                      "Id")
                                     (type :target-type execution-engine-type
                                      :member-name "Type")
                                     (master-instance-security-group-id
                                      :target-type xml-string-max-len256
                                      :member-name
                                      "MasterInstanceSecurityGroupId")
                                     (execution-role-arn :target-type
                                      iamrole-arn :member-name
                                      "ExecutionRoleArn"))
                                    (:shape-name "ExecutionEngineConfig"))

(smithy/sdk/shapes:define-enum execution-engine-type
    common-lisp:nil
  (:emr "EMR"))

(smithy/sdk/shapes:define-structure failure-details common-lisp:nil
                                    ((reason :target-type string :member-name
                                      "Reason")
                                     (message :target-type string :member-name
                                      "Message")
                                     (log-file :target-type string :member-name
                                      "LogFile"))
                                    (:shape-name "FailureDetails"))

(smithy/sdk/shapes:define-type float smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-input get-auto-termination-policy-input
                                common-lisp:nil
                                ((cluster-id :target-type cluster-id :required
                                  common-lisp:t :member-name "ClusterId"))
                                (:shape-name "GetAutoTerminationPolicyInput"))

(smithy/sdk/shapes:define-output get-auto-termination-policy-output
                                 common-lisp:nil
                                 ((auto-termination-policy :target-type
                                   auto-termination-policy :member-name
                                   "AutoTerminationPolicy"))
                                 (:shape-name "GetAutoTerminationPolicyOutput"))

(smithy/sdk/shapes:define-input get-block-public-access-configuration-input
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "GetBlockPublicAccessConfigurationInput"))

(smithy/sdk/shapes:define-output get-block-public-access-configuration-output
                                 common-lisp:nil
                                 ((block-public-access-configuration
                                   :target-type
                                   block-public-access-configuration :required
                                   common-lisp:t :member-name
                                   "BlockPublicAccessConfiguration")
                                  (block-public-access-configuration-metadata
                                   :target-type
                                   block-public-access-configuration-metadata
                                   :required common-lisp:t :member-name
                                   "BlockPublicAccessConfigurationMetadata"))
                                 (:shape-name
                                  "GetBlockPublicAccessConfigurationOutput"))

(smithy/sdk/shapes:define-input get-cluster-session-credentials-input
                                common-lisp:nil
                                ((cluster-id :target-type xml-string-max-len256
                                  :required common-lisp:t :member-name
                                  "ClusterId")
                                 (execution-role-arn :target-type arn-type
                                  :member-name "ExecutionRoleArn"))
                                (:shape-name
                                 "GetClusterSessionCredentialsInput"))

(smithy/sdk/shapes:define-output get-cluster-session-credentials-output
                                 common-lisp:nil
                                 ((credentials :target-type credentials
                                   :member-name "Credentials")
                                  (expires-at :target-type date :member-name
                                   "ExpiresAt"))
                                 (:shape-name
                                  "GetClusterSessionCredentialsOutput"))

(smithy/sdk/shapes:define-input get-managed-scaling-policy-input
                                common-lisp:nil
                                ((cluster-id :target-type cluster-id :required
                                  common-lisp:t :member-name "ClusterId"))
                                (:shape-name "GetManagedScalingPolicyInput"))

(smithy/sdk/shapes:define-output get-managed-scaling-policy-output
                                 common-lisp:nil
                                 ((managed-scaling-policy :target-type
                                   managed-scaling-policy :member-name
                                   "ManagedScalingPolicy"))
                                 (:shape-name "GetManagedScalingPolicyOutput"))

(smithy/sdk/shapes:define-input get-on-cluster-app-uipresigned-urlinput
                                common-lisp:nil
                                ((cluster-id :target-type xml-string-max-len256
                                  :required common-lisp:t :member-name
                                  "ClusterId")
                                 (on-cluster-app-uitype :target-type
                                  on-cluster-app-uitype :member-name
                                  "OnClusterAppUIType")
                                 (application-id :target-type
                                  xml-string-max-len256 :member-name
                                  "ApplicationId")
                                 (dry-run :target-type boolean-object
                                  :member-name "DryRun")
                                 (execution-role-arn :target-type arn-type
                                  :member-name "ExecutionRoleArn"))
                                (:shape-name
                                 "GetOnClusterAppUIPresignedURLInput"))

(smithy/sdk/shapes:define-output get-on-cluster-app-uipresigned-urloutput
                                 common-lisp:nil
                                 ((presigned-urlready :target-type boolean
                                   :member-name "PresignedURLReady")
                                  (presigned-url :target-type xml-string
                                   :member-name "PresignedURL"))
                                 (:shape-name
                                  "GetOnClusterAppUIPresignedURLOutput"))

(smithy/sdk/shapes:define-input get-persistent-app-uipresigned-urlinput
                                common-lisp:nil
                                ((persistent-app-uiid :target-type
                                  xml-string-max-len256 :required common-lisp:t
                                  :member-name "PersistentAppUIId")
                                 (persistent-app-uitype :target-type
                                  persistent-app-uitype :member-name
                                  "PersistentAppUIType")
                                 (application-id :target-type
                                  xml-string-max-len256 :member-name
                                  "ApplicationId")
                                 (auth-proxy-call :target-type boolean-object
                                  :member-name "AuthProxyCall")
                                 (execution-role-arn :target-type arn-type
                                  :member-name "ExecutionRoleArn"))
                                (:shape-name
                                 "GetPersistentAppUIPresignedURLInput"))

(smithy/sdk/shapes:define-output get-persistent-app-uipresigned-urloutput
                                 common-lisp:nil
                                 ((presigned-urlready :target-type boolean
                                   :member-name "PresignedURLReady")
                                  (presigned-url :target-type xml-string
                                   :member-name "PresignedURL"))
                                 (:shape-name
                                  "GetPersistentAppUIPresignedURLOutput"))

(smithy/sdk/shapes:define-input get-studio-session-mapping-input
                                common-lisp:nil
                                ((studio-id :target-type xml-string-max-len256
                                  :required common-lisp:t :member-name
                                  "StudioId")
                                 (identity-id :target-type
                                  xml-string-max-len256 :member-name
                                  "IdentityId")
                                 (identity-name :target-type
                                  xml-string-max-len256 :member-name
                                  "IdentityName")
                                 (identity-type :target-type identity-type
                                  :required common-lisp:t :member-name
                                  "IdentityType"))
                                (:shape-name "GetStudioSessionMappingInput"))

(smithy/sdk/shapes:define-output get-studio-session-mapping-output
                                 common-lisp:nil
                                 ((session-mapping :target-type
                                   session-mapping-detail :member-name
                                   "SessionMapping"))
                                 (:shape-name "GetStudioSessionMappingOutput"))

(smithy/sdk/shapes:define-structure hadoop-jar-step-config common-lisp:nil
                                    ((properties :target-type key-value-list
                                      :member-name "Properties")
                                     (jar :target-type xml-string :required
                                      common-lisp:t :member-name "Jar")
                                     (main-class :target-type xml-string
                                      :member-name "MainClass")
                                     (args :target-type xml-string-list
                                      :member-name "Args"))
                                    (:shape-name "HadoopJarStepConfig"))

(smithy/sdk/shapes:define-structure hadoop-step-config common-lisp:nil
                                    ((jar :target-type string :member-name
                                      "Jar")
                                     (properties :target-type string-map
                                      :member-name "Properties")
                                     (main-class :target-type string
                                      :member-name "MainClass")
                                     (args :target-type string-list
                                      :member-name "Args"))
                                    (:shape-name "HadoopStepConfig"))

(smithy/sdk/shapes:define-type iamrole-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum idc-user-assignment
    common-lisp:nil
  (:required "REQUIRED")
  (:optional "OPTIONAL"))

(smithy/sdk/shapes:define-enum identity-type
    common-lisp:nil
  (:user "USER")
  (:group "GROUP"))

(smithy/sdk/shapes:define-structure instance common-lisp:nil
                                    ((id :target-type instance-id :member-name
                                      "Id")
                                     (ec2instance-id :target-type instance-id
                                      :member-name "Ec2InstanceId")
                                     (public-dns-name :target-type string
                                      :member-name "PublicDnsName")
                                     (public-ip-address :target-type string
                                      :member-name "PublicIpAddress")
                                     (private-dns-name :target-type string
                                      :member-name "PrivateDnsName")
                                     (private-ip-address :target-type string
                                      :member-name "PrivateIpAddress")
                                     (status :target-type instance-status
                                      :member-name "Status")
                                     (instance-group-id :target-type string
                                      :member-name "InstanceGroupId")
                                     (instance-fleet-id :target-type
                                      instance-fleet-id :member-name
                                      "InstanceFleetId")
                                     (market :target-type market-type
                                      :member-name "Market")
                                     (instance-type :target-type instance-type
                                      :member-name "InstanceType")
                                     (ebs-volumes :target-type ebs-volume-list
                                      :member-name "EbsVolumes"))
                                    (:shape-name "Instance"))

(smithy/sdk/shapes:define-enum instance-collection-type
    common-lisp:nil
  (:instance-fleet "INSTANCE_FLEET")
  (:instance-group "INSTANCE_GROUP"))

(smithy/sdk/shapes:define-structure instance-fleet common-lisp:nil
                                    ((id :target-type instance-fleet-id
                                      :member-name "Id")
                                     (name :target-type xml-string-max-len256
                                      :member-name "Name")
                                     (status :target-type instance-fleet-status
                                      :member-name "Status")
                                     (instance-fleet-type :target-type
                                      instance-fleet-type :member-name
                                      "InstanceFleetType")
                                     (target-on-demand-capacity :target-type
                                      whole-number :member-name
                                      "TargetOnDemandCapacity")
                                     (target-spot-capacity :target-type
                                      whole-number :member-name
                                      "TargetSpotCapacity")
                                     (provisioned-on-demand-capacity
                                      :target-type whole-number :member-name
                                      "ProvisionedOnDemandCapacity")
                                     (provisioned-spot-capacity :target-type
                                      whole-number :member-name
                                      "ProvisionedSpotCapacity")
                                     (instance-type-specifications :target-type
                                      instance-type-specification-list
                                      :member-name
                                      "InstanceTypeSpecifications")
                                     (launch-specifications :target-type
                                      instance-fleet-provisioning-specifications
                                      :member-name "LaunchSpecifications")
                                     (resize-specifications :target-type
                                      instance-fleet-resizing-specifications
                                      :member-name "ResizeSpecifications")
                                     (context :target-type
                                      xml-string-max-len256 :member-name
                                      "Context"))
                                    (:shape-name "InstanceFleet"))

(smithy/sdk/shapes:define-structure instance-fleet-config common-lisp:nil
                                    ((name :target-type xml-string-max-len256
                                      :member-name "Name")
                                     (instance-fleet-type :target-type
                                      instance-fleet-type :required
                                      common-lisp:t :member-name
                                      "InstanceFleetType")
                                     (target-on-demand-capacity :target-type
                                      whole-number :member-name
                                      "TargetOnDemandCapacity")
                                     (target-spot-capacity :target-type
                                      whole-number :member-name
                                      "TargetSpotCapacity")
                                     (instance-type-configs :target-type
                                      instance-type-config-list :member-name
                                      "InstanceTypeConfigs")
                                     (launch-specifications :target-type
                                      instance-fleet-provisioning-specifications
                                      :member-name "LaunchSpecifications")
                                     (resize-specifications :target-type
                                      instance-fleet-resizing-specifications
                                      :member-name "ResizeSpecifications")
                                     (context :target-type
                                      xml-string-max-len256 :member-name
                                      "Context"))
                                    (:shape-name "InstanceFleetConfig"))

(smithy/sdk/shapes:define-list instance-fleet-config-list :member
                               instance-fleet-config)

(smithy/sdk/shapes:define-type instance-fleet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list instance-fleet-list :member instance-fleet)

(smithy/sdk/shapes:define-structure instance-fleet-modify-config
                                    common-lisp:nil
                                    ((instance-fleet-id :target-type
                                      instance-fleet-id :required common-lisp:t
                                      :member-name "InstanceFleetId")
                                     (target-on-demand-capacity :target-type
                                      whole-number :member-name
                                      "TargetOnDemandCapacity")
                                     (target-spot-capacity :target-type
                                      whole-number :member-name
                                      "TargetSpotCapacity")
                                     (resize-specifications :target-type
                                      instance-fleet-resizing-specifications
                                      :member-name "ResizeSpecifications")
                                     (instance-type-configs :target-type
                                      instance-type-config-list :member-name
                                      "InstanceTypeConfigs")
                                     (context :target-type
                                      xml-string-max-len256 :member-name
                                      "Context"))
                                    (:shape-name "InstanceFleetModifyConfig"))

(smithy/sdk/shapes:define-structure instance-fleet-provisioning-specifications
                                    common-lisp:nil
                                    ((spot-specification :target-type
                                      spot-provisioning-specification
                                      :member-name "SpotSpecification")
                                     (on-demand-specification :target-type
                                      on-demand-provisioning-specification
                                      :member-name "OnDemandSpecification"))
                                    (:shape-name
                                     "InstanceFleetProvisioningSpecifications"))

(smithy/sdk/shapes:define-structure instance-fleet-resizing-specifications
                                    common-lisp:nil
                                    ((spot-resize-specification :target-type
                                      spot-resizing-specification :member-name
                                      "SpotResizeSpecification")
                                     (on-demand-resize-specification
                                      :target-type
                                      on-demand-resizing-specification
                                      :member-name
                                      "OnDemandResizeSpecification"))
                                    (:shape-name
                                     "InstanceFleetResizingSpecifications"))

(smithy/sdk/shapes:define-enum instance-fleet-state
    common-lisp:nil
  (:provisioning "PROVISIONING")
  (:bootstrapping "BOOTSTRAPPING")
  (:running "RUNNING")
  (:resizing "RESIZING")
  (:suspended "SUSPENDED")
  (:terminating "TERMINATING")
  (:terminated "TERMINATED"))

(smithy/sdk/shapes:define-structure instance-fleet-state-change-reason
                                    common-lisp:nil
                                    ((code :target-type
                                      instance-fleet-state-change-reason-code
                                      :member-name "Code")
                                     (message :target-type string :member-name
                                      "Message"))
                                    (:shape-name
                                     "InstanceFleetStateChangeReason"))

(smithy/sdk/shapes:define-enum instance-fleet-state-change-reason-code
    common-lisp:nil
  (:internal-error "INTERNAL_ERROR")
  (:validation-error "VALIDATION_ERROR")
  (:instance-failure "INSTANCE_FAILURE")
  (:cluster-terminated "CLUSTER_TERMINATED"))

(smithy/sdk/shapes:define-structure instance-fleet-status common-lisp:nil
                                    ((state :target-type instance-fleet-state
                                      :member-name "State")
                                     (state-change-reason :target-type
                                      instance-fleet-state-change-reason
                                      :member-name "StateChangeReason")
                                     (timeline :target-type
                                      instance-fleet-timeline :member-name
                                      "Timeline"))
                                    (:shape-name "InstanceFleetStatus"))

(smithy/sdk/shapes:define-structure instance-fleet-timeline common-lisp:nil
                                    ((creation-date-time :target-type date
                                      :member-name "CreationDateTime")
                                     (ready-date-time :target-type date
                                      :member-name "ReadyDateTime")
                                     (end-date-time :target-type date
                                      :member-name "EndDateTime"))
                                    (:shape-name "InstanceFleetTimeline"))

(smithy/sdk/shapes:define-enum instance-fleet-type
    common-lisp:nil
  (:master "MASTER")
  (:core "CORE")
  (:task "TASK"))

(smithy/sdk/shapes:define-structure instance-group common-lisp:nil
                                    ((id :target-type instance-group-id
                                      :member-name "Id")
                                     (name :target-type string :member-name
                                      "Name")
                                     (market :target-type market-type
                                      :member-name "Market")
                                     (instance-group-type :target-type
                                      instance-group-type :member-name
                                      "InstanceGroupType")
                                     (bid-price :target-type string
                                      :member-name "BidPrice")
                                     (instance-type :target-type instance-type
                                      :member-name "InstanceType")
                                     (requested-instance-count :target-type
                                      integer :member-name
                                      "RequestedInstanceCount")
                                     (running-instance-count :target-type
                                      integer :member-name
                                      "RunningInstanceCount")
                                     (status :target-type instance-group-status
                                      :member-name "Status")
                                     (configurations :target-type
                                      configuration-list :member-name
                                      "Configurations")
                                     (configurations-version :target-type long
                                      :member-name "ConfigurationsVersion")
                                     (last-successfully-applied-configurations
                                      :target-type configuration-list
                                      :member-name
                                      "LastSuccessfullyAppliedConfigurations")
                                     (last-successfully-applied-configurations-version
                                      :target-type long :member-name
                                      "LastSuccessfullyAppliedConfigurationsVersion")
                                     (ebs-block-devices :target-type
                                      ebs-block-device-list :member-name
                                      "EbsBlockDevices")
                                     (ebs-optimized :target-type boolean-object
                                      :member-name "EbsOptimized")
                                     (shrink-policy :target-type shrink-policy
                                      :member-name "ShrinkPolicy")
                                     (auto-scaling-policy :target-type
                                      auto-scaling-policy-description
                                      :member-name "AutoScalingPolicy")
                                     (custom-ami-id :target-type
                                      xml-string-max-len256 :member-name
                                      "CustomAmiId"))
                                    (:shape-name "InstanceGroup"))

(smithy/sdk/shapes:define-structure instance-group-config common-lisp:nil
                                    ((name :target-type xml-string-max-len256
                                      :member-name "Name")
                                     (market :target-type market-type
                                      :member-name "Market")
                                     (instance-role :target-type
                                      instance-role-type :required
                                      common-lisp:t :member-name
                                      "InstanceRole")
                                     (bid-price :target-type
                                      xml-string-max-len256 :member-name
                                      "BidPrice")
                                     (instance-type :target-type instance-type
                                      :required common-lisp:t :member-name
                                      "InstanceType")
                                     (instance-count :target-type integer
                                      :required common-lisp:t :member-name
                                      "InstanceCount")
                                     (configurations :target-type
                                      configuration-list :member-name
                                      "Configurations")
                                     (ebs-configuration :target-type
                                      ebs-configuration :member-name
                                      "EbsConfiguration")
                                     (auto-scaling-policy :target-type
                                      auto-scaling-policy :member-name
                                      "AutoScalingPolicy")
                                     (custom-ami-id :target-type
                                      xml-string-max-len256 :member-name
                                      "CustomAmiId"))
                                    (:shape-name "InstanceGroupConfig"))

(smithy/sdk/shapes:define-list instance-group-config-list :member
                               instance-group-config)

(smithy/sdk/shapes:define-structure instance-group-detail common-lisp:nil
                                    ((instance-group-id :target-type
                                      xml-string-max-len256 :member-name
                                      "InstanceGroupId")
                                     (name :target-type xml-string-max-len256
                                      :member-name "Name")
                                     (market :target-type market-type :required
                                      common-lisp:t :member-name "Market")
                                     (instance-role :target-type
                                      instance-role-type :required
                                      common-lisp:t :member-name
                                      "InstanceRole")
                                     (bid-price :target-type
                                      xml-string-max-len256 :member-name
                                      "BidPrice")
                                     (instance-type :target-type instance-type
                                      :required common-lisp:t :member-name
                                      "InstanceType")
                                     (instance-request-count :target-type
                                      integer :required common-lisp:t
                                      :member-name "InstanceRequestCount")
                                     (instance-running-count :target-type
                                      integer :required common-lisp:t
                                      :member-name "InstanceRunningCount")
                                     (state :target-type instance-group-state
                                      :required common-lisp:t :member-name
                                      "State")
                                     (last-state-change-reason :target-type
                                      xml-string :member-name
                                      "LastStateChangeReason")
                                     (creation-date-time :target-type date
                                      :required common-lisp:t :member-name
                                      "CreationDateTime")
                                     (start-date-time :target-type date
                                      :member-name "StartDateTime")
                                     (ready-date-time :target-type date
                                      :member-name "ReadyDateTime")
                                     (end-date-time :target-type date
                                      :member-name "EndDateTime")
                                     (custom-ami-id :target-type
                                      xml-string-max-len256 :member-name
                                      "CustomAmiId"))
                                    (:shape-name "InstanceGroupDetail"))

(smithy/sdk/shapes:define-list instance-group-detail-list :member
                               instance-group-detail)

(smithy/sdk/shapes:define-type instance-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list instance-group-ids-list :member
                               xml-string-max-len256)

(smithy/sdk/shapes:define-list instance-group-list :member instance-group)

(smithy/sdk/shapes:define-structure instance-group-modify-config
                                    common-lisp:nil
                                    ((instance-group-id :target-type
                                      xml-string-max-len256 :required
                                      common-lisp:t :member-name
                                      "InstanceGroupId")
                                     (instance-count :target-type integer
                                      :member-name "InstanceCount")
                                     (ec2instance-ids-to-terminate :target-type
                                      ec2instance-ids-to-terminate-list
                                      :member-name "EC2InstanceIdsToTerminate")
                                     (shrink-policy :target-type shrink-policy
                                      :member-name "ShrinkPolicy")
                                     (reconfiguration-type :target-type
                                      reconfiguration-type :member-name
                                      "ReconfigurationType")
                                     (configurations :target-type
                                      configuration-list :member-name
                                      "Configurations"))
                                    (:shape-name "InstanceGroupModifyConfig"))

(smithy/sdk/shapes:define-list instance-group-modify-config-list :member
                               instance-group-modify-config)

(smithy/sdk/shapes:define-enum instance-group-state
    common-lisp:nil
  (:provisioning "PROVISIONING")
  (:bootstrapping "BOOTSTRAPPING")
  (:running "RUNNING")
  (:reconfiguring "RECONFIGURING")
  (:resizing "RESIZING")
  (:suspended "SUSPENDED")
  (:terminating "TERMINATING")
  (:terminated "TERMINATED")
  (:arrested "ARRESTED")
  (:shutting-down "SHUTTING_DOWN")
  (:ended "ENDED"))

(smithy/sdk/shapes:define-structure instance-group-state-change-reason
                                    common-lisp:nil
                                    ((code :target-type
                                      instance-group-state-change-reason-code
                                      :member-name "Code")
                                     (message :target-type string :member-name
                                      "Message"))
                                    (:shape-name
                                     "InstanceGroupStateChangeReason"))

(smithy/sdk/shapes:define-enum instance-group-state-change-reason-code
    common-lisp:nil
  (:internal-error "INTERNAL_ERROR")
  (:validation-error "VALIDATION_ERROR")
  (:instance-failure "INSTANCE_FAILURE")
  (:cluster-terminated "CLUSTER_TERMINATED"))

(smithy/sdk/shapes:define-structure instance-group-status common-lisp:nil
                                    ((state :target-type instance-group-state
                                      :member-name "State")
                                     (state-change-reason :target-type
                                      instance-group-state-change-reason
                                      :member-name "StateChangeReason")
                                     (timeline :target-type
                                      instance-group-timeline :member-name
                                      "Timeline"))
                                    (:shape-name "InstanceGroupStatus"))

(smithy/sdk/shapes:define-structure instance-group-timeline common-lisp:nil
                                    ((creation-date-time :target-type date
                                      :member-name "CreationDateTime")
                                     (ready-date-time :target-type date
                                      :member-name "ReadyDateTime")
                                     (end-date-time :target-type date
                                      :member-name "EndDateTime"))
                                    (:shape-name "InstanceGroupTimeline"))

(smithy/sdk/shapes:define-enum instance-group-type
    common-lisp:nil
  (:master "MASTER")
  (:core "CORE")
  (:task "TASK"))

(smithy/sdk/shapes:define-list instance-group-type-list :member
                               instance-group-type)

(smithy/sdk/shapes:define-type instance-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list instance-list :member instance)

(smithy/sdk/shapes:define-structure instance-resize-policy common-lisp:nil
                                    ((instances-to-terminate :target-type
                                      ec2instance-ids-list :member-name
                                      "InstancesToTerminate")
                                     (instances-to-protect :target-type
                                      ec2instance-ids-list :member-name
                                      "InstancesToProtect")
                                     (instance-termination-timeout :target-type
                                      integer :member-name
                                      "InstanceTerminationTimeout"))
                                    (:shape-name "InstanceResizePolicy"))

(smithy/sdk/shapes:define-enum instance-role-type
    common-lisp:nil
  (:master "MASTER")
  (:core "CORE")
  (:task "TASK"))

(smithy/sdk/shapes:define-enum instance-state
    common-lisp:nil
  (:awaiting-fulfillment "AWAITING_FULFILLMENT")
  (:provisioning "PROVISIONING")
  (:bootstrapping "BOOTSTRAPPING")
  (:running "RUNNING")
  (:terminated "TERMINATED"))

(smithy/sdk/shapes:define-structure instance-state-change-reason
                                    common-lisp:nil
                                    ((code :target-type
                                      instance-state-change-reason-code
                                      :member-name "Code")
                                     (message :target-type string :member-name
                                      "Message"))
                                    (:shape-name "InstanceStateChangeReason"))

(smithy/sdk/shapes:define-enum instance-state-change-reason-code
    common-lisp:nil
  (:internal-error "INTERNAL_ERROR")
  (:validation-error "VALIDATION_ERROR")
  (:instance-failure "INSTANCE_FAILURE")
  (:bootstrap-failure "BOOTSTRAP_FAILURE")
  (:cluster-terminated "CLUSTER_TERMINATED"))

(smithy/sdk/shapes:define-list instance-state-list :member instance-state)

(smithy/sdk/shapes:define-structure instance-status common-lisp:nil
                                    ((state :target-type instance-state
                                      :member-name "State")
                                     (state-change-reason :target-type
                                      instance-state-change-reason :member-name
                                      "StateChangeReason")
                                     (timeline :target-type instance-timeline
                                      :member-name "Timeline"))
                                    (:shape-name "InstanceStatus"))

(smithy/sdk/shapes:define-structure instance-timeline common-lisp:nil
                                    ((creation-date-time :target-type date
                                      :member-name "CreationDateTime")
                                     (ready-date-time :target-type date
                                      :member-name "ReadyDateTime")
                                     (end-date-time :target-type date
                                      :member-name "EndDateTime"))
                                    (:shape-name "InstanceTimeline"))

(smithy/sdk/shapes:define-type instance-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure instance-type-config common-lisp:nil
                                    ((instance-type :target-type instance-type
                                      :required common-lisp:t :member-name
                                      "InstanceType")
                                     (weighted-capacity :target-type
                                      whole-number :member-name
                                      "WeightedCapacity")
                                     (bid-price :target-type
                                      xml-string-max-len256 :member-name
                                      "BidPrice")
                                     (bid-price-as-percentage-of-on-demand-price
                                      :target-type non-negative-double
                                      :member-name
                                      "BidPriceAsPercentageOfOnDemandPrice")
                                     (ebs-configuration :target-type
                                      ebs-configuration :member-name
                                      "EbsConfiguration")
                                     (configurations :target-type
                                      configuration-list :member-name
                                      "Configurations")
                                     (custom-ami-id :target-type
                                      xml-string-max-len256 :member-name
                                      "CustomAmiId")
                                     (priority :target-type non-negative-double
                                      :member-name "Priority"))
                                    (:shape-name "InstanceTypeConfig"))

(smithy/sdk/shapes:define-list instance-type-config-list :member
                               instance-type-config)

(smithy/sdk/shapes:define-structure instance-type-specification common-lisp:nil
                                    ((instance-type :target-type instance-type
                                      :member-name "InstanceType")
                                     (weighted-capacity :target-type
                                      whole-number :member-name
                                      "WeightedCapacity")
                                     (bid-price :target-type
                                      xml-string-max-len256 :member-name
                                      "BidPrice")
                                     (bid-price-as-percentage-of-on-demand-price
                                      :target-type non-negative-double
                                      :member-name
                                      "BidPriceAsPercentageOfOnDemandPrice")
                                     (configurations :target-type
                                      configuration-list :member-name
                                      "Configurations")
                                     (ebs-block-devices :target-type
                                      ebs-block-device-list :member-name
                                      "EbsBlockDevices")
                                     (ebs-optimized :target-type boolean-object
                                      :member-name "EbsOptimized")
                                     (custom-ami-id :target-type
                                      xml-string-max-len256 :member-name
                                      "CustomAmiId")
                                     (priority :target-type non-negative-double
                                      :member-name "Priority"))
                                    (:shape-name "InstanceTypeSpecification"))

(smithy/sdk/shapes:define-list instance-type-specification-list :member
                               instance-type-specification)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-error common-lisp:nil
                                common-lisp:nil
                                (:shape-name "InternalServerError")
                                (:error-name "InternalFailure")
                                (:error-code 500))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((error-code :target-type error-code
                                  :member-name "ErrorCode")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure job-flow-detail common-lisp:nil
                                    ((job-flow-id :target-type
                                      xml-string-max-len256 :required
                                      common-lisp:t :member-name "JobFlowId")
                                     (name :target-type xml-string-max-len256
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (log-uri :target-type xml-string
                                      :member-name "LogUri")
                                     (log-encryption-kms-key-id :target-type
                                      xml-string :member-name
                                      "LogEncryptionKmsKeyId")
                                     (ami-version :target-type
                                      xml-string-max-len256 :member-name
                                      "AmiVersion")
                                     (execution-status-detail :target-type
                                      job-flow-execution-status-detail
                                      :required common-lisp:t :member-name
                                      "ExecutionStatusDetail")
                                     (instances :target-type
                                      job-flow-instances-detail :required
                                      common-lisp:t :member-name "Instances")
                                     (steps :target-type step-detail-list
                                      :member-name "Steps")
                                     (bootstrap-actions :target-type
                                      bootstrap-action-detail-list :member-name
                                      "BootstrapActions")
                                     (supported-products :target-type
                                      supported-products-list :member-name
                                      "SupportedProducts")
                                     (visible-to-all-users :target-type boolean
                                      :member-name "VisibleToAllUsers")
                                     (job-flow-role :target-type xml-string
                                      :member-name "JobFlowRole")
                                     (service-role :target-type xml-string
                                      :member-name "ServiceRole")
                                     (auto-scaling-role :target-type xml-string
                                      :member-name "AutoScalingRole")
                                     (scale-down-behavior :target-type
                                      scale-down-behavior :member-name
                                      "ScaleDownBehavior"))
                                    (:shape-name "JobFlowDetail"))

(smithy/sdk/shapes:define-list job-flow-detail-list :member job-flow-detail)

(smithy/sdk/shapes:define-enum job-flow-execution-state
    common-lisp:nil
  (:starting "STARTING")
  (:bootstrapping "BOOTSTRAPPING")
  (:running "RUNNING")
  (:waiting "WAITING")
  (:shutting-down "SHUTTING_DOWN")
  (:terminated "TERMINATED")
  (:completed "COMPLETED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-list job-flow-execution-state-list :member
                               job-flow-execution-state)

(smithy/sdk/shapes:define-structure job-flow-execution-status-detail
                                    common-lisp:nil
                                    ((state :target-type
                                      job-flow-execution-state :required
                                      common-lisp:t :member-name "State")
                                     (creation-date-time :target-type date
                                      :required common-lisp:t :member-name
                                      "CreationDateTime")
                                     (start-date-time :target-type date
                                      :member-name "StartDateTime")
                                     (ready-date-time :target-type date
                                      :member-name "ReadyDateTime")
                                     (end-date-time :target-type date
                                      :member-name "EndDateTime")
                                     (last-state-change-reason :target-type
                                      xml-string :member-name
                                      "LastStateChangeReason"))
                                    (:shape-name
                                     "JobFlowExecutionStatusDetail"))

(smithy/sdk/shapes:define-structure job-flow-instances-config common-lisp:nil
                                    ((master-instance-type :target-type
                                      instance-type :member-name
                                      "MasterInstanceType")
                                     (slave-instance-type :target-type
                                      instance-type :member-name
                                      "SlaveInstanceType")
                                     (instance-count :target-type integer
                                      :member-name "InstanceCount")
                                     (instance-groups :target-type
                                      instance-group-config-list :member-name
                                      "InstanceGroups")
                                     (instance-fleets :target-type
                                      instance-fleet-config-list :member-name
                                      "InstanceFleets")
                                     (ec2key-name :target-type
                                      xml-string-max-len256 :member-name
                                      "Ec2KeyName")
                                     (placement :target-type placement-type
                                      :member-name "Placement")
                                     (keep-job-flow-alive-when-no-steps
                                      :target-type boolean :member-name
                                      "KeepJobFlowAliveWhenNoSteps")
                                     (termination-protected :target-type
                                      boolean :member-name
                                      "TerminationProtected")
                                     (unhealthy-node-replacement :target-type
                                      boolean-object :member-name
                                      "UnhealthyNodeReplacement")
                                     (hadoop-version :target-type
                                      xml-string-max-len256 :member-name
                                      "HadoopVersion")
                                     (ec2subnet-id :target-type
                                      xml-string-max-len256 :member-name
                                      "Ec2SubnetId")
                                     (ec2subnet-ids :target-type
                                      xml-string-max-len256list :member-name
                                      "Ec2SubnetIds")
                                     (emr-managed-master-security-group
                                      :target-type xml-string-max-len256
                                      :member-name
                                      "EmrManagedMasterSecurityGroup")
                                     (emr-managed-slave-security-group
                                      :target-type xml-string-max-len256
                                      :member-name
                                      "EmrManagedSlaveSecurityGroup")
                                     (service-access-security-group
                                      :target-type xml-string-max-len256
                                      :member-name
                                      "ServiceAccessSecurityGroup")
                                     (additional-master-security-groups
                                      :target-type security-groups-list
                                      :member-name
                                      "AdditionalMasterSecurityGroups")
                                     (additional-slave-security-groups
                                      :target-type security-groups-list
                                      :member-name
                                      "AdditionalSlaveSecurityGroups"))
                                    (:shape-name "JobFlowInstancesConfig"))

(smithy/sdk/shapes:define-structure job-flow-instances-detail common-lisp:nil
                                    ((master-instance-type :target-type
                                      instance-type :required common-lisp:t
                                      :member-name "MasterInstanceType")
                                     (master-public-dns-name :target-type
                                      xml-string :member-name
                                      "MasterPublicDnsName")
                                     (master-instance-id :target-type
                                      xml-string :member-name
                                      "MasterInstanceId")
                                     (slave-instance-type :target-type
                                      instance-type :required common-lisp:t
                                      :member-name "SlaveInstanceType")
                                     (instance-count :target-type integer
                                      :required common-lisp:t :member-name
                                      "InstanceCount")
                                     (instance-groups :target-type
                                      instance-group-detail-list :member-name
                                      "InstanceGroups")
                                     (normalized-instance-hours :target-type
                                      integer :member-name
                                      "NormalizedInstanceHours")
                                     (ec2key-name :target-type
                                      xml-string-max-len256 :member-name
                                      "Ec2KeyName")
                                     (ec2subnet-id :target-type
                                      xml-string-max-len256 :member-name
                                      "Ec2SubnetId")
                                     (placement :target-type placement-type
                                      :member-name "Placement")
                                     (keep-job-flow-alive-when-no-steps
                                      :target-type boolean :member-name
                                      "KeepJobFlowAliveWhenNoSteps")
                                     (termination-protected :target-type
                                      boolean :member-name
                                      "TerminationProtected")
                                     (unhealthy-node-replacement :target-type
                                      boolean-object :member-name
                                      "UnhealthyNodeReplacement")
                                     (hadoop-version :target-type
                                      xml-string-max-len256 :member-name
                                      "HadoopVersion"))
                                    (:shape-name "JobFlowInstancesDetail"))

(smithy/sdk/shapes:define-structure kerberos-attributes common-lisp:nil
                                    ((realm :target-type xml-string-max-len256
                                      :required common-lisp:t :member-name
                                      "Realm")
                                     (kdc-admin-password :target-type
                                      xml-string-max-len256 :required
                                      common-lisp:t :member-name
                                      "KdcAdminPassword")
                                     (cross-realm-trust-principal-password
                                      :target-type xml-string-max-len256
                                      :member-name
                                      "CrossRealmTrustPrincipalPassword")
                                     (addomain-join-user :target-type
                                      xml-string-max-len256 :member-name
                                      "ADDomainJoinUser")
                                     (addomain-join-password :target-type
                                      xml-string-max-len256 :member-name
                                      "ADDomainJoinPassword"))
                                    (:shape-name "KerberosAttributes"))

(smithy/sdk/shapes:define-structure key-value common-lisp:nil
                                    ((key :target-type xml-string :member-name
                                      "Key")
                                     (value :target-type xml-string
                                      :member-name "Value"))
                                    (:shape-name "KeyValue"))

(smithy/sdk/shapes:define-list key-value-list :member key-value)

(smithy/sdk/shapes:define-input list-bootstrap-actions-input common-lisp:nil
                                ((cluster-id :target-type cluster-id :required
                                  common-lisp:t :member-name "ClusterId")
                                 (marker :target-type marker :member-name
                                  "Marker"))
                                (:shape-name "ListBootstrapActionsInput"))

(smithy/sdk/shapes:define-output list-bootstrap-actions-output common-lisp:nil
                                 ((bootstrap-actions :target-type command-list
                                   :member-name "BootstrapActions")
                                  (marker :target-type marker :member-name
                                   "Marker"))
                                 (:shape-name "ListBootstrapActionsOutput"))

(smithy/sdk/shapes:define-input list-clusters-input common-lisp:nil
                                ((created-after :target-type date :member-name
                                  "CreatedAfter")
                                 (created-before :target-type date :member-name
                                  "CreatedBefore")
                                 (cluster-states :target-type
                                  cluster-state-list :member-name
                                  "ClusterStates")
                                 (marker :target-type marker :member-name
                                  "Marker"))
                                (:shape-name "ListClustersInput"))

(smithy/sdk/shapes:define-output list-clusters-output common-lisp:nil
                                 ((clusters :target-type cluster-summary-list
                                   :member-name "Clusters")
                                  (marker :target-type marker :member-name
                                   "Marker"))
                                 (:shape-name "ListClustersOutput"))

(smithy/sdk/shapes:define-input list-instance-fleets-input common-lisp:nil
                                ((cluster-id :target-type cluster-id :required
                                  common-lisp:t :member-name "ClusterId")
                                 (marker :target-type marker :member-name
                                  "Marker"))
                                (:shape-name "ListInstanceFleetsInput"))

(smithy/sdk/shapes:define-output list-instance-fleets-output common-lisp:nil
                                 ((instance-fleets :target-type
                                   instance-fleet-list :member-name
                                   "InstanceFleets")
                                  (marker :target-type marker :member-name
                                   "Marker"))
                                 (:shape-name "ListInstanceFleetsOutput"))

(smithy/sdk/shapes:define-input list-instance-groups-input common-lisp:nil
                                ((cluster-id :target-type cluster-id :required
                                  common-lisp:t :member-name "ClusterId")
                                 (marker :target-type marker :member-name
                                  "Marker"))
                                (:shape-name "ListInstanceGroupsInput"))

(smithy/sdk/shapes:define-output list-instance-groups-output common-lisp:nil
                                 ((instance-groups :target-type
                                   instance-group-list :member-name
                                   "InstanceGroups")
                                  (marker :target-type marker :member-name
                                   "Marker"))
                                 (:shape-name "ListInstanceGroupsOutput"))

(smithy/sdk/shapes:define-input list-instances-input common-lisp:nil
                                ((cluster-id :target-type cluster-id :required
                                  common-lisp:t :member-name "ClusterId")
                                 (instance-group-id :target-type
                                  instance-group-id :member-name
                                  "InstanceGroupId")
                                 (instance-group-types :target-type
                                  instance-group-type-list :member-name
                                  "InstanceGroupTypes")
                                 (instance-fleet-id :target-type
                                  instance-fleet-id :member-name
                                  "InstanceFleetId")
                                 (instance-fleet-type :target-type
                                  instance-fleet-type :member-name
                                  "InstanceFleetType")
                                 (instance-states :target-type
                                  instance-state-list :member-name
                                  "InstanceStates")
                                 (marker :target-type marker :member-name
                                  "Marker"))
                                (:shape-name "ListInstancesInput"))

(smithy/sdk/shapes:define-output list-instances-output common-lisp:nil
                                 ((instances :target-type instance-list
                                   :member-name "Instances")
                                  (marker :target-type marker :member-name
                                   "Marker"))
                                 (:shape-name "ListInstancesOutput"))

(smithy/sdk/shapes:define-input list-notebook-executions-input common-lisp:nil
                                ((editor-id :target-type xml-string-max-len256
                                  :member-name "EditorId")
                                 (status :target-type notebook-execution-status
                                  :member-name "Status")
                                 (from :target-type date :member-name "From")
                                 (to :target-type date :member-name "To")
                                 (marker :target-type marker :member-name
                                  "Marker")
                                 (execution-engine-id :target-type xml-string
                                  :member-name "ExecutionEngineId"))
                                (:shape-name "ListNotebookExecutionsInput"))

(smithy/sdk/shapes:define-output list-notebook-executions-output
                                 common-lisp:nil
                                 ((notebook-executions :target-type
                                   notebook-execution-summary-list :member-name
                                   "NotebookExecutions")
                                  (marker :target-type marker :member-name
                                   "Marker"))
                                 (:shape-name "ListNotebookExecutionsOutput"))

(smithy/sdk/shapes:define-input list-release-labels-input common-lisp:nil
                                ((filters :target-type release-label-filter
                                  :member-name "Filters")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type max-results-number
                                  :member-name "MaxResults"))
                                (:shape-name "ListReleaseLabelsInput"))

(smithy/sdk/shapes:define-output list-release-labels-output common-lisp:nil
                                 ((release-labels :target-type string-list
                                   :member-name "ReleaseLabels")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListReleaseLabelsOutput"))

(smithy/sdk/shapes:define-input list-security-configurations-input
                                common-lisp:nil
                                ((marker :target-type marker :member-name
                                  "Marker"))
                                (:shape-name "ListSecurityConfigurationsInput"))

(smithy/sdk/shapes:define-output list-security-configurations-output
                                 common-lisp:nil
                                 ((security-configurations :target-type
                                   security-configuration-list :member-name
                                   "SecurityConfigurations")
                                  (marker :target-type marker :member-name
                                   "Marker"))
                                 (:shape-name
                                  "ListSecurityConfigurationsOutput"))

(smithy/sdk/shapes:define-input list-steps-input common-lisp:nil
                                ((cluster-id :target-type cluster-id :required
                                  common-lisp:t :member-name "ClusterId")
                                 (step-states :target-type step-state-list
                                  :member-name "StepStates")
                                 (step-ids :target-type xml-string-list
                                  :member-name "StepIds")
                                 (marker :target-type marker :member-name
                                  "Marker"))
                                (:shape-name "ListStepsInput"))

(smithy/sdk/shapes:define-output list-steps-output common-lisp:nil
                                 ((steps :target-type step-summary-list
                                   :member-name "Steps")
                                  (marker :target-type marker :member-name
                                   "Marker"))
                                 (:shape-name "ListStepsOutput"))

(smithy/sdk/shapes:define-input list-studio-session-mappings-input
                                common-lisp:nil
                                ((studio-id :target-type xml-string-max-len256
                                  :member-name "StudioId")
                                 (identity-type :target-type identity-type
                                  :member-name "IdentityType")
                                 (marker :target-type marker :member-name
                                  "Marker"))
                                (:shape-name "ListStudioSessionMappingsInput"))

(smithy/sdk/shapes:define-output list-studio-session-mappings-output
                                 common-lisp:nil
                                 ((session-mappings :target-type
                                   session-mapping-summary-list :member-name
                                   "SessionMappings")
                                  (marker :target-type marker :member-name
                                   "Marker"))
                                 (:shape-name
                                  "ListStudioSessionMappingsOutput"))

(smithy/sdk/shapes:define-input list-studios-input common-lisp:nil
                                ((marker :target-type marker :member-name
                                  "Marker"))
                                (:shape-name "ListStudiosInput"))

(smithy/sdk/shapes:define-output list-studios-output common-lisp:nil
                                 ((studios :target-type studio-summary-list
                                   :member-name "Studios")
                                  (marker :target-type marker :member-name
                                   "Marker"))
                                 (:shape-name "ListStudiosOutput"))

(smithy/sdk/shapes:define-input list-supported-instance-types-input
                                common-lisp:nil
                                ((release-label :target-type string :required
                                  common-lisp:t :member-name "ReleaseLabel")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name "ListSupportedInstanceTypesInput"))

(smithy/sdk/shapes:define-output list-supported-instance-types-output
                                 common-lisp:nil
                                 ((supported-instance-types :target-type
                                   supported-instance-types-list :member-name
                                   "SupportedInstanceTypes")
                                  (marker :target-type string :member-name
                                   "Marker"))
                                 (:shape-name
                                  "ListSupportedInstanceTypesOutput"))

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure managed-scaling-policy common-lisp:nil
                                    ((compute-limits :target-type
                                      compute-limits :member-name
                                      "ComputeLimits")
                                     (utilization-performance-index
                                      :target-type
                                      utilization-performance-index-integer
                                      :member-name
                                      "UtilizationPerformanceIndex")
                                     (scaling-strategy :target-type
                                      scaling-strategy :member-name
                                      "ScalingStrategy"))
                                    (:shape-name "ManagedScalingPolicy"))

(smithy/sdk/shapes:define-type marker smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum market-type
    common-lisp:nil
  (:on-demand "ON_DEMAND")
  (:spot "SPOT"))

(smithy/sdk/shapes:define-type max-results-number
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure metric-dimension common-lisp:nil
                                    ((key :target-type string :member-name
                                      "Key")
                                     (value :target-type string :member-name
                                      "Value"))
                                    (:shape-name "MetricDimension"))

(smithy/sdk/shapes:define-list metric-dimension-list :member metric-dimension)

(smithy/sdk/shapes:define-input modify-cluster-input common-lisp:nil
                                ((cluster-id :target-type string :required
                                  common-lisp:t :member-name "ClusterId")
                                 (step-concurrency-level :target-type integer
                                  :member-name "StepConcurrencyLevel")
                                 (extended-support :target-type boolean-object
                                  :member-name "ExtendedSupport"))
                                (:shape-name "ModifyClusterInput"))

(smithy/sdk/shapes:define-output modify-cluster-output common-lisp:nil
                                 ((step-concurrency-level :target-type integer
                                   :member-name "StepConcurrencyLevel")
                                  (extended-support :target-type boolean-object
                                   :member-name "ExtendedSupport"))
                                 (:shape-name "ModifyClusterOutput"))

(smithy/sdk/shapes:define-input modify-instance-fleet-input common-lisp:nil
                                ((cluster-id :target-type cluster-id :required
                                  common-lisp:t :member-name "ClusterId")
                                 (instance-fleet :target-type
                                  instance-fleet-modify-config :required
                                  common-lisp:t :member-name "InstanceFleet"))
                                (:shape-name "ModifyInstanceFleetInput"))

(smithy/sdk/shapes:define-input modify-instance-groups-input common-lisp:nil
                                ((cluster-id :target-type cluster-id
                                  :member-name "ClusterId")
                                 (instance-groups :target-type
                                  instance-group-modify-config-list
                                  :member-name "InstanceGroups"))
                                (:shape-name "ModifyInstanceGroupsInput"))

(smithy/sdk/shapes:define-list new-supported-products-list :member
                               supported-product-config)

(smithy/sdk/shapes:define-type non-negative-double
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure notebook-execution common-lisp:nil
                                    ((notebook-execution-id :target-type
                                      xml-string-max-len256 :member-name
                                      "NotebookExecutionId")
                                     (editor-id :target-type
                                      xml-string-max-len256 :member-name
                                      "EditorId")
                                     (execution-engine :target-type
                                      execution-engine-config :member-name
                                      "ExecutionEngine")
                                     (notebook-execution-name :target-type
                                      xml-string-max-len256 :member-name
                                      "NotebookExecutionName")
                                     (notebook-params :target-type xml-string
                                      :member-name "NotebookParams")
                                     (status :target-type
                                      notebook-execution-status :member-name
                                      "Status")
                                     (start-time :target-type date :member-name
                                      "StartTime")
                                     (end-time :target-type date :member-name
                                      "EndTime")
                                     (arn :target-type xml-string-max-len256
                                      :member-name "Arn")
                                     (output-notebook-uri :target-type
                                      xml-string :member-name
                                      "OutputNotebookURI")
                                     (last-state-change-reason :target-type
                                      xml-string :member-name
                                      "LastStateChangeReason")
                                     (notebook-instance-security-group-id
                                      :target-type xml-string-max-len256
                                      :member-name
                                      "NotebookInstanceSecurityGroupId")
                                     (tags :target-type tag-list :member-name
                                      "Tags")
                                     (notebook-s3location :target-type
                                      notebook-s3location-for-output
                                      :member-name "NotebookS3Location")
                                     (output-notebook-s3location :target-type
                                      output-notebook-s3location-for-output
                                      :member-name "OutputNotebookS3Location")
                                     (output-notebook-format :target-type
                                      output-notebook-format :member-name
                                      "OutputNotebookFormat")
                                     (environment-variables :target-type
                                      environment-variables-map :member-name
                                      "EnvironmentVariables"))
                                    (:shape-name "NotebookExecution"))

(smithy/sdk/shapes:define-enum notebook-execution-status
    common-lisp:nil
  (:start-pending "START_PENDING")
  (:starting "STARTING")
  (:running "RUNNING")
  (:finishing "FINISHING")
  (:finished "FINISHED")
  (:failing "FAILING")
  (:failed "FAILED")
  (:stop-pending "STOP_PENDING")
  (:stopping "STOPPING")
  (:stopped "STOPPED"))

(smithy/sdk/shapes:define-structure notebook-execution-summary common-lisp:nil
                                    ((notebook-execution-id :target-type
                                      xml-string-max-len256 :member-name
                                      "NotebookExecutionId")
                                     (editor-id :target-type
                                      xml-string-max-len256 :member-name
                                      "EditorId")
                                     (notebook-execution-name :target-type
                                      xml-string-max-len256 :member-name
                                      "NotebookExecutionName")
                                     (status :target-type
                                      notebook-execution-status :member-name
                                      "Status")
                                     (start-time :target-type date :member-name
                                      "StartTime")
                                     (end-time :target-type date :member-name
                                      "EndTime")
                                     (notebook-s3location :target-type
                                      notebook-s3location-for-output
                                      :member-name "NotebookS3Location")
                                     (execution-engine-id :target-type
                                      xml-string :member-name
                                      "ExecutionEngineId"))
                                    (:shape-name "NotebookExecutionSummary"))

(smithy/sdk/shapes:define-list notebook-execution-summary-list :member
                               notebook-execution-summary)

(smithy/sdk/shapes:define-structure notebook-s3location-for-output
                                    common-lisp:nil
                                    ((bucket :target-type xml-string-max-len256
                                      :member-name "Bucket")
                                     (key :target-type uri-string :member-name
                                      "Key"))
                                    (:shape-name "NotebookS3LocationForOutput"))

(smithy/sdk/shapes:define-structure notebook-s3location-from-input
                                    common-lisp:nil
                                    ((bucket :target-type xml-string-max-len256
                                      :member-name "Bucket")
                                     (key :target-type uri-string :member-name
                                      "Key"))
                                    (:shape-name "NotebookS3LocationFromInput"))

(smithy/sdk/shapes:define-structure osrelease common-lisp:nil
                                    ((label :target-type string :member-name
                                      "Label"))
                                    (:shape-name "OSRelease"))

(smithy/sdk/shapes:define-list osrelease-list :member osrelease)

(smithy/sdk/shapes:define-enum on-cluster-app-uitype
    common-lisp:nil
  (:spark-history-server "SparkHistoryServer")
  (:yarn-timeline-service "YarnTimelineService")
  (:tez-ui "TezUI")
  (:application-master "ApplicationMaster")
  (:job-history-server "JobHistoryServer")
  (:resource-manager "ResourceManager"))

(smithy/sdk/shapes:define-structure on-demand-capacity-reservation-options
                                    common-lisp:nil
                                    ((usage-strategy :target-type
                                      on-demand-capacity-reservation-usage-strategy
                                      :member-name "UsageStrategy")
                                     (capacity-reservation-preference
                                      :target-type
                                      on-demand-capacity-reservation-preference
                                      :member-name
                                      "CapacityReservationPreference")
                                     (capacity-reservation-resource-group-arn
                                      :target-type xml-string-max-len256
                                      :member-name
                                      "CapacityReservationResourceGroupArn"))
                                    (:shape-name
                                     "OnDemandCapacityReservationOptions"))

(smithy/sdk/shapes:define-enum on-demand-capacity-reservation-preference
    common-lisp:nil
  (:open "open")
  (:none "none"))

(smithy/sdk/shapes:define-enum on-demand-capacity-reservation-usage-strategy
    common-lisp:nil
  (:use-capacity-reservations-first "use-capacity-reservations-first"))

(smithy/sdk/shapes:define-enum on-demand-provisioning-allocation-strategy
    common-lisp:nil
  (:lowest-price "lowest-price")
  (:prioritized "prioritized"))

(smithy/sdk/shapes:define-structure on-demand-provisioning-specification
                                    common-lisp:nil
                                    ((allocation-strategy :target-type
                                      on-demand-provisioning-allocation-strategy
                                      :required common-lisp:t :member-name
                                      "AllocationStrategy")
                                     (capacity-reservation-options :target-type
                                      on-demand-capacity-reservation-options
                                      :member-name
                                      "CapacityReservationOptions"))
                                    (:shape-name
                                     "OnDemandProvisioningSpecification"))

(smithy/sdk/shapes:define-structure on-demand-resizing-specification
                                    common-lisp:nil
                                    ((timeout-duration-minutes :target-type
                                      whole-number :member-name
                                      "TimeoutDurationMinutes")
                                     (allocation-strategy :target-type
                                      on-demand-provisioning-allocation-strategy
                                      :member-name "AllocationStrategy")
                                     (capacity-reservation-options :target-type
                                      on-demand-capacity-reservation-options
                                      :member-name
                                      "CapacityReservationOptions"))
                                    (:shape-name
                                     "OnDemandResizingSpecification"))

(smithy/sdk/shapes:define-type optional-arn-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum output-notebook-format
    common-lisp:nil
  (:html "HTML"))

(smithy/sdk/shapes:define-structure output-notebook-s3location-for-output
                                    common-lisp:nil
                                    ((bucket :target-type xml-string-max-len256
                                      :member-name "Bucket")
                                     (key :target-type uri-string :member-name
                                      "Key"))
                                    (:shape-name
                                     "OutputNotebookS3LocationForOutput"))

(smithy/sdk/shapes:define-structure output-notebook-s3location-from-input
                                    common-lisp:nil
                                    ((bucket :target-type xml-string-max-len256
                                      :member-name "Bucket")
                                     (key :target-type uri-string :member-name
                                      "Key"))
                                    (:shape-name
                                     "OutputNotebookS3LocationFromInput"))

(smithy/sdk/shapes:define-structure persistent-app-ui common-lisp:nil
                                    ((persistent-app-uiid :target-type
                                      xml-string-max-len256 :member-name
                                      "PersistentAppUIId")
                                     (persistent-app-uitype-list :target-type
                                      persistent-app-uitype-list :member-name
                                      "PersistentAppUITypeList")
                                     (persistent-app-uistatus :target-type
                                      xml-string-max-len256 :member-name
                                      "PersistentAppUIStatus")
                                     (author-id :target-type
                                      xml-string-max-len256 :member-name
                                      "AuthorId")
                                     (creation-time :target-type date
                                      :member-name "CreationTime")
                                     (last-modified-time :target-type date
                                      :member-name "LastModifiedTime")
                                     (last-state-change-reason :target-type
                                      xml-string :member-name
                                      "LastStateChangeReason")
                                     (tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "PersistentAppUI"))

(smithy/sdk/shapes:define-enum persistent-app-uitype
    common-lisp:nil
  (:shs "SHS")
  (:tez "TEZ")
  (:yts "YTS"))

(smithy/sdk/shapes:define-list persistent-app-uitype-list :member
                               persistent-app-uitype)

(smithy/sdk/shapes:define-structure placement-group-config common-lisp:nil
                                    ((instance-role :target-type
                                      instance-role-type :required
                                      common-lisp:t :member-name
                                      "InstanceRole")
                                     (placement-strategy :target-type
                                      placement-group-strategy :member-name
                                      "PlacementStrategy"))
                                    (:shape-name "PlacementGroupConfig"))

(smithy/sdk/shapes:define-list placement-group-config-list :member
                               placement-group-config)

(smithy/sdk/shapes:define-enum placement-group-strategy
    common-lisp:nil
  (:spread "SPREAD")
  (:partition "PARTITION")
  (:cluster "CLUSTER")
  (:none "NONE"))

(smithy/sdk/shapes:define-structure placement-type common-lisp:nil
                                    ((availability-zone :target-type xml-string
                                      :member-name "AvailabilityZone")
                                     (availability-zones :target-type
                                      xml-string-max-len256list :member-name
                                      "AvailabilityZones"))
                                    (:shape-name "PlacementType"))

(smithy/sdk/shapes:define-type port smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure port-range common-lisp:nil
                                    ((min-range :target-type port :required
                                      common-lisp:t :member-name "MinRange")
                                     (max-range :target-type port :member-name
                                      "MaxRange"))
                                    (:shape-name "PortRange"))

(smithy/sdk/shapes:define-list port-ranges :member port-range)

(smithy/sdk/shapes:define-enum profiler-type
    common-lisp:nil
  (:shs "SHS")
  (:tezui "TEZUI")
  (:yts "YTS"))

(smithy/sdk/shapes:define-input put-auto-scaling-policy-input common-lisp:nil
                                ((cluster-id :target-type cluster-id :required
                                  common-lisp:t :member-name "ClusterId")
                                 (instance-group-id :target-type
                                  instance-group-id :required common-lisp:t
                                  :member-name "InstanceGroupId")
                                 (auto-scaling-policy :target-type
                                  auto-scaling-policy :required common-lisp:t
                                  :member-name "AutoScalingPolicy"))
                                (:shape-name "PutAutoScalingPolicyInput"))

(smithy/sdk/shapes:define-output put-auto-scaling-policy-output common-lisp:nil
                                 ((cluster-id :target-type cluster-id
                                   :member-name "ClusterId")
                                  (instance-group-id :target-type
                                   instance-group-id :member-name
                                   "InstanceGroupId")
                                  (auto-scaling-policy :target-type
                                   auto-scaling-policy-description :member-name
                                   "AutoScalingPolicy")
                                  (cluster-arn :target-type arn-type
                                   :member-name "ClusterArn"))
                                 (:shape-name "PutAutoScalingPolicyOutput"))

(smithy/sdk/shapes:define-input put-auto-termination-policy-input
                                common-lisp:nil
                                ((cluster-id :target-type cluster-id :required
                                  common-lisp:t :member-name "ClusterId")
                                 (auto-termination-policy :target-type
                                  auto-termination-policy :member-name
                                  "AutoTerminationPolicy"))
                                (:shape-name "PutAutoTerminationPolicyInput"))

(smithy/sdk/shapes:define-output put-auto-termination-policy-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "PutAutoTerminationPolicyOutput"))

(smithy/sdk/shapes:define-input put-block-public-access-configuration-input
                                common-lisp:nil
                                ((block-public-access-configuration
                                  :target-type
                                  block-public-access-configuration :required
                                  common-lisp:t :member-name
                                  "BlockPublicAccessConfiguration"))
                                (:shape-name
                                 "PutBlockPublicAccessConfigurationInput"))

(smithy/sdk/shapes:define-output put-block-public-access-configuration-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "PutBlockPublicAccessConfigurationOutput"))

(smithy/sdk/shapes:define-input put-managed-scaling-policy-input
                                common-lisp:nil
                                ((cluster-id :target-type cluster-id :required
                                  common-lisp:t :member-name "ClusterId")
                                 (managed-scaling-policy :target-type
                                  managed-scaling-policy :required
                                  common-lisp:t :member-name
                                  "ManagedScalingPolicy"))
                                (:shape-name "PutManagedScalingPolicyInput"))

(smithy/sdk/shapes:define-output put-managed-scaling-policy-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "PutManagedScalingPolicyOutput"))

(smithy/sdk/shapes:define-enum reconfiguration-type
    common-lisp:nil
  (:overwrite "OVERWRITE")
  (:merge "MERGE"))

(smithy/sdk/shapes:define-structure release-label-filter common-lisp:nil
                                    ((prefix :target-type string :member-name
                                      "Prefix")
                                     (application :target-type string
                                      :member-name "Application"))
                                    (:shape-name "ReleaseLabelFilter"))

(smithy/sdk/shapes:define-input remove-auto-scaling-policy-input
                                common-lisp:nil
                                ((cluster-id :target-type cluster-id :required
                                  common-lisp:t :member-name "ClusterId")
                                 (instance-group-id :target-type
                                  instance-group-id :required common-lisp:t
                                  :member-name "InstanceGroupId"))
                                (:shape-name "RemoveAutoScalingPolicyInput"))

(smithy/sdk/shapes:define-output remove-auto-scaling-policy-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "RemoveAutoScalingPolicyOutput"))

(smithy/sdk/shapes:define-input remove-auto-termination-policy-input
                                common-lisp:nil
                                ((cluster-id :target-type cluster-id :required
                                  common-lisp:t :member-name "ClusterId"))
                                (:shape-name
                                 "RemoveAutoTerminationPolicyInput"))

(smithy/sdk/shapes:define-output remove-auto-termination-policy-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "RemoveAutoTerminationPolicyOutput"))

(smithy/sdk/shapes:define-input remove-managed-scaling-policy-input
                                common-lisp:nil
                                ((cluster-id :target-type cluster-id :required
                                  common-lisp:t :member-name "ClusterId"))
                                (:shape-name "RemoveManagedScalingPolicyInput"))

(smithy/sdk/shapes:define-output remove-managed-scaling-policy-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "RemoveManagedScalingPolicyOutput"))

(smithy/sdk/shapes:define-input remove-tags-input common-lisp:nil
                                ((resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (tag-keys :target-type string-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "RemoveTagsInput"))

(smithy/sdk/shapes:define-output remove-tags-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "RemoveTagsOutput"))

(smithy/sdk/shapes:define-enum repo-upgrade-on-boot
    common-lisp:nil
  (:security "SECURITY")
  (:none "NONE"))

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input run-job-flow-input common-lisp:nil
                                ((name :target-type xml-string-max-len256
                                  :required common-lisp:t :member-name "Name")
                                 (log-uri :target-type xml-string :member-name
                                  "LogUri")
                                 (log-encryption-kms-key-id :target-type
                                  xml-string :member-name
                                  "LogEncryptionKmsKeyId")
                                 (additional-info :target-type xml-string
                                  :member-name "AdditionalInfo")
                                 (ami-version :target-type
                                  xml-string-max-len256 :member-name
                                  "AmiVersion")
                                 (release-label :target-type
                                  xml-string-max-len256 :member-name
                                  "ReleaseLabel")
                                 (instances :target-type
                                  job-flow-instances-config :required
                                  common-lisp:t :member-name "Instances")
                                 (steps :target-type step-config-list
                                  :member-name "Steps")
                                 (bootstrap-actions :target-type
                                  bootstrap-action-config-list :member-name
                                  "BootstrapActions")
                                 (supported-products :target-type
                                  supported-products-list :member-name
                                  "SupportedProducts")
                                 (new-supported-products :target-type
                                  new-supported-products-list :member-name
                                  "NewSupportedProducts")
                                 (applications :target-type application-list
                                  :member-name "Applications")
                                 (configurations :target-type
                                  configuration-list :member-name
                                  "Configurations")
                                 (visible-to-all-users :target-type boolean
                                  :member-name "VisibleToAllUsers")
                                 (job-flow-role :target-type xml-string
                                  :member-name "JobFlowRole")
                                 (service-role :target-type xml-string
                                  :member-name "ServiceRole")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (security-configuration :target-type
                                  xml-string :member-name
                                  "SecurityConfiguration")
                                 (auto-scaling-role :target-type xml-string
                                  :member-name "AutoScalingRole")
                                 (scale-down-behavior :target-type
                                  scale-down-behavior :member-name
                                  "ScaleDownBehavior")
                                 (custom-ami-id :target-type
                                  xml-string-max-len256 :member-name
                                  "CustomAmiId")
                                 (ebs-root-volume-size :target-type integer
                                  :member-name "EbsRootVolumeSize")
                                 (repo-upgrade-on-boot :target-type
                                  repo-upgrade-on-boot :member-name
                                  "RepoUpgradeOnBoot")
                                 (kerberos-attributes :target-type
                                  kerberos-attributes :member-name
                                  "KerberosAttributes")
                                 (step-concurrency-level :target-type integer
                                  :member-name "StepConcurrencyLevel")
                                 (managed-scaling-policy :target-type
                                  managed-scaling-policy :member-name
                                  "ManagedScalingPolicy")
                                 (placement-group-configs :target-type
                                  placement-group-config-list :member-name
                                  "PlacementGroupConfigs")
                                 (auto-termination-policy :target-type
                                  auto-termination-policy :member-name
                                  "AutoTerminationPolicy")
                                 (osrelease-label :target-type
                                  xml-string-max-len256 :member-name
                                  "OSReleaseLabel")
                                 (ebs-root-volume-iops :target-type integer
                                  :member-name "EbsRootVolumeIops")
                                 (ebs-root-volume-throughput :target-type
                                  integer :member-name
                                  "EbsRootVolumeThroughput")
                                 (extended-support :target-type boolean-object
                                  :member-name "ExtendedSupport"))
                                (:shape-name "RunJobFlowInput"))

(smithy/sdk/shapes:define-output run-job-flow-output common-lisp:nil
                                 ((job-flow-id :target-type
                                   xml-string-max-len256 :member-name
                                   "JobFlowId")
                                  (cluster-arn :target-type arn-type
                                   :member-name "ClusterArn"))
                                 (:shape-name "RunJobFlowOutput"))

(smithy/sdk/shapes:define-enum scale-down-behavior
    common-lisp:nil
  (:terminate-at-instance-hour "TERMINATE_AT_INSTANCE_HOUR")
  (:terminate-at-task-completion "TERMINATE_AT_TASK_COMPLETION"))

(smithy/sdk/shapes:define-structure scaling-action common-lisp:nil
                                    ((market :target-type market-type
                                      :member-name "Market")
                                     (simple-scaling-policy-configuration
                                      :target-type
                                      simple-scaling-policy-configuration
                                      :required common-lisp:t :member-name
                                      "SimpleScalingPolicyConfiguration"))
                                    (:shape-name "ScalingAction"))

(smithy/sdk/shapes:define-structure scaling-constraints common-lisp:nil
                                    ((min-capacity :target-type integer
                                      :required common-lisp:t :member-name
                                      "MinCapacity")
                                     (max-capacity :target-type integer
                                      :required common-lisp:t :member-name
                                      "MaxCapacity"))
                                    (:shape-name "ScalingConstraints"))

(smithy/sdk/shapes:define-structure scaling-rule common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (description :target-type string
                                      :member-name "Description")
                                     (action :target-type scaling-action
                                      :required common-lisp:t :member-name
                                      "Action")
                                     (trigger :target-type scaling-trigger
                                      :required common-lisp:t :member-name
                                      "Trigger"))
                                    (:shape-name "ScalingRule"))

(smithy/sdk/shapes:define-list scaling-rule-list :member scaling-rule)

(smithy/sdk/shapes:define-enum scaling-strategy
    common-lisp:nil
  (:default "DEFAULT")
  (:advanced "ADVANCED"))

(smithy/sdk/shapes:define-structure scaling-trigger common-lisp:nil
                                    ((cloud-watch-alarm-definition :target-type
                                      cloud-watch-alarm-definition :required
                                      common-lisp:t :member-name
                                      "CloudWatchAlarmDefinition"))
                                    (:shape-name "ScalingTrigger"))

(smithy/sdk/shapes:define-structure script-bootstrap-action-config
                                    common-lisp:nil
                                    ((path :target-type xml-string :required
                                      common-lisp:t :member-name "Path")
                                     (args :target-type xml-string-list
                                      :member-name "Args"))
                                    (:shape-name "ScriptBootstrapActionConfig"))

(smithy/sdk/shapes:define-list security-configuration-list :member
                               security-configuration-summary)

(smithy/sdk/shapes:define-structure security-configuration-summary
                                    common-lisp:nil
                                    ((name :target-type xml-string :member-name
                                      "Name")
                                     (creation-date-time :target-type date
                                      :member-name "CreationDateTime"))
                                    (:shape-name
                                     "SecurityConfigurationSummary"))

(smithy/sdk/shapes:define-list security-groups-list :member
                               xml-string-max-len256)

(smithy/sdk/shapes:define-structure session-mapping-detail common-lisp:nil
                                    ((studio-id :target-type
                                      xml-string-max-len256 :member-name
                                      "StudioId")
                                     (identity-id :target-type
                                      xml-string-max-len256 :member-name
                                      "IdentityId")
                                     (identity-name :target-type
                                      xml-string-max-len256 :member-name
                                      "IdentityName")
                                     (identity-type :target-type identity-type
                                      :member-name "IdentityType")
                                     (session-policy-arn :target-type
                                      xml-string-max-len256 :member-name
                                      "SessionPolicyArn")
                                     (creation-time :target-type date
                                      :member-name "CreationTime")
                                     (last-modified-time :target-type date
                                      :member-name "LastModifiedTime"))
                                    (:shape-name "SessionMappingDetail"))

(smithy/sdk/shapes:define-structure session-mapping-summary common-lisp:nil
                                    ((studio-id :target-type
                                      xml-string-max-len256 :member-name
                                      "StudioId")
                                     (identity-id :target-type
                                      xml-string-max-len256 :member-name
                                      "IdentityId")
                                     (identity-name :target-type
                                      xml-string-max-len256 :member-name
                                      "IdentityName")
                                     (identity-type :target-type identity-type
                                      :member-name "IdentityType")
                                     (session-policy-arn :target-type
                                      xml-string-max-len256 :member-name
                                      "SessionPolicyArn")
                                     (creation-time :target-type date
                                      :member-name "CreationTime"))
                                    (:shape-name "SessionMappingSummary"))

(smithy/sdk/shapes:define-list session-mapping-summary-list :member
                               session-mapping-summary)

(smithy/sdk/shapes:define-input set-keep-job-flow-alive-when-no-steps-input
                                common-lisp:nil
                                ((job-flow-ids :target-type xml-string-list
                                  :required common-lisp:t :member-name
                                  "JobFlowIds")
                                 (keep-job-flow-alive-when-no-steps
                                  :target-type boolean :required common-lisp:t
                                  :member-name "KeepJobFlowAliveWhenNoSteps"))
                                (:shape-name
                                 "SetKeepJobFlowAliveWhenNoStepsInput"))

(smithy/sdk/shapes:define-input set-termination-protection-input
                                common-lisp:nil
                                ((job-flow-ids :target-type xml-string-list
                                  :required common-lisp:t :member-name
                                  "JobFlowIds")
                                 (termination-protected :target-type boolean
                                  :required common-lisp:t :member-name
                                  "TerminationProtected"))
                                (:shape-name "SetTerminationProtectionInput"))

(smithy/sdk/shapes:define-input set-unhealthy-node-replacement-input
                                common-lisp:nil
                                ((job-flow-ids :target-type xml-string-list
                                  :required common-lisp:t :member-name
                                  "JobFlowIds")
                                 (unhealthy-node-replacement :target-type
                                  boolean-object :required common-lisp:t
                                  :member-name "UnhealthyNodeReplacement"))
                                (:shape-name
                                 "SetUnhealthyNodeReplacementInput"))

(smithy/sdk/shapes:define-input set-visible-to-all-users-input common-lisp:nil
                                ((job-flow-ids :target-type xml-string-list
                                  :required common-lisp:t :member-name
                                  "JobFlowIds")
                                 (visible-to-all-users :target-type boolean
                                  :required common-lisp:t :member-name
                                  "VisibleToAllUsers"))
                                (:shape-name "SetVisibleToAllUsersInput"))

(smithy/sdk/shapes:define-structure shrink-policy common-lisp:nil
                                    ((decommission-timeout :target-type integer
                                      :member-name "DecommissionTimeout")
                                     (instance-resize-policy :target-type
                                      instance-resize-policy :member-name
                                      "InstanceResizePolicy"))
                                    (:shape-name "ShrinkPolicy"))

(smithy/sdk/shapes:define-structure simple-scaling-policy-configuration
                                    common-lisp:nil
                                    ((adjustment-type :target-type
                                      adjustment-type :member-name
                                      "AdjustmentType")
                                     (scaling-adjustment :target-type integer
                                      :required common-lisp:t :member-name
                                      "ScalingAdjustment")
                                     (cool-down :target-type integer
                                      :member-name "CoolDown"))
                                    (:shape-name
                                     "SimpleScalingPolicyConfiguration"))

(smithy/sdk/shapes:define-structure simplified-application common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (version :target-type string :member-name
                                      "Version"))
                                    (:shape-name "SimplifiedApplication"))

(smithy/sdk/shapes:define-list simplified-application-list :member
                               simplified-application)

(smithy/sdk/shapes:define-enum spot-provisioning-allocation-strategy
    common-lisp:nil
  (:capacity-optimized "capacity-optimized")
  (:price-capacity-optimized "price-capacity-optimized")
  (:lowest-price "lowest-price")
  (:diversified "diversified")
  (:capacity-optimized-prioritized "capacity-optimized-prioritized"))

(smithy/sdk/shapes:define-structure spot-provisioning-specification
                                    common-lisp:nil
                                    ((timeout-duration-minutes :target-type
                                      whole-number :required common-lisp:t
                                      :member-name "TimeoutDurationMinutes")
                                     (timeout-action :target-type
                                      spot-provisioning-timeout-action
                                      :required common-lisp:t :member-name
                                      "TimeoutAction")
                                     (block-duration-minutes :target-type
                                      whole-number :member-name
                                      "BlockDurationMinutes")
                                     (allocation-strategy :target-type
                                      spot-provisioning-allocation-strategy
                                      :member-name "AllocationStrategy"))
                                    (:shape-name
                                     "SpotProvisioningSpecification"))

(smithy/sdk/shapes:define-enum spot-provisioning-timeout-action
    common-lisp:nil
  (:switch-to-on-demand "SWITCH_TO_ON_DEMAND")
  (:terminate-cluster "TERMINATE_CLUSTER"))

(smithy/sdk/shapes:define-structure spot-resizing-specification common-lisp:nil
                                    ((timeout-duration-minutes :target-type
                                      whole-number :member-name
                                      "TimeoutDurationMinutes")
                                     (allocation-strategy :target-type
                                      spot-provisioning-allocation-strategy
                                      :member-name "AllocationStrategy"))
                                    (:shape-name "SpotResizingSpecification"))

(smithy/sdk/shapes:define-input start-notebook-execution-input common-lisp:nil
                                ((editor-id :target-type xml-string-max-len256
                                  :member-name "EditorId")
                                 (relative-path :target-type xml-string
                                  :member-name "RelativePath")
                                 (notebook-execution-name :target-type
                                  xml-string-max-len256 :member-name
                                  "NotebookExecutionName")
                                 (notebook-params :target-type xml-string
                                  :member-name "NotebookParams")
                                 (execution-engine :target-type
                                  execution-engine-config :required
                                  common-lisp:t :member-name "ExecutionEngine")
                                 (service-role :target-type xml-string
                                  :required common-lisp:t :member-name
                                  "ServiceRole")
                                 (notebook-instance-security-group-id
                                  :target-type xml-string-max-len256
                                  :member-name
                                  "NotebookInstanceSecurityGroupId")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (notebook-s3location :target-type
                                  notebook-s3location-from-input :member-name
                                  "NotebookS3Location")
                                 (output-notebook-s3location :target-type
                                  output-notebook-s3location-from-input
                                  :member-name "OutputNotebookS3Location")
                                 (output-notebook-format :target-type
                                  output-notebook-format :member-name
                                  "OutputNotebookFormat")
                                 (environment-variables :target-type
                                  environment-variables-map :member-name
                                  "EnvironmentVariables"))
                                (:shape-name "StartNotebookExecutionInput"))

(smithy/sdk/shapes:define-output start-notebook-execution-output
                                 common-lisp:nil
                                 ((notebook-execution-id :target-type
                                   xml-string-max-len256 :member-name
                                   "NotebookExecutionId"))
                                 (:shape-name "StartNotebookExecutionOutput"))

(smithy/sdk/shapes:define-enum statistic
    common-lisp:nil
  (:sample-count "SAMPLE_COUNT")
  (:average "AVERAGE")
  (:sum "SUM")
  (:minimum "MINIMUM")
  (:maximum "MAXIMUM"))

(smithy/sdk/shapes:define-structure step common-lisp:nil
                                    ((id :target-type step-id :member-name
                                      "Id")
                                     (name :target-type string :member-name
                                      "Name")
                                     (config :target-type hadoop-step-config
                                      :member-name "Config")
                                     (action-on-failure :target-type
                                      action-on-failure :member-name
                                      "ActionOnFailure")
                                     (status :target-type step-status
                                      :member-name "Status")
                                     (execution-role-arn :target-type
                                      optional-arn-type :member-name
                                      "ExecutionRoleArn"))
                                    (:shape-name "Step"))

(smithy/sdk/shapes:define-enum step-cancellation-option
    common-lisp:nil
  (:send-interrupt "SEND_INTERRUPT")
  (:terminate-process "TERMINATE_PROCESS"))

(smithy/sdk/shapes:define-structure step-config common-lisp:nil
                                    ((name :target-type xml-string-max-len256
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (action-on-failure :target-type
                                      action-on-failure :member-name
                                      "ActionOnFailure")
                                     (hadoop-jar-step :target-type
                                      hadoop-jar-step-config :required
                                      common-lisp:t :member-name
                                      "HadoopJarStep"))
                                    (:shape-name "StepConfig"))

(smithy/sdk/shapes:define-list step-config-list :member step-config)

(smithy/sdk/shapes:define-structure step-detail common-lisp:nil
                                    ((step-config :target-type step-config
                                      :required common-lisp:t :member-name
                                      "StepConfig")
                                     (execution-status-detail :target-type
                                      step-execution-status-detail :required
                                      common-lisp:t :member-name
                                      "ExecutionStatusDetail"))
                                    (:shape-name "StepDetail"))

(smithy/sdk/shapes:define-list step-detail-list :member step-detail)

(smithy/sdk/shapes:define-enum step-execution-state
    common-lisp:nil
  (:pending "PENDING")
  (:running "RUNNING")
  (:continue "CONTINUE")
  (:completed "COMPLETED")
  (:cancelled "CANCELLED")
  (:failed "FAILED")
  (:interrupted "INTERRUPTED"))

(smithy/sdk/shapes:define-structure step-execution-status-detail
                                    common-lisp:nil
                                    ((state :target-type step-execution-state
                                      :required common-lisp:t :member-name
                                      "State")
                                     (creation-date-time :target-type date
                                      :required common-lisp:t :member-name
                                      "CreationDateTime")
                                     (start-date-time :target-type date
                                      :member-name "StartDateTime")
                                     (end-date-time :target-type date
                                      :member-name "EndDateTime")
                                     (last-state-change-reason :target-type
                                      xml-string :member-name
                                      "LastStateChangeReason"))
                                    (:shape-name "StepExecutionStatusDetail"))

(smithy/sdk/shapes:define-type step-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list step-ids-list :member xml-string-max-len256)

(smithy/sdk/shapes:define-enum step-state
    common-lisp:nil
  (:pending "PENDING")
  (:cancel-pending "CANCEL_PENDING")
  (:running "RUNNING")
  (:completed "COMPLETED")
  (:cancelled "CANCELLED")
  (:failed "FAILED")
  (:interrupted "INTERRUPTED"))

(smithy/sdk/shapes:define-structure step-state-change-reason common-lisp:nil
                                    ((code :target-type
                                      step-state-change-reason-code
                                      :member-name "Code")
                                     (message :target-type string :member-name
                                      "Message"))
                                    (:shape-name "StepStateChangeReason"))

(smithy/sdk/shapes:define-enum step-state-change-reason-code
    common-lisp:nil
  (:none "NONE"))

(smithy/sdk/shapes:define-list step-state-list :member step-state)

(smithy/sdk/shapes:define-structure step-status common-lisp:nil
                                    ((state :target-type step-state
                                      :member-name "State")
                                     (state-change-reason :target-type
                                      step-state-change-reason :member-name
                                      "StateChangeReason")
                                     (failure-details :target-type
                                      failure-details :member-name
                                      "FailureDetails")
                                     (timeline :target-type step-timeline
                                      :member-name "Timeline"))
                                    (:shape-name "StepStatus"))

(smithy/sdk/shapes:define-structure step-summary common-lisp:nil
                                    ((id :target-type step-id :member-name
                                      "Id")
                                     (name :target-type string :member-name
                                      "Name")
                                     (config :target-type hadoop-step-config
                                      :member-name "Config")
                                     (action-on-failure :target-type
                                      action-on-failure :member-name
                                      "ActionOnFailure")
                                     (status :target-type step-status
                                      :member-name "Status"))
                                    (:shape-name "StepSummary"))

(smithy/sdk/shapes:define-list step-summary-list :member step-summary)

(smithy/sdk/shapes:define-structure step-timeline common-lisp:nil
                                    ((creation-date-time :target-type date
                                      :member-name "CreationDateTime")
                                     (start-date-time :target-type date
                                      :member-name "StartDateTime")
                                     (end-date-time :target-type date
                                      :member-name "EndDateTime"))
                                    (:shape-name "StepTimeline"))

(smithy/sdk/shapes:define-input stop-notebook-execution-input common-lisp:nil
                                ((notebook-execution-id :target-type
                                  xml-string-max-len256 :required common-lisp:t
                                  :member-name "NotebookExecutionId"))
                                (:shape-name "StopNotebookExecutionInput"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-list :member string)

(smithy/sdk/shapes:define-map string-map :key string :value string)

(smithy/sdk/shapes:define-structure studio common-lisp:nil
                                    ((studio-id :target-type
                                      xml-string-max-len256 :member-name
                                      "StudioId")
                                     (studio-arn :target-type
                                      xml-string-max-len256 :member-name
                                      "StudioArn")
                                     (name :target-type xml-string-max-len256
                                      :member-name "Name")
                                     (description :target-type
                                      xml-string-max-len256 :member-name
                                      "Description")
                                     (auth-mode :target-type auth-mode
                                      :member-name "AuthMode")
                                     (vpc-id :target-type xml-string-max-len256
                                      :member-name "VpcId")
                                     (subnet-ids :target-type subnet-id-list
                                      :member-name "SubnetIds")
                                     (service-role :target-type xml-string
                                      :member-name "ServiceRole")
                                     (user-role :target-type xml-string
                                      :member-name "UserRole")
                                     (workspace-security-group-id :target-type
                                      xml-string-max-len256 :member-name
                                      "WorkspaceSecurityGroupId")
                                     (engine-security-group-id :target-type
                                      xml-string-max-len256 :member-name
                                      "EngineSecurityGroupId")
                                     (url :target-type xml-string :member-name
                                      "Url")
                                     (creation-time :target-type date
                                      :member-name "CreationTime")
                                     (default-s3location :target-type
                                      xml-string :member-name
                                      "DefaultS3Location")
                                     (idp-auth-url :target-type xml-string
                                      :member-name "IdpAuthUrl")
                                     (idp-relay-state-parameter-name
                                      :target-type xml-string-max-len256
                                      :member-name
                                      "IdpRelayStateParameterName")
                                     (tags :target-type tag-list :member-name
                                      "Tags")
                                     (idc-instance-arn :target-type arn-type
                                      :member-name "IdcInstanceArn")
                                     (trusted-identity-propagation-enabled
                                      :target-type boolean-object :member-name
                                      "TrustedIdentityPropagationEnabled")
                                     (idc-user-assignment :target-type
                                      idc-user-assignment :member-name
                                      "IdcUserAssignment")
                                     (encryption-key-arn :target-type
                                      xml-string :member-name
                                      "EncryptionKeyArn"))
                                    (:shape-name "Studio"))

(smithy/sdk/shapes:define-structure studio-summary common-lisp:nil
                                    ((studio-id :target-type
                                      xml-string-max-len256 :member-name
                                      "StudioId")
                                     (name :target-type xml-string-max-len256
                                      :member-name "Name")
                                     (vpc-id :target-type xml-string-max-len256
                                      :member-name "VpcId")
                                     (description :target-type
                                      xml-string-max-len256 :member-name
                                      "Description")
                                     (url :target-type xml-string-max-len256
                                      :member-name "Url")
                                     (auth-mode :target-type auth-mode
                                      :member-name "AuthMode")
                                     (creation-time :target-type date
                                      :member-name "CreationTime"))
                                    (:shape-name "StudioSummary"))

(smithy/sdk/shapes:define-list studio-summary-list :member studio-summary)

(smithy/sdk/shapes:define-list subnet-id-list :member string)

(smithy/sdk/shapes:define-structure supported-instance-type common-lisp:nil
                                    ((type :target-type string :member-name
                                      "Type")
                                     (memory-gb :target-type float :member-name
                                      "MemoryGB")
                                     (storage-gb :target-type integer
                                      :member-name "StorageGB")
                                     (vcpu :target-type integer :member-name
                                      "VCPU")
                                     (is64bits-only :target-type boolean
                                      :member-name "Is64BitsOnly")
                                     (instance-family-id :target-type string
                                      :member-name "InstanceFamilyId")
                                     (ebs-optimized-available :target-type
                                      boolean :member-name
                                      "EbsOptimizedAvailable")
                                     (ebs-optimized-by-default :target-type
                                      boolean :member-name
                                      "EbsOptimizedByDefault")
                                     (number-of-disks :target-type integer
                                      :member-name "NumberOfDisks")
                                     (ebs-storage-only :target-type boolean
                                      :member-name "EbsStorageOnly")
                                     (architecture :target-type string
                                      :member-name "Architecture"))
                                    (:shape-name "SupportedInstanceType"))

(smithy/sdk/shapes:define-list supported-instance-types-list :member
                               supported-instance-type)

(smithy/sdk/shapes:define-structure supported-product-config common-lisp:nil
                                    ((name :target-type xml-string-max-len256
                                      :member-name "Name")
                                     (args :target-type xml-string-list
                                      :member-name "Args"))
                                    (:shape-name "SupportedProductConfig"))

(smithy/sdk/shapes:define-list supported-products-list :member
                               xml-string-max-len256)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type string :member-name
                                      "Key")
                                     (value :target-type string :member-name
                                      "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input terminate-job-flows-input common-lisp:nil
                                ((job-flow-ids :target-type xml-string-list
                                  :required common-lisp:t :member-name
                                  "JobFlowIds"))
                                (:shape-name "TerminateJobFlowsInput"))

(smithy/sdk/shapes:define-type throughput-val smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum unit
    common-lisp:nil
  (:none "NONE")
  (:seconds "SECONDS")
  (:micro-seconds "MICRO_SECONDS")
  (:milli-seconds "MILLI_SECONDS")
  (:bytes "BYTES")
  (:kilo-bytes "KILO_BYTES")
  (:mega-bytes "MEGA_BYTES")
  (:giga-bytes "GIGA_BYTES")
  (:tera-bytes "TERA_BYTES")
  (:bits "BITS")
  (:kilo-bits "KILO_BITS")
  (:mega-bits "MEGA_BITS")
  (:giga-bits "GIGA_BITS")
  (:tera-bits "TERA_BITS")
  (:percent "PERCENT")
  (:count "COUNT")
  (:bytes-per-second "BYTES_PER_SECOND")
  (:kilo-bytes-per-second "KILO_BYTES_PER_SECOND")
  (:mega-bytes-per-second "MEGA_BYTES_PER_SECOND")
  (:giga-bytes-per-second "GIGA_BYTES_PER_SECOND")
  (:tera-bytes-per-second "TERA_BYTES_PER_SECOND")
  (:bits-per-second "BITS_PER_SECOND")
  (:kilo-bits-per-second "KILO_BITS_PER_SECOND")
  (:mega-bits-per-second "MEGA_BITS_PER_SECOND")
  (:giga-bits-per-second "GIGA_BITS_PER_SECOND")
  (:tera-bits-per-second "TERA_BITS_PER_SECOND")
  (:count-per-second "COUNT_PER_SECOND"))

(smithy/sdk/shapes:define-input update-studio-input common-lisp:nil
                                ((studio-id :target-type xml-string-max-len256
                                  :required common-lisp:t :member-name
                                  "StudioId")
                                 (name :target-type xml-string-max-len256
                                  :member-name "Name")
                                 (description :target-type
                                  xml-string-max-len256 :member-name
                                  "Description")
                                 (subnet-ids :target-type subnet-id-list
                                  :member-name "SubnetIds")
                                 (default-s3location :target-type xml-string
                                  :member-name "DefaultS3Location")
                                 (encryption-key-arn :target-type xml-string
                                  :member-name "EncryptionKeyArn"))
                                (:shape-name "UpdateStudioInput"))

(smithy/sdk/shapes:define-input update-studio-session-mapping-input
                                common-lisp:nil
                                ((studio-id :target-type xml-string-max-len256
                                  :required common-lisp:t :member-name
                                  "StudioId")
                                 (identity-id :target-type
                                  xml-string-max-len256 :member-name
                                  "IdentityId")
                                 (identity-name :target-type
                                  xml-string-max-len256 :member-name
                                  "IdentityName")
                                 (identity-type :target-type identity-type
                                  :required common-lisp:t :member-name
                                  "IdentityType")
                                 (session-policy-arn :target-type
                                  xml-string-max-len256 :required common-lisp:t
                                  :member-name "SessionPolicyArn"))
                                (:shape-name "UpdateStudioSessionMappingInput"))

(smithy/sdk/shapes:define-type uri-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure username-password common-lisp:nil
                                    ((username :target-type
                                      xml-string-max-len256 :member-name
                                      "Username")
                                     (password :target-type
                                      xml-string-max-len256 :member-name
                                      "Password"))
                                    (:shape-name "UsernamePassword"))

(smithy/sdk/shapes:define-type utilization-performance-index-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure volume-specification common-lisp:nil
                                    ((volume-type :target-type string :required
                                      common-lisp:t :member-name "VolumeType")
                                     (iops :target-type integer :member-name
                                      "Iops")
                                     (size-in-gb :target-type integer :required
                                      common-lisp:t :member-name "SizeInGB")
                                     (throughput :target-type throughput-val
                                      :member-name "Throughput"))
                                    (:shape-name "VolumeSpecification"))

(smithy/sdk/shapes:define-type whole-number smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type xml-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list xml-string-list :member xml-string)

(smithy/sdk/shapes:define-type xml-string-max-len256
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list xml-string-max-len256list :member
                               xml-string-max-len256)

(smithy/sdk/operation:define-operation add-instance-fleet :shape-name
                                       "AddInstanceFleet" :input
                                       add-instance-fleet-input :output
                                       add-instance-fleet-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation add-instance-groups :shape-name
                                       "AddInstanceGroups" :input
                                       add-instance-groups-input :output
                                       add-instance-groups-output :errors
                                       (internal-server-error))

(smithy/sdk/operation:define-operation add-job-flow-steps :shape-name
                                       "AddJobFlowSteps" :input
                                       add-job-flow-steps-input :output
                                       add-job-flow-steps-output :errors
                                       (internal-server-error))

(smithy/sdk/operation:define-operation add-tags :shape-name "AddTags" :input
                                       add-tags-input :output add-tags-output
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation cancel-steps :shape-name "CancelSteps"
                                       :input cancel-steps-input :output
                                       cancel-steps-output :errors
                                       (internal-server-error
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation create-persistent-app-ui :shape-name
                                       "CreatePersistentAppUI" :input
                                       create-persistent-app-uiinput :output
                                       create-persistent-app-uioutput :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation create-security-configuration
                                       :shape-name
                                       "CreateSecurityConfiguration" :input
                                       create-security-configuration-input
                                       :output
                                       create-security-configuration-output
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation create-studio :shape-name "CreateStudio"
                                       :input create-studio-input :output
                                       create-studio-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation create-studio-session-mapping
                                       :shape-name "CreateStudioSessionMapping"
                                       :input
                                       create-studio-session-mapping-input
                                       :output common-lisp:null :errors
                                       (internal-server-error
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation delete-security-configuration
                                       :shape-name
                                       "DeleteSecurityConfiguration" :input
                                       delete-security-configuration-input
                                       :output
                                       delete-security-configuration-output
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation delete-studio :shape-name "DeleteStudio"
                                       :input delete-studio-input :output
                                       common-lisp:null :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation delete-studio-session-mapping
                                       :shape-name "DeleteStudioSessionMapping"
                                       :input
                                       delete-studio-session-mapping-input
                                       :output common-lisp:null :errors
                                       (internal-server-error
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation describe-cluster :shape-name
                                       "DescribeCluster" :input
                                       describe-cluster-input :output
                                       describe-cluster-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation describe-job-flows :shape-name
                                       "DescribeJobFlows" :input
                                       describe-job-flows-input :output
                                       describe-job-flows-output :errors
                                       (internal-server-error))

(smithy/sdk/operation:define-operation describe-notebook-execution :shape-name
                                       "DescribeNotebookExecution" :input
                                       describe-notebook-execution-input
                                       :output
                                       describe-notebook-execution-output
                                       :errors
                                       (internal-server-error
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation describe-persistent-app-ui :shape-name
                                       "DescribePersistentAppUI" :input
                                       describe-persistent-app-uiinput :output
                                       describe-persistent-app-uioutput :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation describe-release-label :shape-name
                                       "DescribeReleaseLabel" :input
                                       describe-release-label-input :output
                                       describe-release-label-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation describe-security-configuration
                                       :shape-name
                                       "DescribeSecurityConfiguration" :input
                                       describe-security-configuration-input
                                       :output
                                       describe-security-configuration-output
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation describe-step :shape-name "DescribeStep"
                                       :input describe-step-input :output
                                       describe-step-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation describe-studio :shape-name
                                       "DescribeStudio" :input
                                       describe-studio-input :output
                                       describe-studio-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation get-auto-termination-policy :shape-name
                                       "GetAutoTerminationPolicy" :input
                                       get-auto-termination-policy-input
                                       :output
                                       get-auto-termination-policy-output
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation get-block-public-access-configuration
                                       :shape-name
                                       "GetBlockPublicAccessConfiguration"
                                       :input
                                       get-block-public-access-configuration-input
                                       :output
                                       get-block-public-access-configuration-output
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation get-cluster-session-credentials
                                       :shape-name
                                       "GetClusterSessionCredentials" :input
                                       get-cluster-session-credentials-input
                                       :output
                                       get-cluster-session-credentials-output
                                       :errors
                                       (internal-server-error
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation get-managed-scaling-policy :shape-name
                                       "GetManagedScalingPolicy" :input
                                       get-managed-scaling-policy-input :output
                                       get-managed-scaling-policy-output
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation get-on-cluster-app-uipresigned-url
                                       :shape-name
                                       "GetOnClusterAppUIPresignedURL" :input
                                       get-on-cluster-app-uipresigned-urlinput
                                       :output
                                       get-on-cluster-app-uipresigned-urloutput
                                       :errors
                                       (internal-server-error
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation get-persistent-app-uipresigned-url
                                       :shape-name
                                       "GetPersistentAppUIPresignedURL" :input
                                       get-persistent-app-uipresigned-urlinput
                                       :output
                                       get-persistent-app-uipresigned-urloutput
                                       :errors
                                       (internal-server-error
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation get-studio-session-mapping :shape-name
                                       "GetStudioSessionMapping" :input
                                       get-studio-session-mapping-input :output
                                       get-studio-session-mapping-output
                                       :errors
                                       (internal-server-error
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation list-bootstrap-actions :shape-name
                                       "ListBootstrapActions" :input
                                       list-bootstrap-actions-input :output
                                       list-bootstrap-actions-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation list-clusters :shape-name "ListClusters"
                                       :input list-clusters-input :output
                                       list-clusters-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation list-instance-fleets :shape-name
                                       "ListInstanceFleets" :input
                                       list-instance-fleets-input :output
                                       list-instance-fleets-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation list-instance-groups :shape-name
                                       "ListInstanceGroups" :input
                                       list-instance-groups-input :output
                                       list-instance-groups-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation list-instances :shape-name
                                       "ListInstances" :input
                                       list-instances-input :output
                                       list-instances-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation list-notebook-executions :shape-name
                                       "ListNotebookExecutions" :input
                                       list-notebook-executions-input :output
                                       list-notebook-executions-output :errors
                                       (internal-server-error
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation list-release-labels :shape-name
                                       "ListReleaseLabels" :input
                                       list-release-labels-input :output
                                       list-release-labels-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation list-security-configurations :shape-name
                                       "ListSecurityConfigurations" :input
                                       list-security-configurations-input
                                       :output
                                       list-security-configurations-output
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation list-steps :shape-name "ListSteps"
                                       :input list-steps-input :output
                                       list-steps-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation list-studio-session-mappings :shape-name
                                       "ListStudioSessionMappings" :input
                                       list-studio-session-mappings-input
                                       :output
                                       list-studio-session-mappings-output
                                       :errors
                                       (internal-server-error
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation list-studios :shape-name "ListStudios"
                                       :input list-studios-input :output
                                       list-studios-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation list-supported-instance-types
                                       :shape-name "ListSupportedInstanceTypes"
                                       :input
                                       list-supported-instance-types-input
                                       :output
                                       list-supported-instance-types-output
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation modify-cluster :shape-name
                                       "ModifyCluster" :input
                                       modify-cluster-input :output
                                       modify-cluster-output :errors
                                       (internal-server-error
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation modify-instance-fleet :shape-name
                                       "ModifyInstanceFleet" :input
                                       modify-instance-fleet-input :output
                                       common-lisp:null :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation modify-instance-groups :shape-name
                                       "ModifyInstanceGroups" :input
                                       modify-instance-groups-input :output
                                       common-lisp:null :errors
                                       (internal-server-error))

(smithy/sdk/operation:define-operation put-auto-scaling-policy :shape-name
                                       "PutAutoScalingPolicy" :input
                                       put-auto-scaling-policy-input :output
                                       put-auto-scaling-policy-output :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation put-auto-termination-policy :shape-name
                                       "PutAutoTerminationPolicy" :input
                                       put-auto-termination-policy-input
                                       :output
                                       put-auto-termination-policy-output
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation put-block-public-access-configuration
                                       :shape-name
                                       "PutBlockPublicAccessConfiguration"
                                       :input
                                       put-block-public-access-configuration-input
                                       :output
                                       put-block-public-access-configuration-output
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation put-managed-scaling-policy :shape-name
                                       "PutManagedScalingPolicy" :input
                                       put-managed-scaling-policy-input :output
                                       put-managed-scaling-policy-output
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation remove-auto-scaling-policy :shape-name
                                       "RemoveAutoScalingPolicy" :input
                                       remove-auto-scaling-policy-input :output
                                       remove-auto-scaling-policy-output
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation remove-auto-termination-policy
                                       :shape-name
                                       "RemoveAutoTerminationPolicy" :input
                                       remove-auto-termination-policy-input
                                       :output
                                       remove-auto-termination-policy-output
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation remove-managed-scaling-policy
                                       :shape-name "RemoveManagedScalingPolicy"
                                       :input
                                       remove-managed-scaling-policy-input
                                       :output
                                       remove-managed-scaling-policy-output
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation remove-tags :shape-name "RemoveTags"
                                       :input remove-tags-input :output
                                       remove-tags-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation run-job-flow :shape-name "RunJobFlow"
                                       :input run-job-flow-input :output
                                       run-job-flow-output :errors
                                       (internal-server-error))

(smithy/sdk/operation:define-operation set-keep-job-flow-alive-when-no-steps
                                       :shape-name
                                       "SetKeepJobFlowAliveWhenNoSteps" :input
                                       set-keep-job-flow-alive-when-no-steps-input
                                       :output common-lisp:null :errors
                                       (internal-server-error))

(smithy/sdk/operation:define-operation set-termination-protection :shape-name
                                       "SetTerminationProtection" :input
                                       set-termination-protection-input :output
                                       common-lisp:null :errors
                                       (internal-server-error))

(smithy/sdk/operation:define-operation set-unhealthy-node-replacement
                                       :shape-name
                                       "SetUnhealthyNodeReplacement" :input
                                       set-unhealthy-node-replacement-input
                                       :output common-lisp:null :errors
                                       (internal-server-error))

(smithy/sdk/operation:define-operation set-visible-to-all-users :shape-name
                                       "SetVisibleToAllUsers" :input
                                       set-visible-to-all-users-input :output
                                       common-lisp:null :errors
                                       (internal-server-error))

(smithy/sdk/operation:define-operation start-notebook-execution :shape-name
                                       "StartNotebookExecution" :input
                                       start-notebook-execution-input :output
                                       start-notebook-execution-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation stop-notebook-execution :shape-name
                                       "StopNotebookExecution" :input
                                       stop-notebook-execution-input :output
                                       common-lisp:null :errors
                                       (internal-server-error
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation terminate-job-flows :shape-name
                                       "TerminateJobFlows" :input
                                       terminate-job-flows-input :output
                                       common-lisp:null :errors
                                       (internal-server-error))

(smithy/sdk/operation:define-operation update-studio :shape-name "UpdateStudio"
                                       :input update-studio-input :output
                                       common-lisp:null :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation update-studio-session-mapping
                                       :shape-name "UpdateStudioSessionMapping"
                                       :input
                                       update-studio-session-mapping-input
                                       :output common-lisp:null :errors
                                       (internal-server-error
                                        invalid-request-exception))
