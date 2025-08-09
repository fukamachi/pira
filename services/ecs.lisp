(uiop/package:define-package #:pira/ecs (:use)
                             (:export #:advanced-configuration
                              #:agent-update-status
                              #:amazon-ec2container-service-v20141113
                              #:application-protocol #:assign-public-ip
                              #:attachment #:attachment-details
                              #:attachment-state-change
                              #:attachment-state-changes #:attachments
                              #:attribute #:attributes
                              #:auto-scaling-group-provider
                              #:auto-scaling-group-provider-update
                              #:availability-zone-rebalancing
                              #:aws-vpc-configuration #:boolean #:boxed-boolean
                              #:boxed-integer #:cpuarchitecture
                              #:capacity-provider #:capacity-provider-field
                              #:capacity-provider-field-list
                              #:capacity-provider-status
                              #:capacity-provider-strategy
                              #:capacity-provider-strategy-item
                              #:capacity-provider-strategy-item-base
                              #:capacity-provider-strategy-item-weight
                              #:capacity-provider-update-status
                              #:capacity-providers #:cluster
                              #:cluster-configuration #:cluster-field
                              #:cluster-field-list
                              #:cluster-service-connect-defaults
                              #:cluster-service-connect-defaults-request
                              #:cluster-setting #:cluster-setting-name
                              #:cluster-settings #:clusters #:compatibility
                              #:compatibility-list #:connectivity #:container
                              #:container-condition #:container-definition
                              #:container-definitions #:container-dependencies
                              #:container-dependency #:container-image
                              #:container-images #:container-instance
                              #:container-instance-field
                              #:container-instance-field-list
                              #:container-instance-health-status
                              #:container-instance-status #:container-instances
                              #:container-override #:container-overrides
                              #:container-restart-policy
                              #:container-state-change
                              #:container-state-changes #:containers
                              #:create-capacity-provider #:create-cluster
                              #:create-service #:create-task-set #:created-at
                              #:delete-account-setting #:delete-attributes
                              #:delete-capacity-provider #:delete-cluster
                              #:delete-service #:delete-task-definitions
                              #:delete-task-set #:deployment
                              #:deployment-alarms #:deployment-circuit-breaker
                              #:deployment-configuration
                              #:deployment-controller
                              #:deployment-controller-type
                              #:deployment-ephemeral-storage
                              #:deployment-lifecycle-hook
                              #:deployment-lifecycle-hook-list
                              #:deployment-lifecycle-hook-stage
                              #:deployment-lifecycle-hook-stage-list
                              #:deployment-rollout-state #:deployment-strategy
                              #:deployments #:deregister-container-instance
                              #:deregister-task-definition
                              #:describe-capacity-providers #:describe-clusters
                              #:describe-container-instances
                              #:describe-service-deployments
                              #:describe-service-revisions #:describe-services
                              #:describe-task-definition #:describe-task-sets
                              #:describe-tasks #:desired-status #:device
                              #:device-cgroup-permission
                              #:device-cgroup-permissions #:devices-list
                              #:discover-poll-endpoint #:docker-labels-map
                              #:docker-volume-configuration #:double #:duration
                              #:ebskmskey-id #:ebsresource-type
                              #:ebssnapshot-id #:ebstag-specification
                              #:ebstag-specifications #:ebsvolume-type
                              #:ecsvolume-name #:efsauthorization-config
                              #:efsauthorization-config-iam
                              #:efstransit-encryption #:efsvolume-configuration
                              #:environment-file #:environment-file-type
                              #:environment-files #:environment-variables
                              #:ephemeral-storage #:execute-command
                              #:execute-command-configuration
                              #:execute-command-log-configuration
                              #:execute-command-logging
                              #:fsx-windows-file-server-authorization-config
                              #:fsx-windows-file-server-volume-configuration
                              #:failure #:failures #:firelens-configuration
                              #:firelens-configuration-options-map
                              #:firelens-configuration-type
                              #:get-task-protection #:gpu-ids #:health-check
                              #:health-status #:host-entry #:host-entry-list
                              #:host-volume-properties #:iamrole-arn
                              #:inference-accelerator
                              #:inference-accelerator-override
                              #:inference-accelerator-overrides
                              #:inference-accelerators
                              #:instance-health-check-result
                              #:instance-health-check-result-list
                              #:instance-health-check-state
                              #:instance-health-check-type #:integer
                              #:integer-list #:ipc-mode #:kernel-capabilities
                              #:key-value-pair #:launch-type #:linux-parameters
                              #:list-account-settings #:list-attributes
                              #:list-clusters #:list-container-instances
                              #:list-service-deployments #:list-services
                              #:list-services-by-namespace
                              #:list-tags-for-resource
                              #:list-task-definition-families
                              #:list-task-definitions #:list-tasks
                              #:load-balancer #:load-balancers
                              #:log-configuration
                              #:log-configuration-options-map #:log-driver
                              #:long #:managed-agent #:managed-agent-name
                              #:managed-agent-state-change
                              #:managed-agent-state-changes #:managed-agents
                              #:managed-draining #:managed-scaling
                              #:managed-scaling-instance-warmup-period
                              #:managed-scaling-status
                              #:managed-scaling-step-size
                              #:managed-scaling-target-capacity
                              #:managed-storage-configuration
                              #:managed-termination-protection #:mount-point
                              #:mount-point-list #:network-binding
                              #:network-bindings #:network-configuration
                              #:network-interface #:network-interfaces
                              #:network-mode #:osfamily #:pid-mode
                              #:placement-constraint
                              #:placement-constraint-type
                              #:placement-constraints #:placement-strategies
                              #:placement-strategy #:placement-strategy-type
                              #:platform-device #:platform-device-type
                              #:platform-devices #:port-mapping
                              #:port-mapping-list #:port-number
                              #:propagate-tags #:protected-task
                              #:protected-tasks #:proxy-configuration
                              #:proxy-configuration-properties
                              #:proxy-configuration-type #:put-account-setting
                              #:put-account-setting-default #:put-attributes
                              #:put-cluster-capacity-providers
                              #:register-container-instance
                              #:register-task-definition
                              #:repository-credentials #:requires-attributes
                              #:resolved-configuration #:resource
                              #:resource-ids #:resource-requirement
                              #:resource-requirements #:resource-type
                              #:resources #:rollback #:run-task
                              #:runtime-platform #:scale #:scale-unit
                              #:scheduling-strategy #:scope #:secret
                              #:secret-list #:sensitive-string #:service
                              #:service-connect-client-alias
                              #:service-connect-client-alias-list
                              #:service-connect-configuration
                              #:service-connect-service
                              #:service-connect-service-list
                              #:service-connect-service-resource
                              #:service-connect-service-resource-list
                              #:service-connect-test-traffic-header-match-rules
                              #:service-connect-test-traffic-header-rules
                              #:service-connect-test-traffic-rules
                              #:service-connect-tls-certificate-authority
                              #:service-connect-tls-configuration
                              #:service-deployment #:service-deployment-alarms
                              #:service-deployment-brief
                              #:service-deployment-circuit-breaker
                              #:service-deployment-lifecycle-stage
                              #:service-deployment-rollback-monitors-status
                              #:service-deployment-status
                              #:service-deployment-status-list
                              #:service-deployments #:service-deployments-brief
                              #:service-event #:service-events #:service-field
                              #:service-field-list
                              #:service-managed-ebsvolume-configuration
                              #:service-registries #:service-registry
                              #:service-revision
                              #:service-revision-load-balancer
                              #:service-revision-load-balancers
                              #:service-revision-summary #:service-revisions
                              #:service-revisions-summary-list
                              #:service-volume-configuration
                              #:service-volume-configurations #:services
                              #:session #:setting #:setting-name #:setting-type
                              #:settings #:sort-order #:stability-status
                              #:start-task #:statistics
                              #:stop-service-deployment
                              #:stop-service-deployment-stop-type #:stop-task
                              #:string #:string-list #:string-map
                              #:submit-attachment-state-changes
                              #:submit-container-state-change
                              #:submit-task-state-change #:system-control
                              #:system-controls #:tag #:tag-key #:tag-keys
                              #:tag-resource #:tag-value #:tags #:target-type
                              #:task #:task-definition
                              #:task-definition-family-status
                              #:task-definition-field
                              #:task-definition-field-list
                              #:task-definition-list
                              #:task-definition-placement-constraint
                              #:task-definition-placement-constraint-type
                              #:task-definition-placement-constraints
                              #:task-definition-status #:task-ephemeral-storage
                              #:task-field #:task-field-list
                              #:task-filesystem-type
                              #:task-managed-ebsvolume-configuration
                              #:task-managed-ebsvolume-termination-policy
                              #:task-override #:task-set #:task-set-field
                              #:task-set-field-list #:task-sets
                              #:task-stop-code #:task-volume-configuration
                              #:task-volume-configurations #:tasks
                              #:timeout-configuration #:timestamp #:tmpfs
                              #:tmpfs-list #:transport-protocol #:ulimit
                              #:ulimit-list #:ulimit-name #:untag-resource
                              #:update-capacity-provider #:update-cluster
                              #:update-cluster-settings
                              #:update-container-agent
                              #:update-container-instances-state
                              #:update-service
                              #:update-service-primary-task-set
                              #:update-task-protection #:update-task-set
                              #:version-consistency #:version-info #:volume
                              #:volume-from #:volume-from-list #:volume-list
                              #:vpc-lattice-configuration
                              #:vpc-lattice-configurations))
(common-lisp:in-package #:pira/ecs)

(smithy/sdk/service:define-service amazon-ec2container-service-v20141113
                                   :shape-name
                                   "AmazonEC2ContainerServiceV20141113"
                                   :version "2014-11-13" :title
                                   "Amazon EC2 Container Service"
                                   :xml-namespace
                                   '(:uri
                                     "http://ecs.amazonaws.com/doc/2014-11-13/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "ECS")
                                      ("arnNamespace" . "ecs")
                                      ("cloudFormationName" . "ECS")
                                      ("cloudTrailEventSource"
                                       . "ecs.amazonaws.com")
                                      ("endpointPrefix" . "ecs"))
                                     ("aws.auth#sigv4" ("name" . "ecs"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure advanced-configuration common-lisp:nil
                                    ((alternate-target-group-arn :target-type
                                      string :member-name
                                      "alternateTargetGroupArn")
                                     (production-listener-rule :target-type
                                      string :member-name
                                      "productionListenerRule")
                                     (test-listener-rule :target-type string
                                      :member-name "testListenerRule")
                                     (role-arn :target-type string :member-name
                                      "roleArn"))
                                    (:shape-name "AdvancedConfiguration"))

(smithy/sdk/shapes:define-enum agent-update-status
    common-lisp:nil
  (:pending "PENDING")
  (:staging "STAGING")
  (:staged "STAGED")
  (:updating "UPDATING")
  (:updated "UPDATED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-enum application-protocol
    common-lisp:nil
  (:http "http")
  (:http2 "http2")
  (:grpc "grpc"))

(smithy/sdk/shapes:define-enum assign-public-ip
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure attachment common-lisp:nil
                                    ((id :target-type string :member-name "id")
                                     (type :target-type string :member-name
                                      "type")
                                     (status :target-type string :member-name
                                      "status")
                                     (details :target-type attachment-details
                                      :member-name "details"))
                                    (:shape-name "Attachment"))

(smithy/sdk/shapes:define-list attachment-details :member key-value-pair)

(smithy/sdk/shapes:define-structure attachment-state-change common-lisp:nil
                                    ((attachment-arn :target-type string
                                      :required common-lisp:t :member-name
                                      "attachmentArn")
                                     (status :target-type string :required
                                      common-lisp:t :member-name "status"))
                                    (:shape-name "AttachmentStateChange"))

(smithy/sdk/shapes:define-list attachment-state-changes :member
                               attachment-state-change)

(smithy/sdk/shapes:define-list attachments :member attachment)

(smithy/sdk/shapes:define-structure attribute common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "name")
                                     (value :target-type string :member-name
                                      "value")
                                     (target-type :target-type target-type
                                      :member-name "targetType")
                                     (target-id :target-type string
                                      :member-name "targetId"))
                                    (:shape-name "Attribute"))

(smithy/sdk/shapes:define-error attribute-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "AttributeLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list attributes :member attribute)

(smithy/sdk/shapes:define-structure auto-scaling-group-provider common-lisp:nil
                                    ((auto-scaling-group-arn :target-type
                                      string :required common-lisp:t
                                      :member-name "autoScalingGroupArn")
                                     (managed-scaling :target-type
                                      managed-scaling :member-name
                                      "managedScaling")
                                     (managed-termination-protection
                                      :target-type
                                      managed-termination-protection
                                      :member-name
                                      "managedTerminationProtection")
                                     (managed-draining :target-type
                                      managed-draining :member-name
                                      "managedDraining"))
                                    (:shape-name "AutoScalingGroupProvider"))

(smithy/sdk/shapes:define-structure auto-scaling-group-provider-update
                                    common-lisp:nil
                                    ((managed-scaling :target-type
                                      managed-scaling :member-name
                                      "managedScaling")
                                     (managed-termination-protection
                                      :target-type
                                      managed-termination-protection
                                      :member-name
                                      "managedTerminationProtection")
                                     (managed-draining :target-type
                                      managed-draining :member-name
                                      "managedDraining"))
                                    (:shape-name
                                     "AutoScalingGroupProviderUpdate"))

(smithy/sdk/shapes:define-enum availability-zone-rebalancing
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure aws-vpc-configuration common-lisp:nil
                                    ((subnets :target-type string-list
                                      :required common-lisp:t :member-name
                                      "subnets")
                                     (security-groups :target-type string-list
                                      :member-name "securityGroups")
                                     (assign-public-ip :target-type
                                      assign-public-ip :member-name
                                      "assignPublicIp"))
                                    (:shape-name "AwsVpcConfiguration"))

(smithy/sdk/shapes:define-error blocked-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "BlockedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type boxed-boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type boxed-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum cpuarchitecture
    common-lisp:nil
  (:x86-64 "X86_64")
  (:arm64 "ARM64"))

(smithy/sdk/shapes:define-structure capacity-provider common-lisp:nil
                                    ((capacity-provider-arn :target-type string
                                      :member-name "capacityProviderArn")
                                     (name :target-type string :member-name
                                      "name")
                                     (status :target-type
                                      capacity-provider-status :member-name
                                      "status")
                                     (auto-scaling-group-provider :target-type
                                      auto-scaling-group-provider :member-name
                                      "autoScalingGroupProvider")
                                     (update-status :target-type
                                      capacity-provider-update-status
                                      :member-name "updateStatus")
                                     (update-status-reason :target-type string
                                      :member-name "updateStatusReason")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "CapacityProvider"))

(smithy/sdk/shapes:define-enum capacity-provider-field
    common-lisp:nil
  (:tags "TAGS"))

(smithy/sdk/shapes:define-list capacity-provider-field-list :member
                               capacity-provider-field)

(smithy/sdk/shapes:define-enum capacity-provider-status
    common-lisp:nil
  (:active "ACTIVE")
  (:inactive "INACTIVE"))

(smithy/sdk/shapes:define-list capacity-provider-strategy :member
                               capacity-provider-strategy-item)

(smithy/sdk/shapes:define-structure capacity-provider-strategy-item
                                    common-lisp:nil
                                    ((capacity-provider :target-type string
                                      :required common-lisp:t :member-name
                                      "capacityProvider")
                                     (weight :target-type
                                      capacity-provider-strategy-item-weight
                                      :member-name "weight")
                                     (base :target-type
                                      capacity-provider-strategy-item-base
                                      :member-name "base"))
                                    (:shape-name
                                     "CapacityProviderStrategyItem"))

(smithy/sdk/shapes:define-type capacity-provider-strategy-item-base
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type capacity-provider-strategy-item-weight
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum capacity-provider-update-status
    common-lisp:nil
  (:delete-in-progress "DELETE_IN_PROGRESS")
  (:delete-complete "DELETE_COMPLETE")
  (:delete-failed "DELETE_FAILED")
  (:update-in-progress "UPDATE_IN_PROGRESS")
  (:update-complete "UPDATE_COMPLETE")
  (:update-failed "UPDATE_FAILED"))

(smithy/sdk/shapes:define-list capacity-providers :member capacity-provider)

(smithy/sdk/shapes:define-error client-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ClientException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure cluster common-lisp:nil
                                    ((cluster-arn :target-type string
                                      :member-name "clusterArn")
                                     (cluster-name :target-type string
                                      :member-name "clusterName")
                                     (configuration :target-type
                                      cluster-configuration :member-name
                                      "configuration")
                                     (status :target-type string :member-name
                                      "status")
                                     (registered-container-instances-count
                                      :target-type integer :member-name
                                      "registeredContainerInstancesCount")
                                     (running-tasks-count :target-type integer
                                      :member-name "runningTasksCount")
                                     (pending-tasks-count :target-type integer
                                      :member-name "pendingTasksCount")
                                     (active-services-count :target-type
                                      integer :member-name
                                      "activeServicesCount")
                                     (statistics :target-type statistics
                                      :member-name "statistics")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (settings :target-type cluster-settings
                                      :member-name "settings")
                                     (capacity-providers :target-type
                                      string-list :member-name
                                      "capacityProviders")
                                     (default-capacity-provider-strategy
                                      :target-type capacity-provider-strategy
                                      :member-name
                                      "defaultCapacityProviderStrategy")
                                     (attachments :target-type attachments
                                      :member-name "attachments")
                                     (attachments-status :target-type string
                                      :member-name "attachmentsStatus")
                                     (service-connect-defaults :target-type
                                      cluster-service-connect-defaults
                                      :member-name "serviceConnectDefaults"))
                                    (:shape-name "Cluster"))

(smithy/sdk/shapes:define-structure cluster-configuration common-lisp:nil
                                    ((execute-command-configuration
                                      :target-type
                                      execute-command-configuration
                                      :member-name
                                      "executeCommandConfiguration")
                                     (managed-storage-configuration
                                      :target-type
                                      managed-storage-configuration
                                      :member-name
                                      "managedStorageConfiguration"))
                                    (:shape-name "ClusterConfiguration"))

(smithy/sdk/shapes:define-error cluster-contains-container-instances-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name
                                 "ClusterContainsContainerInstancesException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error cluster-contains-services-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name
                                 "ClusterContainsServicesException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error cluster-contains-tasks-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ClusterContainsTasksException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum cluster-field
    common-lisp:nil
  (:attachments "ATTACHMENTS")
  (:configurations "CONFIGURATIONS")
  (:settings "SETTINGS")
  (:statistics "STATISTICS")
  (:tags "TAGS"))

(smithy/sdk/shapes:define-list cluster-field-list :member cluster-field)

(smithy/sdk/shapes:define-error cluster-not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ClusterNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure cluster-service-connect-defaults
                                    common-lisp:nil
                                    ((namespace :target-type string
                                      :member-name "namespace"))
                                    (:shape-name
                                     "ClusterServiceConnectDefaults"))

(smithy/sdk/shapes:define-structure cluster-service-connect-defaults-request
                                    common-lisp:nil
                                    ((namespace :target-type string :required
                                      common-lisp:t :member-name "namespace"))
                                    (:shape-name
                                     "ClusterServiceConnectDefaultsRequest"))

(smithy/sdk/shapes:define-structure cluster-setting common-lisp:nil
                                    ((name :target-type cluster-setting-name
                                      :member-name "name")
                                     (value :target-type string :member-name
                                      "value"))
                                    (:shape-name "ClusterSetting"))

(smithy/sdk/shapes:define-enum cluster-setting-name
    common-lisp:nil
  (:container-insights "containerInsights"))

(smithy/sdk/shapes:define-list cluster-settings :member cluster-setting)

(smithy/sdk/shapes:define-list clusters :member cluster)

(smithy/sdk/shapes:define-enum compatibility
    common-lisp:nil
  (:ec2 "EC2")
  (:fargate "FARGATE")
  (:external "EXTERNAL"))

(smithy/sdk/shapes:define-list compatibility-list :member compatibility)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((resource-ids :target-type resource-ids
                                  :member-name "resourceIds")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "ConflictException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum connectivity
    common-lisp:nil
  (:connected "CONNECTED")
  (:disconnected "DISCONNECTED"))

(smithy/sdk/shapes:define-structure container common-lisp:nil
                                    ((container-arn :target-type string
                                      :member-name "containerArn")
                                     (task-arn :target-type string :member-name
                                      "taskArn")
                                     (name :target-type string :member-name
                                      "name")
                                     (image :target-type string :member-name
                                      "image")
                                     (image-digest :target-type string
                                      :member-name "imageDigest")
                                     (runtime-id :target-type string
                                      :member-name "runtimeId")
                                     (last-status :target-type string
                                      :member-name "lastStatus")
                                     (exit-code :target-type boxed-integer
                                      :member-name "exitCode")
                                     (reason :target-type string :member-name
                                      "reason")
                                     (network-bindings :target-type
                                      network-bindings :member-name
                                      "networkBindings")
                                     (network-interfaces :target-type
                                      network-interfaces :member-name
                                      "networkInterfaces")
                                     (health-status :target-type health-status
                                      :member-name "healthStatus")
                                     (managed-agents :target-type
                                      managed-agents :member-name
                                      "managedAgents")
                                     (cpu :target-type string :member-name
                                      "cpu")
                                     (memory :target-type string :member-name
                                      "memory")
                                     (memory-reservation :target-type string
                                      :member-name "memoryReservation")
                                     (gpu-ids :target-type gpu-ids :member-name
                                      "gpuIds"))
                                    (:shape-name "Container"))

(smithy/sdk/shapes:define-enum container-condition
    common-lisp:nil
  (:start "START")
  (:complete "COMPLETE")
  (:success "SUCCESS")
  (:healthy "HEALTHY"))

(smithy/sdk/shapes:define-structure container-definition common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (image :target-type string :member-name
                                      "image")
                                     (repository-credentials :target-type
                                      repository-credentials :member-name
                                      "repositoryCredentials")
                                     (cpu :target-type integer :member-name
                                      "cpu")
                                     (memory :target-type boxed-integer
                                      :member-name "memory")
                                     (memory-reservation :target-type
                                      boxed-integer :member-name
                                      "memoryReservation")
                                     (links :target-type string-list
                                      :member-name "links")
                                     (port-mappings :target-type
                                      port-mapping-list :member-name
                                      "portMappings")
                                     (essential :target-type boxed-boolean
                                      :member-name "essential")
                                     (restart-policy :target-type
                                      container-restart-policy :member-name
                                      "restartPolicy")
                                     (entry-point :target-type string-list
                                      :member-name "entryPoint")
                                     (command :target-type string-list
                                      :member-name "command")
                                     (environment :target-type
                                      environment-variables :member-name
                                      "environment")
                                     (environment-files :target-type
                                      environment-files :member-name
                                      "environmentFiles")
                                     (mount-points :target-type
                                      mount-point-list :member-name
                                      "mountPoints")
                                     (volumes-from :target-type
                                      volume-from-list :member-name
                                      "volumesFrom")
                                     (linux-parameters :target-type
                                      linux-parameters :member-name
                                      "linuxParameters")
                                     (secrets :target-type secret-list
                                      :member-name "secrets")
                                     (depends-on :target-type
                                      container-dependencies :member-name
                                      "dependsOn")
                                     (start-timeout :target-type boxed-integer
                                      :member-name "startTimeout")
                                     (stop-timeout :target-type boxed-integer
                                      :member-name "stopTimeout")
                                     (version-consistency :target-type
                                      version-consistency :member-name
                                      "versionConsistency")
                                     (hostname :target-type string :member-name
                                      "hostname")
                                     (user :target-type string :member-name
                                      "user")
                                     (working-directory :target-type string
                                      :member-name "workingDirectory")
                                     (disable-networking :target-type
                                      boxed-boolean :member-name
                                      "disableNetworking")
                                     (privileged :target-type boxed-boolean
                                      :member-name "privileged")
                                     (readonly-root-filesystem :target-type
                                      boxed-boolean :member-name
                                      "readonlyRootFilesystem")
                                     (dns-servers :target-type string-list
                                      :member-name "dnsServers")
                                     (dns-search-domains :target-type
                                      string-list :member-name
                                      "dnsSearchDomains")
                                     (extra-hosts :target-type host-entry-list
                                      :member-name "extraHosts")
                                     (docker-security-options :target-type
                                      string-list :member-name
                                      "dockerSecurityOptions")
                                     (interactive :target-type boxed-boolean
                                      :member-name "interactive")
                                     (pseudo-terminal :target-type
                                      boxed-boolean :member-name
                                      "pseudoTerminal")
                                     (docker-labels :target-type
                                      docker-labels-map :member-name
                                      "dockerLabels")
                                     (ulimits :target-type ulimit-list
                                      :member-name "ulimits")
                                     (log-configuration :target-type
                                      log-configuration :member-name
                                      "logConfiguration")
                                     (health-check :target-type health-check
                                      :member-name "healthCheck")
                                     (system-controls :target-type
                                      system-controls :member-name
                                      "systemControls")
                                     (resource-requirements :target-type
                                      resource-requirements :member-name
                                      "resourceRequirements")
                                     (firelens-configuration :target-type
                                      firelens-configuration :member-name
                                      "firelensConfiguration")
                                     (credential-specs :target-type string-list
                                      :member-name "credentialSpecs"))
                                    (:shape-name "ContainerDefinition"))

(smithy/sdk/shapes:define-list container-definitions :member
                               container-definition)

(smithy/sdk/shapes:define-list container-dependencies :member
                               container-dependency)

(smithy/sdk/shapes:define-structure container-dependency common-lisp:nil
                                    ((container-name :target-type string
                                      :required common-lisp:t :member-name
                                      "containerName")
                                     (condition :target-type
                                      container-condition :required
                                      common-lisp:t :member-name "condition"))
                                    (:shape-name "ContainerDependency"))

(smithy/sdk/shapes:define-structure container-image common-lisp:nil
                                    ((container-name :target-type string
                                      :member-name "containerName")
                                     (image-digest :target-type string
                                      :member-name "imageDigest")
                                     (image :target-type string :member-name
                                      "image"))
                                    (:shape-name "ContainerImage"))

(smithy/sdk/shapes:define-list container-images :member container-image)

(smithy/sdk/shapes:define-structure container-instance common-lisp:nil
                                    ((container-instance-arn :target-type
                                      string :member-name
                                      "containerInstanceArn")
                                     (ec2instance-id :target-type string
                                      :member-name "ec2InstanceId")
                                     (capacity-provider-name :target-type
                                      string :member-name
                                      "capacityProviderName")
                                     (version :target-type long :member-name
                                      "version")
                                     (version-info :target-type version-info
                                      :member-name "versionInfo")
                                     (remaining-resources :target-type
                                      resources :member-name
                                      "remainingResources")
                                     (registered-resources :target-type
                                      resources :member-name
                                      "registeredResources")
                                     (status :target-type string :member-name
                                      "status")
                                     (status-reason :target-type string
                                      :member-name "statusReason")
                                     (agent-connected :target-type boolean
                                      :member-name "agentConnected")
                                     (running-tasks-count :target-type integer
                                      :member-name "runningTasksCount")
                                     (pending-tasks-count :target-type integer
                                      :member-name "pendingTasksCount")
                                     (agent-update-status :target-type
                                      agent-update-status :member-name
                                      "agentUpdateStatus")
                                     (attributes :target-type attributes
                                      :member-name "attributes")
                                     (registered-at :target-type timestamp
                                      :member-name "registeredAt")
                                     (attachments :target-type attachments
                                      :member-name "attachments")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (health-status :target-type
                                      container-instance-health-status
                                      :member-name "healthStatus"))
                                    (:shape-name "ContainerInstance"))

(smithy/sdk/shapes:define-enum container-instance-field
    common-lisp:nil
  (:tags "TAGS")
  (:container-instance-health "CONTAINER_INSTANCE_HEALTH"))

(smithy/sdk/shapes:define-list container-instance-field-list :member
                               container-instance-field)

(smithy/sdk/shapes:define-structure container-instance-health-status
                                    common-lisp:nil
                                    ((overall-status :target-type
                                      instance-health-check-state :member-name
                                      "overallStatus")
                                     (details :target-type
                                      instance-health-check-result-list
                                      :member-name "details"))
                                    (:shape-name
                                     "ContainerInstanceHealthStatus"))

(smithy/sdk/shapes:define-enum container-instance-status
    common-lisp:nil
  (:active "ACTIVE")
  (:draining "DRAINING")
  (:registering "REGISTERING")
  (:deregistering "DEREGISTERING")
  (:registration-failed "REGISTRATION_FAILED"))

(smithy/sdk/shapes:define-list container-instances :member container-instance)

(smithy/sdk/shapes:define-structure container-override common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (command :target-type string-list
                                      :member-name "command")
                                     (environment :target-type
                                      environment-variables :member-name
                                      "environment")
                                     (environment-files :target-type
                                      environment-files :member-name
                                      "environmentFiles")
                                     (cpu :target-type boxed-integer
                                      :member-name "cpu")
                                     (memory :target-type boxed-integer
                                      :member-name "memory")
                                     (memory-reservation :target-type
                                      boxed-integer :member-name
                                      "memoryReservation")
                                     (resource-requirements :target-type
                                      resource-requirements :member-name
                                      "resourceRequirements"))
                                    (:shape-name "ContainerOverride"))

(smithy/sdk/shapes:define-list container-overrides :member container-override)

(smithy/sdk/shapes:define-structure container-restart-policy common-lisp:nil
                                    ((enabled :target-type boxed-boolean
                                      :required common-lisp:t :member-name
                                      "enabled")
                                     (ignored-exit-codes :target-type
                                      integer-list :member-name
                                      "ignoredExitCodes")
                                     (restart-attempt-period :target-type
                                      boxed-integer :member-name
                                      "restartAttemptPeriod"))
                                    (:shape-name "ContainerRestartPolicy"))

(smithy/sdk/shapes:define-structure container-state-change common-lisp:nil
                                    ((container-name :target-type string
                                      :member-name "containerName")
                                     (image-digest :target-type string
                                      :member-name "imageDigest")
                                     (runtime-id :target-type string
                                      :member-name "runtimeId")
                                     (exit-code :target-type boxed-integer
                                      :member-name "exitCode")
                                     (network-bindings :target-type
                                      network-bindings :member-name
                                      "networkBindings")
                                     (reason :target-type string :member-name
                                      "reason")
                                     (status :target-type string :member-name
                                      "status"))
                                    (:shape-name "ContainerStateChange"))

(smithy/sdk/shapes:define-list container-state-changes :member
                               container-state-change)

(smithy/sdk/shapes:define-list containers :member container)

(smithy/sdk/shapes:define-input create-capacity-provider-request
                                common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "name")
                                 (auto-scaling-group-provider :target-type
                                  auto-scaling-group-provider :required
                                  common-lisp:t :member-name
                                  "autoScalingGroupProvider")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateCapacityProviderRequest"))

(smithy/sdk/shapes:define-output create-capacity-provider-response
                                 common-lisp:nil
                                 ((capacity-provider :target-type
                                   capacity-provider :member-name
                                   "capacityProvider"))
                                 (:shape-name "CreateCapacityProviderResponse"))

(smithy/sdk/shapes:define-input create-cluster-request common-lisp:nil
                                ((cluster-name :target-type string :member-name
                                  "clusterName")
                                 (tags :target-type tags :member-name "tags")
                                 (settings :target-type cluster-settings
                                  :member-name "settings")
                                 (configuration :target-type
                                  cluster-configuration :member-name
                                  "configuration")
                                 (capacity-providers :target-type string-list
                                  :member-name "capacityProviders")
                                 (default-capacity-provider-strategy
                                  :target-type capacity-provider-strategy
                                  :member-name
                                  "defaultCapacityProviderStrategy")
                                 (service-connect-defaults :target-type
                                  cluster-service-connect-defaults-request
                                  :member-name "serviceConnectDefaults"))
                                (:shape-name "CreateClusterRequest"))

(smithy/sdk/shapes:define-output create-cluster-response common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "cluster"))
                                 (:shape-name "CreateClusterResponse"))

