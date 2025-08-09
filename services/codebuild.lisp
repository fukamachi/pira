(uiop/package:define-package #:pira/codebuild (:use)
                             (:export #:artifact-namespace #:artifact-packaging
                              #:artifacts-type #:auth-type #:auto-retry-config
                              #:batch-delete-builds #:batch-get-build-batches
                              #:batch-get-builds #:batch-get-command-executions
                              #:batch-get-fleets #:batch-get-projects
                              #:batch-get-report-groups #:batch-get-reports
                              #:batch-get-sandboxes #:batch-report-mode-type
                              #:batch-restrictions #:boolean
                              #:bucket-owner-access #:build #:build-artifacts
                              #:build-artifacts-list #:build-batch
                              #:build-batch-filter #:build-batch-ids
                              #:build-batch-phase #:build-batch-phase-type
                              #:build-batch-phases #:build-batches
                              #:build-group #:build-groups #:build-ids
                              #:build-not-deleted #:build-phase
                              #:build-phase-type #:build-phases
                              #:build-report-arns #:build-status-config
                              #:build-summaries #:build-summary
                              #:build-time-out #:builds #:builds-not-deleted
                              #:cache-mode #:cache-type
                              #:cloud-watch-logs-config #:code-build-20161006
                              #:code-coverage #:code-coverage-report-summary
                              #:code-coverages #:command-execution
                              #:command-execution-ids #:command-executions
                              #:command-type #:compute-configuration
                              #:compute-type #:compute-types-allowed
                              #:create-fleet #:create-project
                              #:create-report-group #:create-webhook
                              #:credential-provider-type #:debug-session
                              #:delete-build-batch #:delete-fleet
                              #:delete-project #:delete-report
                              #:delete-report-group #:delete-resource-policy
                              #:delete-source-credentials #:delete-webhook
                              #:describe-code-coverages #:describe-test-cases
                              #:docker-server #:docker-server-status
                              #:environment-image #:environment-images
                              #:environment-language #:environment-languages
                              #:environment-platform #:environment-platforms
                              #:environment-type #:environment-variable
                              #:environment-variable-type
                              #:environment-variables
                              #:exported-environment-variable
                              #:exported-environment-variables
                              #:file-system-type #:filter-group #:filter-groups
                              #:fleet #:fleet-arns #:fleet-capacity
                              #:fleet-context-code #:fleet-name #:fleet-names
                              #:fleet-overflow-behavior #:fleet-proxy-rule
                              #:fleet-proxy-rule-behavior
                              #:fleet-proxy-rule-effect-type
                              #:fleet-proxy-rule-entities
                              #:fleet-proxy-rule-type #:fleet-proxy-rules
                              #:fleet-scaling-metric-type #:fleet-scaling-type
                              #:fleet-sort-by-type #:fleet-status
                              #:fleet-status-code #:fleets #:fleets-allowed
                              #:get-report-group-trend #:get-resource-policy
                              #:git-clone-depth #:git-submodules-config
                              #:identifiers #:image-pull-credentials-type
                              #:image-versions #:import-source-credentials
                              #:invalidate-project-cache #:key-input
                              #:language-type #:list-build-batches
                              #:list-build-batches-for-project #:list-builds
                              #:list-builds-for-project
                              #:list-command-executions-for-sandbox
                              #:list-curated-environment-images #:list-fleets
                              #:list-projects #:list-report-groups
                              #:list-reports #:list-reports-for-report-group
                              #:list-sandboxes #:list-sandboxes-for-project
                              #:list-shared-projects
                              #:list-shared-report-groups
                              #:list-source-credentials #:logs-config
                              #:logs-config-status-type #:logs-location
                              #:machine-type #:network-interface
                              #:non-empty-string #:non-negative-int #:page-size
                              #:percentage #:phase-context #:phase-contexts
                              #:platform-type #:project #:project-arns
                              #:project-artifacts #:project-artifacts-list
                              #:project-badge #:project-build-batch-config
                              #:project-cache #:project-cache-modes
                              #:project-description #:project-environment
                              #:project-file-system-location
                              #:project-file-system-locations #:project-fleet
                              #:project-name #:project-names
                              #:project-secondary-source-versions
                              #:project-sort-by-type #:project-source
                              #:project-source-version #:project-sources
                              #:project-visibility-type #:projects
                              #:proxy-configuration #:put-resource-policy
                              #:registry-credential #:report #:report-arns
                              #:report-code-coverage-sort-by-type
                              #:report-export-config
                              #:report-export-config-type #:report-filter
                              #:report-group #:report-group-arns
                              #:report-group-name #:report-group-sort-by-type
                              #:report-group-status-type
                              #:report-group-trend-field-type
                              #:report-group-trend-raw-data-list
                              #:report-group-trend-stats #:report-groups
                              #:report-packaging-type #:report-status-counts
                              #:report-status-type #:report-type
                              #:report-with-raw-data #:reports
                              #:resolved-artifact
                              #:resolved-secondary-artifacts #:retry-build
                              #:retry-build-batch #:retry-build-batch-type
                              #:s3logs-config #:s3report-export-config
                              #:ssmsession #:sandbox #:sandbox-ids
                              #:sandbox-session #:sandbox-session-phase
                              #:sandbox-session-phases #:sandboxes
                              #:scaling-configuration-input
                              #:scaling-configuration-output
                              #:scope-configuration #:security-group-ids
                              #:sensitive-non-empty-string #:sensitive-string
                              #:server-type #:shared-resource-sort-by-type
                              #:sort-order-type #:source-auth
                              #:source-auth-type #:source-credentials-info
                              #:source-credentials-infos #:source-type
                              #:start-build #:start-build-batch
                              #:start-command-execution #:start-sandbox
                              #:start-sandbox-connection #:status-type
                              #:stop-build #:stop-build-batch #:stop-sandbox
                              #:string #:subnets #:tag #:tag-list
                              #:target-tracking-scaling-configuration
                              #:target-tracking-scaling-configurations
                              #:test-case #:test-case-filter #:test-cases
                              #:test-report-summary #:time-out #:timestamp
                              #:update-fleet #:update-project
                              #:update-project-visibility #:update-report-group
                              #:update-webhook #:value-input #:vpc-config
                              #:webhook #:webhook-build-type #:webhook-filter
                              #:webhook-filter-type #:webhook-scope-type
                              #:webhook-status #:wrapper-boolean
                              #:wrapper-double #:wrapper-int #:wrapper-long))
(common-lisp:in-package #:pira/codebuild)

(smithy/sdk/service:define-service code-build-20161006 :shape-name
                                   "CodeBuild_20161006" :version "2016-10-06"
                                   :title "AWS CodeBuild" :traits
                                   '(("aws.api#service" ("sdkId" . "CodeBuild")
                                      ("arnNamespace" . "codebuild")
                                      ("cloudFormationName" . "CodeBuild")
                                      ("cloudTrailEventSource"
                                       . "codebuild.amazonaws.com")
                                      ("endpointPrefix" . "codebuild"))
                                     ("aws.auth#sigv4" ("name" . "codebuild"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-error account-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "AccountLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error account-suspended-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "AccountSuspendedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum artifact-namespace
    common-lisp:nil
  (:none "NONE")
  (:build-id "BUILD_ID"))

(smithy/sdk/shapes:define-enum artifact-packaging
    common-lisp:nil
  (:none "NONE")
  (:zip "ZIP"))

(smithy/sdk/shapes:define-enum artifacts-type
    common-lisp:nil
  (:codepipeline "CODEPIPELINE")
  (:s3 "S3")
  (:no-artifacts "NO_ARTIFACTS"))

(smithy/sdk/shapes:define-enum auth-type
    common-lisp:nil
  (:oauth "OAUTH")
  (:basic-auth "BASIC_AUTH")
  (:personal-access-token "PERSONAL_ACCESS_TOKEN")
  (:codeconnections "CODECONNECTIONS")
  (:secrets-manager "SECRETS_MANAGER"))

(smithy/sdk/shapes:define-structure auto-retry-config common-lisp:nil
                                    ((auto-retry-limit :target-type wrapper-int
                                      :member-name "autoRetryLimit")
                                     (auto-retry-number :target-type
                                      wrapper-int :member-name
                                      "autoRetryNumber")
                                     (next-auto-retry :target-type string
                                      :member-name "nextAutoRetry")
                                     (previous-auto-retry :target-type string
                                      :member-name "previousAutoRetry"))
                                    (:shape-name "AutoRetryConfig"))

(smithy/sdk/shapes:define-input batch-delete-builds-input common-lisp:nil
                                ((ids :target-type build-ids :required
                                  common-lisp:t :member-name "ids"))
                                (:shape-name "BatchDeleteBuildsInput"))

(smithy/sdk/shapes:define-output batch-delete-builds-output common-lisp:nil
                                 ((builds-deleted :target-type build-ids
                                   :member-name "buildsDeleted")
                                  (builds-not-deleted :target-type
                                   builds-not-deleted :member-name
                                   "buildsNotDeleted"))
                                 (:shape-name "BatchDeleteBuildsOutput"))

(smithy/sdk/shapes:define-input batch-get-build-batches-input common-lisp:nil
                                ((ids :target-type build-batch-ids :required
                                  common-lisp:t :member-name "ids"))
                                (:shape-name "BatchGetBuildBatchesInput"))

(smithy/sdk/shapes:define-output batch-get-build-batches-output common-lisp:nil
                                 ((build-batches :target-type build-batches
                                   :member-name "buildBatches")
                                  (build-batches-not-found :target-type
                                   build-batch-ids :member-name
                                   "buildBatchesNotFound"))
                                 (:shape-name "BatchGetBuildBatchesOutput"))

(smithy/sdk/shapes:define-input batch-get-builds-input common-lisp:nil
                                ((ids :target-type build-ids :required
                                  common-lisp:t :member-name "ids"))
                                (:shape-name "BatchGetBuildsInput"))

(smithy/sdk/shapes:define-output batch-get-builds-output common-lisp:nil
                                 ((builds :target-type builds :member-name
                                   "builds")
                                  (builds-not-found :target-type build-ids
                                   :member-name "buildsNotFound"))
                                 (:shape-name "BatchGetBuildsOutput"))

(smithy/sdk/shapes:define-input batch-get-command-executions-input
                                common-lisp:nil
                                ((sandbox-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "sandboxId")
                                 (command-execution-ids :target-type
                                  command-execution-ids :required common-lisp:t
                                  :member-name "commandExecutionIds"))
                                (:shape-name "BatchGetCommandExecutionsInput"))

(smithy/sdk/shapes:define-output batch-get-command-executions-output
                                 common-lisp:nil
                                 ((command-executions :target-type
                                   command-executions :member-name
                                   "commandExecutions")
                                  (command-executions-not-found :target-type
                                   command-execution-ids :member-name
                                   "commandExecutionsNotFound"))
                                 (:shape-name
                                  "BatchGetCommandExecutionsOutput"))

(smithy/sdk/shapes:define-input batch-get-fleets-input common-lisp:nil
                                ((names :target-type fleet-names :required
                                  common-lisp:t :member-name "names"))
                                (:shape-name "BatchGetFleetsInput"))

(smithy/sdk/shapes:define-output batch-get-fleets-output common-lisp:nil
                                 ((fleets :target-type fleets :member-name
                                   "fleets")
                                  (fleets-not-found :target-type fleet-names
                                   :member-name "fleetsNotFound"))
                                 (:shape-name "BatchGetFleetsOutput"))

(smithy/sdk/shapes:define-input batch-get-projects-input common-lisp:nil
                                ((names :target-type project-names :required
                                  common-lisp:t :member-name "names"))
                                (:shape-name "BatchGetProjectsInput"))

(smithy/sdk/shapes:define-output batch-get-projects-output common-lisp:nil
                                 ((projects :target-type projects :member-name
                                   "projects")
                                  (projects-not-found :target-type
                                   project-names :member-name
                                   "projectsNotFound"))
                                 (:shape-name "BatchGetProjectsOutput"))

(smithy/sdk/shapes:define-input batch-get-report-groups-input common-lisp:nil
                                ((report-group-arns :target-type
                                  report-group-arns :required common-lisp:t
                                  :member-name "reportGroupArns"))
                                (:shape-name "BatchGetReportGroupsInput"))

(smithy/sdk/shapes:define-output batch-get-report-groups-output common-lisp:nil
                                 ((report-groups :target-type report-groups
                                   :member-name "reportGroups")
                                  (report-groups-not-found :target-type
                                   report-group-arns :member-name
                                   "reportGroupsNotFound"))
                                 (:shape-name "BatchGetReportGroupsOutput"))

(smithy/sdk/shapes:define-input batch-get-reports-input common-lisp:nil
                                ((report-arns :target-type report-arns
                                  :required common-lisp:t :member-name
                                  "reportArns"))
                                (:shape-name "BatchGetReportsInput"))

(smithy/sdk/shapes:define-output batch-get-reports-output common-lisp:nil
                                 ((reports :target-type reports :member-name
                                   "reports")
                                  (reports-not-found :target-type report-arns
                                   :member-name "reportsNotFound"))
                                 (:shape-name "BatchGetReportsOutput"))

(smithy/sdk/shapes:define-input batch-get-sandboxes-input common-lisp:nil
                                ((ids :target-type sandbox-ids :required
                                  common-lisp:t :member-name "ids"))
                                (:shape-name "BatchGetSandboxesInput"))

(smithy/sdk/shapes:define-output batch-get-sandboxes-output common-lisp:nil
                                 ((sandboxes :target-type sandboxes
                                   :member-name "sandboxes")
                                  (sandboxes-not-found :target-type sandbox-ids
                                   :member-name "sandboxesNotFound"))
                                 (:shape-name "BatchGetSandboxesOutput"))

(smithy/sdk/shapes:define-enum batch-report-mode-type
    common-lisp:nil
  (:report-individual-builds "REPORT_INDIVIDUAL_BUILDS")
  (:report-aggregated-batch "REPORT_AGGREGATED_BATCH"))

(smithy/sdk/shapes:define-structure batch-restrictions common-lisp:nil
                                    ((maximum-builds-allowed :target-type
                                      wrapper-int :member-name
                                      "maximumBuildsAllowed")
                                     (compute-types-allowed :target-type
                                      compute-types-allowed :member-name
                                      "computeTypesAllowed")
                                     (fleets-allowed :target-type
                                      fleets-allowed :member-name
                                      "fleetsAllowed"))
                                    (:shape-name "BatchRestrictions"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum bucket-owner-access
    common-lisp:nil
  (:none "NONE")
  (:read-only "READ_ONLY")
  (:full "FULL"))

(smithy/sdk/shapes:define-structure build common-lisp:nil
                                    ((id :target-type non-empty-string
                                      :member-name "id")
                                     (arn :target-type non-empty-string
                                      :member-name "arn")
                                     (build-number :target-type wrapper-long
                                      :member-name "buildNumber")
                                     (start-time :target-type timestamp
                                      :member-name "startTime")
                                     (end-time :target-type timestamp
                                      :member-name "endTime")
                                     (current-phase :target-type string
                                      :member-name "currentPhase")
                                     (build-status :target-type status-type
                                      :member-name "buildStatus")
                                     (source-version :target-type
                                      non-empty-string :member-name
                                      "sourceVersion")
                                     (resolved-source-version :target-type
                                      non-empty-string :member-name
                                      "resolvedSourceVersion")
                                     (project-name :target-type
                                      non-empty-string :member-name
                                      "projectName")
                                     (phases :target-type build-phases
                                      :member-name "phases")
                                     (source :target-type project-source
                                      :member-name "source")
                                     (secondary-sources :target-type
                                      project-sources :member-name
                                      "secondarySources")
                                     (secondary-source-versions :target-type
                                      project-secondary-source-versions
                                      :member-name "secondarySourceVersions")
                                     (artifacts :target-type build-artifacts
                                      :member-name "artifacts")
                                     (secondary-artifacts :target-type
                                      build-artifacts-list :member-name
                                      "secondaryArtifacts")
                                     (cache :target-type project-cache
                                      :member-name "cache")
                                     (environment :target-type
                                      project-environment :member-name
                                      "environment")
                                     (service-role :target-type
                                      non-empty-string :member-name
                                      "serviceRole")
                                     (logs :target-type logs-location
                                      :member-name "logs")
                                     (timeout-in-minutes :target-type
                                      wrapper-int :member-name
                                      "timeoutInMinutes")
                                     (queued-timeout-in-minutes :target-type
                                      wrapper-int :member-name
                                      "queuedTimeoutInMinutes")
                                     (build-complete :target-type boolean
                                      :member-name "buildComplete")
                                     (initiator :target-type string
                                      :member-name "initiator")
                                     (vpc-config :target-type vpc-config
                                      :member-name "vpcConfig")
                                     (network-interface :target-type
                                      network-interface :member-name
                                      "networkInterface")
                                     (encryption-key :target-type
                                      non-empty-string :member-name
                                      "encryptionKey")
                                     (exported-environment-variables
                                      :target-type
                                      exported-environment-variables
                                      :member-name
                                      "exportedEnvironmentVariables")
                                     (report-arns :target-type
                                      build-report-arns :member-name
                                      "reportArns")
                                     (file-system-locations :target-type
                                      project-file-system-locations
                                      :member-name "fileSystemLocations")
                                     (debug-session :target-type debug-session
                                      :member-name "debugSession")
                                     (build-batch-arn :target-type string
                                      :member-name "buildBatchArn")
                                     (auto-retry-config :target-type
                                      auto-retry-config :member-name
                                      "autoRetryConfig"))
                                    (:shape-name "Build"))

(smithy/sdk/shapes:define-structure build-artifacts common-lisp:nil
                                    ((location :target-type string :member-name
                                      "location")
                                     (sha256sum :target-type string
                                      :member-name "sha256sum")
                                     (md5sum :target-type string :member-name
                                      "md5sum")
                                     (override-artifact-name :target-type
                                      wrapper-boolean :member-name
                                      "overrideArtifactName")
                                     (encryption-disabled :target-type
                                      wrapper-boolean :member-name
                                      "encryptionDisabled")
                                     (artifact-identifier :target-type string
                                      :member-name "artifactIdentifier")
                                     (bucket-owner-access :target-type
                                      bucket-owner-access :member-name
                                      "bucketOwnerAccess"))
                                    (:shape-name "BuildArtifacts"))

(smithy/sdk/shapes:define-list build-artifacts-list :member build-artifacts)

(smithy/sdk/shapes:define-structure build-batch common-lisp:nil
                                    ((id :target-type non-empty-string
                                      :member-name "id")
                                     (arn :target-type non-empty-string
                                      :member-name "arn")
                                     (start-time :target-type timestamp
                                      :member-name "startTime")
                                     (end-time :target-type timestamp
                                      :member-name "endTime")
                                     (current-phase :target-type string
                                      :member-name "currentPhase")
                                     (build-batch-status :target-type
                                      status-type :member-name
                                      "buildBatchStatus")
                                     (source-version :target-type
                                      non-empty-string :member-name
                                      "sourceVersion")
                                     (resolved-source-version :target-type
                                      non-empty-string :member-name
                                      "resolvedSourceVersion")
                                     (project-name :target-type
                                      non-empty-string :member-name
                                      "projectName")
                                     (phases :target-type build-batch-phases
                                      :member-name "phases")
                                     (source :target-type project-source
                                      :member-name "source")
                                     (secondary-sources :target-type
                                      project-sources :member-name
                                      "secondarySources")
                                     (secondary-source-versions :target-type
                                      project-secondary-source-versions
                                      :member-name "secondarySourceVersions")
                                     (artifacts :target-type build-artifacts
                                      :member-name "artifacts")
                                     (secondary-artifacts :target-type
                                      build-artifacts-list :member-name
                                      "secondaryArtifacts")
                                     (cache :target-type project-cache
                                      :member-name "cache")
                                     (environment :target-type
                                      project-environment :member-name
                                      "environment")
                                     (service-role :target-type
                                      non-empty-string :member-name
                                      "serviceRole")
                                     (log-config :target-type logs-config
                                      :member-name "logConfig")
                                     (build-timeout-in-minutes :target-type
                                      wrapper-int :member-name
                                      "buildTimeoutInMinutes")
                                     (queued-timeout-in-minutes :target-type
                                      wrapper-int :member-name
                                      "queuedTimeoutInMinutes")
                                     (complete :target-type boolean
                                      :member-name "complete")
                                     (initiator :target-type string
                                      :member-name "initiator")
                                     (vpc-config :target-type vpc-config
                                      :member-name "vpcConfig")
                                     (encryption-key :target-type
                                      non-empty-string :member-name
                                      "encryptionKey")
                                     (build-batch-number :target-type
                                      wrapper-long :member-name
                                      "buildBatchNumber")
                                     (file-system-locations :target-type
                                      project-file-system-locations
                                      :member-name "fileSystemLocations")
                                     (build-batch-config :target-type
                                      project-build-batch-config :member-name
                                      "buildBatchConfig")
                                     (build-groups :target-type build-groups
                                      :member-name "buildGroups")
                                     (debug-session-enabled :target-type
                                      wrapper-boolean :member-name
                                      "debugSessionEnabled")
                                     (report-arns :target-type
                                      build-report-arns :member-name
                                      "reportArns"))
                                    (:shape-name "BuildBatch"))

(smithy/sdk/shapes:define-structure build-batch-filter common-lisp:nil
                                    ((status :target-type status-type
                                      :member-name "status"))
                                    (:shape-name "BuildBatchFilter"))

(smithy/sdk/shapes:define-list build-batch-ids :member non-empty-string)

(smithy/sdk/shapes:define-structure build-batch-phase common-lisp:nil
                                    ((phase-type :target-type
                                      build-batch-phase-type :member-name
                                      "phaseType")
                                     (phase-status :target-type status-type
                                      :member-name "phaseStatus")
                                     (start-time :target-type timestamp
                                      :member-name "startTime")
                                     (end-time :target-type timestamp
                                      :member-name "endTime")
                                     (duration-in-seconds :target-type
                                      wrapper-long :member-name
                                      "durationInSeconds")
                                     (contexts :target-type phase-contexts
                                      :member-name "contexts"))
                                    (:shape-name "BuildBatchPhase"))

(smithy/sdk/shapes:define-enum build-batch-phase-type
    common-lisp:nil
  (:submitted "SUBMITTED")
  (:download-batchspec "DOWNLOAD_BATCHSPEC")
  (:in-progress "IN_PROGRESS")
  (:combine-artifacts "COMBINE_ARTIFACTS")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED")
  (:stopped "STOPPED"))

(smithy/sdk/shapes:define-list build-batch-phases :member build-batch-phase)

(smithy/sdk/shapes:define-list build-batches :member build-batch)

(smithy/sdk/shapes:define-structure build-group common-lisp:nil
                                    ((identifier :target-type string
                                      :member-name "identifier")
                                     (depends-on :target-type identifiers
                                      :member-name "dependsOn")
                                     (ignore-failure :target-type boolean
                                      :member-name "ignoreFailure")
                                     (current-build-summary :target-type
                                      build-summary :member-name
                                      "currentBuildSummary")
                                     (prior-build-summary-list :target-type
                                      build-summaries :member-name
                                      "priorBuildSummaryList"))
                                    (:shape-name "BuildGroup"))

(smithy/sdk/shapes:define-list build-groups :member build-group)

(smithy/sdk/shapes:define-list build-ids :member non-empty-string)

(smithy/sdk/shapes:define-structure build-not-deleted common-lisp:nil
                                    ((id :target-type non-empty-string
                                      :member-name "id")
                                     (status-code :target-type string
                                      :member-name "statusCode"))
                                    (:shape-name "BuildNotDeleted"))

(smithy/sdk/shapes:define-structure build-phase common-lisp:nil
                                    ((phase-type :target-type build-phase-type
                                      :member-name "phaseType")
                                     (phase-status :target-type status-type
                                      :member-name "phaseStatus")
                                     (start-time :target-type timestamp
                                      :member-name "startTime")
                                     (end-time :target-type timestamp
                                      :member-name "endTime")
                                     (duration-in-seconds :target-type
                                      wrapper-long :member-name
                                      "durationInSeconds")
                                     (contexts :target-type phase-contexts
                                      :member-name "contexts"))
                                    (:shape-name "BuildPhase"))

(smithy/sdk/shapes:define-enum build-phase-type
    common-lisp:nil
  (:submitted "SUBMITTED")
  (:queued "QUEUED")
  (:provisioning "PROVISIONING")
  (:download-source "DOWNLOAD_SOURCE")
  (:install "INSTALL")
  (:pre-build "PRE_BUILD")
  (:build "BUILD")
  (:post-build "POST_BUILD")
  (:upload-artifacts "UPLOAD_ARTIFACTS")
  (:finalizing "FINALIZING")
  (:completed "COMPLETED"))

(smithy/sdk/shapes:define-list build-phases :member build-phase)

(smithy/sdk/shapes:define-list build-report-arns :member string)

(smithy/sdk/shapes:define-structure build-status-config common-lisp:nil
                                    ((context :target-type string :member-name
                                      "context")
                                     (target-url :target-type string
                                      :member-name "targetUrl"))
                                    (:shape-name "BuildStatusConfig"))

(smithy/sdk/shapes:define-list build-summaries :member build-summary)

(smithy/sdk/shapes:define-structure build-summary common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "arn")
                                     (requested-on :target-type timestamp
                                      :member-name "requestedOn")
                                     (build-status :target-type status-type
                                      :member-name "buildStatus")
                                     (primary-artifact :target-type
                                      resolved-artifact :member-name
                                      "primaryArtifact")
                                     (secondary-artifacts :target-type
                                      resolved-secondary-artifacts :member-name
                                      "secondaryArtifacts"))
                                    (:shape-name "BuildSummary"))

(smithy/sdk/shapes:define-type build-time-out smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list builds :member build)

(smithy/sdk/shapes:define-list builds-not-deleted :member build-not-deleted)

(smithy/sdk/shapes:define-enum cache-mode
    common-lisp:nil
  (:local-docker-layer-cache "LOCAL_DOCKER_LAYER_CACHE")
  (:local-source-cache "LOCAL_SOURCE_CACHE")
  (:local-custom-cache "LOCAL_CUSTOM_CACHE"))

(smithy/sdk/shapes:define-enum cache-type
    common-lisp:nil
  (:no-cache "NO_CACHE")
  (:s3 "S3")
  (:local "LOCAL"))

(smithy/sdk/shapes:define-structure cloud-watch-logs-config common-lisp:nil
                                    ((status :target-type
                                      logs-config-status-type :required
                                      common-lisp:t :member-name "status")
                                     (group-name :target-type string
                                      :member-name "groupName")
                                     (stream-name :target-type string
                                      :member-name "streamName"))
                                    (:shape-name "CloudWatchLogsConfig"))

(smithy/sdk/shapes:define-structure code-coverage common-lisp:nil
                                    ((id :target-type non-empty-string
                                      :member-name "id")
                                     (report-arn :target-type non-empty-string
                                      :member-name "reportARN")
                                     (file-path :target-type non-empty-string
                                      :member-name "filePath")
                                     (line-coverage-percentage :target-type
                                      percentage :member-name
                                      "lineCoveragePercentage")
                                     (lines-covered :target-type
                                      non-negative-int :member-name
                                      "linesCovered")
                                     (lines-missed :target-type
                                      non-negative-int :member-name
                                      "linesMissed")
                                     (branch-coverage-percentage :target-type
                                      percentage :member-name
                                      "branchCoveragePercentage")
                                     (branches-covered :target-type
                                      non-negative-int :member-name
                                      "branchesCovered")
                                     (branches-missed :target-type
                                      non-negative-int :member-name
                                      "branchesMissed")
                                     (expired :target-type timestamp
                                      :member-name "expired"))
                                    (:shape-name "CodeCoverage"))

(smithy/sdk/shapes:define-structure code-coverage-report-summary
                                    common-lisp:nil
                                    ((line-coverage-percentage :target-type
                                      percentage :member-name
                                      "lineCoveragePercentage")
                                     (lines-covered :target-type
                                      non-negative-int :member-name
                                      "linesCovered")
                                     (lines-missed :target-type
                                      non-negative-int :member-name
                                      "linesMissed")
                                     (branch-coverage-percentage :target-type
                                      percentage :member-name
                                      "branchCoveragePercentage")
                                     (branches-covered :target-type
                                      non-negative-int :member-name
                                      "branchesCovered")
                                     (branches-missed :target-type
                                      non-negative-int :member-name
                                      "branchesMissed"))
                                    (:shape-name "CodeCoverageReportSummary"))

(smithy/sdk/shapes:define-list code-coverages :member code-coverage)

(smithy/sdk/shapes:define-structure command-execution common-lisp:nil
                                    ((id :target-type non-empty-string
                                      :member-name "id")
                                     (sandbox-id :target-type non-empty-string
                                      :member-name "sandboxId")
                                     (submit-time :target-type timestamp
                                      :member-name "submitTime")
                                     (start-time :target-type timestamp
                                      :member-name "startTime")
                                     (end-time :target-type timestamp
                                      :member-name "endTime")
                                     (status :target-type non-empty-string
                                      :member-name "status")
                                     (command :target-type
                                      sensitive-non-empty-string :member-name
                                      "command")
                                     (type :target-type command-type
                                      :member-name "type")
                                     (exit-code :target-type non-empty-string
                                      :member-name "exitCode")
                                     (standard-output-content :target-type
                                      sensitive-non-empty-string :member-name
                                      "standardOutputContent")
                                     (standard-err-content :target-type
                                      sensitive-non-empty-string :member-name
                                      "standardErrContent")
                                     (logs :target-type logs-location
                                      :member-name "logs")
                                     (sandbox-arn :target-type non-empty-string
                                      :member-name "sandboxArn"))
                                    (:shape-name "CommandExecution"))

(smithy/sdk/shapes:define-list command-execution-ids :member non-empty-string)

(smithy/sdk/shapes:define-list command-executions :member command-execution)

(smithy/sdk/shapes:define-enum command-type
    common-lisp:nil
  (:shell "SHELL"))

(smithy/sdk/shapes:define-structure compute-configuration common-lisp:nil
                                    ((v-cpu :target-type wrapper-long
                                      :member-name "vCpu")
                                     (memory :target-type wrapper-long
                                      :member-name "memory")
                                     (disk :target-type wrapper-long
                                      :member-name "disk")
                                     (machine-type :target-type machine-type
                                      :member-name "machineType")
                                     (instance-type :target-type
                                      non-empty-string :member-name
                                      "instanceType"))
                                    (:shape-name "ComputeConfiguration"))

(smithy/sdk/shapes:define-enum compute-type
    common-lisp:nil
  (:build-general1-small "BUILD_GENERAL1_SMALL")
  (:build-general1-medium "BUILD_GENERAL1_MEDIUM")
  (:build-general1-large "BUILD_GENERAL1_LARGE")
  (:build-general1-xlarge "BUILD_GENERAL1_XLARGE")
  (:build-general1-2xlarge "BUILD_GENERAL1_2XLARGE")
  (:build-lambda-1gb "BUILD_LAMBDA_1GB")
  (:build-lambda-2gb "BUILD_LAMBDA_2GB")
  (:build-lambda-4gb "BUILD_LAMBDA_4GB")
  (:build-lambda-8gb "BUILD_LAMBDA_8GB")
  (:build-lambda-10gb "BUILD_LAMBDA_10GB")
  (:attribute-based-compute "ATTRIBUTE_BASED_COMPUTE")
  (:custom-instance-type "CUSTOM_INSTANCE_TYPE"))

(smithy/sdk/shapes:define-list compute-types-allowed :member non-empty-string)

(smithy/sdk/shapes:define-input create-fleet-input common-lisp:nil
                                ((name :target-type fleet-name :required
                                  common-lisp:t :member-name "name")
                                 (base-capacity :target-type fleet-capacity
                                  :required common-lisp:t :member-name
                                  "baseCapacity")
                                 (environment-type :target-type
                                  environment-type :required common-lisp:t
                                  :member-name "environmentType")
                                 (compute-type :target-type compute-type
                                  :required common-lisp:t :member-name
                                  "computeType")
                                 (compute-configuration :target-type
                                  compute-configuration :member-name
                                  "computeConfiguration")
                                 (scaling-configuration :target-type
                                  scaling-configuration-input :member-name
                                  "scalingConfiguration")
                                 (overflow-behavior :target-type
                                  fleet-overflow-behavior :member-name
                                  "overflowBehavior")
                                 (vpc-config :target-type vpc-config
                                  :member-name "vpcConfig")
                                 (proxy-configuration :target-type
                                  proxy-configuration :member-name
                                  "proxyConfiguration")
                                 (image-id :target-type non-empty-string
                                  :member-name "imageId")
                                 (fleet-service-role :target-type
                                  non-empty-string :member-name
                                  "fleetServiceRole")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateFleetInput"))

(smithy/sdk/shapes:define-output create-fleet-output common-lisp:nil
                                 ((fleet :target-type fleet :member-name
                                   "fleet"))
                                 (:shape-name "CreateFleetOutput"))

(smithy/sdk/shapes:define-input create-project-input common-lisp:nil
                                ((name :target-type project-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type project-description
                                  :member-name "description")
                                 (source :target-type project-source :required
                                  common-lisp:t :member-name "source")
                                 (secondary-sources :target-type
                                  project-sources :member-name
                                  "secondarySources")
                                 (source-version :target-type string
                                  :member-name "sourceVersion")
                                 (secondary-source-versions :target-type
                                  project-secondary-source-versions
                                  :member-name "secondarySourceVersions")
                                 (artifacts :target-type project-artifacts
                                  :required common-lisp:t :member-name
                                  "artifacts")
                                 (secondary-artifacts :target-type
                                  project-artifacts-list :member-name
                                  "secondaryArtifacts")
                                 (cache :target-type project-cache :member-name
                                  "cache")
                                 (environment :target-type project-environment
                                  :required common-lisp:t :member-name
                                  "environment")
                                 (service-role :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "serviceRole")
                                 (timeout-in-minutes :target-type
                                  build-time-out :member-name
                                  "timeoutInMinutes")
                                 (queued-timeout-in-minutes :target-type
                                  time-out :member-name
                                  "queuedTimeoutInMinutes")
                                 (encryption-key :target-type non-empty-string
                                  :member-name "encryptionKey")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (vpc-config :target-type vpc-config
                                  :member-name "vpcConfig")
                                 (badge-enabled :target-type wrapper-boolean
                                  :member-name "badgeEnabled")
                                 (logs-config :target-type logs-config
                                  :member-name "logsConfig")
                                 (file-system-locations :target-type
                                  project-file-system-locations :member-name
                                  "fileSystemLocations")
                                 (build-batch-config :target-type
                                  project-build-batch-config :member-name
                                  "buildBatchConfig")
                                 (concurrent-build-limit :target-type
                                  wrapper-int :member-name
                                  "concurrentBuildLimit")
                                 (auto-retry-limit :target-type wrapper-int
                                  :member-name "autoRetryLimit"))
                                (:shape-name "CreateProjectInput"))

(smithy/sdk/shapes:define-output create-project-output common-lisp:nil
                                 ((project :target-type project :member-name
                                   "project"))
                                 (:shape-name "CreateProjectOutput"))

(smithy/sdk/shapes:define-input create-report-group-input common-lisp:nil
                                ((name :target-type report-group-name :required
                                  common-lisp:t :member-name "name")
                                 (type :target-type report-type :required
                                  common-lisp:t :member-name "type")
                                 (export-config :target-type
                                  report-export-config :required common-lisp:t
                                  :member-name "exportConfig")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateReportGroupInput"))

(smithy/sdk/shapes:define-output create-report-group-output common-lisp:nil
                                 ((report-group :target-type report-group
                                   :member-name "reportGroup"))
                                 (:shape-name "CreateReportGroupOutput"))

(smithy/sdk/shapes:define-input create-webhook-input common-lisp:nil
                                ((project-name :target-type project-name
                                  :required common-lisp:t :member-name
                                  "projectName")
                                 (branch-filter :target-type string
                                  :member-name "branchFilter")
                                 (filter-groups :target-type filter-groups
                                  :member-name "filterGroups")
                                 (build-type :target-type webhook-build-type
                                  :member-name "buildType")
                                 (manual-creation :target-type wrapper-boolean
                                  :member-name "manualCreation")
                                 (scope-configuration :target-type
                                  scope-configuration :member-name
                                  "scopeConfiguration"))
                                (:shape-name "CreateWebhookInput"))

(smithy/sdk/shapes:define-output create-webhook-output common-lisp:nil
                                 ((webhook :target-type webhook :member-name
                                   "webhook"))
                                 (:shape-name "CreateWebhookOutput"))

(smithy/sdk/shapes:define-enum credential-provider-type
    common-lisp:nil
  (:secrets-manager "SECRETS_MANAGER"))

(smithy/sdk/shapes:define-structure debug-session common-lisp:nil
                                    ((session-enabled :target-type
                                      wrapper-boolean :member-name
                                      "sessionEnabled")
                                     (session-target :target-type
                                      non-empty-string :member-name
                                      "sessionTarget"))
                                    (:shape-name "DebugSession"))

(smithy/sdk/shapes:define-input delete-build-batch-input common-lisp:nil
                                ((id :target-type non-empty-string :required
                                  common-lisp:t :member-name "id"))
                                (:shape-name "DeleteBuildBatchInput"))

(smithy/sdk/shapes:define-output delete-build-batch-output common-lisp:nil
                                 ((status-code :target-type string :member-name
                                   "statusCode")
                                  (builds-deleted :target-type build-ids
                                   :member-name "buildsDeleted")
                                  (builds-not-deleted :target-type
                                   builds-not-deleted :member-name
                                   "buildsNotDeleted"))
                                 (:shape-name "DeleteBuildBatchOutput"))

(smithy/sdk/shapes:define-input delete-fleet-input common-lisp:nil
                                ((arn :target-type non-empty-string :required
                                  common-lisp:t :member-name "arn"))
                                (:shape-name "DeleteFleetInput"))

(smithy/sdk/shapes:define-output delete-fleet-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteFleetOutput"))

(smithy/sdk/shapes:define-input delete-project-input common-lisp:nil
                                ((name :target-type non-empty-string :required
                                  common-lisp:t :member-name "name"))
                                (:shape-name "DeleteProjectInput"))

(smithy/sdk/shapes:define-output delete-project-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteProjectOutput"))

(smithy/sdk/shapes:define-input delete-report-group-input common-lisp:nil
                                ((arn :target-type non-empty-string :required
                                  common-lisp:t :member-name "arn")
                                 (delete-reports :target-type boolean
                                  :member-name "deleteReports"))
                                (:shape-name "DeleteReportGroupInput"))

(smithy/sdk/shapes:define-output delete-report-group-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteReportGroupOutput"))

(smithy/sdk/shapes:define-input delete-report-input common-lisp:nil
                                ((arn :target-type non-empty-string :required
                                  common-lisp:t :member-name "arn"))
                                (:shape-name "DeleteReportInput"))

(smithy/sdk/shapes:define-output delete-report-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteReportOutput"))

(smithy/sdk/shapes:define-input delete-resource-policy-input common-lisp:nil
                                ((resource-arn :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "resourceArn"))
                                (:shape-name "DeleteResourcePolicyInput"))

(smithy/sdk/shapes:define-output delete-resource-policy-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteResourcePolicyOutput"))

(smithy/sdk/shapes:define-input delete-source-credentials-input common-lisp:nil
                                ((arn :target-type non-empty-string :required
                                  common-lisp:t :member-name "arn"))
                                (:shape-name "DeleteSourceCredentialsInput"))

(smithy/sdk/shapes:define-output delete-source-credentials-output
                                 common-lisp:nil
                                 ((arn :target-type non-empty-string
                                   :member-name "arn"))
                                 (:shape-name "DeleteSourceCredentialsOutput"))

(smithy/sdk/shapes:define-input delete-webhook-input common-lisp:nil
                                ((project-name :target-type project-name
                                  :required common-lisp:t :member-name
                                  "projectName"))
                                (:shape-name "DeleteWebhookInput"))

(smithy/sdk/shapes:define-output delete-webhook-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteWebhookOutput"))

(smithy/sdk/shapes:define-input describe-code-coverages-input common-lisp:nil
                                ((report-arn :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "reportArn")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type page-size
                                  :member-name "maxResults")
                                 (sort-order :target-type sort-order-type
                                  :member-name "sortOrder")
                                 (sort-by :target-type
                                  report-code-coverage-sort-by-type
                                  :member-name "sortBy")
                                 (min-line-coverage-percentage :target-type
                                  percentage :member-name
                                  "minLineCoveragePercentage")
                                 (max-line-coverage-percentage :target-type
                                  percentage :member-name
                                  "maxLineCoveragePercentage"))
                                (:shape-name "DescribeCodeCoveragesInput"))

(smithy/sdk/shapes:define-output describe-code-coverages-output common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "nextToken")
                                  (code-coverages :target-type code-coverages
                                   :member-name "codeCoverages"))
                                 (:shape-name "DescribeCodeCoveragesOutput"))

(smithy/sdk/shapes:define-input describe-test-cases-input common-lisp:nil
                                ((report-arn :target-type string :required
                                  common-lisp:t :member-name "reportArn")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type page-size
                                  :member-name "maxResults")
                                 (filter :target-type test-case-filter
                                  :member-name "filter"))
                                (:shape-name "DescribeTestCasesInput"))

(smithy/sdk/shapes:define-output describe-test-cases-output common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "nextToken")
                                  (test-cases :target-type test-cases
                                   :member-name "testCases"))
                                 (:shape-name "DescribeTestCasesOutput"))

(smithy/sdk/shapes:define-structure docker-server common-lisp:nil
                                    ((compute-type :target-type compute-type
                                      :required common-lisp:t :member-name
                                      "computeType")
                                     (security-group-ids :target-type
                                      security-group-ids :member-name
                                      "securityGroupIds")
                                     (status :target-type docker-server-status
                                      :member-name "status"))
                                    (:shape-name "DockerServer"))

(smithy/sdk/shapes:define-structure docker-server-status common-lisp:nil
                                    ((status :target-type string :member-name
                                      "status")
                                     (message :target-type string :member-name
                                      "message"))
                                    (:shape-name "DockerServerStatus"))

(smithy/sdk/shapes:define-structure environment-image common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (description :target-type string
                                      :member-name "description")
                                     (versions :target-type image-versions
                                      :member-name "versions"))
                                    (:shape-name "EnvironmentImage"))

(smithy/sdk/shapes:define-list environment-images :member environment-image)

(smithy/sdk/shapes:define-structure environment-language common-lisp:nil
                                    ((language :target-type language-type
                                      :member-name "language")
                                     (images :target-type environment-images
                                      :member-name "images"))
                                    (:shape-name "EnvironmentLanguage"))

(smithy/sdk/shapes:define-list environment-languages :member
                               environment-language)

(smithy/sdk/shapes:define-structure environment-platform common-lisp:nil
                                    ((platform :target-type platform-type
                                      :member-name "platform")
                                     (languages :target-type
                                      environment-languages :member-name
                                      "languages"))
                                    (:shape-name "EnvironmentPlatform"))

(smithy/sdk/shapes:define-list environment-platforms :member
                               environment-platform)

(smithy/sdk/shapes:define-enum environment-type
    common-lisp:nil
  (:windows-container "WINDOWS_CONTAINER")
  (:linux-container "LINUX_CONTAINER")
  (:linux-gpu-container "LINUX_GPU_CONTAINER")
  (:arm-container "ARM_CONTAINER")
  (:windows-server-2019-container "WINDOWS_SERVER_2019_CONTAINER")
  (:windows-server-2022-container "WINDOWS_SERVER_2022_CONTAINER")
  (:linux-lambda-container "LINUX_LAMBDA_CONTAINER")
  (:arm-lambda-container "ARM_LAMBDA_CONTAINER")
  (:linux-ec2 "LINUX_EC2")
  (:arm-ec2 "ARM_EC2")
  (:windows-ec2 "WINDOWS_EC2")
  (:mac-arm "MAC_ARM"))

(smithy/sdk/shapes:define-structure environment-variable common-lisp:nil
                                    ((name :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "name")
                                     (value :target-type string :required
                                      common-lisp:t :member-name "value")
                                     (type :target-type
                                      environment-variable-type :member-name
                                      "type"))
                                    (:shape-name "EnvironmentVariable"))

(smithy/sdk/shapes:define-enum environment-variable-type
    common-lisp:nil
  (:plaintext "PLAINTEXT")
  (:parameter-store "PARAMETER_STORE")
  (:secrets-manager "SECRETS_MANAGER"))

(smithy/sdk/shapes:define-list environment-variables :member
                               environment-variable)

(smithy/sdk/shapes:define-structure exported-environment-variable
                                    common-lisp:nil
                                    ((name :target-type non-empty-string
                                      :member-name "name")
                                     (value :target-type string :member-name
                                      "value"))
                                    (:shape-name "ExportedEnvironmentVariable"))

(smithy/sdk/shapes:define-list exported-environment-variables :member
                               exported-environment-variable)

(smithy/sdk/shapes:define-enum file-system-type
    common-lisp:nil
  (:efs "EFS"))

(smithy/sdk/shapes:define-list filter-group :member webhook-filter)

(smithy/sdk/shapes:define-list filter-groups :member filter-group)

(smithy/sdk/shapes:define-structure fleet common-lisp:nil
                                    ((arn :target-type non-empty-string
                                      :member-name "arn")
                                     (name :target-type fleet-name :member-name
                                      "name")
                                     (id :target-type non-empty-string
                                      :member-name "id")
                                     (created :target-type timestamp
                                      :member-name "created")
                                     (last-modified :target-type timestamp
                                      :member-name "lastModified")
                                     (status :target-type fleet-status
                                      :member-name "status")
                                     (base-capacity :target-type fleet-capacity
                                      :member-name "baseCapacity")
                                     (environment-type :target-type
                                      environment-type :member-name
                                      "environmentType")
                                     (compute-type :target-type compute-type
                                      :member-name "computeType")
                                     (compute-configuration :target-type
                                      compute-configuration :member-name
                                      "computeConfiguration")
                                     (scaling-configuration :target-type
                                      scaling-configuration-output :member-name
                                      "scalingConfiguration")
                                     (overflow-behavior :target-type
                                      fleet-overflow-behavior :member-name
                                      "overflowBehavior")
                                     (vpc-config :target-type vpc-config
                                      :member-name "vpcConfig")
                                     (proxy-configuration :target-type
                                      proxy-configuration :member-name
                                      "proxyConfiguration")
                                     (image-id :target-type non-empty-string
                                      :member-name "imageId")
                                     (fleet-service-role :target-type
                                      non-empty-string :member-name
                                      "fleetServiceRole")
                                     (tags :target-type tag-list :member-name
                                      "tags"))
                                    (:shape-name "Fleet"))

(smithy/sdk/shapes:define-list fleet-arns :member non-empty-string)

(smithy/sdk/shapes:define-type fleet-capacity smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum fleet-context-code
    common-lisp:nil
  (:create-failed "CREATE_FAILED")
  (:update-failed "UPDATE_FAILED")
  (:action-required "ACTION_REQUIRED")
  (:pending-deletion "PENDING_DELETION")
  (:insufficient-capacity "INSUFFICIENT_CAPACITY"))

(smithy/sdk/shapes:define-type fleet-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list fleet-names :member non-empty-string)

(smithy/sdk/shapes:define-enum fleet-overflow-behavior
    common-lisp:nil
  (:queue "QUEUE")
  (:on-demand "ON_DEMAND"))

(smithy/sdk/shapes:define-structure fleet-proxy-rule common-lisp:nil
                                    ((type :target-type fleet-proxy-rule-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (effect :target-type
                                      fleet-proxy-rule-effect-type :required
                                      common-lisp:t :member-name "effect")
                                     (entities :target-type
                                      fleet-proxy-rule-entities :required
                                      common-lisp:t :member-name "entities"))
                                    (:shape-name "FleetProxyRule"))

(smithy/sdk/shapes:define-enum fleet-proxy-rule-behavior
    common-lisp:nil
  (:allow-all "ALLOW_ALL")
  (:deny-all "DENY_ALL"))

(smithy/sdk/shapes:define-enum fleet-proxy-rule-effect-type
    common-lisp:nil
  (:allow "ALLOW")
  (:deny "DENY"))

(smithy/sdk/shapes:define-list fleet-proxy-rule-entities :member string)

(smithy/sdk/shapes:define-enum fleet-proxy-rule-type
    common-lisp:nil
  (:domain "DOMAIN")
  (:ip "IP"))

(smithy/sdk/shapes:define-list fleet-proxy-rules :member fleet-proxy-rule)

(smithy/sdk/shapes:define-enum fleet-scaling-metric-type
    common-lisp:nil
  (:fleet-utilization-rate "FLEET_UTILIZATION_RATE"))

(smithy/sdk/shapes:define-enum fleet-scaling-type
    common-lisp:nil
  (:target-tracking-scaling "TARGET_TRACKING_SCALING"))

(smithy/sdk/shapes:define-enum fleet-sort-by-type
    common-lisp:nil
  (:name "NAME")
  (:created-time "CREATED_TIME")
  (:last-modified-time "LAST_MODIFIED_TIME"))

(smithy/sdk/shapes:define-structure fleet-status common-lisp:nil
                                    ((status-code :target-type
                                      fleet-status-code :member-name
                                      "statusCode")
                                     (context :target-type fleet-context-code
                                      :member-name "context")
                                     (message :target-type string :member-name
                                      "message"))
                                    (:shape-name "FleetStatus"))

(smithy/sdk/shapes:define-enum fleet-status-code
    common-lisp:nil
  (:creating "CREATING")
  (:updating "UPDATING")
  (:rotating "ROTATING")
  (:pending-deletion "PENDING_DELETION")
  (:deleting "DELETING")
  (:create-failed "CREATE_FAILED")
  (:update-rollback-failed "UPDATE_ROLLBACK_FAILED")
  (:active "ACTIVE"))

(smithy/sdk/shapes:define-list fleets :member fleet)

(smithy/sdk/shapes:define-list fleets-allowed :member non-empty-string)

(smithy/sdk/shapes:define-input get-report-group-trend-input common-lisp:nil
                                ((report-group-arn :target-type
                                  non-empty-string :required common-lisp:t
                                  :member-name "reportGroupArn")
                                 (num-of-reports :target-type page-size
                                  :member-name "numOfReports")
                                 (trend-field :target-type
                                  report-group-trend-field-type :required
                                  common-lisp:t :member-name "trendField"))
                                (:shape-name "GetReportGroupTrendInput"))

(smithy/sdk/shapes:define-output get-report-group-trend-output common-lisp:nil
                                 ((stats :target-type report-group-trend-stats
                                   :member-name "stats")
                                  (raw-data :target-type
                                   report-group-trend-raw-data-list
                                   :member-name "rawData"))
                                 (:shape-name "GetReportGroupTrendOutput"))

(smithy/sdk/shapes:define-input get-resource-policy-input common-lisp:nil
                                ((resource-arn :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "resourceArn"))
                                (:shape-name "GetResourcePolicyInput"))

(smithy/sdk/shapes:define-output get-resource-policy-output common-lisp:nil
                                 ((policy :target-type non-empty-string
                                   :member-name "policy"))
                                 (:shape-name "GetResourcePolicyOutput"))

(smithy/sdk/shapes:define-type git-clone-depth smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure git-submodules-config common-lisp:nil
                                    ((fetch-submodules :target-type
                                      wrapper-boolean :required common-lisp:t
                                      :member-name "fetchSubmodules"))
                                    (:shape-name "GitSubmodulesConfig"))

(smithy/sdk/shapes:define-list identifiers :member non-empty-string)

(smithy/sdk/shapes:define-enum image-pull-credentials-type
    common-lisp:nil
  (:codebuild "CODEBUILD")
  (:service-role "SERVICE_ROLE"))

(smithy/sdk/shapes:define-list image-versions :member string)

(smithy/sdk/shapes:define-input import-source-credentials-input common-lisp:nil
                                ((username :target-type non-empty-string
                                  :member-name "username")
                                 (token :target-type sensitive-non-empty-string
                                  :required common-lisp:t :member-name "token")
                                 (server-type :target-type server-type
                                  :required common-lisp:t :member-name
                                  "serverType")
                                 (auth-type :target-type auth-type :required
                                  common-lisp:t :member-name "authType")
                                 (should-overwrite :target-type wrapper-boolean
                                  :member-name "shouldOverwrite"))
                                (:shape-name "ImportSourceCredentialsInput"))

(smithy/sdk/shapes:define-output import-source-credentials-output
                                 common-lisp:nil
                                 ((arn :target-type non-empty-string
                                   :member-name "arn"))
                                 (:shape-name "ImportSourceCredentialsOutput"))

(smithy/sdk/shapes:define-error invalid-input-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "InvalidInputException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input invalidate-project-cache-input common-lisp:nil
                                ((project-name :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "projectName"))
                                (:shape-name "InvalidateProjectCacheInput"))

(smithy/sdk/shapes:define-output invalidate-project-cache-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "InvalidateProjectCacheOutput"))

(smithy/sdk/shapes:define-type key-input smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum language-type
    common-lisp:nil
  (:java "JAVA")
  (:python "PYTHON")
  (:node-js "NODE_JS")
  (:ruby "RUBY")
  (:golang "GOLANG")
  (:docker "DOCKER")
  (:android "ANDROID")
  (:dotnet "DOTNET")
  (:base "BASE")
  (:php "PHP"))

(smithy/sdk/shapes:define-input list-build-batches-for-project-input
                                common-lisp:nil
                                ((project-name :target-type non-empty-string
                                  :member-name "projectName")
                                 (filter :target-type build-batch-filter
                                  :member-name "filter")
                                 (max-results :target-type page-size
                                  :member-name "maxResults")
                                 (sort-order :target-type sort-order-type
                                  :member-name "sortOrder")
                                 (next-token :target-type string :member-name
                                  "nextToken"))
                                (:shape-name "ListBuildBatchesForProjectInput"))

(smithy/sdk/shapes:define-output list-build-batches-for-project-output
                                 common-lisp:nil
                                 ((ids :target-type build-batch-ids
                                   :member-name "ids")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "ListBuildBatchesForProjectOutput"))

(smithy/sdk/shapes:define-input list-build-batches-input common-lisp:nil
                                ((filter :target-type build-batch-filter
                                  :member-name "filter")
                                 (max-results :target-type page-size
                                  :member-name "maxResults")
                                 (sort-order :target-type sort-order-type
                                  :member-name "sortOrder")
                                 (next-token :target-type string :member-name
                                  "nextToken"))
                                (:shape-name "ListBuildBatchesInput"))

(smithy/sdk/shapes:define-output list-build-batches-output common-lisp:nil
                                 ((ids :target-type build-batch-ids
                                   :member-name "ids")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListBuildBatchesOutput"))

(smithy/sdk/shapes:define-input list-builds-for-project-input common-lisp:nil
                                ((project-name :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "projectName")
                                 (sort-order :target-type sort-order-type
                                  :member-name "sortOrder")
                                 (next-token :target-type string :member-name
                                  "nextToken"))
                                (:shape-name "ListBuildsForProjectInput"))

(smithy/sdk/shapes:define-output list-builds-for-project-output common-lisp:nil
                                 ((ids :target-type build-ids :member-name
                                   "ids")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListBuildsForProjectOutput"))

(smithy/sdk/shapes:define-input list-builds-input common-lisp:nil
                                ((sort-order :target-type sort-order-type
                                  :member-name "sortOrder")
                                 (next-token :target-type string :member-name
                                  "nextToken"))
                                (:shape-name "ListBuildsInput"))

(smithy/sdk/shapes:define-output list-builds-output common-lisp:nil
                                 ((ids :target-type build-ids :member-name
                                   "ids")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListBuildsOutput"))

(smithy/sdk/shapes:define-input list-command-executions-for-sandbox-input
                                common-lisp:nil
                                ((sandbox-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "sandboxId")
                                 (max-results :target-type page-size
                                  :member-name "maxResults")
                                 (sort-order :target-type sort-order-type
                                  :member-name "sortOrder")
                                 (next-token :target-type sensitive-string
                                  :member-name "nextToken"))
                                (:shape-name
                                 "ListCommandExecutionsForSandboxInput"))

(smithy/sdk/shapes:define-output list-command-executions-for-sandbox-output
                                 common-lisp:nil
                                 ((command-executions :target-type
                                   command-executions :member-name
                                   "commandExecutions")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "ListCommandExecutionsForSandboxOutput"))

(smithy/sdk/shapes:define-input list-curated-environment-images-input
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "ListCuratedEnvironmentImagesInput"))

(smithy/sdk/shapes:define-output list-curated-environment-images-output
                                 common-lisp:nil
                                 ((platforms :target-type environment-platforms
                                   :member-name "platforms"))
                                 (:shape-name
                                  "ListCuratedEnvironmentImagesOutput"))

(smithy/sdk/shapes:define-input list-fleets-input common-lisp:nil
                                ((next-token :target-type sensitive-string
                                  :member-name "nextToken")
                                 (max-results :target-type page-size
                                  :member-name "maxResults")
                                 (sort-order :target-type sort-order-type
                                  :member-name "sortOrder")
                                 (sort-by :target-type fleet-sort-by-type
                                  :member-name "sortBy"))
                                (:shape-name "ListFleetsInput"))

(smithy/sdk/shapes:define-output list-fleets-output common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "nextToken")
                                  (fleets :target-type fleet-arns :member-name
                                   "fleets"))
                                 (:shape-name "ListFleetsOutput"))

(smithy/sdk/shapes:define-input list-projects-input common-lisp:nil
                                ((sort-by :target-type project-sort-by-type
                                  :member-name "sortBy")
                                 (sort-order :target-type sort-order-type
                                  :member-name "sortOrder")
                                 (next-token :target-type non-empty-string
                                  :member-name "nextToken"))
                                (:shape-name "ListProjectsInput"))

(smithy/sdk/shapes:define-output list-projects-output common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "nextToken")
                                  (projects :target-type project-names
                                   :member-name "projects"))
                                 (:shape-name "ListProjectsOutput"))

(smithy/sdk/shapes:define-input list-report-groups-input common-lisp:nil
                                ((sort-order :target-type sort-order-type
                                  :member-name "sortOrder")
                                 (sort-by :target-type
                                  report-group-sort-by-type :member-name
                                  "sortBy")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type page-size
                                  :member-name "maxResults"))
                                (:shape-name "ListReportGroupsInput"))

(smithy/sdk/shapes:define-output list-report-groups-output common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "nextToken")
                                  (report-groups :target-type report-group-arns
                                   :member-name "reportGroups"))
                                 (:shape-name "ListReportGroupsOutput"))

(smithy/sdk/shapes:define-input list-reports-for-report-group-input
                                common-lisp:nil
                                ((report-group-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "reportGroupArn")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (sort-order :target-type sort-order-type
                                  :member-name "sortOrder")
                                 (max-results :target-type page-size
                                  :member-name "maxResults")
                                 (filter :target-type report-filter
                                  :member-name "filter"))
                                (:shape-name "ListReportsForReportGroupInput"))

(smithy/sdk/shapes:define-output list-reports-for-report-group-output
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "nextToken")
                                  (reports :target-type report-arns
                                   :member-name "reports"))
                                 (:shape-name
                                  "ListReportsForReportGroupOutput"))

(smithy/sdk/shapes:define-input list-reports-input common-lisp:nil
                                ((sort-order :target-type sort-order-type
                                  :member-name "sortOrder")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type page-size
                                  :member-name "maxResults")
                                 (filter :target-type report-filter
                                  :member-name "filter"))
                                (:shape-name "ListReportsInput"))

(smithy/sdk/shapes:define-output list-reports-output common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "nextToken")
                                  (reports :target-type report-arns
                                   :member-name "reports"))
                                 (:shape-name "ListReportsOutput"))

