(uiop/package:define-package #:pira/swf (:use)
                             (:export #:activity-id #:activity-task
                              #:activity-task-cancel-requested-event-attributes
                              #:activity-task-canceled-event-attributes
                              #:activity-task-completed-event-attributes
                              #:activity-task-failed-event-attributes
                              #:activity-task-scheduled-event-attributes
                              #:activity-task-started-event-attributes
                              #:activity-task-status
                              #:activity-task-timed-out-event-attributes
                              #:activity-task-timeout-type #:activity-type
                              #:activity-type-configuration
                              #:activity-type-detail #:activity-type-info
                              #:activity-type-info-list #:activity-type-infos
                              #:arn #:cancel-timer-decision-attributes
                              #:cancel-timer-failed-cause
                              #:cancel-timer-failed-event-attributes
                              #:cancel-workflow-execution-decision-attributes
                              #:cancel-workflow-execution-failed-cause
                              #:cancel-workflow-execution-failed-event-attributes
                              #:canceled #:cause-message #:child-policy
                              #:child-workflow-execution-canceled-event-attributes
                              #:child-workflow-execution-completed-event-attributes
                              #:child-workflow-execution-failed-event-attributes
                              #:child-workflow-execution-started-event-attributes
                              #:child-workflow-execution-terminated-event-attributes
                              #:child-workflow-execution-timed-out-event-attributes
                              #:close-status #:close-status-filter
                              #:complete-workflow-execution-decision-attributes
                              #:complete-workflow-execution-failed-cause
                              #:complete-workflow-execution-failed-event-attributes
                              #:continue-as-new-workflow-execution-decision-attributes
                              #:continue-as-new-workflow-execution-failed-cause
                              #:continue-as-new-workflow-execution-failed-event-attributes
                              #:count #:count-closed-workflow-executions
                              #:count-open-workflow-executions
                              #:count-pending-activity-tasks
                              #:count-pending-decision-tasks #:data #:decision
                              #:decision-list #:decision-task
                              #:decision-task-completed-event-attributes
                              #:decision-task-scheduled-event-attributes
                              #:decision-task-started-event-attributes
                              #:decision-task-timed-out-event-attributes
                              #:decision-task-timeout-type #:decision-type
                              #:delete-activity-type #:delete-workflow-type
                              #:deprecate-activity-type #:deprecate-domain
                              #:deprecate-workflow-type
                              #:describe-activity-type #:describe-domain
                              #:describe-workflow-execution
                              #:describe-workflow-type #:description
                              #:domain-configuration #:domain-detail
                              #:domain-info #:domain-info-list #:domain-infos
                              #:domain-name #:duration-in-days
                              #:duration-in-seconds
                              #:duration-in-seconds-optional #:error-message
                              #:event-id #:event-type #:execution-status
                              #:execution-time-filter
                              #:external-workflow-execution-cancel-requested-event-attributes
                              #:external-workflow-execution-signaled-event-attributes
                              #:fail-workflow-execution-decision-attributes
                              #:fail-workflow-execution-failed-cause
                              #:fail-workflow-execution-failed-event-attributes
                              #:failure-reason #:function-id #:function-input
                              #:function-name #:get-workflow-execution-history
                              #:history #:history-event #:history-event-list
                              #:identity
                              #:lambda-function-completed-event-attributes
                              #:lambda-function-failed-event-attributes
                              #:lambda-function-scheduled-event-attributes
                              #:lambda-function-started-event-attributes
                              #:lambda-function-timed-out-event-attributes
                              #:lambda-function-timeout-type #:limited-data
                              #:list-activity-types
                              #:list-closed-workflow-executions #:list-domains
                              #:list-open-workflow-executions
                              #:list-tags-for-resource #:list-workflow-types
                              #:marker-name #:marker-recorded-event-attributes
                              #:name #:open-decision-tasks-count #:page-size
                              #:page-token #:pending-task-count
                              #:poll-for-activity-task #:poll-for-decision-task
                              #:record-activity-task-heartbeat
                              #:record-marker-decision-attributes
                              #:record-marker-failed-cause
                              #:record-marker-failed-event-attributes
                              #:register-activity-type #:register-domain
                              #:register-workflow-type #:registration-status
                              #:request-cancel-activity-task-decision-attributes
                              #:request-cancel-activity-task-failed-cause
                              #:request-cancel-activity-task-failed-event-attributes
                              #:request-cancel-external-workflow-execution-decision-attributes
                              #:request-cancel-external-workflow-execution-failed-cause
                              #:request-cancel-external-workflow-execution-failed-event-attributes
                              #:request-cancel-external-workflow-execution-initiated-event-attributes
                              #:request-cancel-workflow-execution
                              #:resource-tag #:resource-tag-key
                              #:resource-tag-key-list #:resource-tag-list
                              #:resource-tag-value
                              #:respond-activity-task-canceled
                              #:respond-activity-task-completed
                              #:respond-activity-task-failed
                              #:respond-decision-task-completed #:reverse-order
                              #:run
                              #:schedule-activity-task-decision-attributes
                              #:schedule-activity-task-failed-cause
                              #:schedule-activity-task-failed-event-attributes
                              #:schedule-lambda-function-decision-attributes
                              #:schedule-lambda-function-failed-cause
                              #:schedule-lambda-function-failed-event-attributes
                              #:signal-external-workflow-execution-decision-attributes
                              #:signal-external-workflow-execution-failed-cause
                              #:signal-external-workflow-execution-failed-event-attributes
                              #:signal-external-workflow-execution-initiated-event-attributes
                              #:signal-name #:signal-workflow-execution
                              #:simple-workflow-service
                              #:start-at-previous-started-event
                              #:start-child-workflow-execution-decision-attributes
                              #:start-child-workflow-execution-failed-cause
                              #:start-child-workflow-execution-failed-event-attributes
                              #:start-child-workflow-execution-initiated-event-attributes
                              #:start-lambda-function-failed-cause
                              #:start-lambda-function-failed-event-attributes
                              #:start-timer-decision-attributes
                              #:start-timer-failed-cause
                              #:start-timer-failed-event-attributes
                              #:start-workflow-execution #:tag #:tag-filter
                              #:tag-list #:tag-resource #:task-list
                              #:task-priority #:task-token #:terminate-reason
                              #:terminate-workflow-execution
                              #:timer-canceled-event-attributes
                              #:timer-fired-event-attributes #:timer-id
                              #:timer-started-event-attributes #:timestamp
                              #:truncated #:undeprecate-activity-type
                              #:undeprecate-domain #:undeprecate-workflow-type
                              #:untag-resource #:version #:version-optional
                              #:workflow-execution
                              #:workflow-execution-cancel-requested-cause
                              #:workflow-execution-cancel-requested-event-attributes
                              #:workflow-execution-canceled-event-attributes
                              #:workflow-execution-completed-event-attributes
                              #:workflow-execution-configuration
                              #:workflow-execution-continued-as-new-event-attributes
                              #:workflow-execution-count
                              #:workflow-execution-detail
                              #:workflow-execution-failed-event-attributes
                              #:workflow-execution-filter
                              #:workflow-execution-info
                              #:workflow-execution-info-list
                              #:workflow-execution-infos
                              #:workflow-execution-open-counts
                              #:workflow-execution-signaled-event-attributes
                              #:workflow-execution-started-event-attributes
                              #:workflow-execution-terminated-cause
                              #:workflow-execution-terminated-event-attributes
                              #:workflow-execution-timed-out-event-attributes
                              #:workflow-execution-timeout-type #:workflow-id
                              #:workflow-run-id #:workflow-run-id-optional
                              #:workflow-type #:workflow-type-configuration
                              #:workflow-type-detail #:workflow-type-filter
                              #:workflow-type-info #:workflow-type-info-list
                              #:workflow-type-infos))
(common-lisp:in-package #:pira/swf)

(smithy/sdk/service:define-service simple-workflow-service :shape-name
                                   "SimpleWorkflowService" :version
                                   "2012-01-25" :title
                                   "Amazon Simple Workflow Service" :operations
                                   '(count-closed-workflow-executions
                                     count-open-workflow-executions
                                     count-pending-activity-tasks
                                     count-pending-decision-tasks
                                     delete-activity-type delete-workflow-type
                                     deprecate-activity-type deprecate-domain
                                     deprecate-workflow-type
                                     describe-activity-type describe-domain
                                     describe-workflow-execution
                                     describe-workflow-type
                                     get-workflow-execution-history
                                     list-activity-types
                                     list-closed-workflow-executions
                                     list-domains list-open-workflow-executions
                                     list-tags-for-resource list-workflow-types
                                     poll-for-activity-task
                                     poll-for-decision-task
                                     record-activity-task-heartbeat
                                     register-activity-type register-domain
                                     register-workflow-type
                                     request-cancel-workflow-execution
                                     respond-activity-task-canceled
                                     respond-activity-task-completed
                                     respond-activity-task-failed
                                     respond-decision-task-completed
                                     signal-workflow-execution
                                     start-workflow-execution tag-resource
                                     terminate-workflow-execution
                                     undeprecate-activity-type
                                     undeprecate-domain
                                     undeprecate-workflow-type untag-resource)
                                   :xml-namespace
                                   (:uri
                                    "http://swf.amazonaws.com/doc/2012-01-25"
                                    :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "SWF")
                                      ("arnNamespace" . "swf")
                                      ("cloudFormationName" . "SWF")
                                      ("cloudTrailEventSource"
                                       . "swf.amazonaws.com")
                                      ("endpointPrefix" . "swf"))
                                     ("aws.auth#sigv4" ("name" . "swf"))
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-type activity-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure activity-task common-lisp:nil
                                    ((task-token :target-type task-token
                                      :required common-lisp:t :member-name
                                      "taskToken")
                                     (activity-id :target-type activity-id
                                      :required common-lisp:t :member-name
                                      "activityId")
                                     (started-event-id :target-type event-id
                                      :required common-lisp:t :member-name
                                      "startedEventId")
                                     (workflow-execution :target-type
                                      workflow-execution :required
                                      common-lisp:t :member-name
                                      "workflowExecution")
                                     (activity-type :target-type activity-type
                                      :required common-lisp:t :member-name
                                      "activityType")
                                     (input :target-type data :member-name
                                      "input"))
                                    (:shape-name "ActivityTask"))

(smithy/sdk/shapes:define-structure
 activity-task-cancel-requested-event-attributes common-lisp:nil
 ((decision-task-completed-event-id :target-type event-id :required
   common-lisp:t :member-name "decisionTaskCompletedEventId")
  (activity-id :target-type activity-id :required common-lisp:t :member-name
   "activityId"))
 (:shape-name "ActivityTaskCancelRequestedEventAttributes"))

(smithy/sdk/shapes:define-structure activity-task-canceled-event-attributes
                                    common-lisp:nil
                                    ((details :target-type data :member-name
                                      "details")
                                     (scheduled-event-id :target-type event-id
                                      :required common-lisp:t :member-name
                                      "scheduledEventId")
                                     (started-event-id :target-type event-id
                                      :required common-lisp:t :member-name
                                      "startedEventId")
                                     (latest-cancel-requested-event-id
                                      :target-type event-id :member-name
                                      "latestCancelRequestedEventId"))
                                    (:shape-name
                                     "ActivityTaskCanceledEventAttributes"))

(smithy/sdk/shapes:define-structure activity-task-completed-event-attributes
                                    common-lisp:nil
                                    ((result :target-type data :member-name
                                      "result")
                                     (scheduled-event-id :target-type event-id
                                      :required common-lisp:t :member-name
                                      "scheduledEventId")
                                     (started-event-id :target-type event-id
                                      :required common-lisp:t :member-name
                                      "startedEventId"))
                                    (:shape-name
                                     "ActivityTaskCompletedEventAttributes"))

(smithy/sdk/shapes:define-structure activity-task-failed-event-attributes
                                    common-lisp:nil
                                    ((reason :target-type failure-reason
                                      :member-name "reason")
                                     (details :target-type data :member-name
                                      "details")
                                     (scheduled-event-id :target-type event-id
                                      :required common-lisp:t :member-name
                                      "scheduledEventId")
                                     (started-event-id :target-type event-id
                                      :required common-lisp:t :member-name
                                      "startedEventId"))
                                    (:shape-name
                                     "ActivityTaskFailedEventAttributes"))

(smithy/sdk/shapes:define-structure activity-task-scheduled-event-attributes
                                    common-lisp:nil
                                    ((activity-type :target-type activity-type
                                      :required common-lisp:t :member-name
                                      "activityType")
                                     (activity-id :target-type activity-id
                                      :required common-lisp:t :member-name
                                      "activityId")
                                     (input :target-type data :member-name
                                      "input")
                                     (control :target-type data :member-name
                                      "control")
                                     (schedule-to-start-timeout :target-type
                                      duration-in-seconds-optional :member-name
                                      "scheduleToStartTimeout")
                                     (schedule-to-close-timeout :target-type
                                      duration-in-seconds-optional :member-name
                                      "scheduleToCloseTimeout")
                                     (start-to-close-timeout :target-type
                                      duration-in-seconds-optional :member-name
                                      "startToCloseTimeout")
                                     (task-list :target-type task-list
                                      :required common-lisp:t :member-name
                                      "taskList")
                                     (task-priority :target-type task-priority
                                      :member-name "taskPriority")
                                     (decision-task-completed-event-id
                                      :target-type event-id :required
                                      common-lisp:t :member-name
                                      "decisionTaskCompletedEventId")
                                     (heartbeat-timeout :target-type
                                      duration-in-seconds-optional :member-name
                                      "heartbeatTimeout"))
                                    (:shape-name
                                     "ActivityTaskScheduledEventAttributes"))

(smithy/sdk/shapes:define-structure activity-task-started-event-attributes
                                    common-lisp:nil
                                    ((identity :target-type identity
                                      :member-name "identity")
                                     (scheduled-event-id :target-type event-id
                                      :required common-lisp:t :member-name
                                      "scheduledEventId"))
                                    (:shape-name
                                     "ActivityTaskStartedEventAttributes"))

(smithy/sdk/shapes:define-structure activity-task-status common-lisp:nil
                                    ((cancel-requested :target-type canceled
                                      :required common-lisp:t :member-name
                                      "cancelRequested"))
                                    (:shape-name "ActivityTaskStatus"))

(smithy/sdk/shapes:define-structure activity-task-timed-out-event-attributes
                                    common-lisp:nil
                                    ((timeout-type :target-type
                                      activity-task-timeout-type :required
                                      common-lisp:t :member-name "timeoutType")
                                     (scheduled-event-id :target-type event-id
                                      :required common-lisp:t :member-name
                                      "scheduledEventId")
                                     (started-event-id :target-type event-id
                                      :required common-lisp:t :member-name
                                      "startedEventId")
                                     (details :target-type limited-data
                                      :member-name "details"))
                                    (:shape-name
                                     "ActivityTaskTimedOutEventAttributes"))

(smithy/sdk/shapes:define-enum activity-task-timeout-type
    common-lisp:nil
  (:start-to-close "START_TO_CLOSE")
  (:schedule-to-start "SCHEDULE_TO_START")
  (:schedule-to-close "SCHEDULE_TO_CLOSE")
  (:heartbeat "HEARTBEAT"))

(smithy/sdk/shapes:define-structure activity-type common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (version :target-type version :required
                                      common-lisp:t :member-name "version"))
                                    (:shape-name "ActivityType"))

