(uiop/package:define-package #:pira/batch (:use)
                             (:export #:awsbatch-v20160810
                              #:array-job-dependency #:array-job-status-summary
                              #:array-properties #:array-properties-detail
                              #:array-properties-summary #:assign-public-ip
                              #:attempt-container-detail #:attempt-detail
                              #:attempt-details #:attempt-ecs-task-details
                              #:attempt-task-container-details #:boolean
                              #:cestate #:cestatus #:cetype
                              #:crallocation-strategy #:crtype
                              #:crupdate-allocation-strategy #:cancel-job
                              #:capacity-limit #:capacity-limits
                              #:client-request-token
                              #:compute-environment-detail
                              #:compute-environment-detail-list
                              #:compute-environment-order
                              #:compute-environment-orders #:compute-resource
                              #:compute-resource-update
                              #:consumable-resource-list
                              #:consumable-resource-properties
                              #:consumable-resource-requirement
                              #:consumable-resource-summary
                              #:consumable-resource-summary-list
                              #:container-detail #:container-overrides
                              #:container-properties #:container-summary
                              #:create-compute-environment
                              #:create-consumable-resource #:create-job-queue
                              #:create-scheduling-policy
                              #:create-service-environment
                              #:delete-compute-environment
                              #:delete-consumable-resource #:delete-job-queue
                              #:delete-scheduling-policy
                              #:delete-service-environment
                              #:deregister-job-definition
                              #:describe-compute-environments
                              #:describe-consumable-resource
                              #:describe-job-definitions #:describe-job-queues
                              #:describe-jobs #:describe-scheduling-policies
                              #:describe-service-environments
                              #:describe-service-job #:device
                              #:device-cgroup-permission
                              #:device-cgroup-permissions #:devices-list
                              #:efsauthorization-config
                              #:efsauthorization-config-iam
                              #:efstransit-encryption #:efsvolume-configuration
                              #:ec2configuration #:ec2configuration-list
                              #:ecs-properties #:ecs-properties-detail
                              #:ecs-properties-override #:ecs-task-details
                              #:ecs-task-properties #:eks-annotations-map
                              #:eks-attempt-container-detail
                              #:eks-attempt-container-details
                              #:eks-attempt-detail #:eks-attempt-details
                              #:eks-configuration #:eks-container
                              #:eks-container-detail #:eks-container-details
                              #:eks-container-environment-variable
                              #:eks-container-environment-variables
                              #:eks-container-override
                              #:eks-container-override-list
                              #:eks-container-resource-requirements
                              #:eks-container-security-context
                              #:eks-container-volume-mount
                              #:eks-container-volume-mounts #:eks-containers
                              #:eks-empty-dir #:eks-host-path #:eks-labels-map
                              #:eks-limits #:eks-metadata
                              #:eks-persistent-volume-claim
                              #:eks-pod-properties #:eks-pod-properties-detail
                              #:eks-pod-properties-override #:eks-properties
                              #:eks-properties-detail #:eks-properties-override
                              #:eks-requests #:eks-secret #:eks-volume
                              #:eks-volumes #:environment-variables
                              #:ephemeral-storage #:evaluate-on-exit
                              #:evaluate-on-exit-list #:fairshare-policy
                              #:fargate-platform-configuration
                              #:firelens-configuration
                              #:firelens-configuration-options-map
                              #:firelens-configuration-type #:float
                              #:front-of-queue-detail
                              #:front-of-queue-job-summary
                              #:front-of-queue-job-summary-list
                              #:get-job-queue-snapshot #:host
                              #:image-id-override #:image-pull-secret
                              #:image-pull-secrets #:image-type #:integer
                              #:jqstate #:jqstatus #:job-definition
                              #:job-definition-list #:job-definition-type
                              #:job-dependency #:job-dependency-list
                              #:job-detail #:job-detail-list
                              #:job-execution-timeout-minutes
                              #:job-queue-detail #:job-queue-detail-list
                              #:job-queue-type #:job-state-time-limit-action
                              #:job-state-time-limit-actions
                              #:job-state-time-limit-actions-action
                              #:job-state-time-limit-actions-state #:job-status
                              #:job-summary #:job-summary-list #:job-timeout
                              #:key-value-pair #:key-values-pair
                              #:kubernetes-version #:latest-service-job-attempt
                              #:launch-template-specification
                              #:launch-template-specification-override
                              #:launch-template-specification-override-list
                              #:linux-parameters
                              #:list-attempt-ecs-task-details
                              #:list-attempt-task-container-details
                              #:list-consumable-resources
                              #:list-consumable-resources-filter-list
                              #:list-ecs-task-details
                              #:list-ecs-task-properties #:list-jobs
                              #:list-jobs-by-consumable-resource
                              #:list-jobs-by-consumable-resource-filter-list
                              #:list-jobs-by-consumable-resource-summary
                              #:list-jobs-by-consumable-resource-summary-list
                              #:list-jobs-filter-list
                              #:list-scheduling-policies #:list-service-jobs
                              #:list-tags-for-resource
                              #:list-task-container-details
                              #:list-task-container-overrides
                              #:list-task-container-properties
                              #:list-task-properties-override
                              #:log-configuration
                              #:log-configuration-options-map #:log-driver
                              #:long #:mount-point #:mount-points
                              #:network-configuration #:network-interface
                              #:network-interface-list #:node-details
                              #:node-overrides #:node-properties
                              #:node-properties-summary
                              #:node-property-override
                              #:node-property-overrides #:node-range-properties
                              #:node-range-property #:orchestration-type
                              #:parameters-map #:platform-capability
                              #:platform-capability-list #:quantity
                              #:register-job-definition
                              #:repository-credentials #:resource-requirement
                              #:resource-requirements #:resource-type
                              #:retry-action #:retry-strategy
                              #:runtime-platform #:scheduling-policy-detail
                              #:scheduling-policy-detail-list
                              #:scheduling-policy-listing-detail
                              #:scheduling-policy-listing-detail-list #:secret
                              #:secret-list #:service-environment-detail
                              #:service-environment-detail-list
                              #:service-environment-order
                              #:service-environment-orders
                              #:service-environment-state
                              #:service-environment-status
                              #:service-environment-type
                              #:service-job-attempt-detail
                              #:service-job-attempt-details
                              #:service-job-evaluate-on-exit
                              #:service-job-evaluate-on-exit-list
                              #:service-job-retry-action
                              #:service-job-retry-strategy #:service-job-status
                              #:service-job-summary #:service-job-summary-list
                              #:service-job-timeout #:service-job-type
                              #:service-resource-id #:service-resource-id-name
                              #:share-attributes #:share-attributes-list
                              #:string #:string-list #:submit-job
                              #:submit-service-job #:tag-key #:tag-keys-list
                              #:tag-resource #:tag-value #:tagris-tags-map
                              #:tags-map #:task-container-dependency
                              #:task-container-dependency-list
                              #:task-container-details
                              #:task-container-overrides
                              #:task-container-properties
                              #:task-properties-override #:terminate-job
                              #:terminate-service-job #:tmpfs #:tmpfs-list
                              #:ulimit #:ulimits #:untag-resource
                              #:update-compute-environment
                              #:update-consumable-resource #:update-job-queue
                              #:update-policy #:update-scheduling-policy
                              #:update-service-environment #:userdata-type
                              #:volume #:volumes))
(common-lisp:in-package #:pira/batch)

(smithy/sdk/service:define-service awsbatch-v20160810 :shape-name
                                   "AWSBatchV20160810" :version "2016-08-10"
                                   :title "AWS Batch" :xml-namespace
                                   '(:uri
                                     "http://batch.amazonaws.com/doc/2016-08-10/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "Batch")
                                      ("arnNamespace" . "batch")
                                      ("cloudFormationName" . "Batch")
                                      ("cloudTrailEventSource"
                                       . "batch.amazonaws.com")
                                      ("endpointPrefix" . "batch"))
                                     ("aws.auth#sigv4" ("name" . "batch"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-enum array-job-dependency
    common-lisp:nil
  (:n-to-n "N_TO_N")
  (:sequential "SEQUENTIAL"))

(smithy/sdk/shapes:define-map array-job-status-summary :key string :value
                              integer)

(smithy/sdk/shapes:define-structure array-properties common-lisp:nil
                                    ((size :target-type integer :member-name
                                      "size"))
                                    (:shape-name "ArrayProperties"))

(smithy/sdk/shapes:define-structure array-properties-detail common-lisp:nil
                                    ((status-summary :target-type
                                      array-job-status-summary :member-name
                                      "statusSummary")
                                     (size :target-type integer :member-name
                                      "size")
                                     (index :target-type integer :member-name
                                      "index"))
                                    (:shape-name "ArrayPropertiesDetail"))

(smithy/sdk/shapes:define-structure array-properties-summary common-lisp:nil
                                    ((size :target-type integer :member-name
                                      "size")
                                     (index :target-type integer :member-name
                                      "index"))
                                    (:shape-name "ArrayPropertiesSummary"))

(smithy/sdk/shapes:define-enum assign-public-ip
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure attempt-container-detail common-lisp:nil
                                    ((container-instance-arn :target-type
                                      string :member-name
                                      "containerInstanceArn")
                                     (task-arn :target-type string :member-name
                                      "taskArn")
                                     (exit-code :target-type integer
                                      :member-name "exitCode")
                                     (reason :target-type string :member-name
                                      "reason")
                                     (log-stream-name :target-type string
                                      :member-name "logStreamName")
                                     (network-interfaces :target-type
                                      network-interface-list :member-name
                                      "networkInterfaces"))
                                    (:shape-name "AttemptContainerDetail"))

(smithy/sdk/shapes:define-structure attempt-detail common-lisp:nil
                                    ((container :target-type
                                      attempt-container-detail :member-name
                                      "container")
                                     (started-at :target-type long :member-name
                                      "startedAt")
                                     (stopped-at :target-type long :member-name
                                      "stoppedAt")
                                     (status-reason :target-type string
                                      :member-name "statusReason")
                                     (task-properties :target-type
                                      list-attempt-ecs-task-details
                                      :member-name "taskProperties"))
                                    (:shape-name "AttemptDetail"))

(smithy/sdk/shapes:define-list attempt-details :member attempt-detail)

(smithy/sdk/shapes:define-structure attempt-ecs-task-details common-lisp:nil
                                    ((container-instance-arn :target-type
                                      string :member-name
                                      "containerInstanceArn")
                                     (task-arn :target-type string :member-name
                                      "taskArn")
                                     (containers :target-type
                                      list-attempt-task-container-details
                                      :member-name "containers"))
                                    (:shape-name "AttemptEcsTaskDetails"))

(smithy/sdk/shapes:define-structure attempt-task-container-details
                                    common-lisp:nil
                                    ((exit-code :target-type integer
                                      :member-name "exitCode")
                                     (name :target-type string :member-name
                                      "name")
                                     (reason :target-type string :member-name
                                      "reason")
                                     (log-stream-name :target-type string
                                      :member-name "logStreamName")
                                     (network-interfaces :target-type
                                      network-interface-list :member-name
                                      "networkInterfaces"))
                                    (:shape-name "AttemptTaskContainerDetails"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum cestate
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum cestatus
    common-lisp:nil
  (:creating "CREATING")
  (:updating "UPDATING")
  (:deleting "DELETING")
  (:deleted "DELETED")
  (:valid "VALID")
  (:invalid "INVALID"))

(smithy/sdk/shapes:define-enum cetype
    common-lisp:nil
  (:managed "MANAGED")
  (:unmanaged "UNMANAGED"))

(smithy/sdk/shapes:define-enum crallocation-strategy
    common-lisp:nil
  (:best-fit "BEST_FIT")
  (:best-fit-progressive "BEST_FIT_PROGRESSIVE")
  (:spot-capacity-optimized "SPOT_CAPACITY_OPTIMIZED")
  (:spot-price-capacity-optimized "SPOT_PRICE_CAPACITY_OPTIMIZED"))

(smithy/sdk/shapes:define-enum crtype
    common-lisp:nil
  (:ec2 "EC2")
  (:spot "SPOT")
  (:fargate "FARGATE")
  (:fargate-spot "FARGATE_SPOT"))

(smithy/sdk/shapes:define-enum crupdate-allocation-strategy
    common-lisp:nil
  (:best-fit-progressive "BEST_FIT_PROGRESSIVE")
  (:spot-capacity-optimized "SPOT_CAPACITY_OPTIMIZED")
  (:spot-price-capacity-optimized "SPOT_PRICE_CAPACITY_OPTIMIZED"))

(smithy/sdk/shapes:define-input cancel-job-request common-lisp:nil
                                ((job-id :target-type string :required
                                  common-lisp:t :member-name "jobId")
                                 (reason :target-type string :required
                                  common-lisp:t :member-name "reason"))
                                (:shape-name "CancelJobRequest"))

(smithy/sdk/shapes:define-output cancel-job-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CancelJobResponse"))

(smithy/sdk/shapes:define-structure capacity-limit common-lisp:nil
                                    ((max-capacity :target-type integer
                                      :member-name "maxCapacity")
                                     (capacity-unit :target-type string
                                      :member-name "capacityUnit"))
                                    (:shape-name "CapacityLimit"))

(smithy/sdk/shapes:define-list capacity-limits :member capacity-limit)

(smithy/sdk/shapes:define-error client-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ClientException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type client-request-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure compute-environment-detail common-lisp:nil
                                    ((compute-environment-name :target-type
                                      string :required common-lisp:t
                                      :member-name "computeEnvironmentName")
                                     (compute-environment-arn :target-type
                                      string :required common-lisp:t
                                      :member-name "computeEnvironmentArn")
                                     (unmanagedv-cpus :target-type integer
                                      :member-name "unmanagedvCpus")
                                     (ecs-cluster-arn :target-type string
                                      :member-name "ecsClusterArn")
                                     (tags :target-type tagris-tags-map
                                      :member-name "tags")
                                     (type :target-type cetype :member-name
                                      "type")
                                     (state :target-type cestate :member-name
                                      "state")
                                     (status :target-type cestatus :member-name
                                      "status")
                                     (status-reason :target-type string
                                      :member-name "statusReason")
                                     (compute-resources :target-type
                                      compute-resource :member-name
                                      "computeResources")
                                     (service-role :target-type string
                                      :member-name "serviceRole")
                                     (update-policy :target-type update-policy
                                      :member-name "updatePolicy")
                                     (eks-configuration :target-type
                                      eks-configuration :member-name
                                      "eksConfiguration")
                                     (container-orchestration-type :target-type
                                      orchestration-type :member-name
                                      "containerOrchestrationType")
                                     (uuid :target-type string :member-name
                                      "uuid")
                                     (context :target-type string :member-name
                                      "context"))
                                    (:shape-name "ComputeEnvironmentDetail"))

(smithy/sdk/shapes:define-list compute-environment-detail-list :member
                               compute-environment-detail)

(smithy/sdk/shapes:define-structure compute-environment-order common-lisp:nil
                                    ((order :target-type integer :required
                                      common-lisp:t :member-name "order")
                                     (compute-environment :target-type string
                                      :required common-lisp:t :member-name
                                      "computeEnvironment"))
                                    (:shape-name "ComputeEnvironmentOrder"))

(smithy/sdk/shapes:define-list compute-environment-orders :member
                               compute-environment-order)

(smithy/sdk/shapes:define-structure compute-resource common-lisp:nil
                                    ((type :target-type crtype :required
                                      common-lisp:t :member-name "type")
                                     (allocation-strategy :target-type
                                      crallocation-strategy :member-name
                                      "allocationStrategy")
                                     (minv-cpus :target-type integer
                                      :member-name "minvCpus")
                                     (maxv-cpus :target-type integer :required
                                      common-lisp:t :member-name "maxvCpus")
                                     (desiredv-cpus :target-type integer
                                      :member-name "desiredvCpus")
                                     (instance-types :target-type string-list
                                      :member-name "instanceTypes")
                                     (image-id :target-type string :member-name
                                      "imageId")
                                     (subnets :target-type string-list
                                      :required common-lisp:t :member-name
                                      "subnets")
                                     (security-group-ids :target-type
                                      string-list :member-name
                                      "securityGroupIds")
                                     (ec2key-pair :target-type string
                                      :member-name "ec2KeyPair")
                                     (instance-role :target-type string
                                      :member-name "instanceRole")
                                     (tags :target-type tags-map :member-name
                                      "tags")
                                     (placement-group :target-type string
                                      :member-name "placementGroup")
                                     (bid-percentage :target-type integer
                                      :member-name "bidPercentage")
                                     (spot-iam-fleet-role :target-type string
                                      :member-name "spotIamFleetRole")
                                     (launch-template :target-type
                                      launch-template-specification
                                      :member-name "launchTemplate")
                                     (ec2configuration :target-type
                                      ec2configuration-list :member-name
                                      "ec2Configuration"))
                                    (:shape-name "ComputeResource"))

(smithy/sdk/shapes:define-structure compute-resource-update common-lisp:nil
                                    ((minv-cpus :target-type integer
                                      :member-name "minvCpus")
                                     (maxv-cpus :target-type integer
                                      :member-name "maxvCpus")
                                     (desiredv-cpus :target-type integer
                                      :member-name "desiredvCpus")
                                     (subnets :target-type string-list
                                      :member-name "subnets")
                                     (security-group-ids :target-type
                                      string-list :member-name
                                      "securityGroupIds")
                                     (allocation-strategy :target-type
                                      crupdate-allocation-strategy :member-name
                                      "allocationStrategy")
                                     (instance-types :target-type string-list
                                      :member-name "instanceTypes")
                                     (ec2key-pair :target-type string
                                      :member-name "ec2KeyPair")
                                     (instance-role :target-type string
                                      :member-name "instanceRole")
                                     (tags :target-type tags-map :member-name
                                      "tags")
                                     (placement-group :target-type string
                                      :member-name "placementGroup")
                                     (bid-percentage :target-type integer
                                      :member-name "bidPercentage")
                                     (launch-template :target-type
                                      launch-template-specification
                                      :member-name "launchTemplate")
                                     (ec2configuration :target-type
                                      ec2configuration-list :member-name
                                      "ec2Configuration")
                                     (update-to-latest-image-version
                                      :target-type boolean :member-name
                                      "updateToLatestImageVersion")
                                     (type :target-type crtype :member-name
                                      "type")
                                     (image-id :target-type string :member-name
                                      "imageId"))
                                    (:shape-name "ComputeResourceUpdate"))

(smithy/sdk/shapes:define-list consumable-resource-list :member
                               consumable-resource-requirement)

(smithy/sdk/shapes:define-structure consumable-resource-properties
                                    common-lisp:nil
                                    ((consumable-resource-list :target-type
                                      consumable-resource-list :member-name
                                      "consumableResourceList"))
                                    (:shape-name
                                     "ConsumableResourceProperties"))

(smithy/sdk/shapes:define-structure consumable-resource-requirement
                                    common-lisp:nil
                                    ((consumable-resource :target-type string
                                      :member-name "consumableResource")
                                     (quantity :target-type long :member-name
                                      "quantity"))
                                    (:shape-name
                                     "ConsumableResourceRequirement"))

(smithy/sdk/shapes:define-structure consumable-resource-summary common-lisp:nil
                                    ((consumable-resource-arn :target-type
                                      string :required common-lisp:t
                                      :member-name "consumableResourceArn")
                                     (consumable-resource-name :target-type
                                      string :required common-lisp:t
                                      :member-name "consumableResourceName")
                                     (total-quantity :target-type long
                                      :member-name "totalQuantity")
                                     (in-use-quantity :target-type long
                                      :member-name "inUseQuantity")
                                     (resource-type :target-type string
                                      :member-name "resourceType"))
                                    (:shape-name "ConsumableResourceSummary"))

(smithy/sdk/shapes:define-list consumable-resource-summary-list :member
                               consumable-resource-summary)

(smithy/sdk/shapes:define-structure container-detail common-lisp:nil
                                    ((image :target-type string :member-name
                                      "image")
                                     (vcpus :target-type integer :member-name
                                      "vcpus")
                                     (memory :target-type integer :member-name
                                      "memory")
                                     (command :target-type string-list
                                      :member-name "command")
                                     (job-role-arn :target-type string
                                      :member-name "jobRoleArn")
                                     (execution-role-arn :target-type string
                                      :member-name "executionRoleArn")
                                     (volumes :target-type volumes :member-name
                                      "volumes")
                                     (environment :target-type
                                      environment-variables :member-name
                                      "environment")
                                     (mount-points :target-type mount-points
                                      :member-name "mountPoints")
                                     (readonly-root-filesystem :target-type
                                      boolean :member-name
                                      "readonlyRootFilesystem")
                                     (ulimits :target-type ulimits :member-name
                                      "ulimits")
                                     (privileged :target-type boolean
                                      :member-name "privileged")
                                     (user :target-type string :member-name
                                      "user")
                                     (exit-code :target-type integer
                                      :member-name "exitCode")
                                     (reason :target-type string :member-name
                                      "reason")
                                     (container-instance-arn :target-type
                                      string :member-name
                                      "containerInstanceArn")
                                     (task-arn :target-type string :member-name
                                      "taskArn")
                                     (log-stream-name :target-type string
                                      :member-name "logStreamName")
                                     (instance-type :target-type string
                                      :member-name "instanceType")
                                     (network-interfaces :target-type
                                      network-interface-list :member-name
                                      "networkInterfaces")
                                     (resource-requirements :target-type
                                      resource-requirements :member-name
                                      "resourceRequirements")
                                     (linux-parameters :target-type
                                      linux-parameters :member-name
                                      "linuxParameters")
                                     (log-configuration :target-type
                                      log-configuration :member-name
                                      "logConfiguration")
                                     (secrets :target-type secret-list
                                      :member-name "secrets")
                                     (network-configuration :target-type
                                      network-configuration :member-name
                                      "networkConfiguration")
                                     (fargate-platform-configuration
                                      :target-type
                                      fargate-platform-configuration
                                      :member-name
                                      "fargatePlatformConfiguration")
                                     (ephemeral-storage :target-type
                                      ephemeral-storage :member-name
                                      "ephemeralStorage")
                                     (runtime-platform :target-type
                                      runtime-platform :member-name
                                      "runtimePlatform")
                                     (repository-credentials :target-type
                                      repository-credentials :member-name
                                      "repositoryCredentials")
                                     (enable-execute-command :target-type
                                      boolean :member-name
                                      "enableExecuteCommand"))
                                    (:shape-name "ContainerDetail"))

(smithy/sdk/shapes:define-structure container-overrides common-lisp:nil
                                    ((vcpus :target-type integer :member-name
                                      "vcpus")
                                     (memory :target-type integer :member-name
                                      "memory")
                                     (command :target-type string-list
                                      :member-name "command")
                                     (instance-type :target-type string
                                      :member-name "instanceType")
                                     (environment :target-type
                                      environment-variables :member-name
                                      "environment")
                                     (resource-requirements :target-type
                                      resource-requirements :member-name
                                      "resourceRequirements"))
                                    (:shape-name "ContainerOverrides"))

(smithy/sdk/shapes:define-structure container-properties common-lisp:nil
                                    ((image :target-type string :member-name
                                      "image")
                                     (vcpus :target-type integer :member-name
                                      "vcpus")
                                     (memory :target-type integer :member-name
                                      "memory")
                                     (command :target-type string-list
                                      :member-name "command")
                                     (job-role-arn :target-type string
                                      :member-name "jobRoleArn")
                                     (execution-role-arn :target-type string
                                      :member-name "executionRoleArn")
                                     (volumes :target-type volumes :member-name
                                      "volumes")
                                     (environment :target-type
                                      environment-variables :member-name
                                      "environment")
                                     (mount-points :target-type mount-points
                                      :member-name "mountPoints")
                                     (readonly-root-filesystem :target-type
                                      boolean :member-name
                                      "readonlyRootFilesystem")
                                     (privileged :target-type boolean
                                      :member-name "privileged")
                                     (ulimits :target-type ulimits :member-name
                                      "ulimits")
                                     (user :target-type string :member-name
                                      "user")
                                     (instance-type :target-type string
                                      :member-name "instanceType")
                                     (resource-requirements :target-type
                                      resource-requirements :member-name
                                      "resourceRequirements")
                                     (linux-parameters :target-type
                                      linux-parameters :member-name
                                      "linuxParameters")
                                     (log-configuration :target-type
                                      log-configuration :member-name
                                      "logConfiguration")
                                     (secrets :target-type secret-list
                                      :member-name "secrets")
                                     (network-configuration :target-type
                                      network-configuration :member-name
                                      "networkConfiguration")
                                     (fargate-platform-configuration
                                      :target-type
                                      fargate-platform-configuration
                                      :member-name
                                      "fargatePlatformConfiguration")
                                     (enable-execute-command :target-type
                                      boolean :member-name
                                      "enableExecuteCommand")
                                     (ephemeral-storage :target-type
                                      ephemeral-storage :member-name
                                      "ephemeralStorage")
                                     (runtime-platform :target-type
                                      runtime-platform :member-name
                                      "runtimePlatform")
                                     (repository-credentials :target-type
                                      repository-credentials :member-name
                                      "repositoryCredentials"))
                                    (:shape-name "ContainerProperties"))

(smithy/sdk/shapes:define-structure container-summary common-lisp:nil
                                    ((exit-code :target-type integer
                                      :member-name "exitCode")
                                     (reason :target-type string :member-name
                                      "reason"))
                                    (:shape-name "ContainerSummary"))

(smithy/sdk/shapes:define-input create-compute-environment-request
                                common-lisp:nil
                                ((compute-environment-name :target-type string
                                  :required common-lisp:t :member-name
                                  "computeEnvironmentName")
                                 (type :target-type cetype :required
                                  common-lisp:t :member-name "type")
                                 (state :target-type cestate :member-name
                                  "state")
                                 (unmanagedv-cpus :target-type integer
                                  :member-name "unmanagedvCpus")
                                 (compute-resources :target-type
                                  compute-resource :member-name
                                  "computeResources")
                                 (service-role :target-type string :member-name
                                  "serviceRole")
                                 (tags :target-type tagris-tags-map
                                  :member-name "tags")
                                 (eks-configuration :target-type
                                  eks-configuration :member-name
                                  "eksConfiguration")
                                 (context :target-type string :member-name
                                  "context"))
                                (:shape-name "CreateComputeEnvironmentRequest"))

(smithy/sdk/shapes:define-output create-compute-environment-response
                                 common-lisp:nil
                                 ((compute-environment-name :target-type string
                                   :member-name "computeEnvironmentName")
                                  (compute-environment-arn :target-type string
                                   :member-name "computeEnvironmentArn"))
                                 (:shape-name
                                  "CreateComputeEnvironmentResponse"))

(smithy/sdk/shapes:define-input create-consumable-resource-request
                                common-lisp:nil
                                ((consumable-resource-name :target-type string
                                  :required common-lisp:t :member-name
                                  "consumableResourceName")
                                 (total-quantity :target-type long :member-name
                                  "totalQuantity")
                                 (resource-type :target-type string
                                  :member-name "resourceType")
                                 (tags :target-type tagris-tags-map
                                  :member-name "tags"))
                                (:shape-name "CreateConsumableResourceRequest"))

(smithy/sdk/shapes:define-output create-consumable-resource-response
                                 common-lisp:nil
                                 ((consumable-resource-name :target-type string
                                   :required common-lisp:t :member-name
                                   "consumableResourceName")
                                  (consumable-resource-arn :target-type string
                                   :required common-lisp:t :member-name
                                   "consumableResourceArn"))
                                 (:shape-name
                                  "CreateConsumableResourceResponse"))

(smithy/sdk/shapes:define-input create-job-queue-request common-lisp:nil
                                ((job-queue-name :target-type string :required
                                  common-lisp:t :member-name "jobQueueName")
                                 (state :target-type jqstate :member-name
                                  "state")
                                 (scheduling-policy-arn :target-type string
                                  :member-name "schedulingPolicyArn")
                                 (priority :target-type integer :required
                                  common-lisp:t :member-name "priority")
                                 (compute-environment-order :target-type
                                  compute-environment-orders :member-name
                                  "computeEnvironmentOrder")
                                 (service-environment-order :target-type
                                  service-environment-orders :member-name
                                  "serviceEnvironmentOrder")
                                 (job-queue-type :target-type job-queue-type
                                  :member-name "jobQueueType")
                                 (tags :target-type tagris-tags-map
                                  :member-name "tags")
                                 (job-state-time-limit-actions :target-type
                                  job-state-time-limit-actions :member-name
                                  "jobStateTimeLimitActions"))
                                (:shape-name "CreateJobQueueRequest"))

(smithy/sdk/shapes:define-output create-job-queue-response common-lisp:nil
                                 ((job-queue-name :target-type string :required
                                   common-lisp:t :member-name "jobQueueName")
                                  (job-queue-arn :target-type string :required
                                   common-lisp:t :member-name "jobQueueArn"))
                                 (:shape-name "CreateJobQueueResponse"))

(smithy/sdk/shapes:define-input create-scheduling-policy-request
                                common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "name")
                                 (fairshare-policy :target-type
                                  fairshare-policy :member-name
                                  "fairsharePolicy")
                                 (tags :target-type tagris-tags-map
                                  :member-name "tags"))
                                (:shape-name "CreateSchedulingPolicyRequest"))

(smithy/sdk/shapes:define-output create-scheduling-policy-response
                                 common-lisp:nil
                                 ((name :target-type string :required
                                   common-lisp:t :member-name "name")
                                  (arn :target-type string :required
                                   common-lisp:t :member-name "arn"))
                                 (:shape-name "CreateSchedulingPolicyResponse"))

(smithy/sdk/shapes:define-input create-service-environment-request
                                common-lisp:nil
                                ((service-environment-name :target-type string
                                  :required common-lisp:t :member-name
                                  "serviceEnvironmentName")
                                 (service-environment-type :target-type
                                  service-environment-type :required
                                  common-lisp:t :member-name
                                  "serviceEnvironmentType")
                                 (state :target-type service-environment-state
                                  :member-name "state")
                                 (capacity-limits :target-type capacity-limits
                                  :required common-lisp:t :member-name
                                  "capacityLimits")
                                 (tags :target-type tagris-tags-map
                                  :member-name "tags"))
                                (:shape-name "CreateServiceEnvironmentRequest"))

(smithy/sdk/shapes:define-output create-service-environment-response
                                 common-lisp:nil
                                 ((service-environment-name :target-type string
                                   :required common-lisp:t :member-name
                                   "serviceEnvironmentName")
                                  (service-environment-arn :target-type string
                                   :required common-lisp:t :member-name
                                   "serviceEnvironmentArn"))
                                 (:shape-name
                                  "CreateServiceEnvironmentResponse"))

(smithy/sdk/shapes:define-input delete-compute-environment-request
                                common-lisp:nil
                                ((compute-environment :target-type string
                                  :required common-lisp:t :member-name
                                  "computeEnvironment"))
                                (:shape-name "DeleteComputeEnvironmentRequest"))

(smithy/sdk/shapes:define-output delete-compute-environment-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteComputeEnvironmentResponse"))

(smithy/sdk/shapes:define-input delete-consumable-resource-request
                                common-lisp:nil
                                ((consumable-resource :target-type string
                                  :required common-lisp:t :member-name
                                  "consumableResource"))
                                (:shape-name "DeleteConsumableResourceRequest"))

(smithy/sdk/shapes:define-output delete-consumable-resource-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteConsumableResourceResponse"))

(smithy/sdk/shapes:define-input delete-job-queue-request common-lisp:nil
                                ((job-queue :target-type string :required
                                  common-lisp:t :member-name "jobQueue"))
                                (:shape-name "DeleteJobQueueRequest"))

(smithy/sdk/shapes:define-output delete-job-queue-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteJobQueueResponse"))

(smithy/sdk/shapes:define-input delete-scheduling-policy-request
                                common-lisp:nil
                                ((arn :target-type string :required
                                  common-lisp:t :member-name "arn"))
                                (:shape-name "DeleteSchedulingPolicyRequest"))

(smithy/sdk/shapes:define-output delete-scheduling-policy-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteSchedulingPolicyResponse"))

(smithy/sdk/shapes:define-input delete-service-environment-request
                                common-lisp:nil
                                ((service-environment :target-type string
                                  :required common-lisp:t :member-name
                                  "serviceEnvironment"))
                                (:shape-name "DeleteServiceEnvironmentRequest"))

(smithy/sdk/shapes:define-output delete-service-environment-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteServiceEnvironmentResponse"))

(smithy/sdk/shapes:define-input deregister-job-definition-request
                                common-lisp:nil
                                ((job-definition :target-type string :required
                                  common-lisp:t :member-name "jobDefinition"))
                                (:shape-name "DeregisterJobDefinitionRequest"))

(smithy/sdk/shapes:define-output deregister-job-definition-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeregisterJobDefinitionResponse"))

(smithy/sdk/shapes:define-input describe-compute-environments-request
                                common-lisp:nil
                                ((compute-environments :target-type string-list
                                  :member-name "computeEnvironments")
                                 (max-results :target-type integer :member-name
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken"))
                                (:shape-name
                                 "DescribeComputeEnvironmentsRequest"))

(smithy/sdk/shapes:define-output describe-compute-environments-response
                                 common-lisp:nil
                                 ((compute-environments :target-type
                                   compute-environment-detail-list :member-name
                                   "computeEnvironments")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "DescribeComputeEnvironmentsResponse"))

(smithy/sdk/shapes:define-input describe-consumable-resource-request
                                common-lisp:nil
                                ((consumable-resource :target-type string
                                  :required common-lisp:t :member-name
                                  "consumableResource"))
                                (:shape-name
                                 "DescribeConsumableResourceRequest"))

(smithy/sdk/shapes:define-output describe-consumable-resource-response
                                 common-lisp:nil
                                 ((consumable-resource-name :target-type string
                                   :required common-lisp:t :member-name
                                   "consumableResourceName")
                                  (consumable-resource-arn :target-type string
                                   :required common-lisp:t :member-name
                                   "consumableResourceArn")
                                  (total-quantity :target-type long
                                   :member-name "totalQuantity")
                                  (in-use-quantity :target-type long
                                   :member-name "inUseQuantity")
                                  (available-quantity :target-type long
                                   :member-name "availableQuantity")
                                  (resource-type :target-type string
                                   :member-name "resourceType")
                                  (created-at :target-type long :member-name
                                   "createdAt")
                                  (tags :target-type tagris-tags-map
                                   :member-name "tags"))
                                 (:shape-name
                                  "DescribeConsumableResourceResponse"))

(smithy/sdk/shapes:define-input describe-job-definitions-request
                                common-lisp:nil
                                ((job-definitions :target-type string-list
                                  :member-name "jobDefinitions")
                                 (max-results :target-type integer :member-name
                                  "maxResults")
                                 (job-definition-name :target-type string
                                  :member-name "jobDefinitionName")
                                 (status :target-type string :member-name
                                  "status")
                                 (next-token :target-type string :member-name
                                  "nextToken"))
                                (:shape-name "DescribeJobDefinitionsRequest"))

(smithy/sdk/shapes:define-output describe-job-definitions-response
                                 common-lisp:nil
                                 ((job-definitions :target-type
                                   job-definition-list :member-name
                                   "jobDefinitions")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "DescribeJobDefinitionsResponse"))

(smithy/sdk/shapes:define-input describe-job-queues-request common-lisp:nil
                                ((job-queues :target-type string-list
                                  :member-name "jobQueues")
                                 (max-results :target-type integer :member-name
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken"))
                                (:shape-name "DescribeJobQueuesRequest"))

(smithy/sdk/shapes:define-output describe-job-queues-response common-lisp:nil
                                 ((job-queues :target-type
                                   job-queue-detail-list :member-name
                                   "jobQueues")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "DescribeJobQueuesResponse"))

(smithy/sdk/shapes:define-input describe-jobs-request common-lisp:nil
                                ((jobs :target-type string-list :required
                                  common-lisp:t :member-name "jobs"))
                                (:shape-name "DescribeJobsRequest"))

(smithy/sdk/shapes:define-output describe-jobs-response common-lisp:nil
                                 ((jobs :target-type job-detail-list
                                   :member-name "jobs"))
                                 (:shape-name "DescribeJobsResponse"))

(smithy/sdk/shapes:define-input describe-scheduling-policies-request
                                common-lisp:nil
                                ((arns :target-type string-list :required
                                  common-lisp:t :member-name "arns"))
                                (:shape-name
                                 "DescribeSchedulingPoliciesRequest"))

(smithy/sdk/shapes:define-output describe-scheduling-policies-response
                                 common-lisp:nil
                                 ((scheduling-policies :target-type
                                   scheduling-policy-detail-list :member-name
                                   "schedulingPolicies"))
                                 (:shape-name
                                  "DescribeSchedulingPoliciesResponse"))

(smithy/sdk/shapes:define-input describe-service-environments-request
                                common-lisp:nil
                                ((service-environments :target-type string-list
                                  :member-name "serviceEnvironments")
                                 (max-results :target-type integer :member-name
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken"))
                                (:shape-name
                                 "DescribeServiceEnvironmentsRequest"))

(smithy/sdk/shapes:define-output describe-service-environments-response
                                 common-lisp:nil
                                 ((service-environments :target-type
                                   service-environment-detail-list :member-name
                                   "serviceEnvironments")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "DescribeServiceEnvironmentsResponse"))

(smithy/sdk/shapes:define-input describe-service-job-request common-lisp:nil
                                ((job-id :target-type string :required
                                  common-lisp:t :member-name "jobId"))
                                (:shape-name "DescribeServiceJobRequest"))

(smithy/sdk/shapes:define-output describe-service-job-response common-lisp:nil
                                 ((attempts :target-type
                                   service-job-attempt-details :member-name
                                   "attempts")
                                  (created-at :target-type long :member-name
                                   "createdAt")
                                  (is-terminated :target-type boolean
                                   :member-name "isTerminated")
                                  (job-arn :target-type string :member-name
                                   "jobArn")
                                  (job-id :target-type string :required
                                   common-lisp:t :member-name "jobId")
                                  (job-name :target-type string :required
                                   common-lisp:t :member-name "jobName")
                                  (job-queue :target-type string :required
                                   common-lisp:t :member-name "jobQueue")
                                  (latest-attempt :target-type
                                   latest-service-job-attempt :member-name
                                   "latestAttempt")
                                  (retry-strategy :target-type
                                   service-job-retry-strategy :member-name
                                   "retryStrategy")
                                  (scheduling-priority :target-type integer
                                   :member-name "schedulingPriority")
                                  (service-request-payload :target-type string
                                   :member-name "serviceRequestPayload")
                                  (service-job-type :target-type
                                   service-job-type :required common-lisp:t
                                   :member-name "serviceJobType")
                                  (share-identifier :target-type string
                                   :member-name "shareIdentifier")
                                  (started-at :target-type long :required
                                   common-lisp:t :member-name "startedAt")
                                  (status :target-type service-job-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (status-reason :target-type string
                                   :member-name "statusReason")
                                  (stopped-at :target-type long :member-name
                                   "stoppedAt")
                                  (tags :target-type tagris-tags-map
                                   :member-name "tags")
                                  (timeout-config :target-type
                                   service-job-timeout :member-name
                                   "timeoutConfig"))
                                 (:shape-name "DescribeServiceJobResponse"))

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
  (:read "READ")
  (:write "WRITE")
  (:mknod "MKNOD"))

(smithy/sdk/shapes:define-list device-cgroup-permissions :member
                               device-cgroup-permission)

(smithy/sdk/shapes:define-list devices-list :member device)

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
                                      integer :member-name
                                      "transitEncryptionPort")
                                     (authorization-config :target-type
                                      efsauthorization-config :member-name
                                      "authorizationConfig"))
                                    (:shape-name "EFSVolumeConfiguration"))

(smithy/sdk/shapes:define-structure ec2configuration common-lisp:nil
                                    ((image-type :target-type image-type
                                      :required common-lisp:t :member-name
                                      "imageType")
                                     (image-id-override :target-type
                                      image-id-override :member-name
                                      "imageIdOverride")
                                     (image-kubernetes-version :target-type
                                      kubernetes-version :member-name
                                      "imageKubernetesVersion"))
                                    (:shape-name "Ec2Configuration"))

(smithy/sdk/shapes:define-list ec2configuration-list :member ec2configuration)

(smithy/sdk/shapes:define-structure ecs-properties common-lisp:nil
                                    ((task-properties :target-type
                                      list-ecs-task-properties :required
                                      common-lisp:t :member-name
                                      "taskProperties"))
                                    (:shape-name "EcsProperties"))

(smithy/sdk/shapes:define-structure ecs-properties-detail common-lisp:nil
                                    ((task-properties :target-type
                                      list-ecs-task-details :member-name
                                      "taskProperties"))
                                    (:shape-name "EcsPropertiesDetail"))

(smithy/sdk/shapes:define-structure ecs-properties-override common-lisp:nil
                                    ((task-properties :target-type
                                      list-task-properties-override
                                      :member-name "taskProperties"))
                                    (:shape-name "EcsPropertiesOverride"))

(smithy/sdk/shapes:define-structure ecs-task-details common-lisp:nil
                                    ((containers :target-type
                                      list-task-container-details :member-name
                                      "containers")
                                     (container-instance-arn :target-type
                                      string :member-name
                                      "containerInstanceArn")
                                     (task-arn :target-type string :member-name
                                      "taskArn")
                                     (ephemeral-storage :target-type
                                      ephemeral-storage :member-name
                                      "ephemeralStorage")
                                     (execution-role-arn :target-type string
                                      :member-name "executionRoleArn")
                                     (platform-version :target-type string
                                      :member-name "platformVersion")
                                     (ipc-mode :target-type string :member-name
                                      "ipcMode")
                                     (task-role-arn :target-type string
                                      :member-name "taskRoleArn")
                                     (pid-mode :target-type string :member-name
                                      "pidMode")
                                     (network-configuration :target-type
                                      network-configuration :member-name
                                      "networkConfiguration")
                                     (runtime-platform :target-type
                                      runtime-platform :member-name
                                      "runtimePlatform")
                                     (volumes :target-type volumes :member-name
                                      "volumes")
                                     (enable-execute-command :target-type
                                      boolean :member-name
                                      "enableExecuteCommand"))
                                    (:shape-name "EcsTaskDetails"))

(smithy/sdk/shapes:define-structure ecs-task-properties common-lisp:nil
                                    ((containers :target-type
                                      list-task-container-properties :required
                                      common-lisp:t :member-name "containers")
                                     (ephemeral-storage :target-type
                                      ephemeral-storage :member-name
                                      "ephemeralStorage")
                                     (execution-role-arn :target-type string
                                      :member-name "executionRoleArn")
                                     (platform-version :target-type string
                                      :member-name "platformVersion")
                                     (ipc-mode :target-type string :member-name
                                      "ipcMode")
                                     (task-role-arn :target-type string
                                      :member-name "taskRoleArn")
                                     (pid-mode :target-type string :member-name
                                      "pidMode")
                                     (network-configuration :target-type
                                      network-configuration :member-name
                                      "networkConfiguration")
                                     (runtime-platform :target-type
                                      runtime-platform :member-name
                                      "runtimePlatform")
                                     (volumes :target-type volumes :member-name
                                      "volumes")
                                     (enable-execute-command :target-type
                                      boolean :member-name
                                      "enableExecuteCommand"))
                                    (:shape-name "EcsTaskProperties"))

(smithy/sdk/shapes:define-map eks-annotations-map :key string :value string)

(smithy/sdk/shapes:define-structure eks-attempt-container-detail
                                    common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (container-id :target-type string
                                      :member-name "containerID")
                                     (exit-code :target-type integer
                                      :member-name "exitCode")
                                     (reason :target-type string :member-name
                                      "reason"))
                                    (:shape-name "EksAttemptContainerDetail"))

(smithy/sdk/shapes:define-list eks-attempt-container-details :member
                               eks-attempt-container-detail)

(smithy/sdk/shapes:define-structure eks-attempt-detail common-lisp:nil
                                    ((containers :target-type
                                      eks-attempt-container-details
                                      :member-name "containers")
                                     (init-containers :target-type
                                      eks-attempt-container-details
                                      :member-name "initContainers")
                                     (eks-cluster-arn :target-type string
                                      :member-name "eksClusterArn")
                                     (pod-name :target-type string :member-name
                                      "podName")
                                     (pod-namespace :target-type string
                                      :member-name "podNamespace")
                                     (node-name :target-type string
                                      :member-name "nodeName")
                                     (started-at :target-type long :member-name
                                      "startedAt")
                                     (stopped-at :target-type long :member-name
                                      "stoppedAt")
                                     (status-reason :target-type string
                                      :member-name "statusReason"))
                                    (:shape-name "EksAttemptDetail"))

(smithy/sdk/shapes:define-list eks-attempt-details :member eks-attempt-detail)

(smithy/sdk/shapes:define-structure eks-configuration common-lisp:nil
                                    ((eks-cluster-arn :target-type string
                                      :required common-lisp:t :member-name
                                      "eksClusterArn")
                                     (kubernetes-namespace :target-type string
                                      :required common-lisp:t :member-name
                                      "kubernetesNamespace"))
                                    (:shape-name "EksConfiguration"))

(smithy/sdk/shapes:define-structure eks-container common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (image :target-type string :required
                                      common-lisp:t :member-name "image")
                                     (image-pull-policy :target-type string
                                      :member-name "imagePullPolicy")
                                     (command :target-type string-list
                                      :member-name "command")
                                     (args :target-type string-list
                                      :member-name "args")
                                     (env :target-type
                                      eks-container-environment-variables
                                      :member-name "env")
                                     (resources :target-type
                                      eks-container-resource-requirements
                                      :member-name "resources")
                                     (volume-mounts :target-type
                                      eks-container-volume-mounts :member-name
                                      "volumeMounts")
                                     (security-context :target-type
                                      eks-container-security-context
                                      :member-name "securityContext"))
                                    (:shape-name "EksContainer"))

(smithy/sdk/shapes:define-structure eks-container-detail common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (image :target-type string :member-name
                                      "image")
                                     (image-pull-policy :target-type string
                                      :member-name "imagePullPolicy")
                                     (command :target-type string-list
                                      :member-name "command")
                                     (args :target-type string-list
                                      :member-name "args")
                                     (env :target-type
                                      eks-container-environment-variables
                                      :member-name "env")
                                     (resources :target-type
                                      eks-container-resource-requirements
                                      :member-name "resources")
                                     (exit-code :target-type integer
                                      :member-name "exitCode")
                                     (reason :target-type string :member-name
                                      "reason")
                                     (volume-mounts :target-type
                                      eks-container-volume-mounts :member-name
                                      "volumeMounts")
                                     (security-context :target-type
                                      eks-container-security-context
                                      :member-name "securityContext"))
                                    (:shape-name "EksContainerDetail"))

(smithy/sdk/shapes:define-list eks-container-details :member
                               eks-container-detail)

(smithy/sdk/shapes:define-structure eks-container-environment-variable
                                    common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "name")
                                     (value :target-type string :member-name
                                      "value"))
                                    (:shape-name
                                     "EksContainerEnvironmentVariable"))

(smithy/sdk/shapes:define-list eks-container-environment-variables :member
                               eks-container-environment-variable)

(smithy/sdk/shapes:define-structure eks-container-override common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (image :target-type string :member-name
                                      "image")
                                     (command :target-type string-list
                                      :member-name "command")
                                     (args :target-type string-list
                                      :member-name "args")
                                     (env :target-type
                                      eks-container-environment-variables
                                      :member-name "env")
                                     (resources :target-type
                                      eks-container-resource-requirements
                                      :member-name "resources"))
                                    (:shape-name "EksContainerOverride"))

(smithy/sdk/shapes:define-list eks-container-override-list :member
                               eks-container-override)

(smithy/sdk/shapes:define-structure eks-container-resource-requirements
                                    common-lisp:nil
                                    ((limits :target-type eks-limits
                                      :member-name "limits")
                                     (requests :target-type eks-requests
                                      :member-name "requests"))
                                    (:shape-name
                                     "EksContainerResourceRequirements"))

(smithy/sdk/shapes:define-structure eks-container-security-context
                                    common-lisp:nil
                                    ((run-as-user :target-type long
                                      :member-name "runAsUser")
                                     (run-as-group :target-type long
                                      :member-name "runAsGroup")
                                     (privileged :target-type boolean
                                      :member-name "privileged")
                                     (allow-privilege-escalation :target-type
                                      boolean :member-name
                                      "allowPrivilegeEscalation")
                                     (read-only-root-filesystem :target-type
                                      boolean :member-name
                                      "readOnlyRootFilesystem")
                                     (run-as-non-root :target-type boolean
                                      :member-name "runAsNonRoot"))
                                    (:shape-name "EksContainerSecurityContext"))

(smithy/sdk/shapes:define-structure eks-container-volume-mount common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (mount-path :target-type string
                                      :member-name "mountPath")
                                     (sub-path :target-type string :member-name
                                      "subPath")
                                     (read-only :target-type boolean
                                      :member-name "readOnly"))
                                    (:shape-name "EksContainerVolumeMount"))

(smithy/sdk/shapes:define-list eks-container-volume-mounts :member
                               eks-container-volume-mount)

(smithy/sdk/shapes:define-list eks-containers :member eks-container)

(smithy/sdk/shapes:define-structure eks-empty-dir common-lisp:nil
                                    ((medium :target-type string :member-name
                                      "medium")
                                     (size-limit :target-type quantity
                                      :member-name "sizeLimit"))
                                    (:shape-name "EksEmptyDir"))

(smithy/sdk/shapes:define-structure eks-host-path common-lisp:nil
                                    ((path :target-type string :member-name
                                      "path"))
                                    (:shape-name "EksHostPath"))

(smithy/sdk/shapes:define-map eks-labels-map :key string :value string)

(smithy/sdk/shapes:define-map eks-limits :key string :value quantity)

(smithy/sdk/shapes:define-structure eks-metadata common-lisp:nil
                                    ((labels :target-type eks-labels-map
                                      :member-name "labels")
                                     (annotations :target-type
                                      eks-annotations-map :member-name
                                      "annotations")
                                     (namespace :target-type string
                                      :member-name "namespace"))
                                    (:shape-name "EksMetadata"))

(smithy/sdk/shapes:define-structure eks-persistent-volume-claim common-lisp:nil
                                    ((claim-name :target-type string :required
                                      common-lisp:t :member-name "claimName")
                                     (read-only :target-type boolean
                                      :member-name "readOnly"))
                                    (:shape-name "EksPersistentVolumeClaim"))

(smithy/sdk/shapes:define-structure eks-pod-properties common-lisp:nil
                                    ((service-account-name :target-type string
                                      :member-name "serviceAccountName")
                                     (host-network :target-type boolean
                                      :member-name "hostNetwork")
                                     (dns-policy :target-type string
                                      :member-name "dnsPolicy")
                                     (image-pull-secrets :target-type
                                      image-pull-secrets :member-name
                                      "imagePullSecrets")
                                     (containers :target-type eks-containers
                                      :member-name "containers")
                                     (init-containers :target-type
                                      eks-containers :member-name
                                      "initContainers")
                                     (volumes :target-type eks-volumes
                                      :member-name "volumes")
                                     (metadata :target-type eks-metadata
                                      :member-name "metadata")
                                     (share-process-namespace :target-type
                                      boolean :member-name
                                      "shareProcessNamespace"))
                                    (:shape-name "EksPodProperties"))

(smithy/sdk/shapes:define-structure eks-pod-properties-detail common-lisp:nil
                                    ((service-account-name :target-type string
                                      :member-name "serviceAccountName")
                                     (host-network :target-type boolean
                                      :member-name "hostNetwork")
                                     (dns-policy :target-type string
                                      :member-name "dnsPolicy")
                                     (image-pull-secrets :target-type
                                      image-pull-secrets :member-name
                                      "imagePullSecrets")
                                     (containers :target-type
                                      eks-container-details :member-name
                                      "containers")
                                     (init-containers :target-type
                                      eks-container-details :member-name
                                      "initContainers")
                                     (volumes :target-type eks-volumes
                                      :member-name "volumes")
                                     (pod-name :target-type string :member-name
                                      "podName")
                                     (node-name :target-type string
                                      :member-name "nodeName")
                                     (metadata :target-type eks-metadata
                                      :member-name "metadata")
                                     (share-process-namespace :target-type
                                      boolean :member-name
                                      "shareProcessNamespace"))
                                    (:shape-name "EksPodPropertiesDetail"))

(smithy/sdk/shapes:define-structure eks-pod-properties-override common-lisp:nil
                                    ((containers :target-type
                                      eks-container-override-list :member-name
                                      "containers")
                                     (init-containers :target-type
                                      eks-container-override-list :member-name
                                      "initContainers")
                                     (metadata :target-type eks-metadata
                                      :member-name "metadata"))
                                    (:shape-name "EksPodPropertiesOverride"))

(smithy/sdk/shapes:define-structure eks-properties common-lisp:nil
                                    ((pod-properties :target-type
                                      eks-pod-properties :member-name
                                      "podProperties"))
                                    (:shape-name "EksProperties"))

(smithy/sdk/shapes:define-structure eks-properties-detail common-lisp:nil
                                    ((pod-properties :target-type
                                      eks-pod-properties-detail :member-name
                                      "podProperties"))
                                    (:shape-name "EksPropertiesDetail"))

(smithy/sdk/shapes:define-structure eks-properties-override common-lisp:nil
                                    ((pod-properties :target-type
                                      eks-pod-properties-override :member-name
                                      "podProperties"))
                                    (:shape-name "EksPropertiesOverride"))

(smithy/sdk/shapes:define-map eks-requests :key string :value quantity)

(smithy/sdk/shapes:define-structure eks-secret common-lisp:nil
                                    ((secret-name :target-type string :required
                                      common-lisp:t :member-name "secretName")
                                     (optional :target-type boolean
                                      :member-name "optional"))
                                    (:shape-name "EksSecret"))

(smithy/sdk/shapes:define-structure eks-volume common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "name")
                                     (host-path :target-type eks-host-path
                                      :member-name "hostPath")
                                     (empty-dir :target-type eks-empty-dir
                                      :member-name "emptyDir")
                                     (secret :target-type eks-secret
                                      :member-name "secret")
                                     (persistent-volume-claim :target-type
                                      eks-persistent-volume-claim :member-name
                                      "persistentVolumeClaim"))
                                    (:shape-name "EksVolume"))

(smithy/sdk/shapes:define-list eks-volumes :member eks-volume)

(smithy/sdk/shapes:define-list environment-variables :member key-value-pair)

(smithy/sdk/shapes:define-structure ephemeral-storage common-lisp:nil
                                    ((size-in-gi-b :target-type integer
                                      :required common-lisp:t :member-name
                                      "sizeInGiB"))
                                    (:shape-name "EphemeralStorage"))

(smithy/sdk/shapes:define-structure evaluate-on-exit common-lisp:nil
                                    ((on-status-reason :target-type string
                                      :member-name "onStatusReason")
                                     (on-reason :target-type string
                                      :member-name "onReason")
                                     (on-exit-code :target-type string
                                      :member-name "onExitCode")
                                     (action :target-type retry-action
                                      :required common-lisp:t :member-name
                                      "action"))
                                    (:shape-name "EvaluateOnExit"))

(smithy/sdk/shapes:define-list evaluate-on-exit-list :member evaluate-on-exit)

(smithy/sdk/shapes:define-structure fairshare-policy common-lisp:nil
                                    ((share-decay-seconds :target-type integer
                                      :member-name "shareDecaySeconds")
                                     (compute-reservation :target-type integer
                                      :member-name "computeReservation")
                                     (share-distribution :target-type
                                      share-attributes-list :member-name
                                      "shareDistribution"))
                                    (:shape-name "FairsharePolicy"))

(smithy/sdk/shapes:define-structure fargate-platform-configuration
                                    common-lisp:nil
                                    ((platform-version :target-type string
                                      :member-name "platformVersion"))
                                    (:shape-name
                                     "FargatePlatformConfiguration"))

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

(smithy/sdk/shapes:define-type float smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-structure front-of-queue-detail common-lisp:nil
                                    ((jobs :target-type
                                      front-of-queue-job-summary-list
                                      :member-name "jobs")
                                     (last-updated-at :target-type long
                                      :member-name "lastUpdatedAt"))
                                    (:shape-name "FrontOfQueueDetail"))

(smithy/sdk/shapes:define-structure front-of-queue-job-summary common-lisp:nil
                                    ((job-arn :target-type string :member-name
                                      "jobArn")
                                     (earliest-time-at-position :target-type
                                      long :member-name
                                      "earliestTimeAtPosition"))
                                    (:shape-name "FrontOfQueueJobSummary"))

(smithy/sdk/shapes:define-list front-of-queue-job-summary-list :member
                               front-of-queue-job-summary)

(smithy/sdk/shapes:define-input get-job-queue-snapshot-request common-lisp:nil
                                ((job-queue :target-type string :required
                                  common-lisp:t :member-name "jobQueue"))
                                (:shape-name "GetJobQueueSnapshotRequest"))

(smithy/sdk/shapes:define-output get-job-queue-snapshot-response
                                 common-lisp:nil
                                 ((front-of-queue :target-type
                                   front-of-queue-detail :member-name
                                   "frontOfQueue"))
                                 (:shape-name "GetJobQueueSnapshotResponse"))

(smithy/sdk/shapes:define-structure host common-lisp:nil
                                    ((source-path :target-type string
                                      :member-name "sourcePath"))
                                    (:shape-name "Host"))

(smithy/sdk/shapes:define-type image-id-override smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure image-pull-secret common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "ImagePullSecret"))

(smithy/sdk/shapes:define-list image-pull-secrets :member image-pull-secret)

(smithy/sdk/shapes:define-type image-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum jqstate
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum jqstatus
    common-lisp:nil
  (:creating "CREATING")
  (:updating "UPDATING")
  (:deleting "DELETING")
  (:deleted "DELETED")
  (:valid "VALID")
  (:invalid "INVALID"))

(smithy/sdk/shapes:define-structure job-definition common-lisp:nil
                                    ((job-definition-name :target-type string
                                      :required common-lisp:t :member-name
                                      "jobDefinitionName")
                                     (job-definition-arn :target-type string
                                      :required common-lisp:t :member-name
                                      "jobDefinitionArn")
                                     (revision :target-type integer :required
                                      common-lisp:t :member-name "revision")
                                     (status :target-type string :member-name
                                      "status")
                                     (type :target-type string :required
                                      common-lisp:t :member-name "type")
                                     (scheduling-priority :target-type integer
                                      :member-name "schedulingPriority")
                                     (parameters :target-type parameters-map
                                      :member-name "parameters")
                                     (retry-strategy :target-type
                                      retry-strategy :member-name
                                      "retryStrategy")
                                     (container-properties :target-type
                                      container-properties :member-name
                                      "containerProperties")
                                     (timeout :target-type job-timeout
                                      :member-name "timeout")
                                     (node-properties :target-type
                                      node-properties :member-name
                                      "nodeProperties")
                                     (tags :target-type tagris-tags-map
                                      :member-name "tags")
                                     (propagate-tags :target-type boolean
                                      :member-name "propagateTags")
                                     (platform-capabilities :target-type
                                      platform-capability-list :member-name
                                      "platformCapabilities")
                                     (ecs-properties :target-type
                                      ecs-properties :member-name
                                      "ecsProperties")
                                     (eks-properties :target-type
                                      eks-properties :member-name
                                      "eksProperties")
                                     (container-orchestration-type :target-type
                                      orchestration-type :member-name
                                      "containerOrchestrationType")
                                     (consumable-resource-properties
                                      :target-type
                                      consumable-resource-properties
                                      :member-name
                                      "consumableResourceProperties"))
                                    (:shape-name "JobDefinition"))

(smithy/sdk/shapes:define-list job-definition-list :member job-definition)

(smithy/sdk/shapes:define-enum job-definition-type
    common-lisp:nil
  (:container "container")
  (:multinode "multinode"))

(smithy/sdk/shapes:define-structure job-dependency common-lisp:nil
                                    ((job-id :target-type string :member-name
                                      "jobId")
                                     (type :target-type array-job-dependency
                                      :member-name "type"))
                                    (:shape-name "JobDependency"))

(smithy/sdk/shapes:define-list job-dependency-list :member job-dependency)

(smithy/sdk/shapes:define-structure job-detail common-lisp:nil
                                    ((job-arn :target-type string :member-name
                                      "jobArn")
                                     (job-name :target-type string :required
                                      common-lisp:t :member-name "jobName")
                                     (job-id :target-type string :required
                                      common-lisp:t :member-name "jobId")
                                     (job-queue :target-type string :required
                                      common-lisp:t :member-name "jobQueue")
                                     (status :target-type job-status :required
                                      common-lisp:t :member-name "status")
                                     (share-identifier :target-type string
                                      :member-name "shareIdentifier")
                                     (scheduling-priority :target-type integer
                                      :member-name "schedulingPriority")
                                     (attempts :target-type attempt-details
                                      :member-name "attempts")
                                     (status-reason :target-type string
                                      :member-name "statusReason")
                                     (created-at :target-type long :member-name
                                      "createdAt")
                                     (retry-strategy :target-type
                                      retry-strategy :member-name
                                      "retryStrategy")
                                     (started-at :target-type long :required
                                      common-lisp:t :member-name "startedAt")
                                     (stopped-at :target-type long :member-name
                                      "stoppedAt")
                                     (depends-on :target-type
                                      job-dependency-list :member-name
                                      "dependsOn")
                                     (job-definition :target-type string
                                      :required common-lisp:t :member-name
                                      "jobDefinition")
                                     (parameters :target-type parameters-map
                                      :member-name "parameters")
                                     (container :target-type container-detail
                                      :member-name "container")
                                     (node-details :target-type node-details
                                      :member-name "nodeDetails")
                                     (node-properties :target-type
                                      node-properties :member-name
                                      "nodeProperties")
                                     (array-properties :target-type
                                      array-properties-detail :member-name
                                      "arrayProperties")
                                     (timeout :target-type job-timeout
                                      :member-name "timeout")
                                     (tags :target-type tagris-tags-map
                                      :member-name "tags")
                                     (propagate-tags :target-type boolean
                                      :member-name "propagateTags")
                                     (platform-capabilities :target-type
                                      platform-capability-list :member-name
                                      "platformCapabilities")
                                     (eks-properties :target-type
                                      eks-properties-detail :member-name
                                      "eksProperties")
                                     (eks-attempts :target-type
                                      eks-attempt-details :member-name
                                      "eksAttempts")
                                     (ecs-properties :target-type
                                      ecs-properties-detail :member-name
                                      "ecsProperties")
                                     (is-cancelled :target-type boolean
                                      :member-name "isCancelled")
                                     (is-terminated :target-type boolean
                                      :member-name "isTerminated")
                                     (consumable-resource-properties
                                      :target-type
                                      consumable-resource-properties
                                      :member-name
                                      "consumableResourceProperties"))
                                    (:shape-name "JobDetail"))

(smithy/sdk/shapes:define-list job-detail-list :member job-detail)

(smithy/sdk/shapes:define-type job-execution-timeout-minutes
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure job-queue-detail common-lisp:nil
                                    ((job-queue-name :target-type string
                                      :required common-lisp:t :member-name
                                      "jobQueueName")
                                     (job-queue-arn :target-type string
                                      :required common-lisp:t :member-name
                                      "jobQueueArn")
                                     (state :target-type jqstate :required
                                      common-lisp:t :member-name "state")
                                     (scheduling-policy-arn :target-type string
                                      :member-name "schedulingPolicyArn")
                                     (status :target-type jqstatus :member-name
                                      "status")
                                     (status-reason :target-type string
                                      :member-name "statusReason")
                                     (priority :target-type integer :required
                                      common-lisp:t :member-name "priority")
                                     (compute-environment-order :target-type
                                      compute-environment-orders :required
                                      common-lisp:t :member-name
                                      "computeEnvironmentOrder")
                                     (service-environment-order :target-type
                                      service-environment-orders :member-name
                                      "serviceEnvironmentOrder")
                                     (job-queue-type :target-type
                                      job-queue-type :member-name
                                      "jobQueueType")
                                     (tags :target-type tagris-tags-map
                                      :member-name "tags")
                                     (job-state-time-limit-actions :target-type
                                      job-state-time-limit-actions :member-name
                                      "jobStateTimeLimitActions"))
                                    (:shape-name "JobQueueDetail"))

(smithy/sdk/shapes:define-list job-queue-detail-list :member job-queue-detail)

(smithy/sdk/shapes:define-enum job-queue-type
    common-lisp:nil
  (:eks "EKS")
  (:ecs "ECS")
  (:ecs-fargate "ECS_FARGATE")
  (:sagemaker-training "SAGEMAKER_TRAINING"))

(smithy/sdk/shapes:define-structure job-state-time-limit-action common-lisp:nil
                                    ((reason :target-type string :required
                                      common-lisp:t :member-name "reason")
                                     (state :target-type
                                      job-state-time-limit-actions-state
                                      :required common-lisp:t :member-name
                                      "state")
                                     (max-time-seconds :target-type integer
                                      :required common-lisp:t :member-name
                                      "maxTimeSeconds")
                                     (action :target-type
                                      job-state-time-limit-actions-action
                                      :required common-lisp:t :member-name
                                      "action"))
                                    (:shape-name "JobStateTimeLimitAction"))

(smithy/sdk/shapes:define-list job-state-time-limit-actions :member
                               job-state-time-limit-action)

(smithy/sdk/shapes:define-enum job-state-time-limit-actions-action
    common-lisp:nil
  (:cancel "CANCEL")
  (:terminate "TERMINATE"))

(smithy/sdk/shapes:define-enum job-state-time-limit-actions-state
    common-lisp:nil
  (:runnable "RUNNABLE"))

(smithy/sdk/shapes:define-enum job-status
    common-lisp:nil
  (:submitted "SUBMITTED")
  (:pending "PENDING")
  (:runnable "RUNNABLE")
  (:starting "STARTING")
  (:running "RUNNING")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure job-summary common-lisp:nil
                                    ((job-arn :target-type string :member-name
                                      "jobArn")
                                     (job-id :target-type string :required
                                      common-lisp:t :member-name "jobId")
                                     (job-name :target-type string :required
                                      common-lisp:t :member-name "jobName")
                                     (created-at :target-type long :member-name
                                      "createdAt")
                                     (status :target-type job-status
                                      :member-name "status")
                                     (status-reason :target-type string
                                      :member-name "statusReason")
                                     (started-at :target-type long :member-name
                                      "startedAt")
                                     (stopped-at :target-type long :member-name
                                      "stoppedAt")
                                     (container :target-type container-summary
                                      :member-name "container")
                                     (array-properties :target-type
                                      array-properties-summary :member-name
                                      "arrayProperties")
                                     (node-properties :target-type
                                      node-properties-summary :member-name
                                      "nodeProperties")
                                     (job-definition :target-type string
                                      :member-name "jobDefinition"))
                                    (:shape-name "JobSummary"))

(smithy/sdk/shapes:define-list job-summary-list :member job-summary)

(smithy/sdk/shapes:define-structure job-timeout common-lisp:nil
                                    ((attempt-duration-seconds :target-type
                                      integer :member-name
                                      "attemptDurationSeconds"))
                                    (:shape-name "JobTimeout"))

(smithy/sdk/shapes:define-structure key-value-pair common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (value :target-type string :member-name
                                      "value"))
                                    (:shape-name "KeyValuePair"))

(smithy/sdk/shapes:define-structure key-values-pair common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (values :target-type string-list
                                      :member-name "values"))
                                    (:shape-name "KeyValuesPair"))

(smithy/sdk/shapes:define-type kubernetes-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure latest-service-job-attempt common-lisp:nil
                                    ((service-resource-id :target-type
                                      service-resource-id :member-name
                                      "serviceResourceId"))
                                    (:shape-name "LatestServiceJobAttempt"))

(smithy/sdk/shapes:define-structure launch-template-specification
                                    common-lisp:nil
                                    ((launch-template-id :target-type string
                                      :member-name "launchTemplateId")
                                     (launch-template-name :target-type string
                                      :member-name "launchTemplateName")
                                     (version :target-type string :member-name
                                      "version")
                                     (overrides :target-type
                                      launch-template-specification-override-list
                                      :member-name "overrides")
                                     (userdata-type :target-type userdata-type
                                      :member-name "userdataType"))
                                    (:shape-name "LaunchTemplateSpecification"))

(smithy/sdk/shapes:define-structure launch-template-specification-override
                                    common-lisp:nil
                                    ((launch-template-id :target-type string
                                      :member-name "launchTemplateId")
                                     (launch-template-name :target-type string
                                      :member-name "launchTemplateName")
                                     (version :target-type string :member-name
                                      "version")
                                     (target-instance-types :target-type
                                      string-list :member-name
                                      "targetInstanceTypes")
                                     (userdata-type :target-type userdata-type
                                      :member-name "userdataType"))
                                    (:shape-name
                                     "LaunchTemplateSpecificationOverride"))

(smithy/sdk/shapes:define-list launch-template-specification-override-list
                               :member launch-template-specification-override)

(smithy/sdk/shapes:define-structure linux-parameters common-lisp:nil
                                    ((devices :target-type devices-list
                                      :member-name "devices")
                                     (init-process-enabled :target-type boolean
                                      :member-name "initProcessEnabled")
                                     (shared-memory-size :target-type integer
                                      :member-name "sharedMemorySize")
                                     (tmpfs :target-type tmpfs-list
                                      :member-name "tmpfs")
                                     (max-swap :target-type integer
                                      :member-name "maxSwap")
                                     (swappiness :target-type integer
                                      :member-name "swappiness"))
                                    (:shape-name "LinuxParameters"))

(smithy/sdk/shapes:define-list list-attempt-ecs-task-details :member
                               attempt-ecs-task-details)

(smithy/sdk/shapes:define-list list-attempt-task-container-details :member
                               attempt-task-container-details)

(smithy/sdk/shapes:define-list list-consumable-resources-filter-list :member
                               key-values-pair)

(smithy/sdk/shapes:define-input list-consumable-resources-request
                                common-lisp:nil
                                ((filters :target-type
                                  list-consumable-resources-filter-list
                                  :member-name "filters")
                                 (max-results :target-type integer :member-name
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken"))
                                (:shape-name "ListConsumableResourcesRequest"))

(smithy/sdk/shapes:define-output list-consumable-resources-response
                                 common-lisp:nil
                                 ((consumable-resources :target-type
                                   consumable-resource-summary-list :required
                                   common-lisp:t :member-name
                                   "consumableResources")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "ListConsumableResourcesResponse"))

(smithy/sdk/shapes:define-list list-ecs-task-details :member ecs-task-details)

(smithy/sdk/shapes:define-list list-ecs-task-properties :member
                               ecs-task-properties)

(smithy/sdk/shapes:define-list list-jobs-by-consumable-resource-filter-list
                               :member key-values-pair)

(smithy/sdk/shapes:define-input list-jobs-by-consumable-resource-request
                                common-lisp:nil
                                ((consumable-resource :target-type string
                                  :required common-lisp:t :member-name
                                  "consumableResource")
                                 (filters :target-type
                                  list-jobs-by-consumable-resource-filter-list
                                  :member-name "filters")
                                 (max-results :target-type integer :member-name
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken"))
                                (:shape-name
                                 "ListJobsByConsumableResourceRequest"))

(smithy/sdk/shapes:define-output list-jobs-by-consumable-resource-response
                                 common-lisp:nil
                                 ((jobs :target-type
                                   list-jobs-by-consumable-resource-summary-list
                                   :required common-lisp:t :member-name "jobs")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "ListJobsByConsumableResourceResponse"))

(smithy/sdk/shapes:define-structure list-jobs-by-consumable-resource-summary
                                    common-lisp:nil
                                    ((job-arn :target-type string :required
                                      common-lisp:t :member-name "jobArn")
                                     (job-queue-arn :target-type string
                                      :required common-lisp:t :member-name
                                      "jobQueueArn")
                                     (job-name :target-type string :required
                                      common-lisp:t :member-name "jobName")
                                     (job-definition-arn :target-type string
                                      :member-name "jobDefinitionArn")
                                     (share-identifier :target-type string
                                      :member-name "shareIdentifier")
                                     (job-status :target-type string :required
                                      common-lisp:t :member-name "jobStatus")
                                     (quantity :target-type long :required
                                      common-lisp:t :member-name "quantity")
                                     (status-reason :target-type string
                                      :member-name "statusReason")
                                     (started-at :target-type long :member-name
                                      "startedAt")
                                     (created-at :target-type long :required
                                      common-lisp:t :member-name "createdAt")
                                     (consumable-resource-properties
                                      :target-type
                                      consumable-resource-properties :required
                                      common-lisp:t :member-name
                                      "consumableResourceProperties"))
                                    (:shape-name
                                     "ListJobsByConsumableResourceSummary"))

(smithy/sdk/shapes:define-list list-jobs-by-consumable-resource-summary-list
                               :member list-jobs-by-consumable-resource-summary)

(smithy/sdk/shapes:define-list list-jobs-filter-list :member key-values-pair)

(smithy/sdk/shapes:define-input list-jobs-request common-lisp:nil
                                ((job-queue :target-type string :member-name
                                  "jobQueue")
                                 (array-job-id :target-type string :member-name
                                  "arrayJobId")
                                 (multi-node-job-id :target-type string
                                  :member-name "multiNodeJobId")
                                 (job-status :target-type job-status
                                  :member-name "jobStatus")
                                 (max-results :target-type integer :member-name
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (filters :target-type list-jobs-filter-list
                                  :member-name "filters"))
                                (:shape-name "ListJobsRequest"))

(smithy/sdk/shapes:define-output list-jobs-response common-lisp:nil
                                 ((job-summary-list :target-type
                                   job-summary-list :required common-lisp:t
                                   :member-name "jobSummaryList")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListJobsResponse"))

(smithy/sdk/shapes:define-input list-scheduling-policies-request
                                common-lisp:nil
                                ((max-results :target-type integer :member-name
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken"))
                                (:shape-name "ListSchedulingPoliciesRequest"))

(smithy/sdk/shapes:define-output list-scheduling-policies-response
                                 common-lisp:nil
                                 ((scheduling-policies :target-type
                                   scheduling-policy-listing-detail-list
                                   :member-name "schedulingPolicies")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListSchedulingPoliciesResponse"))

(smithy/sdk/shapes:define-input list-service-jobs-request common-lisp:nil
                                ((job-queue :target-type string :member-name
                                  "jobQueue")
                                 (job-status :target-type service-job-status
                                  :member-name "jobStatus")
                                 (max-results :target-type integer :member-name
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (filters :target-type list-jobs-filter-list
                                  :member-name "filters"))
                                (:shape-name "ListServiceJobsRequest"))

(smithy/sdk/shapes:define-output list-service-jobs-response common-lisp:nil
                                 ((job-summary-list :target-type
                                   service-job-summary-list :required
                                   common-lisp:t :member-name "jobSummaryList")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListServiceJobsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tagris-tags-map
                                   :member-name "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-list list-task-container-details :member
                               task-container-details)

(smithy/sdk/shapes:define-list list-task-container-overrides :member
                               task-container-overrides)

(smithy/sdk/shapes:define-list list-task-container-properties :member
                               task-container-properties)

(smithy/sdk/shapes:define-list list-task-properties-override :member
                               task-properties-override)

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

(smithy/sdk/shapes:define-structure mount-point common-lisp:nil
                                    ((container-path :target-type string
                                      :member-name "containerPath")
                                     (read-only :target-type boolean
                                      :member-name "readOnly")
                                     (source-volume :target-type string
                                      :member-name "sourceVolume"))
                                    (:shape-name "MountPoint"))

(smithy/sdk/shapes:define-list mount-points :member mount-point)

(smithy/sdk/shapes:define-structure network-configuration common-lisp:nil
                                    ((assign-public-ip :target-type
                                      assign-public-ip :member-name
                                      "assignPublicIp"))
                                    (:shape-name "NetworkConfiguration"))

(smithy/sdk/shapes:define-structure network-interface common-lisp:nil
                                    ((attachment-id :target-type string
                                      :member-name "attachmentId")
                                     (ipv6address :target-type string
                                      :member-name "ipv6Address")
                                     (private-ipv4address :target-type string
                                      :member-name "privateIpv4Address"))
                                    (:shape-name "NetworkInterface"))

(smithy/sdk/shapes:define-list network-interface-list :member network-interface)

(smithy/sdk/shapes:define-structure node-details common-lisp:nil
                                    ((node-index :target-type integer
                                      :member-name "nodeIndex")
                                     (is-main-node :target-type boolean
                                      :member-name "isMainNode"))
                                    (:shape-name "NodeDetails"))

(smithy/sdk/shapes:define-structure node-overrides common-lisp:nil
                                    ((num-nodes :target-type integer
                                      :member-name "numNodes")
                                     (node-property-overrides :target-type
                                      node-property-overrides :member-name
                                      "nodePropertyOverrides"))
                                    (:shape-name "NodeOverrides"))

(smithy/sdk/shapes:define-structure node-properties common-lisp:nil
                                    ((num-nodes :target-type integer :required
                                      common-lisp:t :member-name "numNodes")
                                     (main-node :target-type integer :required
                                      common-lisp:t :member-name "mainNode")
                                     (node-range-properties :target-type
                                      node-range-properties :required
                                      common-lisp:t :member-name
                                      "nodeRangeProperties"))
                                    (:shape-name "NodeProperties"))

(smithy/sdk/shapes:define-structure node-properties-summary common-lisp:nil
                                    ((is-main-node :target-type boolean
                                      :member-name "isMainNode")
                                     (num-nodes :target-type integer
                                      :member-name "numNodes")
                                     (node-index :target-type integer
                                      :member-name "nodeIndex"))
                                    (:shape-name "NodePropertiesSummary"))

(smithy/sdk/shapes:define-structure node-property-override common-lisp:nil
                                    ((target-nodes :target-type string
                                      :required common-lisp:t :member-name
                                      "targetNodes")
                                     (container-overrides :target-type
                                      container-overrides :member-name
                                      "containerOverrides")
                                     (ecs-properties-override :target-type
                                      ecs-properties-override :member-name
                                      "ecsPropertiesOverride")
                                     (instance-types :target-type string-list
                                      :member-name "instanceTypes")
                                     (eks-properties-override :target-type
                                      eks-properties-override :member-name
                                      "eksPropertiesOverride")
                                     (consumable-resource-properties-override
                                      :target-type
                                      consumable-resource-properties
                                      :member-name
                                      "consumableResourcePropertiesOverride"))
                                    (:shape-name "NodePropertyOverride"))

(smithy/sdk/shapes:define-list node-property-overrides :member
                               node-property-override)

(smithy/sdk/shapes:define-list node-range-properties :member
                               node-range-property)

(smithy/sdk/shapes:define-structure node-range-property common-lisp:nil
                                    ((target-nodes :target-type string
                                      :required common-lisp:t :member-name
                                      "targetNodes")
                                     (container :target-type
                                      container-properties :member-name
                                      "container")
                                     (instance-types :target-type string-list
                                      :member-name "instanceTypes")
                                     (ecs-properties :target-type
                                      ecs-properties :member-name
                                      "ecsProperties")
                                     (eks-properties :target-type
                                      eks-properties :member-name
                                      "eksProperties")
                                     (consumable-resource-properties
                                      :target-type
                                      consumable-resource-properties
                                      :member-name
                                      "consumableResourceProperties"))
                                    (:shape-name "NodeRangeProperty"))

(smithy/sdk/shapes:define-enum orchestration-type
    common-lisp:nil
  (:ecs "ECS")
  (:eks "EKS"))

(smithy/sdk/shapes:define-map parameters-map :key string :value string)

(smithy/sdk/shapes:define-enum platform-capability
    common-lisp:nil
  (:ec2 "EC2")
  (:fargate "FARGATE"))

(smithy/sdk/shapes:define-list platform-capability-list :member
                               platform-capability)

(smithy/sdk/shapes:define-type quantity smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input register-job-definition-request common-lisp:nil
                                ((job-definition-name :target-type string
                                  :required common-lisp:t :member-name
                                  "jobDefinitionName")
                                 (type :target-type job-definition-type
                                  :required common-lisp:t :member-name "type")
                                 (parameters :target-type parameters-map
                                  :member-name "parameters")
                                 (scheduling-priority :target-type integer
                                  :member-name "schedulingPriority")
                                 (container-properties :target-type
                                  container-properties :member-name
                                  "containerProperties")
                                 (node-properties :target-type node-properties
                                  :member-name "nodeProperties")
                                 (retry-strategy :target-type retry-strategy
                                  :member-name "retryStrategy")
                                 (propagate-tags :target-type boolean
                                  :member-name "propagateTags")
                                 (timeout :target-type job-timeout :member-name
                                  "timeout")
                                 (tags :target-type tagris-tags-map
                                  :member-name "tags")
                                 (platform-capabilities :target-type
                                  platform-capability-list :member-name
                                  "platformCapabilities")
                                 (eks-properties :target-type eks-properties
                                  :member-name "eksProperties")
                                 (ecs-properties :target-type ecs-properties
                                  :member-name "ecsProperties")
                                 (consumable-resource-properties :target-type
                                  consumable-resource-properties :member-name
                                  "consumableResourceProperties"))
                                (:shape-name "RegisterJobDefinitionRequest"))

(smithy/sdk/shapes:define-output register-job-definition-response
                                 common-lisp:nil
                                 ((job-definition-name :target-type string
                                   :required common-lisp:t :member-name
                                   "jobDefinitionName")
                                  (job-definition-arn :target-type string
                                   :required common-lisp:t :member-name
                                   "jobDefinitionArn")
                                  (revision :target-type integer :required
                                   common-lisp:t :member-name "revision"))
                                 (:shape-name "RegisterJobDefinitionResponse"))

(smithy/sdk/shapes:define-structure repository-credentials common-lisp:nil
                                    ((credentials-parameter :target-type string
                                      :required common-lisp:t :member-name
                                      "credentialsParameter"))
                                    (:shape-name "RepositoryCredentials"))

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
  (:vcpu "VCPU")
  (:memory "MEMORY"))

(smithy/sdk/shapes:define-enum retry-action
    common-lisp:nil
  (:retry "RETRY")
  (:exit "EXIT"))

(smithy/sdk/shapes:define-structure retry-strategy common-lisp:nil
                                    ((attempts :target-type integer
                                      :member-name "attempts")
                                     (evaluate-on-exit :target-type
                                      evaluate-on-exit-list :member-name
                                      "evaluateOnExit"))
                                    (:shape-name "RetryStrategy"))

(smithy/sdk/shapes:define-structure runtime-platform common-lisp:nil
                                    ((operating-system-family :target-type
                                      string :member-name
                                      "operatingSystemFamily")
                                     (cpu-architecture :target-type string
                                      :member-name "cpuArchitecture"))
                                    (:shape-name "RuntimePlatform"))

(smithy/sdk/shapes:define-structure scheduling-policy-detail common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "name")
                                     (arn :target-type string :required
                                      common-lisp:t :member-name "arn")
                                     (fairshare-policy :target-type
                                      fairshare-policy :member-name
                                      "fairsharePolicy")
                                     (tags :target-type tagris-tags-map
                                      :member-name "tags"))
                                    (:shape-name "SchedulingPolicyDetail"))

(smithy/sdk/shapes:define-list scheduling-policy-detail-list :member
                               scheduling-policy-detail)

(smithy/sdk/shapes:define-structure scheduling-policy-listing-detail
                                    common-lisp:nil
                                    ((arn :target-type string :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name
                                     "SchedulingPolicyListingDetail"))

(smithy/sdk/shapes:define-list scheduling-policy-listing-detail-list :member
                               scheduling-policy-listing-detail)

(smithy/sdk/shapes:define-structure secret common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "name")
                                     (value-from :target-type string :required
                                      common-lisp:t :member-name "valueFrom"))
                                    (:shape-name "Secret"))

(smithy/sdk/shapes:define-list secret-list :member secret)

(smithy/sdk/shapes:define-error server-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure service-environment-detail common-lisp:nil
                                    ((service-environment-name :target-type
                                      string :required common-lisp:t
                                      :member-name "serviceEnvironmentName")
                                     (service-environment-arn :target-type
                                      string :required common-lisp:t
                                      :member-name "serviceEnvironmentArn")
                                     (service-environment-type :target-type
                                      service-environment-type :required
                                      common-lisp:t :member-name
                                      "serviceEnvironmentType")
                                     (state :target-type
                                      service-environment-state :member-name
                                      "state")
                                     (status :target-type
                                      service-environment-status :member-name
                                      "status")
                                     (capacity-limits :target-type
                                      capacity-limits :required common-lisp:t
                                      :member-name "capacityLimits")
                                     (tags :target-type tagris-tags-map
                                      :member-name "tags"))
                                    (:shape-name "ServiceEnvironmentDetail"))

(smithy/sdk/shapes:define-list service-environment-detail-list :member
                               service-environment-detail)

(smithy/sdk/shapes:define-structure service-environment-order common-lisp:nil
                                    ((order :target-type integer :required
                                      common-lisp:t :member-name "order")
                                     (service-environment :target-type string
                                      :required common-lisp:t :member-name
                                      "serviceEnvironment"))
                                    (:shape-name "ServiceEnvironmentOrder"))

(smithy/sdk/shapes:define-list service-environment-orders :member
                               service-environment-order)

(smithy/sdk/shapes:define-enum service-environment-state
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum service-environment-status
    common-lisp:nil
  (:creating "CREATING")
  (:updating "UPDATING")
  (:deleting "DELETING")
  (:deleted "DELETED")
  (:valid "VALID")
  (:invalid "INVALID"))

(smithy/sdk/shapes:define-enum service-environment-type
    common-lisp:nil
  (:sagemaker-training "SAGEMAKER_TRAINING"))

(smithy/sdk/shapes:define-structure service-job-attempt-detail common-lisp:nil
                                    ((service-resource-id :target-type
                                      service-resource-id :member-name
                                      "serviceResourceId")
                                     (started-at :target-type long :member-name
                                      "startedAt")
                                     (stopped-at :target-type long :member-name
                                      "stoppedAt")
                                     (status-reason :target-type string
                                      :member-name "statusReason"))
                                    (:shape-name "ServiceJobAttemptDetail"))

(smithy/sdk/shapes:define-list service-job-attempt-details :member
                               service-job-attempt-detail)

(smithy/sdk/shapes:define-structure service-job-evaluate-on-exit
                                    common-lisp:nil
                                    ((action :target-type
                                      service-job-retry-action :member-name
                                      "action")
                                     (on-status-reason :target-type string
                                      :member-name "onStatusReason"))
                                    (:shape-name "ServiceJobEvaluateOnExit"))

(smithy/sdk/shapes:define-list service-job-evaluate-on-exit-list :member
                               service-job-evaluate-on-exit)

(smithy/sdk/shapes:define-enum service-job-retry-action
    common-lisp:nil
  (:retry "RETRY")
  (:exit "EXIT"))

(smithy/sdk/shapes:define-structure service-job-retry-strategy common-lisp:nil
                                    ((attempts :target-type integer :required
                                      common-lisp:t :member-name "attempts")
                                     (evaluate-on-exit :target-type
                                      service-job-evaluate-on-exit-list
                                      :member-name "evaluateOnExit"))
                                    (:shape-name "ServiceJobRetryStrategy"))

(smithy/sdk/shapes:define-enum service-job-status
    common-lisp:nil
  (:submitted "SUBMITTED")
  (:pending "PENDING")
  (:runnable "RUNNABLE")
  (:scheduled "SCHEDULED")
  (:starting "STARTING")
  (:running "RUNNING")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure service-job-summary common-lisp:nil
                                    ((latest-attempt :target-type
                                      latest-service-job-attempt :member-name
                                      "latestAttempt")
                                     (created-at :target-type long :member-name
                                      "createdAt")
                                     (job-arn :target-type string :member-name
                                      "jobArn")
                                     (job-id :target-type string :required
                                      common-lisp:t :member-name "jobId")
                                     (job-name :target-type string :required
                                      common-lisp:t :member-name "jobName")
                                     (service-job-type :target-type
                                      service-job-type :required common-lisp:t
                                      :member-name "serviceJobType")
                                     (share-identifier :target-type string
                                      :member-name "shareIdentifier")
                                     (status :target-type service-job-status
                                      :member-name "status")
                                     (status-reason :target-type string
                                      :member-name "statusReason")
                                     (started-at :target-type long :member-name
                                      "startedAt")
                                     (stopped-at :target-type long :member-name
                                      "stoppedAt"))
                                    (:shape-name "ServiceJobSummary"))

(smithy/sdk/shapes:define-list service-job-summary-list :member
                               service-job-summary)

(smithy/sdk/shapes:define-structure service-job-timeout common-lisp:nil
                                    ((attempt-duration-seconds :target-type
                                      integer :member-name
                                      "attemptDurationSeconds"))
                                    (:shape-name "ServiceJobTimeout"))

(smithy/sdk/shapes:define-enum service-job-type
    common-lisp:nil
  (:sagemaker-training "SAGEMAKER_TRAINING"))

(smithy/sdk/shapes:define-structure service-resource-id common-lisp:nil
                                    ((name :target-type
                                      service-resource-id-name :required
                                      common-lisp:t :member-name "name")
                                     (value :target-type string :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "ServiceResourceId"))

(smithy/sdk/shapes:define-enum service-resource-id-name
    common-lisp:nil
  (:sagemaker-training-job-arn "TrainingJobArn"))

(smithy/sdk/shapes:define-structure share-attributes common-lisp:nil
                                    ((share-identifier :target-type string
                                      :required common-lisp:t :member-name
                                      "shareIdentifier")
                                     (weight-factor :target-type float
                                      :member-name "weightFactor"))
                                    (:shape-name "ShareAttributes"))

(smithy/sdk/shapes:define-list share-attributes-list :member share-attributes)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-list :member string)

(smithy/sdk/shapes:define-input submit-job-request common-lisp:nil
                                ((job-name :target-type string :required
                                  common-lisp:t :member-name "jobName")
                                 (job-queue :target-type string :required
                                  common-lisp:t :member-name "jobQueue")
                                 (share-identifier :target-type string
                                  :member-name "shareIdentifier")
                                 (scheduling-priority-override :target-type
                                  integer :member-name
                                  "schedulingPriorityOverride")
                                 (array-properties :target-type
                                  array-properties :member-name
                                  "arrayProperties")
                                 (depends-on :target-type job-dependency-list
                                  :member-name "dependsOn")
                                 (job-definition :target-type string :required
                                  common-lisp:t :member-name "jobDefinition")
                                 (parameters :target-type parameters-map
                                  :member-name "parameters")
                                 (container-overrides :target-type
                                  container-overrides :member-name
                                  "containerOverrides")
                                 (node-overrides :target-type node-overrides
                                  :member-name "nodeOverrides")
                                 (retry-strategy :target-type retry-strategy
                                  :member-name "retryStrategy")
                                 (propagate-tags :target-type boolean
                                  :member-name "propagateTags")
                                 (timeout :target-type job-timeout :member-name
                                  "timeout")
                                 (tags :target-type tagris-tags-map
                                  :member-name "tags")
                                 (eks-properties-override :target-type
                                  eks-properties-override :member-name
                                  "eksPropertiesOverride")
                                 (ecs-properties-override :target-type
                                  ecs-properties-override :member-name
                                  "ecsPropertiesOverride")
                                 (consumable-resource-properties-override
                                  :target-type consumable-resource-properties
                                  :member-name
                                  "consumableResourcePropertiesOverride"))
                                (:shape-name "SubmitJobRequest"))

(smithy/sdk/shapes:define-output submit-job-response common-lisp:nil
                                 ((job-arn :target-type string :member-name
                                   "jobArn")
                                  (job-name :target-type string :required
                                   common-lisp:t :member-name "jobName")
                                  (job-id :target-type string :required
                                   common-lisp:t :member-name "jobId"))
                                 (:shape-name "SubmitJobResponse"))

(smithy/sdk/shapes:define-input submit-service-job-request common-lisp:nil
                                ((job-name :target-type string :required
                                  common-lisp:t :member-name "jobName")
                                 (job-queue :target-type string :required
                                  common-lisp:t :member-name "jobQueue")
                                 (retry-strategy :target-type
                                  service-job-retry-strategy :member-name
                                  "retryStrategy")
                                 (scheduling-priority :target-type integer
                                  :member-name "schedulingPriority")
                                 (service-request-payload :target-type string
                                  :required common-lisp:t :member-name
                                  "serviceRequestPayload")
                                 (service-job-type :target-type
                                  service-job-type :required common-lisp:t
                                  :member-name "serviceJobType")
                                 (share-identifier :target-type string
                                  :member-name "shareIdentifier")
                                 (timeout-config :target-type
                                  service-job-timeout :member-name
                                  "timeoutConfig")
                                 (tags :target-type tagris-tags-map
                                  :member-name "tags")
                                 (client-token :target-type
                                  client-request-token :member-name
                                  "clientToken"))
                                (:shape-name "SubmitServiceJobRequest"))

(smithy/sdk/shapes:define-output submit-service-job-response common-lisp:nil
                                 ((job-arn :target-type string :member-name
                                   "jobArn")
                                  (job-name :target-type string :required
                                   common-lisp:t :member-name "jobName")
                                  (job-id :target-type string :required
                                   common-lisp:t :member-name "jobId"))
                                 (:shape-name "SubmitServiceJobResponse"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys-list :member tag-key)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tagris-tags-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map tagris-tags-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-map tags-map :key string :value string)

(smithy/sdk/shapes:define-structure task-container-dependency common-lisp:nil
                                    ((container-name :target-type string
                                      :member-name "containerName")
                                     (condition :target-type string
                                      :member-name "condition"))
                                    (:shape-name "TaskContainerDependency"))

(smithy/sdk/shapes:define-list task-container-dependency-list :member
                               task-container-dependency)

(smithy/sdk/shapes:define-structure task-container-details common-lisp:nil
                                    ((command :target-type string-list
                                      :member-name "command")
                                     (depends-on :target-type
                                      task-container-dependency-list
                                      :member-name "dependsOn")
                                     (environment :target-type
                                      environment-variables :member-name
                                      "environment")
                                     (essential :target-type boolean
                                      :member-name "essential")
                                     (firelens-configuration :target-type
                                      firelens-configuration :member-name
                                      "firelensConfiguration")
                                     (image :target-type string :member-name
                                      "image")
                                     (linux-parameters :target-type
                                      linux-parameters :member-name
                                      "linuxParameters")
                                     (log-configuration :target-type
                                      log-configuration :member-name
                                      "logConfiguration")
                                     (mount-points :target-type mount-points
                                      :member-name "mountPoints")
                                     (name :target-type string :member-name
                                      "name")
                                     (privileged :target-type boolean
                                      :member-name "privileged")
                                     (readonly-root-filesystem :target-type
                                      boolean :member-name
                                      "readonlyRootFilesystem")
                                     (repository-credentials :target-type
                                      repository-credentials :member-name
                                      "repositoryCredentials")
                                     (resource-requirements :target-type
                                      resource-requirements :member-name
                                      "resourceRequirements")
                                     (secrets :target-type secret-list
                                      :member-name "secrets")
                                     (ulimits :target-type ulimits :member-name
                                      "ulimits")
                                     (user :target-type string :member-name
                                      "user")
                                     (exit-code :target-type integer
                                      :member-name "exitCode")
                                     (reason :target-type string :member-name
                                      "reason")
                                     (log-stream-name :target-type string
                                      :member-name "logStreamName")
                                     (network-interfaces :target-type
                                      network-interface-list :member-name
                                      "networkInterfaces"))
                                    (:shape-name "TaskContainerDetails"))

(smithy/sdk/shapes:define-structure task-container-overrides common-lisp:nil
                                    ((command :target-type string-list
                                      :member-name "command")
                                     (environment :target-type
                                      environment-variables :member-name
                                      "environment")
                                     (name :target-type string :member-name
                                      "name")
                                     (resource-requirements :target-type
                                      resource-requirements :member-name
                                      "resourceRequirements"))
                                    (:shape-name "TaskContainerOverrides"))

(smithy/sdk/shapes:define-structure task-container-properties common-lisp:nil
                                    ((command :target-type string-list
                                      :member-name "command")
                                     (depends-on :target-type
                                      task-container-dependency-list
                                      :member-name "dependsOn")
                                     (environment :target-type
                                      environment-variables :member-name
                                      "environment")
                                     (essential :target-type boolean
                                      :member-name "essential")
                                     (firelens-configuration :target-type
                                      firelens-configuration :member-name
                                      "firelensConfiguration")
                                     (image :target-type string :required
                                      common-lisp:t :member-name "image")
                                     (linux-parameters :target-type
                                      linux-parameters :member-name
                                      "linuxParameters")
                                     (log-configuration :target-type
                                      log-configuration :member-name
                                      "logConfiguration")
                                     (mount-points :target-type mount-points
                                      :member-name "mountPoints")
                                     (name :target-type string :member-name
                                      "name")
                                     (privileged :target-type boolean
                                      :member-name "privileged")
                                     (readonly-root-filesystem :target-type
                                      boolean :member-name
                                      "readonlyRootFilesystem")
                                     (repository-credentials :target-type
                                      repository-credentials :member-name
                                      "repositoryCredentials")
                                     (resource-requirements :target-type
                                      resource-requirements :member-name
                                      "resourceRequirements")
                                     (secrets :target-type secret-list
                                      :member-name "secrets")
                                     (ulimits :target-type ulimits :member-name
                                      "ulimits")
                                     (user :target-type string :member-name
                                      "user"))
                                    (:shape-name "TaskContainerProperties"))

(smithy/sdk/shapes:define-structure task-properties-override common-lisp:nil
                                    ((containers :target-type
                                      list-task-container-overrides
                                      :member-name "containers"))
                                    (:shape-name "TaskPropertiesOverride"))

(smithy/sdk/shapes:define-input terminate-job-request common-lisp:nil
                                ((job-id :target-type string :required
                                  common-lisp:t :member-name "jobId")
                                 (reason :target-type string :required
                                  common-lisp:t :member-name "reason"))
                                (:shape-name "TerminateJobRequest"))

(smithy/sdk/shapes:define-output terminate-job-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TerminateJobResponse"))

(smithy/sdk/shapes:define-input terminate-service-job-request common-lisp:nil
                                ((job-id :target-type string :required
                                  common-lisp:t :member-name "jobId")
                                 (reason :target-type string :required
                                  common-lisp:t :member-name "reason"))
                                (:shape-name "TerminateServiceJobRequest"))

(smithy/sdk/shapes:define-output terminate-service-job-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TerminateServiceJobResponse"))

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

(smithy/sdk/shapes:define-structure ulimit common-lisp:nil
                                    ((hard-limit :target-type integer :required
                                      common-lisp:t :member-name "hardLimit")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "name")
                                     (soft-limit :target-type integer :required
                                      common-lisp:t :member-name "softLimit"))
                                    (:shape-name "Ulimit"))

(smithy/sdk/shapes:define-list ulimits :member ulimit)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-keys-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-compute-environment-request
                                common-lisp:nil
                                ((compute-environment :target-type string
                                  :required common-lisp:t :member-name
                                  "computeEnvironment")
                                 (state :target-type cestate :member-name
                                  "state")
                                 (unmanagedv-cpus :target-type integer
                                  :member-name "unmanagedvCpus")
                                 (compute-resources :target-type
                                  compute-resource-update :member-name
                                  "computeResources")
                                 (service-role :target-type string :member-name
                                  "serviceRole")
                                 (update-policy :target-type update-policy
                                  :member-name "updatePolicy")
                                 (context :target-type string :member-name
                                  "context"))
                                (:shape-name "UpdateComputeEnvironmentRequest"))

(smithy/sdk/shapes:define-output update-compute-environment-response
                                 common-lisp:nil
                                 ((compute-environment-name :target-type string
                                   :member-name "computeEnvironmentName")
                                  (compute-environment-arn :target-type string
                                   :member-name "computeEnvironmentArn"))
                                 (:shape-name
                                  "UpdateComputeEnvironmentResponse"))

(smithy/sdk/shapes:define-input update-consumable-resource-request
                                common-lisp:nil
                                ((consumable-resource :target-type string
                                  :required common-lisp:t :member-name
                                  "consumableResource")
                                 (operation :target-type string :member-name
                                  "operation")
                                 (quantity :target-type long :member-name
                                  "quantity")
                                 (client-token :target-type
                                  client-request-token :member-name
                                  "clientToken"))
                                (:shape-name "UpdateConsumableResourceRequest"))

(smithy/sdk/shapes:define-output update-consumable-resource-response
                                 common-lisp:nil
                                 ((consumable-resource-name :target-type string
                                   :required common-lisp:t :member-name
                                   "consumableResourceName")
                                  (consumable-resource-arn :target-type string
                                   :required common-lisp:t :member-name
                                   "consumableResourceArn")
                                  (total-quantity :target-type long
                                   :member-name "totalQuantity"))
                                 (:shape-name
                                  "UpdateConsumableResourceResponse"))

(smithy/sdk/shapes:define-input update-job-queue-request common-lisp:nil
                                ((job-queue :target-type string :required
                                  common-lisp:t :member-name "jobQueue")
                                 (state :target-type jqstate :member-name
                                  "state")
                                 (scheduling-policy-arn :target-type string
                                  :member-name "schedulingPolicyArn")
                                 (priority :target-type integer :member-name
                                  "priority")
                                 (compute-environment-order :target-type
                                  compute-environment-orders :member-name
                                  "computeEnvironmentOrder")
                                 (service-environment-order :target-type
                                  service-environment-orders :member-name
                                  "serviceEnvironmentOrder")
                                 (job-state-time-limit-actions :target-type
                                  job-state-time-limit-actions :member-name
                                  "jobStateTimeLimitActions"))
                                (:shape-name "UpdateJobQueueRequest"))

(smithy/sdk/shapes:define-output update-job-queue-response common-lisp:nil
                                 ((job-queue-name :target-type string
                                   :member-name "jobQueueName")
                                  (job-queue-arn :target-type string
                                   :member-name "jobQueueArn"))
                                 (:shape-name "UpdateJobQueueResponse"))

(smithy/sdk/shapes:define-structure update-policy common-lisp:nil
                                    ((terminate-jobs-on-update :target-type
                                      boolean :member-name
                                      "terminateJobsOnUpdate")
                                     (job-execution-timeout-minutes
                                      :target-type
                                      job-execution-timeout-minutes
                                      :member-name
                                      "jobExecutionTimeoutMinutes"))
                                    (:shape-name "UpdatePolicy"))

(smithy/sdk/shapes:define-input update-scheduling-policy-request
                                common-lisp:nil
                                ((arn :target-type string :required
                                  common-lisp:t :member-name "arn")
                                 (fairshare-policy :target-type
                                  fairshare-policy :member-name
                                  "fairsharePolicy"))
                                (:shape-name "UpdateSchedulingPolicyRequest"))

(smithy/sdk/shapes:define-output update-scheduling-policy-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateSchedulingPolicyResponse"))

(smithy/sdk/shapes:define-input update-service-environment-request
                                common-lisp:nil
                                ((service-environment :target-type string
                                  :required common-lisp:t :member-name
                                  "serviceEnvironment")
                                 (state :target-type service-environment-state
                                  :member-name "state")
                                 (capacity-limits :target-type capacity-limits
                                  :member-name "capacityLimits"))
                                (:shape-name "UpdateServiceEnvironmentRequest"))

(smithy/sdk/shapes:define-output update-service-environment-response
                                 common-lisp:nil
                                 ((service-environment-name :target-type string
                                   :required common-lisp:t :member-name
                                   "serviceEnvironmentName")
                                  (service-environment-arn :target-type string
                                   :required common-lisp:t :member-name
                                   "serviceEnvironmentArn"))
                                 (:shape-name
                                  "UpdateServiceEnvironmentResponse"))

(smithy/sdk/shapes:define-enum userdata-type
    common-lisp:nil
  (:eks-bootstrap-sh "EKS_BOOTSTRAP_SH")
  (:eks-nodeadm "EKS_NODEADM"))

(smithy/sdk/shapes:define-structure volume common-lisp:nil
                                    ((host :target-type host :member-name
                                      "host")
                                     (name :target-type string :member-name
                                      "name")
                                     (efs-volume-configuration :target-type
                                      efsvolume-configuration :member-name
                                      "efsVolumeConfiguration"))
                                    (:shape-name "Volume"))

(smithy/sdk/shapes:define-list volumes :member volume)

(smithy/sdk/operation:define-operation cancel-job :shape-name "CancelJob"
                                       :input cancel-job-request :output
                                       cancel-job-response :errors
                                       (client-exception server-exception)
                                       :method "POST" :uri "/v1/canceljob"
                                       :code 200)

(smithy/sdk/operation:define-operation create-compute-environment :shape-name
                                       "CreateComputeEnvironment" :input
                                       create-compute-environment-request
                                       :output
                                       create-compute-environment-response
                                       :errors
                                       (client-exception server-exception)
                                       :method "POST" :uri
                                       "/v1/createcomputeenvironment" :code 200)

(smithy/sdk/operation:define-operation create-consumable-resource :shape-name
                                       "CreateConsumableResource" :input
                                       create-consumable-resource-request
                                       :output
                                       create-consumable-resource-response
                                       :errors
                                       (client-exception server-exception)
                                       :method "POST" :uri
                                       "/v1/createconsumableresource" :code 200)

(smithy/sdk/operation:define-operation create-job-queue :shape-name
                                       "CreateJobQueue" :input
                                       create-job-queue-request :output
                                       create-job-queue-response :errors
                                       (client-exception server-exception)
                                       :method "POST" :uri "/v1/createjobqueue"
                                       :code 200)

(smithy/sdk/operation:define-operation create-scheduling-policy :shape-name
                                       "CreateSchedulingPolicy" :input
                                       create-scheduling-policy-request :output
                                       create-scheduling-policy-response
                                       :errors
                                       (client-exception server-exception)
                                       :method "POST" :uri
                                       "/v1/createschedulingpolicy" :code 200)

(smithy/sdk/operation:define-operation create-service-environment :shape-name
                                       "CreateServiceEnvironment" :input
                                       create-service-environment-request
                                       :output
                                       create-service-environment-response
                                       :errors
                                       (client-exception server-exception)
                                       :method "POST" :uri
                                       "/v1/createserviceenvironment" :code 200)

(smithy/sdk/operation:define-operation delete-compute-environment :shape-name
                                       "DeleteComputeEnvironment" :input
                                       delete-compute-environment-request
                                       :output
                                       delete-compute-environment-response
                                       :errors
                                       (client-exception server-exception)
                                       :method "POST" :uri
                                       "/v1/deletecomputeenvironment" :code 200)

(smithy/sdk/operation:define-operation delete-consumable-resource :shape-name
                                       "DeleteConsumableResource" :input
                                       delete-consumable-resource-request
                                       :output
                                       delete-consumable-resource-response
                                       :errors
                                       (client-exception server-exception)
                                       :method "POST" :uri
                                       "/v1/deleteconsumableresource" :code 200)

(smithy/sdk/operation:define-operation delete-job-queue :shape-name
                                       "DeleteJobQueue" :input
                                       delete-job-queue-request :output
                                       delete-job-queue-response :errors
                                       (client-exception server-exception)
                                       :method "POST" :uri "/v1/deletejobqueue"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-scheduling-policy :shape-name
                                       "DeleteSchedulingPolicy" :input
                                       delete-scheduling-policy-request :output
                                       delete-scheduling-policy-response
                                       :errors
                                       (client-exception server-exception)
                                       :method "POST" :uri
                                       "/v1/deleteschedulingpolicy" :code 200)

(smithy/sdk/operation:define-operation delete-service-environment :shape-name
                                       "DeleteServiceEnvironment" :input
                                       delete-service-environment-request
                                       :output
                                       delete-service-environment-response
                                       :errors
                                       (client-exception server-exception)
                                       :method "POST" :uri
                                       "/v1/deleteserviceenvironment" :code 200)

(smithy/sdk/operation:define-operation deregister-job-definition :shape-name
                                       "DeregisterJobDefinition" :input
                                       deregister-job-definition-request
                                       :output
                                       deregister-job-definition-response
                                       :errors
                                       (client-exception server-exception)
                                       :method "POST" :uri
                                       "/v1/deregisterjobdefinition" :code 200)

(smithy/sdk/operation:define-operation describe-compute-environments
                                       :shape-name
                                       "DescribeComputeEnvironments" :input
                                       describe-compute-environments-request
                                       :output
                                       describe-compute-environments-response
                                       :errors
                                       (client-exception server-exception)
                                       :method "POST" :uri
                                       "/v1/describecomputeenvironments" :code
                                       200)

(smithy/sdk/operation:define-operation describe-consumable-resource :shape-name
                                       "DescribeConsumableResource" :input
                                       describe-consumable-resource-request
                                       :output
                                       describe-consumable-resource-response
                                       :errors
                                       (client-exception server-exception)
                                       :method "POST" :uri
                                       "/v1/describeconsumableresource" :code
                                       200)

(smithy/sdk/operation:define-operation describe-job-definitions :shape-name
                                       "DescribeJobDefinitions" :input
                                       describe-job-definitions-request :output
                                       describe-job-definitions-response
                                       :errors
                                       (client-exception server-exception)
                                       :method "POST" :uri
                                       "/v1/describejobdefinitions" :code 200)

(smithy/sdk/operation:define-operation describe-job-queues :shape-name
                                       "DescribeJobQueues" :input
                                       describe-job-queues-request :output
                                       describe-job-queues-response :errors
                                       (client-exception server-exception)
                                       :method "POST" :uri
                                       "/v1/describejobqueues" :code 200)

(smithy/sdk/operation:define-operation describe-jobs :shape-name "DescribeJobs"
                                       :input describe-jobs-request :output
                                       describe-jobs-response :errors
                                       (client-exception server-exception)
                                       :method "POST" :uri "/v1/describejobs"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-scheduling-policies :shape-name
                                       "DescribeSchedulingPolicies" :input
                                       describe-scheduling-policies-request
                                       :output
                                       describe-scheduling-policies-response
                                       :errors
                                       (client-exception server-exception)
                                       :method "POST" :uri
                                       "/v1/describeschedulingpolicies" :code
                                       200)

(smithy/sdk/operation:define-operation describe-service-environments
                                       :shape-name
                                       "DescribeServiceEnvironments" :input
                                       describe-service-environments-request
                                       :output
                                       describe-service-environments-response
                                       :errors
                                       (client-exception server-exception)
                                       :method "POST" :uri
                                       "/v1/describeserviceenvironments" :code
                                       200)

(smithy/sdk/operation:define-operation describe-service-job :shape-name
                                       "DescribeServiceJob" :input
                                       describe-service-job-request :output
                                       describe-service-job-response :errors
                                       (client-exception server-exception)
                                       :method "POST" :uri
                                       "/v1/describeservicejob" :code 200)

(smithy/sdk/operation:define-operation get-job-queue-snapshot :shape-name
                                       "GetJobQueueSnapshot" :input
                                       get-job-queue-snapshot-request :output
                                       get-job-queue-snapshot-response :errors
                                       (client-exception server-exception)
                                       :method "POST" :uri
                                       "/v1/getjobqueuesnapshot" :code 200)

(smithy/sdk/operation:define-operation list-consumable-resources :shape-name
                                       "ListConsumableResources" :input
                                       list-consumable-resources-request
                                       :output
                                       list-consumable-resources-response
                                       :errors
                                       (client-exception server-exception)
                                       :method "POST" :uri
                                       "/v1/listconsumableresources" :code 200)

(smithy/sdk/operation:define-operation list-jobs :shape-name "ListJobs" :input
                                       list-jobs-request :output
                                       list-jobs-response :errors
                                       (client-exception server-exception)
                                       :method "POST" :uri "/v1/listjobs" :code
                                       200)

(smithy/sdk/operation:define-operation list-jobs-by-consumable-resource
                                       :shape-name
                                       "ListJobsByConsumableResource" :input
                                       list-jobs-by-consumable-resource-request
                                       :output
                                       list-jobs-by-consumable-resource-response
                                       :errors
                                       (client-exception server-exception)
                                       :method "POST" :uri
                                       "/v1/listjobsbyconsumableresource" :code
                                       200)

(smithy/sdk/operation:define-operation list-scheduling-policies :shape-name
                                       "ListSchedulingPolicies" :input
                                       list-scheduling-policies-request :output
                                       list-scheduling-policies-response
                                       :errors
                                       (client-exception server-exception)
                                       :method "POST" :uri
                                       "/v1/listschedulingpolicies" :code 200)

(smithy/sdk/operation:define-operation list-service-jobs :shape-name
                                       "ListServiceJobs" :input
                                       list-service-jobs-request :output
                                       list-service-jobs-response :errors
                                       (client-exception server-exception)
                                       :method "POST" :uri
                                       "/v1/listservicejobs" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (client-exception server-exception)
                                       :method "GET" :uri
                                       "/v1/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation register-job-definition :shape-name
                                       "RegisterJobDefinition" :input
                                       register-job-definition-request :output
                                       register-job-definition-response :errors
                                       (client-exception server-exception)
                                       :method "POST" :uri
                                       "/v1/registerjobdefinition" :code 200)

(smithy/sdk/operation:define-operation submit-job :shape-name "SubmitJob"
                                       :input submit-job-request :output
                                       submit-job-response :errors
                                       (client-exception server-exception)
                                       :method "POST" :uri "/v1/submitjob"
                                       :code 200)

(smithy/sdk/operation:define-operation submit-service-job :shape-name
                                       "SubmitServiceJob" :input
                                       submit-service-job-request :output
                                       submit-service-job-response :errors
                                       (client-exception server-exception)
                                       :method "POST" :uri
                                       "/v1/submitservicejob" :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (client-exception server-exception)
                                       :method "POST" :uri
                                       "/v1/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation terminate-job :shape-name "TerminateJob"
                                       :input terminate-job-request :output
                                       terminate-job-response :errors
                                       (client-exception server-exception)
                                       :method "POST" :uri "/v1/terminatejob"
                                       :code 200)

(smithy/sdk/operation:define-operation terminate-service-job :shape-name
                                       "TerminateServiceJob" :input
                                       terminate-service-job-request :output
                                       terminate-service-job-response :errors
                                       (client-exception server-exception)
                                       :method "POST" :uri
                                       "/v1/terminateservicejob" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (client-exception server-exception)
                                       :method "DELETE" :uri
                                       "/v1/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-compute-environment :shape-name
                                       "UpdateComputeEnvironment" :input
                                       update-compute-environment-request
                                       :output
                                       update-compute-environment-response
                                       :errors
                                       (client-exception server-exception)
                                       :method "POST" :uri
                                       "/v1/updatecomputeenvironment" :code 200)

(smithy/sdk/operation:define-operation update-consumable-resource :shape-name
                                       "UpdateConsumableResource" :input
                                       update-consumable-resource-request
                                       :output
                                       update-consumable-resource-response
                                       :errors
                                       (client-exception server-exception)
                                       :method "POST" :uri
                                       "/v1/updateconsumableresource" :code 200)

(smithy/sdk/operation:define-operation update-job-queue :shape-name
                                       "UpdateJobQueue" :input
                                       update-job-queue-request :output
                                       update-job-queue-response :errors
                                       (client-exception server-exception)
                                       :method "POST" :uri "/v1/updatejobqueue"
                                       :code 200)

(smithy/sdk/operation:define-operation update-scheduling-policy :shape-name
                                       "UpdateSchedulingPolicy" :input
                                       update-scheduling-policy-request :output
                                       update-scheduling-policy-response
                                       :errors
                                       (client-exception server-exception)
                                       :method "POST" :uri
                                       "/v1/updateschedulingpolicy" :code 200)

(smithy/sdk/operation:define-operation update-service-environment :shape-name
                                       "UpdateServiceEnvironment" :input
                                       update-service-environment-request
                                       :output
                                       update-service-environment-response
                                       :errors
                                       (client-exception server-exception)
                                       :method "POST" :uri
                                       "/v1/updateserviceenvironment" :code 200)