(smithy/sdk/shapes:define-input list-sandboxes-for-project-input
                                common-lisp:nil
                                ((project-name :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "projectName")
                                 (max-results :target-type page-size
                                  :member-name "maxResults")
                                 (sort-order :target-type sort-order-type
                                  :member-name "sortOrder")
                                 (next-token :target-type sensitive-string
                                  :member-name "nextToken"))
                                (:shape-name "ListSandboxesForProjectInput"))

(smithy/sdk/shapes:define-output list-sandboxes-for-project-output
                                 common-lisp:nil
                                 ((ids :target-type sandbox-ids :member-name
                                   "ids")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListSandboxesForProjectOutput"))

(smithy/sdk/shapes:define-input list-sandboxes-input common-lisp:nil
                                ((max-results :target-type page-size
                                  :member-name "maxResults")
                                 (sort-order :target-type sort-order-type
                                  :member-name "sortOrder")
                                 (next-token :target-type string :member-name
                                  "nextToken"))
                                (:shape-name "ListSandboxesInput"))

(smithy/sdk/shapes:define-output list-sandboxes-output common-lisp:nil
                                 ((ids :target-type sandbox-ids :member-name
                                   "ids")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListSandboxesOutput"))

(smithy/sdk/shapes:define-input list-shared-projects-input common-lisp:nil
                                ((sort-by :target-type
                                  shared-resource-sort-by-type :member-name
                                  "sortBy")
                                 (sort-order :target-type sort-order-type
                                  :member-name "sortOrder")
                                 (max-results :target-type page-size
                                  :member-name "maxResults")
                                 (next-token :target-type non-empty-string
                                  :member-name "nextToken"))
                                (:shape-name "ListSharedProjectsInput"))

(smithy/sdk/shapes:define-output list-shared-projects-output common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "nextToken")
                                  (projects :target-type project-arns
                                   :member-name "projects"))
                                 (:shape-name "ListSharedProjectsOutput"))

(smithy/sdk/shapes:define-input list-shared-report-groups-input common-lisp:nil
                                ((sort-order :target-type sort-order-type
                                  :member-name "sortOrder")
                                 (sort-by :target-type
                                  shared-resource-sort-by-type :member-name
                                  "sortBy")
                                 (next-token :target-type string :member-name
                                  "nextToken")
                                 (max-results :target-type page-size
                                  :member-name "maxResults"))
                                (:shape-name "ListSharedReportGroupsInput"))

(smithy/sdk/shapes:define-output list-shared-report-groups-output
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "nextToken")
                                  (report-groups :target-type report-group-arns
                                   :member-name "reportGroups"))
                                 (:shape-name "ListSharedReportGroupsOutput"))