(smithy/sdk/shapes:define-structure activity-type-configuration common-lisp:nil
                                    ((default-task-start-to-close-timeout
                                      :target-type duration-in-seconds-optional
                                      :member-name
                                      "defaultTaskStartToCloseTimeout")
                                     (default-task-heartbeat-timeout
                                      :target-type duration-in-seconds-optional
                                      :member-name
                                      "defaultTaskHeartbeatTimeout")
                                     (default-task-list :target-type task-list
                                      :member-name "defaultTaskList")
                                     (default-task-priority :target-type
                                      task-priority :member-name
                                      "defaultTaskPriority")
                                     (default-task-schedule-to-start-timeout
                                      :target-type duration-in-seconds-optional
                                      :member-name
                                      "defaultTaskScheduleToStartTimeout")
                                     (default-task-schedule-to-close-timeout
                                      :target-type duration-in-seconds-optional
                                      :member-name
                                      "defaultTaskScheduleToCloseTimeout"))
                                    (:shape-name "ActivityTypeConfiguration"))

(smithy/sdk/shapes:define-structure activity-type-detail common-lisp:nil
                                    ((type-info :target-type activity-type-info
                                      :required common-lisp:t :member-name
                                      "typeInfo")
                                     (configuration :target-type
                                      activity-type-configuration :required
                                      common-lisp:t :member-name
                                      "configuration"))
                                    (:shape-name "ActivityTypeDetail"))

(smithy/sdk/shapes:define-structure activity-type-info common-lisp:nil
                                    ((activity-type :target-type activity-type
                                      :required common-lisp:t :member-name
                                      "activityType")
                                     (status :target-type registration-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (description :target-type description
                                      :member-name "description")
                                     (creation-date :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationDate")
                                     (deprecation-date :target-type timestamp
                                      :member-name "deprecationDate"))
                                    (:shape-name "ActivityTypeInfo"))

(smithy/sdk/shapes:define-list activity-type-info-list :member
                               activity-type-info)

(smithy/sdk/shapes:define-structure activity-type-infos common-lisp:nil
                                    ((type-infos :target-type
                                      activity-type-info-list :required
                                      common-lisp:t :member-name "typeInfos")
                                     (next-page-token :target-type page-token
                                      :member-name "nextPageToken"))
                                    (:shape-name "ActivityTypeInfos"))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cancel-timer-decision-attributes
                                    common-lisp:nil
                                    ((timer-id :target-type timer-id :required
                                      common-lisp:t :member-name "timerId"))
                                    (:shape-name
                                     "CancelTimerDecisionAttributes"))

(smithy/sdk/shapes:define-enum cancel-timer-failed-cause
    common-lisp:nil
  (:timer-id-unknown "TIMER_ID_UNKNOWN")
  (:operation-not-permitted "OPERATION_NOT_PERMITTED"))

(smithy/sdk/shapes:define-structure cancel-timer-failed-event-attributes
                                    common-lisp:nil
                                    ((timer-id :target-type timer-id :required
                                      common-lisp:t :member-name "timerId")
                                     (cause :target-type
                                      cancel-timer-failed-cause :required
                                      common-lisp:t :member-name "cause")
                                     (decision-task-completed-event-id
                                      :target-type event-id :required
                                      common-lisp:t :member-name
                                      "decisionTaskCompletedEventId"))
                                    (:shape-name
                                     "CancelTimerFailedEventAttributes"))

(smithy/sdk/shapes:define-structure
 cancel-workflow-execution-decision-attributes common-lisp:nil
 ((details :target-type data :member-name "details"))
 (:shape-name "CancelWorkflowExecutionDecisionAttributes"))

(smithy/sdk/shapes:define-enum cancel-workflow-execution-failed-cause
    common-lisp:nil
  (:unhandled-decision "UNHANDLED_DECISION")
  (:operation-not-permitted "OPERATION_NOT_PERMITTED"))

(smithy/sdk/shapes:define-structure
 cancel-workflow-execution-failed-event-attributes common-lisp:nil
 ((cause :target-type cancel-workflow-execution-failed-cause :required
   common-lisp:t :member-name "cause")
  (decision-task-completed-event-id :target-type event-id :required
   common-lisp:t :member-name "decisionTaskCompletedEventId"))
 (:shape-name "CancelWorkflowExecutionFailedEventAttributes"))

(smithy/sdk/shapes:define-type canceled smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type cause-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum child-policy
    common-lisp:nil
  (:terminate "TERMINATE")
  (:request-cancel "REQUEST_CANCEL")
  (:abandon "ABANDON"))

(smithy/sdk/shapes:define-structure
 child-workflow-execution-canceled-event-attributes common-lisp:nil
 ((workflow-execution :target-type workflow-execution :required common-lisp:t
   :member-name "workflowExecution")
  (workflow-type :target-type workflow-type :required common-lisp:t
   :member-name "workflowType")
  (details :target-type data :member-name "details")
  (initiated-event-id :target-type event-id :required common-lisp:t
   :member-name "initiatedEventId")
  (started-event-id :target-type event-id :required common-lisp:t :member-name
   "startedEventId"))
 (:shape-name "ChildWorkflowExecutionCanceledEventAttributes"))

(smithy/sdk/shapes:define-structure
 child-workflow-execution-completed-event-attributes common-lisp:nil
 ((workflow-execution :target-type workflow-execution :required common-lisp:t
   :member-name "workflowExecution")
  (workflow-type :target-type workflow-type :required common-lisp:t
   :member-name "workflowType")
  (result :target-type data :member-name "result")
  (initiated-event-id :target-type event-id :required common-lisp:t
   :member-name "initiatedEventId")
  (started-event-id :target-type event-id :required common-lisp:t :member-name
   "startedEventId"))
 (:shape-name "ChildWorkflowExecutionCompletedEventAttributes"))

(smithy/sdk/shapes:define-structure
 child-workflow-execution-failed-event-attributes common-lisp:nil
 ((workflow-execution :target-type workflow-execution :required common-lisp:t
   :member-name "workflowExecution")
  (workflow-type :target-type workflow-type :required common-lisp:t
   :member-name "workflowType")
  (reason :target-type failure-reason :member-name "reason")
  (details :target-type data :member-name "details")
  (initiated-event-id :target-type event-id :required common-lisp:t
   :member-name "initiatedEventId")
  (started-event-id :target-type event-id :required common-lisp:t :member-name
   "startedEventId"))
 (:shape-name "ChildWorkflowExecutionFailedEventAttributes"))

(smithy/sdk/shapes:define-structure
 child-workflow-execution-started-event-attributes common-lisp:nil
 ((workflow-execution :target-type workflow-execution :required common-lisp:t
   :member-name "workflowExecution")
  (workflow-type :target-type workflow-type :required common-lisp:t
   :member-name "workflowType")
  (initiated-event-id :target-type event-id :required common-lisp:t
   :member-name "initiatedEventId"))
 (:shape-name "ChildWorkflowExecutionStartedEventAttributes"))

(smithy/sdk/shapes:define-structure
 child-workflow-execution-terminated-event-attributes common-lisp:nil
 ((workflow-execution :target-type workflow-execution :required common-lisp:t
   :member-name "workflowExecution")
  (workflow-type :target-type workflow-type :required common-lisp:t
   :member-name "workflowType")
  (initiated-event-id :target-type event-id :required common-lisp:t
   :member-name "initiatedEventId")
  (started-event-id :target-type event-id :required common-lisp:t :member-name
   "startedEventId"))
 (:shape-name "ChildWorkflowExecutionTerminatedEventAttributes"))

(smithy/sdk/shapes:define-structure
 child-workflow-execution-timed-out-event-attributes common-lisp:nil
 ((workflow-execution :target-type workflow-execution :required common-lisp:t
   :member-name "workflowExecution")
  (workflow-type :target-type workflow-type :required common-lisp:t
   :member-name "workflowType")
  (timeout-type :target-type workflow-execution-timeout-type :required
   common-lisp:t :member-name "timeoutType")
  (initiated-event-id :target-type event-id :required common-lisp:t
   :member-name "initiatedEventId")
  (started-event-id :target-type event-id :required common-lisp:t :member-name
   "startedEventId"))
 (:shape-name "ChildWorkflowExecutionTimedOutEventAttributes"))

(smithy/sdk/shapes:define-enum close-status
    common-lisp:nil
  (:completed "COMPLETED")
  (:failed "FAILED")
  (:canceled "CANCELED")
  (:terminated "TERMINATED")
  (:continued-as-new "CONTINUED_AS_NEW")
  (:timed-out "TIMED_OUT"))

(smithy/sdk/shapes:define-structure close-status-filter common-lisp:nil
                                    ((status :target-type close-status
                                      :required common-lisp:t :member-name
                                      "status"))
                                    (:shape-name "CloseStatusFilter"))

(smithy/sdk/shapes:define-structure
 complete-workflow-execution-decision-attributes common-lisp:nil
 ((result :target-type data :member-name "result"))
 (:shape-name "CompleteWorkflowExecutionDecisionAttributes"))

(smithy/sdk/shapes:define-enum complete-workflow-execution-failed-cause
    common-lisp:nil
  (:unhandled-decision "UNHANDLED_DECISION")
  (:operation-not-permitted "OPERATION_NOT_PERMITTED"))

(smithy/sdk/shapes:define-structure
 complete-workflow-execution-failed-event-attributes common-lisp:nil
 ((cause :target-type complete-workflow-execution-failed-cause :required
   common-lisp:t :member-name "cause")
  (decision-task-completed-event-id :target-type event-id :required
   common-lisp:t :member-name "decisionTaskCompletedEventId"))
 (:shape-name "CompleteWorkflowExecutionFailedEventAttributes"))

(smithy/sdk/shapes:define-structure
 continue-as-new-workflow-execution-decision-attributes common-lisp:nil
 ((input :target-type data :member-name "input")
  (execution-start-to-close-timeout :target-type duration-in-seconds-optional
   :member-name "executionStartToCloseTimeout")
  (task-list :target-type task-list :member-name "taskList")
  (task-priority :target-type task-priority :member-name "taskPriority")
  (task-start-to-close-timeout :target-type duration-in-seconds-optional
   :member-name "taskStartToCloseTimeout")
  (child-policy :target-type child-policy :member-name "childPolicy")
  (tag-list :target-type tag-list :member-name "tagList")
  (workflow-type-version :target-type version :member-name
   "workflowTypeVersion")
  (lambda-role :target-type arn :member-name "lambdaRole"))
 (:shape-name "ContinueAsNewWorkflowExecutionDecisionAttributes"))

(smithy/sdk/shapes:define-enum continue-as-new-workflow-execution-failed-cause
    common-lisp:nil
  (:unhandled-decision "UNHANDLED_DECISION")
  (:workflow-type-deprecated "WORKFLOW_TYPE_DEPRECATED")
  (:workflow-type-does-not-exist "WORKFLOW_TYPE_DOES_NOT_EXIST")
  (:default-execution-start-to-close-timeout-undefined
   "DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED")
  (:default-task-start-to-close-timeout-undefined
   "DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED")
  (:default-task-list-undefined "DEFAULT_TASK_LIST_UNDEFINED")
  (:default-child-policy-undefined "DEFAULT_CHILD_POLICY_UNDEFINED")
  (:continue-as-new-workflow-execution-rate-exceeded
   "CONTINUE_AS_NEW_WORKFLOW_EXECUTION_RATE_EXCEEDED")
  (:operation-not-permitted "OPERATION_NOT_PERMITTED"))

(smithy/sdk/shapes:define-structure
 continue-as-new-workflow-execution-failed-event-attributes common-lisp:nil
 ((cause :target-type continue-as-new-workflow-execution-failed-cause :required
   common-lisp:t :member-name "cause")
  (decision-task-completed-event-id :target-type event-id :required
   common-lisp:t :member-name "decisionTaskCompletedEventId"))
 (:shape-name "ContinueAsNewWorkflowExecutionFailedEventAttributes"))

(smithy/sdk/shapes:define-type count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input count-closed-workflow-executions-input
                                common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain")
                                 (start-time-filter :target-type
                                  execution-time-filter :member-name
                                  "startTimeFilter")
                                 (close-time-filter :target-type
                                  execution-time-filter :member-name
                                  "closeTimeFilter")
                                 (execution-filter :target-type
                                  workflow-execution-filter :member-name
                                  "executionFilter")
                                 (type-filter :target-type workflow-type-filter
                                  :member-name "typeFilter")
                                 (tag-filter :target-type tag-filter
                                  :member-name "tagFilter")
                                 (close-status-filter :target-type
                                  close-status-filter :member-name
                                  "closeStatusFilter"))
                                (:shape-name
                                 "CountClosedWorkflowExecutionsInput"))

(smithy/sdk/shapes:define-input count-open-workflow-executions-input
                                common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain")
                                 (start-time-filter :target-type
                                  execution-time-filter :required common-lisp:t
                                  :member-name "startTimeFilter")
                                 (type-filter :target-type workflow-type-filter
                                  :member-name "typeFilter")
                                 (tag-filter :target-type tag-filter
                                  :member-name "tagFilter")
                                 (execution-filter :target-type
                                  workflow-execution-filter :member-name
                                  "executionFilter"))
                                (:shape-name
                                 "CountOpenWorkflowExecutionsInput"))

(smithy/sdk/shapes:define-input count-pending-activity-tasks-input
                                common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain")
                                 (task-list :target-type task-list :required
                                  common-lisp:t :member-name "taskList"))
                                (:shape-name "CountPendingActivityTasksInput"))

(smithy/sdk/shapes:define-input count-pending-decision-tasks-input
                                common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain")
                                 (task-list :target-type task-list :required
                                  common-lisp:t :member-name "taskList"))
                                (:shape-name "CountPendingDecisionTasksInput"))