(smithy/sdk/shapes:define-input create-service-request common-lisp:nil
                                ((cluster :target-type string :member-name
                                  "cluster")
                                 (service-name :target-type string :required
                                  common-lisp:t :member-name "serviceName")
                                 (task-definition :target-type string
                                  :member-name "taskDefinition")
                                 (availability-zone-rebalancing :target-type
                                  availability-zone-rebalancing :member-name
                                  "availabilityZoneRebalancing")
                                 (load-balancers :target-type load-balancers
                                  :member-name "loadBalancers")
                                 (service-registries :target-type
                                  service-registries :member-name
                                  "serviceRegistries")
                                 (desired-count :target-type boxed-integer
                                  :member-name "desiredCount")
                                 (client-token :target-type string :member-name
                                  "clientToken")
                                 (launch-type :target-type launch-type
                                  :member-name "launchType")
                                 (capacity-provider-strategy :target-type
                                  capacity-provider-strategy :member-name
                                  "capacityProviderStrategy")
                                 (platform-version :target-type string
                                  :member-name "platformVersion")
                                 (role :target-type string :member-name "role")
                                 (deployment-configuration :target-type
                                  deployment-configuration :member-name
                                  "deploymentConfiguration")
                                 (placement-constraints :target-type
                                  placement-constraints :member-name
                                  "placementConstraints")
                                 (placement-strategy :target-type
                                  placement-strategies :member-name
                                  "placementStrategy")
                                 (network-configuration :target-type
                                  network-configuration :member-name
                                  "networkConfiguration")
                                 (health-check-grace-period-seconds
                                  :target-type boxed-integer :member-name
                                  "healthCheckGracePeriodSeconds")
                                 (scheduling-strategy :target-type
                                  scheduling-strategy :member-name
                                  "schedulingStrategy")
                                 (deployment-controller :target-type
                                  deployment-controller :member-name
                                  "deploymentController")
                                 (tags :target-type tags :member-name "tags")
                                 (enable-ecsmanaged-tags :target-type boolean
                                  :member-name "enableECSManagedTags")
                                 (propagate-tags :target-type propagate-tags
                                  :member-name "propagateTags")
                                 (enable-execute-command :target-type boolean
                                  :member-name "enableExecuteCommand")
                                 (service-connect-configuration :target-type
                                  service-connect-configuration :member-name
                                  "serviceConnectConfiguration")
                                 (volume-configurations :target-type
                                  service-volume-configurations :member-name
                                  "volumeConfigurations")
                                 (vpc-lattice-configurations :target-type
                                  vpc-lattice-configurations :member-name
                                  "vpcLatticeConfigurations"))
                                (:shape-name "CreateServiceRequest"))

(smithy/sdk/shapes:define-output create-service-response common-lisp:nil
                                 ((service :target-type service :member-name
                                   "service"))
                                 (:shape-name "CreateServiceResponse"))

(smithy/sdk/shapes:define-input create-task-set-request common-lisp:nil
                                ((service :target-type string :required
                                  common-lisp:t :member-name "service")
                                 (cluster :target-type string :required
                                  common-lisp:t :member-name "cluster")
                                 (external-id :target-type string :member-name
                                  "externalId")
                                 (task-definition :target-type string :required
                                  common-lisp:t :member-name "taskDefinition")
                                 (network-configuration :target-type
                                  network-configuration :member-name
                                  "networkConfiguration")
                                 (load-balancers :target-type load-balancers
                                  :member-name "loadBalancers")
                                 (service-registries :target-type
                                  service-registries :member-name
                                  "serviceRegistries")
                                 (launch-type :target-type launch-type
                                  :member-name "launchType")
                                 (capacity-provider-strategy :target-type
                                  capacity-provider-strategy :member-name
                                  "capacityProviderStrategy")
                                 (platform-version :target-type string
                                  :member-name "platformVersion")
                                 (scale :target-type scale :member-name
                                  "scale")
                                 (client-token :target-type string :member-name
                                  "clientToken")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateTaskSetRequest"))

(smithy/sdk/shapes:define-output create-task-set-response common-lisp:nil
                                 ((task-set :target-type task-set :member-name
                                   "taskSet"))
                                 (:shape-name "CreateTaskSetResponse"))

(smithy/sdk/shapes:define-structure created-at common-lisp:nil
                                    ((before :target-type timestamp
                                      :member-name "before")
                                     (after :target-type timestamp :member-name
                                      "after"))
                                    (:shape-name "CreatedAt"))

(smithy/sdk/shapes:define-input delete-account-setting-request common-lisp:nil
                                ((name :target-type setting-name :required
                                  common-lisp:t :member-name "name")
                                 (principal-arn :target-type string
                                  :member-name "principalArn"))
                                (:shape-name "DeleteAccountSettingRequest"))

(smithy/sdk/shapes:define-output delete-account-setting-response
                                 common-lisp:nil
                                 ((setting :target-type setting :member-name
                                   "setting"))
                                 (:shape-name "DeleteAccountSettingResponse"))

(smithy/sdk/shapes:define-input delete-attributes-request common-lisp:nil
                                ((cluster :target-type string :member-name
                                  "cluster")
                                 (attributes :target-type attributes :required
                                  common-lisp:t :member-name "attributes"))
                                (:shape-name "DeleteAttributesRequest"))

(smithy/sdk/shapes:define-output delete-attributes-response common-lisp:nil
                                 ((attributes :target-type attributes
                                   :member-name "attributes"))
                                 (:shape-name "DeleteAttributesResponse"))

(smithy/sdk/shapes:define-input delete-capacity-provider-request
                                common-lisp:nil
                                ((capacity-provider :target-type string
                                  :required common-lisp:t :member-name
                                  "capacityProvider"))
                                (:shape-name "DeleteCapacityProviderRequest"))

(smithy/sdk/shapes:define-output delete-capacity-provider-response
                                 common-lisp:nil
                                 ((capacity-provider :target-type
                                   capacity-provider :member-name
                                   "capacityProvider"))
                                 (:shape-name "DeleteCapacityProviderResponse"))

(smithy/sdk/shapes:define-input delete-cluster-request common-lisp:nil
                                ((cluster :target-type string :required
                                  common-lisp:t :member-name "cluster"))
                                (:shape-name "DeleteClusterRequest"))

(smithy/sdk/shapes:define-output delete-cluster-response common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "cluster"))
                                 (:shape-name "DeleteClusterResponse"))

(smithy/sdk/shapes:define-input delete-service-request common-lisp:nil
                                ((cluster :target-type string :member-name
                                  "cluster")
                                 (service :target-type string :required
                                  common-lisp:t :member-name "service")
                                 (force :target-type boxed-boolean :member-name
                                  "force"))
                                (:shape-name "DeleteServiceRequest"))

(smithy/sdk/shapes:define-output delete-service-response common-lisp:nil
                                 ((service :target-type service :member-name
                                   "service"))
                                 (:shape-name "DeleteServiceResponse"))

(smithy/sdk/shapes:define-input delete-task-definitions-request common-lisp:nil
                                ((task-definitions :target-type string-list
                                  :required common-lisp:t :member-name
                                  "taskDefinitions"))
                                (:shape-name "DeleteTaskDefinitionsRequest"))

(smithy/sdk/shapes:define-output delete-task-definitions-response
                                 common-lisp:nil
                                 ((task-definitions :target-type
                                   task-definition-list :member-name
                                   "taskDefinitions")
                                  (failures :target-type failures :member-name
                                   "failures"))
                                 (:shape-name "DeleteTaskDefinitionsResponse"))

(smithy/sdk/shapes:define-input delete-task-set-request common-lisp:nil
                                ((cluster :target-type string :required
                                  common-lisp:t :member-name "cluster")
                                 (service :target-type string :required
                                  common-lisp:t :member-name "service")
                                 (task-set :target-type string :required
                                  common-lisp:t :member-name "taskSet")
                                 (force :target-type boxed-boolean :member-name
                                  "force"))
                                (:shape-name "DeleteTaskSetRequest"))

(smithy/sdk/shapes:define-output delete-task-set-response common-lisp:nil
                                 ((task-set :target-type task-set :member-name
                                   "taskSet"))
                                 (:shape-name "DeleteTaskSetResponse"))

