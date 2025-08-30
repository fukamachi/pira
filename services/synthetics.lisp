(uiop/package:define-package #:pira/synthetics (:use)
                             (:export #:access-denied-exception
                              #:artifact-config-input #:artifact-config-output
                              #:associate-resource #:bad-request-exception
                              #:base-screenshot
                              #:base-screenshot-config-ignore-coordinate
                              #:base-screenshot-ignore-coordinates
                              #:base-screenshots #:blob #:canaries
                              #:canaries-last-run #:canary #:canary-arn
                              #:canary-code-input #:canary-code-output
                              #:canary-dry-run-config-output #:canary-last-run
                              #:canary-name #:canary-run
                              #:canary-run-config-input
                              #:canary-run-config-output #:canary-run-state
                              #:canary-run-state-reason-code
                              #:canary-run-status #:canary-run-test-result
                              #:canary-run-timeline #:canary-runs
                              #:canary-schedule-input #:canary-schedule-output
                              #:canary-state #:canary-state-reason-code
                              #:canary-status #:canary-timeline #:code-handler
                              #:conflict-exception #:create-canary
                              #:create-group #:delete-canary #:delete-group
                              #:dependencies #:dependency #:dependency-type
                              #:describe-canaries #:describe-canaries-last-run
                              #:describe-canaries-last-run-name-filter
                              #:describe-canaries-name-filter
                              #:describe-runtime-versions
                              #:disassociate-resource #:dry-run-config-output
                              #:encryption-mode #:environment-variable-name
                              #:environment-variable-value
                              #:environment-variables-map
                              #:ephemeral-storage-size #:error-message
                              #:function-arn #:get-canary #:get-canary-runs
                              #:get-group #:group #:group-arn
                              #:group-identifier #:group-name #:group-summary
                              #:group-summary-list #:internal-failure-exception
                              #:internal-server-exception #:kms-key-arn
                              #:list-associated-groups #:list-group-resources
                              #:list-groups #:list-tags-for-resource
                              #:max-canary-results
                              #:max-fifteen-minutes-in-seconds
                              #:max-group-results #:max-one-year-in-seconds
                              #:max-retries #:max-size100 #:max-size1024
                              #:max-size3008 #:not-found-exception
                              #:nullable-boolean #:pagination-token
                              #:provisioned-resource-cleanup-setting
                              #:request-entity-too-large-exception
                              #:resource-arn #:resource-list
                              #:resource-not-found-exception #:resource-to-tag
                              #:retry-attempt #:retry-config-input
                              #:retry-config-output #:role-arn #:run-type
                              #:runtime-version #:runtime-version-list
                              #:s3encryption-config #:security-group-id
                              #:security-group-ids
                              #:service-quota-exceeded-exception #:start-canary
                              #:start-canary-dry-run #:stop-canary #:string
                              #:string-list #:subnet-id #:subnet-ids
                              #:synthetics #:tag-key #:tag-key-list #:tag-map
                              #:tag-resource #:tag-value #:timestamp #:token
                              #:too-many-requests-exception #:uuid
                              #:untag-resource #:update-canary
                              #:validation-exception #:visual-reference-input
                              #:visual-reference-output #:vpc-config-input
                              #:vpc-config-output #:vpc-id #:boolean
                              #:synthetics-error))
(common-lisp:in-package #:pira/synthetics)

(common-lisp:define-condition synthetics-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service synthetics :shape-name "Synthetics" :version
                                   "2017-10-11" :title "Synthetics" :operations
                                   '(associate-resource create-canary
                                     create-group delete-canary delete-group
                                     describe-canaries
                                     describe-canaries-last-run
                                     describe-runtime-versions
                                     disassociate-resource get-canary
                                     get-canary-runs get-group
                                     list-associated-groups
                                     list-group-resources list-groups
                                     list-tags-for-resource start-canary
                                     start-canary-dry-run stop-canary
                                     tag-resource untag-resource update-canary)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "synthetics")
                                      ("arnNamespace" . "synthetics")
                                      ("cloudFormationName" . "Synthetics")
                                      ("cloudTrailEventSource"
                                       . "synthetics.amazonaws.com")
                                      ("endpointPrefix" . "synthetics"))
                                     ("aws.auth#sigv4" ("name" . "synthetics"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403)
                                (:base-class synthetics-error))

(smithy/sdk/shapes:define-structure artifact-config-input common-lisp:nil
                                    ((s3encryption :target-type
                                      s3encryption-config :member-name
                                      "S3Encryption"))
                                    (:shape-name "ArtifactConfigInput"))

(smithy/sdk/shapes:define-structure artifact-config-output common-lisp:nil
                                    ((s3encryption :target-type
                                      s3encryption-config :member-name
                                      "S3Encryption"))
                                    (:shape-name "ArtifactConfigOutput"))

(smithy/sdk/shapes:define-input associate-resource-request common-lisp:nil
                                ((group-identifier :target-type
                                  group-identifier :required common-lisp:t
                                  :member-name "GroupIdentifier" :http-label
                                  common-lisp:t)
                                 (resource-arn :target-type canary-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn"))
                                (:shape-name "AssociateResourceRequest"))

(smithy/sdk/shapes:define-output associate-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "AssociateResourceResponse"))

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400)
                                (:base-class synthetics-error))