(smithy/sdk/shapes:define-type data smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure decision common-lisp:nil
                                    ((decision-type :target-type decision-type
                                      :required common-lisp:t :member-name
                                      "decisionType")
                                     (schedule-activity-task-decision-attributes
                                      :target-type
                                      schedule-activity-task-decision-attributes
                                      :member-name
                                      "scheduleActivityTaskDecisionAttributes")
                                     (request-cancel-activity-task-decision-attributes
                                      :target-type
                                      request-cancel-activity-task-decision-attributes
                                      :member-name
                                      "requestCancelActivityTaskDecisionAttributes")
                                     (complete-workflow-execution-decision-attributes
                                      :target-type
                                      complete-workflow-execution-decision-attributes
                                      :member-name
                                      "completeWorkflowExecutionDecisionAttributes")
                                     (fail-workflow-execution-decision-attributes
                                      :target-type
                                      fail-workflow-execution-decision-attributes
                                      :member-name
                                      "failWorkflowExecutionDecisionAttributes")
                                     (cancel-workflow-execution-decision-attributes
                                      :target-type
                                      cancel-workflow-execution-decision-attributes
                                      :member-name
                                      "cancelWorkflowExecutionDecisionAttributes")
                                     (continue-as-new-workflow-execution-decision-attributes
                                      :target-type
                                      continue-as-new-workflow-execution-decision-attributes
                                      :member-name
                                      "continueAsNewWorkflowExecutionDecisionAttributes")
                                     (record-marker-decision-attributes
                                      :target-type
                                      record-marker-decision-attributes
                                      :member-name
                                      "recordMarkerDecisionAttributes")
                                     (start-timer-decision-attributes
                                      :target-type
                                      start-timer-decision-attributes
                                      :member-name
                                      "startTimerDecisionAttributes")
                                     (cancel-timer-decision-attributes
                                      :target-type
                                      cancel-timer-decision-attributes
                                      :member-name
                                      "cancelTimerDecisionAttributes")
                                     (signal-external-workflow-execution-decision-attributes
                                      :target-type
                                      signal-external-workflow-execution-decision-attributes
                                      :member-name
                                      "signalExternalWorkflowExecutionDecisionAttributes")
                                     (request-cancel-external-workflow-execution-decision-attributes
                                      :target-type
                                      request-cancel-external-workflow-execution-decision-attributes
                                      :member-name
                                      "requestCancelExternalWorkflowExecutionDecisionAttributes")
                                     (start-child-workflow-execution-decision-attributes
                                      :target-type
                                      start-child-workflow-execution-decision-attributes
                                      :member-name
                                      "startChildWorkflowExecutionDecisionAttributes")
                                     (schedule-lambda-function-decision-attributes
                                      :target-type
                                      schedule-lambda-function-decision-attributes
                                      :member-name
                                      "scheduleLambdaFunctionDecisionAttributes"))
                                    (:shape-name "Decision"))

(smithy/sdk/shapes:define-list decision-list :member decision)

(smithy/sdk/shapes:define-structure decision-task common-lisp:nil
                                    ((task-token :target-type task-token
                                      :required common-lisp:t :member-name
                                      "taskToken")
                                     (started-event-id :target-type event-id
                                      :required common-lisp:t :member-name
                                      "startedEventId")
                                     (workflow-execution :target-type
                                      workflow-execution :required
                                      common-lisp:t :member-name
                                      "workflowExecution")
                                     (workflow-type :target-type workflow-type
                                      :required common-lisp:t :member-name
                                      "workflowType")
                                     (events :target-type history-event-list
                                      :required common-lisp:t :member-name
                                      "events")
                                     (next-page-token :target-type page-token
                                      :member-name "nextPageToken")
                                     (previous-started-event-id :target-type
                                      event-id :member-name
                                      "previousStartedEventId"))
                                    (:shape-name "DecisionTask"))

(smithy/sdk/shapes:define-structure decision-task-completed-event-attributes
                                    common-lisp:nil
                                    ((execution-context :target-type data
                                      :member-name "executionContext")
                                     (scheduled-event-id :target-type event-id
                                      :required common-lisp:t :member-name
                                      "scheduledEventId")
                                     (started-event-id :target-type event-id
                                      :required common-lisp:t :member-name
                                      "startedEventId")
                                     (task-list :target-type task-list
                                      :member-name "taskList")
                                     (task-list-schedule-to-start-timeout
                                      :target-type duration-in-seconds-optional
                                      :member-name
                                      "taskListScheduleToStartTimeout"))
                                    (:shape-name
                                     "DecisionTaskCompletedEventAttributes"))

(smithy/sdk/shapes:define-structure decision-task-scheduled-event-attributes
                                    common-lisp:nil
                                    ((task-list :target-type task-list
                                      :required common-lisp:t :member-name
                                      "taskList")
                                     (task-priority :target-type task-priority
                                      :member-name "taskPriority")
                                     (start-to-close-timeout :target-type
                                      duration-in-seconds-optional :member-name
                                      "startToCloseTimeout")
                                     (schedule-to-start-timeout :target-type
                                      duration-in-seconds-optional :member-name
                                      "scheduleToStartTimeout"))
                                    (:shape-name
                                     "DecisionTaskScheduledEventAttributes"))

(smithy/sdk/shapes:define-structure decision-task-started-event-attributes
                                    common-lisp:nil
                                    ((identity :target-type identity
                                      :member-name "identity")
                                     (scheduled-event-id :target-type event-id
                                      :required common-lisp:t :member-name
                                      "scheduledEventId"))
                                    (:shape-name
                                     "DecisionTaskStartedEventAttributes"))

(smithy/sdk/shapes:define-structure decision-task-timed-out-event-attributes
                                    common-lisp:nil
                                    ((timeout-type :target-type
                                      decision-task-timeout-type :required
                                      common-lisp:t :member-name "timeoutType")
                                     (scheduled-event-id :target-type event-id
                                      :required common-lisp:t :member-name
                                      "scheduledEventId")
                                     (started-event-id :target-type event-id
                                      :required common-lisp:t :member-name
                                      "startedEventId"))
                                    (:shape-name
                                     "DecisionTaskTimedOutEventAttributes"))

(smithy/sdk/shapes:define-enum decision-task-timeout-type
    common-lisp:nil
  (:start-to-close "START_TO_CLOSE")
  (:schedule-to-start "SCHEDULE_TO_START"))

(smithy/sdk/shapes:define-enum decision-type
    common-lisp:nil
  (:schedule-activity-task "ScheduleActivityTask")
  (:request-cancel-activity-task "RequestCancelActivityTask")
  (:complete-workflow-execution "CompleteWorkflowExecution")
  (:fail-workflow-execution "FailWorkflowExecution")
  (:cancel-workflow-execution "CancelWorkflowExecution")
  (:continue-as-new-workflow-execution "ContinueAsNewWorkflowExecution")
  (:record-marker "RecordMarker")
  (:start-timer "StartTimer")
  (:cancel-timer "CancelTimer")
  (:signal-external-workflow-execution "SignalExternalWorkflowExecution")
  (:request-cancel-external-workflow-execution
   "RequestCancelExternalWorkflowExecution")
  (:start-child-workflow-execution "StartChildWorkflowExecution")
  (:schedule-lambda-function "ScheduleLambdaFunction"))

(smithy/sdk/shapes:define-error default-undefined-fault common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "DefaultUndefinedFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-input delete-activity-type-input common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain")
                                 (activity-type :target-type activity-type
                                  :required common-lisp:t :member-name
                                  "activityType"))
                                (:shape-name "DeleteActivityTypeInput"))

(smithy/sdk/shapes:define-input delete-workflow-type-input common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain")
                                 (workflow-type :target-type workflow-type
                                  :required common-lisp:t :member-name
                                  "workflowType"))
                                (:shape-name "DeleteWorkflowTypeInput"))

(smithy/sdk/shapes:define-input deprecate-activity-type-input common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain")
                                 (activity-type :target-type activity-type
                                  :required common-lisp:t :member-name
                                  "activityType"))
                                (:shape-name "DeprecateActivityTypeInput"))

(smithy/sdk/shapes:define-input deprecate-domain-input common-lisp:nil
                                ((name :target-type domain-name :required
                                  common-lisp:t :member-name "name"))
                                (:shape-name "DeprecateDomainInput"))

(smithy/sdk/shapes:define-input deprecate-workflow-type-input common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain")
                                 (workflow-type :target-type workflow-type
                                  :required common-lisp:t :member-name
                                  "workflowType"))
                                (:shape-name "DeprecateWorkflowTypeInput"))

(smithy/sdk/shapes:define-input describe-activity-type-input common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain")
                                 (activity-type :target-type activity-type
                                  :required common-lisp:t :member-name
                                  "activityType"))
                                (:shape-name "DescribeActivityTypeInput"))

(smithy/sdk/shapes:define-input describe-domain-input common-lisp:nil
                                ((name :target-type domain-name :required
                                  common-lisp:t :member-name "name"))
                                (:shape-name "DescribeDomainInput"))

(smithy/sdk/shapes:define-input describe-workflow-execution-input
                                common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain")
                                 (execution :target-type workflow-execution
                                  :required common-lisp:t :member-name
                                  "execution"))
                                (:shape-name "DescribeWorkflowExecutionInput"))

(smithy/sdk/shapes:define-input describe-workflow-type-input common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain")
                                 (workflow-type :target-type workflow-type
                                  :required common-lisp:t :member-name
                                  "workflowType"))
                                (:shape-name "DescribeWorkflowTypeInput"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error domain-already-exists-fault common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "DomainAlreadyExistsFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure domain-configuration common-lisp:nil
                                    ((workflow-execution-retention-period-in-days
                                      :target-type duration-in-days :required
                                      common-lisp:t :member-name
                                      "workflowExecutionRetentionPeriodInDays"))
                                    (:shape-name "DomainConfiguration"))

(smithy/sdk/shapes:define-error domain-deprecated-fault common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "DomainDeprecatedFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure domain-detail common-lisp:nil
                                    ((domain-info :target-type domain-info
                                      :required common-lisp:t :member-name
                                      "domainInfo")
                                     (configuration :target-type
                                      domain-configuration :required
                                      common-lisp:t :member-name
                                      "configuration"))
                                    (:shape-name "DomainDetail"))

(smithy/sdk/shapes:define-structure domain-info common-lisp:nil
                                    ((name :target-type domain-name :required
                                      common-lisp:t :member-name "name")
                                     (status :target-type registration-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (description :target-type description
                                      :member-name "description")
                                     (arn :target-type arn :member-name "arn"))
                                    (:shape-name "DomainInfo"))

(smithy/sdk/shapes:define-list domain-info-list :member domain-info)

(smithy/sdk/shapes:define-structure domain-infos common-lisp:nil
                                    ((domain-infos :target-type
                                      domain-info-list :required common-lisp:t
                                      :member-name "domainInfos")
                                     (next-page-token :target-type page-token
                                      :member-name "nextPageToken"))
                                    (:shape-name "DomainInfos"))

(smithy/sdk/shapes:define-type domain-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type duration-in-days smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type duration-in-seconds
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type duration-in-seconds-optional
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type event-id smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-enum event-type
    common-lisp:nil
  (:workflow-execution-started "WorkflowExecutionStarted")
  (:workflow-execution-cancel-requested "WorkflowExecutionCancelRequested")
  (:workflow-execution-completed "WorkflowExecutionCompleted")
  (:complete-workflow-execution-failed "CompleteWorkflowExecutionFailed")
  (:workflow-execution-failed "WorkflowExecutionFailed")
  (:fail-workflow-execution-failed "FailWorkflowExecutionFailed")
  (:workflow-execution-timed-out "WorkflowExecutionTimedOut")
  (:workflow-execution-canceled "WorkflowExecutionCanceled")
  (:cancel-workflow-execution-failed "CancelWorkflowExecutionFailed")
  (:workflow-execution-continued-as-new "WorkflowExecutionContinuedAsNew")
  (:continue-as-new-workflow-execution-failed
   "ContinueAsNewWorkflowExecutionFailed")
  (:workflow-execution-terminated "WorkflowExecutionTerminated")
  (:decision-task-scheduled "DecisionTaskScheduled")
  (:decision-task-started "DecisionTaskStarted")
  (:decision-task-completed "DecisionTaskCompleted")
  (:decision-task-timed-out "DecisionTaskTimedOut")
  (:activity-task-scheduled "ActivityTaskScheduled")
  (:schedule-activity-task-failed "ScheduleActivityTaskFailed")
  (:activity-task-started "ActivityTaskStarted")
  (:activity-task-completed "ActivityTaskCompleted")
  (:activity-task-failed "ActivityTaskFailed")
  (:activity-task-timed-out "ActivityTaskTimedOut")
  (:activity-task-canceled "ActivityTaskCanceled")
  (:activity-task-cancel-requested "ActivityTaskCancelRequested")
  (:request-cancel-activity-task-failed "RequestCancelActivityTaskFailed")
  (:workflow-execution-signaled "WorkflowExecutionSignaled")
  (:marker-recorded "MarkerRecorded")
  (:record-marker-failed "RecordMarkerFailed")
  (:timer-started "TimerStarted")
  (:start-timer-failed "StartTimerFailed")
  (:timer-fired "TimerFired")
  (:timer-canceled "TimerCanceled")
  (:cancel-timer-failed "CancelTimerFailed")
  (:start-child-workflow-execution-initiated
   "StartChildWorkflowExecutionInitiated")
  (:start-child-workflow-execution-failed "StartChildWorkflowExecutionFailed")
  (:child-workflow-execution-started "ChildWorkflowExecutionStarted")
  (:child-workflow-execution-completed "ChildWorkflowExecutionCompleted")
  (:child-workflow-execution-failed "ChildWorkflowExecutionFailed")
  (:child-workflow-execution-timed-out "ChildWorkflowExecutionTimedOut")
  (:child-workflow-execution-canceled "ChildWorkflowExecutionCanceled")
  (:child-workflow-execution-terminated "ChildWorkflowExecutionTerminated")
  (:signal-external-workflow-execution-initiated
   "SignalExternalWorkflowExecutionInitiated")
  (:signal-external-workflow-execution-failed
   "SignalExternalWorkflowExecutionFailed")
  (:external-workflow-execution-signaled "ExternalWorkflowExecutionSignaled")
  (:request-cancel-external-workflow-execution-initiated
   "RequestCancelExternalWorkflowExecutionInitiated")
  (:request-cancel-external-workflow-execution-failed
   "RequestCancelExternalWorkflowExecutionFailed")
  (:external-workflow-execution-cancel-requested
   "ExternalWorkflowExecutionCancelRequested")
  (:lambda-function-scheduled "LambdaFunctionScheduled")
  (:lambda-function-started "LambdaFunctionStarted")
  (:lambda-function-completed "LambdaFunctionCompleted")
  (:lambda-function-failed "LambdaFunctionFailed")
  (:lambda-function-timed-out "LambdaFunctionTimedOut")
  (:schedule-lambda-function-failed "ScheduleLambdaFunctionFailed")
  (:start-lambda-function-failed "StartLambdaFunctionFailed"))

(smithy/sdk/shapes:define-enum execution-status
    common-lisp:nil
  (:open "OPEN")
  (:closed "CLOSED"))

(smithy/sdk/shapes:define-structure execution-time-filter common-lisp:nil
                                    ((oldest-date :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "oldestDate")
                                     (latest-date :target-type timestamp
                                      :member-name "latestDate"))
                                    (:shape-name "ExecutionTimeFilter"))

(smithy/sdk/shapes:define-structure
 external-workflow-execution-cancel-requested-event-attributes common-lisp:nil
 ((workflow-execution :target-type workflow-execution :required common-lisp:t
   :member-name "workflowExecution")
  (initiated-event-id :target-type event-id :required common-lisp:t
   :member-name "initiatedEventId"))
 (:shape-name "ExternalWorkflowExecutionCancelRequestedEventAttributes"))

(smithy/sdk/shapes:define-structure
 external-workflow-execution-signaled-event-attributes common-lisp:nil
 ((workflow-execution :target-type workflow-execution :required common-lisp:t
   :member-name "workflowExecution")
  (initiated-event-id :target-type event-id :required common-lisp:t
   :member-name "initiatedEventId"))
 (:shape-name "ExternalWorkflowExecutionSignaledEventAttributes"))

(smithy/sdk/shapes:define-structure fail-workflow-execution-decision-attributes
                                    common-lisp:nil
                                    ((reason :target-type failure-reason
                                      :member-name "reason")
                                     (details :target-type data :member-name
                                      "details"))
                                    (:shape-name
                                     "FailWorkflowExecutionDecisionAttributes"))

(smithy/sdk/shapes:define-enum fail-workflow-execution-failed-cause
    common-lisp:nil
  (:unhandled-decision "UNHANDLED_DECISION")
  (:operation-not-permitted "OPERATION_NOT_PERMITTED"))

(smithy/sdk/shapes:define-structure
 fail-workflow-execution-failed-event-attributes common-lisp:nil
 ((cause :target-type fail-workflow-execution-failed-cause :required
   common-lisp:t :member-name "cause")
  (decision-task-completed-event-id :target-type event-id :required
   common-lisp:t :member-name "decisionTaskCompletedEventId"))
 (:shape-name "FailWorkflowExecutionFailedEventAttributes"))

(smithy/sdk/shapes:define-type failure-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type function-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type function-input smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type function-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-workflow-execution-history-input
                                common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain")
                                 (execution :target-type workflow-execution
                                  :required common-lisp:t :member-name
                                  "execution")
                                 (next-page-token :target-type page-token
                                  :member-name "nextPageToken")
                                 (maximum-page-size :target-type page-size
                                  :member-name "maximumPageSize")
                                 (reverse-order :target-type reverse-order
                                  :member-name "reverseOrder"))
                                (:shape-name
                                 "GetWorkflowExecutionHistoryInput"))