(smithy/sdk/shapes:define-structure deployment common-lisp:nil
                                    ((id :target-type string :member-name "id")
                                     (status :target-type string :member-name
                                      "status")
                                     (task-definition :target-type string
                                      :member-name "taskDefinition")
                                     (desired-count :target-type integer
                                      :member-name "desiredCount")
                                     (pending-count :target-type integer
                                      :member-name "pendingCount")
                                     (running-count :target-type integer
                                      :member-name "runningCount")
                                     (failed-tasks :target-type integer
                                      :member-name "failedTasks")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (updated-at :target-type timestamp
                                      :member-name "updatedAt")
                                     (capacity-provider-strategy :target-type
                                      capacity-provider-strategy :member-name
                                      "capacityProviderStrategy")
                                     (launch-type :target-type launch-type
                                      :member-name "launchType")
                                     (platform-version :target-type string
                                      :member-name "platformVersion")
                                     (platform-family :target-type string
                                      :member-name "platformFamily")
                                     (network-configuration :target-type
                                      network-configuration :member-name
                                      "networkConfiguration")
                                     (rollout-state :target-type
                                      deployment-rollout-state :member-name
                                      "rolloutState")
                                     (rollout-state-reason :target-type string
                                      :member-name "rolloutStateReason")
                                     (service-connect-configuration
                                      :target-type
                                      service-connect-configuration
                                      :member-name
                                      "serviceConnectConfiguration")
                                     (service-connect-resources :target-type
                                      service-connect-service-resource-list
                                      :member-name "serviceConnectResources")
                                     (volume-configurations :target-type
                                      service-volume-configurations
                                      :member-name "volumeConfigurations")
                                     (fargate-ephemeral-storage :target-type
                                      deployment-ephemeral-storage :member-name
                                      "fargateEphemeralStorage")
                                     (vpc-lattice-configurations :target-type
                                      vpc-lattice-configurations :member-name
                                      "vpcLatticeConfigurations"))
                                    (:shape-name "Deployment"))

(smithy/sdk/shapes:define-structure deployment-alarms common-lisp:nil
                                    ((alarm-names :target-type string-list
                                      :required common-lisp:t :member-name
                                      "alarmNames")
                                     (rollback :target-type boolean :required
                                      common-lisp:t :member-name "rollback")
                                     (enable :target-type boolean :required
                                      common-lisp:t :member-name "enable"))
                                    (:shape-name "DeploymentAlarms"))

(smithy/sdk/shapes:define-structure deployment-circuit-breaker common-lisp:nil
                                    ((enable :target-type boolean :required
                                      common-lisp:t :member-name "enable")
                                     (rollback :target-type boolean :required
                                      common-lisp:t :member-name "rollback"))
                                    (:shape-name "DeploymentCircuitBreaker"))

(smithy/sdk/shapes:define-structure deployment-configuration common-lisp:nil
                                    ((deployment-circuit-breaker :target-type
                                      deployment-circuit-breaker :member-name
                                      "deploymentCircuitBreaker")
                                     (maximum-percent :target-type
                                      boxed-integer :member-name
                                      "maximumPercent")
                                     (minimum-healthy-percent :target-type
                                      boxed-integer :member-name
                                      "minimumHealthyPercent")
                                     (alarms :target-type deployment-alarms
                                      :member-name "alarms")
                                     (strategy :target-type deployment-strategy
                                      :member-name "strategy")
                                     (bake-time-in-minutes :target-type
                                      boxed-integer :member-name
                                      "bakeTimeInMinutes")
                                     (lifecycle-hooks :target-type
                                      deployment-lifecycle-hook-list
                                      :member-name "lifecycleHooks"))
                                    (:shape-name "DeploymentConfiguration"))

(smithy/sdk/shapes:define-structure deployment-controller common-lisp:nil
                                    ((type :target-type
                                      deployment-controller-type :required
                                      common-lisp:t :member-name "type"))
                                    (:shape-name "DeploymentController"))

(smithy/sdk/shapes:define-enum deployment-controller-type
    common-lisp:nil
  (:ecs "ECS")
  (:code-deploy "CODE_DEPLOY")
  (:external "EXTERNAL"))

(smithy/sdk/shapes:define-structure deployment-ephemeral-storage
                                    common-lisp:nil
                                    ((kms-key-id :target-type string
                                      :member-name "kmsKeyId"))
                                    (:shape-name "DeploymentEphemeralStorage"))

(smithy/sdk/shapes:define-structure deployment-lifecycle-hook common-lisp:nil
                                    ((hook-target-arn :target-type string
                                      :member-name "hookTargetArn")
                                     (role-arn :target-type iamrole-arn
                                      :member-name "roleArn")
                                     (lifecycle-stages :target-type
                                      deployment-lifecycle-hook-stage-list
                                      :member-name "lifecycleStages"))
                                    (:shape-name "DeploymentLifecycleHook"))

(smithy/sdk/shapes:define-list deployment-lifecycle-hook-list :member
                               deployment-lifecycle-hook)

(smithy/sdk/shapes:define-enum deployment-lifecycle-hook-stage
    common-lisp:nil
  (:reconcile-service "RECONCILE_SERVICE")
  (:pre-scale-up "PRE_SCALE_UP")
  (:post-scale-up "POST_SCALE_UP")
  (:test-traffic-shift "TEST_TRAFFIC_SHIFT")
  (:post-test-traffic-shift "POST_TEST_TRAFFIC_SHIFT")
  (:production-traffic-shift "PRODUCTION_TRAFFIC_SHIFT")
  (:post-production-traffic-shift "POST_PRODUCTION_TRAFFIC_SHIFT"))

(smithy/sdk/shapes:define-list deployment-lifecycle-hook-stage-list :member
                               deployment-lifecycle-hook-stage)

(smithy/sdk/shapes:define-enum deployment-rollout-state
    common-lisp:nil
  (:completed "COMPLETED")
  (:failed "FAILED")
  (:in-progress "IN_PROGRESS"))

(smithy/sdk/shapes:define-enum deployment-strategy
    common-lisp:nil
  (:rolling "ROLLING")
  (:blue-green "BLUE_GREEN"))

(smithy/sdk/shapes:define-list deployments :member deployment)

(smithy/sdk/shapes:define-input deregister-container-instance-request
                                common-lisp:nil
                                ((cluster :target-type string :member-name
                                  "cluster")
                                 (container-instance :target-type string
                                  :required common-lisp:t :member-name
                                  "containerInstance")
                                 (force :target-type boxed-boolean :member-name
                                  "force"))
                                (:shape-name
                                 "DeregisterContainerInstanceRequest"))

(smithy/sdk/shapes:define-output deregister-container-instance-response
                                 common-lisp:nil
                                 ((container-instance :target-type
                                   container-instance :member-name
                                   "containerInstance"))
                                 (:shape-name
                                  "DeregisterContainerInstanceResponse"))

(smithy/sdk/shapes:define-input deregister-task-definition-request
                                common-lisp:nil
                                ((task-definition :target-type string :required
                                  common-lisp:t :member-name "taskDefinition"))
                                (:shape-name "DeregisterTaskDefinitionRequest"))

(smithy/sdk/shapes:define-output deregister-task-definition-response
                                 common-lisp:nil
                                 ((task-definition :target-type task-definition
                                   :member-name "taskDefinition"))
                                 (:shape-name
                                  "DeregisterTaskDefinitionResponse"))

(smithy/sdk/shapes:define-input describe-capacity-providers-request
                                common-lisp:nil
                                ((capacity-providers :target-type string-list
                                  :member-name "capacityProviders")
                                 (include :target-type
                                  capacity-provider-field-list :member-name
                                  "include")
                                 (max-results :target-type boxed-integer
                                  :member-name "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken"))
                                (:shape-name
                                 "DescribeCapacityProvidersRequest"))

(smithy/sdk/shapes:define-output describe-capacity-providers-response
                                 common-lisp:nil
                                 ((capacity-providers :target-type
                                   capacity-providers :member-name
                                   "capacityProviders")
                                  (failures :target-type failures :member-name
                                   "failures")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "DescribeCapacityProvidersResponse"))

(smithy/sdk/shapes:define-input describe-clusters-request common-lisp:nil
                                ((clusters :target-type string-list
                                  :member-name "clusters")
                                 (include :target-type cluster-field-list
                                  :member-name "include"))
                                (:shape-name "DescribeClustersRequest"))

(smithy/sdk/shapes:define-output describe-clusters-response common-lisp:nil
                                 ((clusters :target-type clusters :member-name
                                   "clusters")
                                  (failures :target-type failures :member-name
                                   "failures"))
                                 (:shape-name "DescribeClustersResponse"))

(smithy/sdk/shapes:define-input describe-container-instances-request
                                common-lisp:nil
                                ((cluster :target-type string :member-name
                                  "cluster")
                                 (container-instances :target-type string-list
                                  :required common-lisp:t :member-name
                                  "containerInstances")
                                 (include :target-type
                                  container-instance-field-list :member-name
                                  "include"))
                                (:shape-name
                                 "DescribeContainerInstancesRequest"))

(smithy/sdk/shapes:define-output describe-container-instances-response
                                 common-lisp:nil
                                 ((container-instances :target-type
                                   container-instances :member-name
                                   "containerInstances")
                                  (failures :target-type failures :member-name
                                   "failures"))
                                 (:shape-name
                                  "DescribeContainerInstancesResponse"))

(smithy/sdk/shapes:define-input describe-service-deployments-request
                                common-lisp:nil
                                ((service-deployment-arns :target-type
                                  string-list :required common-lisp:t
                                  :member-name "serviceDeploymentArns"))
                                (:shape-name
                                 "DescribeServiceDeploymentsRequest"))

(smithy/sdk/shapes:define-output describe-service-deployments-response
                                 common-lisp:nil
                                 ((service-deployments :target-type
                                   service-deployments :member-name
                                   "serviceDeployments")
                                  (failures :target-type failures :member-name
                                   "failures"))
                                 (:shape-name
                                  "DescribeServiceDeploymentsResponse"))

(smithy/sdk/shapes:define-input describe-service-revisions-request
                                common-lisp:nil
                                ((service-revision-arns :target-type
                                  string-list :required common-lisp:t
                                  :member-name "serviceRevisionArns"))
                                (:shape-name "DescribeServiceRevisionsRequest"))

(smithy/sdk/shapes:define-output describe-service-revisions-response
                                 common-lisp:nil
                                 ((service-revisions :target-type
                                   service-revisions :member-name
                                   "serviceRevisions")
                                  (failures :target-type failures :member-name
                                   "failures"))
                                 (:shape-name
                                  "DescribeServiceRevisionsResponse"))

(smithy/sdk/shapes:define-input describe-services-request common-lisp:nil
                                ((cluster :target-type string :member-name
                                  "cluster")
                                 (services :target-type string-list :required
                                  common-lisp:t :member-name "services")
                                 (include :target-type service-field-list
                                  :member-name "include"))
                                (:shape-name "DescribeServicesRequest"))

(smithy/sdk/shapes:define-output describe-services-response common-lisp:nil
                                 ((services :target-type services :member-name
                                   "services")
                                  (failures :target-type failures :member-name
                                   "failures"))
                                 (:shape-name "DescribeServicesResponse"))

(smithy/sdk/shapes:define-input describe-task-definition-request
                                common-lisp:nil
                                ((task-definition :target-type string :required
                                  common-lisp:t :member-name "taskDefinition")
                                 (include :target-type
                                  task-definition-field-list :member-name
                                  "include"))
                                (:shape-name "DescribeTaskDefinitionRequest"))

(smithy/sdk/shapes:define-output describe-task-definition-response
                                 common-lisp:nil
                                 ((task-definition :target-type task-definition
                                   :member-name "taskDefinition")
                                  (tags :target-type tags :member-name "tags"))
                                 (:shape-name "DescribeTaskDefinitionResponse"))

(smithy/sdk/shapes:define-input describe-task-sets-request common-lisp:nil
                                ((cluster :target-type string :required
                                  common-lisp:t :member-name "cluster")
                                 (service :target-type string :required
                                  common-lisp:t :member-name "service")
                                 (task-sets :target-type string-list
                                  :member-name "taskSets")
                                 (include :target-type task-set-field-list
                                  :member-name "include"))
                                (:shape-name "DescribeTaskSetsRequest"))

(smithy/sdk/shapes:define-output describe-task-sets-response common-lisp:nil
                                 ((task-sets :target-type task-sets
                                   :member-name "taskSets")
                                  (failures :target-type failures :member-name
                                   "failures"))
                                 (:shape-name "DescribeTaskSetsResponse"))

(smithy/sdk/shapes:define-input describe-tasks-request common-lisp:nil
                                ((cluster :target-type string :member-name
                                  "cluster")
                                 (tasks :target-type string-list :required
                                  common-lisp:t :member-name "tasks")
                                 (include :target-type task-field-list
                                  :member-name "include"))
                                (:shape-name "DescribeTasksRequest"))

(smithy/sdk/shapes:define-output describe-tasks-response common-lisp:nil
                                 ((tasks :target-type tasks :member-name
                                   "tasks")
                                  (failures :target-type failures :member-name
                                   "failures"))
                                 (:shape-name "DescribeTasksResponse"))

(smithy/sdk/shapes:define-enum desired-status
    common-lisp:nil
  (:running "RUNNING")
  (:pending "PENDING")
  (:stopped "STOPPED"))

(smithy/sdk/shapes:define-structure device common-lisp:nil
                                    ((host-path :target-type string :required
                                      common-lisp:t :member-name "hostPath")
                                     (container-path :target-type string
                                      :member-name "containerPath")
                                     (permissions :target-type
                                      device-cgroup-permissions :member-name
                                      "permissions"))
                                    (:shape-name "Device"))

(smithy/sdk/shapes:define-enum device-cgroup-permission
    common-lisp:nil
  (:read "read")
  (:write "write")
  (:mknod "mknod"))

(smithy/sdk/shapes:define-list device-cgroup-permissions :member
                               device-cgroup-permission)

(smithy/sdk/shapes:define-list devices-list :member device)

(smithy/sdk/shapes:define-input discover-poll-endpoint-request common-lisp:nil
                                ((container-instance :target-type string
                                  :member-name "containerInstance")
                                 (cluster :target-type string :member-name
                                  "cluster"))
                                (:shape-name "DiscoverPollEndpointRequest"))

(smithy/sdk/shapes:define-output discover-poll-endpoint-response
                                 common-lisp:nil
                                 ((endpoint :target-type string :member-name
                                   "endpoint")
                                  (telemetry-endpoint :target-type string
                                   :member-name "telemetryEndpoint")
                                  (service-connect-endpoint :target-type string
                                   :member-name "serviceConnectEndpoint"))
                                 (:shape-name "DiscoverPollEndpointResponse"))

(smithy/sdk/shapes:define-map docker-labels-map :key string :value string)

(smithy/sdk/shapes:define-structure docker-volume-configuration common-lisp:nil
                                    ((scope :target-type scope :member-name
                                      "scope")
                                     (autoprovision :target-type boxed-boolean
                                      :member-name "autoprovision")
                                     (driver :target-type string :member-name
                                      "driver")
                                     (driver-opts :target-type string-map
                                      :member-name "driverOpts")
                                     (labels :target-type string-map
                                      :member-name "labels"))
                                    (:shape-name "DockerVolumeConfiguration"))

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type duration smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type ebskmskey-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum ebsresource-type
    common-lisp:nil
  (:volume "volume"))

(smithy/sdk/shapes:define-type ebssnapshot-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ebstag-specification common-lisp:nil
                                    ((resource-type :target-type
                                      ebsresource-type :required common-lisp:t
                                      :member-name "resourceType")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (propagate-tags :target-type
                                      propagate-tags :member-name
                                      "propagateTags"))
                                    (:shape-name "EBSTagSpecification"))

(smithy/sdk/shapes:define-list ebstag-specifications :member
                               ebstag-specification)

(smithy/sdk/shapes:define-type ebsvolume-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ecsvolume-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure efsauthorization-config common-lisp:nil
                                    ((access-point-id :target-type string
                                      :member-name "accessPointId")
                                     (iam :target-type
                                      efsauthorization-config-iam :member-name
                                      "iam"))
                                    (:shape-name "EFSAuthorizationConfig"))

(smithy/sdk/shapes:define-enum efsauthorization-config-iam
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum efstransit-encryption
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure efsvolume-configuration common-lisp:nil
                                    ((file-system-id :target-type string
                                      :required common-lisp:t :member-name
                                      "fileSystemId")
                                     (root-directory :target-type string
                                      :member-name "rootDirectory")
                                     (transit-encryption :target-type
                                      efstransit-encryption :member-name
                                      "transitEncryption")
                                     (transit-encryption-port :target-type
                                      boxed-integer :member-name
                                      "transitEncryptionPort")
                                     (authorization-config :target-type
                                      efsauthorization-config :member-name
                                      "authorizationConfig"))
                                    (:shape-name "EFSVolumeConfiguration"))

(smithy/sdk/shapes:define-structure environment-file common-lisp:nil
                                    ((value :target-type string :required
                                      common-lisp:t :member-name "value")
                                     (type :target-type environment-file-type
                                      :required common-lisp:t :member-name
                                      "type"))
                                    (:shape-name "EnvironmentFile"))

(smithy/sdk/shapes:define-enum environment-file-type
    common-lisp:nil
  (:s3 "s3"))

(smithy/sdk/shapes:define-list environment-files :member environment-file)

(smithy/sdk/shapes:define-list environment-variables :member key-value-pair)

(smithy/sdk/shapes:define-structure ephemeral-storage common-lisp:nil
                                    ((size-in-gi-b :target-type integer
                                      :required common-lisp:t :member-name
                                      "sizeInGiB"))
                                    (:shape-name "EphemeralStorage"))

(smithy/sdk/shapes:define-structure execute-command-configuration
                                    common-lisp:nil
                                    ((kms-key-id :target-type string
                                      :member-name "kmsKeyId")
                                     (logging :target-type
                                      execute-command-logging :member-name
                                      "logging")
                                     (log-configuration :target-type
                                      execute-command-log-configuration
                                      :member-name "logConfiguration"))
                                    (:shape-name "ExecuteCommandConfiguration"))

(smithy/sdk/shapes:define-structure execute-command-log-configuration
                                    common-lisp:nil
                                    ((cloud-watch-log-group-name :target-type
                                      string :member-name
                                      "cloudWatchLogGroupName")
                                     (cloud-watch-encryption-enabled
                                      :target-type boolean :member-name
                                      "cloudWatchEncryptionEnabled")
                                     (s3bucket-name :target-type string
                                      :member-name "s3BucketName")
                                     (s3encryption-enabled :target-type boolean
                                      :member-name "s3EncryptionEnabled")
                                     (s3key-prefix :target-type string
                                      :member-name "s3KeyPrefix"))
                                    (:shape-name
                                     "ExecuteCommandLogConfiguration"))

(smithy/sdk/shapes:define-enum execute-command-logging
    common-lisp:nil
  (:none "NONE")
  (:default "DEFAULT")
  (:override "OVERRIDE"))

(smithy/sdk/shapes:define-input execute-command-request common-lisp:nil
                                ((cluster :target-type string :member-name
                                  "cluster")
                                 (container :target-type string :member-name
                                  "container")
                                 (command :target-type string :required
                                  common-lisp:t :member-name "command")
                                 (interactive :target-type boolean :required
                                  common-lisp:t :member-name "interactive")
                                 (task :target-type string :required
                                  common-lisp:t :member-name "task"))
                                (:shape-name "ExecuteCommandRequest"))

(smithy/sdk/shapes:define-output execute-command-response common-lisp:nil
                                 ((cluster-arn :target-type string :member-name
                                   "clusterArn")
                                  (container-arn :target-type string
                                   :member-name "containerArn")
                                  (container-name :target-type string
                                   :member-name "containerName")
                                  (interactive :target-type boolean
                                   :member-name "interactive")
                                  (session :target-type session :member-name
                                   "session")
                                  (task-arn :target-type string :member-name
                                   "taskArn"))
                                 (:shape-name "ExecuteCommandResponse"))

(smithy/sdk/shapes:define-structure
 fsx-windows-file-server-authorization-config common-lisp:nil
 ((credentials-parameter :target-type string :required common-lisp:t
   :member-name "credentialsParameter")
  (domain :target-type string :required common-lisp:t :member-name "domain"))
 (:shape-name "FSxWindowsFileServerAuthorizationConfig"))

(smithy/sdk/shapes:define-structure
 fsx-windows-file-server-volume-configuration common-lisp:nil
 ((file-system-id :target-type string :required common-lisp:t :member-name
   "fileSystemId")
  (root-directory :target-type string :required common-lisp:t :member-name
   "rootDirectory")
  (authorization-config :target-type
   fsx-windows-file-server-authorization-config :required common-lisp:t
   :member-name "authorizationConfig"))
 (:shape-name "FSxWindowsFileServerVolumeConfiguration"))

