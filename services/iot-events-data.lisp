(uiop/package:define-package #:pira/iot-events-data (:use)
                             (:export #:acknowledge-action-configuration
                              #:acknowledge-alarm-action-request
                              #:acknowledge-alarm-action-requests #:alarm
                              #:alarm-model-name #:alarm-model-version
                              #:alarm-state #:alarm-state-name
                              #:alarm-summaries #:alarm-summary
                              #:batch-acknowledge-alarm
                              #:batch-alarm-action-error-entries
                              #:batch-alarm-action-error-entry
                              #:batch-delete-detector
                              #:batch-delete-detector-error-entries
                              #:batch-delete-detector-error-entry
                              #:batch-disable-alarm #:batch-enable-alarm
                              #:batch-put-message
                              #:batch-put-message-error-entries
                              #:batch-put-message-error-entry
                              #:batch-reset-alarm #:batch-snooze-alarm
                              #:batch-update-detector
                              #:batch-update-detector-error-entries
                              #:batch-update-detector-error-entry
                              #:comparison-operator #:customer-action
                              #:customer-action-name #:delete-detector-request
                              #:delete-detector-requests #:describe-alarm
                              #:describe-detector #:detector
                              #:detector-model-name #:detector-model-version
                              #:detector-state #:detector-state-definition
                              #:detector-state-summary #:detector-summaries
                              #:detector-summary #:disable-action-configuration
                              #:disable-alarm-action-request
                              #:disable-alarm-action-requests
                              #:enable-action-configuration
                              #:enable-alarm-action-request
                              #:enable-alarm-action-requests
                              #:ephemeral-input-name #:epoch-milli-timestamp
                              #:error-code #:error-message #:event-type
                              #:input-property-value
                              #:internal-failure-exception
                              #:invalid-request-exception
                              #:iot-columbo-data-service #:key-value
                              #:list-alarms #:list-detectors #:max-results
                              #:message #:message-id #:messages #:next-token
                              #:note #:payload #:request-id
                              #:reset-action-configuration
                              #:reset-alarm-action-request
                              #:reset-alarm-action-requests
                              #:resource-not-found-exception #:rule-evaluation
                              #:seconds #:service-unavailable-exception
                              #:severity #:simple-rule-evaluation
                              #:snooze-action-configuration
                              #:snooze-alarm-action-request
                              #:snooze-alarm-action-requests #:snooze-duration
                              #:state-change-configuration #:state-name
                              #:system-event #:threshold-value
                              #:throttling-exception #:timer #:timer-definition
                              #:timer-definitions #:timer-name #:timers
                              #:timestamp #:timestamp-value #:trigger-type
                              #:update-detector-request
                              #:update-detector-requests #:variable
                              #:variable-definition #:variable-definitions
                              #:variable-name #:variable-value #:variables
                              #:iot-events-data-error))
(common-lisp:in-package #:pira/iot-events-data)

(common-lisp:define-condition iot-events-data-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service iot-columbo-data-service :shape-name
                                   "IotColumboDataService" :version
                                   "2018-10-23" :title "AWS IoT Events Data"
                                   :operations
                                   '(batch-acknowledge-alarm
                                     batch-delete-detector batch-disable-alarm
                                     batch-enable-alarm batch-put-message
                                     batch-reset-alarm batch-snooze-alarm
                                     batch-update-detector describe-alarm
                                     describe-detector list-alarms
                                     list-detectors)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "IoT Events Data")
                                      ("arnNamespace" . "ioteventsdata")
                                      ("cloudFormationName" . "IoTEventsData")
                                      ("cloudTrailEventSource"
                                       . "ioteventsdata.amazonaws.com")
                                      ("docId" . "iotevents-data-2018-10-23")
                                      ("endpointPrefix" . "data.iotevents"))
                                     ("aws.auth#sigv4"
                                      ("name" . "ioteventsdata"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-structure acknowledge-action-configuration
                                    common-lisp:nil
                                    ((note :target-type note :member-name
                                      "note"))
                                    (:shape-name
                                     "AcknowledgeActionConfiguration"))

(smithy/sdk/shapes:define-structure acknowledge-alarm-action-request
                                    common-lisp:nil
                                    ((request-id :target-type request-id
                                      :required common-lisp:t :member-name
                                      "requestId")
                                     (alarm-model-name :target-type
                                      alarm-model-name :required common-lisp:t
                                      :member-name "alarmModelName")
                                     (key-value :target-type key-value
                                      :member-name "keyValue")
                                     (note :target-type note :member-name
                                      "note"))
                                    (:shape-name
                                     "AcknowledgeAlarmActionRequest"))

(smithy/sdk/shapes:define-list acknowledge-alarm-action-requests :member
                               acknowledge-alarm-action-request)

(smithy/sdk/shapes:define-structure alarm common-lisp:nil
                                    ((alarm-model-name :target-type
                                      alarm-model-name :member-name
                                      "alarmModelName")
                                     (alarm-model-version :target-type
                                      alarm-model-version :member-name
                                      "alarmModelVersion")
                                     (key-value :target-type key-value
                                      :member-name "keyValue")
                                     (alarm-state :target-type alarm-state
                                      :member-name "alarmState")
                                     (severity :target-type severity
                                      :member-name "severity")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (last-update-time :target-type timestamp
                                      :member-name "lastUpdateTime"))
                                    (:shape-name "Alarm"))

(smithy/sdk/shapes:define-type alarm-model-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type alarm-model-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure alarm-state common-lisp:nil
                                    ((state-name :target-type alarm-state-name
                                      :member-name "stateName")
                                     (rule-evaluation :target-type
                                      rule-evaluation :member-name
                                      "ruleEvaluation")
                                     (customer-action :target-type
                                      customer-action :member-name
                                      "customerAction")
                                     (system-event :target-type system-event
                                      :member-name "systemEvent"))
                                    (:shape-name "AlarmState"))

(smithy/sdk/shapes:define-enum alarm-state-name
    common-lisp:nil
  (:disabled "DISABLED")
  (:normal "NORMAL")
  (:active "ACTIVE")
  (:acknowledged "ACKNOWLEDGED")
  (:snooze-disabled "SNOOZE_DISABLED")
  (:latched "LATCHED"))

(smithy/sdk/shapes:define-list alarm-summaries :member alarm-summary)

(smithy/sdk/shapes:define-structure alarm-summary common-lisp:nil
                                    ((alarm-model-name :target-type
                                      alarm-model-name :member-name
                                      "alarmModelName")
                                     (alarm-model-version :target-type
                                      alarm-model-version :member-name
                                      "alarmModelVersion")
                                     (key-value :target-type key-value
                                      :member-name "keyValue")
                                     (state-name :target-type alarm-state-name
                                      :member-name "stateName")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (last-update-time :target-type timestamp
                                      :member-name "lastUpdateTime"))
                                    (:shape-name "AlarmSummary"))

(smithy/sdk/shapes:define-input batch-acknowledge-alarm-request common-lisp:nil
                                ((acknowledge-action-requests :target-type
                                  acknowledge-alarm-action-requests :required
                                  common-lisp:t :member-name
                                  "acknowledgeActionRequests"))
                                (:shape-name "BatchAcknowledgeAlarmRequest"))

(smithy/sdk/shapes:define-output batch-acknowledge-alarm-response
                                 common-lisp:nil
                                 ((error-entries :target-type
                                   batch-alarm-action-error-entries
                                   :member-name "errorEntries"))
                                 (:shape-name "BatchAcknowledgeAlarmResponse"))

(smithy/sdk/shapes:define-list batch-alarm-action-error-entries :member
                               batch-alarm-action-error-entry)

(smithy/sdk/shapes:define-structure batch-alarm-action-error-entry
                                    common-lisp:nil
                                    ((request-id :target-type request-id
                                      :member-name "requestId")
                                     (error-code :target-type error-code
                                      :member-name "errorCode")
                                     (error-message :target-type error-message
                                      :member-name "errorMessage"))
                                    (:shape-name "BatchAlarmActionErrorEntry"))

(smithy/sdk/shapes:define-list batch-delete-detector-error-entries :member
                               batch-delete-detector-error-entry)

(smithy/sdk/shapes:define-structure batch-delete-detector-error-entry
                                    common-lisp:nil
                                    ((message-id :target-type message-id
                                      :member-name "messageId")
                                     (error-code :target-type error-code
                                      :member-name "errorCode")
                                     (error-message :target-type error-message
                                      :member-name "errorMessage"))
                                    (:shape-name
                                     "BatchDeleteDetectorErrorEntry"))

(smithy/sdk/shapes:define-input batch-delete-detector-request common-lisp:nil
                                ((detectors :target-type
                                  delete-detector-requests :required
                                  common-lisp:t :member-name "detectors"))
                                (:shape-name "BatchDeleteDetectorRequest"))

(smithy/sdk/shapes:define-output batch-delete-detector-response common-lisp:nil
                                 ((batch-delete-detector-error-entries
                                   :target-type
                                   batch-delete-detector-error-entries
                                   :member-name
                                   "batchDeleteDetectorErrorEntries"))
                                 (:shape-name "BatchDeleteDetectorResponse"))

(smithy/sdk/shapes:define-input batch-disable-alarm-request common-lisp:nil
                                ((disable-action-requests :target-type
                                  disable-alarm-action-requests :required
                                  common-lisp:t :member-name
                                  "disableActionRequests"))
                                (:shape-name "BatchDisableAlarmRequest"))

(smithy/sdk/shapes:define-output batch-disable-alarm-response common-lisp:nil
                                 ((error-entries :target-type
                                   batch-alarm-action-error-entries
                                   :member-name "errorEntries"))
                                 (:shape-name "BatchDisableAlarmResponse"))

(smithy/sdk/shapes:define-input batch-enable-alarm-request common-lisp:nil
                                ((enable-action-requests :target-type
                                  enable-alarm-action-requests :required
                                  common-lisp:t :member-name
                                  "enableActionRequests"))
                                (:shape-name "BatchEnableAlarmRequest"))

(smithy/sdk/shapes:define-output batch-enable-alarm-response common-lisp:nil
                                 ((error-entries :target-type
                                   batch-alarm-action-error-entries
                                   :member-name "errorEntries"))
                                 (:shape-name "BatchEnableAlarmResponse"))

(smithy/sdk/shapes:define-list batch-put-message-error-entries :member
                               batch-put-message-error-entry)

(smithy/sdk/shapes:define-structure batch-put-message-error-entry
                                    common-lisp:nil
                                    ((message-id :target-type message-id
                                      :member-name "messageId")
                                     (error-code :target-type error-code
                                      :member-name "errorCode")
                                     (error-message :target-type error-message
                                      :member-name "errorMessage"))
                                    (:shape-name "BatchPutMessageErrorEntry"))

(smithy/sdk/shapes:define-input batch-put-message-request common-lisp:nil
                                ((messages :target-type messages :required
                                  common-lisp:t :member-name "messages"))
                                (:shape-name "BatchPutMessageRequest"))

(smithy/sdk/shapes:define-output batch-put-message-response common-lisp:nil
                                 ((batch-put-message-error-entries :target-type
                                   batch-put-message-error-entries :member-name
                                   "BatchPutMessageErrorEntries"))
                                 (:shape-name "BatchPutMessageResponse"))

(smithy/sdk/shapes:define-input batch-reset-alarm-request common-lisp:nil
                                ((reset-action-requests :target-type
                                  reset-alarm-action-requests :required
                                  common-lisp:t :member-name
                                  "resetActionRequests"))
                                (:shape-name "BatchResetAlarmRequest"))

(smithy/sdk/shapes:define-output batch-reset-alarm-response common-lisp:nil
                                 ((error-entries :target-type
                                   batch-alarm-action-error-entries
                                   :member-name "errorEntries"))
                                 (:shape-name "BatchResetAlarmResponse"))

(smithy/sdk/shapes:define-input batch-snooze-alarm-request common-lisp:nil
                                ((snooze-action-requests :target-type
                                  snooze-alarm-action-requests :required
                                  common-lisp:t :member-name
                                  "snoozeActionRequests"))
                                (:shape-name "BatchSnoozeAlarmRequest"))

(smithy/sdk/shapes:define-output batch-snooze-alarm-response common-lisp:nil
                                 ((error-entries :target-type
                                   batch-alarm-action-error-entries
                                   :member-name "errorEntries"))
                                 (:shape-name "BatchSnoozeAlarmResponse"))

(smithy/sdk/shapes:define-list batch-update-detector-error-entries :member
                               batch-update-detector-error-entry)

(smithy/sdk/shapes:define-structure batch-update-detector-error-entry
                                    common-lisp:nil
                                    ((message-id :target-type message-id
                                      :member-name "messageId")
                                     (error-code :target-type error-code
                                      :member-name "errorCode")
                                     (error-message :target-type error-message
                                      :member-name "errorMessage"))
                                    (:shape-name
                                     "BatchUpdateDetectorErrorEntry"))

(smithy/sdk/shapes:define-input batch-update-detector-request common-lisp:nil
                                ((detectors :target-type
                                  update-detector-requests :required
                                  common-lisp:t :member-name "detectors"))
                                (:shape-name "BatchUpdateDetectorRequest"))

(smithy/sdk/shapes:define-output batch-update-detector-response common-lisp:nil
                                 ((batch-update-detector-error-entries
                                   :target-type
                                   batch-update-detector-error-entries
                                   :member-name
                                   "batchUpdateDetectorErrorEntries"))
                                 (:shape-name "BatchUpdateDetectorResponse"))

(smithy/sdk/shapes:define-enum comparison-operator
    common-lisp:nil
  (:greater "GREATER")
  (:greater-or-equal "GREATER_OR_EQUAL")
  (:less "LESS")
  (:less-or-equal "LESS_OR_EQUAL")
  (:equal "EQUAL")
  (:not-equal "NOT_EQUAL"))

(smithy/sdk/shapes:define-structure customer-action common-lisp:nil
                                    ((action-name :target-type
                                      customer-action-name :member-name
                                      "actionName")
                                     (snooze-action-configuration :target-type
                                      snooze-action-configuration :member-name
                                      "snoozeActionConfiguration")
                                     (enable-action-configuration :target-type
                                      enable-action-configuration :member-name
                                      "enableActionConfiguration")
                                     (disable-action-configuration :target-type
                                      disable-action-configuration :member-name
                                      "disableActionConfiguration")
                                     (acknowledge-action-configuration
                                      :target-type
                                      acknowledge-action-configuration
                                      :member-name
                                      "acknowledgeActionConfiguration")
                                     (reset-action-configuration :target-type
                                      reset-action-configuration :member-name
                                      "resetActionConfiguration"))
                                    (:shape-name "CustomerAction"))

(smithy/sdk/shapes:define-enum customer-action-name
    common-lisp:nil
  (:snooze "SNOOZE")
  (:enable "ENABLE")
  (:disable "DISABLE")
  (:acknowledge "ACKNOWLEDGE")
  (:reset "RESET"))

(smithy/sdk/shapes:define-structure delete-detector-request common-lisp:nil
                                    ((message-id :target-type message-id
                                      :required common-lisp:t :member-name
                                      "messageId")
                                     (detector-model-name :target-type
                                      detector-model-name :required
                                      common-lisp:t :member-name
                                      "detectorModelName")
                                     (key-value :target-type key-value
                                      :member-name "keyValue"))
                                    (:shape-name "DeleteDetectorRequest"))

(smithy/sdk/shapes:define-list delete-detector-requests :member
                               delete-detector-request)

(smithy/sdk/shapes:define-input describe-alarm-request common-lisp:nil
                                ((alarm-model-name :target-type
                                  alarm-model-name :required common-lisp:t
                                  :member-name "alarmModelName" :http-label
                                  common-lisp:t)
                                 (key-value :target-type key-value :member-name
                                  "keyValue" :http-query "keyValue"))
                                (:shape-name "DescribeAlarmRequest"))

(smithy/sdk/shapes:define-output describe-alarm-response common-lisp:nil
                                 ((alarm :target-type alarm :member-name
                                   "alarm"))
                                 (:shape-name "DescribeAlarmResponse"))

(smithy/sdk/shapes:define-input describe-detector-request common-lisp:nil
                                ((detector-model-name :target-type
                                  detector-model-name :required common-lisp:t
                                  :member-name "detectorModelName" :http-label
                                  common-lisp:t)
                                 (key-value :target-type key-value :member-name
                                  "keyValue" :http-query "keyValue"))
                                (:shape-name "DescribeDetectorRequest"))

(smithy/sdk/shapes:define-output describe-detector-response common-lisp:nil
                                 ((detector :target-type detector :member-name
                                   "detector"))
                                 (:shape-name "DescribeDetectorResponse"))

(smithy/sdk/shapes:define-structure detector common-lisp:nil
                                    ((detector-model-name :target-type
                                      detector-model-name :member-name
                                      "detectorModelName")
                                     (key-value :target-type key-value
                                      :member-name "keyValue")
                                     (detector-model-version :target-type
                                      detector-model-version :member-name
                                      "detectorModelVersion")
                                     (state :target-type detector-state
                                      :member-name "state")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (last-update-time :target-type timestamp
                                      :member-name "lastUpdateTime"))
                                    (:shape-name "Detector"))

(smithy/sdk/shapes:define-type detector-model-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type detector-model-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure detector-state common-lisp:nil
                                    ((state-name :target-type state-name
                                      :required common-lisp:t :member-name
                                      "stateName")
                                     (variables :target-type variables
                                      :required common-lisp:t :member-name
                                      "variables")
                                     (timers :target-type timers :required
                                      common-lisp:t :member-name "timers"))
                                    (:shape-name "DetectorState"))

(smithy/sdk/shapes:define-structure detector-state-definition common-lisp:nil
                                    ((state-name :target-type state-name
                                      :required common-lisp:t :member-name
                                      "stateName")
                                     (variables :target-type
                                      variable-definitions :required
                                      common-lisp:t :member-name "variables")
                                     (timers :target-type timer-definitions
                                      :required common-lisp:t :member-name
                                      "timers"))
                                    (:shape-name "DetectorStateDefinition"))

(smithy/sdk/shapes:define-structure detector-state-summary common-lisp:nil
                                    ((state-name :target-type state-name
                                      :member-name "stateName"))
                                    (:shape-name "DetectorStateSummary"))

(smithy/sdk/shapes:define-list detector-summaries :member detector-summary)

(smithy/sdk/shapes:define-structure detector-summary common-lisp:nil
                                    ((detector-model-name :target-type
                                      detector-model-name :member-name
                                      "detectorModelName")
                                     (key-value :target-type key-value
                                      :member-name "keyValue")
                                     (detector-model-version :target-type
                                      detector-model-version :member-name
                                      "detectorModelVersion")
                                     (state :target-type detector-state-summary
                                      :member-name "state")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (last-update-time :target-type timestamp
                                      :member-name "lastUpdateTime"))
                                    (:shape-name "DetectorSummary"))

(smithy/sdk/shapes:define-structure disable-action-configuration
                                    common-lisp:nil
                                    ((note :target-type note :member-name
                                      "note"))
                                    (:shape-name "DisableActionConfiguration"))

(smithy/sdk/shapes:define-structure disable-alarm-action-request
                                    common-lisp:nil
                                    ((request-id :target-type request-id
                                      :required common-lisp:t :member-name
                                      "requestId")
                                     (alarm-model-name :target-type
                                      alarm-model-name :required common-lisp:t
                                      :member-name "alarmModelName")
                                     (key-value :target-type key-value
                                      :member-name "keyValue")
                                     (note :target-type note :member-name
                                      "note"))
                                    (:shape-name "DisableAlarmActionRequest"))

(smithy/sdk/shapes:define-list disable-alarm-action-requests :member
                               disable-alarm-action-request)

(smithy/sdk/shapes:define-structure enable-action-configuration common-lisp:nil
                                    ((note :target-type note :member-name
                                      "note"))
                                    (:shape-name "EnableActionConfiguration"))

(smithy/sdk/shapes:define-structure enable-alarm-action-request common-lisp:nil
                                    ((request-id :target-type request-id
                                      :required common-lisp:t :member-name
                                      "requestId")
                                     (alarm-model-name :target-type
                                      alarm-model-name :required common-lisp:t
                                      :member-name "alarmModelName")
                                     (key-value :target-type key-value
                                      :member-name "keyValue")
                                     (note :target-type note :member-name
                                      "note"))
                                    (:shape-name "EnableAlarmActionRequest"))

(smithy/sdk/shapes:define-list enable-alarm-action-requests :member
                               enable-alarm-action-request)

(smithy/sdk/shapes:define-type ephemeral-input-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type epoch-milli-timestamp
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-enum error-code
    common-lisp:nil
  (:resource-not-found-exception "ResourceNotFoundException")
  (:invalid-request-exception "InvalidRequestException")
  (:internal-failure-exception "InternalFailureException")
  (:service-unavailable-exception "ServiceUnavailableException")
  (:throttling-exception "ThrottlingException"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum event-type
    common-lisp:nil
  (:state-change "STATE_CHANGE"))

(smithy/sdk/shapes:define-type input-property-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-failure-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InternalFailureException")
                                (:error-code 500)
                                (:base-class iot-events-data-error))

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400)
                                (:base-class iot-events-data-error))

(smithy/sdk/shapes:define-type key-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-alarms-request common-lisp:nil
                                ((alarm-model-name :target-type
                                  alarm-model-name :required common-lisp:t
                                  :member-name "alarmModelName" :http-label
                                  common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListAlarmsRequest"))

(smithy/sdk/shapes:define-output list-alarms-response common-lisp:nil
                                 ((alarm-summaries :target-type alarm-summaries
                                   :member-name "alarmSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListAlarmsResponse"))

(smithy/sdk/shapes:define-input list-detectors-request common-lisp:nil
                                ((detector-model-name :target-type
                                  detector-model-name :required common-lisp:t
                                  :member-name "detectorModelName" :http-label
                                  common-lisp:t)
                                 (state-name :target-type state-name
                                  :member-name "stateName" :http-query
                                  "stateName")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListDetectorsRequest"))

(smithy/sdk/shapes:define-output list-detectors-response common-lisp:nil
                                 ((detector-summaries :target-type
                                   detector-summaries :member-name
                                   "detectorSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDetectorsResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure message common-lisp:nil
                                    ((message-id :target-type message-id
                                      :required common-lisp:t :member-name
                                      "messageId")
                                     (input-name :target-type
                                      ephemeral-input-name :required
                                      common-lisp:t :member-name "inputName")
                                     (payload :target-type payload :required
                                      common-lisp:t :member-name "payload")
                                     (timestamp :target-type timestamp-value
                                      :member-name "timestamp"))
                                    (:shape-name "Message"))

(smithy/sdk/shapes:define-type message-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list messages :member message)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type note smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type payload smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type request-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure reset-action-configuration common-lisp:nil
                                    ((note :target-type note :member-name
                                      "note"))
                                    (:shape-name "ResetActionConfiguration"))

(smithy/sdk/shapes:define-structure reset-alarm-action-request common-lisp:nil
                                    ((request-id :target-type request-id
                                      :required common-lisp:t :member-name
                                      "requestId")
                                     (alarm-model-name :target-type
                                      alarm-model-name :required common-lisp:t
                                      :member-name "alarmModelName")
                                     (key-value :target-type key-value
                                      :member-name "keyValue")
                                     (note :target-type note :member-name
                                      "note"))
                                    (:shape-name "ResetAlarmActionRequest"))

(smithy/sdk/shapes:define-list reset-alarm-action-requests :member
                               reset-alarm-action-request)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404)
                                (:base-class iot-events-data-error))

(smithy/sdk/shapes:define-structure rule-evaluation common-lisp:nil
                                    ((simple-rule-evaluation :target-type
                                      simple-rule-evaluation :member-name
                                      "simpleRuleEvaluation"))
                                    (:shape-name "RuleEvaluation"))

(smithy/sdk/shapes:define-type seconds smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503)
                                (:base-class iot-events-data-error))

(smithy/sdk/shapes:define-type severity smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure simple-rule-evaluation common-lisp:nil
                                    ((input-property-value :target-type
                                      input-property-value :member-name
                                      "inputPropertyValue")
                                     (operator :target-type comparison-operator
                                      :member-name "operator")
                                     (threshold-value :target-type
                                      threshold-value :member-name
                                      "thresholdValue"))
                                    (:shape-name "SimpleRuleEvaluation"))

(smithy/sdk/shapes:define-structure snooze-action-configuration common-lisp:nil
                                    ((snooze-duration :target-type
                                      snooze-duration :member-name
                                      "snoozeDuration")
                                     (note :target-type note :member-name
                                      "note"))
                                    (:shape-name "SnoozeActionConfiguration"))

(smithy/sdk/shapes:define-structure snooze-alarm-action-request common-lisp:nil
                                    ((request-id :target-type request-id
                                      :required common-lisp:t :member-name
                                      "requestId")
                                     (alarm-model-name :target-type
                                      alarm-model-name :required common-lisp:t
                                      :member-name "alarmModelName")
                                     (key-value :target-type key-value
                                      :member-name "keyValue")
                                     (note :target-type note :member-name
                                      "note")
                                     (snooze-duration :target-type
                                      snooze-duration :required common-lisp:t
                                      :member-name "snoozeDuration"))
                                    (:shape-name "SnoozeAlarmActionRequest"))

(smithy/sdk/shapes:define-list snooze-alarm-action-requests :member
                               snooze-alarm-action-request)

(smithy/sdk/shapes:define-type snooze-duration smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure state-change-configuration common-lisp:nil
                                    ((trigger-type :target-type trigger-type
                                      :member-name "triggerType"))
                                    (:shape-name "StateChangeConfiguration"))

(smithy/sdk/shapes:define-type state-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure system-event common-lisp:nil
                                    ((event-type :target-type event-type
                                      :member-name "eventType")
                                     (state-change-configuration :target-type
                                      state-change-configuration :member-name
                                      "stateChangeConfiguration"))
                                    (:shape-name "SystemEvent"))

(smithy/sdk/shapes:define-type threshold-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429)
                                (:base-class iot-events-data-error))

(smithy/sdk/shapes:define-structure timer common-lisp:nil
                                    ((name :target-type timer-name :required
                                      common-lisp:t :member-name "name")
                                     (timestamp :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "timestamp"))
                                    (:shape-name "Timer"))

(smithy/sdk/shapes:define-structure timer-definition common-lisp:nil
                                    ((name :target-type timer-name :required
                                      common-lisp:t :member-name "name")
                                     (seconds :target-type seconds :required
                                      common-lisp:t :member-name "seconds"))
                                    (:shape-name "TimerDefinition"))

(smithy/sdk/shapes:define-list timer-definitions :member timer-definition)

(smithy/sdk/shapes:define-type timer-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list timers :member timer)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure timestamp-value common-lisp:nil
                                    ((time-in-millis :target-type
                                      epoch-milli-timestamp :member-name
                                      "timeInMillis"))
                                    (:shape-name "TimestampValue"))

(smithy/sdk/shapes:define-enum trigger-type
    common-lisp:nil
  (:snooze-timeout "SNOOZE_TIMEOUT"))

(smithy/sdk/shapes:define-structure update-detector-request common-lisp:nil
                                    ((message-id :target-type message-id
                                      :required common-lisp:t :member-name
                                      "messageId")
                                     (detector-model-name :target-type
                                      detector-model-name :required
                                      common-lisp:t :member-name
                                      "detectorModelName")
                                     (key-value :target-type key-value
                                      :member-name "keyValue")
                                     (state :target-type
                                      detector-state-definition :required
                                      common-lisp:t :member-name "state"))
                                    (:shape-name "UpdateDetectorRequest"))

(smithy/sdk/shapes:define-list update-detector-requests :member
                               update-detector-request)

(smithy/sdk/shapes:define-structure variable common-lisp:nil
                                    ((name :target-type variable-name :required
                                      common-lisp:t :member-name "name")
                                     (value :target-type variable-value
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name "Variable"))

(smithy/sdk/shapes:define-structure variable-definition common-lisp:nil
                                    ((name :target-type variable-name :required
                                      common-lisp:t :member-name "name")
                                     (value :target-type variable-value
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name "VariableDefinition"))

(smithy/sdk/shapes:define-list variable-definitions :member variable-definition)

(smithy/sdk/shapes:define-type variable-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type variable-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list variables :member variable)

(smithy/sdk/operation:define-operation batch-acknowledge-alarm :shape-name
                                       "BatchAcknowledgeAlarm" :input
                                       batch-acknowledge-alarm-request :output
                                       batch-acknowledge-alarm-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/alarms/acknowledge" :code 202)

(smithy/sdk/operation:define-operation batch-delete-detector :shape-name
                                       "BatchDeleteDetector" :input
                                       batch-delete-detector-request :output
                                       batch-delete-detector-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "POST" :uri "/detectors/delete"
                                       :code 200)

(smithy/sdk/operation:define-operation batch-disable-alarm :shape-name
                                       "BatchDisableAlarm" :input
                                       batch-disable-alarm-request :output
                                       batch-disable-alarm-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "POST" :uri "/alarms/disable"
                                       :code 202)

(smithy/sdk/operation:define-operation batch-enable-alarm :shape-name
                                       "BatchEnableAlarm" :input
                                       batch-enable-alarm-request :output
                                       batch-enable-alarm-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "POST" :uri "/alarms/enable"
                                       :code 202)

(smithy/sdk/operation:define-operation batch-put-message :shape-name
                                       "BatchPutMessage" :input
                                       batch-put-message-request :output
                                       batch-put-message-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "POST" :uri "/inputs/messages"
                                       :code 200)

(smithy/sdk/operation:define-operation batch-reset-alarm :shape-name
                                       "BatchResetAlarm" :input
                                       batch-reset-alarm-request :output
                                       batch-reset-alarm-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "POST" :uri "/alarms/reset"
                                       :code 202)

(smithy/sdk/operation:define-operation batch-snooze-alarm :shape-name
                                       "BatchSnoozeAlarm" :input
                                       batch-snooze-alarm-request :output
                                       batch-snooze-alarm-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "POST" :uri "/alarms/snooze"
                                       :code 202)

(smithy/sdk/operation:define-operation batch-update-detector :shape-name
                                       "BatchUpdateDetector" :input
                                       batch-update-detector-request :output
                                       batch-update-detector-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "POST" :uri "/detectors" :code
                                       200)

(smithy/sdk/operation:define-operation describe-alarm :shape-name
                                       "DescribeAlarm" :input
                                       describe-alarm-request :output
                                       describe-alarm-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/alarms/{alarmModelName}/keyValues"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-detector :shape-name
                                       "DescribeDetector" :input
                                       describe-detector-request :output
                                       describe-detector-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/detectors/{detectorModelName}/keyValues"
                                       :code 200)

(smithy/sdk/operation:define-operation list-alarms :shape-name "ListAlarms"
                                       :input list-alarms-request :output
                                       list-alarms-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/alarms/{alarmModelName}" :code 200)

(smithy/sdk/operation:define-operation list-detectors :shape-name
                                       "ListDetectors" :input
                                       list-detectors-request :output
                                       list-detectors-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/detectors/{detectorModelName}" :code
                                       200)