(smithy/sdk/shapes:define-structure history common-lisp:nil
                                    ((events :target-type history-event-list
                                      :required common-lisp:t :member-name
                                      "events")
                                     (next-page-token :target-type page-token
                                      :member-name "nextPageToken"))
                                    (:shape-name "History"))

(smithy/sdk/shapes:define-structure history-event common-lisp:nil
                                    ((event-timestamp :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "eventTimestamp")
                                     (event-type :target-type event-type
                                      :required common-lisp:t :member-name
                                      "eventType")
                                     (event-id :target-type event-id :required
                                      common-lisp:t :member-name "eventId")
                                     (workflow-execution-started-event-attributes
                                      :target-type
                                      workflow-execution-started-event-attributes
                                      :member-name
                                      "workflowExecutionStartedEventAttributes")
                                     (workflow-execution-completed-event-attributes
                                      :target-type
                                      workflow-execution-completed-event-attributes
                                      :member-name
                                      "workflowExecutionCompletedEventAttributes")
                                     (complete-workflow-execution-failed-event-attributes
                                      :target-type
                                      complete-workflow-execution-failed-event-attributes
                                      :member-name
                                      "completeWorkflowExecutionFailedEventAttributes")
                                     (workflow-execution-failed-event-attributes
                                      :target-type
                                      workflow-execution-failed-event-attributes
                                      :member-name
                                      "workflowExecutionFailedEventAttributes")
                                     (fail-workflow-execution-failed-event-attributes
                                      :target-type
                                      fail-workflow-execution-failed-event-attributes
                                      :member-name
                                      "failWorkflowExecutionFailedEventAttributes")
                                     (workflow-execution-timed-out-event-attributes
                                      :target-type
                                      workflow-execution-timed-out-event-attributes
                                      :member-name
                                      "workflowExecutionTimedOutEventAttributes")
                                     (workflow-execution-canceled-event-attributes
                                      :target-type
                                      workflow-execution-canceled-event-attributes
                                      :member-name
                                      "workflowExecutionCanceledEventAttributes")
                                     (cancel-workflow-execution-failed-event-attributes
                                      :target-type
                                      cancel-workflow-execution-failed-event-attributes
                                      :member-name
                                      "cancelWorkflowExecutionFailedEventAttributes")
                                     (workflow-execution-continued-as-new-event-attributes
                                      :target-type
                                      workflow-execution-continued-as-new-event-attributes
                                      :member-name
                                      "workflowExecutionContinuedAsNewEventAttributes")
                                     (continue-as-new-workflow-execution-failed-event-attributes
                                      :target-type
                                      continue-as-new-workflow-execution-failed-event-attributes
                                      :member-name
                                      "continueAsNewWorkflowExecutionFailedEventAttributes")
                                     (workflow-execution-terminated-event-attributes
                                      :target-type
                                      workflow-execution-terminated-event-attributes
                                      :member-name
                                      "workflowExecutionTerminatedEventAttributes")
                                     (workflow-execution-cancel-requested-event-attributes
                                      :target-type
                                      workflow-execution-cancel-requested-event-attributes
                                      :member-name
                                      "workflowExecutionCancelRequestedEventAttributes")
                                     (decision-task-scheduled-event-attributes
                                      :target-type
                                      decision-task-scheduled-event-attributes
                                      :member-name
                                      "decisionTaskScheduledEventAttributes")
                                     (decision-task-started-event-attributes
                                      :target-type
                                      decision-task-started-event-attributes
                                      :member-name
                                      "decisionTaskStartedEventAttributes")
                                     (decision-task-completed-event-attributes
                                      :target-type
                                      decision-task-completed-event-attributes
                                      :member-name
                                      "decisionTaskCompletedEventAttributes")
                                     (decision-task-timed-out-event-attributes
                                      :target-type
                                      decision-task-timed-out-event-attributes
                                      :member-name
                                      "decisionTaskTimedOutEventAttributes")
                                     (activity-task-scheduled-event-attributes
                                      :target-type
                                      activity-task-scheduled-event-attributes
                                      :member-name
                                      "activityTaskScheduledEventAttributes")
                                     (activity-task-started-event-attributes
                                      :target-type
                                      activity-task-started-event-attributes
                                      :member-name
                                      "activityTaskStartedEventAttributes")
                                     (activity-task-completed-event-attributes
                                      :target-type
                                      activity-task-completed-event-attributes
                                      :member-name
                                      "activityTaskCompletedEventAttributes")
                                     (activity-task-failed-event-attributes
                                      :target-type
                                      activity-task-failed-event-attributes
                                      :member-name
                                      "activityTaskFailedEventAttributes")
                                     (activity-task-timed-out-event-attributes
                                      :target-type
                                      activity-task-timed-out-event-attributes
                                      :member-name
                                      "activityTaskTimedOutEventAttributes")
                                     (activity-task-canceled-event-attributes
                                      :target-type
                                      activity-task-canceled-event-attributes
                                      :member-name
                                      "activityTaskCanceledEventAttributes")
                                     (activity-task-cancel-requested-event-attributes
                                      :target-type
                                      activity-task-cancel-requested-event-attributes
                                      :member-name
                                      "activityTaskCancelRequestedEventAttributes")
                                     (workflow-execution-signaled-event-attributes
                                      :target-type
                                      workflow-execution-signaled-event-attributes
                                      :member-name
                                      "workflowExecutionSignaledEventAttributes")
                                     (marker-recorded-event-attributes
                                      :target-type
                                      marker-recorded-event-attributes
                                      :member-name
                                      "markerRecordedEventAttributes")
                                     (record-marker-failed-event-attributes
                                      :target-type
                                      record-marker-failed-event-attributes
                                      :member-name
                                      "recordMarkerFailedEventAttributes")
                                     (timer-started-event-attributes
                                      :target-type
                                      timer-started-event-attributes
                                      :member-name
                                      "timerStartedEventAttributes")
                                     (timer-fired-event-attributes :target-type
                                      timer-fired-event-attributes :member-name
                                      "timerFiredEventAttributes")
                                     (timer-canceled-event-attributes
                                      :target-type
                                      timer-canceled-event-attributes
                                      :member-name
                                      "timerCanceledEventAttributes")
                                     (start-child-workflow-execution-initiated-event-attributes
                                      :target-type
                                      start-child-workflow-execution-initiated-event-attributes
                                      :member-name
                                      "startChildWorkflowExecutionInitiatedEventAttributes")
                                     (child-workflow-execution-started-event-attributes
                                      :target-type
                                      child-workflow-execution-started-event-attributes
                                      :member-name
                                      "childWorkflowExecutionStartedEventAttributes")
                                     (child-workflow-execution-completed-event-attributes
                                      :target-type
                                      child-workflow-execution-completed-event-attributes
                                      :member-name
                                      "childWorkflowExecutionCompletedEventAttributes")
                                     (child-workflow-execution-failed-event-attributes
                                      :target-type
                                      child-workflow-execution-failed-event-attributes
                                      :member-name
                                      "childWorkflowExecutionFailedEventAttributes")
                                     (child-workflow-execution-timed-out-event-attributes
                                      :target-type
                                      child-workflow-execution-timed-out-event-attributes
                                      :member-name
                                      "childWorkflowExecutionTimedOutEventAttributes")
                                     (child-workflow-execution-canceled-event-attributes
                                      :target-type
                                      child-workflow-execution-canceled-event-attributes
                                      :member-name
                                      "childWorkflowExecutionCanceledEventAttributes")
                                     (child-workflow-execution-terminated-event-attributes
                                      :target-type
                                      child-workflow-execution-terminated-event-attributes
                                      :member-name
                                      "childWorkflowExecutionTerminatedEventAttributes")
                                     (signal-external-workflow-execution-initiated-event-attributes
                                      :target-type
                                      signal-external-workflow-execution-initiated-event-attributes
                                      :member-name
                                      "signalExternalWorkflowExecutionInitiatedEventAttributes")
                                     (external-workflow-execution-signaled-event-attributes
                                      :target-type
                                      external-workflow-execution-signaled-event-attributes
                                      :member-name
                                      "externalWorkflowExecutionSignaledEventAttributes")
                                     (signal-external-workflow-execution-failed-event-attributes
                                      :target-type
                                      signal-external-workflow-execution-failed-event-attributes
                                      :member-name
                                      "signalExternalWorkflowExecutionFailedEventAttributes")
                                     (external-workflow-execution-cancel-requested-event-attributes
                                      :target-type
                                      external-workflow-execution-cancel-requested-event-attributes
                                      :member-name
                                      "externalWorkflowExecutionCancelRequestedEventAttributes")
                                     (request-cancel-external-workflow-execution-initiated-event-attributes
                                      :target-type
                                      request-cancel-external-workflow-execution-initiated-event-attributes
                                      :member-name
                                      "requestCancelExternalWorkflowExecutionInitiatedEventAttributes")
                                     (request-cancel-external-workflow-execution-failed-event-attributes
                                      :target-type
                                      request-cancel-external-workflow-execution-failed-event-attributes
                                      :member-name
                                      "requestCancelExternalWorkflowExecutionFailedEventAttributes")
                                     (schedule-activity-task-failed-event-attributes
                                      :target-type
                                      schedule-activity-task-failed-event-attributes
                                      :member-name
                                      "scheduleActivityTaskFailedEventAttributes")
                                     (request-cancel-activity-task-failed-event-attributes
                                      :target-type
                                      request-cancel-activity-task-failed-event-attributes
                                      :member-name
                                      "requestCancelActivityTaskFailedEventAttributes")
                                     (start-timer-failed-event-attributes
                                      :target-type
                                      start-timer-failed-event-attributes
                                      :member-name
                                      "startTimerFailedEventAttributes")
                                     (cancel-timer-failed-event-attributes
                                      :target-type
                                      cancel-timer-failed-event-attributes
                                      :member-name
                                      "cancelTimerFailedEventAttributes")
                                     (start-child-workflow-execution-failed-event-attributes
                                      :target-type
                                      start-child-workflow-execution-failed-event-attributes
                                      :member-name
                                      "startChildWorkflowExecutionFailedEventAttributes")
                                     (lambda-function-scheduled-event-attributes
                                      :target-type
                                      lambda-function-scheduled-event-attributes
                                      :member-name
                                      "lambdaFunctionScheduledEventAttributes")
                                     (lambda-function-started-event-attributes
                                      :target-type
                                      lambda-function-started-event-attributes
                                      :member-name
                                      "lambdaFunctionStartedEventAttributes")
                                     (lambda-function-completed-event-attributes
                                      :target-type
                                      lambda-function-completed-event-attributes
                                      :member-name
                                      "lambdaFunctionCompletedEventAttributes")
                                     (lambda-function-failed-event-attributes
                                      :target-type
                                      lambda-function-failed-event-attributes
                                      :member-name
                                      "lambdaFunctionFailedEventAttributes")
                                     (lambda-function-timed-out-event-attributes
                                      :target-type
                                      lambda-function-timed-out-event-attributes
                                      :member-name
                                      "lambdaFunctionTimedOutEventAttributes")
                                     (schedule-lambda-function-failed-event-attributes
                                      :target-type
                                      schedule-lambda-function-failed-event-attributes
                                      :member-name
                                      "scheduleLambdaFunctionFailedEventAttributes")
                                     (start-lambda-function-failed-event-attributes
                                      :target-type
                                      start-lambda-function-failed-event-attributes
                                      :member-name
                                      "startLambdaFunctionFailedEventAttributes"))
                                    (:shape-name "HistoryEvent"))

(smithy/sdk/shapes:define-list history-event-list :member history-event)

(smithy/sdk/shapes:define-type identity smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lambda-function-completed-event-attributes
                                    common-lisp:nil
                                    ((scheduled-event-id :target-type event-id
                                      :required common-lisp:t :member-name
                                      "scheduledEventId")
                                     (started-event-id :target-type event-id
                                      :required common-lisp:t :member-name
                                      "startedEventId")
                                     (result :target-type data :member-name
                                      "result"))
                                    (:shape-name
                                     "LambdaFunctionCompletedEventAttributes"))

(smithy/sdk/shapes:define-structure lambda-function-failed-event-attributes
                                    common-lisp:nil
                                    ((scheduled-event-id :target-type event-id
                                      :required common-lisp:t :member-name
                                      "scheduledEventId")
                                     (started-event-id :target-type event-id
                                      :required common-lisp:t :member-name
                                      "startedEventId")
                                     (reason :target-type failure-reason
                                      :member-name "reason")
                                     (details :target-type data :member-name
                                      "details"))
                                    (:shape-name
                                     "LambdaFunctionFailedEventAttributes"))

(smithy/sdk/shapes:define-structure lambda-function-scheduled-event-attributes
                                    common-lisp:nil
                                    ((id :target-type function-id :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type function-name :required
                                      common-lisp:t :member-name "name")
                                     (control :target-type data :member-name
                                      "control")
                                     (input :target-type function-input
                                      :member-name "input")
                                     (start-to-close-timeout :target-type
                                      duration-in-seconds-optional :member-name
                                      "startToCloseTimeout")
                                     (decision-task-completed-event-id
                                      :target-type event-id :required
                                      common-lisp:t :member-name
                                      "decisionTaskCompletedEventId"))
                                    (:shape-name
                                     "LambdaFunctionScheduledEventAttributes"))