(smithy/sdk/shapes:define-structure failure common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "arn")
                                     (reason :target-type string :member-name
                                      "reason")
                                     (detail :target-type string :member-name
                                      "detail"))
                                    (:shape-name "Failure"))

(smithy/sdk/shapes:define-list failures :member failure)

(smithy/sdk/shapes:define-structure firelens-configuration common-lisp:nil
                                    ((type :target-type
                                      firelens-configuration-type :required
                                      common-lisp:t :member-name "type")
                                     (options :target-type
                                      firelens-configuration-options-map
                                      :member-name "options"))
                                    (:shape-name "FirelensConfiguration"))

(smithy/sdk/shapes:define-map firelens-configuration-options-map :key string
                              :value string)

(smithy/sdk/shapes:define-enum firelens-configuration-type
    common-lisp:nil
  (:fluentd "fluentd")
  (:fluentbit "fluentbit"))

(smithy/sdk/shapes:define-input get-task-protection-request common-lisp:nil
                                ((cluster :target-type string :required
                                  common-lisp:t :member-name "cluster")
                                 (tasks :target-type string-list :member-name
                                  "tasks"))
                                (:shape-name "GetTaskProtectionRequest"))

(smithy/sdk/shapes:define-output get-task-protection-response common-lisp:nil
                                 ((protected-tasks :target-type protected-tasks
                                   :member-name "protectedTasks")
                                  (failures :target-type failures :member-name
                                   "failures"))
                                 (:shape-name "GetTaskProtectionResponse"))

(smithy/sdk/shapes:define-list gpu-ids :member string)

(smithy/sdk/shapes:define-structure health-check common-lisp:nil
                                    ((command :target-type string-list
                                      :required common-lisp:t :member-name
                                      "command")
                                     (interval :target-type boxed-integer
                                      :member-name "interval")
                                     (timeout :target-type boxed-integer
                                      :member-name "timeout")
                                     (retries :target-type boxed-integer
                                      :member-name "retries")
                                     (start-period :target-type boxed-integer
                                      :member-name "startPeriod"))
                                    (:shape-name "HealthCheck"))

(smithy/sdk/shapes:define-enum health-status
    common-lisp:nil
  (:healthy "HEALTHY")
  (:unhealthy "UNHEALTHY")
  (:unknown "UNKNOWN"))

(smithy/sdk/shapes:define-structure host-entry common-lisp:nil
                                    ((hostname :target-type string :required
                                      common-lisp:t :member-name "hostname")
                                     (ip-address :target-type string :required
                                      common-lisp:t :member-name "ipAddress"))
                                    (:shape-name "HostEntry"))

(smithy/sdk/shapes:define-list host-entry-list :member host-entry)

(smithy/sdk/shapes:define-structure host-volume-properties common-lisp:nil
                                    ((source-path :target-type string
                                      :member-name "sourcePath"))
                                    (:shape-name "HostVolumeProperties"))

(smithy/sdk/shapes:define-type iamrole-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure inference-accelerator common-lisp:nil
                                    ((device-name :target-type string :required
                                      common-lisp:t :member-name "deviceName")
                                     (device-type :target-type string :required
                                      common-lisp:t :member-name "deviceType"))
                                    (:shape-name "InferenceAccelerator"))

(smithy/sdk/shapes:define-structure inference-accelerator-override
                                    common-lisp:nil
                                    ((device-name :target-type string
                                      :member-name "deviceName")
                                     (device-type :target-type string
                                      :member-name "deviceType"))
                                    (:shape-name
                                     "InferenceAcceleratorOverride"))

(smithy/sdk/shapes:define-list inference-accelerator-overrides :member
                               inference-accelerator-override)

(smithy/sdk/shapes:define-list inference-accelerators :member
                               inference-accelerator)

(smithy/sdk/shapes:define-structure instance-health-check-result
                                    common-lisp:nil
                                    ((type :target-type
                                      instance-health-check-type :member-name
                                      "type")
                                     (status :target-type
                                      instance-health-check-state :member-name
                                      "status")
                                     (last-updated :target-type timestamp
                                      :member-name "lastUpdated")
                                     (last-status-change :target-type timestamp
                                      :member-name "lastStatusChange"))
                                    (:shape-name "InstanceHealthCheckResult"))

(smithy/sdk/shapes:define-list instance-health-check-result-list :member
                               instance-health-check-result)

(smithy/sdk/shapes:define-enum instance-health-check-state
    common-lisp:nil
  (:ok "OK")
  (:impaired "IMPAIRED")
  (:insufficient-data "INSUFFICIENT_DATA")
  (:initializing "INITIALIZING"))

(smithy/sdk/shapes:define-enum instance-health-check-type
    common-lisp:nil
  (:container-runtime "CONTAINER_RUNTIME"))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list integer-list :member boxed-integer)

(smithy/sdk/shapes:define-error invalid-parameter-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "InvalidParameterException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum ipc-mode
    common-lisp:nil
  (:host "host")
  (:task "task")
  (:none "none"))

(smithy/sdk/shapes:define-structure kernel-capabilities common-lisp:nil
                                    ((add :target-type string-list :member-name
                                      "add")
                                     (drop :target-type string-list
                                      :member-name "drop"))
                                    (:shape-name "KernelCapabilities"))

(smithy/sdk/shapes:define-structure key-value-pair common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (value :target-type string :member-name
                                      "value"))
                                    (:shape-name "KeyValuePair"))

(smithy/sdk/shapes:define-enum launch-type
    common-lisp:nil
  (:ec2 "EC2")
  (:fargate "FARGATE")
  (:external "EXTERNAL"))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure linux-parameters common-lisp:nil
                                    ((capabilities :target-type
                                      kernel-capabilities :member-name
                                      "capabilities")
                                     (devices :target-type devices-list
                                      :member-name "devices")
                                     (init-process-enabled :target-type
                                      boxed-boolean :member-name
                                      "initProcessEnabled")
                                     (shared-memory-size :target-type
                                      boxed-integer :member-name
                                      "sharedMemorySize")
                                     (tmpfs :target-type tmpfs-list
                                      :member-name "tmpfs")
                                     (max-swap :target-type boxed-integer
                                      :member-name "maxSwap")
                                     (swappiness :target-type boxed-integer
                                      :member-name "swappiness"))
                                    (:shape-name "LinuxParameters"))

(smithy/sdk/shapes:define-input list-account-settings-request common-lisp:nil
                                ((name :target-type setting-name :member-name
                                  "name")
                                 (value :target-type string :member-name
                                  "value")
                                 (principal-arn :target-type string
                                  :member-name "principalArn")
                                 (effective-settings :target-type boolean
                                  :member-name "effectiveSettings")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type integer :member-name
                                  "maxResults"))
                                (:shape-name "ListAccountSettingsRequest"))

(smithy/sdk/shapes:define-output list-account-settings-response common-lisp:nil
                                 ((settings :target-type settings :member-name
                                   "settings")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListAccountSettingsResponse"))

(smithy/sdk/shapes:define-input list-attributes-request common-lisp:nil
                                ((cluster :target-type string :member-name
                                  "cluster")
                                 (target-type :target-type target-type
                                  :required common-lisp:t :member-name
                                  "targetType")
                                 (attribute-name :target-type string
                                  :member-name "attributeName")
                                 (attribute-value :target-type string
                                  :member-name "attributeValue")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type boxed-integer
                                  :member-name "maxResults"))
                                (:shape-name "ListAttributesRequest"))

(smithy/sdk/shapes:define-output list-attributes-response common-lisp:nil
                                 ((attributes :target-type attributes
                                   :member-name "attributes")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListAttributesResponse"))

(smithy/sdk/shapes:define-input list-clusters-request common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type boxed-integer
                                  :member-name "maxResults"))
                                (:shape-name "ListClustersRequest"))

(smithy/sdk/shapes:define-output list-clusters-response common-lisp:nil
                                 ((cluster-arns :target-type string-list
                                   :member-name "clusterArns")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListClustersResponse"))

(smithy/sdk/shapes:define-input list-container-instances-request
                                common-lisp:nil
                                ((cluster :target-type string :member-name
                                  "cluster")
                                 (filter :target-type string :member-name
                                  "filter")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type boxed-integer
                                  :member-name "maxResults")
                                 (status :target-type container-instance-status
                                  :member-name "status"))
                                (:shape-name "ListContainerInstancesRequest"))

(smithy/sdk/shapes:define-output list-container-instances-response
                                 common-lisp:nil
                                 ((container-instance-arns :target-type
                                   string-list :member-name
                                   "containerInstanceArns")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListContainerInstancesResponse"))

(smithy/sdk/shapes:define-input list-service-deployments-request
                                common-lisp:nil
                                ((service :target-type string :required
                                  common-lisp:t :member-name "service")
                                 (cluster :target-type string :member-name
                                  "cluster")
                                 (status :target-type
                                  service-deployment-status-list :member-name
                                  "status")
                                 (created-at :target-type created-at
                                  :member-name "createdAt")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type boxed-integer
                                  :member-name "maxResults"))
                                (:shape-name "ListServiceDeploymentsRequest"))

(smithy/sdk/shapes:define-output list-service-deployments-response
                                 common-lisp:nil
                                 ((service-deployments :target-type
                                   service-deployments-brief :member-name
                                   "serviceDeployments")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListServiceDeploymentsResponse"))

(smithy/sdk/shapes:define-input list-services-by-namespace-request
                                common-lisp:nil
                                ((namespace :target-type string :required
                                  common-lisp:t :member-name "namespace")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type boxed-integer
                                  :member-name "maxResults"))
                                (:shape-name "ListServicesByNamespaceRequest"))

(smithy/sdk/shapes:define-output list-services-by-namespace-response
                                 common-lisp:nil
                                 ((service-arns :target-type string-list
                                   :member-name "serviceArns")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "ListServicesByNamespaceResponse"))

(smithy/sdk/shapes:define-input list-services-request common-lisp:nil
                                ((cluster :target-type string :member-name
                                  "cluster")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type boxed-integer
                                  :member-name "maxResults")
                                 (launch-type :target-type launch-type
                                  :member-name "launchType")
                                 (scheduling-strategy :target-type
                                  scheduling-strategy :member-name
                                  "schedulingStrategy"))
                                (:shape-name "ListServicesRequest"))

(smithy/sdk/shapes:define-output list-services-response common-lisp:nil
                                 ((service-arns :target-type string-list
                                   :member-name "serviceArns")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListServicesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "resourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tags :member-name "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-task-definition-families-request
                                common-lisp:nil
                                ((family-prefix :target-type string
                                  :member-name "familyPrefix")
                                 (status :target-type
                                  task-definition-family-status :member-name
                                  "status")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type boxed-integer
                                  :member-name "maxResults"))
                                (:shape-name
                                 "ListTaskDefinitionFamiliesRequest"))

(smithy/sdk/shapes:define-output list-task-definition-families-response
                                 common-lisp:nil
                                 ((families :target-type string-list
                                   :member-name "families")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "ListTaskDefinitionFamiliesResponse"))

(smithy/sdk/shapes:define-input list-task-definitions-request common-lisp:nil
                                ((family-prefix :target-type string
                                  :member-name "familyPrefix")
                                 (status :target-type task-definition-status
                                  :member-name "status")
                                 (sort :target-type sort-order :member-name
                                  "sort")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type boxed-integer
                                  :member-name "maxResults"))
                                (:shape-name "ListTaskDefinitionsRequest"))

(smithy/sdk/shapes:define-output list-task-definitions-response common-lisp:nil
                                 ((task-definition-arns :target-type
                                   string-list :member-name
                                   "taskDefinitionArns")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListTaskDefinitionsResponse"))

(smithy/sdk/shapes:define-input list-tasks-request common-lisp:nil
                                ((cluster :target-type string :member-name
                                  "cluster")
                                 (container-instance :target-type string
                                  :member-name "containerInstance")
                                 (family :target-type string :member-name
                                  "family")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type boxed-integer
                                  :member-name "maxResults")
                                 (started-by :target-type string :member-name
                                  "startedBy")
                                 (service-name :target-type string :member-name
                                  "serviceName")
                                 (desired-status :target-type desired-status
                                  :member-name "desiredStatus")
                                 (launch-type :target-type launch-type
                                  :member-name "launchType"))
                                (:shape-name "ListTasksRequest"))

(smithy/sdk/shapes:define-output list-tasks-response common-lisp:nil
                                 ((task-arns :target-type string-list
                                   :member-name "taskArns")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListTasksResponse"))

(smithy/sdk/shapes:define-structure load-balancer common-lisp:nil
                                    ((target-group-arn :target-type string
                                      :member-name "targetGroupArn")
                                     (load-balancer-name :target-type string
                                      :member-name "loadBalancerName")
                                     (container-name :target-type string
                                      :member-name "containerName")
                                     (container-port :target-type boxed-integer
                                      :member-name "containerPort")
                                     (advanced-configuration :target-type
                                      advanced-configuration :member-name
                                      "advancedConfiguration"))
                                    (:shape-name "LoadBalancer"))

(smithy/sdk/shapes:define-list load-balancers :member load-balancer)

(smithy/sdk/shapes:define-structure log-configuration common-lisp:nil
                                    ((log-driver :target-type log-driver
                                      :required common-lisp:t :member-name
                                      "logDriver")
                                     (options :target-type
                                      log-configuration-options-map
                                      :member-name "options")
                                     (secret-options :target-type secret-list
                                      :member-name "secretOptions"))
                                    (:shape-name "LogConfiguration"))

(smithy/sdk/shapes:define-map log-configuration-options-map :key string :value
                              string)

(smithy/sdk/shapes:define-enum log-driver
    common-lisp:nil
  (:json-file "json-file")
  (:syslog "syslog")
  (:journald "journald")
  (:gelf "gelf")
  (:fluentd "fluentd")
  (:awslogs "awslogs")
  (:splunk "splunk")
  (:awsfirelens "awsfirelens"))

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure managed-agent common-lisp:nil
                                    ((last-started-at :target-type timestamp
                                      :member-name "lastStartedAt")
                                     (name :target-type managed-agent-name
                                      :member-name "name")
                                     (reason :target-type string :member-name
                                      "reason")
                                     (last-status :target-type string
                                      :member-name "lastStatus"))
                                    (:shape-name "ManagedAgent"))

(smithy/sdk/shapes:define-enum managed-agent-name
    common-lisp:nil
  (:execute-command-agent "ExecuteCommandAgent"))

(smithy/sdk/shapes:define-structure managed-agent-state-change common-lisp:nil
                                    ((container-name :target-type string
                                      :required common-lisp:t :member-name
                                      "containerName")
                                     (managed-agent-name :target-type
                                      managed-agent-name :required
                                      common-lisp:t :member-name
                                      "managedAgentName")
                                     (status :target-type string :required
                                      common-lisp:t :member-name "status")
                                     (reason :target-type string :member-name
                                      "reason"))
                                    (:shape-name "ManagedAgentStateChange"))

(smithy/sdk/shapes:define-list managed-agent-state-changes :member
                               managed-agent-state-change)

(smithy/sdk/shapes:define-list managed-agents :member managed-agent)

(smithy/sdk/shapes:define-enum managed-draining
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure managed-scaling common-lisp:nil
                                    ((status :target-type
                                      managed-scaling-status :member-name
                                      "status")
                                     (target-capacity :target-type
                                      managed-scaling-target-capacity
                                      :member-name "targetCapacity")
                                     (minimum-scaling-step-size :target-type
                                      managed-scaling-step-size :member-name
                                      "minimumScalingStepSize")
                                     (maximum-scaling-step-size :target-type
                                      managed-scaling-step-size :member-name
                                      "maximumScalingStepSize")
                                     (instance-warmup-period :target-type
                                      managed-scaling-instance-warmup-period
                                      :member-name "instanceWarmupPeriod"))
                                    (:shape-name "ManagedScaling"))

(smithy/sdk/shapes:define-type managed-scaling-instance-warmup-period
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum managed-scaling-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-type managed-scaling-step-size
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type managed-scaling-target-capacity
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure managed-storage-configuration
                                    common-lisp:nil
                                    ((kms-key-id :target-type string
                                      :member-name "kmsKeyId")
                                     (fargate-ephemeral-storage-kms-key-id
                                      :target-type string :member-name
                                      "fargateEphemeralStorageKmsKeyId"))
                                    (:shape-name "ManagedStorageConfiguration"))

(smithy/sdk/shapes:define-enum managed-termination-protection
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-error missing-version-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "MissingVersionException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure mount-point common-lisp:nil
                                    ((source-volume :target-type string
                                      :member-name "sourceVolume")
                                     (container-path :target-type string
                                      :member-name "containerPath")
                                     (read-only :target-type boxed-boolean
                                      :member-name "readOnly"))
                                    (:shape-name "MountPoint"))

(smithy/sdk/shapes:define-list mount-point-list :member mount-point)

(smithy/sdk/shapes:define-error namespace-not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "NamespaceNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure network-binding common-lisp:nil
                                    ((bind-ip :target-type string :member-name
                                      "bindIP")
                                     (container-port :target-type boxed-integer
                                      :member-name "containerPort")
                                     (host-port :target-type boxed-integer
                                      :member-name "hostPort")
                                     (protocol :target-type transport-protocol
                                      :member-name "protocol")
                                     (container-port-range :target-type string
                                      :member-name "containerPortRange")
                                     (host-port-range :target-type string
                                      :member-name "hostPortRange"))
                                    (:shape-name "NetworkBinding"))

(smithy/sdk/shapes:define-list network-bindings :member network-binding)

(smithy/sdk/shapes:define-structure network-configuration common-lisp:nil
                                    ((awsvpc-configuration :target-type
                                      aws-vpc-configuration :member-name
                                      "awsvpcConfiguration"))
                                    (:shape-name "NetworkConfiguration"))

(smithy/sdk/shapes:define-structure network-interface common-lisp:nil
                                    ((attachment-id :target-type string
                                      :member-name "attachmentId")
                                     (private-ipv4address :target-type string
                                      :member-name "privateIpv4Address")
                                     (ipv6address :target-type string
                                      :member-name "ipv6Address"))
                                    (:shape-name "NetworkInterface"))

(smithy/sdk/shapes:define-list network-interfaces :member network-interface)

(smithy/sdk/shapes:define-enum network-mode
    common-lisp:nil
  (:bridge "bridge")
  (:host "host")
  (:awsvpc "awsvpc")
  (:none "none"))

(smithy/sdk/shapes:define-error no-update-available-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "NoUpdateAvailableException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum osfamily
    common-lisp:nil
  (:windows-server-2019-full "WINDOWS_SERVER_2019_FULL")
  (:windows-server-2019-core "WINDOWS_SERVER_2019_CORE")
  (:windows-server-2016-full "WINDOWS_SERVER_2016_FULL")
  (:windows-server-2004-core "WINDOWS_SERVER_2004_CORE")
  (:windows-server-2022-core "WINDOWS_SERVER_2022_CORE")
  (:windows-server-2022-full "WINDOWS_SERVER_2022_FULL")
  (:windows-server-2025-core "WINDOWS_SERVER_2025_CORE")
  (:windows-server-2025-full "WINDOWS_SERVER_2025_FULL")
  (:windows-server-20h2-core "WINDOWS_SERVER_20H2_CORE")
  (:linux "LINUX"))

(smithy/sdk/shapes:define-enum pid-mode
    common-lisp:nil
  (:host "host")
  (:task "task"))

(smithy/sdk/shapes:define-structure placement-constraint common-lisp:nil
                                    ((type :target-type
                                      placement-constraint-type :member-name
                                      "type")
                                     (expression :target-type string
                                      :member-name "expression"))
                                    (:shape-name "PlacementConstraint"))

(smithy/sdk/shapes:define-enum placement-constraint-type
    common-lisp:nil
  (:distinct-instance "distinctInstance")
  (:member-of "memberOf"))

(smithy/sdk/shapes:define-list placement-constraints :member
                               placement-constraint)

(smithy/sdk/shapes:define-list placement-strategies :member placement-strategy)

(smithy/sdk/shapes:define-structure placement-strategy common-lisp:nil
                                    ((type :target-type placement-strategy-type
                                      :member-name "type")
                                     (field :target-type string :member-name
                                      "field"))
                                    (:shape-name "PlacementStrategy"))

(smithy/sdk/shapes:define-enum placement-strategy-type
    common-lisp:nil
  (:random "random")
  (:spread "spread")
  (:binpack "binpack"))

(smithy/sdk/shapes:define-structure platform-device common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "id")
                                     (type :target-type platform-device-type
                                      :required common-lisp:t :member-name
                                      "type"))
                                    (:shape-name "PlatformDevice"))

(smithy/sdk/shapes:define-enum platform-device-type
    common-lisp:nil
  (:gpu "GPU"))

(smithy/sdk/shapes:define-list platform-devices :member platform-device)

(smithy/sdk/shapes:define-error
 platform-task-definition-incompatibility-exception common-lisp:nil
 ((message :target-type string :member-name "message"))
 (:shape-name "PlatformTaskDefinitionIncompatibilityException")
 (:error-code 400))

(smithy/sdk/shapes:define-error platform-unknown-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "PlatformUnknownException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure port-mapping common-lisp:nil
                                    ((container-port :target-type boxed-integer
                                      :member-name "containerPort")
                                     (host-port :target-type boxed-integer
                                      :member-name "hostPort")
                                     (protocol :target-type transport-protocol
                                      :member-name "protocol")
                                     (name :target-type string :member-name
                                      "name")
                                     (app-protocol :target-type
                                      application-protocol :member-name
                                      "appProtocol")
                                     (container-port-range :target-type string
                                      :member-name "containerPortRange"))
                                    (:shape-name "PortMapping"))

(smithy/sdk/shapes:define-list port-mapping-list :member port-mapping)

(smithy/sdk/shapes:define-type port-number smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum propagate-tags
    common-lisp:nil
  (:task-definition "TASK_DEFINITION")
  (:service "SERVICE")
  (:none "NONE"))

(smithy/sdk/shapes:define-structure protected-task common-lisp:nil
                                    ((task-arn :target-type string :member-name
                                      "taskArn")
                                     (protection-enabled :target-type boolean
                                      :member-name "protectionEnabled")
                                     (expiration-date :target-type timestamp
                                      :member-name "expirationDate"))
                                    (:shape-name "ProtectedTask"))

(smithy/sdk/shapes:define-list protected-tasks :member protected-task)

(smithy/sdk/shapes:define-structure proxy-configuration common-lisp:nil
                                    ((type :target-type
                                      proxy-configuration-type :member-name
                                      "type")
                                     (container-name :target-type string
                                      :required common-lisp:t :member-name
                                      "containerName")
                                     (properties :target-type
                                      proxy-configuration-properties
                                      :member-name "properties"))
                                    (:shape-name "ProxyConfiguration"))

(smithy/sdk/shapes:define-list proxy-configuration-properties :member
                               key-value-pair)

(smithy/sdk/shapes:define-enum proxy-configuration-type
    common-lisp:nil
  (:appmesh "APPMESH"))

(smithy/sdk/shapes:define-input put-account-setting-default-request
                                common-lisp:nil
                                ((name :target-type setting-name :required
                                  common-lisp:t :member-name "name")
                                 (value :target-type string :required
                                  common-lisp:t :member-name "value"))
                                (:shape-name "PutAccountSettingDefaultRequest"))

(smithy/sdk/shapes:define-output put-account-setting-default-response
                                 common-lisp:nil
                                 ((setting :target-type setting :member-name
                                   "setting"))
                                 (:shape-name
                                  "PutAccountSettingDefaultResponse"))

(smithy/sdk/shapes:define-input put-account-setting-request common-lisp:nil
                                ((name :target-type setting-name :required
                                  common-lisp:t :member-name "name")
                                 (value :target-type string :required
                                  common-lisp:t :member-name "value")
                                 (principal-arn :target-type string
                                  :member-name "principalArn"))
                                (:shape-name "PutAccountSettingRequest"))

(smithy/sdk/shapes:define-output put-account-setting-response common-lisp:nil
                                 ((setting :target-type setting :member-name
                                   "setting"))
                                 (:shape-name "PutAccountSettingResponse"))

(smithy/sdk/shapes:define-input put-attributes-request common-lisp:nil
                                ((cluster :target-type string :member-name
                                  "cluster")
                                 (attributes :target-type attributes :required
                                  common-lisp:t :member-name "attributes"))
                                (:shape-name "PutAttributesRequest"))

(smithy/sdk/shapes:define-output put-attributes-response common-lisp:nil
                                 ((attributes :target-type attributes
                                   :member-name "attributes"))
                                 (:shape-name "PutAttributesResponse"))

(smithy/sdk/shapes:define-input put-cluster-capacity-providers-request
                                common-lisp:nil
                                ((cluster :target-type string :required
                                  common-lisp:t :member-name "cluster")
                                 (capacity-providers :target-type string-list
                                  :required common-lisp:t :member-name
                                  "capacityProviders")
                                 (default-capacity-provider-strategy
                                  :target-type capacity-provider-strategy
                                  :required common-lisp:t :member-name
                                  "defaultCapacityProviderStrategy"))
                                (:shape-name
                                 "PutClusterCapacityProvidersRequest"))

(smithy/sdk/shapes:define-output put-cluster-capacity-providers-response
                                 common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "cluster"))
                                 (:shape-name
                                  "PutClusterCapacityProvidersResponse"))