(smithy/sdk/shapes:define-structure base-screenshot common-lisp:nil
                                    ((screenshot-name :target-type string
                                      :required common-lisp:t :member-name
                                      "ScreenshotName")
                                     (ignore-coordinates :target-type
                                      base-screenshot-ignore-coordinates
                                      :member-name "IgnoreCoordinates"))
                                    (:shape-name "BaseScreenshot"))

(smithy/sdk/shapes:define-type base-screenshot-config-ignore-coordinate
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list base-screenshot-ignore-coordinates :member
                               base-screenshot-config-ignore-coordinate)

(smithy/sdk/shapes:define-list base-screenshots :member base-screenshot)

(smithy/sdk/shapes:define-type blob smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-list canaries :member canary)

(smithy/sdk/shapes:define-list canaries-last-run :member canary-last-run)

(smithy/sdk/shapes:define-structure canary common-lisp:nil
                                    ((id :target-type uuid :member-name "Id")
                                     (name :target-type canary-name
                                      :member-name "Name")
                                     (code :target-type canary-code-output
                                      :member-name "Code")
                                     (execution-role-arn :target-type role-arn
                                      :member-name "ExecutionRoleArn")
                                     (schedule :target-type
                                      canary-schedule-output :member-name
                                      "Schedule")
                                     (run-config :target-type
                                      canary-run-config-output :member-name
                                      "RunConfig")
                                     (success-retention-period-in-days
                                      :target-type max-size1024 :member-name
                                      "SuccessRetentionPeriodInDays")
                                     (failure-retention-period-in-days
                                      :target-type max-size1024 :member-name
                                      "FailureRetentionPeriodInDays")
                                     (status :target-type canary-status
                                      :member-name "Status")
                                     (timeline :target-type canary-timeline
                                      :member-name "Timeline")
                                     (artifact-s3location :target-type string
                                      :member-name "ArtifactS3Location")
                                     (engine-arn :target-type function-arn
                                      :member-name "EngineArn")
                                     (runtime-version :target-type string
                                      :member-name "RuntimeVersion")
                                     (vpc-config :target-type vpc-config-output
                                      :member-name "VpcConfig")
                                     (visual-reference :target-type
                                      visual-reference-output :member-name
                                      "VisualReference")
                                     (provisioned-resource-cleanup :target-type
                                      provisioned-resource-cleanup-setting
                                      :member-name
                                      "ProvisionedResourceCleanup")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (artifact-config :target-type
                                      artifact-config-output :member-name
                                      "ArtifactConfig")
                                     (dry-run-config :target-type
                                      dry-run-config-output :member-name
                                      "DryRunConfig"))
                                    (:shape-name "Canary"))

(smithy/sdk/shapes:define-type canary-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure canary-code-input common-lisp:nil
                                    ((s3bucket :target-type string :member-name
                                      "S3Bucket")
                                     (s3key :target-type string :member-name
                                      "S3Key")
                                     (s3version :target-type string
                                      :member-name "S3Version")
                                     (zip-file :target-type blob :member-name
                                      "ZipFile")
                                     (handler :target-type code-handler
                                      :required common-lisp:t :member-name
                                      "Handler")
                                     (dependencies :target-type dependencies
                                      :member-name "Dependencies"))
                                    (:shape-name "CanaryCodeInput"))

(smithy/sdk/shapes:define-structure canary-code-output common-lisp:nil
                                    ((source-location-arn :target-type string
                                      :member-name "SourceLocationArn")
                                     (handler :target-type string :member-name
                                      "Handler")
                                     (dependencies :target-type dependencies
                                      :member-name "Dependencies"))
                                    (:shape-name "CanaryCodeOutput"))

(smithy/sdk/shapes:define-structure canary-dry-run-config-output
                                    common-lisp:nil
                                    ((dry-run-id :target-type uuid :member-name
                                      "DryRunId"))
                                    (:shape-name "CanaryDryRunConfigOutput"))

(smithy/sdk/shapes:define-structure canary-last-run common-lisp:nil
                                    ((canary-name :target-type canary-name
                                      :member-name "CanaryName")
                                     (last-run :target-type canary-run
                                      :member-name "LastRun"))
                                    (:shape-name "CanaryLastRun"))