(smithy/sdk/shapes:define-input list-source-credentials-input common-lisp:nil
                                common-lisp:nil
                                (:shape-name "ListSourceCredentialsInput"))

(smithy/sdk/shapes:define-output list-source-credentials-output common-lisp:nil
                                 ((source-credentials-infos :target-type
                                   source-credentials-infos :member-name
                                   "sourceCredentialsInfos"))
                                 (:shape-name "ListSourceCredentialsOutput"))

(smithy/sdk/shapes:define-structure logs-config common-lisp:nil
                                    ((cloud-watch-logs :target-type
                                      cloud-watch-logs-config :member-name
                                      "cloudWatchLogs")
                                     (s3logs :target-type s3logs-config
                                      :member-name "s3Logs"))
                                    (:shape-name "LogsConfig"))

(smithy/sdk/shapes:define-enum logs-config-status-type
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure logs-location common-lisp:nil
                                    ((group-name :target-type string
                                      :member-name "groupName")
                                     (stream-name :target-type string
                                      :member-name "streamName")
                                     (deep-link :target-type string
                                      :member-name "deepLink")
                                     (s3deep-link :target-type string
                                      :member-name "s3DeepLink")
                                     (cloud-watch-logs-arn :target-type string
                                      :member-name "cloudWatchLogsArn")
                                     (s3logs-arn :target-type string
                                      :member-name "s3LogsArn")
                                     (cloud-watch-logs :target-type
                                      cloud-watch-logs-config :member-name
                                      "cloudWatchLogs")
                                     (s3logs :target-type s3logs-config
                                      :member-name "s3Logs"))
                                    (:shape-name "LogsLocation"))