(smithy/sdk/shapes:define-input register-container-instance-request
                                common-lisp:nil
                                ((cluster :target-type string :member-name
                                  "cluster")
                                 (instance-identity-document :target-type
                                  string :member-name
                                  "instanceIdentityDocument")
                                 (instance-identity-document-signature
                                  :target-type string :member-name
                                  "instanceIdentityDocumentSignature")
                                 (total-resources :target-type resources
                                  :member-name "totalResources")
                                 (version-info :target-type version-info
                                  :member-name "versionInfo")
                                 (container-instance-arn :target-type string
                                  :member-name "containerInstanceArn")
                                 (attributes :target-type attributes
                                  :member-name "attributes")
                                 (platform-devices :target-type
                                  platform-devices :member-name
                                  "platformDevices")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name
                                 "RegisterContainerInstanceRequest"))

(smithy/sdk/shapes:define-output register-container-instance-response
                                 common-lisp:nil
                                 ((container-instance :target-type
                                   container-instance :member-name
                                   "containerInstance"))
                                 (:shape-name
                                  "RegisterContainerInstanceResponse"))

(smithy/sdk/shapes:define-input register-task-definition-request
                                common-lisp:nil
                                ((family :target-type string :required
                                  common-lisp:t :member-name "family")
                                 (task-role-arn :target-type string
                                  :member-name "taskRoleArn")
                                 (execution-role-arn :target-type string
                                  :member-name "executionRoleArn")
                                 (network-mode :target-type network-mode
                                  :member-name "networkMode")
                                 (container-definitions :target-type
                                  container-definitions :required common-lisp:t
                                  :member-name "containerDefinitions")
                                 (volumes :target-type volume-list :member-name
                                  "volumes")
                                 (placement-constraints :target-type
                                  task-definition-placement-constraints
                                  :member-name "placementConstraints")
                                 (requires-compatibilities :target-type
                                  compatibility-list :member-name
                                  "requiresCompatibilities")
                                 (cpu :target-type string :member-name "cpu")
                                 (memory :target-type string :member-name
                                  "memory")
                                 (tags :target-type tags :member-name "tags")
                                 (pid-mode :target-type pid-mode :member-name
                                  "pidMode")
                                 (ipc-mode :target-type ipc-mode :member-name
                                  "ipcMode")
                                 (proxy-configuration :target-type
                                  proxy-configuration :member-name
                                  "proxyConfiguration")
                                 (inference-accelerators :target-type
                                  inference-accelerators :member-name
                                  "inferenceAccelerators")
                                 (ephemeral-storage :target-type
                                  ephemeral-storage :member-name
                                  "ephemeralStorage")
                                 (runtime-platform :target-type
                                  runtime-platform :member-name
                                  "runtimePlatform")
                                 (enable-fault-injection :target-type
                                  boxed-boolean :member-name
                                  "enableFaultInjection"))
                                (:shape-name "RegisterTaskDefinitionRequest"))

(smithy/sdk/shapes:define-output register-task-definition-response
                                 common-lisp:nil
                                 ((task-definition :target-type task-definition
                                   :member-name "taskDefinition")
                                  (tags :target-type tags :member-name "tags"))
                                 (:shape-name "RegisterTaskDefinitionResponse"))

(smithy/sdk/shapes:define-structure repository-credentials common-lisp:nil
                                    ((credentials-parameter :target-type string
                                      :required common-lisp:t :member-name
                                      "credentialsParameter"))
                                    (:shape-name "RepositoryCredentials"))

(smithy/sdk/shapes:define-list requires-attributes :member attribute)

(smithy/sdk/shapes:define-structure resolved-configuration common-lisp:nil
                                    ((load-balancers :target-type
                                      service-revision-load-balancers
                                      :member-name "loadBalancers"))
                                    (:shape-name "ResolvedConfiguration"))

(smithy/sdk/shapes:define-structure resource common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (type :target-type string :member-name
                                      "type")
                                     (double-value :target-type double
                                      :member-name "doubleValue")
                                     (long-value :target-type long :member-name
                                      "longValue")
                                     (integer-value :target-type integer
                                      :member-name "integerValue")
                                     (string-set-value :target-type string-list
                                      :member-name "stringSetValue"))
                                    (:shape-name "Resource"))

(smithy/sdk/shapes:define-list resource-ids :member string)

(smithy/sdk/shapes:define-error resource-in-use-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ResourceInUseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure resource-requirement common-lisp:nil
                                    ((value :target-type string :required
                                      common-lisp:t :member-name "value")
                                     (type :target-type resource-type :required
                                      common-lisp:t :member-name "type"))
                                    (:shape-name "ResourceRequirement"))

(smithy/sdk/shapes:define-list resource-requirements :member
                               resource-requirement)

(smithy/sdk/shapes:define-enum resource-type
    common-lisp:nil
  (:gpu "GPU")
  (:inference-accelerator "InferenceAccelerator"))

(smithy/sdk/shapes:define-list resources :member resource)

(smithy/sdk/shapes:define-structure rollback common-lisp:nil
                                    ((reason :target-type string :member-name
                                      "reason")
                                     (started-at :target-type timestamp
                                      :member-name "startedAt")
                                     (service-revision-arn :target-type string
                                      :member-name "serviceRevisionArn"))
                                    (:shape-name "Rollback"))

(smithy/sdk/shapes:define-input run-task-request common-lisp:nil
                                ((capacity-provider-strategy :target-type
                                  capacity-provider-strategy :member-name
                                  "capacityProviderStrategy")
                                 (cluster :target-type string :member-name
                                  "cluster")
                                 (count :target-type boxed-integer :member-name
                                  "count")
                                 (enable-ecsmanaged-tags :target-type boolean
                                  :member-name "enableECSManagedTags")
                                 (enable-execute-command :target-type boolean
                                  :member-name "enableExecuteCommand")
                                 (group :target-type string :member-name
                                  "group")
                                 (launch-type :target-type launch-type
                                  :member-name "launchType")
                                 (network-configuration :target-type
                                  network-configuration :member-name
                                  "networkConfiguration")
                                 (overrides :target-type task-override
                                  :member-name "overrides")
                                 (placement-constraints :target-type
                                  placement-constraints :member-name
                                  "placementConstraints")
                                 (placement-strategy :target-type
                                  placement-strategies :member-name
                                  "placementStrategy")
                                 (platform-version :target-type string
                                  :member-name "platformVersion")
                                 (propagate-tags :target-type propagate-tags
                                  :member-name "propagateTags")
                                 (reference-id :target-type string :member-name
                                  "referenceId")
                                 (started-by :target-type string :member-name
                                  "startedBy")
                                 (tags :target-type tags :member-name "tags")
                                 (task-definition :target-type string :required
                                  common-lisp:t :member-name "taskDefinition")
                                 (client-token :target-type string :member-name
                                  "clientToken")
                                 (volume-configurations :target-type
                                  task-volume-configurations :member-name
                                  "volumeConfigurations"))
                                (:shape-name "RunTaskRequest"))

(smithy/sdk/shapes:define-output run-task-response common-lisp:nil
                                 ((tasks :target-type tasks :member-name
                                   "tasks")
                                  (failures :target-type failures :member-name
                                   "failures"))
                                 (:shape-name "RunTaskResponse"))

(smithy/sdk/shapes:define-structure runtime-platform common-lisp:nil
                                    ((cpu-architecture :target-type
                                      cpuarchitecture :member-name
                                      "cpuArchitecture")
                                     (operating-system-family :target-type
                                      osfamily :member-name
                                      "operatingSystemFamily"))
                                    (:shape-name "RuntimePlatform"))

(smithy/sdk/shapes:define-structure scale common-lisp:nil
                                    ((value :target-type double :member-name
                                      "value")
                                     (unit :target-type scale-unit :member-name
                                      "unit"))
                                    (:shape-name "Scale"))

(smithy/sdk/shapes:define-enum scale-unit
    common-lisp:nil
  (:percent "PERCENT"))

(smithy/sdk/shapes:define-enum scheduling-strategy
    common-lisp:nil
  (:replica "REPLICA")
  (:daemon "DAEMON"))

(smithy/sdk/shapes:define-enum scope
    common-lisp:nil
  (:task "task")
  (:shared "shared"))

(smithy/sdk/shapes:define-structure secret common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "name")
                                     (value-from :target-type string :required
                                      common-lisp:t :member-name "valueFrom"))
                                    (:shape-name "Secret"))

(smithy/sdk/shapes:define-list secret-list :member secret)

(smithy/sdk/shapes:define-type sensitive-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error server-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure service common-lisp:nil
                                    ((service-arn :target-type string
                                      :member-name "serviceArn")
                                     (service-name :target-type string
                                      :member-name "serviceName")
                                     (cluster-arn :target-type string
                                      :member-name "clusterArn")
                                     (load-balancers :target-type
                                      load-balancers :member-name
                                      "loadBalancers")
                                     (service-registries :target-type
                                      service-registries :member-name
                                      "serviceRegistries")
                                     (status :target-type string :member-name
                                      "status")
                                     (desired-count :target-type integer
                                      :member-name "desiredCount")
                                     (running-count :target-type integer
                                      :member-name "runningCount")
                                     (pending-count :target-type integer
                                      :member-name "pendingCount")
                                     (launch-type :target-type launch-type
                                      :member-name "launchType")
                                     (capacity-provider-strategy :target-type
                                      capacity-provider-strategy :member-name
                                      "capacityProviderStrategy")
                                     (platform-version :target-type string
                                      :member-name "platformVersion")
                                     (platform-family :target-type string
                                      :member-name "platformFamily")
                                     (task-definition :target-type string
                                      :member-name "taskDefinition")
                                     (deployment-configuration :target-type
                                      deployment-configuration :member-name
                                      "deploymentConfiguration")
                                     (task-sets :target-type task-sets
                                      :member-name "taskSets")
                                     (deployments :target-type deployments
                                      :member-name "deployments")
                                     (role-arn :target-type string :member-name
                                      "roleArn")
                                     (events :target-type service-events
                                      :member-name "events")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (placement-constraints :target-type
                                      placement-constraints :member-name
                                      "placementConstraints")
                                     (placement-strategy :target-type
                                      placement-strategies :member-name
                                      "placementStrategy")
                                     (network-configuration :target-type
                                      network-configuration :member-name
                                      "networkConfiguration")
                                     (health-check-grace-period-seconds
                                      :target-type boxed-integer :member-name
                                      "healthCheckGracePeriodSeconds")
                                     (scheduling-strategy :target-type
                                      scheduling-strategy :member-name
                                      "schedulingStrategy")
                                     (deployment-controller :target-type
                                      deployment-controller :member-name
                                      "deploymentController")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (created-by :target-type string
                                      :member-name "createdBy")
                                     (enable-ecsmanaged-tags :target-type
                                      boolean :member-name
                                      "enableECSManagedTags")
                                     (propagate-tags :target-type
                                      propagate-tags :member-name
                                      "propagateTags")
                                     (enable-execute-command :target-type
                                      boolean :member-name
                                      "enableExecuteCommand")
                                     (availability-zone-rebalancing
                                      :target-type
                                      availability-zone-rebalancing
                                      :member-name
                                      "availabilityZoneRebalancing"))
                                    (:shape-name "Service"))

(smithy/sdk/shapes:define-structure service-connect-client-alias
                                    common-lisp:nil
                                    ((port :target-type port-number :required
                                      common-lisp:t :member-name "port")
                                     (dns-name :target-type string :member-name
                                      "dnsName")
                                     (test-traffic-rules :target-type
                                      service-connect-test-traffic-rules
                                      :member-name "testTrafficRules"))
                                    (:shape-name "ServiceConnectClientAlias"))

(smithy/sdk/shapes:define-list service-connect-client-alias-list :member
                               service-connect-client-alias)

(smithy/sdk/shapes:define-structure service-connect-configuration
                                    common-lisp:nil
                                    ((enabled :target-type boolean :required
                                      common-lisp:t :member-name "enabled")
                                     (namespace :target-type string
                                      :member-name "namespace")
                                     (services :target-type
                                      service-connect-service-list :member-name
                                      "services")
                                     (log-configuration :target-type
                                      log-configuration :member-name
                                      "logConfiguration"))
                                    (:shape-name "ServiceConnectConfiguration"))

(smithy/sdk/shapes:define-structure service-connect-service common-lisp:nil
                                    ((port-name :target-type string :required
                                      common-lisp:t :member-name "portName")
                                     (discovery-name :target-type string
                                      :member-name "discoveryName")
                                     (client-aliases :target-type
                                      service-connect-client-alias-list
                                      :member-name "clientAliases")
                                     (ingress-port-override :target-type
                                      port-number :member-name
                                      "ingressPortOverride")
                                     (timeout :target-type
                                      timeout-configuration :member-name
                                      "timeout")
                                     (tls :target-type
                                      service-connect-tls-configuration
                                      :member-name "tls"))
                                    (:shape-name "ServiceConnectService"))

(smithy/sdk/shapes:define-list service-connect-service-list :member
                               service-connect-service)

(smithy/sdk/shapes:define-structure service-connect-service-resource
                                    common-lisp:nil
                                    ((discovery-name :target-type string
                                      :member-name "discoveryName")
                                     (discovery-arn :target-type string
                                      :member-name "discoveryArn"))
                                    (:shape-name
                                     "ServiceConnectServiceResource"))

(smithy/sdk/shapes:define-list service-connect-service-resource-list :member
                               service-connect-service-resource)

(smithy/sdk/shapes:define-structure
 service-connect-test-traffic-header-match-rules common-lisp:nil
 ((exact :target-type string :required common-lisp:t :member-name "exact"))
 (:shape-name "ServiceConnectTestTrafficHeaderMatchRules"))

(smithy/sdk/shapes:define-structure service-connect-test-traffic-header-rules
                                    common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "name")
                                     (value :target-type
                                      service-connect-test-traffic-header-match-rules
                                      :member-name "value"))
                                    (:shape-name
                                     "ServiceConnectTestTrafficHeaderRules"))

(smithy/sdk/shapes:define-structure service-connect-test-traffic-rules
                                    common-lisp:nil
                                    ((header :target-type
                                      service-connect-test-traffic-header-rules
                                      :required common-lisp:t :member-name
                                      "header"))
                                    (:shape-name
                                     "ServiceConnectTestTrafficRules"))

(smithy/sdk/shapes:define-structure service-connect-tls-certificate-authority
                                    common-lisp:nil
                                    ((aws-pca-authority-arn :target-type string
                                      :member-name "awsPcaAuthorityArn"))
                                    (:shape-name
                                     "ServiceConnectTlsCertificateAuthority"))

(smithy/sdk/shapes:define-structure service-connect-tls-configuration
                                    common-lisp:nil
                                    ((issuer-certificate-authority :target-type
                                      service-connect-tls-certificate-authority
                                      :required common-lisp:t :member-name
                                      "issuerCertificateAuthority")
                                     (kms-key :target-type string :member-name
                                      "kmsKey")
                                     (role-arn :target-type string :member-name
                                      "roleArn"))
                                    (:shape-name
                                     "ServiceConnectTlsConfiguration"))