(smithy/sdk/shapes:define-type canary-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure canary-run common-lisp:nil
                                    ((id :target-type uuid :member-name "Id")
                                     (scheduled-run-id :target-type uuid
                                      :member-name "ScheduledRunId")
                                     (retry-attempt :target-type retry-attempt
                                      :member-name "RetryAttempt")
                                     (name :target-type canary-name
                                      :member-name "Name")
                                     (status :target-type canary-run-status
                                      :member-name "Status")
                                     (timeline :target-type canary-run-timeline
                                      :member-name "Timeline")
                                     (artifact-s3location :target-type string
                                      :member-name "ArtifactS3Location")
                                     (dry-run-config :target-type
                                      canary-dry-run-config-output :member-name
                                      "DryRunConfig"))
                                    (:shape-name "CanaryRun"))

(smithy/sdk/shapes:define-structure canary-run-config-input common-lisp:nil
                                    ((timeout-in-seconds :target-type
                                      max-fifteen-minutes-in-seconds
                                      :member-name "TimeoutInSeconds")
                                     (memory-in-mb :target-type max-size3008
                                      :member-name "MemoryInMB")
                                     (active-tracing :target-type
                                      nullable-boolean :member-name
                                      "ActiveTracing")
                                     (environment-variables :target-type
                                      environment-variables-map :member-name
                                      "EnvironmentVariables")
                                     (ephemeral-storage :target-type
                                      ephemeral-storage-size :member-name
                                      "EphemeralStorage"))
                                    (:shape-name "CanaryRunConfigInput"))

(smithy/sdk/shapes:define-structure canary-run-config-output common-lisp:nil
                                    ((timeout-in-seconds :target-type
                                      max-fifteen-minutes-in-seconds
                                      :member-name "TimeoutInSeconds")
                                     (memory-in-mb :target-type max-size3008
                                      :member-name "MemoryInMB")
                                     (active-tracing :target-type
                                      nullable-boolean :member-name
                                      "ActiveTracing")
                                     (ephemeral-storage :target-type
                                      ephemeral-storage-size :member-name
                                      "EphemeralStorage"))
                                    (:shape-name "CanaryRunConfigOutput"))

(smithy/sdk/shapes:define-enum canary-run-state
    common-lisp:nil
  (:running "RUNNING")
  (:passed "PASSED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-enum canary-run-state-reason-code
    common-lisp:nil
  (:canary-failure "CANARY_FAILURE")
  (:execution-failure "EXECUTION_FAILURE"))

(smithy/sdk/shapes:define-structure canary-run-status common-lisp:nil
                                    ((state :target-type canary-run-state
                                      :member-name "State")
                                     (state-reason :target-type string
                                      :member-name "StateReason")
                                     (state-reason-code :target-type
                                      canary-run-state-reason-code :member-name
                                      "StateReasonCode")
                                     (test-result :target-type
                                      canary-run-test-result :member-name
                                      "TestResult"))
                                    (:shape-name "CanaryRunStatus"))

(smithy/sdk/shapes:define-enum canary-run-test-result
    common-lisp:nil
  (:passed "PASSED")
  (:failed "FAILED")
  (:unknown "UNKNOWN"))

(smithy/sdk/shapes:define-structure canary-run-timeline common-lisp:nil
                                    ((started :target-type timestamp
                                      :member-name "Started")
                                     (completed :target-type timestamp
                                      :member-name "Completed")
                                     (metric-timestamp-for-run-and-retries
                                      :target-type timestamp :member-name
                                      "MetricTimestampForRunAndRetries"))
                                    (:shape-name "CanaryRunTimeline"))

(smithy/sdk/shapes:define-list canary-runs :member canary-run)

(smithy/sdk/shapes:define-structure canary-schedule-input common-lisp:nil
                                    ((expression :target-type string :required
                                      common-lisp:t :member-name "Expression")
                                     (duration-in-seconds :target-type
                                      max-one-year-in-seconds :member-name
                                      "DurationInSeconds")
                                     (retry-config :target-type
                                      retry-config-input :member-name
                                      "RetryConfig"))
                                    (:shape-name "CanaryScheduleInput"))

(smithy/sdk/shapes:define-structure canary-schedule-output common-lisp:nil
                                    ((expression :target-type string
                                      :member-name "Expression")
                                     (duration-in-seconds :target-type
                                      max-one-year-in-seconds :member-name
                                      "DurationInSeconds")
                                     (retry-config :target-type
                                      retry-config-output :member-name
                                      "RetryConfig"))
                                    (:shape-name "CanaryScheduleOutput"))

(smithy/sdk/shapes:define-enum canary-state
    common-lisp:nil
  (:creating "CREATING")
  (:ready "READY")
  (:starting "STARTING")
  (:running "RUNNING")
  (:updating "UPDATING")
  (:stopping "STOPPING")
  (:stopped "STOPPED")
  (:error "ERROR")
  (:deleting "DELETING"))

(smithy/sdk/shapes:define-enum canary-state-reason-code
    common-lisp:nil
  (:invalid-permissions "INVALID_PERMISSIONS")
  (:create-pending "CREATE_PENDING")
  (:create-in-progress "CREATE_IN_PROGRESS")
  (:create-failed "CREATE_FAILED")
  (:update-pending "UPDATE_PENDING")
  (:update-in-progress "UPDATE_IN_PROGRESS")
  (:update-complete "UPDATE_COMPLETE")
  (:rollback-complete "ROLLBACK_COMPLETE")
  (:rollback-failed "ROLLBACK_FAILED")
  (:delete-in-progress "DELETE_IN_PROGRESS")
  (:delete-failed "DELETE_FAILED")
  (:sync-delete-in-progress "SYNC_DELETE_IN_PROGRESS"))

(smithy/sdk/shapes:define-structure canary-status common-lisp:nil
                                    ((state :target-type canary-state
                                      :member-name "State")
                                     (state-reason :target-type string
                                      :member-name "StateReason")
                                     (state-reason-code :target-type
                                      canary-state-reason-code :member-name
                                      "StateReasonCode"))
                                    (:shape-name "CanaryStatus"))

(smithy/sdk/shapes:define-structure canary-timeline common-lisp:nil
                                    ((created :target-type timestamp
                                      :member-name "Created")
                                     (last-modified :target-type timestamp
                                      :member-name "LastModified")
                                     (last-started :target-type timestamp
                                      :member-name "LastStarted")
                                     (last-stopped :target-type timestamp
                                      :member-name "LastStopped"))
                                    (:shape-name "CanaryTimeline"))

(smithy/sdk/shapes:define-type code-handler smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409)
                                (:base-class synthetics-error))