(smithy/sdk/shapes:define-structure lambda-function-started-event-attributes
                                    common-lisp:nil
                                    ((scheduled-event-id :target-type event-id
                                      :required common-lisp:t :member-name
                                      "scheduledEventId"))
                                    (:shape-name
                                     "LambdaFunctionStartedEventAttributes"))

(smithy/sdk/shapes:define-structure lambda-function-timed-out-event-attributes
                                    common-lisp:nil
                                    ((scheduled-event-id :target-type event-id
                                      :required common-lisp:t :member-name
                                      "scheduledEventId")
                                     (started-event-id :target-type event-id
                                      :required common-lisp:t :member-name
                                      "startedEventId")
                                     (timeout-type :target-type
                                      lambda-function-timeout-type :member-name
                                      "timeoutType"))
                                    (:shape-name
                                     "LambdaFunctionTimedOutEventAttributes"))

(smithy/sdk/shapes:define-enum lambda-function-timeout-type
    common-lisp:nil
  (:start-to-close "START_TO_CLOSE"))

(smithy/sdk/shapes:define-error limit-exceeded-fault common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "LimitExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-type limited-data smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-activity-types-input common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain")
                                 (name :target-type name :member-name "name")
                                 (registration-status :target-type
                                  registration-status :required common-lisp:t
                                  :member-name "registrationStatus")
                                 (next-page-token :target-type page-token
                                  :member-name "nextPageToken")
                                 (maximum-page-size :target-type page-size
                                  :member-name "maximumPageSize")
                                 (reverse-order :target-type reverse-order
                                  :member-name "reverseOrder"))
                                (:shape-name "ListActivityTypesInput"))

(smithy/sdk/shapes:define-input list-closed-workflow-executions-input
                                common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain")
                                 (start-time-filter :target-type
                                  execution-time-filter :member-name
                                  "startTimeFilter")
                                 (close-time-filter :target-type
                                  execution-time-filter :member-name
                                  "closeTimeFilter")
                                 (execution-filter :target-type
                                  workflow-execution-filter :member-name
                                  "executionFilter")
                                 (close-status-filter :target-type
                                  close-status-filter :member-name
                                  "closeStatusFilter")
                                 (type-filter :target-type workflow-type-filter
                                  :member-name "typeFilter")
                                 (tag-filter :target-type tag-filter
                                  :member-name "tagFilter")
                                 (next-page-token :target-type page-token
                                  :member-name "nextPageToken")
                                 (maximum-page-size :target-type page-size
                                  :member-name "maximumPageSize")
                                 (reverse-order :target-type reverse-order
                                  :member-name "reverseOrder"))
                                (:shape-name
                                 "ListClosedWorkflowExecutionsInput"))

(smithy/sdk/shapes:define-input list-domains-input common-lisp:nil
                                ((next-page-token :target-type page-token
                                  :member-name "nextPageToken")
                                 (registration-status :target-type
                                  registration-status :required common-lisp:t
                                  :member-name "registrationStatus")
                                 (maximum-page-size :target-type page-size
                                  :member-name "maximumPageSize")
                                 (reverse-order :target-type reverse-order
                                  :member-name "reverseOrder"))
                                (:shape-name "ListDomainsInput"))

(smithy/sdk/shapes:define-input list-open-workflow-executions-input
                                common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain")
                                 (start-time-filter :target-type
                                  execution-time-filter :required common-lisp:t
                                  :member-name "startTimeFilter")
                                 (type-filter :target-type workflow-type-filter
                                  :member-name "typeFilter")
                                 (tag-filter :target-type tag-filter
                                  :member-name "tagFilter")
                                 (next-page-token :target-type page-token
                                  :member-name "nextPageToken")
                                 (maximum-page-size :target-type page-size
                                  :member-name "maximumPageSize")
                                 (reverse-order :target-type reverse-order
                                  :member-name "reverseOrder")
                                 (execution-filter :target-type
                                  workflow-execution-filter :member-name
                                  "executionFilter"))
                                (:shape-name "ListOpenWorkflowExecutionsInput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-input common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"))
                                (:shape-name "ListTagsForResourceInput"))

(smithy/sdk/shapes:define-output list-tags-for-resource-output common-lisp:nil
                                 ((tags :target-type resource-tag-list
                                   :member-name "tags"))
                                 (:shape-name "ListTagsForResourceOutput"))

(smithy/sdk/shapes:define-input list-workflow-types-input common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain")
                                 (name :target-type name :member-name "name")
                                 (registration-status :target-type
                                  registration-status :required common-lisp:t
                                  :member-name "registrationStatus")
                                 (next-page-token :target-type page-token
                                  :member-name "nextPageToken")
                                 (maximum-page-size :target-type page-size
                                  :member-name "maximumPageSize")
                                 (reverse-order :target-type reverse-order
                                  :member-name "reverseOrder"))
                                (:shape-name "ListWorkflowTypesInput"))

(smithy/sdk/shapes:define-type marker-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure marker-recorded-event-attributes
                                    common-lisp:nil
                                    ((marker-name :target-type marker-name
                                      :required common-lisp:t :member-name
                                      "markerName")
                                     (details :target-type data :member-name
                                      "details")
                                     (decision-task-completed-event-id
                                      :target-type event-id :required
                                      common-lisp:t :member-name
                                      "decisionTaskCompletedEventId"))
                                    (:shape-name
                                     "MarkerRecordedEventAttributes"))

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type open-decision-tasks-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error operation-not-permitted-fault common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "OperationNotPermittedFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-type page-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type page-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure pending-task-count common-lisp:nil
                                    ((count :target-type count :required
                                      common-lisp:t :member-name "count")
                                     (truncated :target-type truncated
                                      :member-name "truncated"))
                                    (:shape-name "PendingTaskCount"))

(smithy/sdk/shapes:define-input poll-for-activity-task-input common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain")
                                 (task-list :target-type task-list :required
                                  common-lisp:t :member-name "taskList")
                                 (identity :target-type identity :member-name
                                  "identity"))
                                (:shape-name "PollForActivityTaskInput"))

(smithy/sdk/shapes:define-input poll-for-decision-task-input common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain")
                                 (task-list :target-type task-list :required
                                  common-lisp:t :member-name "taskList")
                                 (identity :target-type identity :member-name
                                  "identity")
                                 (next-page-token :target-type page-token
                                  :member-name "nextPageToken")
                                 (maximum-page-size :target-type page-size
                                  :member-name "maximumPageSize")
                                 (reverse-order :target-type reverse-order
                                  :member-name "reverseOrder")
                                 (start-at-previous-started-event :target-type
                                  start-at-previous-started-event :member-name
                                  "startAtPreviousStartedEvent"))
                                (:shape-name "PollForDecisionTaskInput"))

(smithy/sdk/shapes:define-input record-activity-task-heartbeat-input
                                common-lisp:nil
                                ((task-token :target-type task-token :required
                                  common-lisp:t :member-name "taskToken")
                                 (details :target-type limited-data
                                  :member-name "details"))
                                (:shape-name
                                 "RecordActivityTaskHeartbeatInput"))

(smithy/sdk/shapes:define-structure record-marker-decision-attributes
                                    common-lisp:nil
                                    ((marker-name :target-type marker-name
                                      :required common-lisp:t :member-name
                                      "markerName")
                                     (details :target-type data :member-name
                                      "details"))
                                    (:shape-name
                                     "RecordMarkerDecisionAttributes"))

(smithy/sdk/shapes:define-enum record-marker-failed-cause
    common-lisp:nil
  (:operation-not-permitted "OPERATION_NOT_PERMITTED"))

(smithy/sdk/shapes:define-structure record-marker-failed-event-attributes
                                    common-lisp:nil
                                    ((marker-name :target-type marker-name
                                      :required common-lisp:t :member-name
                                      "markerName")
                                     (cause :target-type
                                      record-marker-failed-cause :required
                                      common-lisp:t :member-name "cause")
                                     (decision-task-completed-event-id
                                      :target-type event-id :required
                                      common-lisp:t :member-name
                                      "decisionTaskCompletedEventId"))
                                    (:shape-name
                                     "RecordMarkerFailedEventAttributes"))

(smithy/sdk/shapes:define-input register-activity-type-input common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain")
                                 (name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (version :target-type version :required
                                  common-lisp:t :member-name "version")
                                 (description :target-type description
                                  :member-name "description")
                                 (default-task-start-to-close-timeout
                                  :target-type duration-in-seconds-optional
                                  :member-name
                                  "defaultTaskStartToCloseTimeout")
                                 (default-task-heartbeat-timeout :target-type
                                  duration-in-seconds-optional :member-name
                                  "defaultTaskHeartbeatTimeout")
                                 (default-task-list :target-type task-list
                                  :member-name "defaultTaskList")
                                 (default-task-priority :target-type
                                  task-priority :member-name
                                  "defaultTaskPriority")
                                 (default-task-schedule-to-start-timeout
                                  :target-type duration-in-seconds-optional
                                  :member-name
                                  "defaultTaskScheduleToStartTimeout")
                                 (default-task-schedule-to-close-timeout
                                  :target-type duration-in-seconds-optional
                                  :member-name
                                  "defaultTaskScheduleToCloseTimeout"))
                                (:shape-name "RegisterActivityTypeInput"))

(smithy/sdk/shapes:define-input register-domain-input common-lisp:nil
                                ((name :target-type domain-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (workflow-execution-retention-period-in-days
                                  :target-type duration-in-days :required
                                  common-lisp:t :member-name
                                  "workflowExecutionRetentionPeriodInDays")
                                 (tags :target-type resource-tag-list
                                  :member-name "tags"))
                                (:shape-name "RegisterDomainInput"))

(smithy/sdk/shapes:define-input register-workflow-type-input common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain")
                                 (name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (version :target-type version :required
                                  common-lisp:t :member-name "version")
                                 (description :target-type description
                                  :member-name "description")
                                 (default-task-start-to-close-timeout
                                  :target-type duration-in-seconds-optional
                                  :member-name
                                  "defaultTaskStartToCloseTimeout")
                                 (default-execution-start-to-close-timeout
                                  :target-type duration-in-seconds-optional
                                  :member-name
                                  "defaultExecutionStartToCloseTimeout")
                                 (default-task-list :target-type task-list
                                  :member-name "defaultTaskList")
                                 (default-task-priority :target-type
                                  task-priority :member-name
                                  "defaultTaskPriority")
                                 (default-child-policy :target-type
                                  child-policy :member-name
                                  "defaultChildPolicy")
                                 (default-lambda-role :target-type arn
                                  :member-name "defaultLambdaRole"))
                                (:shape-name "RegisterWorkflowTypeInput"))

(smithy/sdk/shapes:define-enum registration-status
    common-lisp:nil
  (:registered "REGISTERED")
  (:deprecated "DEPRECATED"))

(smithy/sdk/shapes:define-structure
 request-cancel-activity-task-decision-attributes common-lisp:nil
 ((activity-id :target-type activity-id :required common-lisp:t :member-name
   "activityId"))
 (:shape-name "RequestCancelActivityTaskDecisionAttributes"))

(smithy/sdk/shapes:define-enum request-cancel-activity-task-failed-cause
    common-lisp:nil
  (:activity-id-unknown "ACTIVITY_ID_UNKNOWN")
  (:operation-not-permitted "OPERATION_NOT_PERMITTED"))

(smithy/sdk/shapes:define-structure
 request-cancel-activity-task-failed-event-attributes common-lisp:nil
 ((activity-id :target-type activity-id :required common-lisp:t :member-name
   "activityId")
  (cause :target-type request-cancel-activity-task-failed-cause :required
   common-lisp:t :member-name "cause")
  (decision-task-completed-event-id :target-type event-id :required
   common-lisp:t :member-name "decisionTaskCompletedEventId"))
 (:shape-name "RequestCancelActivityTaskFailedEventAttributes"))

(smithy/sdk/shapes:define-structure
 request-cancel-external-workflow-execution-decision-attributes common-lisp:nil
 ((workflow-id :target-type workflow-id :required common-lisp:t :member-name
   "workflowId")
  (run-id :target-type workflow-run-id-optional :member-name "runId")
  (control :target-type data :member-name "control"))
 (:shape-name "RequestCancelExternalWorkflowExecutionDecisionAttributes"))

(smithy/sdk/shapes:define-enum request-cancel-external-workflow-execution-failed-cause
    common-lisp:nil
  (:unknown-external-workflow-execution "UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION")
  (:request-cancel-external-workflow-execution-rate-exceeded
   "REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED")
  (:operation-not-permitted "OPERATION_NOT_PERMITTED"))

(smithy/sdk/shapes:define-structure
 request-cancel-external-workflow-execution-failed-event-attributes
 common-lisp:nil
 ((workflow-id :target-type workflow-id :required common-lisp:t :member-name
   "workflowId")
  (run-id :target-type workflow-run-id-optional :member-name "runId")
  (cause :target-type request-cancel-external-workflow-execution-failed-cause
   :required common-lisp:t :member-name "cause")
  (initiated-event-id :target-type event-id :required common-lisp:t
   :member-name "initiatedEventId")
  (decision-task-completed-event-id :target-type event-id :required
   common-lisp:t :member-name "decisionTaskCompletedEventId")
  (control :target-type data :member-name "control"))
 (:shape-name "RequestCancelExternalWorkflowExecutionFailedEventAttributes"))

(smithy/sdk/shapes:define-structure
 request-cancel-external-workflow-execution-initiated-event-attributes
 common-lisp:nil
 ((workflow-id :target-type workflow-id :required common-lisp:t :member-name
   "workflowId")
  (run-id :target-type workflow-run-id-optional :member-name "runId")
  (decision-task-completed-event-id :target-type event-id :required
   common-lisp:t :member-name "decisionTaskCompletedEventId")
  (control :target-type data :member-name "control"))
 (:shape-name "RequestCancelExternalWorkflowExecutionInitiatedEventAttributes"))

(smithy/sdk/shapes:define-input request-cancel-workflow-execution-input
                                common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain")
                                 (workflow-id :target-type workflow-id
                                  :required common-lisp:t :member-name
                                  "workflowId")
                                 (run-id :target-type workflow-run-id-optional
                                  :member-name "runId"))
                                (:shape-name
                                 "RequestCancelWorkflowExecutionInput"))

(smithy/sdk/shapes:define-structure resource-tag common-lisp:nil
                                    ((key :target-type resource-tag-key
                                      :required common-lisp:t :member-name
                                      "key")
                                     (value :target-type resource-tag-value
                                      :member-name "value"))
                                    (:shape-name "ResourceTag"))

(smithy/sdk/shapes:define-type resource-tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-tag-key-list :member resource-tag-key)