(smithy/sdk/shapes:define-structure service-deployment common-lisp:nil
                                    ((service-deployment-arn :target-type
                                      string :member-name
                                      "serviceDeploymentArn")
                                     (service-arn :target-type string
                                      :member-name "serviceArn")
                                     (cluster-arn :target-type string
                                      :member-name "clusterArn")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (started-at :target-type timestamp
                                      :member-name "startedAt")
                                     (finished-at :target-type timestamp
                                      :member-name "finishedAt")
                                     (stopped-at :target-type timestamp
                                      :member-name "stoppedAt")
                                     (updated-at :target-type timestamp
                                      :member-name "updatedAt")
                                     (source-service-revisions :target-type
                                      service-revisions-summary-list
                                      :member-name "sourceServiceRevisions")
                                     (target-service-revision :target-type
                                      service-revision-summary :member-name
                                      "targetServiceRevision")
                                     (status :target-type
                                      service-deployment-status :member-name
                                      "status")
                                     (status-reason :target-type string
                                      :member-name "statusReason")
                                     (lifecycle-stage :target-type
                                      service-deployment-lifecycle-stage
                                      :member-name "lifecycleStage")
                                     (deployment-configuration :target-type
                                      deployment-configuration :member-name
                                      "deploymentConfiguration")
                                     (rollback :target-type rollback
                                      :member-name "rollback")
                                     (deployment-circuit-breaker :target-type
                                      service-deployment-circuit-breaker
                                      :member-name "deploymentCircuitBreaker")
                                     (alarms :target-type
                                      service-deployment-alarms :member-name
                                      "alarms"))
                                    (:shape-name "ServiceDeployment"))

(smithy/sdk/shapes:define-structure service-deployment-alarms common-lisp:nil
                                    ((status :target-type
                                      service-deployment-rollback-monitors-status
                                      :member-name "status")
                                     (alarm-names :target-type string-list
                                      :member-name "alarmNames")
                                     (triggered-alarm-names :target-type
                                      string-list :member-name
                                      "triggeredAlarmNames"))
                                    (:shape-name "ServiceDeploymentAlarms"))

(smithy/sdk/shapes:define-structure service-deployment-brief common-lisp:nil
                                    ((service-deployment-arn :target-type
                                      string :member-name
                                      "serviceDeploymentArn")
                                     (service-arn :target-type string
                                      :member-name "serviceArn")
                                     (cluster-arn :target-type string
                                      :member-name "clusterArn")
                                     (started-at :target-type timestamp
                                      :member-name "startedAt")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (finished-at :target-type timestamp
                                      :member-name "finishedAt")
                                     (target-service-revision-arn :target-type
                                      string :member-name
                                      "targetServiceRevisionArn")
                                     (status :target-type
                                      service-deployment-status :member-name
                                      "status")
                                     (status-reason :target-type string
                                      :member-name "statusReason"))
                                    (:shape-name "ServiceDeploymentBrief"))

(smithy/sdk/shapes:define-structure service-deployment-circuit-breaker
                                    common-lisp:nil
                                    ((status :target-type
                                      service-deployment-rollback-monitors-status
                                      :member-name "status")
                                     (failure-count :target-type integer
                                      :member-name "failureCount")
                                     (threshold :target-type integer
                                      :member-name "threshold"))
                                    (:shape-name
                                     "ServiceDeploymentCircuitBreaker"))

(smithy/sdk/shapes:define-enum service-deployment-lifecycle-stage
    common-lisp:nil
  (:reconcile-service "RECONCILE_SERVICE")
  (:pre-scale-up "PRE_SCALE_UP")
  (:scale-up "SCALE_UP")
  (:post-scale-up "POST_SCALE_UP")
  (:test-traffic-shift "TEST_TRAFFIC_SHIFT")
  (:post-test-traffic-shift "POST_TEST_TRAFFIC_SHIFT")
  (:production-traffic-shift "PRODUCTION_TRAFFIC_SHIFT")
  (:post-production-traffic-shift "POST_PRODUCTION_TRAFFIC_SHIFT")
  (:bake-time "BAKE_TIME")
  (:clean-up "CLEAN_UP"))

(smithy/sdk/shapes:define-error service-deployment-not-found-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name
                                 "ServiceDeploymentNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum service-deployment-rollback-monitors-status
    common-lisp:nil
  (:triggered "TRIGGERED")
  (:monitoring "MONITORING")
  (:monitoring-complete "MONITORING_COMPLETE")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum service-deployment-status
    common-lisp:nil
  (:pending "PENDING")
  (:successful "SUCCESSFUL")
  (:stopped "STOPPED")
  (:stop-requested "STOP_REQUESTED")
  (:in-progress "IN_PROGRESS")
  (:rollback-requested "ROLLBACK_REQUESTED")
  (:rollback-in-progress "ROLLBACK_IN_PROGRESS")
  (:rollback-successful "ROLLBACK_SUCCESSFUL")
  (:rollback-failed "ROLLBACK_FAILED"))

(smithy/sdk/shapes:define-list service-deployment-status-list :member
                               service-deployment-status)

(smithy/sdk/shapes:define-list service-deployments :member service-deployment)

(smithy/sdk/shapes:define-list service-deployments-brief :member
                               service-deployment-brief)

(smithy/sdk/shapes:define-structure service-event common-lisp:nil
                                    ((id :target-type string :member-name "id")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (message :target-type string :member-name
                                      "message"))
                                    (:shape-name "ServiceEvent"))

(smithy/sdk/shapes:define-list service-events :member service-event)

(smithy/sdk/shapes:define-enum service-field
    common-lisp:nil
  (:tags "TAGS"))

(smithy/sdk/shapes:define-list service-field-list :member service-field)

(smithy/sdk/shapes:define-structure service-managed-ebsvolume-configuration
                                    common-lisp:nil
                                    ((encrypted :target-type boxed-boolean
                                      :member-name "encrypted")
                                     (kms-key-id :target-type ebskmskey-id
                                      :member-name "kmsKeyId")
                                     (volume-type :target-type ebsvolume-type
                                      :member-name "volumeType")
                                     (size-in-gi-b :target-type boxed-integer
                                      :member-name "sizeInGiB")
                                     (snapshot-id :target-type ebssnapshot-id
                                      :member-name "snapshotId")
                                     (volume-initialization-rate :target-type
                                      boxed-integer :member-name
                                      "volumeInitializationRate")
                                     (iops :target-type boxed-integer
                                      :member-name "iops")
                                     (throughput :target-type boxed-integer
                                      :member-name "throughput")
                                     (tag-specifications :target-type
                                      ebstag-specifications :member-name
                                      "tagSpecifications")
                                     (role-arn :target-type iamrole-arn
                                      :required common-lisp:t :member-name
                                      "roleArn")
                                     (filesystem-type :target-type
                                      task-filesystem-type :member-name
                                      "filesystemType"))
                                    (:shape-name
                                     "ServiceManagedEBSVolumeConfiguration"))

(smithy/sdk/shapes:define-error service-not-active-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ServiceNotActiveException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error service-not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ServiceNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list service-registries :member service-registry)

(smithy/sdk/shapes:define-structure service-registry common-lisp:nil
                                    ((registry-arn :target-type string
                                      :member-name "registryArn")
                                     (port :target-type boxed-integer
                                      :member-name "port")
                                     (container-name :target-type string
                                      :member-name "containerName")
                                     (container-port :target-type boxed-integer
                                      :member-name "containerPort"))
                                    (:shape-name "ServiceRegistry"))

(smithy/sdk/shapes:define-structure service-revision common-lisp:nil
                                    ((service-revision-arn :target-type string
                                      :member-name "serviceRevisionArn")
                                     (service-arn :target-type string
                                      :member-name "serviceArn")
                                     (cluster-arn :target-type string
                                      :member-name "clusterArn")
                                     (task-definition :target-type string
                                      :member-name "taskDefinition")
                                     (capacity-provider-strategy :target-type
                                      capacity-provider-strategy :member-name
                                      "capacityProviderStrategy")
                                     (launch-type :target-type launch-type
                                      :member-name "launchType")
                                     (platform-version :target-type string
                                      :member-name "platformVersion")
                                     (platform-family :target-type string
                                      :member-name "platformFamily")
                                     (load-balancers :target-type
                                      load-balancers :member-name
                                      "loadBalancers")
                                     (service-registries :target-type
                                      service-registries :member-name
                                      "serviceRegistries")
                                     (network-configuration :target-type
                                      network-configuration :member-name
                                      "networkConfiguration")
                                     (container-images :target-type
                                      container-images :member-name
                                      "containerImages")
                                     (guard-duty-enabled :target-type boolean
                                      :member-name "guardDutyEnabled")
                                     (service-connect-configuration
                                      :target-type
                                      service-connect-configuration
                                      :member-name
                                      "serviceConnectConfiguration")
                                     (volume-configurations :target-type
                                      service-volume-configurations
                                      :member-name "volumeConfigurations")
                                     (fargate-ephemeral-storage :target-type
                                      deployment-ephemeral-storage :member-name
                                      "fargateEphemeralStorage")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (vpc-lattice-configurations :target-type
                                      vpc-lattice-configurations :member-name
                                      "vpcLatticeConfigurations")
                                     (resolved-configuration :target-type
                                      resolved-configuration :member-name
                                      "resolvedConfiguration"))
                                    (:shape-name "ServiceRevision"))

(smithy/sdk/shapes:define-structure service-revision-load-balancer
                                    common-lisp:nil
                                    ((target-group-arn :target-type string
                                      :member-name "targetGroupArn")
                                     (production-listener-rule :target-type
                                      string :member-name
                                      "productionListenerRule"))
                                    (:shape-name "ServiceRevisionLoadBalancer"))

(smithy/sdk/shapes:define-list service-revision-load-balancers :member
                               service-revision-load-balancer)

(smithy/sdk/shapes:define-structure service-revision-summary common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "arn")
                                     (requested-task-count :target-type integer
                                      :member-name "requestedTaskCount")
                                     (running-task-count :target-type integer
                                      :member-name "runningTaskCount")
                                     (pending-task-count :target-type integer
                                      :member-name "pendingTaskCount"))
                                    (:shape-name "ServiceRevisionSummary"))

(smithy/sdk/shapes:define-list service-revisions :member service-revision)

(smithy/sdk/shapes:define-list service-revisions-summary-list :member
                               service-revision-summary)