(smithy/sdk/shapes:define-input create-canary-request common-lisp:nil
                                ((name :target-type canary-name :required
                                  common-lisp:t :member-name "Name")
                                 (code :target-type canary-code-input :required
                                  common-lisp:t :member-name "Code")
                                 (artifact-s3location :target-type string
                                  :required common-lisp:t :member-name
                                  "ArtifactS3Location")
                                 (execution-role-arn :target-type role-arn
                                  :required common-lisp:t :member-name
                                  "ExecutionRoleArn")
                                 (schedule :target-type canary-schedule-input
                                  :required common-lisp:t :member-name
                                  "Schedule")
                                 (run-config :target-type
                                  canary-run-config-input :member-name
                                  "RunConfig")
                                 (success-retention-period-in-days :target-type
                                  max-size1024 :member-name
                                  "SuccessRetentionPeriodInDays")
                                 (failure-retention-period-in-days :target-type
                                  max-size1024 :member-name
                                  "FailureRetentionPeriodInDays")
                                 (runtime-version :target-type string :required
                                  common-lisp:t :member-name "RuntimeVersion")
                                 (vpc-config :target-type vpc-config-input
                                  :member-name "VpcConfig")
                                 (resources-to-replicate-tags :target-type
                                  resource-list :member-name
                                  "ResourcesToReplicateTags")
                                 (provisioned-resource-cleanup :target-type
                                  provisioned-resource-cleanup-setting
                                  :member-name "ProvisionedResourceCleanup")
                                 (tags :target-type tag-map :member-name
                                  "Tags")
                                 (artifact-config :target-type
                                  artifact-config-input :member-name
                                  "ArtifactConfig"))
                                (:shape-name "CreateCanaryRequest"))

(smithy/sdk/shapes:define-output create-canary-response common-lisp:nil
                                 ((canary :target-type canary :member-name
                                   "Canary"))
                                 (:shape-name "CreateCanaryResponse"))

(smithy/sdk/shapes:define-input create-group-request common-lisp:nil
                                ((name :target-type group-name :required
                                  common-lisp:t :member-name "Name")
                                 (tags :target-type tag-map :member-name
                                  "Tags"))
                                (:shape-name "CreateGroupRequest"))

(smithy/sdk/shapes:define-output create-group-response common-lisp:nil
                                 ((group :target-type group :member-name
                                   "Group"))
                                 (:shape-name "CreateGroupResponse"))

