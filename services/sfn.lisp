(uiop/package:define-package #:pira/sfn (:use)
                             (:export #:awsstep-functions
                              #:activity-already-exists
                              #:activity-does-not-exist
                              #:activity-failed-event-details
                              #:activity-limit-exceeded #:activity-list
                              #:activity-list-item
                              #:activity-schedule-failed-event-details
                              #:activity-scheduled-event-details
                              #:activity-started-event-details
                              #:activity-succeeded-event-details
                              #:activity-timed-out-event-details
                              #:activity-worker-limit-exceeded
                              #:alias-description #:arn #:assigned-variables
                              #:assigned-variables-details #:billed-duration
                              #:billed-memory-used #:billing-details
                              #:character-restricted-name #:client-token
                              #:cloud-watch-events-execution-data-details
                              #:cloud-watch-logs-log-group #:conflict-exception
                              #:connector-parameters #:create-activity
                              #:create-state-machine
                              #:create-state-machine-alias #:definition
                              #:delete-activity #:delete-state-machine
                              #:delete-state-machine-alias
                              #:delete-state-machine-version
                              #:describe-activity #:describe-execution
                              #:describe-map-run #:describe-state-machine
                              #:describe-state-machine-alias
                              #:describe-state-machine-for-execution #:enabled
                              #:encryption-configuration #:encryption-type
                              #:error-message #:evaluation-failed-event-details
                              #:evaluation-failure-location #:event-id
                              #:execution-aborted-event-details
                              #:execution-already-exists
                              #:execution-does-not-exist
                              #:execution-failed-event-details
                              #:execution-limit-exceeded #:execution-list
                              #:execution-list-item #:execution-not-redrivable
                              #:execution-redrive-filter
                              #:execution-redrive-status
                              #:execution-redriven-event-details
                              #:execution-started-event-details
                              #:execution-status
                              #:execution-succeeded-event-details
                              #:execution-timed-out-event-details
                              #:get-activity-task #:get-execution-history
                              #:httpbody #:httpheaders #:httpmethod
                              #:httpprotocol #:httpstatus-code
                              #:httpstatus-message #:history-event
                              #:history-event-execution-data-details
                              #:history-event-list #:history-event-type
                              #:identity #:include-execution-data
                              #:include-execution-data-get-execution-history
                              #:included-data #:inspection-data
                              #:inspection-data-request
                              #:inspection-data-response #:inspection-level
                              #:invalid-arn #:invalid-definition
                              #:invalid-encryption-configuration
                              #:invalid-execution-input
                              #:invalid-logging-configuration #:invalid-name
                              #:invalid-output #:invalid-token
                              #:invalid-tracing-configuration
                              #:kms-access-denied-exception
                              #:kms-data-key-reuse-period-seconds
                              #:kms-invalid-state-exception #:kms-key-id
                              #:kms-key-state #:kms-throttling-exception
                              #:lambda-function-failed-event-details
                              #:lambda-function-schedule-failed-event-details
                              #:lambda-function-scheduled-event-details
                              #:lambda-function-start-failed-event-details
                              #:lambda-function-succeeded-event-details
                              #:lambda-function-timed-out-event-details
                              #:list-activities #:list-executions
                              #:list-executions-page-token #:list-map-runs
                              #:list-state-machine-aliases
                              #:list-state-machine-versions
                              #:list-state-machines #:list-tags-for-resource
                              #:log-destination #:log-destination-list
                              #:log-level #:logging-configuration #:long-arn
                              #:long-object #:map-iteration-event-details
                              #:map-run-execution-counts
                              #:map-run-failed-event-details
                              #:map-run-item-counts #:map-run-label
                              #:map-run-list #:map-run-list-item
                              #:map-run-redriven-event-details
                              #:map-run-started-event-details #:map-run-status
                              #:map-state-started-event-details
                              #:max-concurrency #:missing-required-parameter
                              #:name #:page-size #:page-token #:publish
                              #:publish-state-machine-version #:redrive-count
                              #:redrive-execution #:resource-not-found
                              #:reveal-secrets #:reverse-order #:revision-id
                              #:routing-configuration-list
                              #:routing-configuration-list-item
                              #:send-task-failure #:send-task-heartbeat
                              #:send-task-success #:sensitive-cause
                              #:sensitive-data #:sensitive-data-job-input
                              #:sensitive-error
                              #:service-quota-exceeded-exception
                              #:start-execution #:start-sync-execution
                              #:state-entered-event-details
                              #:state-exited-event-details
                              #:state-machine-alias-list
                              #:state-machine-alias-list-item
                              #:state-machine-already-exists
                              #:state-machine-deleting
                              #:state-machine-does-not-exist
                              #:state-machine-limit-exceeded
                              #:state-machine-list #:state-machine-list-item
                              #:state-machine-status #:state-machine-type
                              #:state-machine-type-not-supported
                              #:state-machine-version-list
                              #:state-machine-version-list-item #:state-name
                              #:stop-execution #:sync-execution-status #:tag
                              #:tag-key #:tag-key-list #:tag-list
                              #:tag-resource #:tag-value #:task-credentials
                              #:task-does-not-exist #:task-failed-event-details
                              #:task-scheduled-event-details
                              #:task-start-failed-event-details
                              #:task-started-event-details
                              #:task-submit-failed-event-details
                              #:task-submitted-event-details
                              #:task-succeeded-event-details #:task-timed-out
                              #:task-timed-out-event-details #:task-token
                              #:test-execution-status #:test-state
                              #:timeout-in-seconds #:timestamp
                              #:tolerated-failure-count
                              #:tolerated-failure-percentage #:too-many-tags
                              #:trace-header #:tracing-configuration #:url
                              #:unsigned-integer #:unsigned-long
                              #:untag-resource #:update-map-run
                              #:update-state-machine
                              #:update-state-machine-alias
                              #:validate-state-machine-definition
                              #:validate-state-machine-definition-code
                              #:validate-state-machine-definition-diagnostic
                              #:validate-state-machine-definition-diagnostic-list
                              #:validate-state-machine-definition-location
                              #:validate-state-machine-definition-max-result
                              #:validate-state-machine-definition-message
                              #:validate-state-machine-definition-result-code
                              #:validate-state-machine-definition-severity
                              #:validate-state-machine-definition-truncated
                              #:validation-exception
                              #:validation-exception-reason #:variable-name
                              #:variable-name-list #:variable-references
                              #:variable-value #:version-description
                              #:version-weight #:included-details #:truncated
                              #:sfn-error))
(common-lisp:in-package #:pira/sfn)

(common-lisp:define-condition sfn-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service awsstep-functions :shape-name
                                   "AWSStepFunctions" :version "2016-11-23"
                                   :title "AWS Step Functions" :operations
                                   '(create-activity create-state-machine
                                     create-state-machine-alias delete-activity
                                     delete-state-machine
                                     delete-state-machine-alias
                                     delete-state-machine-version
                                     describe-activity describe-execution
                                     describe-map-run describe-state-machine
                                     describe-state-machine-alias
                                     describe-state-machine-for-execution
                                     get-activity-task get-execution-history
                                     list-activities list-executions
                                     list-map-runs list-state-machine-aliases
                                     list-state-machines
                                     list-state-machine-versions
                                     list-tags-for-resource
                                     publish-state-machine-version
                                     redrive-execution send-task-failure
                                     send-task-heartbeat send-task-success
                                     start-execution start-sync-execution
                                     stop-execution tag-resource test-state
                                     untag-resource update-map-run
                                     update-state-machine
                                     update-state-machine-alias
                                     validate-state-machine-definition)
                                   :xml-namespace
                                   '(:uri
                                     "http://swf.amazonaws.com/doc/2015-07-20/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "SFN")
                                      ("arnNamespace" . "states")
                                      ("cloudFormationName" . "StepFunctions")
                                      ("cloudTrailEventSource"
                                       . "states.amazonaws.com")
                                      ("docId" . "states-2016-11-23")
                                      ("endpointPrefix" . "states"))
                                     ("aws.auth#sigv4" ("name" . "states"))
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-error activity-already-exists common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ActivityAlreadyExists")
                                (:error-code 400) (:base-class sfn-error))

(smithy/sdk/shapes:define-error activity-does-not-exist common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ActivityDoesNotExist")
                                (:error-code 400) (:base-class sfn-error))

(smithy/sdk/shapes:define-structure activity-failed-event-details
                                    common-lisp:nil
                                    ((error :target-type sensitive-error
                                      :member-name "error")
                                     (cause :target-type sensitive-cause
                                      :member-name "cause"))
                                    (:shape-name "ActivityFailedEventDetails"))

(smithy/sdk/shapes:define-error activity-limit-exceeded common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ActivityLimitExceeded")
                                (:error-code 400) (:base-class sfn-error))

(smithy/sdk/shapes:define-list activity-list :member activity-list-item)

(smithy/sdk/shapes:define-structure activity-list-item common-lisp:nil
                                    ((activity-arn :target-type arn :required
                                      common-lisp:t :member-name "activityArn")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (creation-date :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationDate"))
                                    (:shape-name "ActivityListItem"))

(smithy/sdk/shapes:define-structure activity-schedule-failed-event-details
                                    common-lisp:nil
                                    ((error :target-type sensitive-error
                                      :member-name "error")
                                     (cause :target-type sensitive-cause
                                      :member-name "cause"))
                                    (:shape-name
                                     "ActivityScheduleFailedEventDetails"))

(smithy/sdk/shapes:define-structure activity-scheduled-event-details
                                    common-lisp:nil
                                    ((resource :target-type arn :required
                                      common-lisp:t :member-name "resource")
                                     (input :target-type sensitive-data
                                      :member-name "input")
                                     (input-details :target-type
                                      history-event-execution-data-details
                                      :member-name "inputDetails")
                                     (timeout-in-seconds :target-type
                                      timeout-in-seconds :member-name
                                      "timeoutInSeconds")
                                     (heartbeat-in-seconds :target-type
                                      timeout-in-seconds :member-name
                                      "heartbeatInSeconds"))
                                    (:shape-name
                                     "ActivityScheduledEventDetails"))

(smithy/sdk/shapes:define-structure activity-started-event-details
                                    common-lisp:nil
                                    ((worker-name :target-type identity
                                      :member-name "workerName"))
                                    (:shape-name "ActivityStartedEventDetails"))

(smithy/sdk/shapes:define-structure activity-succeeded-event-details
                                    common-lisp:nil
                                    ((output :target-type sensitive-data
                                      :member-name "output")
                                     (output-details :target-type
                                      history-event-execution-data-details
                                      :member-name "outputDetails"))
                                    (:shape-name
                                     "ActivitySucceededEventDetails"))

(smithy/sdk/shapes:define-structure activity-timed-out-event-details
                                    common-lisp:nil
                                    ((error :target-type sensitive-error
                                      :member-name "error")
                                     (cause :target-type sensitive-cause
                                      :member-name "cause"))
                                    (:shape-name
                                     "ActivityTimedOutEventDetails"))

(smithy/sdk/shapes:define-error activity-worker-limit-exceeded common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ActivityWorkerLimitExceeded")
                                (:error-code 400) (:base-class sfn-error))

(smithy/sdk/shapes:define-type alias-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map assigned-variables :key variable-name :value
                              variable-value)

(smithy/sdk/shapes:define-structure assigned-variables-details common-lisp:nil
                                    ((truncated :target-type truncated
                                      :member-name "truncated"))
                                    (:shape-name "AssignedVariablesDetails"))

(smithy/sdk/shapes:define-type billed-duration smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type billed-memory-used smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure billing-details common-lisp:nil
                                    ((billed-memory-used-in-mb :target-type
                                      billed-memory-used :member-name
                                      "billedMemoryUsedInMB")
                                     (billed-duration-in-milliseconds
                                      :target-type billed-duration :member-name
                                      "billedDurationInMilliseconds"))
                                    (:shape-name "BillingDetails"))

(smithy/sdk/shapes:define-type character-restricted-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cloud-watch-events-execution-data-details
                                    common-lisp:nil
                                    ((included :target-type included-details
                                      :member-name "included"))
                                    (:shape-name
                                     "CloudWatchEventsExecutionDataDetails"))

(smithy/sdk/shapes:define-structure cloud-watch-logs-log-group common-lisp:nil
                                    ((log-group-arn :target-type arn
                                      :member-name "logGroupArn"))
                                    (:shape-name "CloudWatchLogsLogGroup"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409) (:base-class sfn-error))

(smithy/sdk/shapes:define-type connector-parameters
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-activity-input common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (encryption-configuration :target-type
                                  encryption-configuration :member-name
                                  "encryptionConfiguration"))
                                (:shape-name "CreateActivityInput"))

(smithy/sdk/shapes:define-output create-activity-output common-lisp:nil
                                 ((activity-arn :target-type arn :required
                                   common-lisp:t :member-name "activityArn")
                                  (creation-date :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "creationDate"))
                                 (:shape-name "CreateActivityOutput"))

(smithy/sdk/shapes:define-input create-state-machine-alias-input
                                common-lisp:nil
                                ((description :target-type alias-description
                                  :member-name "description")
                                 (name :target-type character-restricted-name
                                  :required common-lisp:t :member-name "name")
                                 (routing-configuration :target-type
                                  routing-configuration-list :required
                                  common-lisp:t :member-name
                                  "routingConfiguration"))
                                (:shape-name "CreateStateMachineAliasInput"))

(smithy/sdk/shapes:define-output create-state-machine-alias-output
                                 common-lisp:nil
                                 ((state-machine-alias-arn :target-type arn
                                   :required common-lisp:t :member-name
                                   "stateMachineAliasArn")
                                  (creation-date :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "creationDate"))
                                 (:shape-name "CreateStateMachineAliasOutput"))

(smithy/sdk/shapes:define-input create-state-machine-input common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (definition :target-type definition :required
                                  common-lisp:t :member-name "definition")
                                 (role-arn :target-type arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (type :target-type state-machine-type
                                  :member-name "type")
                                 (logging-configuration :target-type
                                  logging-configuration :member-name
                                  "loggingConfiguration")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (tracing-configuration :target-type
                                  tracing-configuration :member-name
                                  "tracingConfiguration")
                                 (publish :target-type publish :member-name
                                  "publish")
                                 (version-description :target-type
                                  version-description :member-name
                                  "versionDescription")
                                 (encryption-configuration :target-type
                                  encryption-configuration :member-name
                                  "encryptionConfiguration"))
                                (:shape-name "CreateStateMachineInput"))

(smithy/sdk/shapes:define-output create-state-machine-output common-lisp:nil
                                 ((state-machine-arn :target-type arn :required
                                   common-lisp:t :member-name
                                   "stateMachineArn")
                                  (creation-date :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "creationDate")
                                  (state-machine-version-arn :target-type arn
                                   :member-name "stateMachineVersionArn"))
                                 (:shape-name "CreateStateMachineOutput"))

(smithy/sdk/shapes:define-type definition smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-activity-input common-lisp:nil
                                ((activity-arn :target-type arn :required
                                  common-lisp:t :member-name "activityArn"))
                                (:shape-name "DeleteActivityInput"))

(smithy/sdk/shapes:define-output delete-activity-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteActivityOutput"))

(smithy/sdk/shapes:define-input delete-state-machine-alias-input
                                common-lisp:nil
                                ((state-machine-alias-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "stateMachineAliasArn"))
                                (:shape-name "DeleteStateMachineAliasInput"))

(smithy/sdk/shapes:define-output delete-state-machine-alias-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteStateMachineAliasOutput"))

(smithy/sdk/shapes:define-input delete-state-machine-input common-lisp:nil
                                ((state-machine-arn :target-type arn :required
                                  common-lisp:t :member-name
                                  "stateMachineArn"))
                                (:shape-name "DeleteStateMachineInput"))

(smithy/sdk/shapes:define-output delete-state-machine-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteStateMachineOutput"))

(smithy/sdk/shapes:define-input delete-state-machine-version-input
                                common-lisp:nil
                                ((state-machine-version-arn :target-type
                                  long-arn :required common-lisp:t :member-name
                                  "stateMachineVersionArn"))
                                (:shape-name "DeleteStateMachineVersionInput"))

(smithy/sdk/shapes:define-output delete-state-machine-version-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteStateMachineVersionOutput"))

(smithy/sdk/shapes:define-input describe-activity-input common-lisp:nil
                                ((activity-arn :target-type arn :required
                                  common-lisp:t :member-name "activityArn"))
                                (:shape-name "DescribeActivityInput"))

(smithy/sdk/shapes:define-output describe-activity-output common-lisp:nil
                                 ((activity-arn :target-type arn :required
                                   common-lisp:t :member-name "activityArn")
                                  (name :target-type name :required
                                   common-lisp:t :member-name "name")
                                  (creation-date :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "creationDate")
                                  (encryption-configuration :target-type
                                   encryption-configuration :member-name
                                   "encryptionConfiguration"))
                                 (:shape-name "DescribeActivityOutput"))

(smithy/sdk/shapes:define-input describe-execution-input common-lisp:nil
                                ((execution-arn :target-type arn :required
                                  common-lisp:t :member-name "executionArn")
                                 (included-data :target-type included-data
                                  :member-name "includedData"))
                                (:shape-name "DescribeExecutionInput"))

(smithy/sdk/shapes:define-output describe-execution-output common-lisp:nil
                                 ((execution-arn :target-type arn :required
                                   common-lisp:t :member-name "executionArn")
                                  (state-machine-arn :target-type arn :required
                                   common-lisp:t :member-name
                                   "stateMachineArn")
                                  (name :target-type name :member-name "name")
                                  (status :target-type execution-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (start-date :target-type timestamp :required
                                   common-lisp:t :member-name "startDate")
                                  (stop-date :target-type timestamp
                                   :member-name "stopDate")
                                  (input :target-type sensitive-data
                                   :member-name "input")
                                  (input-details :target-type
                                   cloud-watch-events-execution-data-details
                                   :member-name "inputDetails")
                                  (output :target-type sensitive-data
                                   :member-name "output")
                                  (output-details :target-type
                                   cloud-watch-events-execution-data-details
                                   :member-name "outputDetails")
                                  (trace-header :target-type trace-header
                                   :member-name "traceHeader")
                                  (map-run-arn :target-type long-arn
                                   :member-name "mapRunArn")
                                  (error :target-type sensitive-error
                                   :member-name "error")
                                  (cause :target-type sensitive-cause
                                   :member-name "cause")
                                  (state-machine-version-arn :target-type arn
                                   :member-name "stateMachineVersionArn")
                                  (state-machine-alias-arn :target-type arn
                                   :member-name "stateMachineAliasArn")
                                  (redrive-count :target-type redrive-count
                                   :member-name "redriveCount")
                                  (redrive-date :target-type timestamp
                                   :member-name "redriveDate")
                                  (redrive-status :target-type
                                   execution-redrive-status :member-name
                                   "redriveStatus")
                                  (redrive-status-reason :target-type
                                   sensitive-data :member-name
                                   "redriveStatusReason"))
                                 (:shape-name "DescribeExecutionOutput"))

(smithy/sdk/shapes:define-input describe-map-run-input common-lisp:nil
                                ((map-run-arn :target-type long-arn :required
                                  common-lisp:t :member-name "mapRunArn"))
                                (:shape-name "DescribeMapRunInput"))

(smithy/sdk/shapes:define-output describe-map-run-output common-lisp:nil
                                 ((map-run-arn :target-type long-arn :required
                                   common-lisp:t :member-name "mapRunArn")
                                  (execution-arn :target-type arn :required
                                   common-lisp:t :member-name "executionArn")
                                  (status :target-type map-run-status :required
                                   common-lisp:t :member-name "status")
                                  (start-date :target-type timestamp :required
                                   common-lisp:t :member-name "startDate")
                                  (stop-date :target-type timestamp
                                   :member-name "stopDate")
                                  (max-concurrency :target-type max-concurrency
                                   :required common-lisp:t :member-name
                                   "maxConcurrency")
                                  (tolerated-failure-percentage :target-type
                                   tolerated-failure-percentage :required
                                   common-lisp:t :member-name
                                   "toleratedFailurePercentage")
                                  (tolerated-failure-count :target-type
                                   tolerated-failure-count :required
                                   common-lisp:t :member-name
                                   "toleratedFailureCount")
                                  (item-counts :target-type map-run-item-counts
                                   :required common-lisp:t :member-name
                                   "itemCounts")
                                  (execution-counts :target-type
                                   map-run-execution-counts :required
                                   common-lisp:t :member-name
                                   "executionCounts")
                                  (redrive-count :target-type redrive-count
                                   :member-name "redriveCount")
                                  (redrive-date :target-type timestamp
                                   :member-name "redriveDate"))
                                 (:shape-name "DescribeMapRunOutput"))

(smithy/sdk/shapes:define-input describe-state-machine-alias-input
                                common-lisp:nil
                                ((state-machine-alias-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "stateMachineAliasArn"))
                                (:shape-name "DescribeStateMachineAliasInput"))

(smithy/sdk/shapes:define-output describe-state-machine-alias-output
                                 common-lisp:nil
                                 ((state-machine-alias-arn :target-type arn
                                   :member-name "stateMachineAliasArn")
                                  (name :target-type name :member-name "name")
                                  (description :target-type alias-description
                                   :member-name "description")
                                  (routing-configuration :target-type
                                   routing-configuration-list :member-name
                                   "routingConfiguration")
                                  (creation-date :target-type timestamp
                                   :member-name "creationDate")
                                  (update-date :target-type timestamp
                                   :member-name "updateDate"))
                                 (:shape-name
                                  "DescribeStateMachineAliasOutput"))

(smithy/sdk/shapes:define-input describe-state-machine-for-execution-input
                                common-lisp:nil
                                ((execution-arn :target-type arn :required
                                  common-lisp:t :member-name "executionArn")
                                 (included-data :target-type included-data
                                  :member-name "includedData"))
                                (:shape-name
                                 "DescribeStateMachineForExecutionInput"))

(smithy/sdk/shapes:define-output describe-state-machine-for-execution-output
                                 common-lisp:nil
                                 ((state-machine-arn :target-type arn :required
                                   common-lisp:t :member-name
                                   "stateMachineArn")
                                  (name :target-type name :required
                                   common-lisp:t :member-name "name")
                                  (definition :target-type definition :required
                                   common-lisp:t :member-name "definition")
                                  (role-arn :target-type arn :required
                                   common-lisp:t :member-name "roleArn")
                                  (update-date :target-type timestamp :required
                                   common-lisp:t :member-name "updateDate")
                                  (logging-configuration :target-type
                                   logging-configuration :member-name
                                   "loggingConfiguration")
                                  (tracing-configuration :target-type
                                   tracing-configuration :member-name
                                   "tracingConfiguration")
                                  (map-run-arn :target-type long-arn
                                   :member-name "mapRunArn")
                                  (label :target-type map-run-label
                                   :member-name "label")
                                  (revision-id :target-type revision-id
                                   :member-name "revisionId")
                                  (encryption-configuration :target-type
                                   encryption-configuration :member-name
                                   "encryptionConfiguration")
                                  (variable-references :target-type
                                   variable-references :member-name
                                   "variableReferences"))
                                 (:shape-name
                                  "DescribeStateMachineForExecutionOutput"))

(smithy/sdk/shapes:define-input describe-state-machine-input common-lisp:nil
                                ((state-machine-arn :target-type arn :required
                                  common-lisp:t :member-name "stateMachineArn")
                                 (included-data :target-type included-data
                                  :member-name "includedData"))
                                (:shape-name "DescribeStateMachineInput"))

(smithy/sdk/shapes:define-output describe-state-machine-output common-lisp:nil
                                 ((state-machine-arn :target-type arn :required
                                   common-lisp:t :member-name
                                   "stateMachineArn")
                                  (name :target-type name :required
                                   common-lisp:t :member-name "name")
                                  (status :target-type state-machine-status
                                   :member-name "status")
                                  (definition :target-type definition :required
                                   common-lisp:t :member-name "definition")
                                  (role-arn :target-type arn :required
                                   common-lisp:t :member-name "roleArn")
                                  (type :target-type state-machine-type
                                   :required common-lisp:t :member-name "type")
                                  (creation-date :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "creationDate")
                                  (logging-configuration :target-type
                                   logging-configuration :member-name
                                   "loggingConfiguration")
                                  (tracing-configuration :target-type
                                   tracing-configuration :member-name
                                   "tracingConfiguration")
                                  (label :target-type map-run-label
                                   :member-name "label")
                                  (revision-id :target-type revision-id
                                   :member-name "revisionId")
                                  (description :target-type version-description
                                   :member-name "description")
                                  (encryption-configuration :target-type
                                   encryption-configuration :member-name
                                   "encryptionConfiguration")
                                  (variable-references :target-type
                                   variable-references :member-name
                                   "variableReferences"))
                                 (:shape-name "DescribeStateMachineOutput"))

(smithy/sdk/shapes:define-type enabled smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure encryption-configuration common-lisp:nil
                                    ((kms-key-id :target-type kms-key-id
                                      :member-name "kmsKeyId")
                                     (kms-data-key-reuse-period-seconds
                                      :target-type
                                      kms-data-key-reuse-period-seconds
                                      :member-name
                                      "kmsDataKeyReusePeriodSeconds")
                                     (type :target-type encryption-type
                                      :required common-lisp:t :member-name
                                      "type"))
                                    (:shape-name "EncryptionConfiguration"))

(smithy/sdk/shapes:define-enum encryption-type
    common-lisp:nil
  (:aws-owned-key "AWS_OWNED_KEY")
  (:customer-managed-kms-key "CUSTOMER_MANAGED_KMS_KEY"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure evaluation-failed-event-details
                                    common-lisp:nil
                                    ((error :target-type sensitive-error
                                      :member-name "error")
                                     (cause :target-type sensitive-cause
                                      :member-name "cause")
                                     (location :target-type
                                      evaluation-failure-location :member-name
                                      "location")
                                     (state :target-type state-name :required
                                      common-lisp:t :member-name "state"))
                                    (:shape-name
                                     "EvaluationFailedEventDetails"))

(smithy/sdk/shapes:define-type evaluation-failure-location
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type event-id smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure execution-aborted-event-details
                                    common-lisp:nil
                                    ((error :target-type sensitive-error
                                      :member-name "error")
                                     (cause :target-type sensitive-cause
                                      :member-name "cause"))
                                    (:shape-name
                                     "ExecutionAbortedEventDetails"))

(smithy/sdk/shapes:define-error execution-already-exists common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ExecutionAlreadyExists")
                                (:error-code 400) (:base-class sfn-error))

(smithy/sdk/shapes:define-error execution-does-not-exist common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ExecutionDoesNotExist")
                                (:error-code 400) (:base-class sfn-error))

(smithy/sdk/shapes:define-structure execution-failed-event-details
                                    common-lisp:nil
                                    ((error :target-type sensitive-error
                                      :member-name "error")
                                     (cause :target-type sensitive-cause
                                      :member-name "cause"))
                                    (:shape-name "ExecutionFailedEventDetails"))

(smithy/sdk/shapes:define-error execution-limit-exceeded common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ExecutionLimitExceeded")
                                (:error-code 400) (:base-class sfn-error))

(smithy/sdk/shapes:define-list execution-list :member execution-list-item)

(smithy/sdk/shapes:define-structure execution-list-item common-lisp:nil
                                    ((execution-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "executionArn")
                                     (state-machine-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "stateMachineArn")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (status :target-type execution-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (start-date :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "startDate")
                                     (stop-date :target-type timestamp
                                      :member-name "stopDate")
                                     (map-run-arn :target-type long-arn
                                      :member-name "mapRunArn")
                                     (item-count :target-type unsigned-integer
                                      :member-name "itemCount")
                                     (state-machine-version-arn :target-type
                                      arn :member-name
                                      "stateMachineVersionArn")
                                     (state-machine-alias-arn :target-type arn
                                      :member-name "stateMachineAliasArn")
                                     (redrive-count :target-type redrive-count
                                      :member-name "redriveCount")
                                     (redrive-date :target-type timestamp
                                      :member-name "redriveDate"))
                                    (:shape-name "ExecutionListItem"))

(smithy/sdk/shapes:define-error execution-not-redrivable common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ExecutionNotRedrivable")
                                (:error-code 400) (:base-class sfn-error))

(smithy/sdk/shapes:define-enum execution-redrive-filter
    common-lisp:nil
  (:redriven "REDRIVEN")
  (:not-redriven "NOT_REDRIVEN"))

(smithy/sdk/shapes:define-enum execution-redrive-status
    common-lisp:nil
  (:redrivable "REDRIVABLE")
  (:not-redrivable "NOT_REDRIVABLE")
  (:redrivable-by-map-run "REDRIVABLE_BY_MAP_RUN"))

(smithy/sdk/shapes:define-structure execution-redriven-event-details
                                    common-lisp:nil
                                    ((redrive-count :target-type redrive-count
                                      :member-name "redriveCount"))
                                    (:shape-name
                                     "ExecutionRedrivenEventDetails"))

(smithy/sdk/shapes:define-structure execution-started-event-details
                                    common-lisp:nil
                                    ((input :target-type sensitive-data
                                      :member-name "input")
                                     (input-details :target-type
                                      history-event-execution-data-details
                                      :member-name "inputDetails")
                                     (role-arn :target-type arn :member-name
                                      "roleArn")
                                     (state-machine-alias-arn :target-type arn
                                      :member-name "stateMachineAliasArn")
                                     (state-machine-version-arn :target-type
                                      arn :member-name
                                      "stateMachineVersionArn"))
                                    (:shape-name
                                     "ExecutionStartedEventDetails"))

(smithy/sdk/shapes:define-enum execution-status
    common-lisp:nil
  (:running "RUNNING")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED")
  (:timed-out "TIMED_OUT")
  (:aborted "ABORTED")
  (:pending-redrive "PENDING_REDRIVE"))

(smithy/sdk/shapes:define-structure execution-succeeded-event-details
                                    common-lisp:nil
                                    ((output :target-type sensitive-data
                                      :member-name "output")
                                     (output-details :target-type
                                      history-event-execution-data-details
                                      :member-name "outputDetails"))
                                    (:shape-name
                                     "ExecutionSucceededEventDetails"))

(smithy/sdk/shapes:define-structure execution-timed-out-event-details
                                    common-lisp:nil
                                    ((error :target-type sensitive-error
                                      :member-name "error")
                                     (cause :target-type sensitive-cause
                                      :member-name "cause"))
                                    (:shape-name
                                     "ExecutionTimedOutEventDetails"))

(smithy/sdk/shapes:define-input get-activity-task-input common-lisp:nil
                                ((activity-arn :target-type arn :required
                                  common-lisp:t :member-name "activityArn")
                                 (worker-name :target-type name :member-name
                                  "workerName"))
                                (:shape-name "GetActivityTaskInput"))

(smithy/sdk/shapes:define-output get-activity-task-output common-lisp:nil
                                 ((task-token :target-type task-token
                                   :member-name "taskToken")
                                  (input :target-type sensitive-data-job-input
                                   :member-name "input"))
                                 (:shape-name "GetActivityTaskOutput"))

(smithy/sdk/shapes:define-input get-execution-history-input common-lisp:nil
                                ((execution-arn :target-type arn :required
                                  common-lisp:t :member-name "executionArn")
                                 (max-results :target-type page-size
                                  :member-name "maxResults")
                                 (reverse-order :target-type reverse-order
                                  :member-name "reverseOrder")
                                 (next-token :target-type page-token
                                  :member-name "nextToken")
                                 (include-execution-data :target-type
                                  include-execution-data-get-execution-history
                                  :member-name "includeExecutionData"))
                                (:shape-name "GetExecutionHistoryInput"))

(smithy/sdk/shapes:define-output get-execution-history-output common-lisp:nil
                                 ((events :target-type history-event-list
                                   :required common-lisp:t :member-name
                                   "events")
                                  (next-token :target-type page-token
                                   :member-name "nextToken"))
                                 (:shape-name "GetExecutionHistoryOutput"))

(smithy/sdk/shapes:define-type httpbody smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type httpheaders smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type httpmethod smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type httpprotocol smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type httpstatus-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type httpstatus-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure history-event common-lisp:nil
                                    ((timestamp :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "timestamp")
                                     (type :target-type history-event-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (id :target-type event-id :required
                                      common-lisp:t :member-name "id")
                                     (previous-event-id :target-type event-id
                                      :member-name "previousEventId")
                                     (activity-failed-event-details
                                      :target-type
                                      activity-failed-event-details
                                      :member-name
                                      "activityFailedEventDetails")
                                     (activity-schedule-failed-event-details
                                      :target-type
                                      activity-schedule-failed-event-details
                                      :member-name
                                      "activityScheduleFailedEventDetails")
                                     (activity-scheduled-event-details
                                      :target-type
                                      activity-scheduled-event-details
                                      :member-name
                                      "activityScheduledEventDetails")
                                     (activity-started-event-details
                                      :target-type
                                      activity-started-event-details
                                      :member-name
                                      "activityStartedEventDetails")
                                     (activity-succeeded-event-details
                                      :target-type
                                      activity-succeeded-event-details
                                      :member-name
                                      "activitySucceededEventDetails")
                                     (activity-timed-out-event-details
                                      :target-type
                                      activity-timed-out-event-details
                                      :member-name
                                      "activityTimedOutEventDetails")
                                     (task-failed-event-details :target-type
                                      task-failed-event-details :member-name
                                      "taskFailedEventDetails")
                                     (task-scheduled-event-details :target-type
                                      task-scheduled-event-details :member-name
                                      "taskScheduledEventDetails")
                                     (task-start-failed-event-details
                                      :target-type
                                      task-start-failed-event-details
                                      :member-name
                                      "taskStartFailedEventDetails")
                                     (task-started-event-details :target-type
                                      task-started-event-details :member-name
                                      "taskStartedEventDetails")
                                     (task-submit-failed-event-details
                                      :target-type
                                      task-submit-failed-event-details
                                      :member-name
                                      "taskSubmitFailedEventDetails")
                                     (task-submitted-event-details :target-type
                                      task-submitted-event-details :member-name
                                      "taskSubmittedEventDetails")
                                     (task-succeeded-event-details :target-type
                                      task-succeeded-event-details :member-name
                                      "taskSucceededEventDetails")
                                     (task-timed-out-event-details :target-type
                                      task-timed-out-event-details :member-name
                                      "taskTimedOutEventDetails")
                                     (execution-failed-event-details
                                      :target-type
                                      execution-failed-event-details
                                      :member-name
                                      "executionFailedEventDetails")
                                     (execution-started-event-details
                                      :target-type
                                      execution-started-event-details
                                      :member-name
                                      "executionStartedEventDetails")
                                     (execution-succeeded-event-details
                                      :target-type
                                      execution-succeeded-event-details
                                      :member-name
                                      "executionSucceededEventDetails")
                                     (execution-aborted-event-details
                                      :target-type
                                      execution-aborted-event-details
                                      :member-name
                                      "executionAbortedEventDetails")
                                     (execution-timed-out-event-details
                                      :target-type
                                      execution-timed-out-event-details
                                      :member-name
                                      "executionTimedOutEventDetails")
                                     (execution-redriven-event-details
                                      :target-type
                                      execution-redriven-event-details
                                      :member-name
                                      "executionRedrivenEventDetails")
                                     (map-state-started-event-details
                                      :target-type
                                      map-state-started-event-details
                                      :member-name
                                      "mapStateStartedEventDetails")
                                     (map-iteration-started-event-details
                                      :target-type map-iteration-event-details
                                      :member-name
                                      "mapIterationStartedEventDetails")
                                     (map-iteration-succeeded-event-details
                                      :target-type map-iteration-event-details
                                      :member-name
                                      "mapIterationSucceededEventDetails")
                                     (map-iteration-failed-event-details
                                      :target-type map-iteration-event-details
                                      :member-name
                                      "mapIterationFailedEventDetails")
                                     (map-iteration-aborted-event-details
                                      :target-type map-iteration-event-details
                                      :member-name
                                      "mapIterationAbortedEventDetails")
                                     (lambda-function-failed-event-details
                                      :target-type
                                      lambda-function-failed-event-details
                                      :member-name
                                      "lambdaFunctionFailedEventDetails")
                                     (lambda-function-schedule-failed-event-details
                                      :target-type
                                      lambda-function-schedule-failed-event-details
                                      :member-name
                                      "lambdaFunctionScheduleFailedEventDetails")
                                     (lambda-function-scheduled-event-details
                                      :target-type
                                      lambda-function-scheduled-event-details
                                      :member-name
                                      "lambdaFunctionScheduledEventDetails")
                                     (lambda-function-start-failed-event-details
                                      :target-type
                                      lambda-function-start-failed-event-details
                                      :member-name
                                      "lambdaFunctionStartFailedEventDetails")
                                     (lambda-function-succeeded-event-details
                                      :target-type
                                      lambda-function-succeeded-event-details
                                      :member-name
                                      "lambdaFunctionSucceededEventDetails")
                                     (lambda-function-timed-out-event-details
                                      :target-type
                                      lambda-function-timed-out-event-details
                                      :member-name
                                      "lambdaFunctionTimedOutEventDetails")
                                     (state-entered-event-details :target-type
                                      state-entered-event-details :member-name
                                      "stateEnteredEventDetails")
                                     (state-exited-event-details :target-type
                                      state-exited-event-details :member-name
                                      "stateExitedEventDetails")
                                     (map-run-started-event-details
                                      :target-type
                                      map-run-started-event-details
                                      :member-name "mapRunStartedEventDetails")
                                     (map-run-failed-event-details :target-type
                                      map-run-failed-event-details :member-name
                                      "mapRunFailedEventDetails")
                                     (map-run-redriven-event-details
                                      :target-type
                                      map-run-redriven-event-details
                                      :member-name
                                      "mapRunRedrivenEventDetails")
                                     (evaluation-failed-event-details
                                      :target-type
                                      evaluation-failed-event-details
                                      :member-name
                                      "evaluationFailedEventDetails"))
                                    (:shape-name "HistoryEvent"))

(smithy/sdk/shapes:define-structure history-event-execution-data-details
                                    common-lisp:nil
                                    ((truncated :target-type truncated
                                      :member-name "truncated"))
                                    (:shape-name
                                     "HistoryEventExecutionDataDetails"))

(smithy/sdk/shapes:define-list history-event-list :member history-event)

(smithy/sdk/shapes:define-enum history-event-type
    common-lisp:nil
  (:activity-failed "ActivityFailed")
  (:activity-scheduled "ActivityScheduled")
  (:activity-schedule-failed "ActivityScheduleFailed")
  (:activity-started "ActivityStarted")
  (:activity-succeeded "ActivitySucceeded")
  (:activity-timed-out "ActivityTimedOut")
  (:choice-state-entered "ChoiceStateEntered")
  (:choice-state-exited "ChoiceStateExited")
  (:execution-aborted "ExecutionAborted")
  (:execution-failed "ExecutionFailed")
  (:execution-started "ExecutionStarted")
  (:execution-succeeded "ExecutionSucceeded")
  (:execution-timed-out "ExecutionTimedOut")
  (:fail-state-entered "FailStateEntered")
  (:lambda-function-failed "LambdaFunctionFailed")
  (:lambda-function-scheduled "LambdaFunctionScheduled")
  (:lambda-function-schedule-failed "LambdaFunctionScheduleFailed")
  (:lambda-function-started "LambdaFunctionStarted")
  (:lambda-function-start-failed "LambdaFunctionStartFailed")
  (:lambda-function-succeeded "LambdaFunctionSucceeded")
  (:lambda-function-timed-out "LambdaFunctionTimedOut")
  (:map-iteration-aborted "MapIterationAborted")
  (:map-iteration-failed "MapIterationFailed")
  (:map-iteration-started "MapIterationStarted")
  (:map-iteration-succeeded "MapIterationSucceeded")
  (:map-state-aborted "MapStateAborted")
  (:map-state-entered "MapStateEntered")
  (:map-state-exited "MapStateExited")
  (:map-state-failed "MapStateFailed")
  (:map-state-started "MapStateStarted")
  (:map-state-succeeded "MapStateSucceeded")
  (:parallel-state-aborted "ParallelStateAborted")
  (:parallel-state-entered "ParallelStateEntered")
  (:parallel-state-exited "ParallelStateExited")
  (:parallel-state-failed "ParallelStateFailed")
  (:parallel-state-started "ParallelStateStarted")
  (:parallel-state-succeeded "ParallelStateSucceeded")
  (:pass-state-entered "PassStateEntered")
  (:pass-state-exited "PassStateExited")
  (:succeed-state-entered "SucceedStateEntered")
  (:succeed-state-exited "SucceedStateExited")
  (:task-failed "TaskFailed")
  (:task-scheduled "TaskScheduled")
  (:task-started "TaskStarted")
  (:task-start-failed "TaskStartFailed")
  (:task-state-aborted "TaskStateAborted")
  (:task-state-entered "TaskStateEntered")
  (:task-state-exited "TaskStateExited")
  (:task-submit-failed "TaskSubmitFailed")
  (:task-submitted "TaskSubmitted")
  (:task-succeeded "TaskSucceeded")
  (:task-timed-out "TaskTimedOut")
  (:wait-state-aborted "WaitStateAborted")
  (:wait-state-entered "WaitStateEntered")
  (:wait-state-exited "WaitStateExited")
  (:map-run-aborted "MapRunAborted")
  (:map-run-failed "MapRunFailed")
  (:map-run-started "MapRunStarted")
  (:map-run-succeeded "MapRunSucceeded")
  (:execution-redriven "ExecutionRedriven")
  (:map-run-redriven "MapRunRedriven")
  (:evaluation-failed "EvaluationFailed"))

(smithy/sdk/shapes:define-type identity smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type include-execution-data
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type include-execution-data-get-execution-history
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum included-data
    common-lisp:nil
  (:all-data "ALL_DATA")
  (:metadata-only "METADATA_ONLY"))

(smithy/sdk/shapes:define-structure inspection-data common-lisp:nil
                                    ((input :target-type sensitive-data
                                      :member-name "input")
                                     (after-arguments :target-type
                                      sensitive-data :member-name
                                      "afterArguments")
                                     (after-input-path :target-type
                                      sensitive-data :member-name
                                      "afterInputPath")
                                     (after-parameters :target-type
                                      sensitive-data :member-name
                                      "afterParameters")
                                     (result :target-type sensitive-data
                                      :member-name "result")
                                     (after-result-selector :target-type
                                      sensitive-data :member-name
                                      "afterResultSelector")
                                     (after-result-path :target-type
                                      sensitive-data :member-name
                                      "afterResultPath")
                                     (request :target-type
                                      inspection-data-request :member-name
                                      "request")
                                     (response :target-type
                                      inspection-data-response :member-name
                                      "response")
                                     (variables :target-type sensitive-data
                                      :member-name "variables"))
                                    (:shape-name "InspectionData"))

(smithy/sdk/shapes:define-structure inspection-data-request common-lisp:nil
                                    ((protocol :target-type httpprotocol
                                      :member-name "protocol")
                                     (method :target-type httpmethod
                                      :member-name "method")
                                     (url :target-type url :member-name "url")
                                     (headers :target-type httpheaders
                                      :member-name "headers")
                                     (body :target-type httpbody :member-name
                                      "body"))
                                    (:shape-name "InspectionDataRequest"))

(smithy/sdk/shapes:define-structure inspection-data-response common-lisp:nil
                                    ((protocol :target-type httpprotocol
                                      :member-name "protocol")
                                     (status-code :target-type httpstatus-code
                                      :member-name "statusCode")
                                     (status-message :target-type
                                      httpstatus-message :member-name
                                      "statusMessage")
                                     (headers :target-type httpheaders
                                      :member-name "headers")
                                     (body :target-type httpbody :member-name
                                      "body"))
                                    (:shape-name "InspectionDataResponse"))

(smithy/sdk/shapes:define-enum inspection-level
    common-lisp:nil
  (:info "INFO")
  (:debug "DEBUG")
  (:trace "TRACE"))

(smithy/sdk/shapes:define-error invalid-arn common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidArn") (:error-code 400)
                                (:base-class sfn-error))

(smithy/sdk/shapes:define-error invalid-definition common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidDefinition")
                                (:error-code 400) (:base-class sfn-error))

(smithy/sdk/shapes:define-error invalid-encryption-configuration
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidEncryptionConfiguration")
                                (:error-code 400) (:base-class sfn-error))

(smithy/sdk/shapes:define-error invalid-execution-input common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidExecutionInput")
                                (:error-code 400) (:base-class sfn-error))

(smithy/sdk/shapes:define-error invalid-logging-configuration common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidLoggingConfiguration")
                                (:error-code 400) (:base-class sfn-error))

(smithy/sdk/shapes:define-error invalid-name common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidName") (:error-code 400)
                                (:base-class sfn-error))

(smithy/sdk/shapes:define-error invalid-output common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidOutput") (:error-code 400)
                                (:base-class sfn-error))

(smithy/sdk/shapes:define-error invalid-token common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidToken") (:error-code 400)
                                (:base-class sfn-error))

(smithy/sdk/shapes:define-error invalid-tracing-configuration common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidTracingConfiguration")
                                (:error-code 400) (:base-class sfn-error))

(smithy/sdk/shapes:define-error kms-access-denied-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "KmsAccessDeniedException")
                                (:error-code 400) (:base-class sfn-error))

(smithy/sdk/shapes:define-type kms-data-key-reuse-period-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error kms-invalid-state-exception common-lisp:nil
                                ((kms-key-state :target-type kms-key-state
                                  :member-name "kmsKeyState")
                                 (message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "KmsInvalidStateException")
                                (:error-code 400) (:base-class sfn-error))

(smithy/sdk/shapes:define-type kms-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum kms-key-state
    common-lisp:nil
  (:disabled "DISABLED")
  (:pending-deletion "PENDING_DELETION")
  (:pending-import "PENDING_IMPORT")
  (:unavailable "UNAVAILABLE")
  (:creating "CREATING"))

(smithy/sdk/shapes:define-error kms-throttling-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "KmsThrottlingException")
                                (:error-code 400) (:base-class sfn-error))

(smithy/sdk/shapes:define-structure lambda-function-failed-event-details
                                    common-lisp:nil
                                    ((error :target-type sensitive-error
                                      :member-name "error")
                                     (cause :target-type sensitive-cause
                                      :member-name "cause"))
                                    (:shape-name
                                     "LambdaFunctionFailedEventDetails"))

(smithy/sdk/shapes:define-structure
 lambda-function-schedule-failed-event-details common-lisp:nil
 ((error :target-type sensitive-error :member-name "error")
  (cause :target-type sensitive-cause :member-name "cause"))
 (:shape-name "LambdaFunctionScheduleFailedEventDetails"))

(smithy/sdk/shapes:define-structure lambda-function-scheduled-event-details
                                    common-lisp:nil
                                    ((resource :target-type arn :required
                                      common-lisp:t :member-name "resource")
                                     (input :target-type sensitive-data
                                      :member-name "input")
                                     (input-details :target-type
                                      history-event-execution-data-details
                                      :member-name "inputDetails")
                                     (timeout-in-seconds :target-type
                                      timeout-in-seconds :member-name
                                      "timeoutInSeconds")
                                     (task-credentials :target-type
                                      task-credentials :member-name
                                      "taskCredentials"))
                                    (:shape-name
                                     "LambdaFunctionScheduledEventDetails"))

(smithy/sdk/shapes:define-structure lambda-function-start-failed-event-details
                                    common-lisp:nil
                                    ((error :target-type sensitive-error
                                      :member-name "error")
                                     (cause :target-type sensitive-cause
                                      :member-name "cause"))
                                    (:shape-name
                                     "LambdaFunctionStartFailedEventDetails"))

(smithy/sdk/shapes:define-structure lambda-function-succeeded-event-details
                                    common-lisp:nil
                                    ((output :target-type sensitive-data
                                      :member-name "output")
                                     (output-details :target-type
                                      history-event-execution-data-details
                                      :member-name "outputDetails"))
                                    (:shape-name
                                     "LambdaFunctionSucceededEventDetails"))

(smithy/sdk/shapes:define-structure lambda-function-timed-out-event-details
                                    common-lisp:nil
                                    ((error :target-type sensitive-error
                                      :member-name "error")
                                     (cause :target-type sensitive-cause
                                      :member-name "cause"))
                                    (:shape-name
                                     "LambdaFunctionTimedOutEventDetails"))

(smithy/sdk/shapes:define-input list-activities-input common-lisp:nil
                                ((max-results :target-type page-size
                                  :member-name "maxResults")
                                 (next-token :target-type page-token
                                  :member-name "nextToken"))
                                (:shape-name "ListActivitiesInput"))

(smithy/sdk/shapes:define-output list-activities-output common-lisp:nil
                                 ((activities :target-type activity-list
                                   :required common-lisp:t :member-name
                                   "activities")
                                  (next-token :target-type page-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListActivitiesOutput"))

(smithy/sdk/shapes:define-input list-executions-input common-lisp:nil
                                ((state-machine-arn :target-type arn
                                  :member-name "stateMachineArn")
                                 (status-filter :target-type execution-status
                                  :member-name "statusFilter")
                                 (max-results :target-type page-size
                                  :member-name "maxResults")
                                 (next-token :target-type
                                  list-executions-page-token :member-name
                                  "nextToken")
                                 (map-run-arn :target-type long-arn
                                  :member-name "mapRunArn")
                                 (redrive-filter :target-type
                                  execution-redrive-filter :member-name
                                  "redriveFilter"))
                                (:shape-name "ListExecutionsInput"))

(smithy/sdk/shapes:define-output list-executions-output common-lisp:nil
                                 ((executions :target-type execution-list
                                   :required common-lisp:t :member-name
                                   "executions")
                                  (next-token :target-type
                                   list-executions-page-token :member-name
                                   "nextToken"))
                                 (:shape-name "ListExecutionsOutput"))

(smithy/sdk/shapes:define-type list-executions-page-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-map-runs-input common-lisp:nil
                                ((execution-arn :target-type arn :required
                                  common-lisp:t :member-name "executionArn")
                                 (max-results :target-type page-size
                                  :member-name "maxResults")
                                 (next-token :target-type page-token
                                  :member-name "nextToken"))
                                (:shape-name "ListMapRunsInput"))

(smithy/sdk/shapes:define-output list-map-runs-output common-lisp:nil
                                 ((map-runs :target-type map-run-list :required
                                   common-lisp:t :member-name "mapRuns")
                                  (next-token :target-type page-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListMapRunsOutput"))

(smithy/sdk/shapes:define-input list-state-machine-aliases-input
                                common-lisp:nil
                                ((state-machine-arn :target-type arn :required
                                  common-lisp:t :member-name "stateMachineArn")
                                 (next-token :target-type page-token
                                  :member-name "nextToken")
                                 (max-results :target-type page-size
                                  :member-name "maxResults"))
                                (:shape-name "ListStateMachineAliasesInput"))

(smithy/sdk/shapes:define-output list-state-machine-aliases-output
                                 common-lisp:nil
                                 ((state-machine-aliases :target-type
                                   state-machine-alias-list :required
                                   common-lisp:t :member-name
                                   "stateMachineAliases")
                                  (next-token :target-type page-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListStateMachineAliasesOutput"))

(smithy/sdk/shapes:define-input list-state-machine-versions-input
                                common-lisp:nil
                                ((state-machine-arn :target-type arn :required
                                  common-lisp:t :member-name "stateMachineArn")
                                 (next-token :target-type page-token
                                  :member-name "nextToken")
                                 (max-results :target-type page-size
                                  :member-name "maxResults"))
                                (:shape-name "ListStateMachineVersionsInput"))

(smithy/sdk/shapes:define-output list-state-machine-versions-output
                                 common-lisp:nil
                                 ((state-machine-versions :target-type
                                   state-machine-version-list :required
                                   common-lisp:t :member-name
                                   "stateMachineVersions")
                                  (next-token :target-type page-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListStateMachineVersionsOutput"))

(smithy/sdk/shapes:define-input list-state-machines-input common-lisp:nil
                                ((max-results :target-type page-size
                                  :member-name "maxResults")
                                 (next-token :target-type page-token
                                  :member-name "nextToken"))
                                (:shape-name "ListStateMachinesInput"))

(smithy/sdk/shapes:define-output list-state-machines-output common-lisp:nil
                                 ((state-machines :target-type
                                   state-machine-list :required common-lisp:t
                                   :member-name "stateMachines")
                                  (next-token :target-type page-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListStateMachinesOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-input common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"))
                                (:shape-name "ListTagsForResourceInput"))

(smithy/sdk/shapes:define-output list-tags-for-resource-output common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceOutput"))

(smithy/sdk/shapes:define-structure log-destination common-lisp:nil
                                    ((cloud-watch-logs-log-group :target-type
                                      cloud-watch-logs-log-group :member-name
                                      "cloudWatchLogsLogGroup"))
                                    (:shape-name "LogDestination"))

(smithy/sdk/shapes:define-list log-destination-list :member log-destination)

(smithy/sdk/shapes:define-enum log-level
    common-lisp:nil
  (:all "ALL")
  (:error "ERROR")
  (:fatal "FATAL")
  (:off "OFF"))

(smithy/sdk/shapes:define-structure logging-configuration common-lisp:nil
                                    ((level :target-type log-level :member-name
                                      "level")
                                     (include-execution-data :target-type
                                      include-execution-data :member-name
                                      "includeExecutionData")
                                     (destinations :target-type
                                      log-destination-list :member-name
                                      "destinations"))
                                    (:shape-name "LoggingConfiguration"))

(smithy/sdk/shapes:define-type long-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type long-object smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure map-iteration-event-details common-lisp:nil
                                    ((name :target-type name :member-name
                                      "name")
                                     (index :target-type unsigned-integer
                                      :member-name "index"))
                                    (:shape-name "MapIterationEventDetails"))

(smithy/sdk/shapes:define-structure map-run-execution-counts common-lisp:nil
                                    ((pending :target-type unsigned-long
                                      :required common-lisp:t :member-name
                                      "pending")
                                     (running :target-type unsigned-long
                                      :required common-lisp:t :member-name
                                      "running")
                                     (succeeded :target-type unsigned-long
                                      :required common-lisp:t :member-name
                                      "succeeded")
                                     (failed :target-type unsigned-long
                                      :required common-lisp:t :member-name
                                      "failed")
                                     (timed-out :target-type unsigned-long
                                      :required common-lisp:t :member-name
                                      "timedOut")
                                     (aborted :target-type unsigned-long
                                      :required common-lisp:t :member-name
                                      "aborted")
                                     (total :target-type unsigned-long
                                      :required common-lisp:t :member-name
                                      "total")
                                     (results-written :target-type
                                      unsigned-long :required common-lisp:t
                                      :member-name "resultsWritten")
                                     (failures-not-redrivable :target-type
                                      long-object :member-name
                                      "failuresNotRedrivable")
                                     (pending-redrive :target-type long-object
                                      :member-name "pendingRedrive"))
                                    (:shape-name "MapRunExecutionCounts"))

(smithy/sdk/shapes:define-structure map-run-failed-event-details
                                    common-lisp:nil
                                    ((error :target-type sensitive-error
                                      :member-name "error")
                                     (cause :target-type sensitive-cause
                                      :member-name "cause"))
                                    (:shape-name "MapRunFailedEventDetails"))

(smithy/sdk/shapes:define-structure map-run-item-counts common-lisp:nil
                                    ((pending :target-type unsigned-long
                                      :required common-lisp:t :member-name
                                      "pending")
                                     (running :target-type unsigned-long
                                      :required common-lisp:t :member-name
                                      "running")
                                     (succeeded :target-type unsigned-long
                                      :required common-lisp:t :member-name
                                      "succeeded")
                                     (failed :target-type unsigned-long
                                      :required common-lisp:t :member-name
                                      "failed")
                                     (timed-out :target-type unsigned-long
                                      :required common-lisp:t :member-name
                                      "timedOut")
                                     (aborted :target-type unsigned-long
                                      :required common-lisp:t :member-name
                                      "aborted")
                                     (total :target-type unsigned-long
                                      :required common-lisp:t :member-name
                                      "total")
                                     (results-written :target-type
                                      unsigned-long :required common-lisp:t
                                      :member-name "resultsWritten")
                                     (failures-not-redrivable :target-type
                                      long-object :member-name
                                      "failuresNotRedrivable")
                                     (pending-redrive :target-type long-object
                                      :member-name "pendingRedrive"))
                                    (:shape-name "MapRunItemCounts"))

(smithy/sdk/shapes:define-type map-run-label smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list map-run-list :member map-run-list-item)

(smithy/sdk/shapes:define-structure map-run-list-item common-lisp:nil
                                    ((execution-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "executionArn")
                                     (map-run-arn :target-type long-arn
                                      :required common-lisp:t :member-name
                                      "mapRunArn")
                                     (state-machine-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "stateMachineArn")
                                     (start-date :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "startDate")
                                     (stop-date :target-type timestamp
                                      :member-name "stopDate"))
                                    (:shape-name "MapRunListItem"))

(smithy/sdk/shapes:define-structure map-run-redriven-event-details
                                    common-lisp:nil
                                    ((map-run-arn :target-type long-arn
                                      :member-name "mapRunArn")
                                     (redrive-count :target-type redrive-count
                                      :member-name "redriveCount"))
                                    (:shape-name "MapRunRedrivenEventDetails"))

(smithy/sdk/shapes:define-structure map-run-started-event-details
                                    common-lisp:nil
                                    ((map-run-arn :target-type long-arn
                                      :member-name "mapRunArn"))
                                    (:shape-name "MapRunStartedEventDetails"))

(smithy/sdk/shapes:define-enum map-run-status
    common-lisp:nil
  (:running "RUNNING")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED")
  (:aborted "ABORTED"))

(smithy/sdk/shapes:define-structure map-state-started-event-details
                                    common-lisp:nil
                                    ((length :target-type unsigned-integer
                                      :member-name "length"))
                                    (:shape-name "MapStateStartedEventDetails"))

(smithy/sdk/shapes:define-type max-concurrency smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error missing-required-parameter common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "MissingRequiredParameter")
                                (:error-code 400) (:base-class sfn-error))

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type page-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type page-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type publish smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input publish-state-machine-version-input
                                common-lisp:nil
                                ((state-machine-arn :target-type arn :required
                                  common-lisp:t :member-name "stateMachineArn")
                                 (revision-id :target-type revision-id
                                  :member-name "revisionId")
                                 (description :target-type version-description
                                  :member-name "description"))
                                (:shape-name "PublishStateMachineVersionInput"))

(smithy/sdk/shapes:define-output publish-state-machine-version-output
                                 common-lisp:nil
                                 ((creation-date :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "creationDate")
                                  (state-machine-version-arn :target-type arn
                                   :required common-lisp:t :member-name
                                   "stateMachineVersionArn"))
                                 (:shape-name
                                  "PublishStateMachineVersionOutput"))

(smithy/sdk/shapes:define-type redrive-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input redrive-execution-input common-lisp:nil
                                ((execution-arn :target-type arn :required
                                  common-lisp:t :member-name "executionArn")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "RedriveExecutionInput"))

(smithy/sdk/shapes:define-output redrive-execution-output common-lisp:nil
                                 ((redrive-date :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "redriveDate"))
                                 (:shape-name "RedriveExecutionOutput"))

(smithy/sdk/shapes:define-error resource-not-found common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message")
                                 (resource-name :target-type arn :member-name
                                  "resourceName"))
                                (:shape-name "ResourceNotFound")
                                (:error-code 404) (:base-class sfn-error))

(smithy/sdk/shapes:define-type reveal-secrets smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type reverse-order smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type revision-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list routing-configuration-list :member
                               routing-configuration-list-item)

(smithy/sdk/shapes:define-structure routing-configuration-list-item
                                    common-lisp:nil
                                    ((state-machine-version-arn :target-type
                                      arn :required common-lisp:t :member-name
                                      "stateMachineVersionArn")
                                     (weight :target-type version-weight
                                      :required common-lisp:t :member-name
                                      "weight"))
                                    (:shape-name
                                     "RoutingConfigurationListItem"))

(smithy/sdk/shapes:define-input send-task-failure-input common-lisp:nil
                                ((task-token :target-type task-token :required
                                  common-lisp:t :member-name "taskToken")
                                 (error :target-type sensitive-error
                                  :member-name "error")
                                 (cause :target-type sensitive-cause
                                  :member-name "cause"))
                                (:shape-name "SendTaskFailureInput"))

(smithy/sdk/shapes:define-output send-task-failure-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "SendTaskFailureOutput"))

(smithy/sdk/shapes:define-input send-task-heartbeat-input common-lisp:nil
                                ((task-token :target-type task-token :required
                                  common-lisp:t :member-name "taskToken"))
                                (:shape-name "SendTaskHeartbeatInput"))

(smithy/sdk/shapes:define-output send-task-heartbeat-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "SendTaskHeartbeatOutput"))

(smithy/sdk/shapes:define-input send-task-success-input common-lisp:nil
                                ((task-token :target-type task-token :required
                                  common-lisp:t :member-name "taskToken")
                                 (output :target-type sensitive-data :required
                                  common-lisp:t :member-name "output"))
                                (:shape-name "SendTaskSuccessInput"))

(smithy/sdk/shapes:define-output send-task-success-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "SendTaskSuccessOutput"))

(smithy/sdk/shapes:define-type sensitive-cause smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sensitive-data smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sensitive-data-job-input
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sensitive-error smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402) (:base-class sfn-error))

(smithy/sdk/shapes:define-input start-execution-input common-lisp:nil
                                ((state-machine-arn :target-type arn :required
                                  common-lisp:t :member-name "stateMachineArn")
                                 (name :target-type name :member-name "name")
                                 (input :target-type sensitive-data
                                  :member-name "input")
                                 (trace-header :target-type trace-header
                                  :member-name "traceHeader"))
                                (:shape-name "StartExecutionInput"))

(smithy/sdk/shapes:define-output start-execution-output common-lisp:nil
                                 ((execution-arn :target-type arn :required
                                   common-lisp:t :member-name "executionArn")
                                  (start-date :target-type timestamp :required
                                   common-lisp:t :member-name "startDate"))
                                 (:shape-name "StartExecutionOutput"))

(smithy/sdk/shapes:define-input start-sync-execution-input common-lisp:nil
                                ((state-machine-arn :target-type arn :required
                                  common-lisp:t :member-name "stateMachineArn")
                                 (name :target-type name :member-name "name")
                                 (input :target-type sensitive-data
                                  :member-name "input")
                                 (trace-header :target-type trace-header
                                  :member-name "traceHeader")
                                 (included-data :target-type included-data
                                  :member-name "includedData"))
                                (:shape-name "StartSyncExecutionInput"))

(smithy/sdk/shapes:define-output start-sync-execution-output common-lisp:nil
                                 ((execution-arn :target-type arn :required
                                   common-lisp:t :member-name "executionArn")
                                  (state-machine-arn :target-type arn
                                   :member-name "stateMachineArn")
                                  (name :target-type name :member-name "name")
                                  (start-date :target-type timestamp :required
                                   common-lisp:t :member-name "startDate")
                                  (stop-date :target-type timestamp :required
                                   common-lisp:t :member-name "stopDate")
                                  (status :target-type sync-execution-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (error :target-type sensitive-error
                                   :member-name "error")
                                  (cause :target-type sensitive-cause
                                   :member-name "cause")
                                  (input :target-type sensitive-data
                                   :member-name "input")
                                  (input-details :target-type
                                   cloud-watch-events-execution-data-details
                                   :member-name "inputDetails")
                                  (output :target-type sensitive-data
                                   :member-name "output")
                                  (output-details :target-type
                                   cloud-watch-events-execution-data-details
                                   :member-name "outputDetails")
                                  (trace-header :target-type trace-header
                                   :member-name "traceHeader")
                                  (billing-details :target-type billing-details
                                   :member-name "billingDetails"))
                                 (:shape-name "StartSyncExecutionOutput"))

(smithy/sdk/shapes:define-structure state-entered-event-details common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (input :target-type sensitive-data
                                      :member-name "input")
                                     (input-details :target-type
                                      history-event-execution-data-details
                                      :member-name "inputDetails"))
                                    (:shape-name "StateEnteredEventDetails"))

(smithy/sdk/shapes:define-structure state-exited-event-details common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (output :target-type sensitive-data
                                      :member-name "output")
                                     (output-details :target-type
                                      history-event-execution-data-details
                                      :member-name "outputDetails")
                                     (assigned-variables :target-type
                                      assigned-variables :member-name
                                      "assignedVariables")
                                     (assigned-variables-details :target-type
                                      assigned-variables-details :member-name
                                      "assignedVariablesDetails"))
                                    (:shape-name "StateExitedEventDetails"))

(smithy/sdk/shapes:define-list state-machine-alias-list :member
                               state-machine-alias-list-item)

(smithy/sdk/shapes:define-structure state-machine-alias-list-item
                                    common-lisp:nil
                                    ((state-machine-alias-arn :target-type
                                      long-arn :required common-lisp:t
                                      :member-name "stateMachineAliasArn")
                                     (creation-date :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationDate"))
                                    (:shape-name "StateMachineAliasListItem"))

(smithy/sdk/shapes:define-error state-machine-already-exists common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "StateMachineAlreadyExists")
                                (:error-code 400) (:base-class sfn-error))

(smithy/sdk/shapes:define-error state-machine-deleting common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "StateMachineDeleting")
                                (:error-code 400) (:base-class sfn-error))

(smithy/sdk/shapes:define-error state-machine-does-not-exist common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "StateMachineDoesNotExist")
                                (:error-code 400) (:base-class sfn-error))

(smithy/sdk/shapes:define-error state-machine-limit-exceeded common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "StateMachineLimitExceeded")
                                (:error-code 400) (:base-class sfn-error))

(smithy/sdk/shapes:define-list state-machine-list :member
                               state-machine-list-item)

(smithy/sdk/shapes:define-structure state-machine-list-item common-lisp:nil
                                    ((state-machine-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "stateMachineArn")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (type :target-type state-machine-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (creation-date :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationDate"))
                                    (:shape-name "StateMachineListItem"))

(smithy/sdk/shapes:define-enum state-machine-status
    common-lisp:nil
  (:active "ACTIVE")
  (:deleting "DELETING"))

(smithy/sdk/shapes:define-enum state-machine-type
    common-lisp:nil
  (:standard "STANDARD")
  (:express "EXPRESS"))

(smithy/sdk/shapes:define-error state-machine-type-not-supported
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "StateMachineTypeNotSupported")
                                (:error-code 400) (:base-class sfn-error))

(smithy/sdk/shapes:define-list state-machine-version-list :member
                               state-machine-version-list-item)

(smithy/sdk/shapes:define-structure state-machine-version-list-item
                                    common-lisp:nil
                                    ((state-machine-version-arn :target-type
                                      long-arn :required common-lisp:t
                                      :member-name "stateMachineVersionArn")
                                     (creation-date :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationDate"))
                                    (:shape-name "StateMachineVersionListItem"))

(smithy/sdk/shapes:define-type state-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input stop-execution-input common-lisp:nil
                                ((execution-arn :target-type arn :required
                                  common-lisp:t :member-name "executionArn")
                                 (error :target-type sensitive-error
                                  :member-name "error")
                                 (cause :target-type sensitive-cause
                                  :member-name "cause"))
                                (:shape-name "StopExecutionInput"))

(smithy/sdk/shapes:define-output stop-execution-output common-lisp:nil
                                 ((stop-date :target-type timestamp :required
                                   common-lisp:t :member-name "stopDate"))
                                 (:shape-name "StopExecutionOutput"))

(smithy/sdk/shapes:define-enum sync-execution-status
    common-lisp:nil
  (:succeeded "SUCCEEDED")
  (:failed "FAILED")
  (:timed-out "TIMED_OUT"))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :member-name
                                      "key")
                                     (value :target-type tag-value :member-name
                                      "value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-input common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-output tag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceOutput"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure task-credentials common-lisp:nil
                                    ((role-arn :target-type long-arn
                                      :member-name "roleArn"))
                                    (:shape-name "TaskCredentials"))

(smithy/sdk/shapes:define-error task-does-not-exist common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "TaskDoesNotExist")
                                (:error-code 400) (:base-class sfn-error))

(smithy/sdk/shapes:define-structure task-failed-event-details common-lisp:nil
                                    ((resource-type :target-type name :required
                                      common-lisp:t :member-name
                                      "resourceType")
                                     (resource :target-type name :required
                                      common-lisp:t :member-name "resource")
                                     (error :target-type sensitive-error
                                      :member-name "error")
                                     (cause :target-type sensitive-cause
                                      :member-name "cause"))
                                    (:shape-name "TaskFailedEventDetails"))

(smithy/sdk/shapes:define-structure task-scheduled-event-details
                                    common-lisp:nil
                                    ((resource-type :target-type name :required
                                      common-lisp:t :member-name
                                      "resourceType")
                                     (resource :target-type name :required
                                      common-lisp:t :member-name "resource")
                                     (region :target-type name :required
                                      common-lisp:t :member-name "region")
                                     (parameters :target-type
                                      connector-parameters :required
                                      common-lisp:t :member-name "parameters")
                                     (timeout-in-seconds :target-type
                                      timeout-in-seconds :member-name
                                      "timeoutInSeconds")
                                     (heartbeat-in-seconds :target-type
                                      timeout-in-seconds :member-name
                                      "heartbeatInSeconds")
                                     (task-credentials :target-type
                                      task-credentials :member-name
                                      "taskCredentials"))
                                    (:shape-name "TaskScheduledEventDetails"))

(smithy/sdk/shapes:define-structure task-start-failed-event-details
                                    common-lisp:nil
                                    ((resource-type :target-type name :required
                                      common-lisp:t :member-name
                                      "resourceType")
                                     (resource :target-type name :required
                                      common-lisp:t :member-name "resource")
                                     (error :target-type sensitive-error
                                      :member-name "error")
                                     (cause :target-type sensitive-cause
                                      :member-name "cause"))
                                    (:shape-name "TaskStartFailedEventDetails"))

(smithy/sdk/shapes:define-structure task-started-event-details common-lisp:nil
                                    ((resource-type :target-type name :required
                                      common-lisp:t :member-name
                                      "resourceType")
                                     (resource :target-type name :required
                                      common-lisp:t :member-name "resource"))
                                    (:shape-name "TaskStartedEventDetails"))

(smithy/sdk/shapes:define-structure task-submit-failed-event-details
                                    common-lisp:nil
                                    ((resource-type :target-type name :required
                                      common-lisp:t :member-name
                                      "resourceType")
                                     (resource :target-type name :required
                                      common-lisp:t :member-name "resource")
                                     (error :target-type sensitive-error
                                      :member-name "error")
                                     (cause :target-type sensitive-cause
                                      :member-name "cause"))
                                    (:shape-name
                                     "TaskSubmitFailedEventDetails"))

(smithy/sdk/shapes:define-structure task-submitted-event-details
                                    common-lisp:nil
                                    ((resource-type :target-type name :required
                                      common-lisp:t :member-name
                                      "resourceType")
                                     (resource :target-type name :required
                                      common-lisp:t :member-name "resource")
                                     (output :target-type sensitive-data
                                      :member-name "output")
                                     (output-details :target-type
                                      history-event-execution-data-details
                                      :member-name "outputDetails"))
                                    (:shape-name "TaskSubmittedEventDetails"))

(smithy/sdk/shapes:define-structure task-succeeded-event-details
                                    common-lisp:nil
                                    ((resource-type :target-type name :required
                                      common-lisp:t :member-name
                                      "resourceType")
                                     (resource :target-type name :required
                                      common-lisp:t :member-name "resource")
                                     (output :target-type sensitive-data
                                      :member-name "output")
                                     (output-details :target-type
                                      history-event-execution-data-details
                                      :member-name "outputDetails"))
                                    (:shape-name "TaskSucceededEventDetails"))

(smithy/sdk/shapes:define-error task-timed-out common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "TaskTimedOut") (:error-code 400)
                                (:base-class sfn-error))

(smithy/sdk/shapes:define-structure task-timed-out-event-details
                                    common-lisp:nil
                                    ((resource-type :target-type name :required
                                      common-lisp:t :member-name
                                      "resourceType")
                                     (resource :target-type name :required
                                      common-lisp:t :member-name "resource")
                                     (error :target-type sensitive-error
                                      :member-name "error")
                                     (cause :target-type sensitive-cause
                                      :member-name "cause"))
                                    (:shape-name "TaskTimedOutEventDetails"))

(smithy/sdk/shapes:define-type task-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum test-execution-status
    common-lisp:nil
  (:succeeded "SUCCEEDED")
  (:failed "FAILED")
  (:retriable "RETRIABLE")
  (:caught-error "CAUGHT_ERROR"))

(smithy/sdk/shapes:define-input test-state-input common-lisp:nil
                                ((definition :target-type definition :required
                                  common-lisp:t :member-name "definition")
                                 (role-arn :target-type arn :member-name
                                  "roleArn")
                                 (input :target-type sensitive-data
                                  :member-name "input")
                                 (inspection-level :target-type
                                  inspection-level :member-name
                                  "inspectionLevel")
                                 (reveal-secrets :target-type reveal-secrets
                                  :member-name "revealSecrets")
                                 (variables :target-type sensitive-data
                                  :member-name "variables"))
                                (:shape-name "TestStateInput"))

(smithy/sdk/shapes:define-output test-state-output common-lisp:nil
                                 ((output :target-type sensitive-data
                                   :member-name "output")
                                  (error :target-type sensitive-error
                                   :member-name "error")
                                  (cause :target-type sensitive-cause
                                   :member-name "cause")
                                  (inspection-data :target-type inspection-data
                                   :member-name "inspectionData")
                                  (next-state :target-type state-name
                                   :member-name "nextState")
                                  (status :target-type test-execution-status
                                   :member-name "status"))
                                 (:shape-name "TestStateOutput"))

(smithy/sdk/shapes:define-type timeout-in-seconds smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type tolerated-failure-count
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type tolerated-failure-percentage
                               smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-error too-many-tags common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message")
                                 (resource-name :target-type arn :member-name
                                  "resourceName"))
                                (:shape-name "TooManyTags") (:error-code 400)
                                (:base-class sfn-error))

(smithy/sdk/shapes:define-type trace-header smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tracing-configuration common-lisp:nil
                                    ((enabled :target-type enabled :member-name
                                      "enabled"))
                                    (:shape-name "TracingConfiguration"))

(smithy/sdk/shapes:define-type url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type unsigned-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type unsigned-long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-input untag-resource-input common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"))
                                (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-output untag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceOutput"))

(smithy/sdk/shapes:define-input update-map-run-input common-lisp:nil
                                ((map-run-arn :target-type long-arn :required
                                  common-lisp:t :member-name "mapRunArn")
                                 (max-concurrency :target-type max-concurrency
                                  :member-name "maxConcurrency")
                                 (tolerated-failure-percentage :target-type
                                  tolerated-failure-percentage :member-name
                                  "toleratedFailurePercentage")
                                 (tolerated-failure-count :target-type
                                  tolerated-failure-count :member-name
                                  "toleratedFailureCount"))
                                (:shape-name "UpdateMapRunInput"))

(smithy/sdk/shapes:define-output update-map-run-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateMapRunOutput"))

(smithy/sdk/shapes:define-input update-state-machine-alias-input
                                common-lisp:nil
                                ((state-machine-alias-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "stateMachineAliasArn")
                                 (description :target-type alias-description
                                  :member-name "description")
                                 (routing-configuration :target-type
                                  routing-configuration-list :member-name
                                  "routingConfiguration"))
                                (:shape-name "UpdateStateMachineAliasInput"))

(smithy/sdk/shapes:define-output update-state-machine-alias-output
                                 common-lisp:nil
                                 ((update-date :target-type timestamp :required
                                   common-lisp:t :member-name "updateDate"))
                                 (:shape-name "UpdateStateMachineAliasOutput"))

(smithy/sdk/shapes:define-input update-state-machine-input common-lisp:nil
                                ((state-machine-arn :target-type arn :required
                                  common-lisp:t :member-name "stateMachineArn")
                                 (definition :target-type definition
                                  :member-name "definition")
                                 (role-arn :target-type arn :member-name
                                  "roleArn")
                                 (logging-configuration :target-type
                                  logging-configuration :member-name
                                  "loggingConfiguration")
                                 (tracing-configuration :target-type
                                  tracing-configuration :member-name
                                  "tracingConfiguration")
                                 (publish :target-type publish :member-name
                                  "publish")
                                 (version-description :target-type
                                  version-description :member-name
                                  "versionDescription")
                                 (encryption-configuration :target-type
                                  encryption-configuration :member-name
                                  "encryptionConfiguration"))
                                (:shape-name "UpdateStateMachineInput"))

(smithy/sdk/shapes:define-output update-state-machine-output common-lisp:nil
                                 ((update-date :target-type timestamp :required
                                   common-lisp:t :member-name "updateDate")
                                  (revision-id :target-type revision-id
                                   :member-name "revisionId")
                                  (state-machine-version-arn :target-type arn
                                   :member-name "stateMachineVersionArn"))
                                 (:shape-name "UpdateStateMachineOutput"))

(smithy/sdk/shapes:define-type validate-state-machine-definition-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 validate-state-machine-definition-diagnostic common-lisp:nil
 ((severity :target-type validate-state-machine-definition-severity :required
   common-lisp:t :member-name "severity")
  (code :target-type validate-state-machine-definition-code :required
   common-lisp:t :member-name "code")
  (message :target-type validate-state-machine-definition-message :required
   common-lisp:t :member-name "message")
  (location :target-type validate-state-machine-definition-location
   :member-name "location"))
 (:shape-name "ValidateStateMachineDefinitionDiagnostic"))

(smithy/sdk/shapes:define-list
 validate-state-machine-definition-diagnostic-list :member
 validate-state-machine-definition-diagnostic)

(smithy/sdk/shapes:define-input validate-state-machine-definition-input
                                common-lisp:nil
                                ((definition :target-type definition :required
                                  common-lisp:t :member-name "definition")
                                 (type :target-type state-machine-type
                                  :member-name "type")
                                 (severity :target-type
                                  validate-state-machine-definition-severity
                                  :member-name "severity")
                                 (max-results :target-type
                                  validate-state-machine-definition-max-result
                                  :member-name "maxResults"))
                                (:shape-name
                                 "ValidateStateMachineDefinitionInput"))

(smithy/sdk/shapes:define-type validate-state-machine-definition-location
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type validate-state-machine-definition-max-result
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type validate-state-machine-definition-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-output validate-state-machine-definition-output
                                 common-lisp:nil
                                 ((result :target-type
                                   validate-state-machine-definition-result-code
                                   :required common-lisp:t :member-name
                                   "result")
                                  (diagnostics :target-type
                                   validate-state-machine-definition-diagnostic-list
                                   :required common-lisp:t :member-name
                                   "diagnostics")
                                  (truncated :target-type
                                   validate-state-machine-definition-truncated
                                   :member-name "truncated"))
                                 (:shape-name
                                  "ValidateStateMachineDefinitionOutput"))

(smithy/sdk/shapes:define-enum validate-state-machine-definition-result-code
    common-lisp:nil
  (:ok "OK")
  (:fail "FAIL"))

(smithy/sdk/shapes:define-enum validate-state-machine-definition-severity
    common-lisp:nil
  (:error "ERROR")
  (:warning "WARNING"))

(smithy/sdk/shapes:define-type validate-state-machine-definition-truncated
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message")
                                 (reason :target-type
                                  validation-exception-reason :member-name
                                  "reason"))
                                (:shape-name "ValidationException")
                                (:error-code 400) (:base-class sfn-error))

(smithy/sdk/shapes:define-enum validation-exception-reason
    common-lisp:nil
  (:api-does-not-support-labeled-arns "API_DOES_NOT_SUPPORT_LABELED_ARNS")
  (:missing-required-parameter "MISSING_REQUIRED_PARAMETER")
  (:cannot-update-completed-map-run "CANNOT_UPDATE_COMPLETED_MAP_RUN")
  (:invalid-routing-configuration "INVALID_ROUTING_CONFIGURATION"))

(smithy/sdk/shapes:define-type variable-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list variable-name-list :member variable-name)

(smithy/sdk/shapes:define-map variable-references :key state-name :value
                              variable-name-list)

(smithy/sdk/shapes:define-type variable-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type version-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type version-weight smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type included-details smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type truncated smithy/sdk/smithy-types:boolean)

(smithy/sdk/operation:define-operation create-activity :shape-name
                                       "CreateActivity" :input
                                       create-activity-input :output
                                       create-activity-output :errors
                                       (activity-already-exists
                                        activity-limit-exceeded
                                        invalid-encryption-configuration
                                        invalid-name
                                        kms-access-denied-exception
                                        kms-throttling-exception too-many-tags))

(smithy/sdk/operation:define-operation create-state-machine :shape-name
                                       "CreateStateMachine" :input
                                       create-state-machine-input :output
                                       create-state-machine-output :errors
                                       (conflict-exception invalid-arn
                                        invalid-definition
                                        invalid-encryption-configuration
                                        invalid-logging-configuration
                                        invalid-name
                                        invalid-tracing-configuration
                                        kms-access-denied-exception
                                        kms-throttling-exception
                                        state-machine-already-exists
                                        state-machine-deleting
                                        state-machine-limit-exceeded
                                        state-machine-type-not-supported
                                        too-many-tags validation-exception))

(smithy/sdk/operation:define-operation create-state-machine-alias :shape-name
                                       "CreateStateMachineAlias" :input
                                       create-state-machine-alias-input :output
                                       create-state-machine-alias-output
                                       :errors
                                       (conflict-exception invalid-arn
                                        invalid-name resource-not-found
                                        service-quota-exceeded-exception
                                        state-machine-deleting
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-activity :shape-name
                                       "DeleteActivity" :input
                                       delete-activity-input :output
                                       delete-activity-output :errors
                                       (invalid-arn))

(smithy/sdk/operation:define-operation delete-state-machine :shape-name
                                       "DeleteStateMachine" :input
                                       delete-state-machine-input :output
                                       delete-state-machine-output :errors
                                       (invalid-arn validation-exception))

(smithy/sdk/operation:define-operation delete-state-machine-alias :shape-name
                                       "DeleteStateMachineAlias" :input
                                       delete-state-machine-alias-input :output
                                       delete-state-machine-alias-output
                                       :errors
                                       (conflict-exception invalid-arn
                                        resource-not-found
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-state-machine-version :shape-name
                                       "DeleteStateMachineVersion" :input
                                       delete-state-machine-version-input
                                       :output
                                       delete-state-machine-version-output
                                       :errors
                                       (conflict-exception invalid-arn
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-activity :shape-name
                                       "DescribeActivity" :input
                                       describe-activity-input :output
                                       describe-activity-output :errors
                                       (activity-does-not-exist invalid-arn))

(smithy/sdk/operation:define-operation describe-execution :shape-name
                                       "DescribeExecution" :input
                                       describe-execution-input :output
                                       describe-execution-output :errors
                                       (execution-does-not-exist invalid-arn
                                        kms-access-denied-exception
                                        kms-invalid-state-exception
                                        kms-throttling-exception))

(smithy/sdk/operation:define-operation describe-map-run :shape-name
                                       "DescribeMapRun" :input
                                       describe-map-run-input :output
                                       describe-map-run-output :errors
                                       (invalid-arn resource-not-found))

(smithy/sdk/operation:define-operation describe-state-machine :shape-name
                                       "DescribeStateMachine" :input
                                       describe-state-machine-input :output
                                       describe-state-machine-output :errors
                                       (invalid-arn kms-access-denied-exception
                                        kms-invalid-state-exception
                                        kms-throttling-exception
                                        state-machine-does-not-exist))

(smithy/sdk/operation:define-operation describe-state-machine-alias :shape-name
                                       "DescribeStateMachineAlias" :input
                                       describe-state-machine-alias-input
                                       :output
                                       describe-state-machine-alias-output
                                       :errors
                                       (invalid-arn resource-not-found
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-state-machine-for-execution
                                       :shape-name
                                       "DescribeStateMachineForExecution"
                                       :input
                                       describe-state-machine-for-execution-input
                                       :output
                                       describe-state-machine-for-execution-output
                                       :errors
                                       (execution-does-not-exist invalid-arn
                                        kms-access-denied-exception
                                        kms-invalid-state-exception
                                        kms-throttling-exception))

(smithy/sdk/operation:define-operation get-activity-task :shape-name
                                       "GetActivityTask" :input
                                       get-activity-task-input :output
                                       get-activity-task-output :errors
                                       (activity-does-not-exist
                                        activity-worker-limit-exceeded
                                        invalid-arn kms-access-denied-exception
                                        kms-invalid-state-exception
                                        kms-throttling-exception))

(smithy/sdk/operation:define-operation get-execution-history :shape-name
                                       "GetExecutionHistory" :input
                                       get-execution-history-input :output
                                       get-execution-history-output :errors
                                       (execution-does-not-exist invalid-arn
                                        invalid-token
                                        kms-access-denied-exception
                                        kms-invalid-state-exception
                                        kms-throttling-exception))

(smithy/sdk/operation:define-operation list-activities :shape-name
                                       "ListActivities" :input
                                       list-activities-input :output
                                       list-activities-output :errors
                                       (invalid-token))

(smithy/sdk/operation:define-operation list-executions :shape-name
                                       "ListExecutions" :input
                                       list-executions-input :output
                                       list-executions-output :errors
                                       (invalid-arn invalid-token
                                        resource-not-found
                                        state-machine-does-not-exist
                                        state-machine-type-not-supported
                                        validation-exception))

(smithy/sdk/operation:define-operation list-map-runs :shape-name "ListMapRuns"
                                       :input list-map-runs-input :output
                                       list-map-runs-output :errors
                                       (execution-does-not-exist invalid-arn
                                        invalid-token))

(smithy/sdk/operation:define-operation list-state-machine-aliases :shape-name
                                       "ListStateMachineAliases" :input
                                       list-state-machine-aliases-input :output
                                       list-state-machine-aliases-output
                                       :errors
                                       (invalid-arn invalid-token
                                        resource-not-found
                                        state-machine-deleting
                                        state-machine-does-not-exist))

(smithy/sdk/operation:define-operation list-state-machine-versions :shape-name
                                       "ListStateMachineVersions" :input
                                       list-state-machine-versions-input
                                       :output
                                       list-state-machine-versions-output
                                       :errors
                                       (invalid-arn invalid-token
                                        validation-exception))

(smithy/sdk/operation:define-operation list-state-machines :shape-name
                                       "ListStateMachines" :input
                                       list-state-machines-input :output
                                       list-state-machines-output :errors
                                       (invalid-token))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-input :output
                                       list-tags-for-resource-output :errors
                                       (invalid-arn resource-not-found))

(smithy/sdk/operation:define-operation publish-state-machine-version
                                       :shape-name "PublishStateMachineVersion"
                                       :input
                                       publish-state-machine-version-input
                                       :output
                                       publish-state-machine-version-output
                                       :errors
                                       (conflict-exception invalid-arn
                                        service-quota-exceeded-exception
                                        state-machine-deleting
                                        state-machine-does-not-exist
                                        validation-exception))

(smithy/sdk/operation:define-operation redrive-execution :shape-name
                                       "RedriveExecution" :input
                                       redrive-execution-input :output
                                       redrive-execution-output :errors
                                       (execution-does-not-exist
                                        execution-limit-exceeded
                                        execution-not-redrivable invalid-arn
                                        validation-exception))

(smithy/sdk/operation:define-operation send-task-failure :shape-name
                                       "SendTaskFailure" :input
                                       send-task-failure-input :output
                                       send-task-failure-output :errors
                                       (invalid-token
                                        kms-access-denied-exception
                                        kms-invalid-state-exception
                                        kms-throttling-exception
                                        task-does-not-exist task-timed-out))

(smithy/sdk/operation:define-operation send-task-heartbeat :shape-name
                                       "SendTaskHeartbeat" :input
                                       send-task-heartbeat-input :output
                                       send-task-heartbeat-output :errors
                                       (invalid-token task-does-not-exist
                                        task-timed-out))

(smithy/sdk/operation:define-operation send-task-success :shape-name
                                       "SendTaskSuccess" :input
                                       send-task-success-input :output
                                       send-task-success-output :errors
                                       (invalid-output invalid-token
                                        kms-access-denied-exception
                                        kms-invalid-state-exception
                                        kms-throttling-exception
                                        task-does-not-exist task-timed-out))

(smithy/sdk/operation:define-operation start-execution :shape-name
                                       "StartExecution" :input
                                       start-execution-input :output
                                       start-execution-output :errors
                                       (execution-already-exists
                                        execution-limit-exceeded invalid-arn
                                        invalid-execution-input invalid-name
                                        kms-access-denied-exception
                                        kms-invalid-state-exception
                                        kms-throttling-exception
                                        state-machine-deleting
                                        state-machine-does-not-exist
                                        validation-exception))

(smithy/sdk/operation:define-operation start-sync-execution :shape-name
                                       "StartSyncExecution" :input
                                       start-sync-execution-input :output
                                       start-sync-execution-output :errors
                                       (invalid-arn invalid-execution-input
                                        invalid-name
                                        kms-access-denied-exception
                                        kms-invalid-state-exception
                                        kms-throttling-exception
                                        state-machine-deleting
                                        state-machine-does-not-exist
                                        state-machine-type-not-supported)
                                       :endpoint-host-prefix "sync-")

(smithy/sdk/operation:define-operation stop-execution :shape-name
                                       "StopExecution" :input
                                       stop-execution-input :output
                                       stop-execution-output :errors
                                       (execution-does-not-exist invalid-arn
                                        kms-access-denied-exception
                                        kms-invalid-state-exception
                                        kms-throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       tag-resource-output :errors
                                       (invalid-arn resource-not-found
                                        too-many-tags))

(smithy/sdk/operation:define-operation test-state :shape-name "TestState"
                                       :input test-state-input :output
                                       test-state-output :errors
                                       (invalid-arn invalid-definition
                                        invalid-execution-input
                                        validation-exception)
                                       :endpoint-host-prefix "sync-")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       untag-resource-output :errors
                                       (invalid-arn resource-not-found))

(smithy/sdk/operation:define-operation update-map-run :shape-name
                                       "UpdateMapRun" :input
                                       update-map-run-input :output
                                       update-map-run-output :errors
                                       (invalid-arn resource-not-found
                                        validation-exception))

(smithy/sdk/operation:define-operation update-state-machine :shape-name
                                       "UpdateStateMachine" :input
                                       update-state-machine-input :output
                                       update-state-machine-output :errors
                                       (conflict-exception invalid-arn
                                        invalid-definition
                                        invalid-encryption-configuration
                                        invalid-logging-configuration
                                        invalid-tracing-configuration
                                        kms-access-denied-exception
                                        kms-throttling-exception
                                        missing-required-parameter
                                        service-quota-exceeded-exception
                                        state-machine-deleting
                                        state-machine-does-not-exist
                                        validation-exception))

(smithy/sdk/operation:define-operation update-state-machine-alias :shape-name
                                       "UpdateStateMachineAlias" :input
                                       update-state-machine-alias-input :output
                                       update-state-machine-alias-output
                                       :errors
                                       (conflict-exception invalid-arn
                                        resource-not-found
                                        state-machine-deleting
                                        validation-exception))

(smithy/sdk/operation:define-operation validate-state-machine-definition
                                       :shape-name
                                       "ValidateStateMachineDefinition" :input
                                       validate-state-machine-definition-input
                                       :output
                                       validate-state-machine-definition-output
                                       :errors (validation-exception))