(smithy/sdk/shapes:define-structure service-volume-configuration
                                    common-lisp:nil
                                    ((name :target-type ecsvolume-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (managed-ebsvolume :target-type
                                      service-managed-ebsvolume-configuration
                                      :member-name "managedEBSVolume"))
                                    (:shape-name "ServiceVolumeConfiguration"))

(smithy/sdk/shapes:define-list service-volume-configurations :member
                               service-volume-configuration)

(smithy/sdk/shapes:define-list services :member service)

(smithy/sdk/shapes:define-structure session common-lisp:nil
                                    ((session-id :target-type string
                                      :member-name "sessionId")
                                     (stream-url :target-type string
                                      :member-name "streamUrl")
                                     (token-value :target-type sensitive-string
                                      :member-name "tokenValue"))
                                    (:shape-name "Session"))

(smithy/sdk/shapes:define-structure setting common-lisp:nil
                                    ((name :target-type setting-name
                                      :member-name "name")
                                     (value :target-type string :member-name
                                      "value")
                                     (principal-arn :target-type string
                                      :member-name "principalArn")
                                     (type :target-type setting-type
                                      :member-name "type"))
                                    (:shape-name "Setting"))

(smithy/sdk/shapes:define-enum setting-name
    common-lisp:nil
  (:service-long-arn-format "serviceLongArnFormat")
  (:task-long-arn-format "taskLongArnFormat")
  (:container-instance-long-arn-format "containerInstanceLongArnFormat")
  (:awsvpc-trunking "awsvpcTrunking")
  (:container-insights "containerInsights")
  (:fargate-fips-mode "fargateFIPSMode")
  (:tag-resource-authorization "tagResourceAuthorization")
  (:fargate-task-retirement-wait-period "fargateTaskRetirementWaitPeriod")
  (:guard-duty-activate "guardDutyActivate")
  (:default-log-driver-mode "defaultLogDriverMode"))

(smithy/sdk/shapes:define-enum setting-type
    common-lisp:nil
  (:user "user")
  (:aws-managed "aws_managed"))

(smithy/sdk/shapes:define-list settings :member setting)

(smithy/sdk/shapes:define-enum sort-order
    common-lisp:nil
  (:asc "ASC")
  (:desc "DESC"))

(smithy/sdk/shapes:define-enum stability-status
    common-lisp:nil
  (:steady-state "STEADY_STATE")
  (:stabilizing "STABILIZING"))

(smithy/sdk/shapes:define-input start-task-request common-lisp:nil
                                ((cluster :target-type string :member-name
                                  "cluster")
                                 (container-instances :target-type string-list
                                  :required common-lisp:t :member-name
                                  "containerInstances")
                                 (enable-ecsmanaged-tags :target-type boolean
                                  :member-name "enableECSManagedTags")
                                 (enable-execute-command :target-type boolean
                                  :member-name "enableExecuteCommand")
                                 (group :target-type string :member-name
                                  "group")
                                 (network-configuration :target-type
                                  network-configuration :member-name
                                  "networkConfiguration")
                                 (overrides :target-type task-override
                                  :member-name "overrides")
                                 (propagate-tags :target-type propagate-tags
                                  :member-name "propagateTags")
                                 (reference-id :target-type string :member-name
                                  "referenceId")
                                 (started-by :target-type string :member-name
                                  "startedBy")
                                 (tags :target-type tags :member-name "tags")
                                 (task-definition :target-type string :required
                                  common-lisp:t :member-name "taskDefinition")
                                 (volume-configurations :target-type
                                  task-volume-configurations :member-name
                                  "volumeConfigurations"))
                                (:shape-name "StartTaskRequest"))

(smithy/sdk/shapes:define-output start-task-response common-lisp:nil
                                 ((tasks :target-type tasks :member-name
                                   "tasks")
                                  (failures :target-type failures :member-name
                                   "failures"))
                                 (:shape-name "StartTaskResponse"))

(smithy/sdk/shapes:define-list statistics :member key-value-pair)

(smithy/sdk/shapes:define-input stop-service-deployment-request common-lisp:nil
                                ((service-deployment-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "serviceDeploymentArn")
                                 (stop-type :target-type
                                  stop-service-deployment-stop-type
                                  :member-name "stopType"))
                                (:shape-name "StopServiceDeploymentRequest"))

(smithy/sdk/shapes:define-output stop-service-deployment-response
                                 common-lisp:nil
                                 ((service-deployment-arn :target-type string
                                   :member-name "serviceDeploymentArn"))
                                 (:shape-name "StopServiceDeploymentResponse"))

(smithy/sdk/shapes:define-enum stop-service-deployment-stop-type
    common-lisp:nil
  (:abort "ABORT")
  (:rollback "ROLLBACK"))

(smithy/sdk/shapes:define-input stop-task-request common-lisp:nil
                                ((cluster :target-type string :member-name
                                  "cluster")
                                 (task :target-type string :required
                                  common-lisp:t :member-name "task")
                                 (reason :target-type string :member-name
                                  "reason"))
                                (:shape-name "StopTaskRequest"))

(smithy/sdk/shapes:define-output stop-task-response common-lisp:nil
                                 ((task :target-type task :member-name "task"))
                                 (:shape-name "StopTaskResponse"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-list :member string)

(smithy/sdk/shapes:define-map string-map :key string :value string)

(smithy/sdk/shapes:define-input submit-attachment-state-changes-request
                                common-lisp:nil
                                ((cluster :target-type string :member-name
                                  "cluster")
                                 (attachments :target-type
                                  attachment-state-changes :required
                                  common-lisp:t :member-name "attachments"))
                                (:shape-name
                                 "SubmitAttachmentStateChangesRequest"))

(smithy/sdk/shapes:define-output submit-attachment-state-changes-response
                                 common-lisp:nil
                                 ((acknowledgment :target-type string
                                   :member-name "acknowledgment"))
                                 (:shape-name
                                  "SubmitAttachmentStateChangesResponse"))

(smithy/sdk/shapes:define-input submit-container-state-change-request
                                common-lisp:nil
                                ((cluster :target-type string :member-name
                                  "cluster")
                                 (task :target-type string :member-name "task")
                                 (container-name :target-type string
                                  :member-name "containerName")
                                 (runtime-id :target-type string :member-name
                                  "runtimeId")
                                 (status :target-type string :member-name
                                  "status")
                                 (exit-code :target-type boxed-integer
                                  :member-name "exitCode")
                                 (reason :target-type string :member-name
                                  "reason")
                                 (network-bindings :target-type
                                  network-bindings :member-name
                                  "networkBindings"))
                                (:shape-name
                                 "SubmitContainerStateChangeRequest"))

(smithy/sdk/shapes:define-output submit-container-state-change-response
                                 common-lisp:nil
                                 ((acknowledgment :target-type string
                                   :member-name "acknowledgment"))
                                 (:shape-name
                                  "SubmitContainerStateChangeResponse"))

(smithy/sdk/shapes:define-input submit-task-state-change-request
                                common-lisp:nil
                                ((cluster :target-type string :member-name
                                  "cluster")
                                 (task :target-type string :member-name "task")
                                 (status :target-type string :member-name
                                  "status")
                                 (reason :target-type string :member-name
                                  "reason")
                                 (containers :target-type
                                  container-state-changes :member-name
                                  "containers")
                                 (attachments :target-type
                                  attachment-state-changes :member-name
                                  "attachments")
                                 (managed-agents :target-type
                                  managed-agent-state-changes :member-name
                                  "managedAgents")
                                 (pull-started-at :target-type timestamp
                                  :member-name "pullStartedAt")
                                 (pull-stopped-at :target-type timestamp
                                  :member-name "pullStoppedAt")
                                 (execution-stopped-at :target-type timestamp
                                  :member-name "executionStoppedAt"))
                                (:shape-name "SubmitTaskStateChangeRequest"))

(smithy/sdk/shapes:define-output submit-task-state-change-response
                                 common-lisp:nil
                                 ((acknowledgment :target-type string
                                   :member-name "acknowledgment"))
                                 (:shape-name "SubmitTaskStateChangeResponse"))

(smithy/sdk/shapes:define-structure system-control common-lisp:nil
                                    ((namespace :target-type string
                                      :member-name "namespace")
                                     (value :target-type string :member-name
                                      "value"))
                                    (:shape-name "SystemControl"))

(smithy/sdk/shapes:define-list system-controls :member system-control)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :member-name
                                      "key")
                                     (value :target-type tag-value :member-name
                                      "value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "resourceArn")
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tags :member tag)

(smithy/sdk/shapes:define-error target-not-connected-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "TargetNotConnectedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error target-not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "TargetNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum target-type
    common-lisp:nil
  (:container-instance "container-instance"))

(smithy/sdk/shapes:define-structure task common-lisp:nil
                                    ((attachments :target-type attachments
                                      :member-name "attachments")
                                     (attributes :target-type attributes
                                      :member-name "attributes")
                                     (availability-zone :target-type string
                                      :member-name "availabilityZone")
                                     (capacity-provider-name :target-type
                                      string :member-name
                                      "capacityProviderName")
                                     (cluster-arn :target-type string
                                      :member-name "clusterArn")
                                     (connectivity :target-type connectivity
                                      :member-name "connectivity")
                                     (connectivity-at :target-type timestamp
                                      :member-name "connectivityAt")
                                     (container-instance-arn :target-type
                                      string :member-name
                                      "containerInstanceArn")
                                     (containers :target-type containers
                                      :member-name "containers")
                                     (cpu :target-type string :member-name
                                      "cpu")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (desired-status :target-type string
                                      :member-name "desiredStatus")
                                     (enable-execute-command :target-type
                                      boolean :member-name
                                      "enableExecuteCommand")
                                     (execution-stopped-at :target-type
                                      timestamp :member-name
                                      "executionStoppedAt")
                                     (group :target-type string :member-name
                                      "group")
                                     (health-status :target-type health-status
                                      :member-name "healthStatus")
                                     (inference-accelerators :target-type
                                      inference-accelerators :member-name
                                      "inferenceAccelerators")
                                     (last-status :target-type string
                                      :member-name "lastStatus")
                                     (launch-type :target-type launch-type
                                      :member-name "launchType")
                                     (memory :target-type string :member-name
                                      "memory")
                                     (overrides :target-type task-override
                                      :member-name "overrides")
                                     (platform-version :target-type string
                                      :member-name "platformVersion")
                                     (platform-family :target-type string
                                      :member-name "platformFamily")
                                     (pull-started-at :target-type timestamp
                                      :member-name "pullStartedAt")
                                     (pull-stopped-at :target-type timestamp
                                      :member-name "pullStoppedAt")
                                     (started-at :target-type timestamp
                                      :member-name "startedAt")
                                     (started-by :target-type string
                                      :member-name "startedBy")
                                     (stop-code :target-type task-stop-code
                                      :member-name "stopCode")
                                     (stopped-at :target-type timestamp
                                      :member-name "stoppedAt")
                                     (stopped-reason :target-type string
                                      :member-name "stoppedReason")
                                     (stopping-at :target-type timestamp
                                      :member-name "stoppingAt")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (task-arn :target-type string :member-name
                                      "taskArn")
                                     (task-definition-arn :target-type string
                                      :member-name "taskDefinitionArn")
                                     (version :target-type long :member-name
                                      "version")
                                     (ephemeral-storage :target-type
                                      ephemeral-storage :member-name
                                      "ephemeralStorage")
                                     (fargate-ephemeral-storage :target-type
                                      task-ephemeral-storage :member-name
                                      "fargateEphemeralStorage"))
                                    (:shape-name "Task"))

(smithy/sdk/shapes:define-structure task-definition common-lisp:nil
                                    ((task-definition-arn :target-type string
                                      :member-name "taskDefinitionArn")
                                     (container-definitions :target-type
                                      container-definitions :member-name
                                      "containerDefinitions")
                                     (family :target-type string :member-name
                                      "family")
                                     (task-role-arn :target-type string
                                      :member-name "taskRoleArn")
                                     (execution-role-arn :target-type string
                                      :member-name "executionRoleArn")
                                     (network-mode :target-type network-mode
                                      :member-name "networkMode")
                                     (revision :target-type integer
                                      :member-name "revision")
                                     (volumes :target-type volume-list
                                      :member-name "volumes")
                                     (status :target-type
                                      task-definition-status :member-name
                                      "status")
                                     (requires-attributes :target-type
                                      requires-attributes :member-name
                                      "requiresAttributes")
                                     (placement-constraints :target-type
                                      task-definition-placement-constraints
                                      :member-name "placementConstraints")
                                     (compatibilities :target-type
                                      compatibility-list :member-name
                                      "compatibilities")
                                     (runtime-platform :target-type
                                      runtime-platform :member-name
                                      "runtimePlatform")
                                     (requires-compatibilities :target-type
                                      compatibility-list :member-name
                                      "requiresCompatibilities")
                                     (cpu :target-type string :member-name
                                      "cpu")
                                     (memory :target-type string :member-name
                                      "memory")
                                     (inference-accelerators :target-type
                                      inference-accelerators :member-name
                                      "inferenceAccelerators")
                                     (pid-mode :target-type pid-mode
                                      :member-name "pidMode")
                                     (ipc-mode :target-type ipc-mode
                                      :member-name "ipcMode")
                                     (proxy-configuration :target-type
                                      proxy-configuration :member-name
                                      "proxyConfiguration")
                                     (registered-at :target-type timestamp
                                      :member-name "registeredAt")
                                     (deregistered-at :target-type timestamp
                                      :member-name "deregisteredAt")
                                     (registered-by :target-type string
                                      :member-name "registeredBy")
                                     (ephemeral-storage :target-type
                                      ephemeral-storage :member-name
                                      "ephemeralStorage")
                                     (enable-fault-injection :target-type
                                      boxed-boolean :member-name
                                      "enableFaultInjection"))
                                    (:shape-name "TaskDefinition"))

(smithy/sdk/shapes:define-enum task-definition-family-status
    common-lisp:nil
  (:active "ACTIVE")
  (:inactive "INACTIVE")
  (:all "ALL"))

(smithy/sdk/shapes:define-enum task-definition-field
    common-lisp:nil
  (:tags "TAGS"))

(smithy/sdk/shapes:define-list task-definition-field-list :member
                               task-definition-field)

(smithy/sdk/shapes:define-list task-definition-list :member task-definition)

(smithy/sdk/shapes:define-structure task-definition-placement-constraint
                                    common-lisp:nil
                                    ((type :target-type
                                      task-definition-placement-constraint-type
                                      :member-name "type")
                                     (expression :target-type string
                                      :member-name "expression"))
                                    (:shape-name
                                     "TaskDefinitionPlacementConstraint"))

(smithy/sdk/shapes:define-enum task-definition-placement-constraint-type
    common-lisp:nil
  (:member-of "memberOf"))

(smithy/sdk/shapes:define-list task-definition-placement-constraints :member
                               task-definition-placement-constraint)

(smithy/sdk/shapes:define-enum task-definition-status
    common-lisp:nil
  (:active "ACTIVE")
  (:inactive "INACTIVE")
  (:delete-in-progress "DELETE_IN_PROGRESS"))

(smithy/sdk/shapes:define-structure task-ephemeral-storage common-lisp:nil
                                    ((size-in-gi-b :target-type integer
                                      :member-name "sizeInGiB")
                                     (kms-key-id :target-type string
                                      :member-name "kmsKeyId"))
                                    (:shape-name "TaskEphemeralStorage"))

(smithy/sdk/shapes:define-enum task-field
    common-lisp:nil
  (:tags "TAGS"))

(smithy/sdk/shapes:define-list task-field-list :member task-field)

(smithy/sdk/shapes:define-enum task-filesystem-type
    common-lisp:nil
  (:ext3 "ext3")
  (:ext4 "ext4")
  (:xfs "xfs")
  (:ntfs "ntfs"))

(smithy/sdk/shapes:define-structure task-managed-ebsvolume-configuration
                                    common-lisp:nil
                                    ((encrypted :target-type boxed-boolean
                                      :member-name "encrypted")
                                     (kms-key-id :target-type ebskmskey-id
                                      :member-name "kmsKeyId")
                                     (volume-type :target-type ebsvolume-type
                                      :member-name "volumeType")
                                     (size-in-gi-b :target-type boxed-integer
                                      :member-name "sizeInGiB")
                                     (snapshot-id :target-type ebssnapshot-id
                                      :member-name "snapshotId")
                                     (volume-initialization-rate :target-type
                                      boxed-integer :member-name
                                      "volumeInitializationRate")
                                     (iops :target-type boxed-integer
                                      :member-name "iops")
                                     (throughput :target-type boxed-integer
                                      :member-name "throughput")
                                     (tag-specifications :target-type
                                      ebstag-specifications :member-name
                                      "tagSpecifications")
                                     (role-arn :target-type iamrole-arn
                                      :required common-lisp:t :member-name
                                      "roleArn")
                                     (termination-policy :target-type
                                      task-managed-ebsvolume-termination-policy
                                      :member-name "terminationPolicy")
                                     (filesystem-type :target-type
                                      task-filesystem-type :member-name
                                      "filesystemType"))
                                    (:shape-name
                                     "TaskManagedEBSVolumeConfiguration"))

(smithy/sdk/shapes:define-structure task-managed-ebsvolume-termination-policy
                                    common-lisp:nil
                                    ((delete-on-termination :target-type
                                      boxed-boolean :required common-lisp:t
                                      :member-name "deleteOnTermination"))
                                    (:shape-name
                                     "TaskManagedEBSVolumeTerminationPolicy"))

(smithy/sdk/shapes:define-structure task-override common-lisp:nil
                                    ((container-overrides :target-type
                                      container-overrides :member-name
                                      "containerOverrides")
                                     (cpu :target-type string :member-name
                                      "cpu")
                                     (inference-accelerator-overrides
                                      :target-type
                                      inference-accelerator-overrides
                                      :member-name
                                      "inferenceAcceleratorOverrides")
                                     (execution-role-arn :target-type string
                                      :member-name "executionRoleArn")
                                     (memory :target-type string :member-name
                                      "memory")
                                     (task-role-arn :target-type string
                                      :member-name "taskRoleArn")
                                     (ephemeral-storage :target-type
                                      ephemeral-storage :member-name
                                      "ephemeralStorage"))
                                    (:shape-name "TaskOverride"))

(smithy/sdk/shapes:define-structure task-set common-lisp:nil
                                    ((id :target-type string :member-name "id")
                                     (task-set-arn :target-type string
                                      :member-name "taskSetArn")
                                     (service-arn :target-type string
                                      :member-name "serviceArn")
                                     (cluster-arn :target-type string
                                      :member-name "clusterArn")
                                     (started-by :target-type string
                                      :member-name "startedBy")
                                     (external-id :target-type string
                                      :member-name "externalId")
                                     (status :target-type string :member-name
                                      "status")
                                     (task-definition :target-type string
                                      :member-name "taskDefinition")
                                     (computed-desired-count :target-type
                                      integer :member-name
                                      "computedDesiredCount")
                                     (pending-count :target-type integer
                                      :member-name "pendingCount")
                                     (running-count :target-type integer
                                      :member-name "runningCount")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (updated-at :target-type timestamp
                                      :member-name "updatedAt")
                                     (launch-type :target-type launch-type
                                      :member-name "launchType")
                                     (capacity-provider-strategy :target-type
                                      capacity-provider-strategy :member-name
                                      "capacityProviderStrategy")
                                     (platform-version :target-type string
                                      :member-name "platformVersion")
                                     (platform-family :target-type string
                                      :member-name "platformFamily")
                                     (network-configuration :target-type
                                      network-configuration :member-name
                                      "networkConfiguration")
                                     (load-balancers :target-type
                                      load-balancers :member-name
                                      "loadBalancers")
                                     (service-registries :target-type
                                      service-registries :member-name
                                      "serviceRegistries")
                                     (scale :target-type scale :member-name
                                      "scale")
                                     (stability-status :target-type
                                      stability-status :member-name
                                      "stabilityStatus")
                                     (stability-status-at :target-type
                                      timestamp :member-name
                                      "stabilityStatusAt")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (fargate-ephemeral-storage :target-type
                                      deployment-ephemeral-storage :member-name
                                      "fargateEphemeralStorage"))
                                    (:shape-name "TaskSet"))

(smithy/sdk/shapes:define-enum task-set-field
    common-lisp:nil
  (:tags "TAGS"))

(smithy/sdk/shapes:define-list task-set-field-list :member task-set-field)

(smithy/sdk/shapes:define-error task-set-not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "TaskSetNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list task-sets :member task-set)

(smithy/sdk/shapes:define-enum task-stop-code
    common-lisp:nil
  (:task-failed-to-start "TaskFailedToStart")
  (:essential-container-exited "EssentialContainerExited")
  (:user-initiated "UserInitiated")
  (:service-scheduler-initiated "ServiceSchedulerInitiated")
  (:spot-interruption "SpotInterruption")
  (:termination-notice "TerminationNotice"))

(smithy/sdk/shapes:define-structure task-volume-configuration common-lisp:nil
                                    ((name :target-type ecsvolume-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (managed-ebsvolume :target-type
                                      task-managed-ebsvolume-configuration
                                      :member-name "managedEBSVolume"))
                                    (:shape-name "TaskVolumeConfiguration"))

(smithy/sdk/shapes:define-list task-volume-configurations :member
                               task-volume-configuration)

(smithy/sdk/shapes:define-list tasks :member task)

(smithy/sdk/shapes:define-structure timeout-configuration common-lisp:nil
                                    ((idle-timeout-seconds :target-type
                                      duration :member-name
                                      "idleTimeoutSeconds")
                                     (per-request-timeout-seconds :target-type
                                      duration :member-name
                                      "perRequestTimeoutSeconds"))
                                    (:shape-name "TimeoutConfiguration"))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure tmpfs common-lisp:nil
                                    ((container-path :target-type string
                                      :required common-lisp:t :member-name
                                      "containerPath")
                                     (size :target-type integer :required
                                      common-lisp:t :member-name "size")
                                     (mount-options :target-type string-list
                                      :member-name "mountOptions"))
                                    (:shape-name "Tmpfs"))

(smithy/sdk/shapes:define-list tmpfs-list :member tmpfs)

(smithy/sdk/shapes:define-enum transport-protocol
    common-lisp:nil
  (:tcp "tcp")
  (:udp "udp"))

(smithy/sdk/shapes:define-structure ulimit common-lisp:nil
                                    ((name :target-type ulimit-name :required
                                      common-lisp:t :member-name "name")
                                     (soft-limit :target-type integer :required
                                      common-lisp:t :member-name "softLimit")
                                     (hard-limit :target-type integer :required
                                      common-lisp:t :member-name "hardLimit"))
                                    (:shape-name "Ulimit"))

(smithy/sdk/shapes:define-list ulimit-list :member ulimit)

(smithy/sdk/shapes:define-enum ulimit-name
    common-lisp:nil
  (:core "core")
  (:cpu "cpu")
  (:data "data")
  (:fsize "fsize")
  (:locks "locks")
  (:memlock "memlock")
  (:msgqueue "msgqueue")
  (:nice "nice")
  (:nofile "nofile")
  (:nproc "nproc")
  (:rss "rss")
  (:rtprio "rtprio")
  (:rttime "rttime")
  (:sigpending "sigpending")
  (:stack "stack"))

(smithy/sdk/shapes:define-error unsupported-feature-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "UnsupportedFeatureException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "resourceArn")
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-capacity-provider-request
                                common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "name")
                                 (auto-scaling-group-provider :target-type
                                  auto-scaling-group-provider-update :required
                                  common-lisp:t :member-name
                                  "autoScalingGroupProvider"))
                                (:shape-name "UpdateCapacityProviderRequest"))

(smithy/sdk/shapes:define-output update-capacity-provider-response
                                 common-lisp:nil
                                 ((capacity-provider :target-type
                                   capacity-provider :member-name
                                   "capacityProvider"))
                                 (:shape-name "UpdateCapacityProviderResponse"))

(smithy/sdk/shapes:define-input update-cluster-request common-lisp:nil
                                ((cluster :target-type string :required
                                  common-lisp:t :member-name "cluster")
                                 (settings :target-type cluster-settings
                                  :member-name "settings")
                                 (configuration :target-type
                                  cluster-configuration :member-name
                                  "configuration")
                                 (service-connect-defaults :target-type
                                  cluster-service-connect-defaults-request
                                  :member-name "serviceConnectDefaults"))
                                (:shape-name "UpdateClusterRequest"))

(smithy/sdk/shapes:define-output update-cluster-response common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "cluster"))
                                 (:shape-name "UpdateClusterResponse"))

(smithy/sdk/shapes:define-input update-cluster-settings-request common-lisp:nil
                                ((cluster :target-type string :required
                                  common-lisp:t :member-name "cluster")
                                 (settings :target-type cluster-settings
                                  :required common-lisp:t :member-name
                                  "settings"))
                                (:shape-name "UpdateClusterSettingsRequest"))

(smithy/sdk/shapes:define-output update-cluster-settings-response
                                 common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "cluster"))
                                 (:shape-name "UpdateClusterSettingsResponse"))

(smithy/sdk/shapes:define-input update-container-agent-request common-lisp:nil
                                ((cluster :target-type string :member-name
                                  "cluster")
                                 (container-instance :target-type string
                                  :required common-lisp:t :member-name
                                  "containerInstance"))
                                (:shape-name "UpdateContainerAgentRequest"))

(smithy/sdk/shapes:define-output update-container-agent-response
                                 common-lisp:nil
                                 ((container-instance :target-type
                                   container-instance :member-name
                                   "containerInstance"))
                                 (:shape-name "UpdateContainerAgentResponse"))

(smithy/sdk/shapes:define-input update-container-instances-state-request
                                common-lisp:nil
                                ((cluster :target-type string :member-name
                                  "cluster")
                                 (container-instances :target-type string-list
                                  :required common-lisp:t :member-name
                                  "containerInstances")
                                 (status :target-type container-instance-status
                                  :required common-lisp:t :member-name
                                  "status"))
                                (:shape-name
                                 "UpdateContainerInstancesStateRequest"))

(smithy/sdk/shapes:define-output update-container-instances-state-response
                                 common-lisp:nil
                                 ((container-instances :target-type
                                   container-instances :member-name
                                   "containerInstances")
                                  (failures :target-type failures :member-name
                                   "failures"))
                                 (:shape-name
                                  "UpdateContainerInstancesStateResponse"))

(smithy/sdk/shapes:define-error update-in-progress-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "UpdateInProgressException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input update-service-primary-task-set-request
                                common-lisp:nil
                                ((cluster :target-type string :required
                                  common-lisp:t :member-name "cluster")
                                 (service :target-type string :required
                                  common-lisp:t :member-name "service")
                                 (primary-task-set :target-type string
                                  :required common-lisp:t :member-name
                                  "primaryTaskSet"))
                                (:shape-name
                                 "UpdateServicePrimaryTaskSetRequest"))

(smithy/sdk/shapes:define-output update-service-primary-task-set-response
                                 common-lisp:nil
                                 ((task-set :target-type task-set :member-name
                                   "taskSet"))
                                 (:shape-name
                                  "UpdateServicePrimaryTaskSetResponse"))

(smithy/sdk/shapes:define-input update-service-request common-lisp:nil
                                ((cluster :target-type string :member-name
                                  "cluster")
                                 (service :target-type string :required
                                  common-lisp:t :member-name "service")
                                 (desired-count :target-type boxed-integer
                                  :member-name "desiredCount")
                                 (task-definition :target-type string
                                  :member-name "taskDefinition")
                                 (capacity-provider-strategy :target-type
                                  capacity-provider-strategy :member-name
                                  "capacityProviderStrategy")
                                 (deployment-configuration :target-type
                                  deployment-configuration :member-name
                                  "deploymentConfiguration")
                                 (availability-zone-rebalancing :target-type
                                  availability-zone-rebalancing :member-name
                                  "availabilityZoneRebalancing")
                                 (network-configuration :target-type
                                  network-configuration :member-name
                                  "networkConfiguration")
                                 (placement-constraints :target-type
                                  placement-constraints :member-name
                                  "placementConstraints")
                                 (placement-strategy :target-type
                                  placement-strategies :member-name
                                  "placementStrategy")
                                 (platform-version :target-type string
                                  :member-name "platformVersion")
                                 (force-new-deployment :target-type boolean
                                  :member-name "forceNewDeployment")
                                 (health-check-grace-period-seconds
                                  :target-type boxed-integer :member-name
                                  "healthCheckGracePeriodSeconds")
                                 (deployment-controller :target-type
                                  deployment-controller :member-name
                                  "deploymentController")
                                 (enable-execute-command :target-type
                                  boxed-boolean :member-name
                                  "enableExecuteCommand")
                                 (enable-ecsmanaged-tags :target-type
                                  boxed-boolean :member-name
                                  "enableECSManagedTags")
                                 (load-balancers :target-type load-balancers
                                  :member-name "loadBalancers")
                                 (propagate-tags :target-type propagate-tags
                                  :member-name "propagateTags")
                                 (service-registries :target-type
                                  service-registries :member-name
                                  "serviceRegistries")
                                 (service-connect-configuration :target-type
                                  service-connect-configuration :member-name
                                  "serviceConnectConfiguration")
                                 (volume-configurations :target-type
                                  service-volume-configurations :member-name
                                  "volumeConfigurations")
                                 (vpc-lattice-configurations :target-type
                                  vpc-lattice-configurations :member-name
                                  "vpcLatticeConfigurations"))
                                (:shape-name "UpdateServiceRequest"))

(smithy/sdk/shapes:define-output update-service-response common-lisp:nil
                                 ((service :target-type service :member-name
                                   "service"))
                                 (:shape-name "UpdateServiceResponse"))

(smithy/sdk/shapes:define-input update-task-protection-request common-lisp:nil
                                ((cluster :target-type string :required
                                  common-lisp:t :member-name "cluster")
                                 (tasks :target-type string-list :required
                                  common-lisp:t :member-name "tasks")
                                 (protection-enabled :target-type boolean
                                  :required common-lisp:t :member-name
                                  "protectionEnabled")
                                 (expires-in-minutes :target-type boxed-integer
                                  :member-name "expiresInMinutes"))
                                (:shape-name "UpdateTaskProtectionRequest"))

(smithy/sdk/shapes:define-output update-task-protection-response
                                 common-lisp:nil
                                 ((protected-tasks :target-type protected-tasks
                                   :member-name "protectedTasks")
                                  (failures :target-type failures :member-name
                                   "failures"))
                                 (:shape-name "UpdateTaskProtectionResponse"))

(smithy/sdk/shapes:define-input update-task-set-request common-lisp:nil
                                ((cluster :target-type string :required
                                  common-lisp:t :member-name "cluster")
                                 (service :target-type string :required
                                  common-lisp:t :member-name "service")
                                 (task-set :target-type string :required
                                  common-lisp:t :member-name "taskSet")
                                 (scale :target-type scale :required
                                  common-lisp:t :member-name "scale"))
                                (:shape-name "UpdateTaskSetRequest"))