(smithy/sdk/shapes:define-input delete-canary-request common-lisp:nil
                                ((name :target-type canary-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (delete-lambda :target-type boolean
                                  :member-name "DeleteLambda" :http-query
                                  "deleteLambda"))
                                (:shape-name "DeleteCanaryRequest"))

(smithy/sdk/shapes:define-output delete-canary-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteCanaryResponse"))

(smithy/sdk/shapes:define-input delete-group-request common-lisp:nil
                                ((group-identifier :target-type
                                  group-identifier :required common-lisp:t
                                  :member-name "GroupIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteGroupRequest"))

(smithy/sdk/shapes:define-output delete-group-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteGroupResponse"))

(smithy/sdk/shapes:define-list dependencies :member dependency)

(smithy/sdk/shapes:define-structure dependency common-lisp:nil
                                    ((type :target-type dependency-type
                                      :member-name "Type")
                                     (reference :target-type string :required
                                      common-lisp:t :member-name "Reference"))
                                    (:shape-name "Dependency"))

(smithy/sdk/shapes:define-enum dependency-type
    common-lisp:nil
  (:lambda-layer "LambdaLayer"))

(smithy/sdk/shapes:define-list describe-canaries-last-run-name-filter :member
                               canary-name)

(smithy/sdk/shapes:define-input describe-canaries-last-run-request
                                common-lisp:nil
                                ((next-token :target-type token :member-name
                                  "NextToken")
                                 (max-results :target-type max-size100
                                  :member-name "MaxResults")
                                 (names :target-type
                                  describe-canaries-last-run-name-filter
                                  :member-name "Names"))
                                (:shape-name "DescribeCanariesLastRunRequest"))

(smithy/sdk/shapes:define-output describe-canaries-last-run-response
                                 common-lisp:nil
                                 ((canaries-last-run :target-type
                                   canaries-last-run :member-name
                                   "CanariesLastRun")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "DescribeCanariesLastRunResponse"))

(smithy/sdk/shapes:define-list describe-canaries-name-filter :member
                               canary-name)

(smithy/sdk/shapes:define-input describe-canaries-request common-lisp:nil
                                ((next-token :target-type token :member-name
                                  "NextToken")
                                 (max-results :target-type max-canary-results
                                  :member-name "MaxResults")
                                 (names :target-type
                                  describe-canaries-name-filter :member-name
                                  "Names"))
                                (:shape-name "DescribeCanariesRequest"))

(smithy/sdk/shapes:define-output describe-canaries-response common-lisp:nil
                                 ((canaries :target-type canaries :member-name
                                   "Canaries")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "DescribeCanariesResponse"))

(smithy/sdk/shapes:define-input describe-runtime-versions-request
                                common-lisp:nil
                                ((next-token :target-type token :member-name
                                  "NextToken")
                                 (max-results :target-type max-size100
                                  :member-name "MaxResults"))
                                (:shape-name "DescribeRuntimeVersionsRequest"))

(smithy/sdk/shapes:define-output describe-runtime-versions-response
                                 common-lisp:nil
                                 ((runtime-versions :target-type
                                   runtime-version-list :member-name
                                   "RuntimeVersions")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "DescribeRuntimeVersionsResponse"))

(smithy/sdk/shapes:define-input disassociate-resource-request common-lisp:nil
                                ((group-identifier :target-type
                                  group-identifier :required common-lisp:t
                                  :member-name "GroupIdentifier" :http-label
                                  common-lisp:t)
                                 (resource-arn :target-type canary-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn"))
                                (:shape-name "DisassociateResourceRequest"))

(smithy/sdk/shapes:define-output disassociate-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DisassociateResourceResponse"))

(smithy/sdk/shapes:define-structure dry-run-config-output common-lisp:nil
                                    ((dry-run-id :target-type uuid :member-name
                                      "DryRunId")
                                     (last-dry-run-execution-status
                                      :target-type string :member-name
                                      "LastDryRunExecutionStatus"))
                                    (:shape-name "DryRunConfigOutput"))

(smithy/sdk/shapes:define-enum encryption-mode
    common-lisp:nil
  (:sse-s3 "SSE_S3")
  (:sse-kms "SSE_KMS"))

(smithy/sdk/shapes:define-type environment-variable-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type environment-variable-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map environment-variables-map :key
                              environment-variable-name :value
                              environment-variable-value)

(smithy/sdk/shapes:define-type ephemeral-storage-size
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type function-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-canary-request common-lisp:nil
                                ((name :target-type canary-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (dry-run-id :target-type uuid :member-name
                                  "DryRunId" :http-query "dryRunId"))
                                (:shape-name "GetCanaryRequest"))

(smithy/sdk/shapes:define-output get-canary-response common-lisp:nil
                                 ((canary :target-type canary :member-name
                                   "Canary"))
                                 (:shape-name "GetCanaryResponse"))

(smithy/sdk/shapes:define-input get-canary-runs-request common-lisp:nil
                                ((name :target-type canary-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (next-token :target-type token :member-name
                                  "NextToken")
                                 (max-results :target-type max-size100
                                  :member-name "MaxResults")
                                 (dry-run-id :target-type uuid :member-name
                                  "DryRunId")
                                 (run-type :target-type run-type :member-name
                                  "RunType"))
                                (:shape-name "GetCanaryRunsRequest"))

(smithy/sdk/shapes:define-output get-canary-runs-response common-lisp:nil
                                 ((canary-runs :target-type canary-runs
                                   :member-name "CanaryRuns")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "GetCanaryRunsResponse"))

(smithy/sdk/shapes:define-input get-group-request common-lisp:nil
                                ((group-identifier :target-type
                                  group-identifier :required common-lisp:t
                                  :member-name "GroupIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "GetGroupRequest"))

(smithy/sdk/shapes:define-output get-group-response common-lisp:nil
                                 ((group :target-type group :member-name
                                   "Group"))
                                 (:shape-name "GetGroupResponse"))

(smithy/sdk/shapes:define-structure group common-lisp:nil
                                    ((id :target-type string :member-name "Id")
                                     (name :target-type group-name :member-name
                                      "Name")
                                     (arn :target-type group-arn :member-name
                                      "Arn")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (created-time :target-type timestamp
                                      :member-name "CreatedTime")
                                     (last-modified-time :target-type timestamp
                                      :member-name "LastModifiedTime"))
                                    (:shape-name "Group"))

(smithy/sdk/shapes:define-type group-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type group-identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type group-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure group-summary common-lisp:nil
                                    ((id :target-type string :member-name "Id")
                                     (name :target-type group-name :member-name
                                      "Name")
                                     (arn :target-type group-arn :member-name
                                      "Arn"))
                                    (:shape-name "GroupSummary"))

(smithy/sdk/shapes:define-list group-summary-list :member group-summary)

(smithy/sdk/shapes:define-error internal-failure-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InternalFailureException")
                                (:error-code 500)
                                (:base-class synthetics-error))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500)
                                (:base-class synthetics-error))

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-associated-groups-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-group-results
                                  :member-name "MaxResults")
                                 (resource-arn :target-type canary-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn" :http-label common-lisp:t))
                                (:shape-name "ListAssociatedGroupsRequest"))

(smithy/sdk/shapes:define-output list-associated-groups-response
                                 common-lisp:nil
                                 ((groups :target-type group-summary-list
                                   :member-name "Groups")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListAssociatedGroupsResponse"))

(smithy/sdk/shapes:define-input list-group-resources-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-group-results
                                  :member-name "MaxResults")
                                 (group-identifier :target-type
                                  group-identifier :required common-lisp:t
                                  :member-name "GroupIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "ListGroupResourcesRequest"))

(smithy/sdk/shapes:define-output list-group-resources-response common-lisp:nil
                                 ((resources :target-type string-list
                                   :member-name "Resources")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListGroupResourcesResponse"))

(smithy/sdk/shapes:define-input list-groups-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-group-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListGroupsRequest"))

(smithy/sdk/shapes:define-output list-groups-response common-lisp:nil
                                 ((groups :target-type group-summary-list
                                   :member-name "Groups")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListGroupsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn" :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type max-canary-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-fifteen-minutes-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-group-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-one-year-in-seconds
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type max-retries smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-size100 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-size1024 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-size3008 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "NotFoundException")
                                (:error-code 404)
                                (:base-class synthetics-error))

(smithy/sdk/shapes:define-type nullable-boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum provisioned-resource-cleanup-setting
    common-lisp:nil
  (:automatic "AUTOMATIC")
  (:off "OFF"))

(smithy/sdk/shapes:define-error request-entity-too-large-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "RequestEntityTooLargeException")
                                (:error-code 413)
                                (:base-class synthetics-error))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-list :member resource-to-tag)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404)
                                (:base-class synthetics-error))

(smithy/sdk/shapes:define-enum resource-to-tag
    common-lisp:nil
  (:lambda-function "lambda-function"))

(smithy/sdk/shapes:define-type retry-attempt smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure retry-config-input common-lisp:nil
                                    ((max-retries :target-type max-retries
                                      :required common-lisp:t :member-name
                                      "MaxRetries"))
                                    (:shape-name "RetryConfigInput"))

(smithy/sdk/shapes:define-structure retry-config-output common-lisp:nil
                                    ((max-retries :target-type max-retries
                                      :member-name "MaxRetries"))
                                    (:shape-name "RetryConfigOutput"))

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum run-type
    common-lisp:nil
  (:canary-run "CANARY_RUN")
  (:dry-run "DRY_RUN"))

(smithy/sdk/shapes:define-structure runtime-version common-lisp:nil
                                    ((version-name :target-type string
                                      :member-name "VersionName")
                                     (description :target-type string
                                      :member-name "Description")
                                     (release-date :target-type timestamp
                                      :member-name "ReleaseDate")
                                     (deprecation-date :target-type timestamp
                                      :member-name "DeprecationDate"))
                                    (:shape-name "RuntimeVersion"))

(smithy/sdk/shapes:define-list runtime-version-list :member runtime-version)

(smithy/sdk/shapes:define-structure s3encryption-config common-lisp:nil
                                    ((encryption-mode :target-type
                                      encryption-mode :member-name
                                      "EncryptionMode")
                                     (kms-key-arn :target-type kms-key-arn
                                      :member-name "KmsKeyArn"))
                                    (:shape-name "S3EncryptionConfig"))

(smithy/sdk/shapes:define-type security-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list security-group-ids :member security-group-id)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402)
                                (:base-class synthetics-error))

(smithy/sdk/shapes:define-input start-canary-dry-run-request common-lisp:nil
                                ((name :target-type canary-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (code :target-type canary-code-input
                                  :member-name "Code")
                                 (runtime-version :target-type string
                                  :member-name "RuntimeVersion")
                                 (run-config :target-type
                                  canary-run-config-input :member-name
                                  "RunConfig")
                                 (vpc-config :target-type vpc-config-input
                                  :member-name "VpcConfig")
                                 (execution-role-arn :target-type role-arn
                                  :member-name "ExecutionRoleArn")
                                 (success-retention-period-in-days :target-type
                                  max-size1024 :member-name
                                  "SuccessRetentionPeriodInDays")
                                 (failure-retention-period-in-days :target-type
                                  max-size1024 :member-name
                                  "FailureRetentionPeriodInDays")
                                 (visual-reference :target-type
                                  visual-reference-input :member-name
                                  "VisualReference")
                                 (artifact-s3location :target-type string
                                  :member-name "ArtifactS3Location")
                                 (artifact-config :target-type
                                  artifact-config-input :member-name
                                  "ArtifactConfig")
                                 (provisioned-resource-cleanup :target-type
                                  provisioned-resource-cleanup-setting
                                  :member-name "ProvisionedResourceCleanup"))
                                (:shape-name "StartCanaryDryRunRequest"))

(smithy/sdk/shapes:define-output start-canary-dry-run-response common-lisp:nil
                                 ((dry-run-config :target-type
                                   dry-run-config-output :member-name
                                   "DryRunConfig"))
                                 (:shape-name "StartCanaryDryRunResponse"))

(smithy/sdk/shapes:define-input start-canary-request common-lisp:nil
                                ((name :target-type canary-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "StartCanaryRequest"))

(smithy/sdk/shapes:define-output start-canary-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StartCanaryResponse"))

(smithy/sdk/shapes:define-input stop-canary-request common-lisp:nil
                                ((name :target-type canary-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "StopCanaryRequest"))

(smithy/sdk/shapes:define-output stop-canary-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StopCanaryResponse"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-list :member string)

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnet-ids :member subnet-id)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn" :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 429)
                                (:base-class synthetics-error))

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn" :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-canary-request common-lisp:nil
                                ((name :target-type canary-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (code :target-type canary-code-input
                                  :member-name "Code")
                                 (execution-role-arn :target-type role-arn
                                  :member-name "ExecutionRoleArn")
                                 (runtime-version :target-type string
                                  :member-name "RuntimeVersion")
                                 (schedule :target-type canary-schedule-input
                                  :member-name "Schedule")
                                 (run-config :target-type
                                  canary-run-config-input :member-name
                                  "RunConfig")
                                 (success-retention-period-in-days :target-type
                                  max-size1024 :member-name
                                  "SuccessRetentionPeriodInDays")
                                 (failure-retention-period-in-days :target-type
                                  max-size1024 :member-name
                                  "FailureRetentionPeriodInDays")
                                 (vpc-config :target-type vpc-config-input
                                  :member-name "VpcConfig")
                                 (visual-reference :target-type
                                  visual-reference-input :member-name
                                  "VisualReference")
                                 (artifact-s3location :target-type string
                                  :member-name "ArtifactS3Location")
                                 (artifact-config :target-type
                                  artifact-config-input :member-name
                                  "ArtifactConfig")
                                 (provisioned-resource-cleanup :target-type
                                  provisioned-resource-cleanup-setting
                                  :member-name "ProvisionedResourceCleanup")
                                 (dry-run-id :target-type uuid :member-name
                                  "DryRunId"))
                                (:shape-name "UpdateCanaryRequest"))

(smithy/sdk/shapes:define-output update-canary-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateCanaryResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400)
                                (:base-class synthetics-error))

(smithy/sdk/shapes:define-structure visual-reference-input common-lisp:nil
                                    ((base-screenshots :target-type
                                      base-screenshots :member-name
                                      "BaseScreenshots")
                                     (base-canary-run-id :target-type string
                                      :required common-lisp:t :member-name
                                      "BaseCanaryRunId"))
                                    (:shape-name "VisualReferenceInput"))

(smithy/sdk/shapes:define-structure visual-reference-output common-lisp:nil
                                    ((base-screenshots :target-type
                                      base-screenshots :member-name
                                      "BaseScreenshots")
                                     (base-canary-run-id :target-type string
                                      :member-name "BaseCanaryRunId"))
                                    (:shape-name "VisualReferenceOutput"))

(smithy/sdk/shapes:define-structure vpc-config-input common-lisp:nil
                                    ((subnet-ids :target-type subnet-ids
                                      :member-name "SubnetIds")
                                     (security-group-ids :target-type
                                      security-group-ids :member-name
                                      "SecurityGroupIds")
                                     (ipv6allowed-for-dual-stack :target-type
                                      nullable-boolean :member-name
                                      "Ipv6AllowedForDualStack"))
                                    (:shape-name "VpcConfigInput"))

(smithy/sdk/shapes:define-structure vpc-config-output common-lisp:nil
                                    ((vpc-id :target-type vpc-id :member-name
                                      "VpcId")
                                     (subnet-ids :target-type subnet-ids
                                      :member-name "SubnetIds")
                                     (security-group-ids :target-type
                                      security-group-ids :member-name
                                      "SecurityGroupIds")
                                     (ipv6allowed-for-dual-stack :target-type
                                      nullable-boolean :member-name
                                      "Ipv6AllowedForDualStack"))
                                    (:shape-name "VpcConfigOutput"))

(smithy/sdk/shapes:define-type vpc-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/operation:define-operation associate-resource :shape-name
                                       "AssociateResource" :input
                                       associate-resource-request :output
                                       associate-resource-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/group/{GroupIdentifier}/associate"
                                       :code 200)

(smithy/sdk/operation:define-operation create-canary :shape-name "CreateCanary"
                                       :input create-canary-request :output
                                       create-canary-response :errors
                                       (internal-server-exception
                                        request-entity-too-large-exception
                                        validation-exception)
                                       :method "POST" :uri "/canary" :code 200)

(smithy/sdk/operation:define-operation create-group :shape-name "CreateGroup"
                                       :input create-group-request :output
                                       create-group-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/group" :code 200)

(smithy/sdk/operation:define-operation delete-canary :shape-name "DeleteCanary"
                                       :input delete-canary-request :output
                                       delete-canary-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri "/canary/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-group :shape-name "DeleteGroup"
                                       :input delete-group-request :output
                                       delete-group-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/group/{GroupIdentifier}" :code 200)

(smithy/sdk/operation:define-operation describe-canaries :shape-name
                                       "DescribeCanaries" :input
                                       describe-canaries-request :output
                                       describe-canaries-response :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "POST" :uri "/canaries" :code
                                       200)

(smithy/sdk/operation:define-operation describe-canaries-last-run :shape-name
                                       "DescribeCanariesLastRun" :input
                                       describe-canaries-last-run-request
                                       :output
                                       describe-canaries-last-run-response
                                       :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "POST" :uri "/canaries/last-run"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-runtime-versions :shape-name
                                       "DescribeRuntimeVersions" :input
                                       describe-runtime-versions-request
                                       :output
                                       describe-runtime-versions-response
                                       :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "POST" :uri "/runtime-versions"
                                       :code 200)

(smithy/sdk/operation:define-operation disassociate-resource :shape-name
                                       "DisassociateResource" :input
                                       disassociate-resource-request :output
                                       disassociate-resource-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/group/{GroupIdentifier}/disassociate"
                                       :code 200)

(smithy/sdk/operation:define-operation get-canary :shape-name "GetCanary"
                                       :input get-canary-request :output
                                       get-canary-response :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "GET" :uri "/canary/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-canary-runs :shape-name
                                       "GetCanaryRuns" :input
                                       get-canary-runs-request :output
                                       get-canary-runs-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/canary/{Name}/runs" :code 200)

(smithy/sdk/operation:define-operation get-group :shape-name "GetGroup" :input
                                       get-group-request :output
                                       get-group-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/group/{GroupIdentifier}" :code 200)

(smithy/sdk/operation:define-operation list-associated-groups :shape-name
                                       "ListAssociatedGroups" :input
                                       list-associated-groups-request :output
                                       list-associated-groups-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/resource/{ResourceArn}/groups" :code
                                       200)

(smithy/sdk/operation:define-operation list-group-resources :shape-name
                                       "ListGroupResources" :input
                                       list-group-resources-request :output
                                       list-group-resources-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/group/{GroupIdentifier}/resources"
                                       :code 200)

(smithy/sdk/operation:define-operation list-groups :shape-name "ListGroups"
                                       :input list-groups-request :output
                                       list-groups-response :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "POST" :uri "/groups" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-failure-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/tags/{ResourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation start-canary :shape-name "StartCanary"
                                       :input start-canary-request :output
                                       start-canary-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/canary/{Name}/start" :code 200)

(smithy/sdk/operation:define-operation start-canary-dry-run :shape-name
                                       "StartCanaryDryRun" :input
                                       start-canary-dry-run-request :output
                                       start-canary-dry-run-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/canary/{Name}/dry-run/start" :code 200)

(smithy/sdk/operation:define-operation stop-canary :shape-name "StopCanary"
                                       :input stop-canary-request :output
                                       stop-canary-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/canary/{Name}/stop" :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-failure-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/tags/{ResourceArn}" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-failure-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/tags/{ResourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-canary :shape-name "UpdateCanary"
                                       :input update-canary-request :output
                                       update-canary-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        request-entity-too-large-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PATCH" :uri "/canary/{Name}"
                                       :code 200)
