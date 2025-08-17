(uiop/package:define-package #:pira/iot-events (:use)
                             (:export #:acknowledge-flow
                              #:acknowledge-flow-enabled #:action #:actions
                              #:alarm-action #:alarm-actions
                              #:alarm-capabilities #:alarm-event-actions
                              #:alarm-model-arn #:alarm-model-description
                              #:alarm-model-name #:alarm-model-summaries
                              #:alarm-model-summary #:alarm-model-version
                              #:alarm-model-version-status
                              #:alarm-model-version-summaries
                              #:alarm-model-version-summary
                              #:alarm-notification #:alarm-rule
                              #:amazon-resource-name #:analysis-id
                              #:analysis-message #:analysis-result
                              #:analysis-result-level
                              #:analysis-result-location
                              #:analysis-result-location-path
                              #:analysis-result-locations #:analysis-results
                              #:analysis-status #:analysis-type #:asset-id
                              #:asset-model-id #:asset-property-alias
                              #:asset-property-boolean-value
                              #:asset-property-double-value
                              #:asset-property-entry-id #:asset-property-id
                              #:asset-property-integer-value
                              #:asset-property-offset-in-nanos
                              #:asset-property-quality
                              #:asset-property-string-value
                              #:asset-property-time-in-seconds
                              #:asset-property-timestamp #:asset-property-value
                              #:asset-property-variant #:attribute
                              #:attribute-json-path #:attributes
                              #:clear-timer-action #:comparison-operator
                              #:condition #:content-expression
                              #:create-alarm-model #:create-detector-model
                              #:create-input #:delete-alarm-model
                              #:delete-detector-model #:delete-input
                              #:delivery-stream-name #:describe-alarm-model
                              #:describe-detector-model
                              #:describe-detector-model-analysis
                              #:describe-input #:describe-logging-options
                              #:detector-debug-option #:detector-debug-options
                              #:detector-model #:detector-model-arn
                              #:detector-model-configuration
                              #:detector-model-definition
                              #:detector-model-description
                              #:detector-model-name #:detector-model-summaries
                              #:detector-model-summary #:detector-model-version
                              #:detector-model-version-status
                              #:detector-model-version-summaries
                              #:detector-model-version-summary
                              #:disabled-on-initialization #:dynamo-dbaction
                              #:dynamo-dbv2action #:dynamo-key-field
                              #:dynamo-key-type #:dynamo-key-value
                              #:dynamo-operation #:dynamo-table-name
                              #:email-configuration #:email-configurations
                              #:email-content #:email-recipients
                              #:email-subject #:evaluation-method #:event
                              #:event-name #:events #:firehose-action
                              #:firehose-separator #:from-email
                              #:get-detector-model-analysis-results
                              #:identity-store-id
                              #:initialization-configuration #:input
                              #:input-arn #:input-configuration
                              #:input-definition #:input-description
                              #:input-identifier #:input-name #:input-property
                              #:input-status #:input-summaries #:input-summary
                              #:iot-columbo-service #:iot-events-action
                              #:iot-events-input-identifier
                              #:iot-site-wise-action
                              #:iot-site-wise-asset-model-property-identifier
                              #:iot-site-wise-input-identifier
                              #:iot-topic-publish-action #:key-value
                              #:lambda-action #:list-alarm-model-versions
                              #:list-alarm-models
                              #:list-detector-model-versions
                              #:list-detector-models #:list-input-routings
                              #:list-inputs #:list-tags-for-resource
                              #:logging-enabled #:logging-level
                              #:logging-options #:mqtttopic
                              #:max-analysis-results #:max-results #:next-token
                              #:notification-action #:notification-actions
                              #:notification-additional-message
                              #:notification-target-actions
                              #:on-enter-lifecycle #:on-exit-lifecycle
                              #:on-input-lifecycle #:payload #:payload-type
                              #:put-logging-options #:queue-url
                              #:recipient-detail #:recipient-details
                              #:reset-timer-action #:resource-name
                              #:routed-resource #:routed-resources
                              #:smsconfiguration #:smsconfigurations
                              #:smssender-id #:snstopic-publish-action
                              #:ssoidentity #:ssoreference-id #:seconds
                              #:set-timer-action #:set-variable-action
                              #:severity #:simple-rule #:sqs-action
                              #:start-detector-model-analysis #:state
                              #:state-name #:states #:status-message #:tag
                              #:tag-key #:tag-keys #:tag-resource #:tag-value
                              #:tags #:threshold #:timer-name #:timestamp
                              #:transition-event #:transition-events
                              #:untag-resource #:update-alarm-model
                              #:update-detector-model #:update-input
                              #:use-base64 #:variable-name #:variable-value
                              #:error-message #:resource-arn #:resource-id))
(common-lisp:in-package #:pira/iot-events)

(smithy/sdk/service:define-service iot-columbo-service :shape-name
                                   "IotColumboService" :version "2018-07-27"
                                   :title "AWS IoT Events" :operations
                                   '(create-alarm-model create-detector-model
                                     create-input delete-alarm-model
                                     delete-detector-model delete-input
                                     describe-alarm-model
                                     describe-detector-model
                                     describe-detector-model-analysis
                                     describe-input describe-logging-options
                                     get-detector-model-analysis-results
                                     list-alarm-models
                                     list-alarm-model-versions
                                     list-detector-models
                                     list-detector-model-versions
                                     list-input-routings list-inputs
                                     list-tags-for-resource put-logging-options
                                     start-detector-model-analysis tag-resource
                                     untag-resource update-alarm-model
                                     update-detector-model update-input)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "IoT Events")
                                      ("arnNamespace" . "iotevents")
                                      ("cloudFormationName" . "IoTEvents")
                                      ("cloudTrailEventSource"
                                       . "iotevents.amazonaws.com")
                                      ("docId" . "iotevents-2018-07-27")
                                      ("endpointPrefix" . "iotevents"))
                                     ("aws.auth#sigv4" ("name" . "iotevents"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-structure acknowledge-flow common-lisp:nil
                                    ((enabled :target-type
                                      acknowledge-flow-enabled :required
                                      common-lisp:t :member-name "enabled"))
                                    (:shape-name "AcknowledgeFlow"))

(smithy/sdk/shapes:define-type acknowledge-flow-enabled
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure action common-lisp:nil
                                    ((set-variable :target-type
                                      set-variable-action :member-name
                                      "setVariable")
                                     (sns :target-type snstopic-publish-action
                                      :member-name "sns")
                                     (iot-topic-publish :target-type
                                      iot-topic-publish-action :member-name
                                      "iotTopicPublish")
                                     (set-timer :target-type set-timer-action
                                      :member-name "setTimer")
                                     (clear-timer :target-type
                                      clear-timer-action :member-name
                                      "clearTimer")
                                     (reset-timer :target-type
                                      reset-timer-action :member-name
                                      "resetTimer")
                                     (lambda :target-type lambda-action
                                      :member-name "lambda")
                                     (iot-events :target-type iot-events-action
                                      :member-name "iotEvents")
                                     (sqs :target-type sqs-action :member-name
                                      "sqs")
                                     (firehose :target-type firehose-action
                                      :member-name "firehose")
                                     (dynamo-db :target-type dynamo-dbaction
                                      :member-name "dynamoDB")
                                     (dynamo-dbv2 :target-type
                                      dynamo-dbv2action :member-name
                                      "dynamoDBv2")
                                     (iot-site-wise :target-type
                                      iot-site-wise-action :member-name
                                      "iotSiteWise"))
                                    (:shape-name "Action"))

(smithy/sdk/shapes:define-list actions :member action)

(smithy/sdk/shapes:define-structure alarm-action common-lisp:nil
                                    ((sns :target-type snstopic-publish-action
                                      :member-name "sns")
                                     (iot-topic-publish :target-type
                                      iot-topic-publish-action :member-name
                                      "iotTopicPublish")
                                     (lambda :target-type lambda-action
                                      :member-name "lambda")
                                     (iot-events :target-type iot-events-action
                                      :member-name "iotEvents")
                                     (sqs :target-type sqs-action :member-name
                                      "sqs")
                                     (firehose :target-type firehose-action
                                      :member-name "firehose")
                                     (dynamo-db :target-type dynamo-dbaction
                                      :member-name "dynamoDB")
                                     (dynamo-dbv2 :target-type
                                      dynamo-dbv2action :member-name
                                      "dynamoDBv2")
                                     (iot-site-wise :target-type
                                      iot-site-wise-action :member-name
                                      "iotSiteWise"))
                                    (:shape-name "AlarmAction"))

(smithy/sdk/shapes:define-list alarm-actions :member alarm-action)

(smithy/sdk/shapes:define-structure alarm-capabilities common-lisp:nil
                                    ((initialization-configuration :target-type
                                      initialization-configuration :member-name
                                      "initializationConfiguration")
                                     (acknowledge-flow :target-type
                                      acknowledge-flow :member-name
                                      "acknowledgeFlow"))
                                    (:shape-name "AlarmCapabilities"))

(smithy/sdk/shapes:define-structure alarm-event-actions common-lisp:nil
                                    ((alarm-actions :target-type alarm-actions
                                      :member-name "alarmActions"))
                                    (:shape-name "AlarmEventActions"))

(smithy/sdk/shapes:define-type alarm-model-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type alarm-model-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type alarm-model-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list alarm-model-summaries :member
                               alarm-model-summary)

(smithy/sdk/shapes:define-structure alarm-model-summary common-lisp:nil
                                    ((creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (alarm-model-description :target-type
                                      alarm-model-description :member-name
                                      "alarmModelDescription")
                                     (alarm-model-name :target-type
                                      alarm-model-name :member-name
                                      "alarmModelName"))
                                    (:shape-name "AlarmModelSummary"))

(smithy/sdk/shapes:define-type alarm-model-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum alarm-model-version-status
    common-lisp:nil
  (:active "ACTIVE")
  (:activating "ACTIVATING")
  (:inactive "INACTIVE")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-list alarm-model-version-summaries :member
                               alarm-model-version-summary)

(smithy/sdk/shapes:define-structure alarm-model-version-summary common-lisp:nil
                                    ((alarm-model-name :target-type
                                      alarm-model-name :member-name
                                      "alarmModelName")
                                     (alarm-model-arn :target-type
                                      alarm-model-arn :member-name
                                      "alarmModelArn")
                                     (alarm-model-version :target-type
                                      alarm-model-version :member-name
                                      "alarmModelVersion")
                                     (role-arn :target-type
                                      amazon-resource-name :member-name
                                      "roleArn")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (last-update-time :target-type timestamp
                                      :member-name "lastUpdateTime")
                                     (status :target-type
                                      alarm-model-version-status :member-name
                                      "status")
                                     (status-message :target-type
                                      status-message :member-name
                                      "statusMessage"))
                                    (:shape-name "AlarmModelVersionSummary"))

(smithy/sdk/shapes:define-structure alarm-notification common-lisp:nil
                                    ((notification-actions :target-type
                                      notification-actions :member-name
                                      "notificationActions"))
                                    (:shape-name "AlarmNotification"))

(smithy/sdk/shapes:define-structure alarm-rule common-lisp:nil
                                    ((simple-rule :target-type simple-rule
                                      :member-name "simpleRule"))
                                    (:shape-name "AlarmRule"))

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type analysis-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type analysis-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure analysis-result common-lisp:nil
                                    ((type :target-type analysis-type
                                      :member-name "type")
                                     (level :target-type analysis-result-level
                                      :member-name "level")
                                     (message :target-type analysis-message
                                      :member-name "message")
                                     (locations :target-type
                                      analysis-result-locations :member-name
                                      "locations"))
                                    (:shape-name "AnalysisResult"))

(smithy/sdk/shapes:define-enum analysis-result-level
    common-lisp:nil
  (:info "INFO")
  (:warning "WARNING")
  (:error "ERROR"))

(smithy/sdk/shapes:define-structure analysis-result-location common-lisp:nil
                                    ((path :target-type
                                      analysis-result-location-path
                                      :member-name "path"))
                                    (:shape-name "AnalysisResultLocation"))

(smithy/sdk/shapes:define-type analysis-result-location-path
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list analysis-result-locations :member
                               analysis-result-location)

(smithy/sdk/shapes:define-list analysis-results :member analysis-result)

(smithy/sdk/shapes:define-enum analysis-status
    common-lisp:nil
  (:running "RUNNING")
  (:complete "COMPLETE")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-type analysis-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type asset-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type asset-model-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type asset-property-alias
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type asset-property-boolean-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type asset-property-double-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type asset-property-entry-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type asset-property-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type asset-property-integer-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type asset-property-offset-in-nanos
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type asset-property-quality
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type asset-property-string-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type asset-property-time-in-seconds
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure asset-property-timestamp common-lisp:nil
                                    ((time-in-seconds :target-type
                                      asset-property-time-in-seconds :required
                                      common-lisp:t :member-name
                                      "timeInSeconds")
                                     (offset-in-nanos :target-type
                                      asset-property-offset-in-nanos
                                      :member-name "offsetInNanos"))
                                    (:shape-name "AssetPropertyTimestamp"))

(smithy/sdk/shapes:define-structure asset-property-value common-lisp:nil
                                    ((value :target-type asset-property-variant
                                      :member-name "value")
                                     (timestamp :target-type
                                      asset-property-timestamp :member-name
                                      "timestamp")
                                     (quality :target-type
                                      asset-property-quality :member-name
                                      "quality"))
                                    (:shape-name "AssetPropertyValue"))

(smithy/sdk/shapes:define-structure asset-property-variant common-lisp:nil
                                    ((string-value :target-type
                                      asset-property-string-value :member-name
                                      "stringValue")
                                     (integer-value :target-type
                                      asset-property-integer-value :member-name
                                      "integerValue")
                                     (double-value :target-type
                                      asset-property-double-value :member-name
                                      "doubleValue")
                                     (boolean-value :target-type
                                      asset-property-boolean-value :member-name
                                      "booleanValue"))
                                    (:shape-name "AssetPropertyVariant"))

(smithy/sdk/shapes:define-structure attribute common-lisp:nil
                                    ((json-path :target-type
                                      attribute-json-path :required
                                      common-lisp:t :member-name "jsonPath"))
                                    (:shape-name "Attribute"))

(smithy/sdk/shapes:define-type attribute-json-path
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list attributes :member attribute)

(smithy/sdk/shapes:define-structure clear-timer-action common-lisp:nil
                                    ((timer-name :target-type timer-name
                                      :required common-lisp:t :member-name
                                      "timerName"))
                                    (:shape-name "ClearTimerAction"))

(smithy/sdk/shapes:define-enum comparison-operator
    common-lisp:nil
  (:greater "GREATER")
  (:greater-or-equal "GREATER_OR_EQUAL")
  (:less "LESS")
  (:less-or-equal "LESS_OR_EQUAL")
  (:equal "EQUAL")
  (:not-equal "NOT_EQUAL"))

(smithy/sdk/shapes:define-type condition smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type content-expression
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-alarm-model-request common-lisp:nil
                                ((alarm-model-name :target-type
                                  alarm-model-name :required common-lisp:t
                                  :member-name "alarmModelName")
                                 (alarm-model-description :target-type
                                  alarm-model-description :member-name
                                  "alarmModelDescription")
                                 (role-arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name
                                  "roleArn")
                                 (tags :target-type tags :member-name "tags")
                                 (key :target-type attribute-json-path
                                  :member-name "key")
                                 (severity :target-type severity :member-name
                                  "severity")
                                 (alarm-rule :target-type alarm-rule :required
                                  common-lisp:t :member-name "alarmRule")
                                 (alarm-notification :target-type
                                  alarm-notification :member-name
                                  "alarmNotification")
                                 (alarm-event-actions :target-type
                                  alarm-event-actions :member-name
                                  "alarmEventActions")
                                 (alarm-capabilities :target-type
                                  alarm-capabilities :member-name
                                  "alarmCapabilities"))
                                (:shape-name "CreateAlarmModelRequest"))

(smithy/sdk/shapes:define-output create-alarm-model-response common-lisp:nil
                                 ((creation-time :target-type timestamp
                                   :member-name "creationTime")
                                  (alarm-model-arn :target-type alarm-model-arn
                                   :member-name "alarmModelArn")
                                  (alarm-model-version :target-type
                                   alarm-model-version :member-name
                                   "alarmModelVersion")
                                  (last-update-time :target-type timestamp
                                   :member-name "lastUpdateTime")
                                  (status :target-type
                                   alarm-model-version-status :member-name
                                   "status"))
                                 (:shape-name "CreateAlarmModelResponse"))

(smithy/sdk/shapes:define-input create-detector-model-request common-lisp:nil
                                ((detector-model-name :target-type
                                  detector-model-name :required common-lisp:t
                                  :member-name "detectorModelName")
                                 (detector-model-definition :target-type
                                  detector-model-definition :required
                                  common-lisp:t :member-name
                                  "detectorModelDefinition")
                                 (detector-model-description :target-type
                                  detector-model-description :member-name
                                  "detectorModelDescription")
                                 (key :target-type attribute-json-path
                                  :member-name "key")
                                 (role-arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name
                                  "roleArn")
                                 (tags :target-type tags :member-name "tags")
                                 (evaluation-method :target-type
                                  evaluation-method :member-name
                                  "evaluationMethod"))
                                (:shape-name "CreateDetectorModelRequest"))

(smithy/sdk/shapes:define-output create-detector-model-response common-lisp:nil
                                 ((detector-model-configuration :target-type
                                   detector-model-configuration :member-name
                                   "detectorModelConfiguration"))
                                 (:shape-name "CreateDetectorModelResponse"))

(smithy/sdk/shapes:define-input create-input-request common-lisp:nil
                                ((input-name :target-type input-name :required
                                  common-lisp:t :member-name "inputName")
                                 (input-description :target-type
                                  input-description :member-name
                                  "inputDescription")
                                 (input-definition :target-type
                                  input-definition :required common-lisp:t
                                  :member-name "inputDefinition")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateInputRequest"))

(smithy/sdk/shapes:define-output create-input-response common-lisp:nil
                                 ((input-configuration :target-type
                                   input-configuration :member-name
                                   "inputConfiguration"))
                                 (:shape-name "CreateInputResponse"))

(smithy/sdk/shapes:define-input delete-alarm-model-request common-lisp:nil
                                ((alarm-model-name :target-type
                                  alarm-model-name :required common-lisp:t
                                  :member-name "alarmModelName" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteAlarmModelRequest"))

(smithy/sdk/shapes:define-output delete-alarm-model-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteAlarmModelResponse"))

(smithy/sdk/shapes:define-input delete-detector-model-request common-lisp:nil
                                ((detector-model-name :target-type
                                  detector-model-name :required common-lisp:t
                                  :member-name "detectorModelName" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteDetectorModelRequest"))

(smithy/sdk/shapes:define-output delete-detector-model-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteDetectorModelResponse"))

(smithy/sdk/shapes:define-input delete-input-request common-lisp:nil
                                ((input-name :target-type input-name :required
                                  common-lisp:t :member-name "inputName"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteInputRequest"))

(smithy/sdk/shapes:define-output delete-input-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteInputResponse"))

(smithy/sdk/shapes:define-type delivery-stream-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input describe-alarm-model-request common-lisp:nil
                                ((alarm-model-name :target-type
                                  alarm-model-name :required common-lisp:t
                                  :member-name "alarmModelName" :http-label
                                  common-lisp:t)
                                 (alarm-model-version :target-type
                                  alarm-model-version :member-name
                                  "alarmModelVersion" :http-query "version"))
                                (:shape-name "DescribeAlarmModelRequest"))

(smithy/sdk/shapes:define-output describe-alarm-model-response common-lisp:nil
                                 ((creation-time :target-type timestamp
                                   :member-name "creationTime")
                                  (alarm-model-arn :target-type alarm-model-arn
                                   :member-name "alarmModelArn")
                                  (alarm-model-version :target-type
                                   alarm-model-version :member-name
                                   "alarmModelVersion")
                                  (last-update-time :target-type timestamp
                                   :member-name "lastUpdateTime")
                                  (status :target-type
                                   alarm-model-version-status :member-name
                                   "status")
                                  (status-message :target-type status-message
                                   :member-name "statusMessage")
                                  (alarm-model-name :target-type
                                   alarm-model-name :member-name
                                   "alarmModelName")
                                  (alarm-model-description :target-type
                                   alarm-model-description :member-name
                                   "alarmModelDescription")
                                  (role-arn :target-type amazon-resource-name
                                   :member-name "roleArn")
                                  (key :target-type attribute-json-path
                                   :member-name "key")
                                  (severity :target-type severity :member-name
                                   "severity")
                                  (alarm-rule :target-type alarm-rule
                                   :member-name "alarmRule")
                                  (alarm-notification :target-type
                                   alarm-notification :member-name
                                   "alarmNotification")
                                  (alarm-event-actions :target-type
                                   alarm-event-actions :member-name
                                   "alarmEventActions")
                                  (alarm-capabilities :target-type
                                   alarm-capabilities :member-name
                                   "alarmCapabilities"))
                                 (:shape-name "DescribeAlarmModelResponse"))

(smithy/sdk/shapes:define-input describe-detector-model-analysis-request
                                common-lisp:nil
                                ((analysis-id :target-type analysis-id
                                  :required common-lisp:t :member-name
                                  "analysisId" :http-label common-lisp:t))
                                (:shape-name
                                 "DescribeDetectorModelAnalysisRequest"))

(smithy/sdk/shapes:define-output describe-detector-model-analysis-response
                                 common-lisp:nil
                                 ((status :target-type analysis-status
                                   :member-name "status"))
                                 (:shape-name
                                  "DescribeDetectorModelAnalysisResponse"))

(smithy/sdk/shapes:define-input describe-detector-model-request common-lisp:nil
                                ((detector-model-name :target-type
                                  detector-model-name :required common-lisp:t
                                  :member-name "detectorModelName" :http-label
                                  common-lisp:t)
                                 (detector-model-version :target-type
                                  detector-model-version :member-name
                                  "detectorModelVersion" :http-query
                                  "version"))
                                (:shape-name "DescribeDetectorModelRequest"))

(smithy/sdk/shapes:define-output describe-detector-model-response
                                 common-lisp:nil
                                 ((detector-model :target-type detector-model
                                   :member-name "detectorModel"))
                                 (:shape-name "DescribeDetectorModelResponse"))

(smithy/sdk/shapes:define-input describe-input-request common-lisp:nil
                                ((input-name :target-type input-name :required
                                  common-lisp:t :member-name "inputName"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeInputRequest"))

(smithy/sdk/shapes:define-output describe-input-response common-lisp:nil
                                 ((input :target-type input :member-name
                                   "input"))
                                 (:shape-name "DescribeInputResponse"))

(smithy/sdk/shapes:define-input describe-logging-options-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name "DescribeLoggingOptionsRequest"))

(smithy/sdk/shapes:define-output describe-logging-options-response
                                 common-lisp:nil
                                 ((logging-options :target-type logging-options
                                   :member-name "loggingOptions"))
                                 (:shape-name "DescribeLoggingOptionsResponse"))

(smithy/sdk/shapes:define-structure detector-debug-option common-lisp:nil
                                    ((detector-model-name :target-type
                                      detector-model-name :required
                                      common-lisp:t :member-name
                                      "detectorModelName")
                                     (key-value :target-type key-value
                                      :member-name "keyValue"))
                                    (:shape-name "DetectorDebugOption"))

(smithy/sdk/shapes:define-list detector-debug-options :member
                               detector-debug-option)

(smithy/sdk/shapes:define-structure detector-model common-lisp:nil
                                    ((detector-model-definition :target-type
                                      detector-model-definition :member-name
                                      "detectorModelDefinition")
                                     (detector-model-configuration :target-type
                                      detector-model-configuration :member-name
                                      "detectorModelConfiguration"))
                                    (:shape-name "DetectorModel"))

(smithy/sdk/shapes:define-type detector-model-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure detector-model-configuration
                                    common-lisp:nil
                                    ((detector-model-name :target-type
                                      detector-model-name :member-name
                                      "detectorModelName")
                                     (detector-model-version :target-type
                                      detector-model-version :member-name
                                      "detectorModelVersion")
                                     (detector-model-description :target-type
                                      detector-model-description :member-name
                                      "detectorModelDescription")
                                     (detector-model-arn :target-type
                                      detector-model-arn :member-name
                                      "detectorModelArn")
                                     (role-arn :target-type
                                      amazon-resource-name :member-name
                                      "roleArn")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (last-update-time :target-type timestamp
                                      :member-name "lastUpdateTime")
                                     (status :target-type
                                      detector-model-version-status
                                      :member-name "status")
                                     (key :target-type attribute-json-path
                                      :member-name "key")
                                     (evaluation-method :target-type
                                      evaluation-method :member-name
                                      "evaluationMethod"))
                                    (:shape-name "DetectorModelConfiguration"))

(smithy/sdk/shapes:define-structure detector-model-definition common-lisp:nil
                                    ((states :target-type states :required
                                      common-lisp:t :member-name "states")
                                     (initial-state-name :target-type
                                      state-name :required common-lisp:t
                                      :member-name "initialStateName"))
                                    (:shape-name "DetectorModelDefinition"))

(smithy/sdk/shapes:define-type detector-model-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type detector-model-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list detector-model-summaries :member
                               detector-model-summary)

(smithy/sdk/shapes:define-structure detector-model-summary common-lisp:nil
                                    ((detector-model-name :target-type
                                      detector-model-name :member-name
                                      "detectorModelName")
                                     (detector-model-description :target-type
                                      detector-model-description :member-name
                                      "detectorModelDescription")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime"))
                                    (:shape-name "DetectorModelSummary"))

(smithy/sdk/shapes:define-type detector-model-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum detector-model-version-status
    common-lisp:nil
  (:active "ACTIVE")
  (:activating "ACTIVATING")
  (:inactive "INACTIVE")
  (:deprecated "DEPRECATED")
  (:draft "DRAFT")
  (:paused "PAUSED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-list detector-model-version-summaries :member
                               detector-model-version-summary)

(smithy/sdk/shapes:define-structure detector-model-version-summary
                                    common-lisp:nil
                                    ((detector-model-name :target-type
                                      detector-model-name :member-name
                                      "detectorModelName")
                                     (detector-model-version :target-type
                                      detector-model-version :member-name
                                      "detectorModelVersion")
                                     (detector-model-arn :target-type
                                      detector-model-arn :member-name
                                      "detectorModelArn")
                                     (role-arn :target-type
                                      amazon-resource-name :member-name
                                      "roleArn")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (last-update-time :target-type timestamp
                                      :member-name "lastUpdateTime")
                                     (status :target-type
                                      detector-model-version-status
                                      :member-name "status")
                                     (evaluation-method :target-type
                                      evaluation-method :member-name
                                      "evaluationMethod"))
                                    (:shape-name "DetectorModelVersionSummary"))

(smithy/sdk/shapes:define-type disabled-on-initialization
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure dynamo-dbaction common-lisp:nil
                                    ((hash-key-type :target-type
                                      dynamo-key-type :member-name
                                      "hashKeyType")
                                     (hash-key-field :target-type
                                      dynamo-key-field :required common-lisp:t
                                      :member-name "hashKeyField")
                                     (hash-key-value :target-type
                                      dynamo-key-value :required common-lisp:t
                                      :member-name "hashKeyValue")
                                     (range-key-type :target-type
                                      dynamo-key-type :member-name
                                      "rangeKeyType")
                                     (range-key-field :target-type
                                      dynamo-key-field :member-name
                                      "rangeKeyField")
                                     (range-key-value :target-type
                                      dynamo-key-value :member-name
                                      "rangeKeyValue")
                                     (operation :target-type dynamo-operation
                                      :member-name "operation")
                                     (payload-field :target-type
                                      dynamo-key-field :member-name
                                      "payloadField")
                                     (table-name :target-type dynamo-table-name
                                      :required common-lisp:t :member-name
                                      "tableName")
                                     (payload :target-type payload :member-name
                                      "payload"))
                                    (:shape-name "DynamoDBAction"))

(smithy/sdk/shapes:define-structure dynamo-dbv2action common-lisp:nil
                                    ((table-name :target-type dynamo-table-name
                                      :required common-lisp:t :member-name
                                      "tableName")
                                     (payload :target-type payload :member-name
                                      "payload"))
                                    (:shape-name "DynamoDBv2Action"))

(smithy/sdk/shapes:define-type dynamo-key-field smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dynamo-key-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dynamo-key-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dynamo-operation smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dynamo-table-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure email-configuration common-lisp:nil
                                    ((from :target-type from-email :required
                                      common-lisp:t :member-name "from")
                                     (content :target-type email-content
                                      :member-name "content")
                                     (recipients :target-type email-recipients
                                      :required common-lisp:t :member-name
                                      "recipients"))
                                    (:shape-name "EmailConfiguration"))

(smithy/sdk/shapes:define-list email-configurations :member email-configuration)

(smithy/sdk/shapes:define-structure email-content common-lisp:nil
                                    ((subject :target-type email-subject
                                      :member-name "subject")
                                     (additional-message :target-type
                                      notification-additional-message
                                      :member-name "additionalMessage"))
                                    (:shape-name "EmailContent"))

(smithy/sdk/shapes:define-structure email-recipients common-lisp:nil
                                    ((to :target-type recipient-details
                                      :member-name "to"))
                                    (:shape-name "EmailRecipients"))

(smithy/sdk/shapes:define-type email-subject smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum evaluation-method
    common-lisp:nil
  (:batch "BATCH")
  (:serial "SERIAL"))

(smithy/sdk/shapes:define-structure event common-lisp:nil
                                    ((event-name :target-type event-name
                                      :required common-lisp:t :member-name
                                      "eventName")
                                     (condition :target-type condition
                                      :member-name "condition")
                                     (actions :target-type actions :member-name
                                      "actions"))
                                    (:shape-name "Event"))

(smithy/sdk/shapes:define-type event-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list events :member event)

(smithy/sdk/shapes:define-structure firehose-action common-lisp:nil
                                    ((delivery-stream-name :target-type
                                      delivery-stream-name :required
                                      common-lisp:t :member-name
                                      "deliveryStreamName")
                                     (separator :target-type firehose-separator
                                      :member-name "separator")
                                     (payload :target-type payload :member-name
                                      "payload"))
                                    (:shape-name "FirehoseAction"))

(smithy/sdk/shapes:define-type firehose-separator
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type from-email smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-detector-model-analysis-results-request
                                common-lisp:nil
                                ((analysis-id :target-type analysis-id
                                  :required common-lisp:t :member-name
                                  "analysisId" :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-analysis-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "GetDetectorModelAnalysisResultsRequest"))

(smithy/sdk/shapes:define-output get-detector-model-analysis-results-response
                                 common-lisp:nil
                                 ((analysis-results :target-type
                                   analysis-results :member-name
                                   "analysisResults")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "GetDetectorModelAnalysisResultsResponse"))

(smithy/sdk/shapes:define-type identity-store-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure initialization-configuration
                                    common-lisp:nil
                                    ((disabled-on-initialization :target-type
                                      disabled-on-initialization :required
                                      common-lisp:t :member-name
                                      "disabledOnInitialization"))
                                    (:shape-name "InitializationConfiguration"))

(smithy/sdk/shapes:define-structure input common-lisp:nil
                                    ((input-configuration :target-type
                                      input-configuration :member-name
                                      "inputConfiguration")
                                     (input-definition :target-type
                                      input-definition :member-name
                                      "inputDefinition"))
                                    (:shape-name "Input"))

(smithy/sdk/shapes:define-type input-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure input-configuration common-lisp:nil
                                    ((input-name :target-type input-name
                                      :required common-lisp:t :member-name
                                      "inputName")
                                     (input-description :target-type
                                      input-description :member-name
                                      "inputDescription")
                                     (input-arn :target-type input-arn
                                      :required common-lisp:t :member-name
                                      "inputArn")
                                     (creation-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (last-update-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "lastUpdateTime")
                                     (status :target-type input-status
                                      :required common-lisp:t :member-name
                                      "status"))
                                    (:shape-name "InputConfiguration"))

(smithy/sdk/shapes:define-structure input-definition common-lisp:nil
                                    ((attributes :target-type attributes
                                      :required common-lisp:t :member-name
                                      "attributes"))
                                    (:shape-name "InputDefinition"))

(smithy/sdk/shapes:define-type input-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure input-identifier common-lisp:nil
                                    ((iot-events-input-identifier :target-type
                                      iot-events-input-identifier :member-name
                                      "iotEventsInputIdentifier")
                                     (iot-site-wise-input-identifier
                                      :target-type
                                      iot-site-wise-input-identifier
                                      :member-name
                                      "iotSiteWiseInputIdentifier"))
                                    (:shape-name "InputIdentifier"))

(smithy/sdk/shapes:define-type input-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type input-property smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum input-status
    common-lisp:nil
  (:creating "CREATING")
  (:updating "UPDATING")
  (:active "ACTIVE")
  (:deleting "DELETING"))

(smithy/sdk/shapes:define-list input-summaries :member input-summary)

(smithy/sdk/shapes:define-structure input-summary common-lisp:nil
                                    ((input-name :target-type input-name
                                      :member-name "inputName")
                                     (input-description :target-type
                                      input-description :member-name
                                      "inputDescription")
                                     (input-arn :target-type input-arn
                                      :member-name "inputArn")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (last-update-time :target-type timestamp
                                      :member-name "lastUpdateTime")
                                     (status :target-type input-status
                                      :member-name "status"))
                                    (:shape-name "InputSummary"))

(smithy/sdk/shapes:define-error internal-failure-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InternalFailureException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure iot-events-action common-lisp:nil
                                    ((input-name :target-type input-name
                                      :required common-lisp:t :member-name
                                      "inputName")
                                     (payload :target-type payload :member-name
                                      "payload"))
                                    (:shape-name "IotEventsAction"))

(smithy/sdk/shapes:define-structure iot-events-input-identifier common-lisp:nil
                                    ((input-name :target-type input-name
                                      :required common-lisp:t :member-name
                                      "inputName"))
                                    (:shape-name "IotEventsInputIdentifier"))

(smithy/sdk/shapes:define-structure iot-site-wise-action common-lisp:nil
                                    ((entry-id :target-type
                                      asset-property-entry-id :member-name
                                      "entryId")
                                     (asset-id :target-type asset-id
                                      :member-name "assetId")
                                     (property-id :target-type
                                      asset-property-id :member-name
                                      "propertyId")
                                     (property-alias :target-type
                                      asset-property-alias :member-name
                                      "propertyAlias")
                                     (property-value :target-type
                                      asset-property-value :member-name
                                      "propertyValue"))
                                    (:shape-name "IotSiteWiseAction"))

(smithy/sdk/shapes:define-structure
 iot-site-wise-asset-model-property-identifier common-lisp:nil
 ((asset-model-id :target-type asset-model-id :required common-lisp:t
   :member-name "assetModelId")
  (property-id :target-type asset-property-id :required common-lisp:t
   :member-name "propertyId"))
 (:shape-name "IotSiteWiseAssetModelPropertyIdentifier"))

(smithy/sdk/shapes:define-structure iot-site-wise-input-identifier
                                    common-lisp:nil
                                    ((iot-site-wise-asset-model-property-identifier
                                      :target-type
                                      iot-site-wise-asset-model-property-identifier
                                      :member-name
                                      "iotSiteWiseAssetModelPropertyIdentifier"))
                                    (:shape-name "IotSiteWiseInputIdentifier"))

(smithy/sdk/shapes:define-structure iot-topic-publish-action common-lisp:nil
                                    ((mqtt-topic :target-type mqtttopic
                                      :required common-lisp:t :member-name
                                      "mqttTopic")
                                     (payload :target-type payload :member-name
                                      "payload"))
                                    (:shape-name "IotTopicPublishAction"))

(smithy/sdk/shapes:define-type key-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lambda-action common-lisp:nil
                                    ((function-arn :target-type
                                      amazon-resource-name :required
                                      common-lisp:t :member-name "functionArn")
                                     (payload :target-type payload :member-name
                                      "payload"))
                                    (:shape-name "LambdaAction"))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 410))

(smithy/sdk/shapes:define-input list-alarm-model-versions-request
                                common-lisp:nil
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
                                (:shape-name "ListAlarmModelVersionsRequest"))

(smithy/sdk/shapes:define-output list-alarm-model-versions-response
                                 common-lisp:nil
                                 ((alarm-model-version-summaries :target-type
                                   alarm-model-version-summaries :member-name
                                   "alarmModelVersionSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListAlarmModelVersionsResponse"))

(smithy/sdk/shapes:define-input list-alarm-models-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListAlarmModelsRequest"))

(smithy/sdk/shapes:define-output list-alarm-models-response common-lisp:nil
                                 ((alarm-model-summaries :target-type
                                   alarm-model-summaries :member-name
                                   "alarmModelSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListAlarmModelsResponse"))

(smithy/sdk/shapes:define-input list-detector-model-versions-request
                                common-lisp:nil
                                ((detector-model-name :target-type
                                  detector-model-name :required common-lisp:t
                                  :member-name "detectorModelName" :http-label
                                  common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListDetectorModelVersionsRequest"))

(smithy/sdk/shapes:define-output list-detector-model-versions-response
                                 common-lisp:nil
                                 ((detector-model-version-summaries
                                   :target-type
                                   detector-model-version-summaries
                                   :member-name
                                   "detectorModelVersionSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListDetectorModelVersionsResponse"))

(smithy/sdk/shapes:define-input list-detector-models-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListDetectorModelsRequest"))

(smithy/sdk/shapes:define-output list-detector-models-response common-lisp:nil
                                 ((detector-model-summaries :target-type
                                   detector-model-summaries :member-name
                                   "detectorModelSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDetectorModelsResponse"))

(smithy/sdk/shapes:define-input list-input-routings-request common-lisp:nil
                                ((input-identifier :target-type
                                  input-identifier :required common-lisp:t
                                  :member-name "inputIdentifier")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListInputRoutingsRequest"))

(smithy/sdk/shapes:define-output list-input-routings-response common-lisp:nil
                                 ((routed-resources :target-type
                                   routed-resources :member-name
                                   "routedResources")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListInputRoutingsResponse"))

(smithy/sdk/shapes:define-input list-inputs-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListInputsRequest"))

(smithy/sdk/shapes:define-output list-inputs-response common-lisp:nil
                                 ((input-summaries :target-type input-summaries
                                   :member-name "inputSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListInputsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceArn" :http-query
                                  "resourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tags :member-name "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type logging-enabled smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum logging-level
    common-lisp:nil
  (:error "ERROR")
  (:info "INFO")
  (:debug "DEBUG"))

(smithy/sdk/shapes:define-structure logging-options common-lisp:nil
                                    ((role-arn :target-type
                                      amazon-resource-name :required
                                      common-lisp:t :member-name "roleArn")
                                     (level :target-type logging-level
                                      :required common-lisp:t :member-name
                                      "level")
                                     (enabled :target-type logging-enabled
                                      :required common-lisp:t :member-name
                                      "enabled")
                                     (detector-debug-options :target-type
                                      detector-debug-options :member-name
                                      "detectorDebugOptions"))
                                    (:shape-name "LoggingOptions"))

(smithy/sdk/shapes:define-type mqtttopic smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-analysis-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure notification-action common-lisp:nil
                                    ((action :target-type
                                      notification-target-actions :required
                                      common-lisp:t :member-name "action")
                                     (sms-configurations :target-type
                                      smsconfigurations :member-name
                                      "smsConfigurations")
                                     (email-configurations :target-type
                                      email-configurations :member-name
                                      "emailConfigurations"))
                                    (:shape-name "NotificationAction"))

(smithy/sdk/shapes:define-list notification-actions :member notification-action)

(smithy/sdk/shapes:define-type notification-additional-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure notification-target-actions common-lisp:nil
                                    ((lambda-action :target-type lambda-action
                                      :member-name "lambdaAction"))
                                    (:shape-name "NotificationTargetActions"))

(smithy/sdk/shapes:define-structure on-enter-lifecycle common-lisp:nil
                                    ((events :target-type events :member-name
                                      "events"))
                                    (:shape-name "OnEnterLifecycle"))

(smithy/sdk/shapes:define-structure on-exit-lifecycle common-lisp:nil
                                    ((events :target-type events :member-name
                                      "events"))
                                    (:shape-name "OnExitLifecycle"))

(smithy/sdk/shapes:define-structure on-input-lifecycle common-lisp:nil
                                    ((events :target-type events :member-name
                                      "events")
                                     (transition-events :target-type
                                      transition-events :member-name
                                      "transitionEvents"))
                                    (:shape-name "OnInputLifecycle"))

(smithy/sdk/shapes:define-structure payload common-lisp:nil
                                    ((content-expression :target-type
                                      content-expression :required
                                      common-lisp:t :member-name
                                      "contentExpression")
                                     (type :target-type payload-type :required
                                      common-lisp:t :member-name "type"))
                                    (:shape-name "Payload"))

(smithy/sdk/shapes:define-enum payload-type
    common-lisp:nil
  (:string "STRING")
  (:json "JSON"))

(smithy/sdk/shapes:define-input put-logging-options-request common-lisp:nil
                                ((logging-options :target-type logging-options
                                  :required common-lisp:t :member-name
                                  "loggingOptions"))
                                (:shape-name "PutLoggingOptionsRequest"))

(smithy/sdk/shapes:define-type queue-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure recipient-detail common-lisp:nil
                                    ((sso-identity :target-type ssoidentity
                                      :member-name "ssoIdentity"))
                                    (:shape-name "RecipientDetail"))

(smithy/sdk/shapes:define-list recipient-details :member recipient-detail)

(smithy/sdk/shapes:define-structure reset-timer-action common-lisp:nil
                                    ((timer-name :target-type timer-name
                                      :required common-lisp:t :member-name
                                      "timerName"))
                                    (:shape-name "ResetTimerAction"))

(smithy/sdk/shapes:define-error resource-already-exists-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message")
                                 (resource-id :target-type resource-id
                                  :member-name "resourceId")
                                 (resource-arn :target-type resource-arn
                                  :member-name "resourceArn"))
                                (:shape-name "ResourceAlreadyExistsException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error resource-in-use-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceInUseException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type resource-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure routed-resource common-lisp:nil
                                    ((name :target-type resource-name
                                      :member-name "name")
                                     (arn :target-type amazon-resource-name
                                      :member-name "arn"))
                                    (:shape-name "RoutedResource"))

(smithy/sdk/shapes:define-list routed-resources :member routed-resource)

(smithy/sdk/shapes:define-structure smsconfiguration common-lisp:nil
                                    ((sender-id :target-type smssender-id
                                      :member-name "senderId")
                                     (additional-message :target-type
                                      notification-additional-message
                                      :member-name "additionalMessage")
                                     (recipients :target-type recipient-details
                                      :required common-lisp:t :member-name
                                      "recipients"))
                                    (:shape-name "SMSConfiguration"))

(smithy/sdk/shapes:define-list smsconfigurations :member smsconfiguration)

(smithy/sdk/shapes:define-type smssender-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure snstopic-publish-action common-lisp:nil
                                    ((target-arn :target-type
                                      amazon-resource-name :required
                                      common-lisp:t :member-name "targetArn")
                                     (payload :target-type payload :member-name
                                      "payload"))
                                    (:shape-name "SNSTopicPublishAction"))

(smithy/sdk/shapes:define-structure ssoidentity common-lisp:nil
                                    ((identity-store-id :target-type
                                      identity-store-id :required common-lisp:t
                                      :member-name "identityStoreId")
                                     (user-id :target-type ssoreference-id
                                      :member-name "userId"))
                                    (:shape-name "SSOIdentity"))

(smithy/sdk/shapes:define-type ssoreference-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type seconds smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503))

(smithy/sdk/shapes:define-structure set-timer-action common-lisp:nil
                                    ((timer-name :target-type timer-name
                                      :required common-lisp:t :member-name
                                      "timerName")
                                     (seconds :target-type seconds :member-name
                                      "seconds")
                                     (duration-expression :target-type
                                      variable-value :member-name
                                      "durationExpression"))
                                    (:shape-name "SetTimerAction"))

(smithy/sdk/shapes:define-structure set-variable-action common-lisp:nil
                                    ((variable-name :target-type variable-name
                                      :required common-lisp:t :member-name
                                      "variableName")
                                     (value :target-type variable-value
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name "SetVariableAction"))

(smithy/sdk/shapes:define-type severity smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure simple-rule common-lisp:nil
                                    ((input-property :target-type
                                      input-property :required common-lisp:t
                                      :member-name "inputProperty")
                                     (comparison-operator :target-type
                                      comparison-operator :required
                                      common-lisp:t :member-name
                                      "comparisonOperator")
                                     (threshold :target-type threshold
                                      :required common-lisp:t :member-name
                                      "threshold"))
                                    (:shape-name "SimpleRule"))

(smithy/sdk/shapes:define-structure sqs-action common-lisp:nil
                                    ((queue-url :target-type queue-url
                                      :required common-lisp:t :member-name
                                      "queueUrl")
                                     (use-base64 :target-type use-base64
                                      :member-name "useBase64")
                                     (payload :target-type payload :member-name
                                      "payload"))
                                    (:shape-name "SqsAction"))

(smithy/sdk/shapes:define-input start-detector-model-analysis-request
                                common-lisp:nil
                                ((detector-model-definition :target-type
                                  detector-model-definition :required
                                  common-lisp:t :member-name
                                  "detectorModelDefinition"))
                                (:shape-name
                                 "StartDetectorModelAnalysisRequest"))

(smithy/sdk/shapes:define-output start-detector-model-analysis-response
                                 common-lisp:nil
                                 ((analysis-id :target-type analysis-id
                                   :member-name "analysisId"))
                                 (:shape-name
                                  "StartDetectorModelAnalysisResponse"))

(smithy/sdk/shapes:define-structure state common-lisp:nil
                                    ((state-name :target-type state-name
                                      :required common-lisp:t :member-name
                                      "stateName")
                                     (on-input :target-type on-input-lifecycle
                                      :member-name "onInput")
                                     (on-enter :target-type on-enter-lifecycle
                                      :member-name "onEnter")
                                     (on-exit :target-type on-exit-lifecycle
                                      :member-name "onExit"))
                                    (:shape-name "State"))

(smithy/sdk/shapes:define-type state-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list states :member state)

(smithy/sdk/shapes:define-type status-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceArn" :http-query
                                  "resourceArn")
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tags :member tag)

(smithy/sdk/shapes:define-type threshold smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type timer-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure transition-event common-lisp:nil
                                    ((event-name :target-type event-name
                                      :required common-lisp:t :member-name
                                      "eventName")
                                     (condition :target-type condition
                                      :required common-lisp:t :member-name
                                      "condition")
                                     (actions :target-type actions :member-name
                                      "actions")
                                     (next-state :target-type state-name
                                      :required common-lisp:t :member-name
                                      "nextState"))
                                    (:shape-name "TransitionEvent"))

(smithy/sdk/shapes:define-list transition-events :member transition-event)

(smithy/sdk/shapes:define-error unsupported-operation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "UnsupportedOperationException")
                                (:error-code 501))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceArn" :http-query
                                  "resourceArn")
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-alarm-model-request common-lisp:nil
                                ((alarm-model-name :target-type
                                  alarm-model-name :required common-lisp:t
                                  :member-name "alarmModelName" :http-label
                                  common-lisp:t)
                                 (alarm-model-description :target-type
                                  alarm-model-description :member-name
                                  "alarmModelDescription")
                                 (role-arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name
                                  "roleArn")
                                 (severity :target-type severity :member-name
                                  "severity")
                                 (alarm-rule :target-type alarm-rule :required
                                  common-lisp:t :member-name "alarmRule")
                                 (alarm-notification :target-type
                                  alarm-notification :member-name
                                  "alarmNotification")
                                 (alarm-event-actions :target-type
                                  alarm-event-actions :member-name
                                  "alarmEventActions")
                                 (alarm-capabilities :target-type
                                  alarm-capabilities :member-name
                                  "alarmCapabilities"))
                                (:shape-name "UpdateAlarmModelRequest"))

(smithy/sdk/shapes:define-output update-alarm-model-response common-lisp:nil
                                 ((creation-time :target-type timestamp
                                   :member-name "creationTime")
                                  (alarm-model-arn :target-type alarm-model-arn
                                   :member-name "alarmModelArn")
                                  (alarm-model-version :target-type
                                   alarm-model-version :member-name
                                   "alarmModelVersion")
                                  (last-update-time :target-type timestamp
                                   :member-name "lastUpdateTime")
                                  (status :target-type
                                   alarm-model-version-status :member-name
                                   "status"))
                                 (:shape-name "UpdateAlarmModelResponse"))

(smithy/sdk/shapes:define-input update-detector-model-request common-lisp:nil
                                ((detector-model-name :target-type
                                  detector-model-name :required common-lisp:t
                                  :member-name "detectorModelName" :http-label
                                  common-lisp:t)
                                 (detector-model-definition :target-type
                                  detector-model-definition :required
                                  common-lisp:t :member-name
                                  "detectorModelDefinition")
                                 (detector-model-description :target-type
                                  detector-model-description :member-name
                                  "detectorModelDescription")
                                 (role-arn :target-type amazon-resource-name
                                  :required common-lisp:t :member-name
                                  "roleArn")
                                 (evaluation-method :target-type
                                  evaluation-method :member-name
                                  "evaluationMethod"))
                                (:shape-name "UpdateDetectorModelRequest"))

(smithy/sdk/shapes:define-output update-detector-model-response common-lisp:nil
                                 ((detector-model-configuration :target-type
                                   detector-model-configuration :member-name
                                   "detectorModelConfiguration"))
                                 (:shape-name "UpdateDetectorModelResponse"))

(smithy/sdk/shapes:define-input update-input-request common-lisp:nil
                                ((input-name :target-type input-name :required
                                  common-lisp:t :member-name "inputName"
                                  :http-label common-lisp:t)
                                 (input-description :target-type
                                  input-description :member-name
                                  "inputDescription")
                                 (input-definition :target-type
                                  input-definition :required common-lisp:t
                                  :member-name "inputDefinition"))
                                (:shape-name "UpdateInputRequest"))

(smithy/sdk/shapes:define-output update-input-response common-lisp:nil
                                 ((input-configuration :target-type
                                   input-configuration :member-name
                                   "inputConfiguration"))
                                 (:shape-name "UpdateInputResponse"))

(smithy/sdk/shapes:define-type use-base64 smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type variable-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type variable-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-alarm-model :shape-name
                                       "CreateAlarmModel" :input
                                       create-alarm-model-request :output
                                       create-alarm-model-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-in-use-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "POST" :uri "/alarm-models"
                                       :code 200)

(smithy/sdk/operation:define-operation create-detector-model :shape-name
                                       "CreateDetectorModel" :input
                                       create-detector-model-request :output
                                       create-detector-model-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-in-use-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "POST" :uri "/detector-models"
                                       :code 200)

(smithy/sdk/operation:define-operation create-input :shape-name "CreateInput"
                                       :input create-input-request :output
                                       create-input-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-already-exists-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "POST" :uri "/inputs" :code 201)

(smithy/sdk/operation:define-operation delete-alarm-model :shape-name
                                       "DeleteAlarmModel" :input
                                       delete-alarm-model-request :output
                                       delete-alarm-model-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/alarm-models/{alarmModelName}" :code
                                       204)

(smithy/sdk/operation:define-operation delete-detector-model :shape-name
                                       "DeleteDetectorModel" :input
                                       delete-detector-model-request :output
                                       delete-detector-model-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/detector-models/{detectorModelName}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-input :shape-name "DeleteInput"
                                       :input delete-input-request :output
                                       delete-input-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/inputs/{inputName}" :code 200)

(smithy/sdk/operation:define-operation describe-alarm-model :shape-name
                                       "DescribeAlarmModel" :input
                                       describe-alarm-model-request :output
                                       describe-alarm-model-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/alarm-models/{alarmModelName}" :code
                                       200)

(smithy/sdk/operation:define-operation describe-detector-model :shape-name
                                       "DescribeDetectorModel" :input
                                       describe-detector-model-request :output
                                       describe-detector-model-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/detector-models/{detectorModelName}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-detector-model-analysis
                                       :shape-name
                                       "DescribeDetectorModelAnalysis" :input
                                       describe-detector-model-analysis-request
                                       :output
                                       describe-detector-model-analysis-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/analysis/detector-models/{analysisId}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-input :shape-name
                                       "DescribeInput" :input
                                       describe-input-request :output
                                       describe-input-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "GET" :uri "/inputs/{inputName}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-logging-options :shape-name
                                       "DescribeLoggingOptions" :input
                                       describe-logging-options-request :output
                                       describe-logging-options-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unsupported-operation-exception)
                                       :method "GET" :uri "/logging" :code 200)

(smithy/sdk/operation:define-operation get-detector-model-analysis-results
                                       :shape-name
                                       "GetDetectorModelAnalysisResults" :input
                                       get-detector-model-analysis-results-request
                                       :output
                                       get-detector-model-analysis-results-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/analysis/detector-models/{analysisId}/results"
                                       :code 200)

(smithy/sdk/operation:define-operation list-alarm-model-versions :shape-name
                                       "ListAlarmModelVersions" :input
                                       list-alarm-model-versions-request
                                       :output
                                       list-alarm-model-versions-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/alarm-models/{alarmModelName}/versions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-alarm-models :shape-name
                                       "ListAlarmModels" :input
                                       list-alarm-models-request :output
                                       list-alarm-models-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "GET" :uri "/alarm-models" :code
                                       200)

(smithy/sdk/operation:define-operation list-detector-model-versions :shape-name
                                       "ListDetectorModelVersions" :input
                                       list-detector-model-versions-request
                                       :output
                                       list-detector-model-versions-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/detector-models/{detectorModelName}/versions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-detector-models :shape-name
                                       "ListDetectorModels" :input
                                       list-detector-models-request :output
                                       list-detector-models-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "GET" :uri "/detector-models"
                                       :code 200)

(smithy/sdk/operation:define-operation list-input-routings :shape-name
                                       "ListInputRoutings" :input
                                       list-input-routings-request :output
                                       list-input-routings-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "POST" :uri "/input-routings"
                                       :code 200)

(smithy/sdk/operation:define-operation list-inputs :shape-name "ListInputs"
                                       :input list-inputs-request :output
                                       list-inputs-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "GET" :uri "/inputs" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri "/tags" :code 200)

(smithy/sdk/operation:define-operation put-logging-options :shape-name
                                       "PutLoggingOptions" :input
                                       put-logging-options-request :output
                                       common-lisp:null :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unsupported-operation-exception)
                                       :method "PUT" :uri "/logging" :code 200)

(smithy/sdk/operation:define-operation start-detector-model-analysis
                                       :shape-name "StartDetectorModelAnalysis"
                                       :input
                                       start-detector-model-analysis-request
                                       :output
                                       start-detector-model-analysis-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/analysis/detector-models" :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri "/tags" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri "/tags" :code 200)

(smithy/sdk/operation:define-operation update-alarm-model :shape-name
                                       "UpdateAlarmModel" :input
                                       update-alarm-model-request :output
                                       update-alarm-model-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/alarm-models/{alarmModelName}" :code
                                       200)

(smithy/sdk/operation:define-operation update-detector-model :shape-name
                                       "UpdateDetectorModel" :input
                                       update-detector-model-request :output
                                       update-detector-model-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/detector-models/{detectorModelName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-input :shape-name "UpdateInput"
                                       :input update-input-request :output
                                       update-input-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "PUT" :uri "/inputs/{inputName}"
                                       :code 200)