(smithy/sdk/shapes:define-list resource-tag-list :member resource-tag)

(smithy/sdk/shapes:define-type resource-tag-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input respond-activity-task-canceled-input
                                common-lisp:nil
                                ((task-token :target-type task-token :required
                                  common-lisp:t :member-name "taskToken")
                                 (details :target-type data :member-name
                                  "details"))
                                (:shape-name
                                 "RespondActivityTaskCanceledInput"))

(smithy/sdk/shapes:define-input respond-activity-task-completed-input
                                common-lisp:nil
                                ((task-token :target-type task-token :required
                                  common-lisp:t :member-name "taskToken")
                                 (result :target-type data :member-name
                                  "result"))
                                (:shape-name
                                 "RespondActivityTaskCompletedInput"))

(smithy/sdk/shapes:define-input respond-activity-task-failed-input
                                common-lisp:nil
                                ((task-token :target-type task-token :required
                                  common-lisp:t :member-name "taskToken")
                                 (reason :target-type failure-reason
                                  :member-name "reason")
                                 (details :target-type data :member-name
                                  "details"))
                                (:shape-name "RespondActivityTaskFailedInput"))

(smithy/sdk/shapes:define-input respond-decision-task-completed-input
                                common-lisp:nil
                                ((task-token :target-type task-token :required
                                  common-lisp:t :member-name "taskToken")
                                 (decisions :target-type decision-list
                                  :member-name "decisions")
                                 (execution-context :target-type data
                                  :member-name "executionContext")
                                 (task-list :target-type task-list :member-name
                                  "taskList")
                                 (task-list-schedule-to-start-timeout
                                  :target-type duration-in-seconds-optional
                                  :member-name
                                  "taskListScheduleToStartTimeout"))
                                (:shape-name
                                 "RespondDecisionTaskCompletedInput"))

(smithy/sdk/shapes:define-type reverse-order smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure run common-lisp:nil
                                    ((run-id :target-type workflow-run-id
                                      :member-name "runId"))
                                    (:shape-name "Run"))

(smithy/sdk/shapes:define-structure schedule-activity-task-decision-attributes
                                    common-lisp:nil
                                    ((activity-type :target-type activity-type
                                      :required common-lisp:t :member-name
                                      "activityType")
                                     (activity-id :target-type activity-id
                                      :required common-lisp:t :member-name
                                      "activityId")
                                     (control :target-type data :member-name
                                      "control")
                                     (input :target-type data :member-name
                                      "input")
                                     (schedule-to-close-timeout :target-type
                                      duration-in-seconds-optional :member-name
                                      "scheduleToCloseTimeout")
                                     (task-list :target-type task-list
                                      :member-name "taskList")
                                     (task-priority :target-type task-priority
                                      :member-name "taskPriority")
                                     (schedule-to-start-timeout :target-type
                                      duration-in-seconds-optional :member-name
                                      "scheduleToStartTimeout")
                                     (start-to-close-timeout :target-type
                                      duration-in-seconds-optional :member-name
                                      "startToCloseTimeout")
                                     (heartbeat-timeout :target-type
                                      duration-in-seconds-optional :member-name
                                      "heartbeatTimeout"))
                                    (:shape-name
                                     "ScheduleActivityTaskDecisionAttributes"))

(smithy/sdk/shapes:define-enum schedule-activity-task-failed-cause
    common-lisp:nil
  (:activity-type-deprecated "ACTIVITY_TYPE_DEPRECATED")
  (:activity-type-does-not-exist "ACTIVITY_TYPE_DOES_NOT_EXIST")
  (:activity-id-already-in-use "ACTIVITY_ID_ALREADY_IN_USE")
  (:open-activities-limit-exceeded "OPEN_ACTIVITIES_LIMIT_EXCEEDED")
  (:activity-creation-rate-exceeded "ACTIVITY_CREATION_RATE_EXCEEDED")
  (:default-schedule-to-close-timeout-undefined
   "DEFAULT_SCHEDULE_TO_CLOSE_TIMEOUT_UNDEFINED")
  (:default-task-list-undefined "DEFAULT_TASK_LIST_UNDEFINED")
  (:default-schedule-to-start-timeout-undefined
   "DEFAULT_SCHEDULE_TO_START_TIMEOUT_UNDEFINED")
  (:default-start-to-close-timeout-undefined
   "DEFAULT_START_TO_CLOSE_TIMEOUT_UNDEFINED")
  (:default-heartbeat-timeout-undefined "DEFAULT_HEARTBEAT_TIMEOUT_UNDEFINED")
  (:operation-not-permitted "OPERATION_NOT_PERMITTED"))

(smithy/sdk/shapes:define-structure
 schedule-activity-task-failed-event-attributes common-lisp:nil
 ((activity-type :target-type activity-type :required common-lisp:t
   :member-name "activityType")
  (activity-id :target-type activity-id :required common-lisp:t :member-name
   "activityId")
  (cause :target-type schedule-activity-task-failed-cause :required
   common-lisp:t :member-name "cause")
  (decision-task-completed-event-id :target-type event-id :required
   common-lisp:t :member-name "decisionTaskCompletedEventId"))
 (:shape-name "ScheduleActivityTaskFailedEventAttributes"))

(smithy/sdk/shapes:define-structure
 schedule-lambda-function-decision-attributes common-lisp:nil
 ((id :target-type function-id :required common-lisp:t :member-name "id")
  (name :target-type function-name :required common-lisp:t :member-name "name")
  (control :target-type data :member-name "control")
  (input :target-type function-input :member-name "input")
  (start-to-close-timeout :target-type duration-in-seconds-optional
   :member-name "startToCloseTimeout"))
 (:shape-name "ScheduleLambdaFunctionDecisionAttributes"))

(smithy/sdk/shapes:define-enum schedule-lambda-function-failed-cause
    common-lisp:nil
  (:id-already-in-use "ID_ALREADY_IN_USE")
  (:open-lambda-functions-limit-exceeded "OPEN_LAMBDA_FUNCTIONS_LIMIT_EXCEEDED")
  (:lambda-function-creation-rate-exceeded
   "LAMBDA_FUNCTION_CREATION_RATE_EXCEEDED")
  (:lambda-service-not-available-in-region
   "LAMBDA_SERVICE_NOT_AVAILABLE_IN_REGION"))

(smithy/sdk/shapes:define-structure
 schedule-lambda-function-failed-event-attributes common-lisp:nil
 ((id :target-type function-id :required common-lisp:t :member-name "id")
  (name :target-type function-name :required common-lisp:t :member-name "name")
  (cause :target-type schedule-lambda-function-failed-cause :required
   common-lisp:t :member-name "cause")
  (decision-task-completed-event-id :target-type event-id :required
   common-lisp:t :member-name "decisionTaskCompletedEventId"))
 (:shape-name "ScheduleLambdaFunctionFailedEventAttributes"))

(smithy/sdk/shapes:define-structure
 signal-external-workflow-execution-decision-attributes common-lisp:nil
 ((workflow-id :target-type workflow-id :required common-lisp:t :member-name
   "workflowId")
  (run-id :target-type workflow-run-id-optional :member-name "runId")
  (signal-name :target-type signal-name :required common-lisp:t :member-name
   "signalName")
  (input :target-type data :member-name "input")
  (control :target-type data :member-name "control"))
 (:shape-name "SignalExternalWorkflowExecutionDecisionAttributes"))

(smithy/sdk/shapes:define-enum signal-external-workflow-execution-failed-cause
    common-lisp:nil
  (:unknown-external-workflow-execution "UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION")
  (:signal-external-workflow-execution-rate-exceeded
   "SIGNAL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED")
  (:operation-not-permitted "OPERATION_NOT_PERMITTED"))

(smithy/sdk/shapes:define-structure
 signal-external-workflow-execution-failed-event-attributes common-lisp:nil
 ((workflow-id :target-type workflow-id :required common-lisp:t :member-name
   "workflowId")
  (run-id :target-type workflow-run-id-optional :member-name "runId")
  (cause :target-type signal-external-workflow-execution-failed-cause :required
   common-lisp:t :member-name "cause")
  (initiated-event-id :target-type event-id :required common-lisp:t
   :member-name "initiatedEventId")
  (decision-task-completed-event-id :target-type event-id :required
   common-lisp:t :member-name "decisionTaskCompletedEventId")
  (control :target-type data :member-name "control"))
 (:shape-name "SignalExternalWorkflowExecutionFailedEventAttributes"))

(smithy/sdk/shapes:define-structure
 signal-external-workflow-execution-initiated-event-attributes common-lisp:nil
 ((workflow-id :target-type workflow-id :required common-lisp:t :member-name
   "workflowId")
  (run-id :target-type workflow-run-id-optional :member-name "runId")
  (signal-name :target-type signal-name :required common-lisp:t :member-name
   "signalName")
  (input :target-type data :member-name "input")
  (decision-task-completed-event-id :target-type event-id :required
   common-lisp:t :member-name "decisionTaskCompletedEventId")
  (control :target-type data :member-name "control"))
 (:shape-name "SignalExternalWorkflowExecutionInitiatedEventAttributes"))

(smithy/sdk/shapes:define-type signal-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input signal-workflow-execution-input common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain")
                                 (workflow-id :target-type workflow-id
                                  :required common-lisp:t :member-name
                                  "workflowId")
                                 (run-id :target-type workflow-run-id-optional
                                  :member-name "runId")
                                 (signal-name :target-type signal-name
                                  :required common-lisp:t :member-name
                                  "signalName")
                                 (input :target-type data :member-name
                                  "input"))
                                (:shape-name "SignalWorkflowExecutionInput"))

(smithy/sdk/shapes:define-type start-at-previous-started-event
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure
 start-child-workflow-execution-decision-attributes common-lisp:nil
 ((workflow-type :target-type workflow-type :required common-lisp:t
   :member-name "workflowType")
  (workflow-id :target-type workflow-id :required common-lisp:t :member-name
   "workflowId")
  (control :target-type data :member-name "control")
  (input :target-type data :member-name "input")
  (execution-start-to-close-timeout :target-type duration-in-seconds-optional
   :member-name "executionStartToCloseTimeout")
  (task-list :target-type task-list :member-name "taskList")
  (task-priority :target-type task-priority :member-name "taskPriority")
  (task-start-to-close-timeout :target-type duration-in-seconds-optional
   :member-name "taskStartToCloseTimeout")
  (child-policy :target-type child-policy :member-name "childPolicy")
  (tag-list :target-type tag-list :member-name "tagList")
  (lambda-role :target-type arn :member-name "lambdaRole"))
 (:shape-name "StartChildWorkflowExecutionDecisionAttributes"))

(smithy/sdk/shapes:define-enum start-child-workflow-execution-failed-cause
    common-lisp:nil
  (:workflow-type-does-not-exist "WORKFLOW_TYPE_DOES_NOT_EXIST")
  (:workflow-type-deprecated "WORKFLOW_TYPE_DEPRECATED")
  (:open-children-limit-exceeded "OPEN_CHILDREN_LIMIT_EXCEEDED")
  (:open-workflows-limit-exceeded "OPEN_WORKFLOWS_LIMIT_EXCEEDED")
  (:child-creation-rate-exceeded "CHILD_CREATION_RATE_EXCEEDED")
  (:workflow-already-running "WORKFLOW_ALREADY_RUNNING")
  (:default-execution-start-to-close-timeout-undefined
   "DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED")
  (:default-task-list-undefined "DEFAULT_TASK_LIST_UNDEFINED")
  (:default-task-start-to-close-timeout-undefined
   "DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED")
  (:default-child-policy-undefined "DEFAULT_CHILD_POLICY_UNDEFINED")
  (:operation-not-permitted "OPERATION_NOT_PERMITTED"))

(smithy/sdk/shapes:define-structure
 start-child-workflow-execution-failed-event-attributes common-lisp:nil
 ((workflow-type :target-type workflow-type :required common-lisp:t
   :member-name "workflowType")
  (cause :target-type start-child-workflow-execution-failed-cause :required
   common-lisp:t :member-name "cause")
  (workflow-id :target-type workflow-id :required common-lisp:t :member-name
   "workflowId")
  (initiated-event-id :target-type event-id :required common-lisp:t
   :member-name "initiatedEventId")
  (decision-task-completed-event-id :target-type event-id :required
   common-lisp:t :member-name "decisionTaskCompletedEventId")
  (control :target-type data :member-name "control"))
 (:shape-name "StartChildWorkflowExecutionFailedEventAttributes"))

(smithy/sdk/shapes:define-structure
 start-child-workflow-execution-initiated-event-attributes common-lisp:nil
 ((workflow-id :target-type workflow-id :required common-lisp:t :member-name
   "workflowId")
  (workflow-type :target-type workflow-type :required common-lisp:t
   :member-name "workflowType")
  (control :target-type data :member-name "control")
  (input :target-type data :member-name "input")
  (execution-start-to-close-timeout :target-type duration-in-seconds-optional
   :member-name "executionStartToCloseTimeout")
  (task-list :target-type task-list :required common-lisp:t :member-name
   "taskList")
  (task-priority :target-type task-priority :member-name "taskPriority")
  (decision-task-completed-event-id :target-type event-id :required
   common-lisp:t :member-name "decisionTaskCompletedEventId")
  (child-policy :target-type child-policy :required common-lisp:t :member-name
   "childPolicy")
  (task-start-to-close-timeout :target-type duration-in-seconds-optional
   :member-name "taskStartToCloseTimeout")
  (tag-list :target-type tag-list :member-name "tagList")
  (lambda-role :target-type arn :member-name "lambdaRole"))
 (:shape-name "StartChildWorkflowExecutionInitiatedEventAttributes"))

(smithy/sdk/shapes:define-enum start-lambda-function-failed-cause
    common-lisp:nil
  (:assume-role-failed "ASSUME_ROLE_FAILED"))

(smithy/sdk/shapes:define-structure
 start-lambda-function-failed-event-attributes common-lisp:nil
 ((scheduled-event-id :target-type event-id :member-name "scheduledEventId")
  (cause :target-type start-lambda-function-failed-cause :member-name "cause")
  (message :target-type cause-message :member-name "message"))
 (:shape-name "StartLambdaFunctionFailedEventAttributes"))

(smithy/sdk/shapes:define-structure start-timer-decision-attributes
                                    common-lisp:nil
                                    ((timer-id :target-type timer-id :required
                                      common-lisp:t :member-name "timerId")
                                     (control :target-type data :member-name
                                      "control")
                                     (start-to-fire-timeout :target-type
                                      duration-in-seconds :required
                                      common-lisp:t :member-name
                                      "startToFireTimeout"))
                                    (:shape-name
                                     "StartTimerDecisionAttributes"))

(smithy/sdk/shapes:define-enum start-timer-failed-cause
    common-lisp:nil
  (:timer-id-already-in-use "TIMER_ID_ALREADY_IN_USE")
  (:open-timers-limit-exceeded "OPEN_TIMERS_LIMIT_EXCEEDED")
  (:timer-creation-rate-exceeded "TIMER_CREATION_RATE_EXCEEDED")
  (:operation-not-permitted "OPERATION_NOT_PERMITTED"))