(smithy/sdk/shapes:define-output update-task-set-response common-lisp:nil
                                 ((task-set :target-type task-set :member-name
                                   "taskSet"))
                                 (:shape-name "UpdateTaskSetResponse"))

(smithy/sdk/shapes:define-enum version-consistency
    common-lisp:nil
  (:enabled "enabled")
  (:disabled "disabled"))

(smithy/sdk/shapes:define-structure version-info common-lisp:nil
                                    ((agent-version :target-type string
                                      :member-name "agentVersion")
                                     (agent-hash :target-type string
                                      :member-name "agentHash")
                                     (docker-version :target-type string
                                      :member-name "dockerVersion"))
                                    (:shape-name "VersionInfo"))

(smithy/sdk/shapes:define-structure volume common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (host :target-type host-volume-properties
                                      :member-name "host")
                                     (docker-volume-configuration :target-type
                                      docker-volume-configuration :member-name
                                      "dockerVolumeConfiguration")
                                     (efs-volume-configuration :target-type
                                      efsvolume-configuration :member-name
                                      "efsVolumeConfiguration")
                                     (fsx-windows-file-server-volume-configuration
                                      :target-type
                                      fsx-windows-file-server-volume-configuration
                                      :member-name
                                      "fsxWindowsFileServerVolumeConfiguration")
                                     (configured-at-launch :target-type
                                      boxed-boolean :member-name
                                      "configuredAtLaunch"))
                                    (:shape-name "Volume"))

(smithy/sdk/shapes:define-structure volume-from common-lisp:nil
                                    ((source-container :target-type string
                                      :member-name "sourceContainer")
                                     (read-only :target-type boxed-boolean
                                      :member-name "readOnly"))
                                    (:shape-name "VolumeFrom"))

(smithy/sdk/shapes:define-list volume-from-list :member volume-from)

(smithy/sdk/shapes:define-list volume-list :member volume)

(smithy/sdk/shapes:define-structure vpc-lattice-configuration common-lisp:nil
                                    ((role-arn :target-type iamrole-arn
                                      :required common-lisp:t :member-name
                                      "roleArn")
                                     (target-group-arn :target-type string
                                      :required common-lisp:t :member-name
                                      "targetGroupArn")
                                     (port-name :target-type string :required
                                      common-lisp:t :member-name "portName"))
                                    (:shape-name "VpcLatticeConfiguration"))

(smithy/sdk/shapes:define-list vpc-lattice-configurations :member
                               vpc-lattice-configuration)

(smithy/sdk/operation:define-operation create-capacity-provider :shape-name
                                       "CreateCapacityProvider" :input
                                       create-capacity-provider-request :output
                                       create-capacity-provider-response
                                       :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        server-exception
                                        update-in-progress-exception))

(smithy/sdk/operation:define-operation create-cluster :shape-name
                                       "CreateCluster" :input
                                       create-cluster-request :output
                                       create-cluster-response :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        namespace-not-found-exception
                                        server-exception))

(smithy/sdk/operation:define-operation create-service :shape-name
                                       "CreateService" :input
                                       create-service-request :output
                                       create-service-response :errors
                                       (access-denied-exception
                                        client-exception
                                        cluster-not-found-exception
                                        invalid-parameter-exception
                                        namespace-not-found-exception
                                        platform-task-definition-incompatibility-exception
                                        platform-unknown-exception
                                        server-exception
                                        unsupported-feature-exception))

(smithy/sdk/operation:define-operation create-task-set :shape-name
                                       "CreateTaskSet" :input
                                       create-task-set-request :output
                                       create-task-set-response :errors
                                       (access-denied-exception
                                        client-exception
                                        cluster-not-found-exception
                                        invalid-parameter-exception
                                        namespace-not-found-exception
                                        platform-task-definition-incompatibility-exception
                                        platform-unknown-exception
                                        server-exception
                                        service-not-active-exception
                                        service-not-found-exception
                                        unsupported-feature-exception))

(smithy/sdk/operation:define-operation delete-account-setting :shape-name
                                       "DeleteAccountSetting" :input
                                       delete-account-setting-request :output
                                       delete-account-setting-response :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        server-exception))

(smithy/sdk/operation:define-operation delete-attributes :shape-name
                                       "DeleteAttributes" :input
                                       delete-attributes-request :output
                                       delete-attributes-response :errors
                                       (cluster-not-found-exception
                                        invalid-parameter-exception
                                        target-not-found-exception))

(smithy/sdk/operation:define-operation delete-capacity-provider :shape-name
                                       "DeleteCapacityProvider" :input
                                       delete-capacity-provider-request :output
                                       delete-capacity-provider-response
                                       :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        server-exception))

(smithy/sdk/operation:define-operation delete-cluster :shape-name
                                       "DeleteCluster" :input
                                       delete-cluster-request :output
                                       delete-cluster-response :errors
                                       (client-exception
                                        cluster-contains-container-instances-exception
                                        cluster-contains-services-exception
                                        cluster-contains-tasks-exception
                                        cluster-not-found-exception
                                        invalid-parameter-exception
                                        server-exception
                                        update-in-progress-exception))

(smithy/sdk/operation:define-operation delete-service :shape-name
                                       "DeleteService" :input
                                       delete-service-request :output
                                       delete-service-response :errors
                                       (client-exception
                                        cluster-not-found-exception
                                        invalid-parameter-exception
                                        server-exception
                                        service-not-found-exception))

(smithy/sdk/operation:define-operation delete-task-definitions :shape-name
                                       "DeleteTaskDefinitions" :input
                                       delete-task-definitions-request :output
                                       delete-task-definitions-response :errors
                                       (access-denied-exception
                                        client-exception
                                        invalid-parameter-exception
                                        server-exception))

(smithy/sdk/operation:define-operation delete-task-set :shape-name
                                       "DeleteTaskSet" :input
                                       delete-task-set-request :output
                                       delete-task-set-response :errors
                                       (access-denied-exception
                                        client-exception
                                        cluster-not-found-exception
                                        invalid-parameter-exception
                                        server-exception
                                        service-not-active-exception
                                        service-not-found-exception
                                        task-set-not-found-exception
                                        unsupported-feature-exception))

(smithy/sdk/operation:define-operation deregister-container-instance
                                       :shape-name
                                       "DeregisterContainerInstance" :input
                                       deregister-container-instance-request
                                       :output
                                       deregister-container-instance-response
                                       :errors
                                       (client-exception
                                        cluster-not-found-exception
                                        invalid-parameter-exception
                                        server-exception))

(smithy/sdk/operation:define-operation deregister-task-definition :shape-name
                                       "DeregisterTaskDefinition" :input
                                       deregister-task-definition-request
                                       :output
                                       deregister-task-definition-response
                                       :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        server-exception))

(smithy/sdk/operation:define-operation describe-capacity-providers :shape-name
                                       "DescribeCapacityProviders" :input
                                       describe-capacity-providers-request
                                       :output
                                       describe-capacity-providers-response
                                       :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        server-exception))

(smithy/sdk/operation:define-operation describe-clusters :shape-name
                                       "DescribeClusters" :input
                                       describe-clusters-request :output
                                       describe-clusters-response :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        server-exception))

(smithy/sdk/operation:define-operation describe-container-instances :shape-name
                                       "DescribeContainerInstances" :input
                                       describe-container-instances-request
                                       :output
                                       describe-container-instances-response
                                       :errors
                                       (client-exception
                                        cluster-not-found-exception
                                        invalid-parameter-exception
                                        server-exception))

(smithy/sdk/operation:define-operation describe-service-deployments :shape-name
                                       "DescribeServiceDeployments" :input
                                       describe-service-deployments-request
                                       :output
                                       describe-service-deployments-response
                                       :errors
                                       (access-denied-exception
                                        client-exception
                                        cluster-not-found-exception
                                        invalid-parameter-exception
                                        server-exception
                                        service-not-found-exception
                                        unsupported-feature-exception))

(smithy/sdk/operation:define-operation describe-service-revisions :shape-name
                                       "DescribeServiceRevisions" :input
                                       describe-service-revisions-request
                                       :output
                                       describe-service-revisions-response
                                       :errors
                                       (access-denied-exception
                                        client-exception
                                        cluster-not-found-exception
                                        invalid-parameter-exception
                                        server-exception
                                        service-not-found-exception
                                        unsupported-feature-exception))

(smithy/sdk/operation:define-operation describe-services :shape-name
                                       "DescribeServices" :input
                                       describe-services-request :output
                                       describe-services-response :errors
                                       (client-exception
                                        cluster-not-found-exception
                                        invalid-parameter-exception
                                        server-exception))

(smithy/sdk/operation:define-operation describe-task-definition :shape-name
                                       "DescribeTaskDefinition" :input
                                       describe-task-definition-request :output
                                       describe-task-definition-response
                                       :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        server-exception))

(smithy/sdk/operation:define-operation describe-task-sets :shape-name
                                       "DescribeTaskSets" :input
                                       describe-task-sets-request :output
                                       describe-task-sets-response :errors
                                       (access-denied-exception
                                        client-exception
                                        cluster-not-found-exception
                                        invalid-parameter-exception
                                        server-exception
                                        service-not-active-exception
                                        service-not-found-exception
                                        unsupported-feature-exception))

(smithy/sdk/operation:define-operation describe-tasks :shape-name
                                       "DescribeTasks" :input
                                       describe-tasks-request :output
                                       describe-tasks-response :errors
                                       (client-exception
                                        cluster-not-found-exception
                                        invalid-parameter-exception
                                        server-exception))

(smithy/sdk/operation:define-operation discover-poll-endpoint :shape-name
                                       "DiscoverPollEndpoint" :input
                                       discover-poll-endpoint-request :output
                                       discover-poll-endpoint-response :errors
                                       (client-exception server-exception))

(smithy/sdk/operation:define-operation execute-command :shape-name
                                       "ExecuteCommand" :input
                                       execute-command-request :output
                                       execute-command-response :errors
                                       (access-denied-exception
                                        client-exception
                                        cluster-not-found-exception
                                        invalid-parameter-exception
                                        server-exception
                                        target-not-connected-exception))

(smithy/sdk/operation:define-operation get-task-protection :shape-name
                                       "GetTaskProtection" :input
                                       get-task-protection-request :output
                                       get-task-protection-response :errors
                                       (access-denied-exception
                                        client-exception
                                        cluster-not-found-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        server-exception
                                        unsupported-feature-exception))

(smithy/sdk/operation:define-operation list-account-settings :shape-name
                                       "ListAccountSettings" :input
                                       list-account-settings-request :output
                                       list-account-settings-response :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        server-exception))

(smithy/sdk/operation:define-operation list-attributes :shape-name
                                       "ListAttributes" :input
                                       list-attributes-request :output
                                       list-attributes-response :errors
                                       (cluster-not-found-exception
                                        invalid-parameter-exception))

(smithy/sdk/operation:define-operation list-clusters :shape-name "ListClusters"
                                       :input list-clusters-request :output
                                       list-clusters-response :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        server-exception))

(smithy/sdk/operation:define-operation list-container-instances :shape-name
                                       "ListContainerInstances" :input
                                       list-container-instances-request :output
                                       list-container-instances-response
                                       :errors
                                       (client-exception
                                        cluster-not-found-exception
                                        invalid-parameter-exception
                                        server-exception))

(smithy/sdk/operation:define-operation list-service-deployments :shape-name
                                       "ListServiceDeployments" :input
                                       list-service-deployments-request :output
                                       list-service-deployments-response
                                       :errors
                                       (access-denied-exception
                                        client-exception
                                        invalid-parameter-exception
                                        server-exception
                                        service-not-found-exception
                                        unsupported-feature-exception))

(smithy/sdk/operation:define-operation list-services :shape-name "ListServices"
                                       :input list-services-request :output
                                       list-services-response :errors
                                       (client-exception
                                        cluster-not-found-exception
                                        invalid-parameter-exception
                                        server-exception))

(smithy/sdk/operation:define-operation list-services-by-namespace :shape-name
                                       "ListServicesByNamespace" :input
                                       list-services-by-namespace-request
                                       :output
                                       list-services-by-namespace-response
                                       :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        namespace-not-found-exception
                                        server-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (client-exception
                                        cluster-not-found-exception
                                        invalid-parameter-exception
                                        server-exception))

(smithy/sdk/operation:define-operation list-task-definition-families
                                       :shape-name "ListTaskDefinitionFamilies"
                                       :input
                                       list-task-definition-families-request
                                       :output
                                       list-task-definition-families-response
                                       :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        server-exception))

(smithy/sdk/operation:define-operation list-task-definitions :shape-name
                                       "ListTaskDefinitions" :input
                                       list-task-definitions-request :output
                                       list-task-definitions-response :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        server-exception))

(smithy/sdk/operation:define-operation list-tasks :shape-name "ListTasks"
                                       :input list-tasks-request :output
                                       list-tasks-response :errors
                                       (client-exception
                                        cluster-not-found-exception
                                        invalid-parameter-exception
                                        server-exception
                                        service-not-found-exception))

(smithy/sdk/operation:define-operation put-account-setting :shape-name
                                       "PutAccountSetting" :input
                                       put-account-setting-request :output
                                       put-account-setting-response :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        server-exception))

(smithy/sdk/operation:define-operation put-account-setting-default :shape-name
                                       "PutAccountSettingDefault" :input
                                       put-account-setting-default-request
                                       :output
                                       put-account-setting-default-response
                                       :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        server-exception))

(smithy/sdk/operation:define-operation put-attributes :shape-name
                                       "PutAttributes" :input
                                       put-attributes-request :output
                                       put-attributes-response :errors
                                       (attribute-limit-exceeded-exception
                                        cluster-not-found-exception
                                        invalid-parameter-exception
                                        target-not-found-exception))

(smithy/sdk/operation:define-operation put-cluster-capacity-providers
                                       :shape-name
                                       "PutClusterCapacityProviders" :input
                                       put-cluster-capacity-providers-request
                                       :output
                                       put-cluster-capacity-providers-response
                                       :errors
                                       (client-exception
                                        cluster-not-found-exception
                                        invalid-parameter-exception
                                        resource-in-use-exception
                                        server-exception
                                        update-in-progress-exception))

(smithy/sdk/operation:define-operation register-container-instance :shape-name
                                       "RegisterContainerInstance" :input
                                       register-container-instance-request
                                       :output
                                       register-container-instance-response
                                       :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        server-exception))

(smithy/sdk/operation:define-operation register-task-definition :shape-name
                                       "RegisterTaskDefinition" :input
                                       register-task-definition-request :output
                                       register-task-definition-response
                                       :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        server-exception))

(smithy/sdk/operation:define-operation run-task :shape-name "RunTask" :input
                                       run-task-request :output
                                       run-task-response :errors
                                       (access-denied-exception
                                        blocked-exception client-exception
                                        cluster-not-found-exception
                                        conflict-exception
                                        invalid-parameter-exception
                                        platform-task-definition-incompatibility-exception
                                        platform-unknown-exception
                                        server-exception
                                        unsupported-feature-exception))

(smithy/sdk/operation:define-operation start-task :shape-name "StartTask"
                                       :input start-task-request :output
                                       start-task-response :errors
                                       (client-exception
                                        cluster-not-found-exception
                                        invalid-parameter-exception
                                        server-exception
                                        unsupported-feature-exception))

(smithy/sdk/operation:define-operation stop-service-deployment :shape-name
                                       "StopServiceDeployment" :input
                                       stop-service-deployment-request :output
                                       stop-service-deployment-response :errors
                                       (access-denied-exception
                                        client-exception conflict-exception
                                        invalid-parameter-exception
                                        server-exception
                                        service-deployment-not-found-exception
                                        unsupported-feature-exception))

(smithy/sdk/operation:define-operation stop-task :shape-name "StopTask" :input
                                       stop-task-request :output
                                       stop-task-response :errors
                                       (client-exception
                                        cluster-not-found-exception
                                        invalid-parameter-exception
                                        server-exception))

(smithy/sdk/operation:define-operation submit-attachment-state-changes
                                       :shape-name
                                       "SubmitAttachmentStateChanges" :input
                                       submit-attachment-state-changes-request
                                       :output
                                       submit-attachment-state-changes-response
                                       :errors
                                       (access-denied-exception
                                        client-exception
                                        invalid-parameter-exception
                                        server-exception))

(smithy/sdk/operation:define-operation submit-container-state-change
                                       :shape-name "SubmitContainerStateChange"
                                       :input
                                       submit-container-state-change-request
                                       :output
                                       submit-container-state-change-response
                                       :errors
                                       (access-denied-exception
                                        client-exception server-exception))

(smithy/sdk/operation:define-operation submit-task-state-change :shape-name
                                       "SubmitTaskStateChange" :input
                                       submit-task-state-change-request :output
                                       submit-task-state-change-response
                                       :errors
                                       (access-denied-exception
                                        client-exception
                                        invalid-parameter-exception
                                        server-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (client-exception
                                        cluster-not-found-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        server-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (client-exception
                                        cluster-not-found-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        server-exception))

(smithy/sdk/operation:define-operation update-capacity-provider :shape-name
                                       "UpdateCapacityProvider" :input
                                       update-capacity-provider-request :output
                                       update-capacity-provider-response
                                       :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        server-exception))

(smithy/sdk/operation:define-operation update-cluster :shape-name
                                       "UpdateCluster" :input
                                       update-cluster-request :output
                                       update-cluster-response :errors
                                       (client-exception
                                        cluster-not-found-exception
                                        invalid-parameter-exception
                                        namespace-not-found-exception
                                        server-exception))

(smithy/sdk/operation:define-operation update-cluster-settings :shape-name
                                       "UpdateClusterSettings" :input
                                       update-cluster-settings-request :output
                                       update-cluster-settings-response :errors
                                       (client-exception
                                        cluster-not-found-exception
                                        invalid-parameter-exception
                                        server-exception))

(smithy/sdk/operation:define-operation update-container-agent :shape-name
                                       "UpdateContainerAgent" :input
                                       update-container-agent-request :output
                                       update-container-agent-response :errors
                                       (client-exception
                                        cluster-not-found-exception
                                        invalid-parameter-exception
                                        missing-version-exception
                                        no-update-available-exception
                                        server-exception
                                        update-in-progress-exception))

(smithy/sdk/operation:define-operation update-container-instances-state
                                       :shape-name
                                       "UpdateContainerInstancesState" :input
                                       update-container-instances-state-request
                                       :output
                                       update-container-instances-state-response
                                       :errors
                                       (client-exception
                                        cluster-not-found-exception
                                        invalid-parameter-exception
                                        server-exception))

(smithy/sdk/operation:define-operation update-service :shape-name
                                       "UpdateService" :input
                                       update-service-request :output
                                       update-service-response :errors
                                       (access-denied-exception
                                        client-exception
                                        cluster-not-found-exception
                                        invalid-parameter-exception
                                        namespace-not-found-exception
                                        platform-task-definition-incompatibility-exception
                                        platform-unknown-exception
                                        server-exception
                                        service-not-active-exception
                                        service-not-found-exception
                                        unsupported-feature-exception))

(smithy/sdk/operation:define-operation update-service-primary-task-set
                                       :shape-name
                                       "UpdateServicePrimaryTaskSet" :input
                                       update-service-primary-task-set-request
                                       :output
                                       update-service-primary-task-set-response
                                       :errors
                                       (access-denied-exception
                                        client-exception
                                        cluster-not-found-exception
                                        invalid-parameter-exception
                                        server-exception
                                        service-not-active-exception
                                        service-not-found-exception
                                        task-set-not-found-exception
                                        unsupported-feature-exception))

(smithy/sdk/operation:define-operation update-task-protection :shape-name
                                       "UpdateTaskProtection" :input
                                       update-task-protection-request :output
                                       update-task-protection-response :errors
                                       (access-denied-exception
                                        client-exception
                                        cluster-not-found-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        server-exception
                                        unsupported-feature-exception))

(smithy/sdk/operation:define-operation update-task-set :shape-name
                                       "UpdateTaskSet" :input
                                       update-task-set-request :output
                                       update-task-set-response :errors
                                       (access-denied-exception
                                        client-exception
                                        cluster-not-found-exception
                                        invalid-parameter-exception
                                        server-exception
                                        service-not-active-exception
                                        service-not-found-exception
                                        task-set-not-found-exception
                                        unsupported-feature-exception))
