(uiop/package:define-package #:pira/codepipeline (:use)
                             (:export #:awsregion-name #:awssession-credentials
                              #:access-key-id #:account-id #:acknowledge-job
                              #:acknowledge-job-input #:acknowledge-job-output
                              #:acknowledge-third-party-job
                              #:acknowledge-third-party-job-input
                              #:acknowledge-third-party-job-output
                              #:action-category #:action-configuration
                              #:action-configuration-key
                              #:action-configuration-map
                              #:action-configuration-property
                              #:action-configuration-property-list
                              #:action-configuration-property-type
                              #:action-configuration-queryable-value
                              #:action-configuration-value #:action-context
                              #:action-declaration #:action-execution
                              #:action-execution-detail
                              #:action-execution-detail-list
                              #:action-execution-filter #:action-execution-id
                              #:action-execution-input
                              #:action-execution-not-found-exception
                              #:action-execution-output
                              #:action-execution-result
                              #:action-execution-status
                              #:action-execution-token #:action-name
                              #:action-namespace #:action-not-found-exception
                              #:action-owner #:action-provider
                              #:action-revision #:action-run-order
                              #:action-state #:action-state-list
                              #:action-timeout #:action-type
                              #:action-type-artifact-details
                              #:action-type-declaration
                              #:action-type-description #:action-type-executor
                              #:action-type-id #:action-type-identifier
                              #:action-type-list
                              #:action-type-not-found-exception
                              #:action-type-owner #:action-type-permissions
                              #:action-type-properties #:action-type-property
                              #:action-type-settings #:action-type-urls
                              #:allowed-account #:allowed-accounts
                              #:approval-already-completed-exception
                              #:approval-result #:approval-status
                              #:approval-summary #:approval-token #:artifact
                              #:artifact-detail #:artifact-detail-list
                              #:artifact-details #:artifact-list
                              #:artifact-location #:artifact-location-type
                              #:artifact-name #:artifact-revision
                              #:artifact-revision-list #:artifact-store
                              #:artifact-store-location #:artifact-store-map
                              #:artifact-store-type #:before-entry-conditions
                              #:blocker-declaration #:blocker-name
                              #:blocker-type #:boolean #:client-id
                              #:client-request-token #:client-token #:code
                              #:code-pipeline-20150709 #:command #:command-list
                              #:concurrent-modification-exception
                              #:concurrent-pipeline-executions-limit-exceeded-exception
                              #:condition #:condition-execution
                              #:condition-execution-status #:condition-list
                              #:condition-not-overridable-exception
                              #:condition-state #:condition-state-list
                              #:condition-type #:conflict-exception
                              #:continuation-token #:create-custom-action-type
                              #:create-custom-action-type-input
                              #:create-custom-action-type-output
                              #:create-pipeline #:create-pipeline-input
                              #:create-pipeline-output #:current-revision
                              #:delete-custom-action-type
                              #:delete-custom-action-type-input
                              #:delete-pipeline #:delete-pipeline-input
                              #:delete-webhook #:delete-webhook-input
                              #:delete-webhook-output
                              #:deploy-action-execution-target
                              #:deploy-action-execution-target-list
                              #:deploy-target-event
                              #:deploy-target-event-context
                              #:deploy-target-event-list
                              #:deregister-webhook-with-third-party
                              #:deregister-webhook-with-third-party-input
                              #:deregister-webhook-with-third-party-output
                              #:description #:disable-stage-transition
                              #:disable-stage-transition-input
                              #:disabled-reason
                              #:duplicated-stop-request-exception
                              #:enable-stage-transition
                              #:enable-stage-transition-input #:enabled
                              #:encryption-key #:encryption-key-id
                              #:encryption-key-type #:environment-variable
                              #:environment-variable-list
                              #:environment-variable-name
                              #:environment-variable-type
                              #:environment-variable-value #:error-details
                              #:execution-details #:execution-id
                              #:execution-mode #:execution-summary
                              #:execution-trigger #:execution-type
                              #:executor-configuration #:executor-type
                              #:external-execution-id
                              #:external-execution-summary #:failure-conditions
                              #:failure-details #:failure-type #:file-path
                              #:file-path-list #:get-action-type
                              #:get-action-type-input #:get-action-type-output
                              #:get-job-details #:get-job-details-input
                              #:get-job-details-output #:get-pipeline
                              #:get-pipeline-execution
                              #:get-pipeline-execution-input
                              #:get-pipeline-execution-output
                              #:get-pipeline-input #:get-pipeline-output
                              #:get-pipeline-state #:get-pipeline-state-input
                              #:get-pipeline-state-output
                              #:get-third-party-job-details
                              #:get-third-party-job-details-input
                              #:get-third-party-job-details-output
                              #:git-branch-filter-criteria
                              #:git-branch-name-pattern
                              #:git-branch-pattern-list #:git-configuration
                              #:git-file-path-filter-criteria
                              #:git-file-path-pattern
                              #:git-file-path-pattern-list
                              #:git-pull-request-event-type
                              #:git-pull-request-event-type-list
                              #:git-pull-request-filter
                              #:git-pull-request-filter-list #:git-push-filter
                              #:git-push-filter-list #:git-tag-filter-criteria
                              #:git-tag-name-pattern #:git-tag-pattern-list
                              #:input-artifact #:input-artifact-list
                              #:invalid-action-declaration-exception
                              #:invalid-approval-token-exception
                              #:invalid-arn-exception
                              #:invalid-blocker-declaration-exception
                              #:invalid-client-token-exception
                              #:invalid-job-exception
                              #:invalid-job-state-exception
                              #:invalid-next-token-exception
                              #:invalid-nonce-exception
                              #:invalid-stage-declaration-exception
                              #:invalid-structure-exception
                              #:invalid-tags-exception
                              #:invalid-webhook-authentication-parameters-exception
                              #:invalid-webhook-filter-pattern-exception #:job
                              #:job-data #:job-details #:job-id #:job-list
                              #:job-not-found-exception #:job-status
                              #:job-timeout #:job-worker-executor-configuration
                              #:json-path #:lambda-executor-configuration
                              #:lambda-function-arn #:last-changed-at
                              #:last-changed-by #:last-updated-by
                              #:latest-in-pipeline-execution-filter
                              #:limit-exceeded-exception
                              #:list-action-executions
                              #:list-action-executions-input
                              #:list-action-executions-output
                              #:list-action-types #:list-action-types-input
                              #:list-action-types-output
                              #:list-deploy-action-execution-targets
                              #:list-deploy-action-execution-targets-input
                              #:list-deploy-action-execution-targets-output
                              #:list-pipeline-executions
                              #:list-pipeline-executions-input
                              #:list-pipeline-executions-output
                              #:list-pipelines #:list-pipelines-input
                              #:list-pipelines-output #:list-rule-executions
                              #:list-rule-executions-input
                              #:list-rule-executions-output #:list-rule-types
                              #:list-rule-types-input #:list-rule-types-output
                              #:list-tags-for-resource
                              #:list-tags-for-resource-input
                              #:list-tags-for-resource-output
                              #:list-webhook-item #:list-webhooks
                              #:list-webhooks-input #:list-webhooks-output
                              #:log-stream-arn #:match-equals #:max-batch-size
                              #:max-pipelines #:max-results
                              #:maximum-action-type-artifact-count
                              #:maximum-artifact-count #:message
                              #:minimum-action-type-artifact-count
                              #:minimum-artifact-count #:next-token #:nonce
                              #:not-latest-pipeline-execution-exception
                              #:output-artifact #:output-artifact-list
                              #:output-variable #:output-variable-list
                              #:output-variables-key #:output-variables-map
                              #:output-variables-size-exceeded-exception
                              #:output-variables-value
                              #:override-stage-condition
                              #:override-stage-condition-input #:percentage
                              #:pipeline-arn #:pipeline-context
                              #:pipeline-declaration #:pipeline-execution
                              #:pipeline-execution-filter
                              #:pipeline-execution-id
                              #:pipeline-execution-not-found-exception
                              #:pipeline-execution-not-stoppable-exception
                              #:pipeline-execution-outdated-exception
                              #:pipeline-execution-status
                              #:pipeline-execution-status-summary
                              #:pipeline-execution-summary
                              #:pipeline-execution-summary-list #:pipeline-list
                              #:pipeline-metadata #:pipeline-name
                              #:pipeline-name-in-use-exception
                              #:pipeline-not-found-exception
                              #:pipeline-rollback-metadata
                              #:pipeline-stage-declaration-list
                              #:pipeline-summary #:pipeline-trigger-declaration
                              #:pipeline-trigger-declaration-list
                              #:pipeline-trigger-provider-type #:pipeline-type
                              #:pipeline-variable
                              #:pipeline-variable-declaration
                              #:pipeline-variable-declaration-list
                              #:pipeline-variable-description
                              #:pipeline-variable-list #:pipeline-variable-name
                              #:pipeline-variable-value #:pipeline-version
                              #:pipeline-version-not-found-exception
                              #:policy-statements-template #:poll-for-jobs
                              #:poll-for-jobs-input #:poll-for-jobs-output
                              #:poll-for-third-party-jobs
                              #:poll-for-third-party-jobs-input
                              #:poll-for-third-party-jobs-output
                              #:polling-account-list
                              #:polling-service-principal-list
                              #:property-description #:put-action-revision
                              #:put-action-revision-input
                              #:put-action-revision-output
                              #:put-approval-result #:put-approval-result-input
                              #:put-approval-result-output
                              #:put-job-failure-result
                              #:put-job-failure-result-input
                              #:put-job-success-result
                              #:put-job-success-result-input
                              #:put-third-party-job-failure-result
                              #:put-third-party-job-failure-result-input
                              #:put-third-party-job-success-result
                              #:put-third-party-job-success-result-input
                              #:put-webhook #:put-webhook-input
                              #:put-webhook-output #:query-param-map
                              #:register-webhook-with-third-party
                              #:register-webhook-with-third-party-input
                              #:register-webhook-with-third-party-output
                              #:request-failed-exception
                              #:resolved-action-configuration-map
                              #:resolved-pipeline-variable
                              #:resolved-pipeline-variable-list
                              #:resolved-rule-configuration-map #:resource-arn
                              #:resource-not-found-exception #:result
                              #:retry-attempt #:retry-configuration
                              #:retry-stage-execution
                              #:retry-stage-execution-input
                              #:retry-stage-execution-output
                              #:retry-stage-metadata #:retry-trigger #:revision
                              #:revision-change-identifier #:revision-summary
                              #:role-arn #:rollback-stage
                              #:rollback-stage-input #:rollback-stage-output
                              #:rule-category #:rule-configuration-key
                              #:rule-configuration-map
                              #:rule-configuration-property
                              #:rule-configuration-property-list
                              #:rule-configuration-property-type
                              #:rule-configuration-value #:rule-declaration
                              #:rule-declaration-list #:rule-execution
                              #:rule-execution-detail
                              #:rule-execution-detail-list
                              #:rule-execution-filter #:rule-execution-id
                              #:rule-execution-input #:rule-execution-output
                              #:rule-execution-result #:rule-execution-status
                              #:rule-execution-token #:rule-name #:rule-owner
                              #:rule-provider #:rule-revision #:rule-state
                              #:rule-state-list #:rule-timeout #:rule-type
                              #:rule-type-id #:rule-type-list
                              #:rule-type-settings #:s3artifact-location
                              #:s3bucket #:s3bucket-name #:s3key #:s3location
                              #:s3object-key #:secret-access-key
                              #:service-principal #:session-token
                              #:source-revision #:source-revision-list
                              #:source-revision-override
                              #:source-revision-override-list
                              #:source-revision-type
                              #:stage-action-declaration-list
                              #:stage-blocker-declaration-list
                              #:stage-condition-state
                              #:stage-conditions-execution #:stage-context
                              #:stage-declaration #:stage-execution
                              #:stage-execution-list #:stage-execution-status
                              #:stage-name #:stage-not-found-exception
                              #:stage-not-retryable-exception
                              #:stage-retry-mode #:stage-state
                              #:stage-state-list #:stage-transition-type
                              #:start-pipeline-execution
                              #:start-pipeline-execution-input
                              #:start-pipeline-execution-output
                              #:start-time-range #:stop-execution-trigger
                              #:stop-pipeline-execution
                              #:stop-pipeline-execution-input
                              #:stop-pipeline-execution-output
                              #:stop-pipeline-execution-reason #:string
                              #:succeeded-in-stage-filter #:success-conditions
                              #:tag #:tag-key #:tag-key-list #:tag-list
                              #:tag-resource #:tag-resource-input
                              #:tag-resource-output #:tag-value #:target-filter
                              #:target-filter-list #:target-filter-name
                              #:target-filter-value #:target-filter-value-list
                              #:third-party-job #:third-party-job-data
                              #:third-party-job-details #:third-party-job-id
                              #:third-party-job-list #:time #:timestamp
                              #:too-many-tags-exception #:transition-state
                              #:trigger-detail #:trigger-type
                              #:unable-to-rollback-stage-exception
                              #:untag-resource #:untag-resource-input
                              #:untag-resource-output #:update-action-type
                              #:update-action-type-input #:update-pipeline
                              #:update-pipeline-input #:update-pipeline-output
                              #:url #:url-template #:validation-exception
                              #:version #:webhook-arn
                              #:webhook-auth-configuration
                              #:webhook-auth-configuration-allowed-iprange
                              #:webhook-auth-configuration-secret-token
                              #:webhook-authentication-type
                              #:webhook-definition #:webhook-error-code
                              #:webhook-error-message #:webhook-filter-rule
                              #:webhook-filters #:webhook-last-triggered
                              #:webhook-list #:webhook-name
                              #:webhook-not-found-exception #:webhook-url))
(common-lisp:in-package #:pira/codepipeline)

(smithy/sdk/service:define-service code-pipeline-20150709 :shape-name
                                   "CodePipeline_20150709" :version
                                   "2015-07-09" :title "AWS CodePipeline"
                                   :xml-namespace
                                   '(:uri
                                     "http://codepipeline.amazonaws.com/doc/2015-07-09/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "CodePipeline")
                                      ("arnNamespace" . "codepipeline")
                                      ("cloudFormationName" . "CodePipeline")
                                      ("cloudTrailEventSource"
                                       . "codepipeline.amazonaws.com")
                                      ("endpointPrefix" . "codepipeline"))
                                     ("aws.auth#sigv4"
                                      ("name" . "codepipeline"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-type awsregion-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure awssession-credentials common-lisp:nil
                                    ((access-key-id :target-type access-key-id
                                      :required common-lisp:t :member-name
                                      "accessKeyId")
                                     (secret-access-key :target-type
                                      secret-access-key :required common-lisp:t
                                      :member-name "secretAccessKey")
                                     (session-token :target-type session-token
                                      :required common-lisp:t :member-name
                                      "sessionToken"))
                                    (:shape-name "AWSSessionCredentials"))

(smithy/sdk/shapes:define-type access-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input acknowledge-job-input common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId")
                                 (nonce :target-type nonce :required
                                  common-lisp:t :member-name "nonce"))
                                (:shape-name "AcknowledgeJobInput"))

(smithy/sdk/shapes:define-output acknowledge-job-output common-lisp:nil
                                 ((status :target-type job-status :member-name
                                   "status"))
                                 (:shape-name "AcknowledgeJobOutput"))

(smithy/sdk/shapes:define-input acknowledge-third-party-job-input
                                common-lisp:nil
                                ((job-id :target-type third-party-job-id
                                  :required common-lisp:t :member-name "jobId")
                                 (nonce :target-type nonce :required
                                  common-lisp:t :member-name "nonce")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken"))
                                (:shape-name "AcknowledgeThirdPartyJobInput"))

(smithy/sdk/shapes:define-output acknowledge-third-party-job-output
                                 common-lisp:nil
                                 ((status :target-type job-status :member-name
                                   "status"))
                                 (:shape-name "AcknowledgeThirdPartyJobOutput"))

(smithy/sdk/shapes:define-enum action-category
    common-lisp:nil
  (:source "Source")
  (:build "Build")
  (:deploy "Deploy")
  (:test "Test")
  (:invoke "Invoke")
  (:approval "Approval")
  (:compute "Compute"))

(smithy/sdk/shapes:define-structure action-configuration common-lisp:nil
                                    ((configuration :target-type
                                      action-configuration-map :member-name
                                      "configuration"))
                                    (:shape-name "ActionConfiguration"))

(smithy/sdk/shapes:define-type action-configuration-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map action-configuration-map :key
                              action-configuration-key :value
                              action-configuration-value)

(smithy/sdk/shapes:define-structure action-configuration-property
                                    common-lisp:nil
                                    ((name :target-type
                                      action-configuration-key :required
                                      common-lisp:t :member-name "name")
                                     (required :target-type boolean :required
                                      common-lisp:t :member-name "required")
                                     (key :target-type boolean :required
                                      common-lisp:t :member-name "key")
                                     (secret :target-type boolean :required
                                      common-lisp:t :member-name "secret")
                                     (queryable :target-type boolean
                                      :member-name "queryable")
                                     (description :target-type description
                                      :member-name "description")
                                     (type :target-type
                                      action-configuration-property-type
                                      :member-name "type"))
                                    (:shape-name "ActionConfigurationProperty"))

(smithy/sdk/shapes:define-list action-configuration-property-list :member
                               action-configuration-property)

(smithy/sdk/shapes:define-enum action-configuration-property-type
    common-lisp:nil
  (:string "String")
  (:number "Number")
  (:boolean "Boolean"))

(smithy/sdk/shapes:define-type action-configuration-queryable-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type action-configuration-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure action-context common-lisp:nil
                                    ((name :target-type action-name
                                      :member-name "name")
                                     (action-execution-id :target-type
                                      action-execution-id :member-name
                                      "actionExecutionId"))
                                    (:shape-name "ActionContext"))

(smithy/sdk/shapes:define-structure action-declaration common-lisp:nil
                                    ((name :target-type action-name :required
                                      common-lisp:t :member-name "name")
                                     (action-type-id :target-type
                                      action-type-id :required common-lisp:t
                                      :member-name "actionTypeId")
                                     (run-order :target-type action-run-order
                                      :member-name "runOrder")
                                     (configuration :target-type
                                      action-configuration-map :member-name
                                      "configuration")
                                     (commands :target-type command-list
                                      :member-name "commands")
                                     (output-artifacts :target-type
                                      output-artifact-list :member-name
                                      "outputArtifacts")
                                     (input-artifacts :target-type
                                      input-artifact-list :member-name
                                      "inputArtifacts")
                                     (output-variables :target-type
                                      output-variable-list :member-name
                                      "outputVariables")
                                     (role-arn :target-type role-arn
                                      :member-name "roleArn")
                                     (region :target-type awsregion-name
                                      :member-name "region")
                                     (namespace :target-type action-namespace
                                      :member-name "namespace")
                                     (timeout-in-minutes :target-type
                                      action-timeout :member-name
                                      "timeoutInMinutes")
                                     (environment-variables :target-type
                                      environment-variable-list :member-name
                                      "environmentVariables"))
                                    (:shape-name "ActionDeclaration"))

(smithy/sdk/shapes:define-structure action-execution common-lisp:nil
                                    ((action-execution-id :target-type
                                      action-execution-id :member-name
                                      "actionExecutionId")
                                     (status :target-type
                                      action-execution-status :member-name
                                      "status")
                                     (summary :target-type execution-summary
                                      :member-name "summary")
                                     (last-status-change :target-type timestamp
                                      :member-name "lastStatusChange")
                                     (token :target-type action-execution-token
                                      :member-name "token")
                                     (last-updated-by :target-type
                                      last-updated-by :member-name
                                      "lastUpdatedBy")
                                     (external-execution-id :target-type
                                      execution-id :member-name
                                      "externalExecutionId")
                                     (external-execution-url :target-type url
                                      :member-name "externalExecutionUrl")
                                     (percent-complete :target-type percentage
                                      :member-name "percentComplete")
                                     (error-details :target-type error-details
                                      :member-name "errorDetails")
                                     (log-stream-arn :target-type
                                      log-stream-arn :member-name
                                      "logStreamARN"))
                                    (:shape-name "ActionExecution"))

(smithy/sdk/shapes:define-structure action-execution-detail common-lisp:nil
                                    ((pipeline-execution-id :target-type
                                      pipeline-execution-id :member-name
                                      "pipelineExecutionId")
                                     (action-execution-id :target-type
                                      action-execution-id :member-name
                                      "actionExecutionId")
                                     (pipeline-version :target-type
                                      pipeline-version :member-name
                                      "pipelineVersion")
                                     (stage-name :target-type stage-name
                                      :member-name "stageName")
                                     (action-name :target-type action-name
                                      :member-name "actionName")
                                     (start-time :target-type timestamp
                                      :member-name "startTime")
                                     (last-update-time :target-type timestamp
                                      :member-name "lastUpdateTime")
                                     (updated-by :target-type last-updated-by
                                      :member-name "updatedBy")
                                     (status :target-type
                                      action-execution-status :member-name
                                      "status")
                                     (input :target-type action-execution-input
                                      :member-name "input")
                                     (output :target-type
                                      action-execution-output :member-name
                                      "output"))
                                    (:shape-name "ActionExecutionDetail"))

(smithy/sdk/shapes:define-list action-execution-detail-list :member
                               action-execution-detail)

(smithy/sdk/shapes:define-structure action-execution-filter common-lisp:nil
                                    ((pipeline-execution-id :target-type
                                      pipeline-execution-id :member-name
                                      "pipelineExecutionId")
                                     (latest-in-pipeline-execution :target-type
                                      latest-in-pipeline-execution-filter
                                      :member-name
                                      "latestInPipelineExecution"))
                                    (:shape-name "ActionExecutionFilter"))

(smithy/sdk/shapes:define-type action-execution-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure action-execution-input common-lisp:nil
                                    ((action-type-id :target-type
                                      action-type-id :member-name
                                      "actionTypeId")
                                     (configuration :target-type
                                      action-configuration-map :member-name
                                      "configuration")
                                     (resolved-configuration :target-type
                                      resolved-action-configuration-map
                                      :member-name "resolvedConfiguration")
                                     (role-arn :target-type role-arn
                                      :member-name "roleArn")
                                     (region :target-type awsregion-name
                                      :member-name "region")
                                     (input-artifacts :target-type
                                      artifact-detail-list :member-name
                                      "inputArtifacts")
                                     (namespace :target-type action-namespace
                                      :member-name "namespace"))
                                    (:shape-name "ActionExecutionInput"))

(smithy/sdk/shapes:define-error action-execution-not-found-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "ActionExecutionNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure action-execution-output common-lisp:nil
                                    ((output-artifacts :target-type
                                      artifact-detail-list :member-name
                                      "outputArtifacts")
                                     (execution-result :target-type
                                      action-execution-result :member-name
                                      "executionResult")
                                     (output-variables :target-type
                                      output-variables-map :member-name
                                      "outputVariables"))
                                    (:shape-name "ActionExecutionOutput"))

(smithy/sdk/shapes:define-structure action-execution-result common-lisp:nil
                                    ((external-execution-id :target-type
                                      external-execution-id :member-name
                                      "externalExecutionId")
                                     (external-execution-summary :target-type
                                      external-execution-summary :member-name
                                      "externalExecutionSummary")
                                     (external-execution-url :target-type url
                                      :member-name "externalExecutionUrl")
                                     (error-details :target-type error-details
                                      :member-name "errorDetails")
                                     (log-stream-arn :target-type
                                      log-stream-arn :member-name
                                      "logStreamARN"))
                                    (:shape-name "ActionExecutionResult"))

(smithy/sdk/shapes:define-enum action-execution-status
    common-lisp:nil
  (:in-progress "InProgress")
  (:abandoned "Abandoned")
  (:succeeded "Succeeded")
  (:failed "Failed"))

(smithy/sdk/shapes:define-type action-execution-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type action-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type action-namespace smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error action-not-found-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "ActionNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum action-owner
    common-lisp:nil
  (:aws "AWS")
  (:third-party "ThirdParty")
  (:custom "Custom"))

(smithy/sdk/shapes:define-type action-provider smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure action-revision common-lisp:nil
                                    ((revision-id :target-type revision
                                      :required common-lisp:t :member-name
                                      "revisionId")
                                     (revision-change-id :target-type
                                      revision-change-identifier :required
                                      common-lisp:t :member-name
                                      "revisionChangeId")
                                     (created :target-type timestamp :required
                                      common-lisp:t :member-name "created"))
                                    (:shape-name "ActionRevision"))

(smithy/sdk/shapes:define-type action-run-order smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure action-state common-lisp:nil
                                    ((action-name :target-type action-name
                                      :member-name "actionName")
                                     (current-revision :target-type
                                      action-revision :member-name
                                      "currentRevision")
                                     (latest-execution :target-type
                                      action-execution :member-name
                                      "latestExecution")
                                     (entity-url :target-type url :member-name
                                      "entityUrl")
                                     (revision-url :target-type url
                                      :member-name "revisionUrl"))
                                    (:shape-name "ActionState"))

(smithy/sdk/shapes:define-list action-state-list :member action-state)

(smithy/sdk/shapes:define-type action-timeout smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure action-type common-lisp:nil
                                    ((id :target-type action-type-id :required
                                      common-lisp:t :member-name "id")
                                     (settings :target-type
                                      action-type-settings :member-name
                                      "settings")
                                     (action-configuration-properties
                                      :target-type
                                      action-configuration-property-list
                                      :member-name
                                      "actionConfigurationProperties")
                                     (input-artifact-details :target-type
                                      artifact-details :required common-lisp:t
                                      :member-name "inputArtifactDetails")
                                     (output-artifact-details :target-type
                                      artifact-details :required common-lisp:t
                                      :member-name "outputArtifactDetails"))
                                    (:shape-name "ActionType"))

(smithy/sdk/shapes:define-structure action-type-artifact-details
                                    common-lisp:nil
                                    ((minimum-count :target-type
                                      minimum-action-type-artifact-count
                                      :required common-lisp:t :member-name
                                      "minimumCount")
                                     (maximum-count :target-type
                                      maximum-action-type-artifact-count
                                      :required common-lisp:t :member-name
                                      "maximumCount"))
                                    (:shape-name "ActionTypeArtifactDetails"))

(smithy/sdk/shapes:define-structure action-type-declaration common-lisp:nil
                                    ((description :target-type
                                      action-type-description :member-name
                                      "description")
                                     (executor :target-type
                                      action-type-executor :required
                                      common-lisp:t :member-name "executor")
                                     (id :target-type action-type-identifier
                                      :required common-lisp:t :member-name
                                      "id")
                                     (input-artifact-details :target-type
                                      action-type-artifact-details :required
                                      common-lisp:t :member-name
                                      "inputArtifactDetails")
                                     (output-artifact-details :target-type
                                      action-type-artifact-details :required
                                      common-lisp:t :member-name
                                      "outputArtifactDetails")
                                     (permissions :target-type
                                      action-type-permissions :member-name
                                      "permissions")
                                     (properties :target-type
                                      action-type-properties :member-name
                                      "properties")
                                     (urls :target-type action-type-urls
                                      :member-name "urls"))
                                    (:shape-name "ActionTypeDeclaration"))

(smithy/sdk/shapes:define-type action-type-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure action-type-executor common-lisp:nil
                                    ((configuration :target-type
                                      executor-configuration :required
                                      common-lisp:t :member-name
                                      "configuration")
                                     (type :target-type executor-type :required
                                      common-lisp:t :member-name "type")
                                     (policy-statements-template :target-type
                                      policy-statements-template :member-name
                                      "policyStatementsTemplate")
                                     (job-timeout :target-type job-timeout
                                      :member-name "jobTimeout"))
                                    (:shape-name "ActionTypeExecutor"))

(smithy/sdk/shapes:define-structure action-type-id common-lisp:nil
                                    ((category :target-type action-category
                                      :required common-lisp:t :member-name
                                      "category")
                                     (owner :target-type action-owner :required
                                      common-lisp:t :member-name "owner")
                                     (provider :target-type action-provider
                                      :required common-lisp:t :member-name
                                      "provider")
                                     (version :target-type version :required
                                      common-lisp:t :member-name "version"))
                                    (:shape-name "ActionTypeId"))

(smithy/sdk/shapes:define-structure action-type-identifier common-lisp:nil
                                    ((category :target-type action-category
                                      :required common-lisp:t :member-name
                                      "category")
                                     (owner :target-type action-type-owner
                                      :required common-lisp:t :member-name
                                      "owner")
                                     (provider :target-type action-provider
                                      :required common-lisp:t :member-name
                                      "provider")
                                     (version :target-type version :required
                                      common-lisp:t :member-name "version"))
                                    (:shape-name "ActionTypeIdentifier"))

(smithy/sdk/shapes:define-list action-type-list :member action-type)

(smithy/sdk/shapes:define-error action-type-not-found-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "ActionTypeNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type action-type-owner smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure action-type-permissions common-lisp:nil
                                    ((allowed-accounts :target-type
                                      allowed-accounts :required common-lisp:t
                                      :member-name "allowedAccounts"))
                                    (:shape-name "ActionTypePermissions"))

(smithy/sdk/shapes:define-list action-type-properties :member
                               action-type-property)

(smithy/sdk/shapes:define-structure action-type-property common-lisp:nil
                                    ((name :target-type
                                      action-configuration-key :required
                                      common-lisp:t :member-name "name")
                                     (optional :target-type boolean :required
                                      common-lisp:t :member-name "optional")
                                     (key :target-type boolean :required
                                      common-lisp:t :member-name "key")
                                     (no-echo :target-type boolean :required
                                      common-lisp:t :member-name "noEcho")
                                     (queryable :target-type boolean
                                      :member-name "queryable")
                                     (description :target-type
                                      property-description :member-name
                                      "description"))
                                    (:shape-name "ActionTypeProperty"))

(smithy/sdk/shapes:define-structure action-type-settings common-lisp:nil
                                    ((third-party-configuration-url
                                      :target-type url :member-name
                                      "thirdPartyConfigurationUrl")
                                     (entity-url-template :target-type
                                      url-template :member-name
                                      "entityUrlTemplate")
                                     (execution-url-template :target-type
                                      url-template :member-name
                                      "executionUrlTemplate")
                                     (revision-url-template :target-type
                                      url-template :member-name
                                      "revisionUrlTemplate"))
                                    (:shape-name "ActionTypeSettings"))

(smithy/sdk/shapes:define-structure action-type-urls common-lisp:nil
                                    ((configuration-url :target-type url
                                      :member-name "configurationUrl")
                                     (entity-url-template :target-type
                                      url-template :member-name
                                      "entityUrlTemplate")
                                     (execution-url-template :target-type
                                      url-template :member-name
                                      "executionUrlTemplate")
                                     (revision-url-template :target-type
                                      url-template :member-name
                                      "revisionUrlTemplate"))
                                    (:shape-name "ActionTypeUrls"))

(smithy/sdk/shapes:define-type allowed-account smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list allowed-accounts :member allowed-account)

(smithy/sdk/shapes:define-error approval-already-completed-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "ApprovalAlreadyCompletedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure approval-result common-lisp:nil
                                    ((summary :target-type approval-summary
                                      :required common-lisp:t :member-name
                                      "summary")
                                     (status :target-type approval-status
                                      :required common-lisp:t :member-name
                                      "status"))
                                    (:shape-name "ApprovalResult"))

(smithy/sdk/shapes:define-enum approval-status
    common-lisp:nil
  (:approved "Approved")
  (:rejected "Rejected"))

(smithy/sdk/shapes:define-type approval-summary smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type approval-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure artifact common-lisp:nil
                                    ((name :target-type artifact-name
                                      :member-name "name")
                                     (revision :target-type revision
                                      :member-name "revision")
                                     (location :target-type artifact-location
                                      :member-name "location"))
                                    (:shape-name "Artifact"))

(smithy/sdk/shapes:define-structure artifact-detail common-lisp:nil
                                    ((name :target-type artifact-name
                                      :member-name "name")
                                     (s3location :target-type s3location
                                      :member-name "s3location"))
                                    (:shape-name "ArtifactDetail"))

(smithy/sdk/shapes:define-list artifact-detail-list :member artifact-detail)

(smithy/sdk/shapes:define-structure artifact-details common-lisp:nil
                                    ((minimum-count :target-type
                                      minimum-artifact-count :required
                                      common-lisp:t :member-name
                                      "minimumCount")
                                     (maximum-count :target-type
                                      maximum-artifact-count :required
                                      common-lisp:t :member-name
                                      "maximumCount"))
                                    (:shape-name "ArtifactDetails"))

(smithy/sdk/shapes:define-list artifact-list :member artifact)

(smithy/sdk/shapes:define-structure artifact-location common-lisp:nil
                                    ((type :target-type artifact-location-type
                                      :member-name "type")
                                     (s3location :target-type
                                      s3artifact-location :member-name
                                      "s3Location"))
                                    (:shape-name "ArtifactLocation"))

(smithy/sdk/shapes:define-enum artifact-location-type
    common-lisp:nil
  (:s3 "S3"))

(smithy/sdk/shapes:define-type artifact-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure artifact-revision common-lisp:nil
                                    ((name :target-type artifact-name
                                      :member-name "name")
                                     (revision-id :target-type revision
                                      :member-name "revisionId")
                                     (revision-change-identifier :target-type
                                      revision-change-identifier :member-name
                                      "revisionChangeIdentifier")
                                     (revision-summary :target-type
                                      revision-summary :member-name
                                      "revisionSummary")
                                     (created :target-type timestamp
                                      :member-name "created")
                                     (revision-url :target-type url
                                      :member-name "revisionUrl"))
                                    (:shape-name "ArtifactRevision"))

(smithy/sdk/shapes:define-list artifact-revision-list :member artifact-revision)

(smithy/sdk/shapes:define-structure artifact-store common-lisp:nil
                                    ((type :target-type artifact-store-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (location :target-type
                                      artifact-store-location :required
                                      common-lisp:t :member-name "location")
                                     (encryption-key :target-type
                                      encryption-key :member-name
                                      "encryptionKey"))
                                    (:shape-name "ArtifactStore"))

(smithy/sdk/shapes:define-type artifact-store-location
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map artifact-store-map :key awsregion-name :value
                              artifact-store)

(smithy/sdk/shapes:define-enum artifact-store-type
    common-lisp:nil
  (:s3 "S3"))

(smithy/sdk/shapes:define-structure before-entry-conditions common-lisp:nil
                                    ((conditions :target-type condition-list
                                      :required common-lisp:t :member-name
                                      "conditions"))
                                    (:shape-name "BeforeEntryConditions"))

(smithy/sdk/shapes:define-structure blocker-declaration common-lisp:nil
                                    ((name :target-type blocker-name :required
                                      common-lisp:t :member-name "name")
                                     (type :target-type blocker-type :required
                                      common-lisp:t :member-name "type"))
                                    (:shape-name "BlockerDeclaration"))

(smithy/sdk/shapes:define-type blocker-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum blocker-type
    common-lisp:nil
  (:schedule "Schedule"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type client-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-request-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type command smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list command-list :member command)

(smithy/sdk/shapes:define-error concurrent-modification-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "ConcurrentModificationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error
 concurrent-pipeline-executions-limit-exceeded-exception common-lisp:nil
 ((message :target-type message :member-name "message"))
 (:shape-name "ConcurrentPipelineExecutionsLimitExceededException")
 (:error-code 400))

(smithy/sdk/shapes:define-structure condition common-lisp:nil
                                    ((result :target-type result :member-name
                                      "result")
                                     (rules :target-type rule-declaration-list
                                      :member-name "rules"))
                                    (:shape-name "Condition"))

(smithy/sdk/shapes:define-structure condition-execution common-lisp:nil
                                    ((status :target-type
                                      condition-execution-status :member-name
                                      "status")
                                     (summary :target-type execution-summary
                                      :member-name "summary")
                                     (last-status-change :target-type timestamp
                                      :member-name "lastStatusChange"))
                                    (:shape-name "ConditionExecution"))

(smithy/sdk/shapes:define-enum condition-execution-status
    common-lisp:nil
  (:in-progress "InProgress")
  (:failed "Failed")
  (:errored "Errored")
  (:succeeded "Succeeded")
  (:cancelled "Cancelled")
  (:abandoned "Abandoned")
  (:overridden "Overridden"))

(smithy/sdk/shapes:define-list condition-list :member condition)

(smithy/sdk/shapes:define-error condition-not-overridable-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name
                                 "ConditionNotOverridableException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure condition-state common-lisp:nil
                                    ((latest-execution :target-type
                                      condition-execution :member-name
                                      "latestExecution")
                                     (rule-states :target-type rule-state-list
                                      :member-name "ruleStates"))
                                    (:shape-name "ConditionState"))

(smithy/sdk/shapes:define-list condition-state-list :member condition-state)

(smithy/sdk/shapes:define-enum condition-type
    common-lisp:nil
  (:before-entry "BEFORE_ENTRY")
  (:on-success "ON_SUCCESS"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type continuation-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-custom-action-type-input common-lisp:nil
                                ((category :target-type action-category
                                  :required common-lisp:t :member-name
                                  "category")
                                 (provider :target-type action-provider
                                  :required common-lisp:t :member-name
                                  "provider")
                                 (version :target-type version :required
                                  common-lisp:t :member-name "version")
                                 (settings :target-type action-type-settings
                                  :member-name "settings")
                                 (configuration-properties :target-type
                                  action-configuration-property-list
                                  :member-name "configurationProperties")
                                 (input-artifact-details :target-type
                                  artifact-details :required common-lisp:t
                                  :member-name "inputArtifactDetails")
                                 (output-artifact-details :target-type
                                  artifact-details :required common-lisp:t
                                  :member-name "outputArtifactDetails")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateCustomActionTypeInput"))

(smithy/sdk/shapes:define-output create-custom-action-type-output
                                 common-lisp:nil
                                 ((action-type :target-type action-type
                                   :required common-lisp:t :member-name
                                   "actionType")
                                  (tags :target-type tag-list :member-name
                                   "tags"))
                                 (:shape-name "CreateCustomActionTypeOutput"))

(smithy/sdk/shapes:define-input create-pipeline-input common-lisp:nil
                                ((pipeline :target-type pipeline-declaration
                                  :required common-lisp:t :member-name
                                  "pipeline")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreatePipelineInput"))

(smithy/sdk/shapes:define-output create-pipeline-output common-lisp:nil
                                 ((pipeline :target-type pipeline-declaration
                                   :member-name "pipeline")
                                  (tags :target-type tag-list :member-name
                                   "tags"))
                                 (:shape-name "CreatePipelineOutput"))

(smithy/sdk/shapes:define-structure current-revision common-lisp:nil
                                    ((revision :target-type revision :required
                                      common-lisp:t :member-name "revision")
                                     (change-identifier :target-type
                                      revision-change-identifier :required
                                      common-lisp:t :member-name
                                      "changeIdentifier")
                                     (created :target-type time :member-name
                                      "created")
                                     (revision-summary :target-type
                                      revision-summary :member-name
                                      "revisionSummary"))
                                    (:shape-name "CurrentRevision"))

(smithy/sdk/shapes:define-input delete-custom-action-type-input common-lisp:nil
                                ((category :target-type action-category
                                  :required common-lisp:t :member-name
                                  "category")
                                 (provider :target-type action-provider
                                  :required common-lisp:t :member-name
                                  "provider")
                                 (version :target-type version :required
                                  common-lisp:t :member-name "version"))
                                (:shape-name "DeleteCustomActionTypeInput"))

(smithy/sdk/shapes:define-input delete-pipeline-input common-lisp:nil
                                ((name :target-type pipeline-name :required
                                  common-lisp:t :member-name "name"))
                                (:shape-name "DeletePipelineInput"))

(smithy/sdk/shapes:define-input delete-webhook-input common-lisp:nil
                                ((name :target-type webhook-name :required
                                  common-lisp:t :member-name "name"))
                                (:shape-name "DeleteWebhookInput"))

(smithy/sdk/shapes:define-output delete-webhook-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteWebhookOutput"))

(smithy/sdk/shapes:define-structure deploy-action-execution-target
                                    common-lisp:nil
                                    ((target-id :target-type string
                                      :member-name "targetId")
                                     (target-type :target-type string
                                      :member-name "targetType")
                                     (status :target-type string :member-name
                                      "status")
                                     (start-time :target-type timestamp
                                      :member-name "startTime")
                                     (end-time :target-type timestamp
                                      :member-name "endTime")
                                     (events :target-type
                                      deploy-target-event-list :member-name
                                      "events"))
                                    (:shape-name "DeployActionExecutionTarget"))

(smithy/sdk/shapes:define-list deploy-action-execution-target-list :member
                               deploy-action-execution-target)

(smithy/sdk/shapes:define-structure deploy-target-event common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (status :target-type string :member-name
                                      "status")
                                     (start-time :target-type timestamp
                                      :member-name "startTime")
                                     (end-time :target-type timestamp
                                      :member-name "endTime")
                                     (context :target-type
                                      deploy-target-event-context :member-name
                                      "context"))
                                    (:shape-name "DeployTargetEvent"))

(smithy/sdk/shapes:define-structure deploy-target-event-context common-lisp:nil
                                    ((ssm-command-id :target-type string
                                      :member-name "ssmCommandId")
                                     (message :target-type string :member-name
                                      "message"))
                                    (:shape-name "DeployTargetEventContext"))

(smithy/sdk/shapes:define-list deploy-target-event-list :member
                               deploy-target-event)

(smithy/sdk/shapes:define-input deregister-webhook-with-third-party-input
                                common-lisp:nil
                                ((webhook-name :target-type webhook-name
                                  :member-name "webhookName"))
                                (:shape-name
                                 "DeregisterWebhookWithThirdPartyInput"))

(smithy/sdk/shapes:define-output deregister-webhook-with-third-party-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeregisterWebhookWithThirdPartyOutput"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input disable-stage-transition-input common-lisp:nil
                                ((pipeline-name :target-type pipeline-name
                                  :required common-lisp:t :member-name
                                  "pipelineName")
                                 (stage-name :target-type stage-name :required
                                  common-lisp:t :member-name "stageName")
                                 (transition-type :target-type
                                  stage-transition-type :required common-lisp:t
                                  :member-name "transitionType")
                                 (reason :target-type disabled-reason :required
                                  common-lisp:t :member-name "reason"))
                                (:shape-name "DisableStageTransitionInput"))

(smithy/sdk/shapes:define-type disabled-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error duplicated-stop-request-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "DuplicatedStopRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input enable-stage-transition-input common-lisp:nil
                                ((pipeline-name :target-type pipeline-name
                                  :required common-lisp:t :member-name
                                  "pipelineName")
                                 (stage-name :target-type stage-name :required
                                  common-lisp:t :member-name "stageName")
                                 (transition-type :target-type
                                  stage-transition-type :required common-lisp:t
                                  :member-name "transitionType"))
                                (:shape-name "EnableStageTransitionInput"))

(smithy/sdk/shapes:define-type enabled smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure encryption-key common-lisp:nil
                                    ((id :target-type encryption-key-id
                                      :required common-lisp:t :member-name
                                      "id")
                                     (type :target-type encryption-key-type
                                      :required common-lisp:t :member-name
                                      "type"))
                                    (:shape-name "EncryptionKey"))

(smithy/sdk/shapes:define-type encryption-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum encryption-key-type
    common-lisp:nil
  (:kms "KMS"))

(smithy/sdk/shapes:define-structure environment-variable common-lisp:nil
                                    ((name :target-type
                                      environment-variable-name :required
                                      common-lisp:t :member-name "name")
                                     (value :target-type
                                      environment-variable-value :required
                                      common-lisp:t :member-name "value")
                                     (type :target-type
                                      environment-variable-type :member-name
                                      "type"))
                                    (:shape-name "EnvironmentVariable"))

(smithy/sdk/shapes:define-list environment-variable-list :member
                               environment-variable)

(smithy/sdk/shapes:define-type environment-variable-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum environment-variable-type
    common-lisp:nil
  (:plaintext "PLAINTEXT")
  (:secrets-manager "SECRETS_MANAGER"))

(smithy/sdk/shapes:define-type environment-variable-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure error-details common-lisp:nil
                                    ((code :target-type code :member-name
                                      "code")
                                     (message :target-type message :member-name
                                      "message"))
                                    (:shape-name "ErrorDetails"))

(smithy/sdk/shapes:define-structure execution-details common-lisp:nil
                                    ((summary :target-type execution-summary
                                      :member-name "summary")
                                     (external-execution-id :target-type
                                      execution-id :member-name
                                      "externalExecutionId")
                                     (percent-complete :target-type percentage
                                      :member-name "percentComplete"))
                                    (:shape-name "ExecutionDetails"))

(smithy/sdk/shapes:define-type execution-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum execution-mode
    common-lisp:nil
  (:queued "QUEUED")
  (:superseded "SUPERSEDED")
  (:parallel "PARALLEL"))

(smithy/sdk/shapes:define-type execution-summary smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure execution-trigger common-lisp:nil
                                    ((trigger-type :target-type trigger-type
                                      :member-name "triggerType")
                                     (trigger-detail :target-type
                                      trigger-detail :member-name
                                      "triggerDetail"))
                                    (:shape-name "ExecutionTrigger"))

(smithy/sdk/shapes:define-enum execution-type
    common-lisp:nil
  (:standard "STANDARD")
  (:rollback "ROLLBACK"))

(smithy/sdk/shapes:define-structure executor-configuration common-lisp:nil
                                    ((lambda-executor-configuration
                                      :target-type
                                      lambda-executor-configuration
                                      :member-name
                                      "lambdaExecutorConfiguration")
                                     (job-worker-executor-configuration
                                      :target-type
                                      job-worker-executor-configuration
                                      :member-name
                                      "jobWorkerExecutorConfiguration"))
                                    (:shape-name "ExecutorConfiguration"))

(smithy/sdk/shapes:define-enum executor-type
    common-lisp:nil
  (:job-worker "JobWorker")
  (:lambda "Lambda"))

(smithy/sdk/shapes:define-type external-execution-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type external-execution-summary
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure failure-conditions common-lisp:nil
                                    ((result :target-type result :member-name
                                      "result")
                                     (retry-configuration :target-type
                                      retry-configuration :member-name
                                      "retryConfiguration")
                                     (conditions :target-type condition-list
                                      :member-name "conditions"))
                                    (:shape-name "FailureConditions"))

(smithy/sdk/shapes:define-structure failure-details common-lisp:nil
                                    ((type :target-type failure-type :required
                                      common-lisp:t :member-name "type")
                                     (message :target-type message :required
                                      common-lisp:t :member-name "message")
                                     (external-execution-id :target-type
                                      execution-id :member-name
                                      "externalExecutionId"))
                                    (:shape-name "FailureDetails"))

(smithy/sdk/shapes:define-enum failure-type
    common-lisp:nil
  (:job-failed "JobFailed")
  (:configuration-error "ConfigurationError")
  (:permission-error "PermissionError")
  (:revision-out-of-sync "RevisionOutOfSync")
  (:revision-unavailable "RevisionUnavailable")
  (:system-unavailable "SystemUnavailable"))

(smithy/sdk/shapes:define-type file-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list file-path-list :member file-path)

(smithy/sdk/shapes:define-input get-action-type-input common-lisp:nil
                                ((category :target-type action-category
                                  :required common-lisp:t :member-name
                                  "category")
                                 (owner :target-type action-type-owner
                                  :required common-lisp:t :member-name "owner")
                                 (provider :target-type action-provider
                                  :required common-lisp:t :member-name
                                  "provider")
                                 (version :target-type version :required
                                  common-lisp:t :member-name "version"))
                                (:shape-name "GetActionTypeInput"))

(smithy/sdk/shapes:define-output get-action-type-output common-lisp:nil
                                 ((action-type :target-type
                                   action-type-declaration :member-name
                                   "actionType"))
                                 (:shape-name "GetActionTypeOutput"))

(smithy/sdk/shapes:define-input get-job-details-input common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"))
                                (:shape-name "GetJobDetailsInput"))

(smithy/sdk/shapes:define-output get-job-details-output common-lisp:nil
                                 ((job-details :target-type job-details
                                   :member-name "jobDetails"))
                                 (:shape-name "GetJobDetailsOutput"))

(smithy/sdk/shapes:define-input get-pipeline-execution-input common-lisp:nil
                                ((pipeline-name :target-type pipeline-name
                                  :required common-lisp:t :member-name
                                  "pipelineName")
                                 (pipeline-execution-id :target-type
                                  pipeline-execution-id :required common-lisp:t
                                  :member-name "pipelineExecutionId"))
                                (:shape-name "GetPipelineExecutionInput"))

(smithy/sdk/shapes:define-output get-pipeline-execution-output common-lisp:nil
                                 ((pipeline-execution :target-type
                                   pipeline-execution :member-name
                                   "pipelineExecution"))
                                 (:shape-name "GetPipelineExecutionOutput"))

(smithy/sdk/shapes:define-input get-pipeline-input common-lisp:nil
                                ((name :target-type pipeline-name :required
                                  common-lisp:t :member-name "name")
                                 (version :target-type pipeline-version
                                  :member-name "version"))
                                (:shape-name "GetPipelineInput"))

(smithy/sdk/shapes:define-output get-pipeline-output common-lisp:nil
                                 ((pipeline :target-type pipeline-declaration
                                   :member-name "pipeline")
                                  (metadata :target-type pipeline-metadata
                                   :member-name "metadata"))
                                 (:shape-name "GetPipelineOutput"))

(smithy/sdk/shapes:define-input get-pipeline-state-input common-lisp:nil
                                ((name :target-type pipeline-name :required
                                  common-lisp:t :member-name "name"))
                                (:shape-name "GetPipelineStateInput"))

(smithy/sdk/shapes:define-output get-pipeline-state-output common-lisp:nil
                                 ((pipeline-name :target-type pipeline-name
                                   :member-name "pipelineName")
                                  (pipeline-version :target-type
                                   pipeline-version :member-name
                                   "pipelineVersion")
                                  (stage-states :target-type stage-state-list
                                   :member-name "stageStates")
                                  (created :target-type timestamp :member-name
                                   "created")
                                  (updated :target-type timestamp :member-name
                                   "updated"))
                                 (:shape-name "GetPipelineStateOutput"))

(smithy/sdk/shapes:define-input get-third-party-job-details-input
                                common-lisp:nil
                                ((job-id :target-type third-party-job-id
                                  :required common-lisp:t :member-name "jobId")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken"))
                                (:shape-name "GetThirdPartyJobDetailsInput"))

(smithy/sdk/shapes:define-output get-third-party-job-details-output
                                 common-lisp:nil
                                 ((job-details :target-type
                                   third-party-job-details :member-name
                                   "jobDetails"))
                                 (:shape-name "GetThirdPartyJobDetailsOutput"))

(smithy/sdk/shapes:define-structure git-branch-filter-criteria common-lisp:nil
                                    ((includes :target-type
                                      git-branch-pattern-list :member-name
                                      "includes")
                                     (excludes :target-type
                                      git-branch-pattern-list :member-name
                                      "excludes"))
                                    (:shape-name "GitBranchFilterCriteria"))

(smithy/sdk/shapes:define-type git-branch-name-pattern
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list git-branch-pattern-list :member
                               git-branch-name-pattern)

(smithy/sdk/shapes:define-structure git-configuration common-lisp:nil
                                    ((source-action-name :target-type
                                      action-name :required common-lisp:t
                                      :member-name "sourceActionName")
                                     (push :target-type git-push-filter-list
                                      :member-name "push")
                                     (pull-request :target-type
                                      git-pull-request-filter-list :member-name
                                      "pullRequest"))
                                    (:shape-name "GitConfiguration"))

(smithy/sdk/shapes:define-structure git-file-path-filter-criteria
                                    common-lisp:nil
                                    ((includes :target-type
                                      git-file-path-pattern-list :member-name
                                      "includes")
                                     (excludes :target-type
                                      git-file-path-pattern-list :member-name
                                      "excludes"))
                                    (:shape-name "GitFilePathFilterCriteria"))

(smithy/sdk/shapes:define-type git-file-path-pattern
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list git-file-path-pattern-list :member
                               git-file-path-pattern)

(smithy/sdk/shapes:define-enum git-pull-request-event-type
    common-lisp:nil
  (:open "OPEN")
  (:updated "UPDATED")
  (:closed "CLOSED"))

(smithy/sdk/shapes:define-list git-pull-request-event-type-list :member
                               git-pull-request-event-type)

(smithy/sdk/shapes:define-structure git-pull-request-filter common-lisp:nil
                                    ((events :target-type
                                      git-pull-request-event-type-list
                                      :member-name "events")
                                     (branches :target-type
                                      git-branch-filter-criteria :member-name
                                      "branches")
                                     (file-paths :target-type
                                      git-file-path-filter-criteria
                                      :member-name "filePaths"))
                                    (:shape-name "GitPullRequestFilter"))

(smithy/sdk/shapes:define-list git-pull-request-filter-list :member
                               git-pull-request-filter)

(smithy/sdk/shapes:define-structure git-push-filter common-lisp:nil
                                    ((tags :target-type git-tag-filter-criteria
                                      :member-name "tags")
                                     (branches :target-type
                                      git-branch-filter-criteria :member-name
                                      "branches")
                                     (file-paths :target-type
                                      git-file-path-filter-criteria
                                      :member-name "filePaths"))
                                    (:shape-name "GitPushFilter"))

(smithy/sdk/shapes:define-list git-push-filter-list :member git-push-filter)

(smithy/sdk/shapes:define-structure git-tag-filter-criteria common-lisp:nil
                                    ((includes :target-type
                                      git-tag-pattern-list :member-name
                                      "includes")
                                     (excludes :target-type
                                      git-tag-pattern-list :member-name
                                      "excludes"))
                                    (:shape-name "GitTagFilterCriteria"))

(smithy/sdk/shapes:define-type git-tag-name-pattern
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list git-tag-pattern-list :member
                               git-tag-name-pattern)

(smithy/sdk/shapes:define-structure input-artifact common-lisp:nil
                                    ((name :target-type artifact-name :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "InputArtifact"))

(smithy/sdk/shapes:define-list input-artifact-list :member input-artifact)

(smithy/sdk/shapes:define-error invalid-action-declaration-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidActionDeclarationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-approval-token-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidApprovalTokenException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-arn-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidArnException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-blocker-declaration-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidBlockerDeclarationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-client-token-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidClientTokenException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-job-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidJobException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-job-state-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidJobStateException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-next-token-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidNextTokenException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-nonce-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidNonceException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-stage-declaration-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidStageDeclarationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-structure-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidStructureException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-tags-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidTagsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error
 invalid-webhook-authentication-parameters-exception common-lisp:nil
 ((message :target-type message :member-name "message"))
 (:shape-name "InvalidWebhookAuthenticationParametersException")
 (:error-code 400))

(smithy/sdk/shapes:define-error invalid-webhook-filter-pattern-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidWebhookFilterPatternException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure job common-lisp:nil
                                    ((id :target-type job-id :member-name "id")
                                     (data :target-type job-data :member-name
                                      "data")
                                     (nonce :target-type nonce :member-name
                                      "nonce")
                                     (account-id :target-type account-id
                                      :member-name "accountId"))
                                    (:shape-name "Job"))

(smithy/sdk/shapes:define-structure job-data common-lisp:nil
                                    ((action-type-id :target-type
                                      action-type-id :member-name
                                      "actionTypeId")
                                     (action-configuration :target-type
                                      action-configuration :member-name
                                      "actionConfiguration")
                                     (pipeline-context :target-type
                                      pipeline-context :member-name
                                      "pipelineContext")
                                     (input-artifacts :target-type
                                      artifact-list :member-name
                                      "inputArtifacts")
                                     (output-artifacts :target-type
                                      artifact-list :member-name
                                      "outputArtifacts")
                                     (artifact-credentials :target-type
                                      awssession-credentials :member-name
                                      "artifactCredentials")
                                     (continuation-token :target-type
                                      continuation-token :member-name
                                      "continuationToken")
                                     (encryption-key :target-type
                                      encryption-key :member-name
                                      "encryptionKey"))
                                    (:shape-name "JobData"))

(smithy/sdk/shapes:define-structure job-details common-lisp:nil
                                    ((id :target-type job-id :member-name "id")
                                     (data :target-type job-data :member-name
                                      "data")
                                     (account-id :target-type account-id
                                      :member-name "accountId"))
                                    (:shape-name "JobDetails"))

(smithy/sdk/shapes:define-type job-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list job-list :member job)

(smithy/sdk/shapes:define-error job-not-found-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "JobNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum job-status
    common-lisp:nil
  (:created "Created")
  (:queued "Queued")
  (:dispatched "Dispatched")
  (:in-progress "InProgress")
  (:timed-out "TimedOut")
  (:succeeded "Succeeded")
  (:failed "Failed"))

(smithy/sdk/shapes:define-type job-timeout smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure job-worker-executor-configuration
                                    common-lisp:nil
                                    ((polling-accounts :target-type
                                      polling-account-list :member-name
                                      "pollingAccounts")
                                     (polling-service-principals :target-type
                                      polling-service-principal-list
                                      :member-name "pollingServicePrincipals"))
                                    (:shape-name
                                     "JobWorkerExecutorConfiguration"))

(smithy/sdk/shapes:define-type json-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lambda-executor-configuration
                                    common-lisp:nil
                                    ((lambda-function-arn :target-type
                                      lambda-function-arn :required
                                      common-lisp:t :member-name
                                      "lambdaFunctionArn"))
                                    (:shape-name "LambdaExecutorConfiguration"))

(smithy/sdk/shapes:define-type lambda-function-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type last-changed-at
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type last-changed-by smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type last-updated-by smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure latest-in-pipeline-execution-filter
                                    common-lisp:nil
                                    ((pipeline-execution-id :target-type
                                      pipeline-execution-id :required
                                      common-lisp:t :member-name
                                      "pipelineExecutionId")
                                     (start-time-range :target-type
                                      start-time-range :required common-lisp:t
                                      :member-name "startTimeRange"))
                                    (:shape-name
                                     "LatestInPipelineExecutionFilter"))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input list-action-executions-input common-lisp:nil
                                ((pipeline-name :target-type pipeline-name
                                  :required common-lisp:t :member-name
                                  "pipelineName")
                                 (filter :target-type action-execution-filter
                                  :member-name "filter")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListActionExecutionsInput"))

(smithy/sdk/shapes:define-output list-action-executions-output common-lisp:nil
                                 ((action-execution-details :target-type
                                   action-execution-detail-list :member-name
                                   "actionExecutionDetails")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListActionExecutionsOutput"))

(smithy/sdk/shapes:define-input list-action-types-input common-lisp:nil
                                ((action-owner-filter :target-type action-owner
                                  :member-name "actionOwnerFilter")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (region-filter :target-type awsregion-name
                                  :member-name "regionFilter"))
                                (:shape-name "ListActionTypesInput"))

(smithy/sdk/shapes:define-output list-action-types-output common-lisp:nil
                                 ((action-types :target-type action-type-list
                                   :required common-lisp:t :member-name
                                   "actionTypes")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListActionTypesOutput"))

(smithy/sdk/shapes:define-input list-deploy-action-execution-targets-input
                                common-lisp:nil
                                ((pipeline-name :target-type pipeline-name
                                  :member-name "pipelineName")
                                 (action-execution-id :target-type
                                  action-execution-id :required common-lisp:t
                                  :member-name "actionExecutionId")
                                 (filters :target-type target-filter-list
                                  :member-name "filters")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name
                                 "ListDeployActionExecutionTargetsInput"))

(smithy/sdk/shapes:define-output list-deploy-action-execution-targets-output
                                 common-lisp:nil
                                 ((targets :target-type
                                   deploy-action-execution-target-list
                                   :member-name "targets")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListDeployActionExecutionTargetsOutput"))

(smithy/sdk/shapes:define-input list-pipeline-executions-input common-lisp:nil
                                ((pipeline-name :target-type pipeline-name
                                  :required common-lisp:t :member-name
                                  "pipelineName")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (filter :target-type pipeline-execution-filter
                                  :member-name "filter")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListPipelineExecutionsInput"))

(smithy/sdk/shapes:define-output list-pipeline-executions-output
                                 common-lisp:nil
                                 ((pipeline-execution-summaries :target-type
                                   pipeline-execution-summary-list :member-name
                                   "pipelineExecutionSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListPipelineExecutionsOutput"))

(smithy/sdk/shapes:define-input list-pipelines-input common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-pipelines
                                  :member-name "maxResults"))
                                (:shape-name "ListPipelinesInput"))

(smithy/sdk/shapes:define-output list-pipelines-output common-lisp:nil
                                 ((pipelines :target-type pipeline-list
                                   :member-name "pipelines")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListPipelinesOutput"))

(smithy/sdk/shapes:define-input list-rule-executions-input common-lisp:nil
                                ((pipeline-name :target-type pipeline-name
                                  :required common-lisp:t :member-name
                                  "pipelineName")
                                 (filter :target-type rule-execution-filter
                                  :member-name "filter")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListRuleExecutionsInput"))

(smithy/sdk/shapes:define-output list-rule-executions-output common-lisp:nil
                                 ((rule-execution-details :target-type
                                   rule-execution-detail-list :member-name
                                   "ruleExecutionDetails")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListRuleExecutionsOutput"))

(smithy/sdk/shapes:define-input list-rule-types-input common-lisp:nil
                                ((rule-owner-filter :target-type rule-owner
                                  :member-name "ruleOwnerFilter")
                                 (region-filter :target-type awsregion-name
                                  :member-name "regionFilter"))
                                (:shape-name "ListRuleTypesInput"))

(smithy/sdk/shapes:define-output list-rule-types-output common-lisp:nil
                                 ((rule-types :target-type rule-type-list
                                   :required common-lisp:t :member-name
                                   "ruleTypes"))
                                 (:shape-name "ListRuleTypesOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-input common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListTagsForResourceInput"))

(smithy/sdk/shapes:define-output list-tags-for-resource-output common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "tags")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListTagsForResourceOutput"))

(smithy/sdk/shapes:define-structure list-webhook-item common-lisp:nil
                                    ((definition :target-type
                                      webhook-definition :required
                                      common-lisp:t :member-name "definition")
                                     (url :target-type webhook-url :required
                                      common-lisp:t :member-name "url")
                                     (error-message :target-type
                                      webhook-error-message :member-name
                                      "errorMessage")
                                     (error-code :target-type
                                      webhook-error-code :member-name
                                      "errorCode")
                                     (last-triggered :target-type
                                      webhook-last-triggered :member-name
                                      "lastTriggered")
                                     (arn :target-type webhook-arn :member-name
                                      "arn")
                                     (tags :target-type tag-list :member-name
                                      "tags"))
                                    (:shape-name "ListWebhookItem"))

(smithy/sdk/shapes:define-input list-webhooks-input common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListWebhooksInput"))

(smithy/sdk/shapes:define-output list-webhooks-output common-lisp:nil
                                 ((webhooks :target-type webhook-list
                                   :member-name "webhooks")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListWebhooksOutput"))

(smithy/sdk/shapes:define-type log-stream-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type match-equals smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-batch-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-pipelines smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type maximum-action-type-artifact-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type maximum-artifact-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type minimum-action-type-artifact-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type minimum-artifact-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type nonce smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error not-latest-pipeline-execution-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "NotLatestPipelineExecutionException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure output-artifact common-lisp:nil
                                    ((name :target-type artifact-name :required
                                      common-lisp:t :member-name "name")
                                     (files :target-type file-path-list
                                      :member-name "files"))
                                    (:shape-name "OutputArtifact"))

(smithy/sdk/shapes:define-list output-artifact-list :member output-artifact)

(smithy/sdk/shapes:define-type output-variable smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list output-variable-list :member output-variable)

(smithy/sdk/shapes:define-type output-variables-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map output-variables-map :key output-variables-key
                              :value output-variables-value)

(smithy/sdk/shapes:define-error output-variables-size-exceeded-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "OutputVariablesSizeExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type output-variables-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input override-stage-condition-input common-lisp:nil
                                ((pipeline-name :target-type pipeline-name
                                  :required common-lisp:t :member-name
                                  "pipelineName")
                                 (stage-name :target-type stage-name :required
                                  common-lisp:t :member-name "stageName")
                                 (pipeline-execution-id :target-type
                                  pipeline-execution-id :required common-lisp:t
                                  :member-name "pipelineExecutionId")
                                 (condition-type :target-type condition-type
                                  :required common-lisp:t :member-name
                                  "conditionType"))
                                (:shape-name "OverrideStageConditionInput"))

(smithy/sdk/shapes:define-type percentage smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type pipeline-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure pipeline-context common-lisp:nil
                                    ((pipeline-name :target-type pipeline-name
                                      :member-name "pipelineName")
                                     (stage :target-type stage-context
                                      :member-name "stage")
                                     (action :target-type action-context
                                      :member-name "action")
                                     (pipeline-arn :target-type pipeline-arn
                                      :member-name "pipelineArn")
                                     (pipeline-execution-id :target-type
                                      pipeline-execution-id :member-name
                                      "pipelineExecutionId"))
                                    (:shape-name "PipelineContext"))

(smithy/sdk/shapes:define-structure pipeline-declaration common-lisp:nil
                                    ((name :target-type pipeline-name :required
                                      common-lisp:t :member-name "name")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (artifact-store :target-type
                                      artifact-store :member-name
                                      "artifactStore")
                                     (artifact-stores :target-type
                                      artifact-store-map :member-name
                                      "artifactStores")
                                     (stages :target-type
                                      pipeline-stage-declaration-list :required
                                      common-lisp:t :member-name "stages")
                                     (version :target-type pipeline-version
                                      :member-name "version")
                                     (execution-mode :target-type
                                      execution-mode :member-name
                                      "executionMode")
                                     (pipeline-type :target-type pipeline-type
                                      :member-name "pipelineType")
                                     (variables :target-type
                                      pipeline-variable-declaration-list
                                      :member-name "variables")
                                     (triggers :target-type
                                      pipeline-trigger-declaration-list
                                      :member-name "triggers"))
                                    (:shape-name "PipelineDeclaration"))

(smithy/sdk/shapes:define-structure pipeline-execution common-lisp:nil
                                    ((pipeline-name :target-type pipeline-name
                                      :member-name "pipelineName")
                                     (pipeline-version :target-type
                                      pipeline-version :member-name
                                      "pipelineVersion")
                                     (pipeline-execution-id :target-type
                                      pipeline-execution-id :member-name
                                      "pipelineExecutionId")
                                     (status :target-type
                                      pipeline-execution-status :member-name
                                      "status")
                                     (status-summary :target-type
                                      pipeline-execution-status-summary
                                      :member-name "statusSummary")
                                     (artifact-revisions :target-type
                                      artifact-revision-list :member-name
                                      "artifactRevisions")
                                     (variables :target-type
                                      resolved-pipeline-variable-list
                                      :member-name "variables")
                                     (trigger :target-type execution-trigger
                                      :member-name "trigger")
                                     (execution-mode :target-type
                                      execution-mode :member-name
                                      "executionMode")
                                     (execution-type :target-type
                                      execution-type :member-name
                                      "executionType")
                                     (rollback-metadata :target-type
                                      pipeline-rollback-metadata :member-name
                                      "rollbackMetadata"))
                                    (:shape-name "PipelineExecution"))

(smithy/sdk/shapes:define-structure pipeline-execution-filter common-lisp:nil
                                    ((succeeded-in-stage :target-type
                                      succeeded-in-stage-filter :member-name
                                      "succeededInStage"))
                                    (:shape-name "PipelineExecutionFilter"))

(smithy/sdk/shapes:define-type pipeline-execution-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error pipeline-execution-not-found-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "PipelineExecutionNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error pipeline-execution-not-stoppable-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "PipelineExecutionNotStoppableException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error pipeline-execution-outdated-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "PipelineExecutionOutdatedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum pipeline-execution-status
    common-lisp:nil
  (:cancelled "Cancelled")
  (:in-progress "InProgress")
  (:stopped "Stopped")
  (:stopping "Stopping")
  (:succeeded "Succeeded")
  (:superseded "Superseded")
  (:failed "Failed"))

(smithy/sdk/shapes:define-type pipeline-execution-status-summary
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure pipeline-execution-summary common-lisp:nil
                                    ((pipeline-execution-id :target-type
                                      pipeline-execution-id :member-name
                                      "pipelineExecutionId")
                                     (status :target-type
                                      pipeline-execution-status :member-name
                                      "status")
                                     (status-summary :target-type
                                      pipeline-execution-status-summary
                                      :member-name "statusSummary")
                                     (start-time :target-type timestamp
                                      :member-name "startTime")
                                     (last-update-time :target-type timestamp
                                      :member-name "lastUpdateTime")
                                     (source-revisions :target-type
                                      source-revision-list :member-name
                                      "sourceRevisions")
                                     (trigger :target-type execution-trigger
                                      :member-name "trigger")
                                     (stop-trigger :target-type
                                      stop-execution-trigger :member-name
                                      "stopTrigger")
                                     (execution-mode :target-type
                                      execution-mode :member-name
                                      "executionMode")
                                     (execution-type :target-type
                                      execution-type :member-name
                                      "executionType")
                                     (rollback-metadata :target-type
                                      pipeline-rollback-metadata :member-name
                                      "rollbackMetadata"))
                                    (:shape-name "PipelineExecutionSummary"))

(smithy/sdk/shapes:define-list pipeline-execution-summary-list :member
                               pipeline-execution-summary)

(smithy/sdk/shapes:define-list pipeline-list :member pipeline-summary)

(smithy/sdk/shapes:define-structure pipeline-metadata common-lisp:nil
                                    ((pipeline-arn :target-type pipeline-arn
                                      :member-name "pipelineArn")
                                     (created :target-type timestamp
                                      :member-name "created")
                                     (updated :target-type timestamp
                                      :member-name "updated")
                                     (polling-disabled-at :target-type
                                      timestamp :member-name
                                      "pollingDisabledAt"))
                                    (:shape-name "PipelineMetadata"))

(smithy/sdk/shapes:define-type pipeline-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error pipeline-name-in-use-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "PipelineNameInUseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error pipeline-not-found-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "PipelineNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure pipeline-rollback-metadata common-lisp:nil
                                    ((rollback-target-pipeline-execution-id
                                      :target-type pipeline-execution-id
                                      :member-name
                                      "rollbackTargetPipelineExecutionId"))
                                    (:shape-name "PipelineRollbackMetadata"))

(smithy/sdk/shapes:define-list pipeline-stage-declaration-list :member
                               stage-declaration)

(smithy/sdk/shapes:define-structure pipeline-summary common-lisp:nil
                                    ((name :target-type pipeline-name
                                      :member-name "name")
                                     (version :target-type pipeline-version
                                      :member-name "version")
                                     (pipeline-type :target-type pipeline-type
                                      :member-name "pipelineType")
                                     (execution-mode :target-type
                                      execution-mode :member-name
                                      "executionMode")
                                     (created :target-type timestamp
                                      :member-name "created")
                                     (updated :target-type timestamp
                                      :member-name "updated"))
                                    (:shape-name "PipelineSummary"))

(smithy/sdk/shapes:define-structure pipeline-trigger-declaration
                                    common-lisp:nil
                                    ((provider-type :target-type
                                      pipeline-trigger-provider-type :required
                                      common-lisp:t :member-name
                                      "providerType")
                                     (git-configuration :target-type
                                      git-configuration :required common-lisp:t
                                      :member-name "gitConfiguration"))
                                    (:shape-name "PipelineTriggerDeclaration"))

(smithy/sdk/shapes:define-list pipeline-trigger-declaration-list :member
                               pipeline-trigger-declaration)

(smithy/sdk/shapes:define-enum pipeline-trigger-provider-type
    common-lisp:nil
  (:code-star-source-connection "CodeStarSourceConnection"))

(smithy/sdk/shapes:define-enum pipeline-type
    common-lisp:nil
  (:v1 "V1")
  (:v2 "V2"))

(smithy/sdk/shapes:define-structure pipeline-variable common-lisp:nil
                                    ((name :target-type pipeline-variable-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (value :target-type
                                      pipeline-variable-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "PipelineVariable"))

(smithy/sdk/shapes:define-structure pipeline-variable-declaration
                                    common-lisp:nil
                                    ((name :target-type pipeline-variable-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (default-value :target-type
                                      pipeline-variable-value :member-name
                                      "defaultValue")
                                     (description :target-type
                                      pipeline-variable-description
                                      :member-name "description"))
                                    (:shape-name "PipelineVariableDeclaration"))

(smithy/sdk/shapes:define-list pipeline-variable-declaration-list :member
                               pipeline-variable-declaration)

(smithy/sdk/shapes:define-type pipeline-variable-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list pipeline-variable-list :member pipeline-variable)

(smithy/sdk/shapes:define-type pipeline-variable-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pipeline-variable-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pipeline-version smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error pipeline-version-not-found-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "PipelineVersionNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type policy-statements-template
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input poll-for-jobs-input common-lisp:nil
                                ((action-type-id :target-type action-type-id
                                  :required common-lisp:t :member-name
                                  "actionTypeId")
                                 (max-batch-size :target-type max-batch-size
                                  :member-name "maxBatchSize")
                                 (query-param :target-type query-param-map
                                  :member-name "queryParam"))
                                (:shape-name "PollForJobsInput"))

(smithy/sdk/shapes:define-output poll-for-jobs-output common-lisp:nil
                                 ((jobs :target-type job-list :member-name
                                   "jobs"))
                                 (:shape-name "PollForJobsOutput"))

(smithy/sdk/shapes:define-input poll-for-third-party-jobs-input common-lisp:nil
                                ((action-type-id :target-type action-type-id
                                  :required common-lisp:t :member-name
                                  "actionTypeId")
                                 (max-batch-size :target-type max-batch-size
                                  :member-name "maxBatchSize"))
                                (:shape-name "PollForThirdPartyJobsInput"))

(smithy/sdk/shapes:define-output poll-for-third-party-jobs-output
                                 common-lisp:nil
                                 ((jobs :target-type third-party-job-list
                                   :member-name "jobs"))
                                 (:shape-name "PollForThirdPartyJobsOutput"))

(smithy/sdk/shapes:define-list polling-account-list :member account-id)

(smithy/sdk/shapes:define-list polling-service-principal-list :member
                               service-principal)

(smithy/sdk/shapes:define-type property-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input put-action-revision-input common-lisp:nil
                                ((pipeline-name :target-type pipeline-name
                                  :required common-lisp:t :member-name
                                  "pipelineName")
                                 (stage-name :target-type stage-name :required
                                  common-lisp:t :member-name "stageName")
                                 (action-name :target-type action-name
                                  :required common-lisp:t :member-name
                                  "actionName")
                                 (action-revision :target-type action-revision
                                  :required common-lisp:t :member-name
                                  "actionRevision"))
                                (:shape-name "PutActionRevisionInput"))

(smithy/sdk/shapes:define-output put-action-revision-output common-lisp:nil
                                 ((new-revision :target-type boolean
                                   :member-name "newRevision")
                                  (pipeline-execution-id :target-type
                                   pipeline-execution-id :member-name
                                   "pipelineExecutionId"))
                                 (:shape-name "PutActionRevisionOutput"))

(smithy/sdk/shapes:define-input put-approval-result-input common-lisp:nil
                                ((pipeline-name :target-type pipeline-name
                                  :required common-lisp:t :member-name
                                  "pipelineName")
                                 (stage-name :target-type stage-name :required
                                  common-lisp:t :member-name "stageName")
                                 (action-name :target-type action-name
                                  :required common-lisp:t :member-name
                                  "actionName")
                                 (result :target-type approval-result :required
                                  common-lisp:t :member-name "result")
                                 (token :target-type approval-token :required
                                  common-lisp:t :member-name "token"))
                                (:shape-name "PutApprovalResultInput"))

(smithy/sdk/shapes:define-output put-approval-result-output common-lisp:nil
                                 ((approved-at :target-type timestamp
                                   :member-name "approvedAt"))
                                 (:shape-name "PutApprovalResultOutput"))

(smithy/sdk/shapes:define-input put-job-failure-result-input common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId")
                                 (failure-details :target-type failure-details
                                  :required common-lisp:t :member-name
                                  "failureDetails"))
                                (:shape-name "PutJobFailureResultInput"))

(smithy/sdk/shapes:define-input put-job-success-result-input common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId")
                                 (current-revision :target-type
                                  current-revision :member-name
                                  "currentRevision")
                                 (continuation-token :target-type
                                  continuation-token :member-name
                                  "continuationToken")
                                 (execution-details :target-type
                                  execution-details :member-name
                                  "executionDetails")
                                 (output-variables :target-type
                                  output-variables-map :member-name
                                  "outputVariables"))
                                (:shape-name "PutJobSuccessResultInput"))

(smithy/sdk/shapes:define-input put-third-party-job-failure-result-input
                                common-lisp:nil
                                ((job-id :target-type third-party-job-id
                                  :required common-lisp:t :member-name "jobId")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken")
                                 (failure-details :target-type failure-details
                                  :required common-lisp:t :member-name
                                  "failureDetails"))
                                (:shape-name
                                 "PutThirdPartyJobFailureResultInput"))

(smithy/sdk/shapes:define-input put-third-party-job-success-result-input
                                common-lisp:nil
                                ((job-id :target-type third-party-job-id
                                  :required common-lisp:t :member-name "jobId")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken")
                                 (current-revision :target-type
                                  current-revision :member-name
                                  "currentRevision")
                                 (continuation-token :target-type
                                  continuation-token :member-name
                                  "continuationToken")
                                 (execution-details :target-type
                                  execution-details :member-name
                                  "executionDetails"))
                                (:shape-name
                                 "PutThirdPartyJobSuccessResultInput"))

(smithy/sdk/shapes:define-input put-webhook-input common-lisp:nil
                                ((webhook :target-type webhook-definition
                                  :required common-lisp:t :member-name
                                  "webhook")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "PutWebhookInput"))

(smithy/sdk/shapes:define-output put-webhook-output common-lisp:nil
                                 ((webhook :target-type list-webhook-item
                                   :member-name "webhook"))
                                 (:shape-name "PutWebhookOutput"))

(smithy/sdk/shapes:define-map query-param-map :key action-configuration-key
                              :value action-configuration-queryable-value)

(smithy/sdk/shapes:define-input register-webhook-with-third-party-input
                                common-lisp:nil
                                ((webhook-name :target-type webhook-name
                                  :member-name "webhookName"))
                                (:shape-name
                                 "RegisterWebhookWithThirdPartyInput"))

(smithy/sdk/shapes:define-output register-webhook-with-third-party-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "RegisterWebhookWithThirdPartyOutput"))

(smithy/sdk/shapes:define-error request-failed-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "RequestFailedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-map resolved-action-configuration-map :key string
                              :value string)

(smithy/sdk/shapes:define-structure resolved-pipeline-variable common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (resolved-value :target-type string
                                      :member-name "resolvedValue"))
                                    (:shape-name "ResolvedPipelineVariable"))

(smithy/sdk/shapes:define-list resolved-pipeline-variable-list :member
                               resolved-pipeline-variable)

(smithy/sdk/shapes:define-map resolved-rule-configuration-map :key string
                              :value string)

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum result
    common-lisp:nil
  (:rollback "ROLLBACK")
  (:fail "FAIL")
  (:retry "RETRY")
  (:skip "SKIP"))

(smithy/sdk/shapes:define-type retry-attempt smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure retry-configuration common-lisp:nil
                                    ((retry-mode :target-type stage-retry-mode
                                      :member-name "retryMode"))
                                    (:shape-name "RetryConfiguration"))

(smithy/sdk/shapes:define-input retry-stage-execution-input common-lisp:nil
                                ((pipeline-name :target-type pipeline-name
                                  :required common-lisp:t :member-name
                                  "pipelineName")
                                 (stage-name :target-type stage-name :required
                                  common-lisp:t :member-name "stageName")
                                 (pipeline-execution-id :target-type
                                  pipeline-execution-id :required common-lisp:t
                                  :member-name "pipelineExecutionId")
                                 (retry-mode :target-type stage-retry-mode
                                  :required common-lisp:t :member-name
                                  "retryMode"))
                                (:shape-name "RetryStageExecutionInput"))

(smithy/sdk/shapes:define-output retry-stage-execution-output common-lisp:nil
                                 ((pipeline-execution-id :target-type
                                   pipeline-execution-id :member-name
                                   "pipelineExecutionId"))
                                 (:shape-name "RetryStageExecutionOutput"))

(smithy/sdk/shapes:define-structure retry-stage-metadata common-lisp:nil
                                    ((auto-stage-retry-attempt :target-type
                                      retry-attempt :member-name
                                      "autoStageRetryAttempt")
                                     (manual-stage-retry-attempt :target-type
                                      retry-attempt :member-name
                                      "manualStageRetryAttempt")
                                     (latest-retry-trigger :target-type
                                      retry-trigger :member-name
                                      "latestRetryTrigger"))
                                    (:shape-name "RetryStageMetadata"))

(smithy/sdk/shapes:define-enum retry-trigger
    common-lisp:nil
  (:automated-stage-retry "AutomatedStageRetry")
  (:manual-stage-retry "ManualStageRetry"))

(smithy/sdk/shapes:define-type revision smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type revision-change-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type revision-summary smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input rollback-stage-input common-lisp:nil
                                ((pipeline-name :target-type pipeline-name
                                  :required common-lisp:t :member-name
                                  "pipelineName")
                                 (stage-name :target-type stage-name :required
                                  common-lisp:t :member-name "stageName")
                                 (target-pipeline-execution-id :target-type
                                  pipeline-execution-id :required common-lisp:t
                                  :member-name "targetPipelineExecutionId"))
                                (:shape-name "RollbackStageInput"))

(smithy/sdk/shapes:define-output rollback-stage-output common-lisp:nil
                                 ((pipeline-execution-id :target-type
                                   pipeline-execution-id :required
                                   common-lisp:t :member-name
                                   "pipelineExecutionId"))
                                 (:shape-name "RollbackStageOutput"))

(smithy/sdk/shapes:define-enum rule-category
    common-lisp:nil
  (:rule "Rule"))

(smithy/sdk/shapes:define-type rule-configuration-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map rule-configuration-map :key
                              rule-configuration-key :value
                              rule-configuration-value)

(smithy/sdk/shapes:define-structure rule-configuration-property common-lisp:nil
                                    ((name :target-type rule-configuration-key
                                      :required common-lisp:t :member-name
                                      "name")
                                     (required :target-type boolean :required
                                      common-lisp:t :member-name "required")
                                     (key :target-type boolean :required
                                      common-lisp:t :member-name "key")
                                     (secret :target-type boolean :required
                                      common-lisp:t :member-name "secret")
                                     (queryable :target-type boolean
                                      :member-name "queryable")
                                     (description :target-type description
                                      :member-name "description")
                                     (type :target-type
                                      rule-configuration-property-type
                                      :member-name "type"))
                                    (:shape-name "RuleConfigurationProperty"))

(smithy/sdk/shapes:define-list rule-configuration-property-list :member
                               rule-configuration-property)

(smithy/sdk/shapes:define-enum rule-configuration-property-type
    common-lisp:nil
  (:string "String")
  (:number "Number")
  (:boolean "Boolean"))

(smithy/sdk/shapes:define-type rule-configuration-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure rule-declaration common-lisp:nil
                                    ((name :target-type rule-name :required
                                      common-lisp:t :member-name "name")
                                     (rule-type-id :target-type rule-type-id
                                      :required common-lisp:t :member-name
                                      "ruleTypeId")
                                     (configuration :target-type
                                      rule-configuration-map :member-name
                                      "configuration")
                                     (commands :target-type command-list
                                      :member-name "commands")
                                     (input-artifacts :target-type
                                      input-artifact-list :member-name
                                      "inputArtifacts")
                                     (role-arn :target-type role-arn
                                      :member-name "roleArn")
                                     (region :target-type awsregion-name
                                      :member-name "region")
                                     (timeout-in-minutes :target-type
                                      rule-timeout :member-name
                                      "timeoutInMinutes"))
                                    (:shape-name "RuleDeclaration"))

(smithy/sdk/shapes:define-list rule-declaration-list :member rule-declaration)

(smithy/sdk/shapes:define-structure rule-execution common-lisp:nil
                                    ((rule-execution-id :target-type
                                      rule-execution-id :member-name
                                      "ruleExecutionId")
                                     (status :target-type rule-execution-status
                                      :member-name "status")
                                     (summary :target-type execution-summary
                                      :member-name "summary")
                                     (last-status-change :target-type timestamp
                                      :member-name "lastStatusChange")
                                     (token :target-type rule-execution-token
                                      :member-name "token")
                                     (last-updated-by :target-type
                                      last-updated-by :member-name
                                      "lastUpdatedBy")
                                     (external-execution-id :target-type
                                      execution-id :member-name
                                      "externalExecutionId")
                                     (external-execution-url :target-type url
                                      :member-name "externalExecutionUrl")
                                     (error-details :target-type error-details
                                      :member-name "errorDetails"))
                                    (:shape-name "RuleExecution"))

(smithy/sdk/shapes:define-structure rule-execution-detail common-lisp:nil
                                    ((pipeline-execution-id :target-type
                                      pipeline-execution-id :member-name
                                      "pipelineExecutionId")
                                     (rule-execution-id :target-type
                                      rule-execution-id :member-name
                                      "ruleExecutionId")
                                     (pipeline-version :target-type
                                      pipeline-version :member-name
                                      "pipelineVersion")
                                     (stage-name :target-type stage-name
                                      :member-name "stageName")
                                     (rule-name :target-type rule-name
                                      :member-name "ruleName")
                                     (start-time :target-type timestamp
                                      :member-name "startTime")
                                     (last-update-time :target-type timestamp
                                      :member-name "lastUpdateTime")
                                     (updated-by :target-type last-updated-by
                                      :member-name "updatedBy")
                                     (status :target-type rule-execution-status
                                      :member-name "status")
                                     (input :target-type rule-execution-input
                                      :member-name "input")
                                     (output :target-type rule-execution-output
                                      :member-name "output"))
                                    (:shape-name "RuleExecutionDetail"))

(smithy/sdk/shapes:define-list rule-execution-detail-list :member
                               rule-execution-detail)

(smithy/sdk/shapes:define-structure rule-execution-filter common-lisp:nil
                                    ((pipeline-execution-id :target-type
                                      pipeline-execution-id :member-name
                                      "pipelineExecutionId")
                                     (latest-in-pipeline-execution :target-type
                                      latest-in-pipeline-execution-filter
                                      :member-name
                                      "latestInPipelineExecution"))
                                    (:shape-name "RuleExecutionFilter"))

(smithy/sdk/shapes:define-type rule-execution-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure rule-execution-input common-lisp:nil
                                    ((rule-type-id :target-type rule-type-id
                                      :member-name "ruleTypeId")
                                     (configuration :target-type
                                      rule-configuration-map :member-name
                                      "configuration")
                                     (resolved-configuration :target-type
                                      resolved-rule-configuration-map
                                      :member-name "resolvedConfiguration")
                                     (role-arn :target-type role-arn
                                      :member-name "roleArn")
                                     (region :target-type awsregion-name
                                      :member-name "region")
                                     (input-artifacts :target-type
                                      artifact-detail-list :member-name
                                      "inputArtifacts"))
                                    (:shape-name "RuleExecutionInput"))

(smithy/sdk/shapes:define-structure rule-execution-output common-lisp:nil
                                    ((execution-result :target-type
                                      rule-execution-result :member-name
                                      "executionResult"))
                                    (:shape-name "RuleExecutionOutput"))

(smithy/sdk/shapes:define-structure rule-execution-result common-lisp:nil
                                    ((external-execution-id :target-type
                                      external-execution-id :member-name
                                      "externalExecutionId")
                                     (external-execution-summary :target-type
                                      external-execution-summary :member-name
                                      "externalExecutionSummary")
                                     (external-execution-url :target-type url
                                      :member-name "externalExecutionUrl")
                                     (error-details :target-type error-details
                                      :member-name "errorDetails"))
                                    (:shape-name "RuleExecutionResult"))

(smithy/sdk/shapes:define-enum rule-execution-status
    common-lisp:nil
  (:in-progress "InProgress")
  (:abandoned "Abandoned")
  (:succeeded "Succeeded")
  (:failed "Failed"))

(smithy/sdk/shapes:define-type rule-execution-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rule-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum rule-owner
    common-lisp:nil
  (:aws "AWS"))

(smithy/sdk/shapes:define-type rule-provider smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure rule-revision common-lisp:nil
                                    ((revision-id :target-type revision
                                      :required common-lisp:t :member-name
                                      "revisionId")
                                     (revision-change-id :target-type
                                      revision-change-identifier :required
                                      common-lisp:t :member-name
                                      "revisionChangeId")
                                     (created :target-type timestamp :required
                                      common-lisp:t :member-name "created"))
                                    (:shape-name "RuleRevision"))

(smithy/sdk/shapes:define-structure rule-state common-lisp:nil
                                    ((rule-name :target-type rule-name
                                      :member-name "ruleName")
                                     (current-revision :target-type
                                      rule-revision :member-name
                                      "currentRevision")
                                     (latest-execution :target-type
                                      rule-execution :member-name
                                      "latestExecution")
                                     (entity-url :target-type url :member-name
                                      "entityUrl")
                                     (revision-url :target-type url
                                      :member-name "revisionUrl"))
                                    (:shape-name "RuleState"))

(smithy/sdk/shapes:define-list rule-state-list :member rule-state)

(smithy/sdk/shapes:define-type rule-timeout smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure rule-type common-lisp:nil
                                    ((id :target-type rule-type-id :required
                                      common-lisp:t :member-name "id")
                                     (settings :target-type rule-type-settings
                                      :member-name "settings")
                                     (rule-configuration-properties
                                      :target-type
                                      rule-configuration-property-list
                                      :member-name
                                      "ruleConfigurationProperties")
                                     (input-artifact-details :target-type
                                      artifact-details :required common-lisp:t
                                      :member-name "inputArtifactDetails"))
                                    (:shape-name "RuleType"))

(smithy/sdk/shapes:define-structure rule-type-id common-lisp:nil
                                    ((category :target-type rule-category
                                      :required common-lisp:t :member-name
                                      "category")
                                     (owner :target-type rule-owner
                                      :member-name "owner")
                                     (provider :target-type rule-provider
                                      :required common-lisp:t :member-name
                                      "provider")
                                     (version :target-type version :member-name
                                      "version"))
                                    (:shape-name "RuleTypeId"))

(smithy/sdk/shapes:define-list rule-type-list :member rule-type)

(smithy/sdk/shapes:define-structure rule-type-settings common-lisp:nil
                                    ((third-party-configuration-url
                                      :target-type url :member-name
                                      "thirdPartyConfigurationUrl")
                                     (entity-url-template :target-type
                                      url-template :member-name
                                      "entityUrlTemplate")
                                     (execution-url-template :target-type
                                      url-template :member-name
                                      "executionUrlTemplate")
                                     (revision-url-template :target-type
                                      url-template :member-name
                                      "revisionUrlTemplate"))
                                    (:shape-name "RuleTypeSettings"))

(smithy/sdk/shapes:define-structure s3artifact-location common-lisp:nil
                                    ((bucket-name :target-type s3bucket-name
                                      :required common-lisp:t :member-name
                                      "bucketName")
                                     (object-key :target-type s3object-key
                                      :required common-lisp:t :member-name
                                      "objectKey"))
                                    (:shape-name "S3ArtifactLocation"))

(smithy/sdk/shapes:define-type s3bucket smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3location common-lisp:nil
                                    ((bucket :target-type s3bucket :member-name
                                      "bucket")
                                     (key :target-type s3key :member-name
                                      "key"))
                                    (:shape-name "S3Location"))

(smithy/sdk/shapes:define-type s3object-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type secret-access-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-principal smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type session-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure source-revision common-lisp:nil
                                    ((action-name :target-type action-name
                                      :required common-lisp:t :member-name
                                      "actionName")
                                     (revision-id :target-type revision
                                      :member-name "revisionId")
                                     (revision-summary :target-type
                                      revision-summary :member-name
                                      "revisionSummary")
                                     (revision-url :target-type url
                                      :member-name "revisionUrl"))
                                    (:shape-name "SourceRevision"))

(smithy/sdk/shapes:define-list source-revision-list :member source-revision)

(smithy/sdk/shapes:define-structure source-revision-override common-lisp:nil
                                    ((action-name :target-type action-name
                                      :required common-lisp:t :member-name
                                      "actionName")
                                     (revision-type :target-type
                                      source-revision-type :required
                                      common-lisp:t :member-name
                                      "revisionType")
                                     (revision-value :target-type revision
                                      :required common-lisp:t :member-name
                                      "revisionValue"))
                                    (:shape-name "SourceRevisionOverride"))

(smithy/sdk/shapes:define-list source-revision-override-list :member
                               source-revision-override)

(smithy/sdk/shapes:define-enum source-revision-type
    common-lisp:nil
  (:commit-id "COMMIT_ID")
  (:image-digest "IMAGE_DIGEST")
  (:s3-object-version-id "S3_OBJECT_VERSION_ID")
  (:s3-object-key "S3_OBJECT_KEY"))

(smithy/sdk/shapes:define-list stage-action-declaration-list :member
                               action-declaration)

(smithy/sdk/shapes:define-list stage-blocker-declaration-list :member
                               blocker-declaration)

(smithy/sdk/shapes:define-structure stage-condition-state common-lisp:nil
                                    ((latest-execution :target-type
                                      stage-conditions-execution :member-name
                                      "latestExecution")
                                     (condition-states :target-type
                                      condition-state-list :member-name
                                      "conditionStates"))
                                    (:shape-name "StageConditionState"))

(smithy/sdk/shapes:define-structure stage-conditions-execution common-lisp:nil
                                    ((status :target-type
                                      condition-execution-status :member-name
                                      "status")
                                     (summary :target-type execution-summary
                                      :member-name "summary"))
                                    (:shape-name "StageConditionsExecution"))

(smithy/sdk/shapes:define-structure stage-context common-lisp:nil
                                    ((name :target-type stage-name :member-name
                                      "name"))
                                    (:shape-name "StageContext"))

(smithy/sdk/shapes:define-structure stage-declaration common-lisp:nil
                                    ((name :target-type stage-name :required
                                      common-lisp:t :member-name "name")
                                     (blockers :target-type
                                      stage-blocker-declaration-list
                                      :member-name "blockers")
                                     (actions :target-type
                                      stage-action-declaration-list :required
                                      common-lisp:t :member-name "actions")
                                     (on-failure :target-type
                                      failure-conditions :member-name
                                      "onFailure")
                                     (on-success :target-type
                                      success-conditions :member-name
                                      "onSuccess")
                                     (before-entry :target-type
                                      before-entry-conditions :member-name
                                      "beforeEntry"))
                                    (:shape-name "StageDeclaration"))

(smithy/sdk/shapes:define-structure stage-execution common-lisp:nil
                                    ((pipeline-execution-id :target-type
                                      pipeline-execution-id :required
                                      common-lisp:t :member-name
                                      "pipelineExecutionId")
                                     (status :target-type
                                      stage-execution-status :required
                                      common-lisp:t :member-name "status")
                                     (type :target-type execution-type
                                      :member-name "type"))
                                    (:shape-name "StageExecution"))

(smithy/sdk/shapes:define-list stage-execution-list :member stage-execution)

(smithy/sdk/shapes:define-enum stage-execution-status
    common-lisp:nil
  (:cancelled "Cancelled")
  (:in-progress "InProgress")
  (:failed "Failed")
  (:stopped "Stopped")
  (:stopping "Stopping")
  (:succeeded "Succeeded")
  (:skipped "Skipped"))

(smithy/sdk/shapes:define-type stage-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error stage-not-found-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "StageNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error stage-not-retryable-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "StageNotRetryableException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum stage-retry-mode
    common-lisp:nil
  (:failed-actions "FAILED_ACTIONS")
  (:all-actions "ALL_ACTIONS"))

(smithy/sdk/shapes:define-structure stage-state common-lisp:nil
                                    ((stage-name :target-type stage-name
                                      :member-name "stageName")
                                     (inbound-execution :target-type
                                      stage-execution :member-name
                                      "inboundExecution")
                                     (inbound-executions :target-type
                                      stage-execution-list :member-name
                                      "inboundExecutions")
                                     (inbound-transition-state :target-type
                                      transition-state :member-name
                                      "inboundTransitionState")
                                     (action-states :target-type
                                      action-state-list :member-name
                                      "actionStates")
                                     (latest-execution :target-type
                                      stage-execution :member-name
                                      "latestExecution")
                                     (before-entry-condition-state :target-type
                                      stage-condition-state :member-name
                                      "beforeEntryConditionState")
                                     (on-success-condition-state :target-type
                                      stage-condition-state :member-name
                                      "onSuccessConditionState")
                                     (on-failure-condition-state :target-type
                                      stage-condition-state :member-name
                                      "onFailureConditionState")
                                     (retry-stage-metadata :target-type
                                      retry-stage-metadata :member-name
                                      "retryStageMetadata"))
                                    (:shape-name "StageState"))

(smithy/sdk/shapes:define-list stage-state-list :member stage-state)

(smithy/sdk/shapes:define-enum stage-transition-type
    common-lisp:nil
  (:inbound "Inbound")
  (:outbound "Outbound"))

(smithy/sdk/shapes:define-input start-pipeline-execution-input common-lisp:nil
                                ((name :target-type pipeline-name :required
                                  common-lisp:t :member-name "name")
                                 (variables :target-type pipeline-variable-list
                                  :member-name "variables")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "clientRequestToken")
                                 (source-revisions :target-type
                                  source-revision-override-list :member-name
                                  "sourceRevisions"))
                                (:shape-name "StartPipelineExecutionInput"))

(smithy/sdk/shapes:define-output start-pipeline-execution-output
                                 common-lisp:nil
                                 ((pipeline-execution-id :target-type
                                   pipeline-execution-id :member-name
                                   "pipelineExecutionId"))
                                 (:shape-name "StartPipelineExecutionOutput"))

(smithy/sdk/shapes:define-enum start-time-range
    common-lisp:nil
  (:latest "Latest")
  (:all "All"))

(smithy/sdk/shapes:define-structure stop-execution-trigger common-lisp:nil
                                    ((reason :target-type
                                      stop-pipeline-execution-reason
                                      :member-name "reason"))
                                    (:shape-name "StopExecutionTrigger"))

(smithy/sdk/shapes:define-input stop-pipeline-execution-input common-lisp:nil
                                ((pipeline-name :target-type pipeline-name
                                  :required common-lisp:t :member-name
                                  "pipelineName")
                                 (pipeline-execution-id :target-type
                                  pipeline-execution-id :required common-lisp:t
                                  :member-name "pipelineExecutionId")
                                 (abandon :target-type boolean :member-name
                                  "abandon")
                                 (reason :target-type
                                  stop-pipeline-execution-reason :member-name
                                  "reason"))
                                (:shape-name "StopPipelineExecutionInput"))

(smithy/sdk/shapes:define-output stop-pipeline-execution-output common-lisp:nil
                                 ((pipeline-execution-id :target-type
                                   pipeline-execution-id :member-name
                                   "pipelineExecutionId"))
                                 (:shape-name "StopPipelineExecutionOutput"))

(smithy/sdk/shapes:define-type stop-pipeline-execution-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure succeeded-in-stage-filter common-lisp:nil
                                    ((stage-name :target-type stage-name
                                      :member-name "stageName"))
                                    (:shape-name "SucceededInStageFilter"))

(smithy/sdk/shapes:define-structure success-conditions common-lisp:nil
                                    ((conditions :target-type condition-list
                                      :required common-lisp:t :member-name
                                      "conditions"))
                                    (:shape-name "SuccessConditions"))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-input common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-output tag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceOutput"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure target-filter common-lisp:nil
                                    ((name :target-type target-filter-name
                                      :member-name "name")
                                     (values :target-type
                                      target-filter-value-list :member-name
                                      "values"))
                                    (:shape-name "TargetFilter"))

(smithy/sdk/shapes:define-list target-filter-list :member target-filter)

(smithy/sdk/shapes:define-enum target-filter-name
    common-lisp:nil
  (:target-status "TARGET_STATUS"))

(smithy/sdk/shapes:define-type target-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list target-filter-value-list :member
                               target-filter-value)

(smithy/sdk/shapes:define-structure third-party-job common-lisp:nil
                                    ((client-id :target-type client-id
                                      :member-name "clientId")
                                     (job-id :target-type job-id :member-name
                                      "jobId"))
                                    (:shape-name "ThirdPartyJob"))

(smithy/sdk/shapes:define-structure third-party-job-data common-lisp:nil
                                    ((action-type-id :target-type
                                      action-type-id :member-name
                                      "actionTypeId")
                                     (action-configuration :target-type
                                      action-configuration :member-name
                                      "actionConfiguration")
                                     (pipeline-context :target-type
                                      pipeline-context :member-name
                                      "pipelineContext")
                                     (input-artifacts :target-type
                                      artifact-list :member-name
                                      "inputArtifacts")
                                     (output-artifacts :target-type
                                      artifact-list :member-name
                                      "outputArtifacts")
                                     (artifact-credentials :target-type
                                      awssession-credentials :member-name
                                      "artifactCredentials")
                                     (continuation-token :target-type
                                      continuation-token :member-name
                                      "continuationToken")
                                     (encryption-key :target-type
                                      encryption-key :member-name
                                      "encryptionKey"))
                                    (:shape-name "ThirdPartyJobData"))

(smithy/sdk/shapes:define-structure third-party-job-details common-lisp:nil
                                    ((id :target-type third-party-job-id
                                      :member-name "id")
                                     (data :target-type third-party-job-data
                                      :member-name "data")
                                     (nonce :target-type nonce :member-name
                                      "nonce"))
                                    (:shape-name "ThirdPartyJobDetails"))

(smithy/sdk/shapes:define-type third-party-job-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list third-party-job-list :member third-party-job)

(smithy/sdk/shapes:define-type time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure transition-state common-lisp:nil
                                    ((enabled :target-type enabled :member-name
                                      "enabled")
                                     (last-changed-by :target-type
                                      last-changed-by :member-name
                                      "lastChangedBy")
                                     (last-changed-at :target-type
                                      last-changed-at :member-name
                                      "lastChangedAt")
                                     (disabled-reason :target-type
                                      disabled-reason :member-name
                                      "disabledReason"))
                                    (:shape-name "TransitionState"))

(smithy/sdk/shapes:define-type trigger-detail smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum trigger-type
    common-lisp:nil
  (:create-pipeline "CreatePipeline")
  (:start-pipeline-execution "StartPipelineExecution")
  (:poll-for-source-changes "PollForSourceChanges")
  (:webhook "Webhook")
  (:cloud-watch-event "CloudWatchEvent")
  (:put-action-revision "PutActionRevision")
  (:webhook-v2 "WebhookV2")
  (:manual-rollback "ManualRollback")
  (:automated-rollback "AutomatedRollback"))

(smithy/sdk/shapes:define-error unable-to-rollback-stage-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "UnableToRollbackStageException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input untag-resource-input common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"))
                                (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-output untag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceOutput"))

(smithy/sdk/shapes:define-input update-action-type-input common-lisp:nil
                                ((action-type :target-type
                                  action-type-declaration :required
                                  common-lisp:t :member-name "actionType"))
                                (:shape-name "UpdateActionTypeInput"))

(smithy/sdk/shapes:define-input update-pipeline-input common-lisp:nil
                                ((pipeline :target-type pipeline-declaration
                                  :required common-lisp:t :member-name
                                  "pipeline"))
                                (:shape-name "UpdatePipelineInput"))

(smithy/sdk/shapes:define-output update-pipeline-output common-lisp:nil
                                 ((pipeline :target-type pipeline-declaration
                                   :member-name "pipeline"))
                                 (:shape-name "UpdatePipelineOutput"))

(smithy/sdk/shapes:define-type url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type url-template smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type webhook-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure webhook-auth-configuration common-lisp:nil
                                    ((allowed-iprange :target-type
                                      webhook-auth-configuration-allowed-iprange
                                      :member-name "AllowedIPRange")
                                     (secret-token :target-type
                                      webhook-auth-configuration-secret-token
                                      :member-name "SecretToken"))
                                    (:shape-name "WebhookAuthConfiguration"))

(smithy/sdk/shapes:define-type webhook-auth-configuration-allowed-iprange
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type webhook-auth-configuration-secret-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum webhook-authentication-type
    common-lisp:nil
  (:github-hmac "GITHUB_HMAC")
  (:ip "IP")
  (:unauthenticated "UNAUTHENTICATED"))

(smithy/sdk/shapes:define-structure webhook-definition common-lisp:nil
                                    ((name :target-type webhook-name :required
                                      common-lisp:t :member-name "name")
                                     (target-pipeline :target-type
                                      pipeline-name :required common-lisp:t
                                      :member-name "targetPipeline")
                                     (target-action :target-type action-name
                                      :required common-lisp:t :member-name
                                      "targetAction")
                                     (filters :target-type webhook-filters
                                      :required common-lisp:t :member-name
                                      "filters")
                                     (authentication :target-type
                                      webhook-authentication-type :required
                                      common-lisp:t :member-name
                                      "authentication")
                                     (authentication-configuration :target-type
                                      webhook-auth-configuration :required
                                      common-lisp:t :member-name
                                      "authenticationConfiguration"))
                                    (:shape-name "WebhookDefinition"))

(smithy/sdk/shapes:define-type webhook-error-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type webhook-error-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure webhook-filter-rule common-lisp:nil
                                    ((json-path :target-type json-path
                                      :required common-lisp:t :member-name
                                      "jsonPath")
                                     (match-equals :target-type match-equals
                                      :member-name "matchEquals"))
                                    (:shape-name "WebhookFilterRule"))

(smithy/sdk/shapes:define-list webhook-filters :member webhook-filter-rule)

(smithy/sdk/shapes:define-type webhook-last-triggered
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-list webhook-list :member list-webhook-item)

(smithy/sdk/shapes:define-type webhook-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error webhook-not-found-exception common-lisp:nil
                                common-lisp:nil
                                (:shape-name "WebhookNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type webhook-url smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation acknowledge-job :shape-name
                                       "AcknowledgeJob" :input
                                       acknowledge-job-input :output
                                       acknowledge-job-output :errors
                                       (invalid-nonce-exception
                                        job-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation acknowledge-third-party-job :shape-name
                                       "AcknowledgeThirdPartyJob" :input
                                       acknowledge-third-party-job-input
                                       :output
                                       acknowledge-third-party-job-output
                                       :errors
                                       (invalid-client-token-exception
                                        invalid-nonce-exception
                                        job-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-custom-action-type :shape-name
                                       "CreateCustomActionType" :input
                                       create-custom-action-type-input :output
                                       create-custom-action-type-output :errors
                                       (concurrent-modification-exception
                                        invalid-tags-exception
                                        limit-exceeded-exception
                                        too-many-tags-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-pipeline :shape-name
                                       "CreatePipeline" :input
                                       create-pipeline-input :output
                                       create-pipeline-output :errors
                                       (concurrent-modification-exception
                                        invalid-action-declaration-exception
                                        invalid-blocker-declaration-exception
                                        invalid-stage-declaration-exception
                                        invalid-structure-exception
                                        invalid-tags-exception
                                        limit-exceeded-exception
                                        pipeline-name-in-use-exception
                                        too-many-tags-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-custom-action-type :shape-name
                                       "DeleteCustomActionType" :input
                                       delete-custom-action-type-input :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-pipeline :shape-name
                                       "DeletePipeline" :input
                                       delete-pipeline-input :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-webhook :shape-name
                                       "DeleteWebhook" :input
                                       delete-webhook-input :output
                                       delete-webhook-output :errors
                                       (concurrent-modification-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation deregister-webhook-with-third-party
                                       :shape-name
                                       "DeregisterWebhookWithThirdParty" :input
                                       deregister-webhook-with-third-party-input
                                       :output
                                       deregister-webhook-with-third-party-output
                                       :errors
                                       (validation-exception
                                        webhook-not-found-exception))

(smithy/sdk/operation:define-operation disable-stage-transition :shape-name
                                       "DisableStageTransition" :input
                                       disable-stage-transition-input :output
                                       common-lisp:null :errors
                                       (pipeline-not-found-exception
                                        stage-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation enable-stage-transition :shape-name
                                       "EnableStageTransition" :input
                                       enable-stage-transition-input :output
                                       common-lisp:null :errors
                                       (pipeline-not-found-exception
                                        stage-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-action-type :shape-name
                                       "GetActionType" :input
                                       get-action-type-input :output
                                       get-action-type-output :errors
                                       (action-type-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-job-details :shape-name
                                       "GetJobDetails" :input
                                       get-job-details-input :output
                                       get-job-details-output :errors
                                       (job-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-pipeline :shape-name "GetPipeline"
                                       :input get-pipeline-input :output
                                       get-pipeline-output :errors
                                       (pipeline-not-found-exception
                                        pipeline-version-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-pipeline-execution :shape-name
                                       "GetPipelineExecution" :input
                                       get-pipeline-execution-input :output
                                       get-pipeline-execution-output :errors
                                       (pipeline-execution-not-found-exception
                                        pipeline-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-pipeline-state :shape-name
                                       "GetPipelineState" :input
                                       get-pipeline-state-input :output
                                       get-pipeline-state-output :errors
                                       (pipeline-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-third-party-job-details :shape-name
                                       "GetThirdPartyJobDetails" :input
                                       get-third-party-job-details-input
                                       :output
                                       get-third-party-job-details-output
                                       :errors
                                       (invalid-client-token-exception
                                        invalid-job-exception
                                        job-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-action-executions :shape-name
                                       "ListActionExecutions" :input
                                       list-action-executions-input :output
                                       list-action-executions-output :errors
                                       (invalid-next-token-exception
                                        pipeline-execution-not-found-exception
                                        pipeline-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-action-types :shape-name
                                       "ListActionTypes" :input
                                       list-action-types-input :output
                                       list-action-types-output :errors
                                       (invalid-next-token-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-deploy-action-execution-targets
                                       :shape-name
                                       "ListDeployActionExecutionTargets"
                                       :input
                                       list-deploy-action-execution-targets-input
                                       :output
                                       list-deploy-action-execution-targets-output
                                       :errors
                                       (action-execution-not-found-exception
                                        invalid-next-token-exception
                                        pipeline-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-pipeline-executions :shape-name
                                       "ListPipelineExecutions" :input
                                       list-pipeline-executions-input :output
                                       list-pipeline-executions-output :errors
                                       (invalid-next-token-exception
                                        pipeline-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-pipelines :shape-name
                                       "ListPipelines" :input
                                       list-pipelines-input :output
                                       list-pipelines-output :errors
                                       (invalid-next-token-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-rule-executions :shape-name
                                       "ListRuleExecutions" :input
                                       list-rule-executions-input :output
                                       list-rule-executions-output :errors
                                       (invalid-next-token-exception
                                        pipeline-execution-not-found-exception
                                        pipeline-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-rule-types :shape-name
                                       "ListRuleTypes" :input
                                       list-rule-types-input :output
                                       list-rule-types-output :errors
                                       (invalid-next-token-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-input :output
                                       list-tags-for-resource-output :errors
                                       (invalid-arn-exception
                                        invalid-next-token-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-webhooks :shape-name "ListWebhooks"
                                       :input list-webhooks-input :output
                                       list-webhooks-output :errors
                                       (invalid-next-token-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation override-stage-condition :shape-name
                                       "OverrideStageCondition" :input
                                       override-stage-condition-input :output
                                       common-lisp:null :errors
                                       (concurrent-pipeline-executions-limit-exceeded-exception
                                        condition-not-overridable-exception
                                        conflict-exception
                                        not-latest-pipeline-execution-exception
                                        pipeline-not-found-exception
                                        stage-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation poll-for-jobs :shape-name "PollForJobs"
                                       :input poll-for-jobs-input :output
                                       poll-for-jobs-output :errors
                                       (action-type-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation poll-for-third-party-jobs :shape-name
                                       "PollForThirdPartyJobs" :input
                                       poll-for-third-party-jobs-input :output
                                       poll-for-third-party-jobs-output :errors
                                       (action-type-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-action-revision :shape-name
                                       "PutActionRevision" :input
                                       put-action-revision-input :output
                                       put-action-revision-output :errors
                                       (action-not-found-exception
                                        concurrent-pipeline-executions-limit-exceeded-exception
                                        pipeline-not-found-exception
                                        stage-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-approval-result :shape-name
                                       "PutApprovalResult" :input
                                       put-approval-result-input :output
                                       put-approval-result-output :errors
                                       (action-not-found-exception
                                        approval-already-completed-exception
                                        invalid-approval-token-exception
                                        pipeline-not-found-exception
                                        stage-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-job-failure-result :shape-name
                                       "PutJobFailureResult" :input
                                       put-job-failure-result-input :output
                                       common-lisp:null :errors
                                       (invalid-job-state-exception
                                        job-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-job-success-result :shape-name
                                       "PutJobSuccessResult" :input
                                       put-job-success-result-input :output
                                       common-lisp:null :errors
                                       (invalid-job-state-exception
                                        job-not-found-exception
                                        output-variables-size-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-third-party-job-failure-result
                                       :shape-name
                                       "PutThirdPartyJobFailureResult" :input
                                       put-third-party-job-failure-result-input
                                       :output common-lisp:null :errors
                                       (invalid-client-token-exception
                                        invalid-job-state-exception
                                        job-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-third-party-job-success-result
                                       :shape-name
                                       "PutThirdPartyJobSuccessResult" :input
                                       put-third-party-job-success-result-input
                                       :output common-lisp:null :errors
                                       (invalid-client-token-exception
                                        invalid-job-state-exception
                                        job-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-webhook :shape-name "PutWebhook"
                                       :input put-webhook-input :output
                                       put-webhook-output :errors
                                       (concurrent-modification-exception
                                        invalid-tags-exception
                                        invalid-webhook-authentication-parameters-exception
                                        invalid-webhook-filter-pattern-exception
                                        limit-exceeded-exception
                                        pipeline-not-found-exception
                                        too-many-tags-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation register-webhook-with-third-party
                                       :shape-name
                                       "RegisterWebhookWithThirdParty" :input
                                       register-webhook-with-third-party-input
                                       :output
                                       register-webhook-with-third-party-output
                                       :errors
                                       (validation-exception
                                        webhook-not-found-exception))

(smithy/sdk/operation:define-operation retry-stage-execution :shape-name
                                       "RetryStageExecution" :input
                                       retry-stage-execution-input :output
                                       retry-stage-execution-output :errors
                                       (concurrent-pipeline-executions-limit-exceeded-exception
                                        conflict-exception
                                        not-latest-pipeline-execution-exception
                                        pipeline-not-found-exception
                                        stage-not-found-exception
                                        stage-not-retryable-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation rollback-stage :shape-name
                                       "RollbackStage" :input
                                       rollback-stage-input :output
                                       rollback-stage-output :errors
                                       (conflict-exception
                                        pipeline-execution-not-found-exception
                                        pipeline-execution-outdated-exception
                                        pipeline-not-found-exception
                                        stage-not-found-exception
                                        unable-to-rollback-stage-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation start-pipeline-execution :shape-name
                                       "StartPipelineExecution" :input
                                       start-pipeline-execution-input :output
                                       start-pipeline-execution-output :errors
                                       (concurrent-pipeline-executions-limit-exceeded-exception
                                        conflict-exception
                                        pipeline-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation stop-pipeline-execution :shape-name
                                       "StopPipelineExecution" :input
                                       stop-pipeline-execution-input :output
                                       stop-pipeline-execution-output :errors
                                       (conflict-exception
                                        duplicated-stop-request-exception
                                        pipeline-execution-not-stoppable-exception
                                        pipeline-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       tag-resource-output :errors
                                       (concurrent-modification-exception
                                        invalid-arn-exception
                                        invalid-tags-exception
                                        resource-not-found-exception
                                        too-many-tags-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       untag-resource-output :errors
                                       (concurrent-modification-exception
                                        invalid-arn-exception
                                        invalid-tags-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-action-type :shape-name
                                       "UpdateActionType" :input
                                       update-action-type-input :output
                                       common-lisp:null :errors
                                       (action-type-not-found-exception
                                        request-failed-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-pipeline :shape-name
                                       "UpdatePipeline" :input
                                       update-pipeline-input :output
                                       update-pipeline-output :errors
                                       (invalid-action-declaration-exception
                                        invalid-blocker-declaration-exception
                                        invalid-stage-declaration-exception
                                        invalid-structure-exception
                                        limit-exceeded-exception
                                        validation-exception))