(smithy/sdk/shapes:define-structure start-timer-failed-event-attributes
                                    common-lisp:nil
                                    ((timer-id :target-type timer-id :required
                                      common-lisp:t :member-name "timerId")
                                     (cause :target-type
                                      start-timer-failed-cause :required
                                      common-lisp:t :member-name "cause")
                                     (decision-task-completed-event-id
                                      :target-type event-id :required
                                      common-lisp:t :member-name
                                      "decisionTaskCompletedEventId"))
                                    (:shape-name
                                     "StartTimerFailedEventAttributes"))

(smithy/sdk/shapes:define-input start-workflow-execution-input common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain")
                                 (workflow-id :target-type workflow-id
                                  :required common-lisp:t :member-name
                                  "workflowId")
                                 (workflow-type :target-type workflow-type
                                  :required common-lisp:t :member-name
                                  "workflowType")
                                 (task-list :target-type task-list :member-name
                                  "taskList")
                                 (task-priority :target-type task-priority
                                  :member-name "taskPriority")
                                 (input :target-type data :member-name "input")
                                 (execution-start-to-close-timeout :target-type
                                  duration-in-seconds-optional :member-name
                                  "executionStartToCloseTimeout")
                                 (tag-list :target-type tag-list :member-name
                                  "tagList")
                                 (task-start-to-close-timeout :target-type
                                  duration-in-seconds-optional :member-name
                                  "taskStartToCloseTimeout")
                                 (child-policy :target-type child-policy
                                  :member-name "childPolicy")
                                 (lambda-role :target-type arn :member-name
                                  "lambdaRole"))
                                (:shape-name "StartWorkflowExecutionInput"))

(smithy/sdk/shapes:define-type tag smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tag-filter common-lisp:nil
                                    ((tag :target-type tag :required
                                      common-lisp:t :member-name "tag"))
                                    (:shape-name "TagFilter"))

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-input common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn")
                                 (tags :target-type resource-tag-list :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-structure task-list common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "TaskList"))

(smithy/sdk/shapes:define-type task-priority smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type task-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type terminate-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input terminate-workflow-execution-input
                                common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain")
                                 (workflow-id :target-type workflow-id
                                  :required common-lisp:t :member-name
                                  "workflowId")
                                 (run-id :target-type workflow-run-id-optional
                                  :member-name "runId")
                                 (reason :target-type terminate-reason
                                  :member-name "reason")
                                 (details :target-type data :member-name
                                  "details")
                                 (child-policy :target-type child-policy
                                  :member-name "childPolicy"))
                                (:shape-name "TerminateWorkflowExecutionInput"))

(smithy/sdk/shapes:define-structure timer-canceled-event-attributes
                                    common-lisp:nil
                                    ((timer-id :target-type timer-id :required
                                      common-lisp:t :member-name "timerId")
                                     (started-event-id :target-type event-id
                                      :required common-lisp:t :member-name
                                      "startedEventId")
                                     (decision-task-completed-event-id
                                      :target-type event-id :required
                                      common-lisp:t :member-name
                                      "decisionTaskCompletedEventId"))
                                    (:shape-name
                                     "TimerCanceledEventAttributes"))

(smithy/sdk/shapes:define-structure timer-fired-event-attributes
                                    common-lisp:nil
                                    ((timer-id :target-type timer-id :required
                                      common-lisp:t :member-name "timerId")
                                     (started-event-id :target-type event-id
                                      :required common-lisp:t :member-name
                                      "startedEventId"))
                                    (:shape-name "TimerFiredEventAttributes"))

(smithy/sdk/shapes:define-type timer-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure timer-started-event-attributes
                                    common-lisp:nil
                                    ((timer-id :target-type timer-id :required
                                      common-lisp:t :member-name "timerId")
                                     (control :target-type data :member-name
                                      "control")
                                     (start-to-fire-timeout :target-type
                                      duration-in-seconds :required
                                      common-lisp:t :member-name
                                      "startToFireTimeout")
                                     (decision-task-completed-event-id
                                      :target-type event-id :required
                                      common-lisp:t :member-name
                                      "decisionTaskCompletedEventId"))
                                    (:shape-name "TimerStartedEventAttributes"))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error too-many-tags-fault common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "TooManyTagsFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-type truncated smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error type-already-exists-fault common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "TypeAlreadyExistsFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error type-deprecated-fault common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "TypeDeprecatedFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error type-not-deprecated-fault common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "TypeNotDeprecatedFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-input undeprecate-activity-type-input common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain")
                                 (activity-type :target-type activity-type
                                  :required common-lisp:t :member-name
                                  "activityType"))
                                (:shape-name "UndeprecateActivityTypeInput"))

(smithy/sdk/shapes:define-input undeprecate-domain-input common-lisp:nil
                                ((name :target-type domain-name :required
                                  common-lisp:t :member-name "name"))
                                (:shape-name "UndeprecateDomainInput"))

(smithy/sdk/shapes:define-input undeprecate-workflow-type-input common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain")
                                 (workflow-type :target-type workflow-type
                                  :required common-lisp:t :member-name
                                  "workflowType"))
                                (:shape-name "UndeprecateWorkflowTypeInput"))

(smithy/sdk/shapes:define-error unknown-resource-fault common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "UnknownResourceFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-input untag-resource-input common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn")
                                 (tag-keys :target-type resource-tag-key-list
                                  :required common-lisp:t :member-name
                                  "tagKeys"))
                                (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-type version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type version-optional smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure workflow-execution common-lisp:nil
                                    ((workflow-id :target-type workflow-id
                                      :required common-lisp:t :member-name
                                      "workflowId")
                                     (run-id :target-type workflow-run-id
                                      :required common-lisp:t :member-name
                                      "runId"))
                                    (:shape-name "WorkflowExecution"))

(smithy/sdk/shapes:define-error workflow-execution-already-started-fault
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "WorkflowExecutionAlreadyStartedFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum workflow-execution-cancel-requested-cause
    common-lisp:nil
  (:child-policy-applied "CHILD_POLICY_APPLIED"))

(smithy/sdk/shapes:define-structure
 workflow-execution-cancel-requested-event-attributes common-lisp:nil
 ((external-workflow-execution :target-type workflow-execution :member-name
   "externalWorkflowExecution")
  (external-initiated-event-id :target-type event-id :member-name
   "externalInitiatedEventId")
  (cause :target-type workflow-execution-cancel-requested-cause :member-name
   "cause"))
 (:shape-name "WorkflowExecutionCancelRequestedEventAttributes"))

(smithy/sdk/shapes:define-structure
 workflow-execution-canceled-event-attributes common-lisp:nil
 ((details :target-type data :member-name "details")
  (decision-task-completed-event-id :target-type event-id :required
   common-lisp:t :member-name "decisionTaskCompletedEventId"))
 (:shape-name "WorkflowExecutionCanceledEventAttributes"))

(smithy/sdk/shapes:define-structure
 workflow-execution-completed-event-attributes common-lisp:nil
 ((result :target-type data :member-name "result")
  (decision-task-completed-event-id :target-type event-id :required
   common-lisp:t :member-name "decisionTaskCompletedEventId"))
 (:shape-name "WorkflowExecutionCompletedEventAttributes"))

(smithy/sdk/shapes:define-structure workflow-execution-configuration
                                    common-lisp:nil
                                    ((task-start-to-close-timeout :target-type
                                      duration-in-seconds :required
                                      common-lisp:t :member-name
                                      "taskStartToCloseTimeout")
                                     (execution-start-to-close-timeout
                                      :target-type duration-in-seconds
                                      :required common-lisp:t :member-name
                                      "executionStartToCloseTimeout")
                                     (task-list :target-type task-list
                                      :required common-lisp:t :member-name
                                      "taskList")
                                     (task-priority :target-type task-priority
                                      :member-name "taskPriority")
                                     (child-policy :target-type child-policy
                                      :required common-lisp:t :member-name
                                      "childPolicy")
                                     (lambda-role :target-type arn :member-name
                                      "lambdaRole"))
                                    (:shape-name
                                     "WorkflowExecutionConfiguration"))

(smithy/sdk/shapes:define-structure
 workflow-execution-continued-as-new-event-attributes common-lisp:nil
 ((input :target-type data :member-name "input")
  (decision-task-completed-event-id :target-type event-id :required
   common-lisp:t :member-name "decisionTaskCompletedEventId")
  (new-execution-run-id :target-type workflow-run-id :required common-lisp:t
   :member-name "newExecutionRunId")
  (execution-start-to-close-timeout :target-type duration-in-seconds-optional
   :member-name "executionStartToCloseTimeout")
  (task-list :target-type task-list :required common-lisp:t :member-name
   "taskList")
  (task-priority :target-type task-priority :member-name "taskPriority")
  (task-start-to-close-timeout :target-type duration-in-seconds-optional
   :member-name "taskStartToCloseTimeout")
  (child-policy :target-type child-policy :required common-lisp:t :member-name
   "childPolicy")
  (tag-list :target-type tag-list :member-name "tagList")
  (workflow-type :target-type workflow-type :required common-lisp:t
   :member-name "workflowType")
  (lambda-role :target-type arn :member-name "lambdaRole"))
 (:shape-name "WorkflowExecutionContinuedAsNewEventAttributes"))

(smithy/sdk/shapes:define-structure workflow-execution-count common-lisp:nil
                                    ((count :target-type count :required
                                      common-lisp:t :member-name "count")
                                     (truncated :target-type truncated
                                      :member-name "truncated"))
                                    (:shape-name "WorkflowExecutionCount"))

(smithy/sdk/shapes:define-structure workflow-execution-detail common-lisp:nil
                                    ((execution-info :target-type
                                      workflow-execution-info :required
                                      common-lisp:t :member-name
                                      "executionInfo")
                                     (execution-configuration :target-type
                                      workflow-execution-configuration
                                      :required common-lisp:t :member-name
                                      "executionConfiguration")
                                     (open-counts :target-type
                                      workflow-execution-open-counts :required
                                      common-lisp:t :member-name "openCounts")
                                     (latest-activity-task-timestamp
                                      :target-type timestamp :member-name
                                      "latestActivityTaskTimestamp")
                                     (latest-execution-context :target-type
                                      data :member-name
                                      "latestExecutionContext"))
                                    (:shape-name "WorkflowExecutionDetail"))

(smithy/sdk/shapes:define-structure workflow-execution-failed-event-attributes
                                    common-lisp:nil
                                    ((reason :target-type failure-reason
                                      :member-name "reason")
                                     (details :target-type data :member-name
                                      "details")
                                     (decision-task-completed-event-id
                                      :target-type event-id :required
                                      common-lisp:t :member-name
                                      "decisionTaskCompletedEventId"))
                                    (:shape-name
                                     "WorkflowExecutionFailedEventAttributes"))

(smithy/sdk/shapes:define-structure workflow-execution-filter common-lisp:nil
                                    ((workflow-id :target-type workflow-id
                                      :required common-lisp:t :member-name
                                      "workflowId"))
                                    (:shape-name "WorkflowExecutionFilter"))

(smithy/sdk/shapes:define-structure workflow-execution-info common-lisp:nil
                                    ((execution :target-type workflow-execution
                                      :required common-lisp:t :member-name
                                      "execution")
                                     (workflow-type :target-type workflow-type
                                      :required common-lisp:t :member-name
                                      "workflowType")
                                     (start-timestamp :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "startTimestamp")
                                     (close-timestamp :target-type timestamp
                                      :member-name "closeTimestamp")
                                     (execution-status :target-type
                                      execution-status :required common-lisp:t
                                      :member-name "executionStatus")
                                     (close-status :target-type close-status
                                      :member-name "closeStatus")
                                     (parent :target-type workflow-execution
                                      :member-name "parent")
                                     (tag-list :target-type tag-list
                                      :member-name "tagList")
                                     (cancel-requested :target-type canceled
                                      :member-name "cancelRequested"))
                                    (:shape-name "WorkflowExecutionInfo"))

(smithy/sdk/shapes:define-list workflow-execution-info-list :member
                               workflow-execution-info)

(smithy/sdk/shapes:define-structure workflow-execution-infos common-lisp:nil
                                    ((execution-infos :target-type
                                      workflow-execution-info-list :required
                                      common-lisp:t :member-name
                                      "executionInfos")
                                     (next-page-token :target-type page-token
                                      :member-name "nextPageToken"))
                                    (:shape-name "WorkflowExecutionInfos"))

(smithy/sdk/shapes:define-structure workflow-execution-open-counts
                                    common-lisp:nil
                                    ((open-activity-tasks :target-type count
                                      :required common-lisp:t :member-name
                                      "openActivityTasks")
                                     (open-decision-tasks :target-type
                                      open-decision-tasks-count :required
                                      common-lisp:t :member-name
                                      "openDecisionTasks")
                                     (open-timers :target-type count :required
                                      common-lisp:t :member-name "openTimers")
                                     (open-child-workflow-executions
                                      :target-type count :required
                                      common-lisp:t :member-name
                                      "openChildWorkflowExecutions")
                                     (open-lambda-functions :target-type count
                                      :member-name "openLambdaFunctions"))
                                    (:shape-name "WorkflowExecutionOpenCounts"))

(smithy/sdk/shapes:define-structure
 workflow-execution-signaled-event-attributes common-lisp:nil
 ((signal-name :target-type signal-name :required common-lisp:t :member-name
   "signalName")
  (input :target-type data :member-name "input")
  (external-workflow-execution :target-type workflow-execution :member-name
   "externalWorkflowExecution")
  (external-initiated-event-id :target-type event-id :member-name
   "externalInitiatedEventId"))
 (:shape-name "WorkflowExecutionSignaledEventAttributes"))

(smithy/sdk/shapes:define-structure workflow-execution-started-event-attributes
                                    common-lisp:nil
                                    ((input :target-type data :member-name
                                      "input")
                                     (execution-start-to-close-timeout
                                      :target-type duration-in-seconds-optional
                                      :member-name
                                      "executionStartToCloseTimeout")
                                     (task-start-to-close-timeout :target-type
                                      duration-in-seconds-optional :member-name
                                      "taskStartToCloseTimeout")
                                     (child-policy :target-type child-policy
                                      :required common-lisp:t :member-name
                                      "childPolicy")
                                     (task-list :target-type task-list
                                      :required common-lisp:t :member-name
                                      "taskList")
                                     (task-priority :target-type task-priority
                                      :member-name "taskPriority")
                                     (workflow-type :target-type workflow-type
                                      :required common-lisp:t :member-name
                                      "workflowType")
                                     (tag-list :target-type tag-list
                                      :member-name "tagList")
                                     (continued-execution-run-id :target-type
                                      workflow-run-id-optional :member-name
                                      "continuedExecutionRunId")
                                     (parent-workflow-execution :target-type
                                      workflow-execution :member-name
                                      "parentWorkflowExecution")
                                     (parent-initiated-event-id :target-type
                                      event-id :member-name
                                      "parentInitiatedEventId")
                                     (lambda-role :target-type arn :member-name
                                      "lambdaRole"))
                                    (:shape-name
                                     "WorkflowExecutionStartedEventAttributes"))