(smithy/sdk/shapes:define-enum machine-type
    common-lisp:nil
  (:general "GENERAL")
  (:nvme "NVME"))

(smithy/sdk/shapes:define-structure network-interface common-lisp:nil
                                    ((subnet-id :target-type non-empty-string
                                      :member-name "subnetId")
                                     (network-interface-id :target-type
                                      non-empty-string :member-name
                                      "networkInterfaceId"))
                                    (:shape-name "NetworkInterface"))

(smithy/sdk/shapes:define-type non-empty-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-negative-int smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error oauth-provider-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "OAuthProviderException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type page-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type percentage smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure phase-context common-lisp:nil
                                    ((status-code :target-type string
                                      :member-name "statusCode")
                                     (message :target-type string :member-name
                                      "message"))
                                    (:shape-name "PhaseContext"))

(smithy/sdk/shapes:define-list phase-contexts :member phase-context)

(smithy/sdk/shapes:define-enum platform-type
    common-lisp:nil
  (:debian "DEBIAN")
  (:amazon-linux "AMAZON_LINUX")
  (:ubuntu "UBUNTU")
  (:windows-server "WINDOWS_SERVER"))

(smithy/sdk/shapes:define-structure project common-lisp:nil
                                    ((name :target-type project-name
                                      :member-name "name")
                                     (arn :target-type string :member-name
                                      "arn")
                                     (description :target-type
                                      project-description :member-name
                                      "description")
                                     (source :target-type project-source
                                      :member-name "source")
                                     (secondary-sources :target-type
                                      project-sources :member-name
                                      "secondarySources")
                                     (source-version :target-type string
                                      :member-name "sourceVersion")
                                     (secondary-source-versions :target-type
                                      project-secondary-source-versions
                                      :member-name "secondarySourceVersions")
                                     (artifacts :target-type project-artifacts
                                      :member-name "artifacts")
                                     (secondary-artifacts :target-type
                                      project-artifacts-list :member-name
                                      "secondaryArtifacts")
                                     (cache :target-type project-cache
                                      :member-name "cache")
                                     (environment :target-type
                                      project-environment :member-name
                                      "environment")
                                     (service-role :target-type
                                      non-empty-string :member-name
                                      "serviceRole")
                                     (timeout-in-minutes :target-type
                                      build-time-out :member-name
                                      "timeoutInMinutes")
                                     (queued-timeout-in-minutes :target-type
                                      time-out :member-name
                                      "queuedTimeoutInMinutes")
                                     (encryption-key :target-type
                                      non-empty-string :member-name
                                      "encryptionKey")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (created :target-type timestamp
                                      :member-name "created")
                                     (last-modified :target-type timestamp
                                      :member-name "lastModified")
                                     (webhook :target-type webhook :member-name
                                      "webhook")
                                     (vpc-config :target-type vpc-config
                                      :member-name "vpcConfig")
                                     (badge :target-type project-badge
                                      :member-name "badge")
                                     (logs-config :target-type logs-config
                                      :member-name "logsConfig")
                                     (file-system-locations :target-type
                                      project-file-system-locations
                                      :member-name "fileSystemLocations")
                                     (build-batch-config :target-type
                                      project-build-batch-config :member-name
                                      "buildBatchConfig")
                                     (concurrent-build-limit :target-type
                                      wrapper-int :member-name
                                      "concurrentBuildLimit")
                                     (project-visibility :target-type
                                      project-visibility-type :member-name
                                      "projectVisibility")
                                     (public-project-alias :target-type
                                      non-empty-string :member-name
                                      "publicProjectAlias")
                                     (resource-access-role :target-type
                                      non-empty-string :member-name
                                      "resourceAccessRole")
                                     (auto-retry-limit :target-type wrapper-int
                                      :member-name "autoRetryLimit"))
                                    (:shape-name "Project"))

