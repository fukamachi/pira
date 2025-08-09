(uiop/package:define-package #:pira/robomaker (:use)
                             (:export #:architecture #:arn #:arns
                              #:batch-delete-worlds
                              #:batch-delete-worlds-request
                              #:batch-delete-worlds-response
                              #:batch-describe-simulation-job
                              #:batch-describe-simulation-job-request
                              #:batch-describe-simulation-job-response
                              #:batch-policy #:batch-timeout-in-seconds
                              #:boolean #:boxed-boolean #:cancel-deployment-job
                              #:cancel-deployment-job-request
                              #:cancel-deployment-job-response
                              #:cancel-simulation-job
                              #:cancel-simulation-job-batch
                              #:cancel-simulation-job-batch-request
                              #:cancel-simulation-job-batch-response
                              #:cancel-simulation-job-request
                              #:cancel-simulation-job-response
                              #:cancel-world-export-job
                              #:cancel-world-export-job-request
                              #:cancel-world-export-job-response
                              #:cancel-world-generation-job
                              #:cancel-world-generation-job-request
                              #:cancel-world-generation-job-response
                              #:client-request-token #:command #:command-list
                              #:compute #:compute-response #:compute-type
                              #:concurrent-deployment-exception
                              #:create-deployment-job
                              #:create-deployment-job-request
                              #:create-deployment-job-response #:create-fleet
                              #:create-fleet-request #:create-fleet-response
                              #:create-robot #:create-robot-application
                              #:create-robot-application-request
                              #:create-robot-application-response
                              #:create-robot-application-version
                              #:create-robot-application-version-request
                              #:create-robot-application-version-response
                              #:create-robot-request #:create-robot-response
                              #:create-simulation-application
                              #:create-simulation-application-request
                              #:create-simulation-application-response
                              #:create-simulation-application-version
                              #:create-simulation-application-version-request
                              #:create-simulation-application-version-response
                              #:create-simulation-job
                              #:create-simulation-job-request
                              #:create-simulation-job-requests
                              #:create-simulation-job-response
                              #:create-world-export-job
                              #:create-world-export-job-request
                              #:create-world-export-job-response
                              #:create-world-generation-job
                              #:create-world-generation-job-request
                              #:create-world-generation-job-response
                              #:create-world-template
                              #:create-world-template-request
                              #:create-world-template-response #:created-at
                              #:data-source #:data-source-config
                              #:data-source-configs #:data-source-names
                              #:data-source-type #:data-sources #:delete-fleet
                              #:delete-fleet-request #:delete-fleet-response
                              #:delete-robot #:delete-robot-application
                              #:delete-robot-application-request
                              #:delete-robot-application-response
                              #:delete-robot-request #:delete-robot-response
                              #:delete-simulation-application
                              #:delete-simulation-application-request
                              #:delete-simulation-application-response
                              #:delete-world-template
                              #:delete-world-template-request
                              #:delete-world-template-response
                              #:deployment-application-config
                              #:deployment-application-configs
                              #:deployment-config #:deployment-job
                              #:deployment-job-error-code #:deployment-jobs
                              #:deployment-launch-config #:deployment-status
                              #:deployment-timeout #:deployment-version
                              #:deregister-robot #:deregister-robot-request
                              #:deregister-robot-response
                              #:describe-deployment-job
                              #:describe-deployment-job-request
                              #:describe-deployment-job-response
                              #:describe-fleet #:describe-fleet-request
                              #:describe-fleet-response #:describe-robot
                              #:describe-robot-application
                              #:describe-robot-application-request
                              #:describe-robot-application-response
                              #:describe-robot-request
                              #:describe-robot-response
                              #:describe-simulation-application
                              #:describe-simulation-application-request
                              #:describe-simulation-application-response
                              #:describe-simulation-job
                              #:describe-simulation-job-batch
                              #:describe-simulation-job-batch-request
                              #:describe-simulation-job-batch-response
                              #:describe-simulation-job-request
                              #:describe-simulation-job-response
                              #:describe-world #:describe-world-export-job
                              #:describe-world-export-job-request
                              #:describe-world-export-job-response
                              #:describe-world-generation-job
                              #:describe-world-generation-job-request
                              #:describe-world-generation-job-response
                              #:describe-world-request
                              #:describe-world-response
                              #:describe-world-template
                              #:describe-world-template-request
                              #:describe-world-template-response #:environment
                              #:environment-variable-key
                              #:environment-variable-map
                              #:environment-variable-value #:exit-behavior
                              #:failed-at
                              #:failed-create-simulation-job-request
                              #:failed-create-simulation-job-requests
                              #:failure-behavior #:failure-summary #:filter
                              #:filter-values #:filters
                              #:finished-worlds-summary #:fleet #:fleets
                              #:floorplan-count #:gpuunit #:generic-integer
                              #:generic-string #:get-world-template-body
                              #:get-world-template-body-request
                              #:get-world-template-body-response #:iam-role
                              #:id #:idempotent-parameter-mismatch-exception
                              #:image-digest #:integer
                              #:interior-count-per-floorplan
                              #:internal-server-exception
                              #:invalid-parameter-exception #:job-duration
                              #:json #:last-started-at #:last-updated-at
                              #:launch-config #:limit-exceeded-exception
                              #:list-deployment-jobs
                              #:list-deployment-jobs-request
                              #:list-deployment-jobs-response #:list-fleets
                              #:list-fleets-request #:list-fleets-response
                              #:list-robot-applications
                              #:list-robot-applications-request
                              #:list-robot-applications-response #:list-robots
                              #:list-robots-request #:list-robots-response
                              #:list-simulation-applications
                              #:list-simulation-applications-request
                              #:list-simulation-applications-response
                              #:list-simulation-job-batches
                              #:list-simulation-job-batches-request
                              #:list-simulation-job-batches-response
                              #:list-simulation-jobs
                              #:list-simulation-jobs-request
                              #:list-simulation-jobs-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:list-world-export-jobs
                              #:list-world-export-jobs-request
                              #:list-world-export-jobs-response
                              #:list-world-generation-jobs
                              #:list-world-generation-jobs-request
                              #:list-world-generation-jobs-response
                              #:list-world-templates
                              #:list-world-templates-request
                              #:list-world-templates-response #:list-worlds
                              #:list-worlds-request #:list-worlds-response
                              #:logging-config #:max-concurrency #:max-results
                              #:name #:network-interface #:non-empty-string
                              #:non-system-port #:output-location
                              #:pagination-token #:path #:percent-done
                              #:percentage #:port #:port-forwarding-config
                              #:port-mapping #:port-mapping-list
                              #:progress-detail #:register-robot
                              #:register-robot-request
                              #:register-robot-response #:rendering-engine
                              #:rendering-engine-type
                              #:rendering-engine-version-type #:repository-url
                              #:resource-already-exists-exception
                              #:resource-not-found-exception
                              #:restart-simulation-job
                              #:restart-simulation-job-request
                              #:restart-simulation-job-response #:revision-id
                              #:robot #:robot-application-config
                              #:robot-application-configs
                              #:robot-application-names
                              #:robot-application-summaries
                              #:robot-application-summary #:robot-deployment
                              #:robot-deployment-step
                              #:robot-deployment-summary #:robot-software-suite
                              #:robot-software-suite-type
                              #:robot-software-suite-version-type
                              #:robot-status #:robots #:s3bucket #:s3etag
                              #:s3etags #:s3key #:s3key-or-prefix
                              #:s3key-output #:s3key-outputs
                              #:s3keys-or-prefixes #:s3object #:security-groups
                              #:service-unavailable-exception
                              #:simulation-application-config
                              #:simulation-application-configs
                              #:simulation-application-names
                              #:simulation-application-summaries
                              #:simulation-application-summary #:simulation-job
                              #:simulation-job-batch-error-code
                              #:simulation-job-batch-status
                              #:simulation-job-batch-summaries
                              #:simulation-job-batch-summary
                              #:simulation-job-error-code
                              #:simulation-job-request #:simulation-job-status
                              #:simulation-job-summaries
                              #:simulation-job-summary #:simulation-jobs
                              #:simulation-software-suite
                              #:simulation-software-suite-type
                              #:simulation-software-suite-version-type
                              #:simulation-time-millis #:simulation-unit
                              #:source #:source-config #:source-configs
                              #:sources #:start-simulation-job-batch
                              #:start-simulation-job-batch-request
                              #:start-simulation-job-batch-response #:subnets
                              #:sync-deployment-job
                              #:sync-deployment-job-request
                              #:sync-deployment-job-response #:tag-key
                              #:tag-key-list #:tag-map #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:template-location #:template-name
                              #:template-summaries #:template-summary
                              #:throttling-exception #:tool #:tools
                              #:unrestricted-command #:untag-resource
                              #:untag-resource-request
                              #:untag-resource-response
                              #:update-robot-application
                              #:update-robot-application-request
                              #:update-robot-application-response
                              #:update-simulation-application
                              #:update-simulation-application-request
                              #:update-simulation-application-response
                              #:update-world-template
                              #:update-world-template-request
                              #:update-world-template-response
                              #:upload-behavior #:upload-configuration
                              #:upload-configurations #:vpcconfig
                              #:vpcconfig-response #:version
                              #:version-qualifier #:world-config
                              #:world-configs #:world-count
                              #:world-export-job-error-code
                              #:world-export-job-status
                              #:world-export-job-summaries
                              #:world-export-job-summary #:world-failure
                              #:world-failures
                              #:world-generation-job-error-code
                              #:world-generation-job-status
                              #:world-generation-job-summaries
                              #:world-generation-job-summary #:world-summaries
                              #:world-summary #:error-message #:robomaker))
(common-lisp:in-package #:pira/robomaker)

(smithy/sdk/service:define-service robomaker :shape-name "robomaker" :version
                                   "2018-06-29" :title "AWS RoboMaker" :traits
                                   '(("aws.api#service" ("sdkId" . "RoboMaker")
                                      ("arnNamespace" . "robomaker")
                                      ("cloudFormationName" . "RoboMaker")
                                      ("cloudTrailEventSource"
                                       . "robomaker.amazonaws.com")
                                      ("endpointPrefix" . "robomaker"))
                                     ("aws.auth#sigv4" ("name" . "robomaker"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-enum architecture
    common-lisp:nil
  (:x86-64 "X86_64")
  (:arm64 "ARM64")
  (:armhf "ARMHF"))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list arns :member arn)

(smithy/sdk/shapes:define-input batch-delete-worlds-request common-lisp:nil
                                ((worlds :target-type arns :required
                                  common-lisp:t :member-name "worlds"))
                                (:shape-name "BatchDeleteWorldsRequest"))

(smithy/sdk/shapes:define-output batch-delete-worlds-response common-lisp:nil
                                 ((unprocessed-worlds :target-type arns
                                   :member-name "unprocessedWorlds"))
                                 (:shape-name "BatchDeleteWorldsResponse"))

(smithy/sdk/shapes:define-input batch-describe-simulation-job-request
                                common-lisp:nil
                                ((jobs :target-type arns :required
                                  common-lisp:t :member-name "jobs"))
                                (:shape-name
                                 "BatchDescribeSimulationJobRequest"))

(smithy/sdk/shapes:define-output batch-describe-simulation-job-response
                                 common-lisp:nil
                                 ((jobs :target-type simulation-jobs
                                   :member-name "jobs")
                                  (unprocessed-jobs :target-type arns
                                   :member-name "unprocessedJobs"))
                                 (:shape-name
                                  "BatchDescribeSimulationJobResponse"))

(smithy/sdk/shapes:define-structure batch-policy common-lisp:nil
                                    ((timeout-in-seconds :target-type
                                      batch-timeout-in-seconds :member-name
                                      "timeoutInSeconds")
                                     (max-concurrency :target-type
                                      max-concurrency :member-name
                                      "maxConcurrency"))
                                    (:shape-name "BatchPolicy"))

(smithy/sdk/shapes:define-type batch-timeout-in-seconds
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type boxed-boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input cancel-deployment-job-request common-lisp:nil
                                ((job :target-type arn :required common-lisp:t
                                  :member-name "job"))
                                (:shape-name "CancelDeploymentJobRequest"))

(smithy/sdk/shapes:define-output cancel-deployment-job-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CancelDeploymentJobResponse"))

(smithy/sdk/shapes:define-input cancel-simulation-job-batch-request
                                common-lisp:nil
                                ((batch :target-type arn :required
                                  common-lisp:t :member-name "batch"))
                                (:shape-name "CancelSimulationJobBatchRequest"))

(smithy/sdk/shapes:define-output cancel-simulation-job-batch-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "CancelSimulationJobBatchResponse"))

(smithy/sdk/shapes:define-input cancel-simulation-job-request common-lisp:nil
                                ((job :target-type arn :required common-lisp:t
                                  :member-name "job"))
                                (:shape-name "CancelSimulationJobRequest"))

(smithy/sdk/shapes:define-output cancel-simulation-job-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CancelSimulationJobResponse"))

(smithy/sdk/shapes:define-input cancel-world-export-job-request common-lisp:nil
                                ((job :target-type arn :required common-lisp:t
                                  :member-name "job"))
                                (:shape-name "CancelWorldExportJobRequest"))

(smithy/sdk/shapes:define-output cancel-world-export-job-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "CancelWorldExportJobResponse"))

(smithy/sdk/shapes:define-input cancel-world-generation-job-request
                                common-lisp:nil
                                ((job :target-type arn :required common-lisp:t
                                  :member-name "job"))
                                (:shape-name "CancelWorldGenerationJobRequest"))

(smithy/sdk/shapes:define-output cancel-world-generation-job-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "CancelWorldGenerationJobResponse"))

(smithy/sdk/shapes:define-type client-request-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type command smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list command-list :member non-empty-string)

(smithy/sdk/shapes:define-structure compute common-lisp:nil
                                    ((simulation-unit-limit :target-type
                                      simulation-unit :member-name
                                      "simulationUnitLimit")
                                     (compute-type :target-type compute-type
                                      :member-name "computeType")
                                     (gpu-unit-limit :target-type gpuunit
                                      :member-name "gpuUnitLimit"))
                                    (:shape-name "Compute"))

(smithy/sdk/shapes:define-structure compute-response common-lisp:nil
                                    ((simulation-unit-limit :target-type
                                      simulation-unit :member-name
                                      "simulationUnitLimit")
                                     (compute-type :target-type compute-type
                                      :member-name "computeType")
                                     (gpu-unit-limit :target-type gpuunit
                                      :member-name "gpuUnitLimit"))
                                    (:shape-name "ComputeResponse"))

(smithy/sdk/shapes:define-enum compute-type
    common-lisp:nil
  (:cpu "CPU")
  (:gpu-and-cpu "GPU_AND_CPU"))

(smithy/sdk/shapes:define-error concurrent-deployment-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ConcurrentDeploymentException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input create-deployment-job-request common-lisp:nil
                                ((deployment-config :target-type
                                  deployment-config :member-name
                                  "deploymentConfig")
                                 (client-request-token :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "clientRequestToken")
                                 (fleet :target-type arn :required
                                  common-lisp:t :member-name "fleet")
                                 (deployment-application-configs :target-type
                                  deployment-application-configs :required
                                  common-lisp:t :member-name
                                  "deploymentApplicationConfigs")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateDeploymentJobRequest"))

(smithy/sdk/shapes:define-output create-deployment-job-response common-lisp:nil
                                 ((arn :target-type arn :member-name "arn")
                                  (fleet :target-type arn :member-name "fleet")
                                  (status :target-type deployment-status
                                   :member-name "status")
                                  (deployment-application-configs :target-type
                                   deployment-application-configs :member-name
                                   "deploymentApplicationConfigs")
                                  (failure-reason :target-type generic-string
                                   :member-name "failureReason")
                                  (failure-code :target-type
                                   deployment-job-error-code :member-name
                                   "failureCode")
                                  (created-at :target-type created-at
                                   :member-name "createdAt")
                                  (deployment-config :target-type
                                   deployment-config :member-name
                                   "deploymentConfig")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "CreateDeploymentJobResponse"))

(smithy/sdk/shapes:define-input create-fleet-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateFleetRequest"))

(smithy/sdk/shapes:define-output create-fleet-response common-lisp:nil
                                 ((arn :target-type arn :member-name "arn")
                                  (name :target-type name :member-name "name")
                                  (created-at :target-type created-at
                                   :member-name "createdAt")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "CreateFleetResponse"))

(smithy/sdk/shapes:define-input create-robot-application-request
                                common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (sources :target-type source-configs
                                  :member-name "sources")
                                 (robot-software-suite :target-type
                                  robot-software-suite :required common-lisp:t
                                  :member-name "robotSoftwareSuite")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (environment :target-type environment
                                  :member-name "environment"))
                                (:shape-name "CreateRobotApplicationRequest"))

(smithy/sdk/shapes:define-output create-robot-application-response
                                 common-lisp:nil
                                 ((arn :target-type arn :member-name "arn")
                                  (name :target-type name :member-name "name")
                                  (version :target-type version :member-name
                                   "version")
                                  (sources :target-type sources :member-name
                                   "sources")
                                  (robot-software-suite :target-type
                                   robot-software-suite :member-name
                                   "robotSoftwareSuite")
                                  (last-updated-at :target-type last-updated-at
                                   :member-name "lastUpdatedAt")
                                  (revision-id :target-type revision-id
                                   :member-name "revisionId")
                                  (tags :target-type tag-map :member-name
                                   "tags")
                                  (environment :target-type environment
                                   :member-name "environment"))
                                 (:shape-name "CreateRobotApplicationResponse"))

(smithy/sdk/shapes:define-input create-robot-application-version-request
                                common-lisp:nil
                                ((application :target-type arn :required
                                  common-lisp:t :member-name "application")
                                 (current-revision-id :target-type revision-id
                                  :member-name "currentRevisionId")
                                 (s3etags :target-type s3etags :member-name
                                  "s3Etags")
                                 (image-digest :target-type image-digest
                                  :member-name "imageDigest"))
                                (:shape-name
                                 "CreateRobotApplicationVersionRequest"))

(smithy/sdk/shapes:define-output create-robot-application-version-response
                                 common-lisp:nil
                                 ((arn :target-type arn :member-name "arn")
                                  (name :target-type name :member-name "name")
                                  (version :target-type version :member-name
                                   "version")
                                  (sources :target-type sources :member-name
                                   "sources")
                                  (robot-software-suite :target-type
                                   robot-software-suite :member-name
                                   "robotSoftwareSuite")
                                  (last-updated-at :target-type last-updated-at
                                   :member-name "lastUpdatedAt")
                                  (revision-id :target-type revision-id
                                   :member-name "revisionId")
                                  (environment :target-type environment
                                   :member-name "environment"))
                                 (:shape-name
                                  "CreateRobotApplicationVersionResponse"))

(smithy/sdk/shapes:define-input create-robot-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (architecture :target-type architecture
                                  :required common-lisp:t :member-name
                                  "architecture")
                                 (greengrass-group-id :target-type id :required
                                  common-lisp:t :member-name
                                  "greengrassGroupId")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateRobotRequest"))

(smithy/sdk/shapes:define-output create-robot-response common-lisp:nil
                                 ((arn :target-type arn :member-name "arn")
                                  (name :target-type name :member-name "name")
                                  (created-at :target-type created-at
                                   :member-name "createdAt")
                                  (greengrass-group-id :target-type id
                                   :member-name "greengrassGroupId")
                                  (architecture :target-type architecture
                                   :member-name "architecture")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "CreateRobotResponse"))

(smithy/sdk/shapes:define-input create-simulation-application-request
                                common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (sources :target-type source-configs
                                  :member-name "sources")
                                 (simulation-software-suite :target-type
                                  simulation-software-suite :required
                                  common-lisp:t :member-name
                                  "simulationSoftwareSuite")
                                 (robot-software-suite :target-type
                                  robot-software-suite :required common-lisp:t
                                  :member-name "robotSoftwareSuite")
                                 (rendering-engine :target-type
                                  rendering-engine :member-name
                                  "renderingEngine")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (environment :target-type environment
                                  :member-name "environment"))
                                (:shape-name
                                 "CreateSimulationApplicationRequest"))

(smithy/sdk/shapes:define-output create-simulation-application-response
                                 common-lisp:nil
                                 ((arn :target-type arn :member-name "arn")
                                  (name :target-type name :member-name "name")
                                  (version :target-type version :member-name
                                   "version")
                                  (sources :target-type sources :member-name
                                   "sources")
                                  (simulation-software-suite :target-type
                                   simulation-software-suite :member-name
                                   "simulationSoftwareSuite")
                                  (robot-software-suite :target-type
                                   robot-software-suite :member-name
                                   "robotSoftwareSuite")
                                  (rendering-engine :target-type
                                   rendering-engine :member-name
                                   "renderingEngine")
                                  (last-updated-at :target-type last-updated-at
                                   :member-name "lastUpdatedAt")
                                  (revision-id :target-type revision-id
                                   :member-name "revisionId")
                                  (tags :target-type tag-map :member-name
                                   "tags")
                                  (environment :target-type environment
                                   :member-name "environment"))
                                 (:shape-name
                                  "CreateSimulationApplicationResponse"))

(smithy/sdk/shapes:define-input create-simulation-application-version-request
                                common-lisp:nil
                                ((application :target-type arn :required
                                  common-lisp:t :member-name "application")
                                 (current-revision-id :target-type revision-id
                                  :member-name "currentRevisionId")
                                 (s3etags :target-type s3etags :member-name
                                  "s3Etags")
                                 (image-digest :target-type image-digest
                                  :member-name "imageDigest"))
                                (:shape-name
                                 "CreateSimulationApplicationVersionRequest"))

(smithy/sdk/shapes:define-output create-simulation-application-version-response
                                 common-lisp:nil
                                 ((arn :target-type arn :member-name "arn")
                                  (name :target-type name :member-name "name")
                                  (version :target-type version :member-name
                                   "version")
                                  (sources :target-type sources :member-name
                                   "sources")
                                  (simulation-software-suite :target-type
                                   simulation-software-suite :member-name
                                   "simulationSoftwareSuite")
                                  (robot-software-suite :target-type
                                   robot-software-suite :member-name
                                   "robotSoftwareSuite")
                                  (rendering-engine :target-type
                                   rendering-engine :member-name
                                   "renderingEngine")
                                  (last-updated-at :target-type last-updated-at
                                   :member-name "lastUpdatedAt")
                                  (revision-id :target-type revision-id
                                   :member-name "revisionId")
                                  (environment :target-type environment
                                   :member-name "environment"))
                                 (:shape-name
                                  "CreateSimulationApplicationVersionResponse"))

(smithy/sdk/shapes:define-input create-simulation-job-request common-lisp:nil
                                ((client-request-token :target-type
                                  client-request-token :member-name
                                  "clientRequestToken")
                                 (output-location :target-type output-location
                                  :member-name "outputLocation")
                                 (logging-config :target-type logging-config
                                  :member-name "loggingConfig")
                                 (max-job-duration-in-seconds :target-type
                                  job-duration :required common-lisp:t
                                  :member-name "maxJobDurationInSeconds")
                                 (iam-role :target-type iam-role :required
                                  common-lisp:t :member-name "iamRole")
                                 (failure-behavior :target-type
                                  failure-behavior :member-name
                                  "failureBehavior")
                                 (robot-applications :target-type
                                  robot-application-configs :member-name
                                  "robotApplications")
                                 (simulation-applications :target-type
                                  simulation-application-configs :member-name
                                  "simulationApplications")
                                 (data-sources :target-type data-source-configs
                                  :member-name "dataSources")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (vpc-config :target-type vpcconfig
                                  :member-name "vpcConfig")
                                 (compute :target-type compute :member-name
                                  "compute"))
                                (:shape-name "CreateSimulationJobRequest"))

(smithy/sdk/shapes:define-list create-simulation-job-requests :member
                               simulation-job-request)

(smithy/sdk/shapes:define-output create-simulation-job-response common-lisp:nil
                                 ((arn :target-type arn :member-name "arn")
                                  (status :target-type simulation-job-status
                                   :member-name "status")
                                  (last-started-at :target-type last-started-at
                                   :member-name "lastStartedAt")
                                  (last-updated-at :target-type last-updated-at
                                   :member-name "lastUpdatedAt")
                                  (failure-behavior :target-type
                                   failure-behavior :member-name
                                   "failureBehavior")
                                  (failure-code :target-type
                                   simulation-job-error-code :member-name
                                   "failureCode")
                                  (client-request-token :target-type
                                   client-request-token :member-name
                                   "clientRequestToken")
                                  (output-location :target-type output-location
                                   :member-name "outputLocation")
                                  (logging-config :target-type logging-config
                                   :member-name "loggingConfig")
                                  (max-job-duration-in-seconds :target-type
                                   job-duration :member-name
                                   "maxJobDurationInSeconds")
                                  (simulation-time-millis :target-type
                                   simulation-time-millis :member-name
                                   "simulationTimeMillis")
                                  (iam-role :target-type iam-role :member-name
                                   "iamRole")
                                  (robot-applications :target-type
                                   robot-application-configs :member-name
                                   "robotApplications")
                                  (simulation-applications :target-type
                                   simulation-application-configs :member-name
                                   "simulationApplications")
                                  (data-sources :target-type data-sources
                                   :member-name "dataSources")
                                  (tags :target-type tag-map :member-name
                                   "tags")
                                  (vpc-config :target-type vpcconfig-response
                                   :member-name "vpcConfig")
                                  (compute :target-type compute-response
                                   :member-name "compute"))
                                 (:shape-name "CreateSimulationJobResponse"))

(smithy/sdk/shapes:define-input create-world-export-job-request common-lisp:nil
                                ((client-request-token :target-type
                                  client-request-token :member-name
                                  "clientRequestToken")
                                 (worlds :target-type arns :required
                                  common-lisp:t :member-name "worlds")
                                 (output-location :target-type output-location
                                  :required common-lisp:t :member-name
                                  "outputLocation")
                                 (iam-role :target-type iam-role :required
                                  common-lisp:t :member-name "iamRole")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateWorldExportJobRequest"))

(smithy/sdk/shapes:define-output create-world-export-job-response
                                 common-lisp:nil
                                 ((arn :target-type arn :member-name "arn")
                                  (status :target-type world-export-job-status
                                   :member-name "status")
                                  (created-at :target-type created-at
                                   :member-name "createdAt")
                                  (failure-code :target-type
                                   world-export-job-error-code :member-name
                                   "failureCode")
                                  (client-request-token :target-type
                                   client-request-token :member-name
                                   "clientRequestToken")
                                  (output-location :target-type output-location
                                   :member-name "outputLocation")
                                  (iam-role :target-type iam-role :member-name
                                   "iamRole")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "CreateWorldExportJobResponse"))

(smithy/sdk/shapes:define-input create-world-generation-job-request
                                common-lisp:nil
                                ((client-request-token :target-type
                                  client-request-token :member-name
                                  "clientRequestToken")
                                 (template :target-type arn :required
                                  common-lisp:t :member-name "template")
                                 (world-count :target-type world-count
                                  :required common-lisp:t :member-name
                                  "worldCount")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (world-tags :target-type tag-map :member-name
                                  "worldTags"))
                                (:shape-name "CreateWorldGenerationJobRequest"))

(smithy/sdk/shapes:define-output create-world-generation-job-response
                                 common-lisp:nil
                                 ((arn :target-type arn :member-name "arn")
                                  (status :target-type
                                   world-generation-job-status :member-name
                                   "status")
                                  (created-at :target-type created-at
                                   :member-name "createdAt")
                                  (failure-code :target-type
                                   world-generation-job-error-code :member-name
                                   "failureCode")
                                  (client-request-token :target-type
                                   client-request-token :member-name
                                   "clientRequestToken")
                                  (template :target-type arn :member-name
                                   "template")
                                  (world-count :target-type world-count
                                   :member-name "worldCount")
                                  (tags :target-type tag-map :member-name
                                   "tags")
                                  (world-tags :target-type tag-map :member-name
                                   "worldTags"))
                                 (:shape-name
                                  "CreateWorldGenerationJobResponse"))

(smithy/sdk/shapes:define-input create-world-template-request common-lisp:nil
                                ((client-request-token :target-type
                                  client-request-token :member-name
                                  "clientRequestToken")
                                 (name :target-type template-name :member-name
                                  "name")
                                 (template-body :target-type json :member-name
                                  "templateBody")
                                 (template-location :target-type
                                  template-location :member-name
                                  "templateLocation")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateWorldTemplateRequest"))

(smithy/sdk/shapes:define-output create-world-template-response common-lisp:nil
                                 ((arn :target-type arn :member-name "arn")
                                  (client-request-token :target-type
                                   client-request-token :member-name
                                   "clientRequestToken")
                                  (created-at :target-type created-at
                                   :member-name "createdAt")
                                  (name :target-type template-name :member-name
                                   "name")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "CreateWorldTemplateResponse"))

(smithy/sdk/shapes:define-type created-at smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure data-source common-lisp:nil
                                    ((name :target-type name :member-name
                                      "name")
                                     (s3bucket :target-type s3bucket
                                      :member-name "s3Bucket")
                                     (s3keys :target-type s3key-outputs
                                      :member-name "s3Keys")
                                     (type :target-type data-source-type
                                      :member-name "type")
                                     (destination :target-type path
                                      :member-name "destination"))
                                    (:shape-name "DataSource"))

(smithy/sdk/shapes:define-structure data-source-config common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (s3bucket :target-type s3bucket :required
                                      common-lisp:t :member-name "s3Bucket")
                                     (s3keys :target-type s3keys-or-prefixes
                                      :required common-lisp:t :member-name
                                      "s3Keys")
                                     (type :target-type data-source-type
                                      :member-name "type")
                                     (destination :target-type path
                                      :member-name "destination"))
                                    (:shape-name "DataSourceConfig"))

(smithy/sdk/shapes:define-list data-source-configs :member data-source-config)

(smithy/sdk/shapes:define-list data-source-names :member name)

(smithy/sdk/shapes:define-enum data-source-type
    common-lisp:nil
  (:prefix "Prefix")
  (:archive "Archive")
  (:file "File"))

(smithy/sdk/shapes:define-list data-sources :member data-source)

(smithy/sdk/shapes:define-input delete-fleet-request common-lisp:nil
                                ((fleet :target-type arn :required
                                  common-lisp:t :member-name "fleet"))
                                (:shape-name "DeleteFleetRequest"))

(smithy/sdk/shapes:define-output delete-fleet-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteFleetResponse"))

(smithy/sdk/shapes:define-input delete-robot-application-request
                                common-lisp:nil
                                ((application :target-type arn :required
                                  common-lisp:t :member-name "application")
                                 (application-version :target-type version
                                  :member-name "applicationVersion"))
                                (:shape-name "DeleteRobotApplicationRequest"))

(smithy/sdk/shapes:define-output delete-robot-application-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteRobotApplicationResponse"))

(smithy/sdk/shapes:define-input delete-robot-request common-lisp:nil
                                ((robot :target-type arn :required
                                  common-lisp:t :member-name "robot"))
                                (:shape-name "DeleteRobotRequest"))

(smithy/sdk/shapes:define-output delete-robot-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteRobotResponse"))

(smithy/sdk/shapes:define-input delete-simulation-application-request
                                common-lisp:nil
                                ((application :target-type arn :required
                                  common-lisp:t :member-name "application")
                                 (application-version :target-type version
                                  :member-name "applicationVersion"))
                                (:shape-name
                                 "DeleteSimulationApplicationRequest"))

(smithy/sdk/shapes:define-output delete-simulation-application-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteSimulationApplicationResponse"))

(smithy/sdk/shapes:define-input delete-world-template-request common-lisp:nil
                                ((template :target-type arn :required
                                  common-lisp:t :member-name "template"))
                                (:shape-name "DeleteWorldTemplateRequest"))

(smithy/sdk/shapes:define-output delete-world-template-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteWorldTemplateResponse"))

(smithy/sdk/shapes:define-structure deployment-application-config
                                    common-lisp:nil
                                    ((application :target-type arn :required
                                      common-lisp:t :member-name "application")
                                     (application-version :target-type
                                      deployment-version :required
                                      common-lisp:t :member-name
                                      "applicationVersion")
                                     (launch-config :target-type
                                      deployment-launch-config :required
                                      common-lisp:t :member-name
                                      "launchConfig"))
                                    (:shape-name "DeploymentApplicationConfig"))

(smithy/sdk/shapes:define-list deployment-application-configs :member
                               deployment-application-config)

(smithy/sdk/shapes:define-structure deployment-config common-lisp:nil
                                    ((concurrent-deployment-percentage
                                      :target-type percentage :member-name
                                      "concurrentDeploymentPercentage")
                                     (failure-threshold-percentage :target-type
                                      percentage :member-name
                                      "failureThresholdPercentage")
                                     (robot-deployment-timeout-in-seconds
                                      :target-type deployment-timeout
                                      :member-name
                                      "robotDeploymentTimeoutInSeconds")
                                     (download-condition-file :target-type
                                      s3object :member-name
                                      "downloadConditionFile"))
                                    (:shape-name "DeploymentConfig"))

(smithy/sdk/shapes:define-structure deployment-job common-lisp:nil
                                    ((arn :target-type arn :member-name "arn")
                                     (fleet :target-type arn :member-name
                                      "fleet")
                                     (status :target-type deployment-status
                                      :member-name "status")
                                     (deployment-application-configs
                                      :target-type
                                      deployment-application-configs
                                      :member-name
                                      "deploymentApplicationConfigs")
                                     (deployment-config :target-type
                                      deployment-config :member-name
                                      "deploymentConfig")
                                     (failure-reason :target-type
                                      generic-string :member-name
                                      "failureReason")
                                     (failure-code :target-type
                                      deployment-job-error-code :member-name
                                      "failureCode")
                                     (created-at :target-type created-at
                                      :member-name "createdAt"))
                                    (:shape-name "DeploymentJob"))

(smithy/sdk/shapes:define-enum deployment-job-error-code
    common-lisp:nil
  (:resource-not-found "ResourceNotFound")
  (:environment-setup-error "EnvironmentSetupError")
  (:etag-mismatch "EtagMismatch")
  (:failure-threshold-breached "FailureThresholdBreached")
  (:robot-deployment-aborted "RobotDeploymentAborted")
  (:robot-deployment-no-response "RobotDeploymentNoResponse")
  (:robot-agent-connection-timeout "RobotAgentConnectionTimeout")
  (:greengrass-deployment-failed "GreengrassDeploymentFailed")
  (:invalid-greengrass-group "InvalidGreengrassGroup")
  (:missing-robot-architecture "MissingRobotArchitecture")
  (:missing-robot-application-architecture
   "MissingRobotApplicationArchitecture")
  (:missing-robot-deployment-resource "MissingRobotDeploymentResource")
  (:greengrass-group-version-does-not-exist
   "GreengrassGroupVersionDoesNotExist")
  (:lambda-deleted "LambdaDeleted")
  (:extracting-bundle-failure "ExtractingBundleFailure")
  (:pre-launch-file-failure "PreLaunchFileFailure")
  (:post-launch-file-failure "PostLaunchFileFailure")
  (:bad-permission-error "BadPermissionError")
  (:download-condition-failed "DownloadConditionFailed")
  (:bad-lambda-associated "BadLambdaAssociated")
  (:internal-server-error "InternalServerError")
  (:robot-application-does-not-exist "RobotApplicationDoesNotExist")
  (:deployment-fleet-does-not-exist "DeploymentFleetDoesNotExist")
  (:fleet-deployment-timeout "FleetDeploymentTimeout"))

(smithy/sdk/shapes:define-list deployment-jobs :member deployment-job)

(smithy/sdk/shapes:define-structure deployment-launch-config common-lisp:nil
                                    ((package-name :target-type command
                                      :required common-lisp:t :member-name
                                      "packageName")
                                     (pre-launch-file :target-type path
                                      :member-name "preLaunchFile")
                                     (launch-file :target-type command
                                      :required common-lisp:t :member-name
                                      "launchFile")
                                     (post-launch-file :target-type path
                                      :member-name "postLaunchFile")
                                     (environment-variables :target-type
                                      environment-variable-map :member-name
                                      "environmentVariables"))
                                    (:shape-name "DeploymentLaunchConfig"))

(smithy/sdk/shapes:define-enum deployment-status
    common-lisp:nil
  (:pending "Pending")
  (:preparing "Preparing")
  (:in-progress "InProgress")
  (:failed "Failed")
  (:succeeded "Succeeded")
  (:canceled "Canceled"))

(smithy/sdk/shapes:define-type deployment-timeout smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type deployment-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input deregister-robot-request common-lisp:nil
                                ((fleet :target-type arn :required
                                  common-lisp:t :member-name "fleet")
                                 (robot :target-type arn :required
                                  common-lisp:t :member-name "robot"))
                                (:shape-name "DeregisterRobotRequest"))

(smithy/sdk/shapes:define-output deregister-robot-response common-lisp:nil
                                 ((fleet :target-type arn :member-name "fleet")
                                  (robot :target-type arn :member-name
                                   "robot"))
                                 (:shape-name "DeregisterRobotResponse"))

(smithy/sdk/shapes:define-input describe-deployment-job-request common-lisp:nil
                                ((job :target-type arn :required common-lisp:t
                                  :member-name "job"))
                                (:shape-name "DescribeDeploymentJobRequest"))

(smithy/sdk/shapes:define-output describe-deployment-job-response
                                 common-lisp:nil
                                 ((arn :target-type arn :member-name "arn")
                                  (fleet :target-type arn :member-name "fleet")
                                  (status :target-type deployment-status
                                   :member-name "status")
                                  (deployment-config :target-type
                                   deployment-config :member-name
                                   "deploymentConfig")
                                  (deployment-application-configs :target-type
                                   deployment-application-configs :member-name
                                   "deploymentApplicationConfigs")
                                  (failure-reason :target-type generic-string
                                   :member-name "failureReason")
                                  (failure-code :target-type
                                   deployment-job-error-code :member-name
                                   "failureCode")
                                  (created-at :target-type created-at
                                   :member-name "createdAt")
                                  (robot-deployment-summary :target-type
                                   robot-deployment-summary :member-name
                                   "robotDeploymentSummary")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "DescribeDeploymentJobResponse"))

(smithy/sdk/shapes:define-input describe-fleet-request common-lisp:nil
                                ((fleet :target-type arn :required
                                  common-lisp:t :member-name "fleet"))
                                (:shape-name "DescribeFleetRequest"))

(smithy/sdk/shapes:define-output describe-fleet-response common-lisp:nil
                                 ((name :target-type name :member-name "name")
                                  (arn :target-type arn :member-name "arn")
                                  (robots :target-type robots :member-name
                                   "robots")
                                  (created-at :target-type created-at
                                   :member-name "createdAt")
                                  (last-deployment-status :target-type
                                   deployment-status :member-name
                                   "lastDeploymentStatus")
                                  (last-deployment-job :target-type arn
                                   :member-name "lastDeploymentJob")
                                  (last-deployment-time :target-type created-at
                                   :member-name "lastDeploymentTime")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "DescribeFleetResponse"))

(smithy/sdk/shapes:define-input describe-robot-application-request
                                common-lisp:nil
                                ((application :target-type arn :required
                                  common-lisp:t :member-name "application")
                                 (application-version :target-type version
                                  :member-name "applicationVersion"))
                                (:shape-name "DescribeRobotApplicationRequest"))

(smithy/sdk/shapes:define-output describe-robot-application-response
                                 common-lisp:nil
                                 ((arn :target-type arn :member-name "arn")
                                  (name :target-type name :member-name "name")
                                  (version :target-type version :member-name
                                   "version")
                                  (sources :target-type sources :member-name
                                   "sources")
                                  (robot-software-suite :target-type
                                   robot-software-suite :member-name
                                   "robotSoftwareSuite")
                                  (revision-id :target-type revision-id
                                   :member-name "revisionId")
                                  (last-updated-at :target-type last-updated-at
                                   :member-name "lastUpdatedAt")
                                  (tags :target-type tag-map :member-name
                                   "tags")
                                  (environment :target-type environment
                                   :member-name "environment")
                                  (image-digest :target-type image-digest
                                   :member-name "imageDigest"))
                                 (:shape-name
                                  "DescribeRobotApplicationResponse"))

(smithy/sdk/shapes:define-input describe-robot-request common-lisp:nil
                                ((robot :target-type arn :required
                                  common-lisp:t :member-name "robot"))
                                (:shape-name "DescribeRobotRequest"))

(smithy/sdk/shapes:define-output describe-robot-response common-lisp:nil
                                 ((arn :target-type arn :member-name "arn")
                                  (name :target-type name :member-name "name")
                                  (fleet-arn :target-type arn :member-name
                                   "fleetArn")
                                  (status :target-type robot-status
                                   :member-name "status")
                                  (greengrass-group-id :target-type id
                                   :member-name "greengrassGroupId")
                                  (created-at :target-type created-at
                                   :member-name "createdAt")
                                  (architecture :target-type architecture
                                   :member-name "architecture")
                                  (last-deployment-job :target-type arn
                                   :member-name "lastDeploymentJob")
                                  (last-deployment-time :target-type created-at
                                   :member-name "lastDeploymentTime")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "DescribeRobotResponse"))

(smithy/sdk/shapes:define-input describe-simulation-application-request
                                common-lisp:nil
                                ((application :target-type arn :required
                                  common-lisp:t :member-name "application")
                                 (application-version :target-type version
                                  :member-name "applicationVersion"))
                                (:shape-name
                                 "DescribeSimulationApplicationRequest"))

(smithy/sdk/shapes:define-output describe-simulation-application-response
                                 common-lisp:nil
                                 ((arn :target-type arn :member-name "arn")
                                  (name :target-type name :member-name "name")
                                  (version :target-type version :member-name
                                   "version")
                                  (sources :target-type sources :member-name
                                   "sources")
                                  (simulation-software-suite :target-type
                                   simulation-software-suite :member-name
                                   "simulationSoftwareSuite")
                                  (robot-software-suite :target-type
                                   robot-software-suite :member-name
                                   "robotSoftwareSuite")
                                  (rendering-engine :target-type
                                   rendering-engine :member-name
                                   "renderingEngine")
                                  (revision-id :target-type revision-id
                                   :member-name "revisionId")
                                  (last-updated-at :target-type last-updated-at
                                   :member-name "lastUpdatedAt")
                                  (tags :target-type tag-map :member-name
                                   "tags")
                                  (environment :target-type environment
                                   :member-name "environment")
                                  (image-digest :target-type image-digest
                                   :member-name "imageDigest"))
                                 (:shape-name
                                  "DescribeSimulationApplicationResponse"))

(smithy/sdk/shapes:define-input describe-simulation-job-batch-request
                                common-lisp:nil
                                ((batch :target-type arn :required
                                  common-lisp:t :member-name "batch"))
                                (:shape-name
                                 "DescribeSimulationJobBatchRequest"))

(smithy/sdk/shapes:define-output describe-simulation-job-batch-response
                                 common-lisp:nil
                                 ((arn :target-type arn :member-name "arn")
                                  (status :target-type
                                   simulation-job-batch-status :member-name
                                   "status")
                                  (last-updated-at :target-type last-updated-at
                                   :member-name "lastUpdatedAt")
                                  (created-at :target-type created-at
                                   :member-name "createdAt")
                                  (client-request-token :target-type
                                   client-request-token :member-name
                                   "clientRequestToken")
                                  (batch-policy :target-type batch-policy
                                   :member-name "batchPolicy")
                                  (failure-code :target-type
                                   simulation-job-batch-error-code :member-name
                                   "failureCode")
                                  (failure-reason :target-type generic-string
                                   :member-name "failureReason")
                                  (failed-requests :target-type
                                   failed-create-simulation-job-requests
                                   :member-name "failedRequests")
                                  (pending-requests :target-type
                                   create-simulation-job-requests :member-name
                                   "pendingRequests")
                                  (created-requests :target-type
                                   simulation-job-summaries :member-name
                                   "createdRequests")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name
                                  "DescribeSimulationJobBatchResponse"))

(smithy/sdk/shapes:define-input describe-simulation-job-request common-lisp:nil
                                ((job :target-type arn :required common-lisp:t
                                  :member-name "job"))
                                (:shape-name "DescribeSimulationJobRequest"))

(smithy/sdk/shapes:define-output describe-simulation-job-response
                                 common-lisp:nil
                                 ((arn :target-type arn :member-name "arn")
                                  (name :target-type name :member-name "name")
                                  (status :target-type simulation-job-status
                                   :member-name "status")
                                  (last-started-at :target-type last-started-at
                                   :member-name "lastStartedAt")
                                  (last-updated-at :target-type last-updated-at
                                   :member-name "lastUpdatedAt")
                                  (failure-behavior :target-type
                                   failure-behavior :member-name
                                   "failureBehavior")
                                  (failure-code :target-type
                                   simulation-job-error-code :member-name
                                   "failureCode")
                                  (failure-reason :target-type generic-string
                                   :member-name "failureReason")
                                  (client-request-token :target-type
                                   client-request-token :member-name
                                   "clientRequestToken")
                                  (output-location :target-type output-location
                                   :member-name "outputLocation")
                                  (logging-config :target-type logging-config
                                   :member-name "loggingConfig")
                                  (max-job-duration-in-seconds :target-type
                                   job-duration :member-name
                                   "maxJobDurationInSeconds")
                                  (simulation-time-millis :target-type
                                   simulation-time-millis :member-name
                                   "simulationTimeMillis")
                                  (iam-role :target-type iam-role :member-name
                                   "iamRole")
                                  (robot-applications :target-type
                                   robot-application-configs :member-name
                                   "robotApplications")
                                  (simulation-applications :target-type
                                   simulation-application-configs :member-name
                                   "simulationApplications")
                                  (data-sources :target-type data-sources
                                   :member-name "dataSources")
                                  (tags :target-type tag-map :member-name
                                   "tags")
                                  (vpc-config :target-type vpcconfig-response
                                   :member-name "vpcConfig")
                                  (network-interface :target-type
                                   network-interface :member-name
                                   "networkInterface")
                                  (compute :target-type compute-response
                                   :member-name "compute"))
                                 (:shape-name "DescribeSimulationJobResponse"))

(smithy/sdk/shapes:define-input describe-world-export-job-request
                                common-lisp:nil
                                ((job :target-type arn :required common-lisp:t
                                  :member-name "job"))
                                (:shape-name "DescribeWorldExportJobRequest"))

(smithy/sdk/shapes:define-output describe-world-export-job-response
                                 common-lisp:nil
                                 ((arn :target-type arn :member-name "arn")
                                  (status :target-type world-export-job-status
                                   :member-name "status")
                                  (created-at :target-type created-at
                                   :member-name "createdAt")
                                  (failure-code :target-type
                                   world-export-job-error-code :member-name
                                   "failureCode")
                                  (failure-reason :target-type generic-string
                                   :member-name "failureReason")
                                  (client-request-token :target-type
                                   client-request-token :member-name
                                   "clientRequestToken")
                                  (worlds :target-type arns :member-name
                                   "worlds")
                                  (output-location :target-type output-location
                                   :member-name "outputLocation")
                                  (iam-role :target-type iam-role :member-name
                                   "iamRole")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "DescribeWorldExportJobResponse"))

(smithy/sdk/shapes:define-input describe-world-generation-job-request
                                common-lisp:nil
                                ((job :target-type arn :required common-lisp:t
                                  :member-name "job"))
                                (:shape-name
                                 "DescribeWorldGenerationJobRequest"))

(smithy/sdk/shapes:define-output describe-world-generation-job-response
                                 common-lisp:nil
                                 ((arn :target-type arn :member-name "arn")
                                  (status :target-type
                                   world-generation-job-status :member-name
                                   "status")
                                  (created-at :target-type created-at
                                   :member-name "createdAt")
                                  (failure-code :target-type
                                   world-generation-job-error-code :member-name
                                   "failureCode")
                                  (failure-reason :target-type generic-string
                                   :member-name "failureReason")
                                  (client-request-token :target-type
                                   client-request-token :member-name
                                   "clientRequestToken")
                                  (template :target-type arn :member-name
                                   "template")
                                  (world-count :target-type world-count
                                   :member-name "worldCount")
                                  (finished-worlds-summary :target-type
                                   finished-worlds-summary :member-name
                                   "finishedWorldsSummary")
                                  (tags :target-type tag-map :member-name
                                   "tags")
                                  (world-tags :target-type tag-map :member-name
                                   "worldTags"))
                                 (:shape-name
                                  "DescribeWorldGenerationJobResponse"))

(smithy/sdk/shapes:define-input describe-world-request common-lisp:nil
                                ((world :target-type arn :required
                                  common-lisp:t :member-name "world"))
                                (:shape-name "DescribeWorldRequest"))

(smithy/sdk/shapes:define-output describe-world-response common-lisp:nil
                                 ((arn :target-type arn :member-name "arn")
                                  (generation-job :target-type arn :member-name
                                   "generationJob")
                                  (template :target-type arn :member-name
                                   "template")
                                  (created-at :target-type created-at
                                   :member-name "createdAt")
                                  (tags :target-type tag-map :member-name
                                   "tags")
                                  (world-description-body :target-type json
                                   :member-name "worldDescriptionBody"))
                                 (:shape-name "DescribeWorldResponse"))

(smithy/sdk/shapes:define-input describe-world-template-request common-lisp:nil
                                ((template :target-type arn :required
                                  common-lisp:t :member-name "template"))
                                (:shape-name "DescribeWorldTemplateRequest"))

(smithy/sdk/shapes:define-output describe-world-template-response
                                 common-lisp:nil
                                 ((arn :target-type arn :member-name "arn")
                                  (client-request-token :target-type
                                   client-request-token :member-name
                                   "clientRequestToken")
                                  (name :target-type template-name :member-name
                                   "name")
                                  (created-at :target-type created-at
                                   :member-name "createdAt")
                                  (last-updated-at :target-type last-updated-at
                                   :member-name "lastUpdatedAt")
                                  (tags :target-type tag-map :member-name
                                   "tags")
                                  (version :target-type generic-string
                                   :member-name "version"))
                                 (:shape-name "DescribeWorldTemplateResponse"))

(smithy/sdk/shapes:define-structure environment common-lisp:nil
                                    ((uri :target-type repository-url
                                      :member-name "uri"))
                                    (:shape-name "Environment"))

(smithy/sdk/shapes:define-type environment-variable-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map environment-variable-map :key
                              environment-variable-key :value
                              environment-variable-value)

(smithy/sdk/shapes:define-type environment-variable-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum exit-behavior
    common-lisp:nil
  (:fail "FAIL")
  (:restart "RESTART"))

(smithy/sdk/shapes:define-type failed-at smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure failed-create-simulation-job-request
                                    common-lisp:nil
                                    ((request :target-type
                                      simulation-job-request :member-name
                                      "request")
                                     (failure-reason :target-type
                                      generic-string :member-name
                                      "failureReason")
                                     (failure-code :target-type
                                      simulation-job-error-code :member-name
                                      "failureCode")
                                     (failed-at :target-type failed-at
                                      :member-name "failedAt"))
                                    (:shape-name
                                     "FailedCreateSimulationJobRequest"))

(smithy/sdk/shapes:define-list failed-create-simulation-job-requests :member
                               failed-create-simulation-job-request)

(smithy/sdk/shapes:define-enum failure-behavior
    common-lisp:nil
  (:fail "Fail")
  (:continue "Continue"))

(smithy/sdk/shapes:define-structure failure-summary common-lisp:nil
                                    ((total-failure-count :target-type integer
                                      :member-name "totalFailureCount")
                                     (failures :target-type world-failures
                                      :member-name "failures"))
                                    (:shape-name "FailureSummary"))

(smithy/sdk/shapes:define-structure filter common-lisp:nil
                                    ((name :target-type name :member-name
                                      "name")
                                     (values :target-type filter-values
                                      :member-name "values"))
                                    (:shape-name "Filter"))

(smithy/sdk/shapes:define-list filter-values :member name)

(smithy/sdk/shapes:define-list filters :member filter)

(smithy/sdk/shapes:define-structure finished-worlds-summary common-lisp:nil
                                    ((finished-count :target-type integer
                                      :member-name "finishedCount")
                                     (succeeded-worlds :target-type arns
                                      :member-name "succeededWorlds")
                                     (failure-summary :target-type
                                      failure-summary :member-name
                                      "failureSummary"))
                                    (:shape-name "FinishedWorldsSummary"))

(smithy/sdk/shapes:define-structure fleet common-lisp:nil
                                    ((name :target-type name :member-name
                                      "name")
                                     (arn :target-type arn :member-name "arn")
                                     (created-at :target-type created-at
                                      :member-name "createdAt")
                                     (last-deployment-status :target-type
                                      deployment-status :member-name
                                      "lastDeploymentStatus")
                                     (last-deployment-job :target-type arn
                                      :member-name "lastDeploymentJob")
                                     (last-deployment-time :target-type
                                      created-at :member-name
                                      "lastDeploymentTime"))
                                    (:shape-name "Fleet"))

(smithy/sdk/shapes:define-list fleets :member fleet)

(smithy/sdk/shapes:define-type floorplan-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type gpuunit smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type generic-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type generic-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-world-template-body-request common-lisp:nil
                                ((template :target-type arn :member-name
                                  "template")
                                 (generation-job :target-type arn :member-name
                                  "generationJob"))
                                (:shape-name "GetWorldTemplateBodyRequest"))

(smithy/sdk/shapes:define-output get-world-template-body-response
                                 common-lisp:nil
                                 ((template-body :target-type json :member-name
                                   "templateBody"))
                                 (:shape-name "GetWorldTemplateBodyResponse"))

(smithy/sdk/shapes:define-type iam-role smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error idempotent-parameter-mismatch-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "IdempotentParameterMismatchException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type image-digest smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type interior-count-per-floorplan
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-parameter-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidParameterException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type job-duration smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type json smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type last-started-at
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type last-updated-at
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure launch-config common-lisp:nil
                                    ((package-name :target-type command
                                      :member-name "packageName")
                                     (launch-file :target-type command
                                      :member-name "launchFile")
                                     (environment-variables :target-type
                                      environment-variable-map :member-name
                                      "environmentVariables")
                                     (port-forwarding-config :target-type
                                      port-forwarding-config :member-name
                                      "portForwardingConfig")
                                     (stream-ui :target-type boolean
                                      :member-name "streamUI")
                                     (command :target-type command-list
                                      :member-name "command"))
                                    (:shape-name "LaunchConfig"))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input list-deployment-jobs-request common-lisp:nil
                                ((filters :target-type filters :member-name
                                  "filters")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListDeploymentJobsRequest"))

(smithy/sdk/shapes:define-output list-deployment-jobs-response common-lisp:nil
                                 ((deployment-jobs :target-type deployment-jobs
                                   :member-name "deploymentJobs")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDeploymentJobsResponse"))

(smithy/sdk/shapes:define-input list-fleets-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (filters :target-type filters :member-name
                                  "filters"))
                                (:shape-name "ListFleetsRequest"))

(smithy/sdk/shapes:define-output list-fleets-response common-lisp:nil
                                 ((fleet-details :target-type fleets
                                   :member-name "fleetDetails")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListFleetsResponse"))

(smithy/sdk/shapes:define-input list-robot-applications-request common-lisp:nil
                                ((version-qualifier :target-type
                                  version-qualifier :member-name
                                  "versionQualifier")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (filters :target-type filters :member-name
                                  "filters"))
                                (:shape-name "ListRobotApplicationsRequest"))

(smithy/sdk/shapes:define-output list-robot-applications-response
                                 common-lisp:nil
                                 ((robot-application-summaries :target-type
                                   robot-application-summaries :member-name
                                   "robotApplicationSummaries")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListRobotApplicationsResponse"))

(smithy/sdk/shapes:define-input list-robots-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (filters :target-type filters :member-name
                                  "filters"))
                                (:shape-name "ListRobotsRequest"))

(smithy/sdk/shapes:define-output list-robots-response common-lisp:nil
                                 ((robots :target-type robots :member-name
                                   "robots")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListRobotsResponse"))

(smithy/sdk/shapes:define-input list-simulation-applications-request
                                common-lisp:nil
                                ((version-qualifier :target-type
                                  version-qualifier :member-name
                                  "versionQualifier")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (filters :target-type filters :member-name
                                  "filters"))
                                (:shape-name
                                 "ListSimulationApplicationsRequest"))

(smithy/sdk/shapes:define-output list-simulation-applications-response
                                 common-lisp:nil
                                 ((simulation-application-summaries
                                   :target-type
                                   simulation-application-summaries
                                   :member-name
                                   "simulationApplicationSummaries")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListSimulationApplicationsResponse"))

(smithy/sdk/shapes:define-input list-simulation-job-batches-request
                                common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (filters :target-type filters :member-name
                                  "filters"))
                                (:shape-name "ListSimulationJobBatchesRequest"))

(smithy/sdk/shapes:define-output list-simulation-job-batches-response
                                 common-lisp:nil
                                 ((simulation-job-batch-summaries :target-type
                                   simulation-job-batch-summaries :member-name
                                   "simulationJobBatchSummaries")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListSimulationJobBatchesResponse"))

(smithy/sdk/shapes:define-input list-simulation-jobs-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (filters :target-type filters :member-name
                                  "filters"))
                                (:shape-name "ListSimulationJobsRequest"))

(smithy/sdk/shapes:define-output list-simulation-jobs-response common-lisp:nil
                                 ((simulation-job-summaries :target-type
                                   simulation-job-summaries :required
                                   common-lisp:t :member-name
                                   "simulationJobSummaries")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListSimulationJobsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-world-export-jobs-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (filters :target-type filters :member-name
                                  "filters"))
                                (:shape-name "ListWorldExportJobsRequest"))

(smithy/sdk/shapes:define-output list-world-export-jobs-response
                                 common-lisp:nil
                                 ((world-export-job-summaries :target-type
                                   world-export-job-summaries :required
                                   common-lisp:t :member-name
                                   "worldExportJobSummaries")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListWorldExportJobsResponse"))

(smithy/sdk/shapes:define-input list-world-generation-jobs-request
                                common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (filters :target-type filters :member-name
                                  "filters"))
                                (:shape-name "ListWorldGenerationJobsRequest"))

(smithy/sdk/shapes:define-output list-world-generation-jobs-response
                                 common-lisp:nil
                                 ((world-generation-job-summaries :target-type
                                   world-generation-job-summaries :required
                                   common-lisp:t :member-name
                                   "worldGenerationJobSummaries")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListWorldGenerationJobsResponse"))

(smithy/sdk/shapes:define-input list-world-templates-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListWorldTemplatesRequest"))

(smithy/sdk/shapes:define-output list-world-templates-response common-lisp:nil
                                 ((template-summaries :target-type
                                   template-summaries :member-name
                                   "templateSummaries")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListWorldTemplatesResponse"))

(smithy/sdk/shapes:define-input list-worlds-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (filters :target-type filters :member-name
                                  "filters"))
                                (:shape-name "ListWorldsRequest"))

(smithy/sdk/shapes:define-output list-worlds-response common-lisp:nil
                                 ((world-summaries :target-type world-summaries
                                   :member-name "worldSummaries")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListWorldsResponse"))

(smithy/sdk/shapes:define-structure logging-config common-lisp:nil
                                    ((record-all-ros-topics :target-type
                                      boxed-boolean :member-name
                                      "recordAllRosTopics"))
                                    (:shape-name "LoggingConfig"))

(smithy/sdk/shapes:define-type max-concurrency smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure network-interface common-lisp:nil
                                    ((network-interface-id :target-type
                                      generic-string :member-name
                                      "networkInterfaceId")
                                     (private-ip-address :target-type
                                      generic-string :member-name
                                      "privateIpAddress")
                                     (public-ip-address :target-type
                                      generic-string :member-name
                                      "publicIpAddress"))
                                    (:shape-name "NetworkInterface"))

(smithy/sdk/shapes:define-type non-empty-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-system-port smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure output-location common-lisp:nil
                                    ((s3bucket :target-type s3bucket
                                      :member-name "s3Bucket")
                                     (s3prefix :target-type s3key :member-name
                                      "s3Prefix"))
                                    (:shape-name "OutputLocation"))

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type percent-done smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-type percentage smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type port smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure port-forwarding-config common-lisp:nil
                                    ((port-mappings :target-type
                                      port-mapping-list :member-name
                                      "portMappings"))
                                    (:shape-name "PortForwardingConfig"))

(smithy/sdk/shapes:define-structure port-mapping common-lisp:nil
                                    ((job-port :target-type port :required
                                      common-lisp:t :member-name "jobPort")
                                     (application-port :target-type
                                      non-system-port :required common-lisp:t
                                      :member-name "applicationPort")
                                     (enable-on-public-ip :target-type boolean
                                      :member-name "enableOnPublicIp"))
                                    (:shape-name "PortMapping"))

(smithy/sdk/shapes:define-list port-mapping-list :member port-mapping)

(smithy/sdk/shapes:define-structure progress-detail common-lisp:nil
                                    ((current-progress :target-type
                                      robot-deployment-step :member-name
                                      "currentProgress")
                                     (percent-done :target-type percent-done
                                      :member-name "percentDone")
                                     (estimated-time-remaining-seconds
                                      :target-type generic-integer :member-name
                                      "estimatedTimeRemainingSeconds")
                                     (target-resource :target-type
                                      generic-string :member-name
                                      "targetResource"))
                                    (:shape-name "ProgressDetail"))

(smithy/sdk/shapes:define-input register-robot-request common-lisp:nil
                                ((fleet :target-type arn :required
                                  common-lisp:t :member-name "fleet")
                                 (robot :target-type arn :required
                                  common-lisp:t :member-name "robot"))
                                (:shape-name "RegisterRobotRequest"))

(smithy/sdk/shapes:define-output register-robot-response common-lisp:nil
                                 ((fleet :target-type arn :member-name "fleet")
                                  (robot :target-type arn :member-name
                                   "robot"))
                                 (:shape-name "RegisterRobotResponse"))

(smithy/sdk/shapes:define-structure rendering-engine common-lisp:nil
                                    ((name :target-type rendering-engine-type
                                      :member-name "name")
                                     (version :target-type
                                      rendering-engine-version-type
                                      :member-name "version"))
                                    (:shape-name "RenderingEngine"))

(smithy/sdk/shapes:define-enum rendering-engine-type
    common-lisp:nil
  (:ogre "OGRE"))

(smithy/sdk/shapes:define-type rendering-engine-version-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type repository-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-already-exists-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceAlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input restart-simulation-job-request common-lisp:nil
                                ((job :target-type arn :required common-lisp:t
                                  :member-name "job"))
                                (:shape-name "RestartSimulationJobRequest"))

(smithy/sdk/shapes:define-output restart-simulation-job-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "RestartSimulationJobResponse"))

(smithy/sdk/shapes:define-type revision-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure robot common-lisp:nil
                                    ((arn :target-type arn :member-name "arn")
                                     (name :target-type name :member-name
                                      "name")
                                     (fleet-arn :target-type arn :member-name
                                      "fleetArn")
                                     (status :target-type robot-status
                                      :member-name "status")
                                     (green-grass-group-id :target-type id
                                      :member-name "greenGrassGroupId")
                                     (created-at :target-type created-at
                                      :member-name "createdAt")
                                     (architecture :target-type architecture
                                      :member-name "architecture")
                                     (last-deployment-job :target-type arn
                                      :member-name "lastDeploymentJob")
                                     (last-deployment-time :target-type
                                      created-at :member-name
                                      "lastDeploymentTime"))
                                    (:shape-name "Robot"))

(smithy/sdk/shapes:define-structure robot-application-config common-lisp:nil
                                    ((application :target-type arn :required
                                      common-lisp:t :member-name "application")
                                     (application-version :target-type version
                                      :member-name "applicationVersion")
                                     (launch-config :target-type launch-config
                                      :required common-lisp:t :member-name
                                      "launchConfig")
                                     (upload-configurations :target-type
                                      upload-configurations :member-name
                                      "uploadConfigurations")
                                     (use-default-upload-configurations
                                      :target-type boxed-boolean :member-name
                                      "useDefaultUploadConfigurations")
                                     (tools :target-type tools :member-name
                                      "tools")
                                     (use-default-tools :target-type
                                      boxed-boolean :member-name
                                      "useDefaultTools"))
                                    (:shape-name "RobotApplicationConfig"))

(smithy/sdk/shapes:define-list robot-application-configs :member
                               robot-application-config)

(smithy/sdk/shapes:define-list robot-application-names :member name)

(smithy/sdk/shapes:define-list robot-application-summaries :member
                               robot-application-summary)

(smithy/sdk/shapes:define-structure robot-application-summary common-lisp:nil
                                    ((name :target-type name :member-name
                                      "name")
                                     (arn :target-type arn :member-name "arn")
                                     (version :target-type version :member-name
                                      "version")
                                     (last-updated-at :target-type
                                      last-updated-at :member-name
                                      "lastUpdatedAt")
                                     (robot-software-suite :target-type
                                      robot-software-suite :member-name
                                      "robotSoftwareSuite"))
                                    (:shape-name "RobotApplicationSummary"))

(smithy/sdk/shapes:define-structure robot-deployment common-lisp:nil
                                    ((arn :target-type arn :member-name "arn")
                                     (deployment-start-time :target-type
                                      created-at :member-name
                                      "deploymentStartTime")
                                     (deployment-finish-time :target-type
                                      created-at :member-name
                                      "deploymentFinishTime")
                                     (status :target-type robot-status
                                      :member-name "status")
                                     (progress-detail :target-type
                                      progress-detail :member-name
                                      "progressDetail")
                                     (failure-reason :target-type
                                      generic-string :member-name
                                      "failureReason")
                                     (failure-code :target-type
                                      deployment-job-error-code :member-name
                                      "failureCode"))
                                    (:shape-name "RobotDeployment"))

(smithy/sdk/shapes:define-enum robot-deployment-step
    common-lisp:nil
  (:validating-step "Validating")
  (:downloading-extracting-step "DownloadingExtracting")
  (:executing-download-condition "ExecutingDownloadCondition")
  (:pre-launch-step "ExecutingPreLaunch")
  (:launching-step "Launching")
  (:post-launch-step "ExecutingPostLaunch")
  (:finished-step "Finished"))

(smithy/sdk/shapes:define-list robot-deployment-summary :member
                               robot-deployment)

(smithy/sdk/shapes:define-structure robot-software-suite common-lisp:nil
                                    ((name :target-type
                                      robot-software-suite-type :member-name
                                      "name")
                                     (version :target-type
                                      robot-software-suite-version-type
                                      :member-name "version"))
                                    (:shape-name "RobotSoftwareSuite"))

(smithy/sdk/shapes:define-enum robot-software-suite-type
    common-lisp:nil
  (:ros "ROS")
  (:ros2 "ROS2")
  (:general "General"))

(smithy/sdk/shapes:define-enum robot-software-suite-version-type
    common-lisp:nil
  (:kinetic "Kinetic")
  (:melodic "Melodic")
  (:dashing "Dashing")
  (:foxy "Foxy"))

(smithy/sdk/shapes:define-enum robot-status
    common-lisp:nil
  (:available "Available")
  (:registered "Registered")
  (:pending-new-deployment "PendingNewDeployment")
  (:deploying "Deploying")
  (:failed "Failed")
  (:in-sync "InSync")
  (:no-response "NoResponse"))

(smithy/sdk/shapes:define-list robots :member robot)

(smithy/sdk/shapes:define-type s3bucket smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3etag smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list s3etags :member s3etag)

(smithy/sdk/shapes:define-type s3key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3key-or-prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3key-output common-lisp:nil
                                    ((s3key :target-type s3key-or-prefix
                                      :member-name "s3Key")
                                     (etag :target-type s3etag :member-name
                                      "etag"))
                                    (:shape-name "S3KeyOutput"))

(smithy/sdk/shapes:define-list s3key-outputs :member s3key-output)

(smithy/sdk/shapes:define-list s3keys-or-prefixes :member s3key-or-prefix)

(smithy/sdk/shapes:define-structure s3object common-lisp:nil
                                    ((bucket :target-type s3bucket :required
                                      common-lisp:t :member-name "bucket")
                                     (key :target-type s3key :required
                                      common-lisp:t :member-name "key")
                                     (etag :target-type s3etag :member-name
                                      "etag"))
                                    (:shape-name "S3Object"))

(smithy/sdk/shapes:define-list security-groups :member non-empty-string)

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503))

(smithy/sdk/shapes:define-structure simulation-application-config
                                    common-lisp:nil
                                    ((application :target-type arn :required
                                      common-lisp:t :member-name "application")
                                     (application-version :target-type version
                                      :member-name "applicationVersion")
                                     (launch-config :target-type launch-config
                                      :required common-lisp:t :member-name
                                      "launchConfig")
                                     (upload-configurations :target-type
                                      upload-configurations :member-name
                                      "uploadConfigurations")
                                     (world-configs :target-type world-configs
                                      :member-name "worldConfigs")
                                     (use-default-upload-configurations
                                      :target-type boxed-boolean :member-name
                                      "useDefaultUploadConfigurations")
                                     (tools :target-type tools :member-name
                                      "tools")
                                     (use-default-tools :target-type
                                      boxed-boolean :member-name
                                      "useDefaultTools"))
                                    (:shape-name "SimulationApplicationConfig"))

(smithy/sdk/shapes:define-list simulation-application-configs :member
                               simulation-application-config)

(smithy/sdk/shapes:define-list simulation-application-names :member name)

(smithy/sdk/shapes:define-list simulation-application-summaries :member
                               simulation-application-summary)

(smithy/sdk/shapes:define-structure simulation-application-summary
                                    common-lisp:nil
                                    ((name :target-type name :member-name
                                      "name")
                                     (arn :target-type arn :member-name "arn")
                                     (version :target-type version :member-name
                                      "version")
                                     (last-updated-at :target-type
                                      last-updated-at :member-name
                                      "lastUpdatedAt")
                                     (robot-software-suite :target-type
                                      robot-software-suite :member-name
                                      "robotSoftwareSuite")
                                     (simulation-software-suite :target-type
                                      simulation-software-suite :member-name
                                      "simulationSoftwareSuite"))
                                    (:shape-name
                                     "SimulationApplicationSummary"))

(smithy/sdk/shapes:define-structure simulation-job common-lisp:nil
                                    ((arn :target-type arn :member-name "arn")
                                     (name :target-type name :member-name
                                      "name")
                                     (status :target-type simulation-job-status
                                      :member-name "status")
                                     (last-started-at :target-type
                                      last-started-at :member-name
                                      "lastStartedAt")
                                     (last-updated-at :target-type
                                      last-updated-at :member-name
                                      "lastUpdatedAt")
                                     (failure-behavior :target-type
                                      failure-behavior :member-name
                                      "failureBehavior")
                                     (failure-code :target-type
                                      simulation-job-error-code :member-name
                                      "failureCode")
                                     (failure-reason :target-type
                                      generic-string :member-name
                                      "failureReason")
                                     (client-request-token :target-type
                                      client-request-token :member-name
                                      "clientRequestToken")
                                     (output-location :target-type
                                      output-location :member-name
                                      "outputLocation")
                                     (logging-config :target-type
                                      logging-config :member-name
                                      "loggingConfig")
                                     (max-job-duration-in-seconds :target-type
                                      job-duration :member-name
                                      "maxJobDurationInSeconds")
                                     (simulation-time-millis :target-type
                                      simulation-time-millis :member-name
                                      "simulationTimeMillis")
                                     (iam-role :target-type iam-role
                                      :member-name "iamRole")
                                     (robot-applications :target-type
                                      robot-application-configs :member-name
                                      "robotApplications")
                                     (simulation-applications :target-type
                                      simulation-application-configs
                                      :member-name "simulationApplications")
                                     (data-sources :target-type data-sources
                                      :member-name "dataSources")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (vpc-config :target-type
                                      vpcconfig-response :member-name
                                      "vpcConfig")
                                     (network-interface :target-type
                                      network-interface :member-name
                                      "networkInterface")
                                     (compute :target-type compute-response
                                      :member-name "compute"))
                                    (:shape-name "SimulationJob"))

(smithy/sdk/shapes:define-enum simulation-job-batch-error-code
    common-lisp:nil
  (:internal-service-error "InternalServiceError"))

(smithy/sdk/shapes:define-enum simulation-job-batch-status
    common-lisp:nil
  (:pending "Pending")
  (:in-progress "InProgress")
  (:failed "Failed")
  (:completed "Completed")
  (:canceled "Canceled")
  (:canceling "Canceling")
  (:completing "Completing")
  (:timing-out "TimingOut")
  (:timed-out "TimedOut"))

(smithy/sdk/shapes:define-list simulation-job-batch-summaries :member
                               simulation-job-batch-summary)

(smithy/sdk/shapes:define-structure simulation-job-batch-summary
                                    common-lisp:nil
                                    ((arn :target-type arn :member-name "arn")
                                     (last-updated-at :target-type
                                      last-updated-at :member-name
                                      "lastUpdatedAt")
                                     (created-at :target-type created-at
                                      :member-name "createdAt")
                                     (status :target-type
                                      simulation-job-batch-status :member-name
                                      "status")
                                     (failed-request-count :target-type integer
                                      :member-name "failedRequestCount")
                                     (pending-request-count :target-type
                                      integer :member-name
                                      "pendingRequestCount")
                                     (created-request-count :target-type
                                      integer :member-name
                                      "createdRequestCount"))
                                    (:shape-name "SimulationJobBatchSummary"))

(smithy/sdk/shapes:define-enum simulation-job-error-code
    common-lisp:nil
  (:internal-service-error "InternalServiceError")
  (:robot-application-crash "RobotApplicationCrash")
  (:simulation-application-crash "SimulationApplicationCrash")
  (:robot-application-health-check-failure "RobotApplicationHealthCheckFailure")
  (:simulation-application-health-check-failure
   "SimulationApplicationHealthCheckFailure")
  (:bad-permissions-robot-application "BadPermissionsRobotApplication")
  (:bad-permissions-simulation-application
   "BadPermissionsSimulationApplication")
  (:bad-permissions-s3object "BadPermissionsS3Object")
  (:bad-permissions-s3output "BadPermissionsS3Output")
  (:bad-permissions-cloudwatch-logs "BadPermissionsCloudwatchLogs")
  (:subnet-ip-limit-exceeded "SubnetIpLimitExceeded")
  (:enilimit-exceeded "ENILimitExceeded")
  (:bad-permissions-user-credentials "BadPermissionsUserCredentials")
  (:invalid-bundle-robot-application "InvalidBundleRobotApplication")
  (:invalid-bundle-simulation-application "InvalidBundleSimulationApplication")
  (:invalid-s3resource "InvalidS3Resource")
  (:throttling-error "ThrottlingError")
  (:limit-exceeded "LimitExceeded")
  (:mismatched-etag "MismatchedEtag")
  (:robot-application-version-mismatched-etag
   "RobotApplicationVersionMismatchedEtag")
  (:simulation-application-version-mismatched-etag
   "SimulationApplicationVersionMismatchedEtag")
  (:resource-not-found "ResourceNotFound")
  (:request-throttled "RequestThrottled")
  (:batch-timed-out "BatchTimedOut")
  (:batch-canceled "BatchCanceled")
  (:invalid-input "InvalidInput")
  (:wrong-region-s3bucket "WrongRegionS3Bucket")
  (:wrong-region-s3output "WrongRegionS3Output")
  (:wrong-region-robot-application "WrongRegionRobotApplication")
  (:wrong-region-simulation-application "WrongRegionSimulationApplication")
  (:upload-content-mismatch-error "UploadContentMismatchError"))

(smithy/sdk/shapes:define-structure simulation-job-request common-lisp:nil
                                    ((output-location :target-type
                                      output-location :member-name
                                      "outputLocation")
                                     (logging-config :target-type
                                      logging-config :member-name
                                      "loggingConfig")
                                     (max-job-duration-in-seconds :target-type
                                      job-duration :required common-lisp:t
                                      :member-name "maxJobDurationInSeconds")
                                     (iam-role :target-type iam-role
                                      :member-name "iamRole")
                                     (failure-behavior :target-type
                                      failure-behavior :member-name
                                      "failureBehavior")
                                     (use-default-applications :target-type
                                      boxed-boolean :member-name
                                      "useDefaultApplications")
                                     (robot-applications :target-type
                                      robot-application-configs :member-name
                                      "robotApplications")
                                     (simulation-applications :target-type
                                      simulation-application-configs
                                      :member-name "simulationApplications")
                                     (data-sources :target-type
                                      data-source-configs :member-name
                                      "dataSources")
                                     (vpc-config :target-type vpcconfig
                                      :member-name "vpcConfig")
                                     (compute :target-type compute :member-name
                                      "compute")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "SimulationJobRequest"))

(smithy/sdk/shapes:define-enum simulation-job-status
    common-lisp:nil
  (:pending "Pending")
  (:preparing "Preparing")
  (:running "Running")
  (:restarting "Restarting")
  (:completed "Completed")
  (:failed "Failed")
  (:running-failed "RunningFailed")
  (:terminating "Terminating")
  (:terminated "Terminated")
  (:canceled "Canceled"))

(smithy/sdk/shapes:define-list simulation-job-summaries :member
                               simulation-job-summary)

(smithy/sdk/shapes:define-structure simulation-job-summary common-lisp:nil
                                    ((arn :target-type arn :member-name "arn")
                                     (last-updated-at :target-type
                                      last-updated-at :member-name
                                      "lastUpdatedAt")
                                     (name :target-type name :member-name
                                      "name")
                                     (status :target-type simulation-job-status
                                      :member-name "status")
                                     (simulation-application-names :target-type
                                      simulation-application-names :member-name
                                      "simulationApplicationNames")
                                     (robot-application-names :target-type
                                      robot-application-names :member-name
                                      "robotApplicationNames")
                                     (data-source-names :target-type
                                      data-source-names :member-name
                                      "dataSourceNames")
                                     (compute-type :target-type compute-type
                                      :member-name "computeType"))
                                    (:shape-name "SimulationJobSummary"))

(smithy/sdk/shapes:define-list simulation-jobs :member simulation-job)

(smithy/sdk/shapes:define-structure simulation-software-suite common-lisp:nil
                                    ((name :target-type
                                      simulation-software-suite-type
                                      :member-name "name")
                                     (version :target-type
                                      simulation-software-suite-version-type
                                      :member-name "version"))
                                    (:shape-name "SimulationSoftwareSuite"))

(smithy/sdk/shapes:define-enum simulation-software-suite-type
    common-lisp:nil
  (:gazebo "Gazebo")
  (:rosbag-play "RosbagPlay")
  (:simulation-runtime "SimulationRuntime"))

(smithy/sdk/shapes:define-type simulation-software-suite-version-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type simulation-time-millis
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type simulation-unit smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure source common-lisp:nil
                                    ((s3bucket :target-type s3bucket
                                      :member-name "s3Bucket")
                                     (s3key :target-type s3key :member-name
                                      "s3Key")
                                     (etag :target-type s3etag :member-name
                                      "etag")
                                     (architecture :target-type architecture
                                      :member-name "architecture"))
                                    (:shape-name "Source"))

(smithy/sdk/shapes:define-structure source-config common-lisp:nil
                                    ((s3bucket :target-type s3bucket
                                      :member-name "s3Bucket")
                                     (s3key :target-type s3key :member-name
                                      "s3Key")
                                     (architecture :target-type architecture
                                      :member-name "architecture"))
                                    (:shape-name "SourceConfig"))

(smithy/sdk/shapes:define-list source-configs :member source-config)

(smithy/sdk/shapes:define-list sources :member source)

(smithy/sdk/shapes:define-input start-simulation-job-batch-request
                                common-lisp:nil
                                ((client-request-token :target-type
                                  client-request-token :member-name
                                  "clientRequestToken")
                                 (batch-policy :target-type batch-policy
                                  :member-name "batchPolicy")
                                 (create-simulation-job-requests :target-type
                                  create-simulation-job-requests :required
                                  common-lisp:t :member-name
                                  "createSimulationJobRequests")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "StartSimulationJobBatchRequest"))

(smithy/sdk/shapes:define-output start-simulation-job-batch-response
                                 common-lisp:nil
                                 ((arn :target-type arn :member-name "arn")
                                  (status :target-type
                                   simulation-job-batch-status :member-name
                                   "status")
                                  (created-at :target-type created-at
                                   :member-name "createdAt")
                                  (client-request-token :target-type
                                   client-request-token :member-name
                                   "clientRequestToken")
                                  (batch-policy :target-type batch-policy
                                   :member-name "batchPolicy")
                                  (failure-code :target-type
                                   simulation-job-batch-error-code :member-name
                                   "failureCode")
                                  (failure-reason :target-type generic-string
                                   :member-name "failureReason")
                                  (failed-requests :target-type
                                   failed-create-simulation-job-requests
                                   :member-name "failedRequests")
                                  (pending-requests :target-type
                                   create-simulation-job-requests :member-name
                                   "pendingRequests")
                                  (created-requests :target-type
                                   simulation-job-summaries :member-name
                                   "createdRequests")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name
                                  "StartSimulationJobBatchResponse"))

(smithy/sdk/shapes:define-list subnets :member non-empty-string)

(smithy/sdk/shapes:define-input sync-deployment-job-request common-lisp:nil
                                ((client-request-token :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "clientRequestToken")
                                 (fleet :target-type arn :required
                                  common-lisp:t :member-name "fleet"))
                                (:shape-name "SyncDeploymentJobRequest"))

(smithy/sdk/shapes:define-output sync-deployment-job-response common-lisp:nil
                                 ((arn :target-type arn :member-name "arn")
                                  (fleet :target-type arn :member-name "fleet")
                                  (status :target-type deployment-status
                                   :member-name "status")
                                  (deployment-config :target-type
                                   deployment-config :member-name
                                   "deploymentConfig")
                                  (deployment-application-configs :target-type
                                   deployment-application-configs :member-name
                                   "deploymentApplicationConfigs")
                                  (failure-reason :target-type generic-string
                                   :member-name "failureReason")
                                  (failure-code :target-type
                                   deployment-job-error-code :member-name
                                   "failureCode")
                                  (created-at :target-type created-at
                                   :member-name "createdAt"))
                                 (:shape-name "SyncDeploymentJobResponse"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure template-location common-lisp:nil
                                    ((s3bucket :target-type s3bucket :required
                                      common-lisp:t :member-name "s3Bucket")
                                     (s3key :target-type s3key :required
                                      common-lisp:t :member-name "s3Key"))
                                    (:shape-name "TemplateLocation"))

(smithy/sdk/shapes:define-type template-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list template-summaries :member template-summary)

(smithy/sdk/shapes:define-structure template-summary common-lisp:nil
                                    ((arn :target-type arn :member-name "arn")
                                     (created-at :target-type created-at
                                      :member-name "createdAt")
                                     (last-updated-at :target-type
                                      last-updated-at :member-name
                                      "lastUpdatedAt")
                                     (name :target-type template-name
                                      :member-name "name")
                                     (version :target-type generic-string
                                      :member-name "version"))
                                    (:shape-name "TemplateSummary"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure tool common-lisp:nil
                                    ((stream-ui :target-type boxed-boolean
                                      :member-name "streamUI")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (command :target-type unrestricted-command
                                      :required common-lisp:t :member-name
                                      "command")
                                     (stream-output-to-cloud-watch :target-type
                                      boxed-boolean :member-name
                                      "streamOutputToCloudWatch")
                                     (exit-behavior :target-type exit-behavior
                                      :member-name "exitBehavior"))
                                    (:shape-name "Tool"))

(smithy/sdk/shapes:define-list tools :member tool)

(smithy/sdk/shapes:define-type unrestricted-command
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-robot-application-request
                                common-lisp:nil
                                ((application :target-type arn :required
                                  common-lisp:t :member-name "application")
                                 (sources :target-type source-configs
                                  :member-name "sources")
                                 (robot-software-suite :target-type
                                  robot-software-suite :required common-lisp:t
                                  :member-name "robotSoftwareSuite")
                                 (current-revision-id :target-type revision-id
                                  :member-name "currentRevisionId")
                                 (environment :target-type environment
                                  :member-name "environment"))
                                (:shape-name "UpdateRobotApplicationRequest"))

(smithy/sdk/shapes:define-output update-robot-application-response
                                 common-lisp:nil
                                 ((arn :target-type arn :member-name "arn")
                                  (name :target-type name :member-name "name")
                                  (version :target-type version :member-name
                                   "version")
                                  (sources :target-type sources :member-name
                                   "sources")
                                  (robot-software-suite :target-type
                                   robot-software-suite :member-name
                                   "robotSoftwareSuite")
                                  (last-updated-at :target-type last-updated-at
                                   :member-name "lastUpdatedAt")
                                  (revision-id :target-type revision-id
                                   :member-name "revisionId")
                                  (environment :target-type environment
                                   :member-name "environment"))
                                 (:shape-name "UpdateRobotApplicationResponse"))

(smithy/sdk/shapes:define-input update-simulation-application-request
                                common-lisp:nil
                                ((application :target-type arn :required
                                  common-lisp:t :member-name "application")
                                 (sources :target-type source-configs
                                  :member-name "sources")
                                 (simulation-software-suite :target-type
                                  simulation-software-suite :required
                                  common-lisp:t :member-name
                                  "simulationSoftwareSuite")
                                 (robot-software-suite :target-type
                                  robot-software-suite :required common-lisp:t
                                  :member-name "robotSoftwareSuite")
                                 (rendering-engine :target-type
                                  rendering-engine :member-name
                                  "renderingEngine")
                                 (current-revision-id :target-type revision-id
                                  :member-name "currentRevisionId")
                                 (environment :target-type environment
                                  :member-name "environment"))
                                (:shape-name
                                 "UpdateSimulationApplicationRequest"))

(smithy/sdk/shapes:define-output update-simulation-application-response
                                 common-lisp:nil
                                 ((arn :target-type arn :member-name "arn")
                                  (name :target-type name :member-name "name")
                                  (version :target-type version :member-name
                                   "version")
                                  (sources :target-type sources :member-name
                                   "sources")
                                  (simulation-software-suite :target-type
                                   simulation-software-suite :member-name
                                   "simulationSoftwareSuite")
                                  (robot-software-suite :target-type
                                   robot-software-suite :member-name
                                   "robotSoftwareSuite")
                                  (rendering-engine :target-type
                                   rendering-engine :member-name
                                   "renderingEngine")
                                  (last-updated-at :target-type last-updated-at
                                   :member-name "lastUpdatedAt")
                                  (revision-id :target-type revision-id
                                   :member-name "revisionId")
                                  (environment :target-type environment
                                   :member-name "environment"))
                                 (:shape-name
                                  "UpdateSimulationApplicationResponse"))

(smithy/sdk/shapes:define-input update-world-template-request common-lisp:nil
                                ((template :target-type arn :required
                                  common-lisp:t :member-name "template")
                                 (name :target-type template-name :member-name
                                  "name")
                                 (template-body :target-type json :member-name
                                  "templateBody")
                                 (template-location :target-type
                                  template-location :member-name
                                  "templateLocation"))
                                (:shape-name "UpdateWorldTemplateRequest"))

(smithy/sdk/shapes:define-output update-world-template-response common-lisp:nil
                                 ((arn :target-type arn :member-name "arn")
                                  (name :target-type template-name :member-name
                                   "name")
                                  (created-at :target-type created-at
                                   :member-name "createdAt")
                                  (last-updated-at :target-type last-updated-at
                                   :member-name "lastUpdatedAt"))
                                 (:shape-name "UpdateWorldTemplateResponse"))

(smithy/sdk/shapes:define-enum upload-behavior
    common-lisp:nil
  (:upload-on-terminate "UPLOAD_ON_TERMINATE")
  (:upload-rolling-auto-remove "UPLOAD_ROLLING_AUTO_REMOVE"))

(smithy/sdk/shapes:define-structure upload-configuration common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (path :target-type path :required
                                      common-lisp:t :member-name "path")
                                     (upload-behavior :target-type
                                      upload-behavior :required common-lisp:t
                                      :member-name "uploadBehavior"))
                                    (:shape-name "UploadConfiguration"))

(smithy/sdk/shapes:define-list upload-configurations :member
                               upload-configuration)

(smithy/sdk/shapes:define-structure vpcconfig common-lisp:nil
                                    ((subnets :target-type subnets :required
                                      common-lisp:t :member-name "subnets")
                                     (security-groups :target-type
                                      security-groups :member-name
                                      "securityGroups")
                                     (assign-public-ip :target-type boolean
                                      :member-name "assignPublicIp"))
                                    (:shape-name "VPCConfig"))

(smithy/sdk/shapes:define-structure vpcconfig-response common-lisp:nil
                                    ((subnets :target-type subnets :member-name
                                      "subnets")
                                     (security-groups :target-type
                                      security-groups :member-name
                                      "securityGroups")
                                     (vpc-id :target-type generic-string
                                      :member-name "vpcId")
                                     (assign-public-ip :target-type boolean
                                      :member-name "assignPublicIp"))
                                    (:shape-name "VPCConfigResponse"))

(smithy/sdk/shapes:define-type version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type version-qualifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure world-config common-lisp:nil
                                    ((world :target-type arn :member-name
                                      "world"))
                                    (:shape-name "WorldConfig"))

(smithy/sdk/shapes:define-list world-configs :member world-config)

(smithy/sdk/shapes:define-structure world-count common-lisp:nil
                                    ((floorplan-count :target-type
                                      floorplan-count :member-name
                                      "floorplanCount")
                                     (interior-count-per-floorplan :target-type
                                      interior-count-per-floorplan :member-name
                                      "interiorCountPerFloorplan"))
                                    (:shape-name "WorldCount"))

(smithy/sdk/shapes:define-enum world-export-job-error-code
    common-lisp:nil
  (:internal-service-error "InternalServiceError")
  (:limit-exceeded "LimitExceeded")
  (:resource-not-found "ResourceNotFound")
  (:request-throttled "RequestThrottled")
  (:invalid-input "InvalidInput")
  (:access-denied "AccessDenied"))

(smithy/sdk/shapes:define-enum world-export-job-status
    common-lisp:nil
  (:pending "Pending")
  (:running "Running")
  (:completed "Completed")
  (:failed "Failed")
  (:canceling "Canceling")
  (:canceled "Canceled"))

(smithy/sdk/shapes:define-list world-export-job-summaries :member
                               world-export-job-summary)

(smithy/sdk/shapes:define-structure world-export-job-summary common-lisp:nil
                                    ((arn :target-type arn :member-name "arn")
                                     (status :target-type
                                      world-export-job-status :member-name
                                      "status")
                                     (created-at :target-type created-at
                                      :member-name "createdAt")
                                     (worlds :target-type arns :member-name
                                      "worlds")
                                     (output-location :target-type
                                      output-location :member-name
                                      "outputLocation"))
                                    (:shape-name "WorldExportJobSummary"))

(smithy/sdk/shapes:define-structure world-failure common-lisp:nil
                                    ((failure-code :target-type
                                      world-generation-job-error-code
                                      :member-name "failureCode")
                                     (sample-failure-reason :target-type
                                      generic-string :member-name
                                      "sampleFailureReason")
                                     (failure-count :target-type integer
                                      :member-name "failureCount"))
                                    (:shape-name "WorldFailure"))

(smithy/sdk/shapes:define-list world-failures :member world-failure)

(smithy/sdk/shapes:define-enum world-generation-job-error-code
    common-lisp:nil
  (:internal-service-error "InternalServiceError")
  (:limit-exceeded "LimitExceeded")
  (:resource-not-found "ResourceNotFound")
  (:request-throttled "RequestThrottled")
  (:invalid-input "InvalidInput")
  (:all-world-generation-failed "AllWorldGenerationFailed"))

(smithy/sdk/shapes:define-enum world-generation-job-status
    common-lisp:nil
  (:pending "Pending")
  (:running "Running")
  (:completed "Completed")
  (:failed "Failed")
  (:partial-failed "PartialFailed")
  (:canceling "Canceling")
  (:canceled "Canceled"))

(smithy/sdk/shapes:define-list world-generation-job-summaries :member
                               world-generation-job-summary)

(smithy/sdk/shapes:define-structure world-generation-job-summary
                                    common-lisp:nil
                                    ((arn :target-type arn :member-name "arn")
                                     (template :target-type arn :member-name
                                      "template")
                                     (created-at :target-type created-at
                                      :member-name "createdAt")
                                     (status :target-type
                                      world-generation-job-status :member-name
                                      "status")
                                     (world-count :target-type world-count
                                      :member-name "worldCount")
                                     (succeeded-world-count :target-type
                                      integer :member-name
                                      "succeededWorldCount")
                                     (failed-world-count :target-type integer
                                      :member-name "failedWorldCount"))
                                    (:shape-name "WorldGenerationJobSummary"))

(smithy/sdk/shapes:define-list world-summaries :member world-summary)

(smithy/sdk/shapes:define-structure world-summary common-lisp:nil
                                    ((arn :target-type arn :member-name "arn")
                                     (created-at :target-type created-at
                                      :member-name "createdAt")
                                     (generation-job :target-type arn
                                      :member-name "generationJob")
                                     (template :target-type arn :member-name
                                      "template"))
                                    (:shape-name "WorldSummary"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation batch-delete-worlds :shape-name
                                       "BatchDeleteWorlds" :input
                                       batch-delete-worlds-request :output
                                       batch-delete-worlds-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        throttling-exception)
                                       :method "POST" :uri "/batchDeleteWorlds"
                                       :code 200)

(smithy/sdk/operation:define-operation batch-describe-simulation-job
                                       :shape-name "BatchDescribeSimulationJob"
                                       :input
                                       batch-describe-simulation-job-request
                                       :output
                                       batch-describe-simulation-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/batchDescribeSimulationJob" :code 200)

(smithy/sdk/operation:define-operation cancel-deployment-job :shape-name
                                       "CancelDeploymentJob" :input
                                       cancel-deployment-job-request :output
                                       cancel-deployment-job-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/cancelDeploymentJob" :code 200)

(smithy/sdk/operation:define-operation cancel-simulation-job :shape-name
                                       "CancelSimulationJob" :input
                                       cancel-simulation-job-request :output
                                       cancel-simulation-job-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/cancelSimulationJob" :code 200)

(smithy/sdk/operation:define-operation cancel-simulation-job-batch :shape-name
                                       "CancelSimulationJobBatch" :input
                                       cancel-simulation-job-batch-request
                                       :output
                                       cancel-simulation-job-batch-response
                                       :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/cancelSimulationJobBatch" :code 200)

(smithy/sdk/operation:define-operation cancel-world-export-job :shape-name
                                       "CancelWorldExportJob" :input
                                       cancel-world-export-job-request :output
                                       cancel-world-export-job-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/cancelWorldExportJob" :code 200)

(smithy/sdk/operation:define-operation cancel-world-generation-job :shape-name
                                       "CancelWorldGenerationJob" :input
                                       cancel-world-generation-job-request
                                       :output
                                       cancel-world-generation-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/cancelWorldGenerationJob" :code 200)

(smithy/sdk/operation:define-operation create-deployment-job :shape-name
                                       "CreateDeploymentJob" :input
                                       create-deployment-job-request :output
                                       create-deployment-job-response :errors
                                       (concurrent-deployment-exception
                                        idempotent-parameter-mismatch-exception
                                        internal-server-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/createDeploymentJob" :code 200)

(smithy/sdk/operation:define-operation create-fleet :shape-name "CreateFleet"
                                       :input create-fleet-request :output
                                       create-fleet-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        throttling-exception)
                                       :method "POST" :uri "/createFleet" :code
                                       200)

(smithy/sdk/operation:define-operation create-robot :shape-name "CreateRobot"
                                       :input create-robot-request :output
                                       create-robot-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        throttling-exception)
                                       :method "POST" :uri "/createRobot" :code
                                       200)

(smithy/sdk/operation:define-operation create-robot-application :shape-name
                                       "CreateRobotApplication" :input
                                       create-robot-application-request :output
                                       create-robot-application-response
                                       :errors
                                       (idempotent-parameter-mismatch-exception
                                        internal-server-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/createRobotApplication" :code 200)

(smithy/sdk/operation:define-operation create-robot-application-version
                                       :shape-name
                                       "CreateRobotApplicationVersion" :input
                                       create-robot-application-version-request
                                       :output
                                       create-robot-application-version-response
                                       :errors
                                       (idempotent-parameter-mismatch-exception
                                        internal-server-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/createRobotApplicationVersion" :code
                                       200)

(smithy/sdk/operation:define-operation create-simulation-application
                                       :shape-name
                                       "CreateSimulationApplication" :input
                                       create-simulation-application-request
                                       :output
                                       create-simulation-application-response
                                       :errors
                                       (idempotent-parameter-mismatch-exception
                                        internal-server-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/createSimulationApplication" :code 200)

(smithy/sdk/operation:define-operation create-simulation-application-version
                                       :shape-name
                                       "CreateSimulationApplicationVersion"
                                       :input
                                       create-simulation-application-version-request
                                       :output
                                       create-simulation-application-version-response
                                       :errors
                                       (idempotent-parameter-mismatch-exception
                                        internal-server-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/createSimulationApplicationVersion"
                                       :code 200)

(smithy/sdk/operation:define-operation create-simulation-job :shape-name
                                       "CreateSimulationJob" :input
                                       create-simulation-job-request :output
                                       create-simulation-job-response :errors
                                       (idempotent-parameter-mismatch-exception
                                        internal-server-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/createSimulationJob" :code 200)

(smithy/sdk/operation:define-operation create-world-export-job :shape-name
                                       "CreateWorldExportJob" :input
                                       create-world-export-job-request :output
                                       create-world-export-job-response :errors
                                       (idempotent-parameter-mismatch-exception
                                        internal-server-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/createWorldExportJob" :code 200)

(smithy/sdk/operation:define-operation create-world-generation-job :shape-name
                                       "CreateWorldGenerationJob" :input
                                       create-world-generation-job-request
                                       :output
                                       create-world-generation-job-response
                                       :errors
                                       (idempotent-parameter-mismatch-exception
                                        internal-server-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/createWorldGenerationJob" :code 200)

(smithy/sdk/operation:define-operation create-world-template :shape-name
                                       "CreateWorldTemplate" :input
                                       create-world-template-request :output
                                       create-world-template-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/createWorldTemplate" :code 200)

(smithy/sdk/operation:define-operation delete-fleet :shape-name "DeleteFleet"
                                       :input delete-fleet-request :output
                                       delete-fleet-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        throttling-exception)
                                       :method "POST" :uri "/deleteFleet" :code
                                       200)

(smithy/sdk/operation:define-operation delete-robot :shape-name "DeleteRobot"
                                       :input delete-robot-request :output
                                       delete-robot-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        throttling-exception)
                                       :method "POST" :uri "/deleteRobot" :code
                                       200)

(smithy/sdk/operation:define-operation delete-robot-application :shape-name
                                       "DeleteRobotApplication" :input
                                       delete-robot-application-request :output
                                       delete-robot-application-response
                                       :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/deleteRobotApplication" :code 200)

(smithy/sdk/operation:define-operation delete-simulation-application
                                       :shape-name
                                       "DeleteSimulationApplication" :input
                                       delete-simulation-application-request
                                       :output
                                       delete-simulation-application-response
                                       :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/deleteSimulationApplication" :code 200)

(smithy/sdk/operation:define-operation delete-world-template :shape-name
                                       "DeleteWorldTemplate" :input
                                       delete-world-template-request :output
                                       delete-world-template-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/deleteWorldTemplate" :code 200)

(smithy/sdk/operation:define-operation deregister-robot :shape-name
                                       "DeregisterRobot" :input
                                       deregister-robot-request :output
                                       deregister-robot-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri "/deregisterRobot"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-deployment-job :shape-name
                                       "DescribeDeploymentJob" :input
                                       describe-deployment-job-request :output
                                       describe-deployment-job-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/describeDeploymentJob" :code 200)

(smithy/sdk/operation:define-operation describe-fleet :shape-name
                                       "DescribeFleet" :input
                                       describe-fleet-request :output
                                       describe-fleet-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri "/describeFleet"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-robot :shape-name
                                       "DescribeRobot" :input
                                       describe-robot-request :output
                                       describe-robot-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri "/describeRobot"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-robot-application :shape-name
                                       "DescribeRobotApplication" :input
                                       describe-robot-application-request
                                       :output
                                       describe-robot-application-response
                                       :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/describeRobotApplication" :code 200)

(smithy/sdk/operation:define-operation describe-simulation-application
                                       :shape-name
                                       "DescribeSimulationApplication" :input
                                       describe-simulation-application-request
                                       :output
                                       describe-simulation-application-response
                                       :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/describeSimulationApplication" :code
                                       200)

(smithy/sdk/operation:define-operation describe-simulation-job :shape-name
                                       "DescribeSimulationJob" :input
                                       describe-simulation-job-request :output
                                       describe-simulation-job-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/describeSimulationJob" :code 200)

(smithy/sdk/operation:define-operation describe-simulation-job-batch
                                       :shape-name "DescribeSimulationJobBatch"
                                       :input
                                       describe-simulation-job-batch-request
                                       :output
                                       describe-simulation-job-batch-response
                                       :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/describeSimulationJobBatch" :code 200)

(smithy/sdk/operation:define-operation describe-world :shape-name
                                       "DescribeWorld" :input
                                       describe-world-request :output
                                       describe-world-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri "/describeWorld"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-world-export-job :shape-name
                                       "DescribeWorldExportJob" :input
                                       describe-world-export-job-request
                                       :output
                                       describe-world-export-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/describeWorldExportJob" :code 200)

(smithy/sdk/operation:define-operation describe-world-generation-job
                                       :shape-name "DescribeWorldGenerationJob"
                                       :input
                                       describe-world-generation-job-request
                                       :output
                                       describe-world-generation-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/describeWorldGenerationJob" :code 200)

(smithy/sdk/operation:define-operation describe-world-template :shape-name
                                       "DescribeWorldTemplate" :input
                                       describe-world-template-request :output
                                       describe-world-template-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/describeWorldTemplate" :code 200)

(smithy/sdk/operation:define-operation get-world-template-body :shape-name
                                       "GetWorldTemplateBody" :input
                                       get-world-template-body-request :output
                                       get-world-template-body-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/getWorldTemplateBody" :code 200)

(smithy/sdk/operation:define-operation list-deployment-jobs :shape-name
                                       "ListDeploymentJobs" :input
                                       list-deployment-jobs-request :output
                                       list-deployment-jobs-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/listDeploymentJobs" :code 200)

(smithy/sdk/operation:define-operation list-fleets :shape-name "ListFleets"
                                       :input list-fleets-request :output
                                       list-fleets-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri "/listFleets" :code
                                       200)

(smithy/sdk/operation:define-operation list-robot-applications :shape-name
                                       "ListRobotApplications" :input
                                       list-robot-applications-request :output
                                       list-robot-applications-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/listRobotApplications" :code 200)

(smithy/sdk/operation:define-operation list-robots :shape-name "ListRobots"
                                       :input list-robots-request :output
                                       list-robots-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri "/listRobots" :code
                                       200)

(smithy/sdk/operation:define-operation list-simulation-applications :shape-name
                                       "ListSimulationApplications" :input
                                       list-simulation-applications-request
                                       :output
                                       list-simulation-applications-response
                                       :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/listSimulationApplications" :code 200)

(smithy/sdk/operation:define-operation list-simulation-job-batches :shape-name
                                       "ListSimulationJobBatches" :input
                                       list-simulation-job-batches-request
                                       :output
                                       list-simulation-job-batches-response
                                       :errors
                                       (internal-server-exception
                                        invalid-parameter-exception)
                                       :method "POST" :uri
                                       "/listSimulationJobBatches" :code 200)

(smithy/sdk/operation:define-operation list-simulation-jobs :shape-name
                                       "ListSimulationJobs" :input
                                       list-simulation-jobs-request :output
                                       list-simulation-jobs-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/listSimulationJobs" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri "/tags/{resourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-world-export-jobs :shape-name
                                       "ListWorldExportJobs" :input
                                       list-world-export-jobs-request :output
                                       list-world-export-jobs-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/listWorldExportJobs" :code 200)

(smithy/sdk/operation:define-operation list-world-generation-jobs :shape-name
                                       "ListWorldGenerationJobs" :input
                                       list-world-generation-jobs-request
                                       :output
                                       list-world-generation-jobs-response
                                       :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/listWorldGenerationJobs" :code 200)

(smithy/sdk/operation:define-operation list-world-templates :shape-name
                                       "ListWorldTemplates" :input
                                       list-world-templates-request :output
                                       list-world-templates-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/listWorldTemplates" :code 200)

(smithy/sdk/operation:define-operation list-worlds :shape-name "ListWorlds"
                                       :input list-worlds-request :output
                                       list-worlds-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        throttling-exception)
                                       :method "POST" :uri "/listWorlds" :code
                                       200)

(smithy/sdk/operation:define-operation register-robot :shape-name
                                       "RegisterRobot" :input
                                       register-robot-request :output
                                       register-robot-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri "/registerRobot"
                                       :code 200)

(smithy/sdk/operation:define-operation restart-simulation-job :shape-name
                                       "RestartSimulationJob" :input
                                       restart-simulation-job-request :output
                                       restart-simulation-job-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/restartSimulationJob" :code 200)

(smithy/sdk/operation:define-operation start-simulation-job-batch :shape-name
                                       "StartSimulationJobBatch" :input
                                       start-simulation-job-batch-request
                                       :output
                                       start-simulation-job-batch-response
                                       :errors
                                       (idempotent-parameter-mismatch-exception
                                        internal-server-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/startSimulationJobBatch" :code 200)

(smithy/sdk/operation:define-operation sync-deployment-job :shape-name
                                       "SyncDeploymentJob" :input
                                       sync-deployment-job-request :output
                                       sync-deployment-job-response :errors
                                       (concurrent-deployment-exception
                                        idempotent-parameter-mismatch-exception
                                        internal-server-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri "/syncDeploymentJob"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-robot-application :shape-name
                                       "UpdateRobotApplication" :input
                                       update-robot-application-request :output
                                       update-robot-application-response
                                       :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/updateRobotApplication" :code 200)

(smithy/sdk/operation:define-operation update-simulation-application
                                       :shape-name
                                       "UpdateSimulationApplication" :input
                                       update-simulation-application-request
                                       :output
                                       update-simulation-application-response
                                       :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/updateSimulationApplication" :code 200)

(smithy/sdk/operation:define-operation update-world-template :shape-name
                                       "UpdateWorldTemplate" :input
                                       update-world-template-request :output
                                       update-world-template-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/updateWorldTemplate" :code 200)