(smithy/sdk/shapes:define-enum workflow-execution-terminated-cause
    common-lisp:nil
  (:child-policy-applied "CHILD_POLICY_APPLIED")
  (:event-limit-exceeded "EVENT_LIMIT_EXCEEDED")
  (:operator-initiated "OPERATOR_INITIATED"))

(smithy/sdk/shapes:define-structure
 workflow-execution-terminated-event-attributes common-lisp:nil
 ((reason :target-type terminate-reason :member-name "reason")
  (details :target-type data :member-name "details")
  (child-policy :target-type child-policy :required common-lisp:t :member-name
   "childPolicy")
  (cause :target-type workflow-execution-terminated-cause :member-name
   "cause"))
 (:shape-name "WorkflowExecutionTerminatedEventAttributes"))

(smithy/sdk/shapes:define-structure
 workflow-execution-timed-out-event-attributes common-lisp:nil
 ((timeout-type :target-type workflow-execution-timeout-type :required
   common-lisp:t :member-name "timeoutType")
  (child-policy :target-type child-policy :required common-lisp:t :member-name
   "childPolicy"))
 (:shape-name "WorkflowExecutionTimedOutEventAttributes"))

(smithy/sdk/shapes:define-enum workflow-execution-timeout-type
    common-lisp:nil
  (:start-to-close "START_TO_CLOSE"))

(smithy/sdk/shapes:define-type workflow-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workflow-run-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workflow-run-id-optional
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure workflow-type common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (version :target-type version :required
                                      common-lisp:t :member-name "version"))
                                    (:shape-name "WorkflowType"))

(smithy/sdk/shapes:define-structure workflow-type-configuration common-lisp:nil
                                    ((default-task-start-to-close-timeout
                                      :target-type duration-in-seconds-optional
                                      :member-name
                                      "defaultTaskStartToCloseTimeout")
                                     (default-execution-start-to-close-timeout
                                      :target-type duration-in-seconds-optional
                                      :member-name
                                      "defaultExecutionStartToCloseTimeout")
                                     (default-task-list :target-type task-list
                                      :member-name "defaultTaskList")
                                     (default-task-priority :target-type
                                      task-priority :member-name
                                      "defaultTaskPriority")
                                     (default-child-policy :target-type
                                      child-policy :member-name
                                      "defaultChildPolicy")
                                     (default-lambda-role :target-type arn
                                      :member-name "defaultLambdaRole"))
                                    (:shape-name "WorkflowTypeConfiguration"))

(smithy/sdk/shapes:define-structure workflow-type-detail common-lisp:nil
                                    ((type-info :target-type workflow-type-info
                                      :required common-lisp:t :member-name
                                      "typeInfo")
                                     (configuration :target-type
                                      workflow-type-configuration :required
                                      common-lisp:t :member-name
                                      "configuration"))
                                    (:shape-name "WorkflowTypeDetail"))

(smithy/sdk/shapes:define-structure workflow-type-filter common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (version :target-type version-optional
                                      :member-name "version"))
                                    (:shape-name "WorkflowTypeFilter"))

(smithy/sdk/shapes:define-structure workflow-type-info common-lisp:nil
                                    ((workflow-type :target-type workflow-type
                                      :required common-lisp:t :member-name
                                      "workflowType")
                                     (status :target-type registration-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (description :target-type description
                                      :member-name "description")
                                     (creation-date :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationDate")
                                     (deprecation-date :target-type timestamp
                                      :member-name "deprecationDate"))
                                    (:shape-name "WorkflowTypeInfo"))

(smithy/sdk/shapes:define-list workflow-type-info-list :member
                               workflow-type-info)

(smithy/sdk/shapes:define-structure workflow-type-infos common-lisp:nil
                                    ((type-infos :target-type
                                      workflow-type-info-list :required
                                      common-lisp:t :member-name "typeInfos")
                                     (next-page-token :target-type page-token
                                      :member-name "nextPageToken"))
                                    (:shape-name "WorkflowTypeInfos"))

(smithy/sdk/operation:define-operation count-closed-workflow-executions
                                       :shape-name
                                       "CountClosedWorkflowExecutions" :input
                                       count-closed-workflow-executions-input
                                       :output workflow-execution-count :errors
                                       (operation-not-permitted-fault
                                        unknown-resource-fault))

(smithy/sdk/operation:define-operation count-open-workflow-executions
                                       :shape-name
                                       "CountOpenWorkflowExecutions" :input
                                       count-open-workflow-executions-input
                                       :output workflow-execution-count :errors
                                       (operation-not-permitted-fault
                                        unknown-resource-fault))

(smithy/sdk/operation:define-operation count-pending-activity-tasks :shape-name
                                       "CountPendingActivityTasks" :input
                                       count-pending-activity-tasks-input
                                       :output pending-task-count :errors
                                       (operation-not-permitted-fault
                                        unknown-resource-fault))

(smithy/sdk/operation:define-operation count-pending-decision-tasks :shape-name
                                       "CountPendingDecisionTasks" :input
                                       count-pending-decision-tasks-input
                                       :output pending-task-count :errors
                                       (operation-not-permitted-fault
                                        unknown-resource-fault))

(smithy/sdk/operation:define-operation delete-activity-type :shape-name
                                       "DeleteActivityType" :input
                                       delete-activity-type-input :output
                                       common-lisp:null :errors
                                       (operation-not-permitted-fault
                                        type-not-deprecated-fault
                                        unknown-resource-fault))

(smithy/sdk/operation:define-operation delete-workflow-type :shape-name
                                       "DeleteWorkflowType" :input
                                       delete-workflow-type-input :output
                                       common-lisp:null :errors
                                       (operation-not-permitted-fault
                                        type-not-deprecated-fault
                                        unknown-resource-fault))

(smithy/sdk/operation:define-operation deprecate-activity-type :shape-name
                                       "DeprecateActivityType" :input
                                       deprecate-activity-type-input :output
                                       common-lisp:null :errors
                                       (operation-not-permitted-fault
                                        type-deprecated-fault
                                        unknown-resource-fault))

(smithy/sdk/operation:define-operation deprecate-domain :shape-name
                                       "DeprecateDomain" :input
                                       deprecate-domain-input :output
                                       common-lisp:null :errors
                                       (domain-deprecated-fault
                                        operation-not-permitted-fault
                                        unknown-resource-fault))

(smithy/sdk/operation:define-operation deprecate-workflow-type :shape-name
                                       "DeprecateWorkflowType" :input
                                       deprecate-workflow-type-input :output
                                       common-lisp:null :errors
                                       (operation-not-permitted-fault
                                        type-deprecated-fault
                                        unknown-resource-fault))

(smithy/sdk/operation:define-operation describe-activity-type :shape-name
                                       "DescribeActivityType" :input
                                       describe-activity-type-input :output
                                       activity-type-detail :errors
                                       (operation-not-permitted-fault
                                        unknown-resource-fault))

(smithy/sdk/operation:define-operation describe-domain :shape-name
                                       "DescribeDomain" :input
                                       describe-domain-input :output
                                       domain-detail :errors
                                       (operation-not-permitted-fault
                                        unknown-resource-fault))

(smithy/sdk/operation:define-operation describe-workflow-execution :shape-name
                                       "DescribeWorkflowExecution" :input
                                       describe-workflow-execution-input
                                       :output workflow-execution-detail
                                       :errors
                                       (operation-not-permitted-fault
                                        unknown-resource-fault))

(smithy/sdk/operation:define-operation describe-workflow-type :shape-name
                                       "DescribeWorkflowType" :input
                                       describe-workflow-type-input :output
                                       workflow-type-detail :errors
                                       (operation-not-permitted-fault
                                        unknown-resource-fault))

(smithy/sdk/operation:define-operation get-workflow-execution-history
                                       :shape-name
                                       "GetWorkflowExecutionHistory" :input
                                       get-workflow-execution-history-input
                                       :output history :errors
                                       (operation-not-permitted-fault
                                        unknown-resource-fault))

(smithy/sdk/operation:define-operation list-activity-types :shape-name
                                       "ListActivityTypes" :input
                                       list-activity-types-input :output
                                       activity-type-infos :errors
                                       (operation-not-permitted-fault
                                        unknown-resource-fault))

(smithy/sdk/operation:define-operation list-closed-workflow-executions
                                       :shape-name
                                       "ListClosedWorkflowExecutions" :input
                                       list-closed-workflow-executions-input
                                       :output workflow-execution-infos :errors
                                       (operation-not-permitted-fault
                                        unknown-resource-fault))

(smithy/sdk/operation:define-operation list-domains :shape-name "ListDomains"
                                       :input list-domains-input :output
                                       domain-infos :errors
                                       (operation-not-permitted-fault))

(smithy/sdk/operation:define-operation list-open-workflow-executions
                                       :shape-name "ListOpenWorkflowExecutions"
                                       :input
                                       list-open-workflow-executions-input
                                       :output workflow-execution-infos :errors
                                       (operation-not-permitted-fault
                                        unknown-resource-fault))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-input :output
                                       list-tags-for-resource-output :errors
                                       (limit-exceeded-fault
                                        operation-not-permitted-fault
                                        unknown-resource-fault))

(smithy/sdk/operation:define-operation list-workflow-types :shape-name
                                       "ListWorkflowTypes" :input
                                       list-workflow-types-input :output
                                       workflow-type-infos :errors
                                       (operation-not-permitted-fault
                                        unknown-resource-fault))

(smithy/sdk/operation:define-operation poll-for-activity-task :shape-name
                                       "PollForActivityTask" :input
                                       poll-for-activity-task-input :output
                                       activity-task :errors
                                       (limit-exceeded-fault
                                        operation-not-permitted-fault
                                        unknown-resource-fault))

(smithy/sdk/operation:define-operation poll-for-decision-task :shape-name
                                       "PollForDecisionTask" :input
                                       poll-for-decision-task-input :output
                                       decision-task :errors
                                       (limit-exceeded-fault
                                        operation-not-permitted-fault
                                        unknown-resource-fault))

(smithy/sdk/operation:define-operation record-activity-task-heartbeat
                                       :shape-name
                                       "RecordActivityTaskHeartbeat" :input
                                       record-activity-task-heartbeat-input
                                       :output activity-task-status :errors
                                       (operation-not-permitted-fault
                                        unknown-resource-fault))

(smithy/sdk/operation:define-operation register-activity-type :shape-name
                                       "RegisterActivityType" :input
                                       register-activity-type-input :output
                                       common-lisp:null :errors
                                       (limit-exceeded-fault
                                        operation-not-permitted-fault
                                        type-already-exists-fault
                                        unknown-resource-fault))

(smithy/sdk/operation:define-operation register-domain :shape-name
                                       "RegisterDomain" :input
                                       register-domain-input :output
                                       common-lisp:null :errors
                                       (domain-already-exists-fault
                                        limit-exceeded-fault
                                        operation-not-permitted-fault
                                        too-many-tags-fault))

(smithy/sdk/operation:define-operation register-workflow-type :shape-name
                                       "RegisterWorkflowType" :input
                                       register-workflow-type-input :output
                                       common-lisp:null :errors
                                       (limit-exceeded-fault
                                        operation-not-permitted-fault
                                        type-already-exists-fault
                                        unknown-resource-fault))

(smithy/sdk/operation:define-operation request-cancel-workflow-execution
                                       :shape-name
                                       "RequestCancelWorkflowExecution" :input
                                       request-cancel-workflow-execution-input
                                       :output common-lisp:null :errors
                                       (operation-not-permitted-fault
                                        unknown-resource-fault))

(smithy/sdk/operation:define-operation respond-activity-task-canceled
                                       :shape-name
                                       "RespondActivityTaskCanceled" :input
                                       respond-activity-task-canceled-input
                                       :output common-lisp:null :errors
                                       (operation-not-permitted-fault
                                        unknown-resource-fault))

(smithy/sdk/operation:define-operation respond-activity-task-completed
                                       :shape-name
                                       "RespondActivityTaskCompleted" :input
                                       respond-activity-task-completed-input
                                       :output common-lisp:null :errors
                                       (operation-not-permitted-fault
                                        unknown-resource-fault))

(smithy/sdk/operation:define-operation respond-activity-task-failed :shape-name
                                       "RespondActivityTaskFailed" :input
                                       respond-activity-task-failed-input
                                       :output common-lisp:null :errors
                                       (operation-not-permitted-fault
                                        unknown-resource-fault))

(smithy/sdk/operation:define-operation respond-decision-task-completed
                                       :shape-name
                                       "RespondDecisionTaskCompleted" :input
                                       respond-decision-task-completed-input
                                       :output common-lisp:null :errors
                                       (operation-not-permitted-fault
                                        unknown-resource-fault))

(smithy/sdk/operation:define-operation signal-workflow-execution :shape-name
                                       "SignalWorkflowExecution" :input
                                       signal-workflow-execution-input :output
                                       common-lisp:null :errors
                                       (operation-not-permitted-fault
                                        unknown-resource-fault))

(smithy/sdk/operation:define-operation start-workflow-execution :shape-name
                                       "StartWorkflowExecution" :input
                                       start-workflow-execution-input :output
                                       run :errors
                                       (default-undefined-fault
                                        limit-exceeded-fault
                                        operation-not-permitted-fault
                                        type-deprecated-fault
                                        unknown-resource-fault
                                        workflow-execution-already-started-fault))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       common-lisp:null :errors
                                       (limit-exceeded-fault
                                        operation-not-permitted-fault
                                        too-many-tags-fault
                                        unknown-resource-fault))

(smithy/sdk/operation:define-operation terminate-workflow-execution :shape-name
                                       "TerminateWorkflowExecution" :input
                                       terminate-workflow-execution-input
                                       :output common-lisp:null :errors
                                       (operation-not-permitted-fault
                                        unknown-resource-fault))

(smithy/sdk/operation:define-operation undeprecate-activity-type :shape-name
                                       "UndeprecateActivityType" :input
                                       undeprecate-activity-type-input :output
                                       common-lisp:null :errors
                                       (operation-not-permitted-fault
                                        type-already-exists-fault
                                        unknown-resource-fault))

(smithy/sdk/operation:define-operation undeprecate-domain :shape-name
                                       "UndeprecateDomain" :input
                                       undeprecate-domain-input :output
                                       common-lisp:null :errors
                                       (domain-already-exists-fault
                                        operation-not-permitted-fault
                                        unknown-resource-fault))

(smithy/sdk/operation:define-operation undeprecate-workflow-type :shape-name
                                       "UndeprecateWorkflowType" :input
                                       undeprecate-workflow-type-input :output
                                       common-lisp:null :errors
                                       (operation-not-permitted-fault
                                        type-already-exists-fault
                                        unknown-resource-fault))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       common-lisp:null :errors
                                       (limit-exceeded-fault
                                        operation-not-permitted-fault
                                        unknown-resource-fault))