(smithy/sdk/shapes:define-list project-arns :member non-empty-string)

(smithy/sdk/shapes:define-structure project-artifacts common-lisp:nil
                                    ((type :target-type artifacts-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (location :target-type string :member-name
                                      "location")
                                     (path :target-type string :member-name
                                      "path")
                                     (namespace-type :target-type
                                      artifact-namespace :member-name
                                      "namespaceType")
                                     (name :target-type string :member-name
                                      "name")
                                     (packaging :target-type artifact-packaging
                                      :member-name "packaging")
                                     (override-artifact-name :target-type
                                      wrapper-boolean :member-name
                                      "overrideArtifactName")
                                     (encryption-disabled :target-type
                                      wrapper-boolean :member-name
                                      "encryptionDisabled")
                                     (artifact-identifier :target-type string
                                      :member-name "artifactIdentifier")
                                     (bucket-owner-access :target-type
                                      bucket-owner-access :member-name
                                      "bucketOwnerAccess"))
                                    (:shape-name "ProjectArtifacts"))

(smithy/sdk/shapes:define-list project-artifacts-list :member project-artifacts)

(smithy/sdk/shapes:define-structure project-badge common-lisp:nil
                                    ((badge-enabled :target-type boolean
                                      :member-name "badgeEnabled")
                                     (badge-request-url :target-type string
                                      :member-name "badgeRequestUrl"))
                                    (:shape-name "ProjectBadge"))

(smithy/sdk/shapes:define-structure project-build-batch-config common-lisp:nil
                                    ((service-role :target-type
                                      non-empty-string :member-name
                                      "serviceRole")
                                     (combine-artifacts :target-type
                                      wrapper-boolean :member-name
                                      "combineArtifacts")
                                     (restrictions :target-type
                                      batch-restrictions :member-name
                                      "restrictions")
                                     (timeout-in-mins :target-type wrapper-int
                                      :member-name "timeoutInMins")
                                     (batch-report-mode :target-type
                                      batch-report-mode-type :member-name
                                      "batchReportMode"))
                                    (:shape-name "ProjectBuildBatchConfig"))

(smithy/sdk/shapes:define-structure project-cache common-lisp:nil
                                    ((type :target-type cache-type :required
                                      common-lisp:t :member-name "type")
                                     (location :target-type string :member-name
                                      "location")
                                     (modes :target-type project-cache-modes
                                      :member-name "modes")
                                     (cache-namespace :target-type string
                                      :member-name "cacheNamespace"))
                                    (:shape-name "ProjectCache"))

(smithy/sdk/shapes:define-list project-cache-modes :member cache-mode)

(smithy/sdk/shapes:define-type project-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure project-environment common-lisp:nil
                                    ((type :target-type environment-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (image :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "image")
                                     (compute-type :target-type compute-type
                                      :required common-lisp:t :member-name
                                      "computeType")
                                     (compute-configuration :target-type
                                      compute-configuration :member-name
                                      "computeConfiguration")
                                     (fleet :target-type project-fleet
                                      :member-name "fleet")
                                     (environment-variables :target-type
                                      environment-variables :member-name
                                      "environmentVariables")
                                     (privileged-mode :target-type
                                      wrapper-boolean :member-name
                                      "privilegedMode")
                                     (certificate :target-type string
                                      :member-name "certificate")
                                     (registry-credential :target-type
                                      registry-credential :member-name
                                      "registryCredential")
                                     (image-pull-credentials-type :target-type
                                      image-pull-credentials-type :member-name
                                      "imagePullCredentialsType")
                                     (docker-server :target-type docker-server
                                      :member-name "dockerServer"))
                                    (:shape-name "ProjectEnvironment"))

(smithy/sdk/shapes:define-structure project-file-system-location
                                    common-lisp:nil
                                    ((type :target-type file-system-type
                                      :member-name "type")
                                     (location :target-type string :member-name
                                      "location")
                                     (mount-point :target-type string
                                      :member-name "mountPoint")
                                     (identifier :target-type string
                                      :member-name "identifier")
                                     (mount-options :target-type string
                                      :member-name "mountOptions"))
                                    (:shape-name "ProjectFileSystemLocation"))

(smithy/sdk/shapes:define-list project-file-system-locations :member
                               project-file-system-location)

(smithy/sdk/shapes:define-structure project-fleet common-lisp:nil
                                    ((fleet-arn :target-type string
                                      :member-name "fleetArn"))
                                    (:shape-name "ProjectFleet"))

(smithy/sdk/shapes:define-type project-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list project-names :member non-empty-string)

(smithy/sdk/shapes:define-list project-secondary-source-versions :member
                               project-source-version)

(smithy/sdk/shapes:define-enum project-sort-by-type
    common-lisp:nil
  (:name "NAME")
  (:created-time "CREATED_TIME")
  (:last-modified-time "LAST_MODIFIED_TIME"))

(smithy/sdk/shapes:define-structure project-source common-lisp:nil
                                    ((type :target-type source-type :required
                                      common-lisp:t :member-name "type")
                                     (location :target-type string :member-name
                                      "location")
                                     (git-clone-depth :target-type
                                      git-clone-depth :member-name
                                      "gitCloneDepth")
                                     (git-submodules-config :target-type
                                      git-submodules-config :member-name
                                      "gitSubmodulesConfig")
                                     (buildspec :target-type string
                                      :member-name "buildspec")
                                     (auth :target-type source-auth
                                      :member-name "auth")
                                     (report-build-status :target-type
                                      wrapper-boolean :member-name
                                      "reportBuildStatus")
                                     (build-status-config :target-type
                                      build-status-config :member-name
                                      "buildStatusConfig")
                                     (insecure-ssl :target-type wrapper-boolean
                                      :member-name "insecureSsl")
                                     (source-identifier :target-type string
                                      :member-name "sourceIdentifier"))
                                    (:shape-name "ProjectSource"))

(smithy/sdk/shapes:define-structure project-source-version common-lisp:nil
                                    ((source-identifier :target-type string
                                      :required common-lisp:t :member-name
                                      "sourceIdentifier")
                                     (source-version :target-type string
                                      :required common-lisp:t :member-name
                                      "sourceVersion"))
                                    (:shape-name "ProjectSourceVersion"))

(smithy/sdk/shapes:define-list project-sources :member project-source)

(smithy/sdk/shapes:define-enum project-visibility-type
    common-lisp:nil
  (:public-read "PUBLIC_READ")
  (:private "PRIVATE"))

(smithy/sdk/shapes:define-list projects :member project)

(smithy/sdk/shapes:define-structure proxy-configuration common-lisp:nil
                                    ((default-behavior :target-type
                                      fleet-proxy-rule-behavior :member-name
                                      "defaultBehavior")
                                     (ordered-proxy-rules :target-type
                                      fleet-proxy-rules :member-name
                                      "orderedProxyRules"))
                                    (:shape-name "ProxyConfiguration"))

(smithy/sdk/shapes:define-input put-resource-policy-input common-lisp:nil
                                ((policy :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "policy")
                                 (resource-arn :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "resourceArn"))
                                (:shape-name "PutResourcePolicyInput"))

(smithy/sdk/shapes:define-output put-resource-policy-output common-lisp:nil
                                 ((resource-arn :target-type non-empty-string
                                   :member-name "resourceArn"))
                                 (:shape-name "PutResourcePolicyOutput"))

(smithy/sdk/shapes:define-structure registry-credential common-lisp:nil
                                    ((credential :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "credential")
                                     (credential-provider :target-type
                                      credential-provider-type :required
                                      common-lisp:t :member-name
                                      "credentialProvider"))
                                    (:shape-name "RegistryCredential"))

(smithy/sdk/shapes:define-structure report common-lisp:nil
                                    ((arn :target-type non-empty-string
                                      :member-name "arn")
                                     (type :target-type report-type
                                      :member-name "type")
                                     (name :target-type string :member-name
                                      "name")
                                     (report-group-arn :target-type
                                      non-empty-string :member-name
                                      "reportGroupArn")
                                     (execution-id :target-type string
                                      :member-name "executionId")
                                     (status :target-type report-status-type
                                      :member-name "status")
                                     (created :target-type timestamp
                                      :member-name "created")
                                     (expired :target-type timestamp
                                      :member-name "expired")
                                     (export-config :target-type
                                      report-export-config :member-name
                                      "exportConfig")
                                     (truncated :target-type wrapper-boolean
                                      :member-name "truncated")
                                     (test-summary :target-type
                                      test-report-summary :member-name
                                      "testSummary")
                                     (code-coverage-summary :target-type
                                      code-coverage-report-summary :member-name
                                      "codeCoverageSummary"))
                                    (:shape-name "Report"))

(smithy/sdk/shapes:define-list report-arns :member non-empty-string)

(smithy/sdk/shapes:define-enum report-code-coverage-sort-by-type
    common-lisp:nil
  (:line-coverage-percentage "LINE_COVERAGE_PERCENTAGE")
  (:file-path "FILE_PATH"))

(smithy/sdk/shapes:define-structure report-export-config common-lisp:nil
                                    ((export-config-type :target-type
                                      report-export-config-type :member-name
                                      "exportConfigType")
                                     (s3destination :target-type
                                      s3report-export-config :member-name
                                      "s3Destination"))
                                    (:shape-name "ReportExportConfig"))

(smithy/sdk/shapes:define-enum report-export-config-type
    common-lisp:nil
  (:s3 "S3")
  (:no-export "NO_EXPORT"))

(smithy/sdk/shapes:define-structure report-filter common-lisp:nil
                                    ((status :target-type report-status-type
                                      :member-name "status"))
                                    (:shape-name "ReportFilter"))

(smithy/sdk/shapes:define-structure report-group common-lisp:nil
                                    ((arn :target-type non-empty-string
                                      :member-name "arn")
                                     (name :target-type report-group-name
                                      :member-name "name")
                                     (type :target-type report-type
                                      :member-name "type")
                                     (export-config :target-type
                                      report-export-config :member-name
                                      "exportConfig")
                                     (created :target-type timestamp
                                      :member-name "created")
                                     (last-modified :target-type timestamp
                                      :member-name "lastModified")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (status :target-type
                                      report-group-status-type :member-name
                                      "status"))
                                    (:shape-name "ReportGroup"))

(smithy/sdk/shapes:define-list report-group-arns :member non-empty-string)

(smithy/sdk/shapes:define-type report-group-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum report-group-sort-by-type
    common-lisp:nil
  (:name "NAME")
  (:created-time "CREATED_TIME")
  (:last-modified-time "LAST_MODIFIED_TIME"))

(smithy/sdk/shapes:define-enum report-group-status-type
    common-lisp:nil
  (:active "ACTIVE")
  (:deleting "DELETING"))

(smithy/sdk/shapes:define-enum report-group-trend-field-type
    common-lisp:nil
  (:pass-rate "PASS_RATE")
  (:duration "DURATION")
  (:total "TOTAL")
  (:line-coverage "LINE_COVERAGE")
  (:lines-covered "LINES_COVERED")
  (:lines-missed "LINES_MISSED")
  (:branch-coverage "BRANCH_COVERAGE")
  (:branches-covered "BRANCHES_COVERED")
  (:branches-missed "BRANCHES_MISSED"))

(smithy/sdk/shapes:define-list report-group-trend-raw-data-list :member
                               report-with-raw-data)

(smithy/sdk/shapes:define-structure report-group-trend-stats common-lisp:nil
                                    ((average :target-type string :member-name
                                      "average")
                                     (max :target-type string :member-name
                                      "max")
                                     (min :target-type string :member-name
                                      "min"))
                                    (:shape-name "ReportGroupTrendStats"))

(smithy/sdk/shapes:define-list report-groups :member report-group)

(smithy/sdk/shapes:define-enum report-packaging-type
    common-lisp:nil
  (:zip "ZIP")
  (:none "NONE"))

(smithy/sdk/shapes:define-map report-status-counts :key string :value
                              wrapper-int)

(smithy/sdk/shapes:define-enum report-status-type
    common-lisp:nil
  (:generating "GENERATING")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED")
  (:incomplete "INCOMPLETE")
  (:deleting "DELETING"))

(smithy/sdk/shapes:define-enum report-type
    common-lisp:nil
  (:test "TEST")
  (:code-coverage "CODE_COVERAGE"))

(smithy/sdk/shapes:define-structure report-with-raw-data common-lisp:nil
                                    ((report-arn :target-type non-empty-string
                                      :member-name "reportArn")
                                     (data :target-type string :member-name
                                      "data"))
                                    (:shape-name "ReportWithRawData"))

(smithy/sdk/shapes:define-list reports :member report)

(smithy/sdk/shapes:define-structure resolved-artifact common-lisp:nil
                                    ((type :target-type artifacts-type
                                      :member-name "type")
                                     (location :target-type string :member-name
                                      "location")
                                     (identifier :target-type string
                                      :member-name "identifier"))
                                    (:shape-name "ResolvedArtifact"))

(smithy/sdk/shapes:define-list resolved-secondary-artifacts :member
                               resolved-artifact)

(smithy/sdk/shapes:define-error resource-already-exists-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ResourceAlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input retry-build-batch-input common-lisp:nil
                                ((id :target-type non-empty-string :member-name
                                  "id")
                                 (idempotency-token :target-type string
                                  :member-name "idempotencyToken")
                                 (retry-type :target-type
                                  retry-build-batch-type :member-name
                                  "retryType"))
                                (:shape-name "RetryBuildBatchInput"))

(smithy/sdk/shapes:define-output retry-build-batch-output common-lisp:nil
                                 ((build-batch :target-type build-batch
                                   :member-name "buildBatch"))
                                 (:shape-name "RetryBuildBatchOutput"))

(smithy/sdk/shapes:define-enum retry-build-batch-type
    common-lisp:nil
  (:retry-all-builds "RETRY_ALL_BUILDS")
  (:retry-failed-builds "RETRY_FAILED_BUILDS"))

(smithy/sdk/shapes:define-input retry-build-input common-lisp:nil
                                ((id :target-type non-empty-string :member-name
                                  "id")
                                 (idempotency-token :target-type string
                                  :member-name "idempotencyToken"))
                                (:shape-name "RetryBuildInput"))

(smithy/sdk/shapes:define-output retry-build-output common-lisp:nil
                                 ((build :target-type build :member-name
                                   "build"))
                                 (:shape-name "RetryBuildOutput"))

(smithy/sdk/shapes:define-structure s3logs-config common-lisp:nil
                                    ((status :target-type
                                      logs-config-status-type :required
                                      common-lisp:t :member-name "status")
                                     (location :target-type string :member-name
                                      "location")
                                     (encryption-disabled :target-type
                                      wrapper-boolean :member-name
                                      "encryptionDisabled")
                                     (bucket-owner-access :target-type
                                      bucket-owner-access :member-name
                                      "bucketOwnerAccess"))
                                    (:shape-name "S3LogsConfig"))

(smithy/sdk/shapes:define-structure s3report-export-config common-lisp:nil
                                    ((bucket :target-type non-empty-string
                                      :member-name "bucket")
                                     (bucket-owner :target-type string
                                      :member-name "bucketOwner")
                                     (path :target-type string :member-name
                                      "path")
                                     (packaging :target-type
                                      report-packaging-type :member-name
                                      "packaging")
                                     (encryption-key :target-type
                                      non-empty-string :member-name
                                      "encryptionKey")
                                     (encryption-disabled :target-type
                                      wrapper-boolean :member-name
                                      "encryptionDisabled"))
                                    (:shape-name "S3ReportExportConfig"))

(smithy/sdk/shapes:define-structure ssmsession common-lisp:nil
                                    ((session-id :target-type string
                                      :member-name "sessionId")
                                     (token-value :target-type string
                                      :member-name "tokenValue")
                                     (stream-url :target-type string
                                      :member-name "streamUrl"))
                                    (:shape-name "SSMSession"))

(smithy/sdk/shapes:define-structure sandbox common-lisp:nil
                                    ((id :target-type non-empty-string
                                      :member-name "id")
                                     (arn :target-type non-empty-string
                                      :member-name "arn")
                                     (project-name :target-type
                                      non-empty-string :member-name
                                      "projectName")
                                     (request-time :target-type timestamp
                                      :member-name "requestTime")
                                     (start-time :target-type timestamp
                                      :member-name "startTime")
                                     (end-time :target-type timestamp
                                      :member-name "endTime")
                                     (status :target-type string :member-name
                                      "status")
                                     (source :target-type project-source
                                      :member-name "source")
                                     (source-version :target-type
                                      non-empty-string :member-name
                                      "sourceVersion")
                                     (secondary-sources :target-type
                                      project-sources :member-name
                                      "secondarySources")
                                     (secondary-source-versions :target-type
                                      project-secondary-source-versions
                                      :member-name "secondarySourceVersions")
                                     (environment :target-type
                                      project-environment :member-name
                                      "environment")
                                     (file-system-locations :target-type
                                      project-file-system-locations
                                      :member-name "fileSystemLocations")
                                     (timeout-in-minutes :target-type
                                      wrapper-int :member-name
                                      "timeoutInMinutes")
                                     (queued-timeout-in-minutes :target-type
                                      wrapper-int :member-name
                                      "queuedTimeoutInMinutes")
                                     (vpc-config :target-type vpc-config
                                      :member-name "vpcConfig")
                                     (log-config :target-type logs-config
                                      :member-name "logConfig")
                                     (encryption-key :target-type
                                      non-empty-string :member-name
                                      "encryptionKey")
                                     (service-role :target-type
                                      non-empty-string :member-name
                                      "serviceRole")
                                     (current-session :target-type
                                      sandbox-session :member-name
                                      "currentSession"))
                                    (:shape-name "Sandbox"))

(smithy/sdk/shapes:define-list sandbox-ids :member non-empty-string)

(smithy/sdk/shapes:define-structure sandbox-session common-lisp:nil
                                    ((id :target-type non-empty-string
                                      :member-name "id")
                                     (status :target-type string :member-name
                                      "status")
                                     (start-time :target-type timestamp
                                      :member-name "startTime")
                                     (end-time :target-type timestamp
                                      :member-name "endTime")
                                     (current-phase :target-type string
                                      :member-name "currentPhase")
                                     (phases :target-type
                                      sandbox-session-phases :member-name
                                      "phases")
                                     (resolved-source-version :target-type
                                      non-empty-string :member-name
                                      "resolvedSourceVersion")
                                     (logs :target-type logs-location
                                      :member-name "logs")
                                     (network-interface :target-type
                                      network-interface :member-name
                                      "networkInterface"))
                                    (:shape-name "SandboxSession"))

(smithy/sdk/shapes:define-structure sandbox-session-phase common-lisp:nil
                                    ((phase-type :target-type string
                                      :member-name "phaseType")
                                     (phase-status :target-type status-type
                                      :member-name "phaseStatus")
                                     (start-time :target-type timestamp
                                      :member-name "startTime")
                                     (end-time :target-type timestamp
                                      :member-name "endTime")
                                     (duration-in-seconds :target-type
                                      wrapper-long :member-name
                                      "durationInSeconds")
                                     (contexts :target-type phase-contexts
                                      :member-name "contexts"))
                                    (:shape-name "SandboxSessionPhase"))

(smithy/sdk/shapes:define-list sandbox-session-phases :member
                               sandbox-session-phase)

(smithy/sdk/shapes:define-list sandboxes :member sandbox)

(smithy/sdk/shapes:define-structure scaling-configuration-input common-lisp:nil
                                    ((scaling-type :target-type
                                      fleet-scaling-type :member-name
                                      "scalingType")
                                     (target-tracking-scaling-configs
                                      :target-type
                                      target-tracking-scaling-configurations
                                      :member-name
                                      "targetTrackingScalingConfigs")
                                     (max-capacity :target-type fleet-capacity
                                      :member-name "maxCapacity"))
                                    (:shape-name "ScalingConfigurationInput"))

(smithy/sdk/shapes:define-structure scaling-configuration-output
                                    common-lisp:nil
                                    ((scaling-type :target-type
                                      fleet-scaling-type :member-name
                                      "scalingType")
                                     (target-tracking-scaling-configs
                                      :target-type
                                      target-tracking-scaling-configurations
                                      :member-name
                                      "targetTrackingScalingConfigs")
                                     (max-capacity :target-type fleet-capacity
                                      :member-name "maxCapacity")
                                     (desired-capacity :target-type
                                      fleet-capacity :member-name
                                      "desiredCapacity"))
                                    (:shape-name "ScalingConfigurationOutput"))

(smithy/sdk/shapes:define-structure scope-configuration common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "name")
                                     (domain :target-type string :member-name
                                      "domain")
                                     (scope :target-type webhook-scope-type
                                      :required common-lisp:t :member-name
                                      "scope"))
                                    (:shape-name "ScopeConfiguration"))

(smithy/sdk/shapes:define-list security-group-ids :member non-empty-string)

(smithy/sdk/shapes:define-type sensitive-non-empty-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sensitive-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum server-type
    common-lisp:nil
  (:github "GITHUB")
  (:bitbucket "BITBUCKET")
  (:github-enterprise "GITHUB_ENTERPRISE")
  (:gitlab "GITLAB")
  (:gitlab-self-managed "GITLAB_SELF_MANAGED"))

(smithy/sdk/shapes:define-enum shared-resource-sort-by-type
    common-lisp:nil
  (:arn "ARN")
  (:modified-time "MODIFIED_TIME"))

(smithy/sdk/shapes:define-enum sort-order-type
    common-lisp:nil
  (:ascending "ASCENDING")
  (:descending "DESCENDING"))

(smithy/sdk/shapes:define-structure source-auth common-lisp:nil
                                    ((type :target-type source-auth-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (resource :target-type string :member-name
                                      "resource"))
                                    (:shape-name "SourceAuth"))

(smithy/sdk/shapes:define-enum source-auth-type
    common-lisp:nil
  (:oauth "OAUTH")
  (:codeconnections "CODECONNECTIONS")
  (:secrets-manager "SECRETS_MANAGER"))

(smithy/sdk/shapes:define-structure source-credentials-info common-lisp:nil
                                    ((arn :target-type non-empty-string
                                      :member-name "arn")
                                     (server-type :target-type server-type
                                      :member-name "serverType")
                                     (auth-type :target-type auth-type
                                      :member-name "authType")
                                     (resource :target-type string :member-name
                                      "resource"))
                                    (:shape-name "SourceCredentialsInfo"))

(smithy/sdk/shapes:define-list source-credentials-infos :member
                               source-credentials-info)

(smithy/sdk/shapes:define-enum source-type
    common-lisp:nil
  (:codecommit "CODECOMMIT")
  (:codepipeline "CODEPIPELINE")
  (:github "GITHUB")
  (:gitlab "GITLAB")
  (:gitlab-self-managed "GITLAB_SELF_MANAGED")
  (:s3 "S3")
  (:bitbucket "BITBUCKET")
  (:github-enterprise "GITHUB_ENTERPRISE")
  (:no-source "NO_SOURCE"))

(smithy/sdk/shapes:define-input start-build-batch-input common-lisp:nil
                                ((project-name :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "projectName")
                                 (secondary-sources-override :target-type
                                  project-sources :member-name
                                  "secondarySourcesOverride")
                                 (secondary-sources-version-override
                                  :target-type
                                  project-secondary-source-versions
                                  :member-name
                                  "secondarySourcesVersionOverride")
                                 (source-version :target-type string
                                  :member-name "sourceVersion")
                                 (artifacts-override :target-type
                                  project-artifacts :member-name
                                  "artifactsOverride")
                                 (secondary-artifacts-override :target-type
                                  project-artifacts-list :member-name
                                  "secondaryArtifactsOverride")
                                 (environment-variables-override :target-type
                                  environment-variables :member-name
                                  "environmentVariablesOverride")
                                 (source-type-override :target-type source-type
                                  :member-name "sourceTypeOverride")
                                 (source-location-override :target-type string
                                  :member-name "sourceLocationOverride")
                                 (source-auth-override :target-type source-auth
                                  :member-name "sourceAuthOverride")
                                 (git-clone-depth-override :target-type
                                  git-clone-depth :member-name
                                  "gitCloneDepthOverride")
                                 (git-submodules-config-override :target-type
                                  git-submodules-config :member-name
                                  "gitSubmodulesConfigOverride")
                                 (buildspec-override :target-type string
                                  :member-name "buildspecOverride")
                                 (insecure-ssl-override :target-type
                                  wrapper-boolean :member-name
                                  "insecureSslOverride")
                                 (report-build-batch-status-override
                                  :target-type wrapper-boolean :member-name
                                  "reportBuildBatchStatusOverride")
                                 (environment-type-override :target-type
                                  environment-type :member-name
                                  "environmentTypeOverride")
                                 (image-override :target-type non-empty-string
                                  :member-name "imageOverride")
                                 (compute-type-override :target-type
                                  compute-type :member-name
                                  "computeTypeOverride")
                                 (certificate-override :target-type string
                                  :member-name "certificateOverride")
                                 (cache-override :target-type project-cache
                                  :member-name "cacheOverride")
                                 (service-role-override :target-type
                                  non-empty-string :member-name
                                  "serviceRoleOverride")
                                 (privileged-mode-override :target-type
                                  wrapper-boolean :member-name
                                  "privilegedModeOverride")
                                 (build-timeout-in-minutes-override
                                  :target-type build-time-out :member-name
                                  "buildTimeoutInMinutesOverride")
                                 (queued-timeout-in-minutes-override
                                  :target-type time-out :member-name
                                  "queuedTimeoutInMinutesOverride")
                                 (encryption-key-override :target-type
                                  non-empty-string :member-name
                                  "encryptionKeyOverride")
                                 (idempotency-token :target-type string
                                  :member-name "idempotencyToken")
                                 (logs-config-override :target-type logs-config
                                  :member-name "logsConfigOverride")
                                 (registry-credential-override :target-type
                                  registry-credential :member-name
                                  "registryCredentialOverride")
                                 (image-pull-credentials-type-override
                                  :target-type image-pull-credentials-type
                                  :member-name
                                  "imagePullCredentialsTypeOverride")
                                 (build-batch-config-override :target-type
                                  project-build-batch-config :member-name
                                  "buildBatchConfigOverride")
                                 (debug-session-enabled :target-type
                                  wrapper-boolean :member-name
                                  "debugSessionEnabled"))
                                (:shape-name "StartBuildBatchInput"))

(smithy/sdk/shapes:define-output start-build-batch-output common-lisp:nil
                                 ((build-batch :target-type build-batch
                                   :member-name "buildBatch"))
                                 (:shape-name "StartBuildBatchOutput"))

(smithy/sdk/shapes:define-input start-build-input common-lisp:nil
                                ((project-name :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "projectName")
                                 (secondary-sources-override :target-type
                                  project-sources :member-name
                                  "secondarySourcesOverride")
                                 (secondary-sources-version-override
                                  :target-type
                                  project-secondary-source-versions
                                  :member-name
                                  "secondarySourcesVersionOverride")
                                 (source-version :target-type string
                                  :member-name "sourceVersion")
                                 (artifacts-override :target-type
                                  project-artifacts :member-name
                                  "artifactsOverride")
                                 (secondary-artifacts-override :target-type
                                  project-artifacts-list :member-name
                                  "secondaryArtifactsOverride")
                                 (environment-variables-override :target-type
                                  environment-variables :member-name
                                  "environmentVariablesOverride")
                                 (source-type-override :target-type source-type
                                  :member-name "sourceTypeOverride")
                                 (source-location-override :target-type string
                                  :member-name "sourceLocationOverride")
                                 (source-auth-override :target-type source-auth
                                  :member-name "sourceAuthOverride")
                                 (git-clone-depth-override :target-type
                                  git-clone-depth :member-name
                                  "gitCloneDepthOverride")
                                 (git-submodules-config-override :target-type
                                  git-submodules-config :member-name
                                  "gitSubmodulesConfigOverride")
                                 (buildspec-override :target-type string
                                  :member-name "buildspecOverride")
                                 (insecure-ssl-override :target-type
                                  wrapper-boolean :member-name
                                  "insecureSslOverride")
                                 (report-build-status-override :target-type
                                  wrapper-boolean :member-name
                                  "reportBuildStatusOverride")
                                 (build-status-config-override :target-type
                                  build-status-config :member-name
                                  "buildStatusConfigOverride")
                                 (environment-type-override :target-type
                                  environment-type :member-name
                                  "environmentTypeOverride")
                                 (image-override :target-type non-empty-string
                                  :member-name "imageOverride")
                                 (compute-type-override :target-type
                                  compute-type :member-name
                                  "computeTypeOverride")
                                 (certificate-override :target-type string
                                  :member-name "certificateOverride")
                                 (cache-override :target-type project-cache
                                  :member-name "cacheOverride")
                                 (service-role-override :target-type
                                  non-empty-string :member-name
                                  "serviceRoleOverride")
                                 (privileged-mode-override :target-type
                                  wrapper-boolean :member-name
                                  "privilegedModeOverride")
                                 (timeout-in-minutes-override :target-type
                                  build-time-out :member-name
                                  "timeoutInMinutesOverride")
                                 (queued-timeout-in-minutes-override
                                  :target-type time-out :member-name
                                  "queuedTimeoutInMinutesOverride")
                                 (encryption-key-override :target-type
                                  non-empty-string :member-name
                                  "encryptionKeyOverride")
                                 (idempotency-token :target-type string
                                  :member-name "idempotencyToken")
                                 (logs-config-override :target-type logs-config
                                  :member-name "logsConfigOverride")
                                 (registry-credential-override :target-type
                                  registry-credential :member-name
                                  "registryCredentialOverride")
                                 (image-pull-credentials-type-override
                                  :target-type image-pull-credentials-type
                                  :member-name
                                  "imagePullCredentialsTypeOverride")
                                 (debug-session-enabled :target-type
                                  wrapper-boolean :member-name
                                  "debugSessionEnabled")
                                 (fleet-override :target-type project-fleet
                                  :member-name "fleetOverride")
                                 (auto-retry-limit-override :target-type
                                  wrapper-int :member-name
                                  "autoRetryLimitOverride"))
                                (:shape-name "StartBuildInput"))

(smithy/sdk/shapes:define-output start-build-output common-lisp:nil
                                 ((build :target-type build :member-name
                                   "build"))
                                 (:shape-name "StartBuildOutput"))

(smithy/sdk/shapes:define-input start-command-execution-input common-lisp:nil
                                ((sandbox-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "sandboxId")
                                 (command :target-type
                                  sensitive-non-empty-string :required
                                  common-lisp:t :member-name "command")
                                 (type :target-type command-type :member-name
                                  "type"))
                                (:shape-name "StartCommandExecutionInput"))

(smithy/sdk/shapes:define-output start-command-execution-output common-lisp:nil
                                 ((command-execution :target-type
                                   command-execution :member-name
                                   "commandExecution"))
                                 (:shape-name "StartCommandExecutionOutput"))

(smithy/sdk/shapes:define-input start-sandbox-connection-input common-lisp:nil
                                ((sandbox-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "sandboxId"))
                                (:shape-name "StartSandboxConnectionInput"))

(smithy/sdk/shapes:define-output start-sandbox-connection-output
                                 common-lisp:nil
                                 ((ssm-session :target-type ssmsession
                                   :member-name "ssmSession"))
                                 (:shape-name "StartSandboxConnectionOutput"))

(smithy/sdk/shapes:define-input start-sandbox-input common-lisp:nil
                                ((project-name :target-type non-empty-string
                                  :member-name "projectName")
                                 (idempotency-token :target-type
                                  sensitive-string :member-name
                                  "idempotencyToken"))
                                (:shape-name "StartSandboxInput"))

(smithy/sdk/shapes:define-output start-sandbox-output common-lisp:nil
                                 ((sandbox :target-type sandbox :member-name
                                   "sandbox"))
                                 (:shape-name "StartSandboxOutput"))

(smithy/sdk/shapes:define-enum status-type
    common-lisp:nil
  (:succeeded "SUCCEEDED")
  (:failed "FAILED")
  (:fault "FAULT")
  (:timed-out "TIMED_OUT")
  (:in-progress "IN_PROGRESS")
  (:stopped "STOPPED"))

(smithy/sdk/shapes:define-input stop-build-batch-input common-lisp:nil
                                ((id :target-type non-empty-string :required
                                  common-lisp:t :member-name "id"))
                                (:shape-name "StopBuildBatchInput"))

(smithy/sdk/shapes:define-output stop-build-batch-output common-lisp:nil
                                 ((build-batch :target-type build-batch
                                   :member-name "buildBatch"))
                                 (:shape-name "StopBuildBatchOutput"))

(smithy/sdk/shapes:define-input stop-build-input common-lisp:nil
                                ((id :target-type non-empty-string :required
                                  common-lisp:t :member-name "id"))
                                (:shape-name "StopBuildInput"))

(smithy/sdk/shapes:define-output stop-build-output common-lisp:nil
                                 ((build :target-type build :member-name
                                   "build"))
                                 (:shape-name "StopBuildOutput"))

(smithy/sdk/shapes:define-input stop-sandbox-input common-lisp:nil
                                ((id :target-type non-empty-string :required
                                  common-lisp:t :member-name "id"))
                                (:shape-name "StopSandboxInput"))

(smithy/sdk/shapes:define-output stop-sandbox-output common-lisp:nil
                                 ((sandbox :target-type sandbox :member-name
                                   "sandbox"))
                                 (:shape-name "StopSandboxOutput"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnets :member non-empty-string)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type key-input :member-name
                                      "key")
                                     (value :target-type value-input
                                      :member-name "value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-structure target-tracking-scaling-configuration
                                    common-lisp:nil
                                    ((metric-type :target-type
                                      fleet-scaling-metric-type :member-name
                                      "metricType")
                                     (target-value :target-type wrapper-double
                                      :member-name "targetValue"))
                                    (:shape-name
                                     "TargetTrackingScalingConfiguration"))

(smithy/sdk/shapes:define-list target-tracking-scaling-configurations :member
                               target-tracking-scaling-configuration)

(smithy/sdk/shapes:define-structure test-case common-lisp:nil
                                    ((report-arn :target-type non-empty-string
                                      :member-name "reportArn")
                                     (test-raw-data-path :target-type string
                                      :member-name "testRawDataPath")
                                     (prefix :target-type string :member-name
                                      "prefix")
                                     (name :target-type string :member-name
                                      "name")
                                     (status :target-type string :member-name
                                      "status")
                                     (duration-in-nano-seconds :target-type
                                      wrapper-long :member-name
                                      "durationInNanoSeconds")
                                     (message :target-type string :member-name
                                      "message")
                                     (expired :target-type timestamp
                                      :member-name "expired")
                                     (test-suite-name :target-type string
                                      :member-name "testSuiteName"))
                                    (:shape-name "TestCase"))

(smithy/sdk/shapes:define-structure test-case-filter common-lisp:nil
                                    ((status :target-type string :member-name
                                      "status")
                                     (keyword :target-type string :member-name
                                      "keyword"))
                                    (:shape-name "TestCaseFilter"))

(smithy/sdk/shapes:define-list test-cases :member test-case)

(smithy/sdk/shapes:define-structure test-report-summary common-lisp:nil
                                    ((total :target-type wrapper-int :required
                                      common-lisp:t :member-name "total")
                                     (status-counts :target-type
                                      report-status-counts :required
                                      common-lisp:t :member-name
                                      "statusCounts")
                                     (duration-in-nano-seconds :target-type
                                      wrapper-long :required common-lisp:t
                                      :member-name "durationInNanoSeconds"))
                                    (:shape-name "TestReportSummary"))

(smithy/sdk/shapes:define-type time-out smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input update-fleet-input common-lisp:nil
                                ((arn :target-type non-empty-string :required
                                  common-lisp:t :member-name "arn")
                                 (base-capacity :target-type fleet-capacity
                                  :member-name "baseCapacity")
                                 (environment-type :target-type
                                  environment-type :member-name
                                  "environmentType")
                                 (compute-type :target-type compute-type
                                  :member-name "computeType")
                                 (compute-configuration :target-type
                                  compute-configuration :member-name
                                  "computeConfiguration")
                                 (scaling-configuration :target-type
                                  scaling-configuration-input :member-name
                                  "scalingConfiguration")
                                 (overflow-behavior :target-type
                                  fleet-overflow-behavior :member-name
                                  "overflowBehavior")
                                 (vpc-config :target-type vpc-config
                                  :member-name "vpcConfig")
                                 (proxy-configuration :target-type
                                  proxy-configuration :member-name
                                  "proxyConfiguration")
                                 (image-id :target-type non-empty-string
                                  :member-name "imageId")
                                 (fleet-service-role :target-type
                                  non-empty-string :member-name
                                  "fleetServiceRole")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "UpdateFleetInput"))

(smithy/sdk/shapes:define-output update-fleet-output common-lisp:nil
                                 ((fleet :target-type fleet :member-name
                                   "fleet"))
                                 (:shape-name "UpdateFleetOutput"))

(smithy/sdk/shapes:define-input update-project-input common-lisp:nil
                                ((name :target-type non-empty-string :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type project-description
                                  :member-name "description")
                                 (source :target-type project-source
                                  :member-name "source")
                                 (secondary-sources :target-type
                                  project-sources :member-name
                                  "secondarySources")
                                 (source-version :target-type string
                                  :member-name "sourceVersion")
                                 (secondary-source-versions :target-type
                                  project-secondary-source-versions
                                  :member-name "secondarySourceVersions")
                                 (artifacts :target-type project-artifacts
                                  :member-name "artifacts")
                                 (secondary-artifacts :target-type
                                  project-artifacts-list :member-name
                                  "secondaryArtifacts")
                                 (cache :target-type project-cache :member-name
                                  "cache")
                                 (environment :target-type project-environment
                                  :member-name "environment")
                                 (service-role :target-type non-empty-string
                                  :member-name "serviceRole")
                                 (timeout-in-minutes :target-type
                                  build-time-out :member-name
                                  "timeoutInMinutes")
                                 (queued-timeout-in-minutes :target-type
                                  time-out :member-name
                                  "queuedTimeoutInMinutes")
                                 (encryption-key :target-type non-empty-string
                                  :member-name "encryptionKey")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (vpc-config :target-type vpc-config
                                  :member-name "vpcConfig")
                                 (badge-enabled :target-type wrapper-boolean
                                  :member-name "badgeEnabled")
                                 (logs-config :target-type logs-config
                                  :member-name "logsConfig")
                                 (file-system-locations :target-type
                                  project-file-system-locations :member-name
                                  "fileSystemLocations")
                                 (build-batch-config :target-type
                                  project-build-batch-config :member-name
                                  "buildBatchConfig")
                                 (concurrent-build-limit :target-type
                                  wrapper-int :member-name
                                  "concurrentBuildLimit")
                                 (auto-retry-limit :target-type wrapper-int
                                  :member-name "autoRetryLimit"))
                                (:shape-name "UpdateProjectInput"))

(smithy/sdk/shapes:define-output update-project-output common-lisp:nil
                                 ((project :target-type project :member-name
                                   "project"))
                                 (:shape-name "UpdateProjectOutput"))

(smithy/sdk/shapes:define-input update-project-visibility-input common-lisp:nil
                                ((project-arn :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "projectArn")
                                 (project-visibility :target-type
                                  project-visibility-type :required
                                  common-lisp:t :member-name
                                  "projectVisibility")
                                 (resource-access-role :target-type
                                  non-empty-string :member-name
                                  "resourceAccessRole"))
                                (:shape-name "UpdateProjectVisibilityInput"))

(smithy/sdk/shapes:define-output update-project-visibility-output
                                 common-lisp:nil
                                 ((project-arn :target-type non-empty-string
                                   :member-name "projectArn")
                                  (public-project-alias :target-type
                                   non-empty-string :member-name
                                   "publicProjectAlias")
                                  (project-visibility :target-type
                                   project-visibility-type :member-name
                                   "projectVisibility"))
                                 (:shape-name "UpdateProjectVisibilityOutput"))

(smithy/sdk/shapes:define-input update-report-group-input common-lisp:nil
                                ((arn :target-type non-empty-string :required
                                  common-lisp:t :member-name "arn")
                                 (export-config :target-type
                                  report-export-config :member-name
                                  "exportConfig")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "UpdateReportGroupInput"))

(smithy/sdk/shapes:define-output update-report-group-output common-lisp:nil
                                 ((report-group :target-type report-group
                                   :member-name "reportGroup"))
                                 (:shape-name "UpdateReportGroupOutput"))

(smithy/sdk/shapes:define-input update-webhook-input common-lisp:nil
                                ((project-name :target-type project-name
                                  :required common-lisp:t :member-name
                                  "projectName")
                                 (branch-filter :target-type string
                                  :member-name "branchFilter")
                                 (rotate-secret :target-type boolean
                                  :member-name "rotateSecret")
                                 (filter-groups :target-type filter-groups
                                  :member-name "filterGroups")
                                 (build-type :target-type webhook-build-type
                                  :member-name "buildType"))
                                (:shape-name "UpdateWebhookInput"))

(smithy/sdk/shapes:define-output update-webhook-output common-lisp:nil
                                 ((webhook :target-type webhook :member-name
                                   "webhook"))
                                 (:shape-name "UpdateWebhookOutput"))

(smithy/sdk/shapes:define-type value-input smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure vpc-config common-lisp:nil
                                    ((vpc-id :target-type non-empty-string
                                      :member-name "vpcId")
                                     (subnets :target-type subnets :member-name
                                      "subnets")
                                     (security-group-ids :target-type
                                      security-group-ids :member-name
                                      "securityGroupIds"))
                                    (:shape-name "VpcConfig"))

(smithy/sdk/shapes:define-structure webhook common-lisp:nil
                                    ((url :target-type non-empty-string
                                      :member-name "url")
                                     (payload-url :target-type non-empty-string
                                      :member-name "payloadUrl")
                                     (secret :target-type non-empty-string
                                      :member-name "secret")
                                     (branch-filter :target-type string
                                      :member-name "branchFilter")
                                     (filter-groups :target-type filter-groups
                                      :member-name "filterGroups")
                                     (build-type :target-type
                                      webhook-build-type :member-name
                                      "buildType")
                                     (manual-creation :target-type
                                      wrapper-boolean :member-name
                                      "manualCreation")
                                     (last-modified-secret :target-type
                                      timestamp :member-name
                                      "lastModifiedSecret")
                                     (scope-configuration :target-type
                                      scope-configuration :member-name
                                      "scopeConfiguration")
                                     (status :target-type webhook-status
                                      :member-name "status")
                                     (status-message :target-type string
                                      :member-name "statusMessage"))
                                    (:shape-name "Webhook"))

(smithy/sdk/shapes:define-enum webhook-build-type
    common-lisp:nil
  (:build "BUILD")
  (:build-batch "BUILD_BATCH")
  (:runner-buildkite-build "RUNNER_BUILDKITE_BUILD"))

(smithy/sdk/shapes:define-structure webhook-filter common-lisp:nil
                                    ((type :target-type webhook-filter-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (pattern :target-type string :required
                                      common-lisp:t :member-name "pattern")
                                     (exclude-matched-pattern :target-type
                                      wrapper-boolean :member-name
                                      "excludeMatchedPattern"))
                                    (:shape-name "WebhookFilter"))

(smithy/sdk/shapes:define-enum webhook-filter-type
    common-lisp:nil
  (:event "EVENT")
  (:base-ref "BASE_REF")
  (:head-ref "HEAD_REF")
  (:actor-account-id "ACTOR_ACCOUNT_ID")
  (:file-path "FILE_PATH")
  (:commit-message "COMMIT_MESSAGE")
  (:workflow-name "WORKFLOW_NAME")
  (:tag-name "TAG_NAME")
  (:release-name "RELEASE_NAME")
  (:repository-name "REPOSITORY_NAME")
  (:organization-name "ORGANIZATION_NAME"))

(smithy/sdk/shapes:define-enum webhook-scope-type
    common-lisp:nil
  (:github-organization "GITHUB_ORGANIZATION")
  (:github-global "GITHUB_GLOBAL")
  (:gitlab-group "GITLAB_GROUP"))

(smithy/sdk/shapes:define-enum webhook-status
    common-lisp:nil
  (:creating "CREATING")
  (:create-failed "CREATE_FAILED")
  (:active "ACTIVE")
  (:deleting "DELETING"))

(smithy/sdk/shapes:define-type wrapper-boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type wrapper-double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type wrapper-int smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type wrapper-long smithy/sdk/smithy-types:long)

(smithy/sdk/operation:define-operation batch-delete-builds :shape-name
                                       "BatchDeleteBuilds" :input
                                       batch-delete-builds-input :output
                                       batch-delete-builds-output :errors
                                       (invalid-input-exception))

(smithy/sdk/operation:define-operation batch-get-build-batches :shape-name
                                       "BatchGetBuildBatches" :input
                                       batch-get-build-batches-input :output
                                       batch-get-build-batches-output :errors
                                       (invalid-input-exception))

(smithy/sdk/operation:define-operation batch-get-builds :shape-name
                                       "BatchGetBuilds" :input
                                       batch-get-builds-input :output
                                       batch-get-builds-output :errors
                                       (invalid-input-exception))

(smithy/sdk/operation:define-operation batch-get-command-executions :shape-name
                                       "BatchGetCommandExecutions" :input
                                       batch-get-command-executions-input
                                       :output
                                       batch-get-command-executions-output
                                       :errors (invalid-input-exception))

(smithy/sdk/operation:define-operation batch-get-fleets :shape-name
                                       "BatchGetFleets" :input
                                       batch-get-fleets-input :output
                                       batch-get-fleets-output :errors
                                       (invalid-input-exception))

(smithy/sdk/operation:define-operation batch-get-projects :shape-name
                                       "BatchGetProjects" :input
                                       batch-get-projects-input :output
                                       batch-get-projects-output :errors
                                       (invalid-input-exception))

(smithy/sdk/operation:define-operation batch-get-report-groups :shape-name
                                       "BatchGetReportGroups" :input
                                       batch-get-report-groups-input :output
                                       batch-get-report-groups-output :errors
                                       (invalid-input-exception))

(smithy/sdk/operation:define-operation batch-get-reports :shape-name
                                       "BatchGetReports" :input
                                       batch-get-reports-input :output
                                       batch-get-reports-output :errors
                                       (invalid-input-exception))

(smithy/sdk/operation:define-operation batch-get-sandboxes :shape-name
                                       "BatchGetSandboxes" :input
                                       batch-get-sandboxes-input :output
                                       batch-get-sandboxes-output :errors
                                       (invalid-input-exception))

(smithy/sdk/operation:define-operation create-fleet :shape-name "CreateFleet"
                                       :input create-fleet-input :output
                                       create-fleet-output :errors
                                       (account-limit-exceeded-exception
                                        invalid-input-exception
                                        resource-already-exists-exception))

(smithy/sdk/operation:define-operation create-project :shape-name
                                       "CreateProject" :input
                                       create-project-input :output
                                       create-project-output :errors
                                       (account-limit-exceeded-exception
                                        invalid-input-exception
                                        resource-already-exists-exception))

(smithy/sdk/operation:define-operation create-report-group :shape-name
                                       "CreateReportGroup" :input
                                       create-report-group-input :output
                                       create-report-group-output :errors
                                       (account-limit-exceeded-exception
                                        invalid-input-exception
                                        resource-already-exists-exception))

(smithy/sdk/operation:define-operation create-webhook :shape-name
                                       "CreateWebhook" :input
                                       create-webhook-input :output
                                       create-webhook-output :errors
                                       (invalid-input-exception
                                        oauth-provider-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-build-batch :shape-name
                                       "DeleteBuildBatch" :input
                                       delete-build-batch-input :output
                                       delete-build-batch-output :errors
                                       (invalid-input-exception))

(smithy/sdk/operation:define-operation delete-fleet :shape-name "DeleteFleet"
                                       :input delete-fleet-input :output
                                       delete-fleet-output :errors
                                       (invalid-input-exception))

(smithy/sdk/operation:define-operation delete-project :shape-name
                                       "DeleteProject" :input
                                       delete-project-input :output
                                       delete-project-output :errors
                                       (invalid-input-exception))

(smithy/sdk/operation:define-operation delete-report :shape-name "DeleteReport"
                                       :input delete-report-input :output
                                       delete-report-output :errors
                                       (invalid-input-exception))

(smithy/sdk/operation:define-operation delete-report-group :shape-name
                                       "DeleteReportGroup" :input
                                       delete-report-group-input :output
                                       delete-report-group-output :errors
                                       (invalid-input-exception))

(smithy/sdk/operation:define-operation delete-resource-policy :shape-name
                                       "DeleteResourcePolicy" :input
                                       delete-resource-policy-input :output
                                       delete-resource-policy-output :errors
                                       (invalid-input-exception))

(smithy/sdk/operation:define-operation delete-source-credentials :shape-name
                                       "DeleteSourceCredentials" :input
                                       delete-source-credentials-input :output
                                       delete-source-credentials-output :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-webhook :shape-name
                                       "DeleteWebhook" :input
                                       delete-webhook-input :output
                                       delete-webhook-output :errors
                                       (invalid-input-exception
                                        oauth-provider-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-code-coverages :shape-name
                                       "DescribeCodeCoverages" :input
                                       describe-code-coverages-input :output
                                       describe-code-coverages-output :errors
                                       (invalid-input-exception))

(smithy/sdk/operation:define-operation describe-test-cases :shape-name
                                       "DescribeTestCases" :input
                                       describe-test-cases-input :output
                                       describe-test-cases-output :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-report-group-trend :shape-name
                                       "GetReportGroupTrend" :input
                                       get-report-group-trend-input :output
                                       get-report-group-trend-output :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-resource-policy :shape-name
                                       "GetResourcePolicy" :input
                                       get-resource-policy-input :output
                                       get-resource-policy-output :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation import-source-credentials :shape-name
                                       "ImportSourceCredentials" :input
                                       import-source-credentials-input :output
                                       import-source-credentials-output :errors
                                       (account-limit-exceeded-exception
                                        invalid-input-exception
                                        resource-already-exists-exception))

(smithy/sdk/operation:define-operation invalidate-project-cache :shape-name
                                       "InvalidateProjectCache" :input
                                       invalidate-project-cache-input :output
                                       invalidate-project-cache-output :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-build-batches :shape-name
                                       "ListBuildBatches" :input
                                       list-build-batches-input :output
                                       list-build-batches-output :errors
                                       (invalid-input-exception))

(smithy/sdk/operation:define-operation list-build-batches-for-project
                                       :shape-name "ListBuildBatchesForProject"
                                       :input
                                       list-build-batches-for-project-input
                                       :output
                                       list-build-batches-for-project-output
                                       :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-builds :shape-name "ListBuilds"
                                       :input list-builds-input :output
                                       list-builds-output :errors
                                       (invalid-input-exception))

(smithy/sdk/operation:define-operation list-builds-for-project :shape-name
                                       "ListBuildsForProject" :input
                                       list-builds-for-project-input :output
                                       list-builds-for-project-output :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-command-executions-for-sandbox
                                       :shape-name
                                       "ListCommandExecutionsForSandbox" :input
                                       list-command-executions-for-sandbox-input
                                       :output
                                       list-command-executions-for-sandbox-output
                                       :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-curated-environment-images
                                       :shape-name
                                       "ListCuratedEnvironmentImages" :input
                                       list-curated-environment-images-input
                                       :output
                                       list-curated-environment-images-output
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation list-fleets :shape-name "ListFleets"
                                       :input list-fleets-input :output
                                       list-fleets-output :errors
                                       (invalid-input-exception))

(smithy/sdk/operation:define-operation list-projects :shape-name "ListProjects"
                                       :input list-projects-input :output
                                       list-projects-output :errors
                                       (invalid-input-exception))

(smithy/sdk/operation:define-operation list-report-groups :shape-name
                                       "ListReportGroups" :input
                                       list-report-groups-input :output
                                       list-report-groups-output :errors
                                       (invalid-input-exception))

(smithy/sdk/operation:define-operation list-reports :shape-name "ListReports"
                                       :input list-reports-input :output
                                       list-reports-output :errors
                                       (invalid-input-exception))

(smithy/sdk/operation:define-operation list-reports-for-report-group
                                       :shape-name "ListReportsForReportGroup"
                                       :input
                                       list-reports-for-report-group-input
                                       :output
                                       list-reports-for-report-group-output
                                       :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-sandboxes :shape-name
                                       "ListSandboxes" :input
                                       list-sandboxes-input :output
                                       list-sandboxes-output :errors
                                       (invalid-input-exception))

(smithy/sdk/operation:define-operation list-sandboxes-for-project :shape-name
                                       "ListSandboxesForProject" :input
                                       list-sandboxes-for-project-input :output
                                       list-sandboxes-for-project-output
                                       :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-shared-projects :shape-name
                                       "ListSharedProjects" :input
                                       list-shared-projects-input :output
                                       list-shared-projects-output :errors
                                       (invalid-input-exception))

(smithy/sdk/operation:define-operation list-shared-report-groups :shape-name
                                       "ListSharedReportGroups" :input
                                       list-shared-report-groups-input :output
                                       list-shared-report-groups-output :errors
                                       (invalid-input-exception))

(smithy/sdk/operation:define-operation list-source-credentials :shape-name
                                       "ListSourceCredentials" :input
                                       list-source-credentials-input :output
                                       list-source-credentials-output :errors
                                       (invalid-input-exception))

(smithy/sdk/operation:define-operation put-resource-policy :shape-name
                                       "PutResourcePolicy" :input
                                       put-resource-policy-input :output
                                       put-resource-policy-output :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation retry-build :shape-name "RetryBuild"
                                       :input retry-build-input :output
                                       retry-build-output :errors
                                       (account-limit-exceeded-exception
                                        invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation retry-build-batch :shape-name
                                       "RetryBuildBatch" :input
                                       retry-build-batch-input :output
                                       retry-build-batch-output :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation start-build :shape-name "StartBuild"
                                       :input start-build-input :output
                                       start-build-output :errors
                                       (account-limit-exceeded-exception
                                        invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation start-build-batch :shape-name
                                       "StartBuildBatch" :input
                                       start-build-batch-input :output
                                       start-build-batch-output :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation start-command-execution :shape-name
                                       "StartCommandExecution" :input
                                       start-command-execution-input :output
                                       start-command-execution-output :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation start-sandbox :shape-name "StartSandbox"
                                       :input start-sandbox-input :output
                                       start-sandbox-output :errors
                                       (account-suspended-exception
                                        invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation start-sandbox-connection :shape-name
                                       "StartSandboxConnection" :input
                                       start-sandbox-connection-input :output
                                       start-sandbox-connection-output :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation stop-build :shape-name "StopBuild"
                                       :input stop-build-input :output
                                       stop-build-output :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation stop-build-batch :shape-name
                                       "StopBuildBatch" :input
                                       stop-build-batch-input :output
                                       stop-build-batch-output :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation stop-sandbox :shape-name "StopSandbox"
                                       :input stop-sandbox-input :output
                                       stop-sandbox-output :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-fleet :shape-name "UpdateFleet"
                                       :input update-fleet-input :output
                                       update-fleet-output :errors
                                       (account-limit-exceeded-exception
                                        invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-project :shape-name
                                       "UpdateProject" :input
                                       update-project-input :output
                                       update-project-output :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-project-visibility :shape-name
                                       "UpdateProjectVisibility" :input
                                       update-project-visibility-input :output
                                       update-project-visibility-output :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-report-group :shape-name
                                       "UpdateReportGroup" :input
                                       update-report-group-input :output
                                       update-report-group-output :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-webhook :shape-name
                                       "UpdateWebhook" :input
                                       update-webhook-input :output
                                       update-webhook-output :errors
                                       (invalid-input-exception
                                        oauth-provider-exception
                                        resource-not-found-exception))
