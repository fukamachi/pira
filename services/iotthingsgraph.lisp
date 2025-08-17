(uiop/package:define-package #:pira/iotthingsgraph (:use)
                             (:export #:arn #:associate-entity-to-thing
                              #:create-flow-template #:create-system-instance
                              #:create-system-template #:definition-document
                              #:definition-language #:definition-text
                              #:delete-flow-template #:delete-namespace
                              #:delete-system-instance #:delete-system-template
                              #:dependency-revision #:dependency-revisions
                              #:deploy-system-instance #:deployment-target
                              #:deprecate-existing-entities
                              #:deprecate-flow-template
                              #:deprecate-system-template #:describe-namespace
                              #:dissociate-entity-from-thing #:enabled
                              #:entity-description #:entity-descriptions
                              #:entity-filter #:entity-filter-name
                              #:entity-filter-value #:entity-filter-values
                              #:entity-filters #:entity-type #:entity-types
                              #:error-message #:flow-execution-event-type
                              #:flow-execution-id #:flow-execution-message
                              #:flow-execution-message-id
                              #:flow-execution-message-payload
                              #:flow-execution-messages #:flow-execution-status
                              #:flow-execution-summaries
                              #:flow-execution-summary
                              #:flow-template-description
                              #:flow-template-filter
                              #:flow-template-filter-name
                              #:flow-template-filter-value
                              #:flow-template-filter-values
                              #:flow-template-filters #:flow-template-summaries
                              #:flow-template-summary #:get-entities
                              #:get-flow-template #:get-flow-template-revisions
                              #:get-namespace-deletion-status
                              #:get-system-instance #:get-system-template
                              #:get-system-template-revisions
                              #:get-upload-status #:greengrass-deployment-id
                              #:greengrass-group-id
                              #:greengrass-group-version-id #:group-name
                              #:iot-things-graph-front-end-service
                              #:list-flow-execution-messages
                              #:list-tags-for-resource #:max-results
                              #:metrics-configuration
                              #:namespace-deletion-status
                              #:namespace-deletion-status-error-codes
                              #:namespace-name #:next-token #:resource-arn
                              #:role-arn #:s3bucket-name #:search-entities
                              #:search-flow-executions #:search-flow-templates
                              #:search-system-instances
                              #:search-system-templates #:search-things
                              #:string #:string-list
                              #:sync-with-public-namespace
                              #:system-instance-deployment-status
                              #:system-instance-description
                              #:system-instance-filter
                              #:system-instance-filter-name
                              #:system-instance-filter-value
                              #:system-instance-filter-values
                              #:system-instance-filters
                              #:system-instance-summaries
                              #:system-instance-summary
                              #:system-template-description
                              #:system-template-filter
                              #:system-template-filter-name
                              #:system-template-filter-value
                              #:system-template-filter-values
                              #:system-template-filters
                              #:system-template-summaries
                              #:system-template-summary #:tag #:tag-key
                              #:tag-key-list #:tag-list #:tag-resource
                              #:tag-value #:thing #:thing-arn #:thing-name
                              #:things #:timestamp #:undeploy-system-instance
                              #:untag-resource #:update-flow-template
                              #:update-system-template
                              #:upload-entity-definitions #:upload-id
                              #:upload-status #:urn #:urns #:version))
(common-lisp:in-package #:pira/iotthingsgraph)

(smithy/sdk/service:define-service iot-things-graph-front-end-service
                                   :shape-name "IotThingsGraphFrontEndService"
                                   :version "2018-09-06" :title
                                   "AWS IoT Things Graph" :operations
                                   '(associate-entity-to-thing
                                     create-flow-template
                                     create-system-instance
                                     create-system-template
                                     delete-flow-template delete-namespace
                                     delete-system-instance
                                     delete-system-template
                                     deploy-system-instance
                                     deprecate-flow-template
                                     deprecate-system-template
                                     describe-namespace
                                     dissociate-entity-from-thing get-entities
                                     get-flow-template
                                     get-flow-template-revisions
                                     get-namespace-deletion-status
                                     get-system-instance get-system-template
                                     get-system-template-revisions
                                     get-upload-status
                                     list-flow-execution-messages
                                     list-tags-for-resource search-entities
                                     search-flow-executions
                                     search-flow-templates
                                     search-system-instances
                                     search-system-templates search-things
                                     tag-resource undeploy-system-instance
                                     untag-resource update-flow-template
                                     update-system-template
                                     upload-entity-definitions)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "IoTThingsGraph")
                                      ("arnNamespace" . "iotthingsgraph")
                                      ("cloudFormationName" . "IoTThingsGraph")
                                      ("cloudTrailEventSource"
                                       . "iotthingsgraph.amazonaws.com")
                                      ("endpointPrefix" . "iotthingsgraph"))
                                     ("aws.auth#sigv4"
                                      ("name" . "iotthingsgraph"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input associate-entity-to-thing-request
                                common-lisp:nil
                                ((thing-name :target-type thing-name :required
                                  common-lisp:t :member-name "thingName")
                                 (entity-id :target-type urn :required
                                  common-lisp:t :member-name "entityId")
                                 (namespace-version :target-type version
                                  :member-name "namespaceVersion"))
                                (:shape-name "AssociateEntityToThingRequest"))

(smithy/sdk/shapes:define-output associate-entity-to-thing-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "AssociateEntityToThingResponse"))

(smithy/sdk/shapes:define-input create-flow-template-request common-lisp:nil
                                ((definition :target-type definition-document
                                  :required common-lisp:t :member-name
                                  "definition")
                                 (compatible-namespace-version :target-type
                                  version :member-name
                                  "compatibleNamespaceVersion"))
                                (:shape-name "CreateFlowTemplateRequest"))

(smithy/sdk/shapes:define-output create-flow-template-response common-lisp:nil
                                 ((summary :target-type flow-template-summary
                                   :member-name "summary"))
                                 (:shape-name "CreateFlowTemplateResponse"))

(smithy/sdk/shapes:define-input create-system-instance-request common-lisp:nil
                                ((tags :target-type tag-list :member-name
                                  "tags")
                                 (definition :target-type definition-document
                                  :required common-lisp:t :member-name
                                  "definition")
                                 (target :target-type deployment-target
                                  :required common-lisp:t :member-name
                                  "target")
                                 (greengrass-group-name :target-type group-name
                                  :member-name "greengrassGroupName")
                                 (s3bucket-name :target-type s3bucket-name
                                  :member-name "s3BucketName")
                                 (metrics-configuration :target-type
                                  metrics-configuration :member-name
                                  "metricsConfiguration")
                                 (flow-actions-role-arn :target-type role-arn
                                  :member-name "flowActionsRoleArn"))
                                (:shape-name "CreateSystemInstanceRequest"))

(smithy/sdk/shapes:define-output create-system-instance-response
                                 common-lisp:nil
                                 ((summary :target-type system-instance-summary
                                   :member-name "summary"))
                                 (:shape-name "CreateSystemInstanceResponse"))

(smithy/sdk/shapes:define-input create-system-template-request common-lisp:nil
                                ((definition :target-type definition-document
                                  :required common-lisp:t :member-name
                                  "definition")
                                 (compatible-namespace-version :target-type
                                  version :member-name
                                  "compatibleNamespaceVersion"))
                                (:shape-name "CreateSystemTemplateRequest"))

(smithy/sdk/shapes:define-output create-system-template-response
                                 common-lisp:nil
                                 ((summary :target-type system-template-summary
                                   :member-name "summary"))
                                 (:shape-name "CreateSystemTemplateResponse"))

(smithy/sdk/shapes:define-structure definition-document common-lisp:nil
                                    ((language :target-type definition-language
                                      :required common-lisp:t :member-name
                                      "language")
                                     (text :target-type definition-text
                                      :required common-lisp:t :member-name
                                      "text"))
                                    (:shape-name "DefinitionDocument"))

(smithy/sdk/shapes:define-enum definition-language
    common-lisp:nil
  (:graphql "GRAPHQL"))

(smithy/sdk/shapes:define-type definition-text smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-flow-template-request common-lisp:nil
                                ((id :target-type urn :required common-lisp:t
                                  :member-name "id"))
                                (:shape-name "DeleteFlowTemplateRequest"))

(smithy/sdk/shapes:define-output delete-flow-template-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteFlowTemplateResponse"))

(smithy/sdk/shapes:define-input delete-namespace-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "DeleteNamespaceRequest"))

(smithy/sdk/shapes:define-output delete-namespace-response common-lisp:nil
                                 ((namespace-arn :target-type arn :member-name
                                   "namespaceArn")
                                  (namespace-name :target-type namespace-name
                                   :member-name "namespaceName"))
                                 (:shape-name "DeleteNamespaceResponse"))

(smithy/sdk/shapes:define-input delete-system-instance-request common-lisp:nil
                                ((id :target-type urn :member-name "id"))
                                (:shape-name "DeleteSystemInstanceRequest"))

(smithy/sdk/shapes:define-output delete-system-instance-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteSystemInstanceResponse"))

(smithy/sdk/shapes:define-input delete-system-template-request common-lisp:nil
                                ((id :target-type urn :required common-lisp:t
                                  :member-name "id"))
                                (:shape-name "DeleteSystemTemplateRequest"))

(smithy/sdk/shapes:define-output delete-system-template-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteSystemTemplateResponse"))

(smithy/sdk/shapes:define-structure dependency-revision common-lisp:nil
                                    ((id :target-type urn :member-name "id")
                                     (revision-number :target-type version
                                      :member-name "revisionNumber"))
                                    (:shape-name "DependencyRevision"))

(smithy/sdk/shapes:define-list dependency-revisions :member dependency-revision)

(smithy/sdk/shapes:define-input deploy-system-instance-request common-lisp:nil
                                ((id :target-type urn :member-name "id"))
                                (:shape-name "DeploySystemInstanceRequest"))

(smithy/sdk/shapes:define-output deploy-system-instance-response
                                 common-lisp:nil
                                 ((summary :target-type system-instance-summary
                                   :required common-lisp:t :member-name
                                   "summary")
                                  (greengrass-deployment-id :target-type
                                   greengrass-deployment-id :member-name
                                   "greengrassDeploymentId"))
                                 (:shape-name "DeploySystemInstanceResponse"))

(smithy/sdk/shapes:define-enum deployment-target
    common-lisp:nil
  (:greengrass "GREENGRASS")
  (:cloud "CLOUD"))

(smithy/sdk/shapes:define-type deprecate-existing-entities
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input deprecate-flow-template-request common-lisp:nil
                                ((id :target-type urn :required common-lisp:t
                                  :member-name "id"))
                                (:shape-name "DeprecateFlowTemplateRequest"))

(smithy/sdk/shapes:define-output deprecate-flow-template-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeprecateFlowTemplateResponse"))

(smithy/sdk/shapes:define-input deprecate-system-template-request
                                common-lisp:nil
                                ((id :target-type urn :required common-lisp:t
                                  :member-name "id"))
                                (:shape-name "DeprecateSystemTemplateRequest"))

(smithy/sdk/shapes:define-output deprecate-system-template-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeprecateSystemTemplateResponse"))

(smithy/sdk/shapes:define-input describe-namespace-request common-lisp:nil
                                ((namespace-name :target-type namespace-name
                                  :member-name "namespaceName"))
                                (:shape-name "DescribeNamespaceRequest"))

(smithy/sdk/shapes:define-output describe-namespace-response common-lisp:nil
                                 ((namespace-arn :target-type arn :member-name
                                   "namespaceArn")
                                  (namespace-name :target-type namespace-name
                                   :member-name "namespaceName")
                                  (tracking-namespace-name :target-type
                                   namespace-name :member-name
                                   "trackingNamespaceName")
                                  (tracking-namespace-version :target-type
                                   version :member-name
                                   "trackingNamespaceVersion")
                                  (namespace-version :target-type version
                                   :member-name "namespaceVersion"))
                                 (:shape-name "DescribeNamespaceResponse"))

(smithy/sdk/shapes:define-input dissociate-entity-from-thing-request
                                common-lisp:nil
                                ((thing-name :target-type thing-name :required
                                  common-lisp:t :member-name "thingName")
                                 (entity-type :target-type entity-type
                                  :required common-lisp:t :member-name
                                  "entityType"))
                                (:shape-name
                                 "DissociateEntityFromThingRequest"))

(smithy/sdk/shapes:define-output dissociate-entity-from-thing-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DissociateEntityFromThingResponse"))

(smithy/sdk/shapes:define-type enabled smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure entity-description common-lisp:nil
                                    ((id :target-type urn :member-name "id")
                                     (arn :target-type arn :member-name "arn")
                                     (type :target-type entity-type
                                      :member-name "type")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (definition :target-type
                                      definition-document :member-name
                                      "definition"))
                                    (:shape-name "EntityDescription"))

(smithy/sdk/shapes:define-list entity-descriptions :member entity-description)

(smithy/sdk/shapes:define-structure entity-filter common-lisp:nil
                                    ((name :target-type entity-filter-name
                                      :member-name "name")
                                     (value :target-type entity-filter-values
                                      :member-name "value"))
                                    (:shape-name "EntityFilter"))

(smithy/sdk/shapes:define-enum entity-filter-name
    common-lisp:nil
  (:name "NAME")
  (:namespace "NAMESPACE")
  (:semantic-type-path "SEMANTIC_TYPE_PATH")
  (:referenced-entity-id "REFERENCED_ENTITY_ID"))

(smithy/sdk/shapes:define-type entity-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list entity-filter-values :member entity-filter-value)

(smithy/sdk/shapes:define-list entity-filters :member entity-filter)

(smithy/sdk/shapes:define-enum entity-type
    common-lisp:nil
  (:device "DEVICE")
  (:service "SERVICE")
  (:device-model "DEVICE_MODEL")
  (:capability "CAPABILITY")
  (:state "STATE")
  (:action "ACTION")
  (:event "EVENT")
  (:property "PROPERTY")
  (:mapping "MAPPING")
  (:enum "ENUM"))

(smithy/sdk/shapes:define-list entity-types :member entity-type)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum flow-execution-event-type
    common-lisp:nil
  (:execution-started "EXECUTION_STARTED")
  (:execution-failed "EXECUTION_FAILED")
  (:execution-aborted "EXECUTION_ABORTED")
  (:execution-succeeded "EXECUTION_SUCCEEDED")
  (:step-started "STEP_STARTED")
  (:step-failed "STEP_FAILED")
  (:step-succeeded "STEP_SUCCEEDED")
  (:activity-scheduled "ACTIVITY_SCHEDULED")
  (:activity-started "ACTIVITY_STARTED")
  (:activity-failed "ACTIVITY_FAILED")
  (:activity-succeeded "ACTIVITY_SUCCEEDED")
  (:start-flow-execution-task "START_FLOW_EXECUTION_TASK")
  (:schedule-next-ready-steps-task "SCHEDULE_NEXT_READY_STEPS_TASK")
  (:thing-action-task "THING_ACTION_TASK")
  (:thing-action-task-failed "THING_ACTION_TASK_FAILED")
  (:thing-action-task-succeeded "THING_ACTION_TASK_SUCCEEDED")
  (:acknowledge-task-message "ACKNOWLEDGE_TASK_MESSAGE"))

(smithy/sdk/shapes:define-type flow-execution-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure flow-execution-message common-lisp:nil
                                    ((message-id :target-type
                                      flow-execution-message-id :member-name
                                      "messageId")
                                     (event-type :target-type
                                      flow-execution-event-type :member-name
                                      "eventType")
                                     (timestamp :target-type timestamp
                                      :member-name "timestamp")
                                     (payload :target-type
                                      flow-execution-message-payload
                                      :member-name "payload"))
                                    (:shape-name "FlowExecutionMessage"))

(smithy/sdk/shapes:define-type flow-execution-message-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type flow-execution-message-payload
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list flow-execution-messages :member
                               flow-execution-message)

(smithy/sdk/shapes:define-enum flow-execution-status
    common-lisp:nil
  (:running "RUNNING")
  (:aborted "ABORTED")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-list flow-execution-summaries :member
                               flow-execution-summary)

(smithy/sdk/shapes:define-structure flow-execution-summary common-lisp:nil
                                    ((flow-execution-id :target-type
                                      flow-execution-id :member-name
                                      "flowExecutionId")
                                     (status :target-type flow-execution-status
                                      :member-name "status")
                                     (system-instance-id :target-type urn
                                      :member-name "systemInstanceId")
                                     (flow-template-id :target-type urn
                                      :member-name "flowTemplateId")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (updated-at :target-type timestamp
                                      :member-name "updatedAt"))
                                    (:shape-name "FlowExecutionSummary"))

(smithy/sdk/shapes:define-structure flow-template-description common-lisp:nil
                                    ((summary :target-type
                                      flow-template-summary :member-name
                                      "summary")
                                     (definition :target-type
                                      definition-document :member-name
                                      "definition")
                                     (validated-namespace-version :target-type
                                      version :member-name
                                      "validatedNamespaceVersion"))
                                    (:shape-name "FlowTemplateDescription"))

(smithy/sdk/shapes:define-structure flow-template-filter common-lisp:nil
                                    ((name :target-type
                                      flow-template-filter-name :required
                                      common-lisp:t :member-name "name")
                                     (value :target-type
                                      flow-template-filter-values :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "FlowTemplateFilter"))

(smithy/sdk/shapes:define-enum flow-template-filter-name
    common-lisp:nil
  (:device-model-id "DEVICE_MODEL_ID"))

(smithy/sdk/shapes:define-type flow-template-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list flow-template-filter-values :member
                               flow-template-filter-value)

(smithy/sdk/shapes:define-list flow-template-filters :member
                               flow-template-filter)

(smithy/sdk/shapes:define-list flow-template-summaries :member
                               flow-template-summary)

(smithy/sdk/shapes:define-structure flow-template-summary common-lisp:nil
                                    ((id :target-type urn :member-name "id")
                                     (arn :target-type arn :member-name "arn")
                                     (revision-number :target-type version
                                      :member-name "revisionNumber")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt"))
                                    (:shape-name "FlowTemplateSummary"))

(smithy/sdk/shapes:define-input get-entities-request common-lisp:nil
                                ((ids :target-type urns :required common-lisp:t
                                  :member-name "ids")
                                 (namespace-version :target-type version
                                  :member-name "namespaceVersion"))
                                (:shape-name "GetEntitiesRequest"))

(smithy/sdk/shapes:define-output get-entities-response common-lisp:nil
                                 ((descriptions :target-type
                                   entity-descriptions :member-name
                                   "descriptions"))
                                 (:shape-name "GetEntitiesResponse"))

(smithy/sdk/shapes:define-input get-flow-template-request common-lisp:nil
                                ((id :target-type urn :required common-lisp:t
                                  :member-name "id")
                                 (revision-number :target-type version
                                  :member-name "revisionNumber"))
                                (:shape-name "GetFlowTemplateRequest"))

(smithy/sdk/shapes:define-output get-flow-template-response common-lisp:nil
                                 ((description :target-type
                                   flow-template-description :member-name
                                   "description"))
                                 (:shape-name "GetFlowTemplateResponse"))

(smithy/sdk/shapes:define-input get-flow-template-revisions-request
                                common-lisp:nil
                                ((id :target-type urn :required common-lisp:t
                                  :member-name "id")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "GetFlowTemplateRevisionsRequest"))

(smithy/sdk/shapes:define-output get-flow-template-revisions-response
                                 common-lisp:nil
                                 ((summaries :target-type
                                   flow-template-summaries :member-name
                                   "summaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "GetFlowTemplateRevisionsResponse"))

(smithy/sdk/shapes:define-input get-namespace-deletion-status-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "GetNamespaceDeletionStatusRequest"))

(smithy/sdk/shapes:define-output get-namespace-deletion-status-response
                                 common-lisp:nil
                                 ((namespace-arn :target-type arn :member-name
                                   "namespaceArn")
                                  (namespace-name :target-type namespace-name
                                   :member-name "namespaceName")
                                  (status :target-type
                                   namespace-deletion-status :member-name
                                   "status")
                                  (error-code :target-type
                                   namespace-deletion-status-error-codes
                                   :member-name "errorCode")
                                  (error-message :target-type string
                                   :member-name "errorMessage"))
                                 (:shape-name
                                  "GetNamespaceDeletionStatusResponse"))

(smithy/sdk/shapes:define-input get-system-instance-request common-lisp:nil
                                ((id :target-type urn :required common-lisp:t
                                  :member-name "id"))
                                (:shape-name "GetSystemInstanceRequest"))

(smithy/sdk/shapes:define-output get-system-instance-response common-lisp:nil
                                 ((description :target-type
                                   system-instance-description :member-name
                                   "description"))
                                 (:shape-name "GetSystemInstanceResponse"))

(smithy/sdk/shapes:define-input get-system-template-request common-lisp:nil
                                ((id :target-type urn :required common-lisp:t
                                  :member-name "id")
                                 (revision-number :target-type version
                                  :member-name "revisionNumber"))
                                (:shape-name "GetSystemTemplateRequest"))

(smithy/sdk/shapes:define-output get-system-template-response common-lisp:nil
                                 ((description :target-type
                                   system-template-description :member-name
                                   "description"))
                                 (:shape-name "GetSystemTemplateResponse"))

(smithy/sdk/shapes:define-input get-system-template-revisions-request
                                common-lisp:nil
                                ((id :target-type urn :required common-lisp:t
                                  :member-name "id")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name
                                 "GetSystemTemplateRevisionsRequest"))

(smithy/sdk/shapes:define-output get-system-template-revisions-response
                                 common-lisp:nil
                                 ((summaries :target-type
                                   system-template-summaries :member-name
                                   "summaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "GetSystemTemplateRevisionsResponse"))

(smithy/sdk/shapes:define-input get-upload-status-request common-lisp:nil
                                ((upload-id :target-type upload-id :required
                                  common-lisp:t :member-name "uploadId"))
                                (:shape-name "GetUploadStatusRequest"))

(smithy/sdk/shapes:define-output get-upload-status-response common-lisp:nil
                                 ((upload-id :target-type upload-id :required
                                   common-lisp:t :member-name "uploadId")
                                  (upload-status :target-type upload-status
                                   :required common-lisp:t :member-name
                                   "uploadStatus")
                                  (namespace-arn :target-type arn :member-name
                                   "namespaceArn")
                                  (namespace-name :target-type namespace-name
                                   :member-name "namespaceName")
                                  (namespace-version :target-type version
                                   :member-name "namespaceVersion")
                                  (failure-reason :target-type string-list
                                   :member-name "failureReason")
                                  (created-date :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "createdDate"))
                                 (:shape-name "GetUploadStatusResponse"))

(smithy/sdk/shapes:define-type greengrass-deployment-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type greengrass-group-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type greengrass-group-version-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type group-name smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 410))

(smithy/sdk/shapes:define-input list-flow-execution-messages-request
                                common-lisp:nil
                                ((flow-execution-id :target-type
                                  flow-execution-id :required common-lisp:t
                                  :member-name "flowExecutionId")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name
                                 "ListFlowExecutionMessagesRequest"))

(smithy/sdk/shapes:define-output list-flow-execution-messages-response
                                 common-lisp:nil
                                 ((messages :target-type
                                   flow-execution-messages :member-name
                                   "messages")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListFlowExecutionMessagesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "maxResults")
                                 (resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "tags")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure metrics-configuration common-lisp:nil
                                    ((cloud-metric-enabled :target-type enabled
                                      :member-name "cloudMetricEnabled")
                                     (metric-rule-role-arn :target-type
                                      role-arn :member-name
                                      "metricRuleRoleArn"))
                                    (:shape-name "MetricsConfiguration"))

(smithy/sdk/shapes:define-enum namespace-deletion-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-enum namespace-deletion-status-error-codes
    common-lisp:nil
  (:validation-failed "VALIDATION_FAILED"))

(smithy/sdk/shapes:define-type namespace-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-already-exists-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceAlreadyExistsException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-in-use-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceInUseException")
                                (:error-code 412))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input search-entities-request common-lisp:nil
                                ((entity-types :target-type entity-types
                                  :required common-lisp:t :member-name
                                  "entityTypes")
                                 (filters :target-type entity-filters
                                  :member-name "filters")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (namespace-version :target-type version
                                  :member-name "namespaceVersion"))
                                (:shape-name "SearchEntitiesRequest"))

(smithy/sdk/shapes:define-output search-entities-response common-lisp:nil
                                 ((descriptions :target-type
                                   entity-descriptions :member-name
                                   "descriptions")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "SearchEntitiesResponse"))

(smithy/sdk/shapes:define-input search-flow-executions-request common-lisp:nil
                                ((system-instance-id :target-type urn :required
                                  common-lisp:t :member-name
                                  "systemInstanceId")
                                 (flow-execution-id :target-type
                                  flow-execution-id :member-name
                                  "flowExecutionId")
                                 (start-time :target-type timestamp
                                  :member-name "startTime")
                                 (end-time :target-type timestamp :member-name
                                  "endTime")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "SearchFlowExecutionsRequest"))

(smithy/sdk/shapes:define-output search-flow-executions-response
                                 common-lisp:nil
                                 ((summaries :target-type
                                   flow-execution-summaries :member-name
                                   "summaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "SearchFlowExecutionsResponse"))

(smithy/sdk/shapes:define-input search-flow-templates-request common-lisp:nil
                                ((filters :target-type flow-template-filters
                                  :member-name "filters")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "SearchFlowTemplatesRequest"))

(smithy/sdk/shapes:define-output search-flow-templates-response common-lisp:nil
                                 ((summaries :target-type
                                   flow-template-summaries :member-name
                                   "summaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "SearchFlowTemplatesResponse"))

(smithy/sdk/shapes:define-input search-system-instances-request common-lisp:nil
                                ((filters :target-type system-instance-filters
                                  :member-name "filters")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "SearchSystemInstancesRequest"))

(smithy/sdk/shapes:define-output search-system-instances-response
                                 common-lisp:nil
                                 ((summaries :target-type
                                   system-instance-summaries :member-name
                                   "summaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "SearchSystemInstancesResponse"))

(smithy/sdk/shapes:define-input search-system-templates-request common-lisp:nil
                                ((filters :target-type system-template-filters
                                  :member-name "filters")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "SearchSystemTemplatesRequest"))

(smithy/sdk/shapes:define-output search-system-templates-response
                                 common-lisp:nil
                                 ((summaries :target-type
                                   system-template-summaries :member-name
                                   "summaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "SearchSystemTemplatesResponse"))

(smithy/sdk/shapes:define-input search-things-request common-lisp:nil
                                ((entity-id :target-type urn :required
                                  common-lisp:t :member-name "entityId")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (namespace-version :target-type version
                                  :member-name "namespaceVersion"))
                                (:shape-name "SearchThingsRequest"))

(smithy/sdk/shapes:define-output search-things-response common-lisp:nil
                                 ((things :target-type things :member-name
                                   "things")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "SearchThingsResponse"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-list :member string)

(smithy/sdk/shapes:define-type sync-with-public-namespace
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum system-instance-deployment-status
    common-lisp:nil
  (:not-deployed "NOT_DEPLOYED")
  (:bootstrap "BOOTSTRAP")
  (:deploy-in-progress "DEPLOY_IN_PROGRESS")
  (:deployed-in-target "DEPLOYED_IN_TARGET")
  (:undeploy-in-progress "UNDEPLOY_IN_PROGRESS")
  (:failed "FAILED")
  (:pending-delete "PENDING_DELETE")
  (:deleted-in-target "DELETED_IN_TARGET"))

(smithy/sdk/shapes:define-structure system-instance-description common-lisp:nil
                                    ((summary :target-type
                                      system-instance-summary :member-name
                                      "summary")
                                     (definition :target-type
                                      definition-document :member-name
                                      "definition")
                                     (s3bucket-name :target-type s3bucket-name
                                      :member-name "s3BucketName")
                                     (metrics-configuration :target-type
                                      metrics-configuration :member-name
                                      "metricsConfiguration")
                                     (validated-namespace-version :target-type
                                      version :member-name
                                      "validatedNamespaceVersion")
                                     (validated-dependency-revisions
                                      :target-type dependency-revisions
                                      :member-name
                                      "validatedDependencyRevisions")
                                     (flow-actions-role-arn :target-type
                                      role-arn :member-name
                                      "flowActionsRoleArn"))
                                    (:shape-name "SystemInstanceDescription"))

(smithy/sdk/shapes:define-structure system-instance-filter common-lisp:nil
                                    ((name :target-type
                                      system-instance-filter-name :member-name
                                      "name")
                                     (value :target-type
                                      system-instance-filter-values
                                      :member-name "value"))
                                    (:shape-name "SystemInstanceFilter"))

(smithy/sdk/shapes:define-enum system-instance-filter-name
    common-lisp:nil
  (:system-template-id "SYSTEM_TEMPLATE_ID")
  (:status "STATUS")
  (:greengrass-group-name "GREENGRASS_GROUP_NAME"))

(smithy/sdk/shapes:define-type system-instance-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list system-instance-filter-values :member
                               system-instance-filter-value)

(smithy/sdk/shapes:define-list system-instance-filters :member
                               system-instance-filter)

(smithy/sdk/shapes:define-list system-instance-summaries :member
                               system-instance-summary)

(smithy/sdk/shapes:define-structure system-instance-summary common-lisp:nil
                                    ((id :target-type urn :member-name "id")
                                     (arn :target-type arn :member-name "arn")
                                     (status :target-type
                                      system-instance-deployment-status
                                      :member-name "status")
                                     (target :target-type deployment-target
                                      :member-name "target")
                                     (greengrass-group-name :target-type
                                      group-name :member-name
                                      "greengrassGroupName")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (updated-at :target-type timestamp
                                      :member-name "updatedAt")
                                     (greengrass-group-id :target-type
                                      greengrass-group-id :member-name
                                      "greengrassGroupId")
                                     (greengrass-group-version-id :target-type
                                      greengrass-group-version-id :member-name
                                      "greengrassGroupVersionId"))
                                    (:shape-name "SystemInstanceSummary"))

(smithy/sdk/shapes:define-structure system-template-description common-lisp:nil
                                    ((summary :target-type
                                      system-template-summary :member-name
                                      "summary")
                                     (definition :target-type
                                      definition-document :member-name
                                      "definition")
                                     (validated-namespace-version :target-type
                                      version :member-name
                                      "validatedNamespaceVersion"))
                                    (:shape-name "SystemTemplateDescription"))

(smithy/sdk/shapes:define-structure system-template-filter common-lisp:nil
                                    ((name :target-type
                                      system-template-filter-name :required
                                      common-lisp:t :member-name "name")
                                     (value :target-type
                                      system-template-filter-values :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "SystemTemplateFilter"))

(smithy/sdk/shapes:define-enum system-template-filter-name
    common-lisp:nil
  (:flow-template-id "FLOW_TEMPLATE_ID"))

(smithy/sdk/shapes:define-type system-template-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list system-template-filter-values :member
                               system-template-filter-value)

(smithy/sdk/shapes:define-list system-template-filters :member
                               system-template-filter)

(smithy/sdk/shapes:define-list system-template-summaries :member
                               system-template-summary)

(smithy/sdk/shapes:define-structure system-template-summary common-lisp:nil
                                    ((id :target-type urn :member-name "id")
                                     (arn :target-type arn :member-name "arn")
                                     (revision-number :target-type version
                                      :member-name "revisionNumber")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt"))
                                    (:shape-name "SystemTemplateSummary"))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure thing common-lisp:nil
                                    ((thing-arn :target-type thing-arn
                                      :member-name "thingArn")
                                     (thing-name :target-type thing-name
                                      :member-name "thingName"))
                                    (:shape-name "Thing"))

(smithy/sdk/shapes:define-type thing-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type thing-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list things :member thing)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input undeploy-system-instance-request
                                common-lisp:nil
                                ((id :target-type urn :member-name "id"))
                                (:shape-name "UndeploySystemInstanceRequest"))

(smithy/sdk/shapes:define-output undeploy-system-instance-response
                                 common-lisp:nil
                                 ((summary :target-type system-instance-summary
                                   :member-name "summary"))
                                 (:shape-name "UndeploySystemInstanceResponse"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-flow-template-request common-lisp:nil
                                ((id :target-type urn :required common-lisp:t
                                  :member-name "id")
                                 (definition :target-type definition-document
                                  :required common-lisp:t :member-name
                                  "definition")
                                 (compatible-namespace-version :target-type
                                  version :member-name
                                  "compatibleNamespaceVersion"))
                                (:shape-name "UpdateFlowTemplateRequest"))

(smithy/sdk/shapes:define-output update-flow-template-response common-lisp:nil
                                 ((summary :target-type flow-template-summary
                                   :member-name "summary"))
                                 (:shape-name "UpdateFlowTemplateResponse"))

(smithy/sdk/shapes:define-input update-system-template-request common-lisp:nil
                                ((id :target-type urn :required common-lisp:t
                                  :member-name "id")
                                 (definition :target-type definition-document
                                  :required common-lisp:t :member-name
                                  "definition")
                                 (compatible-namespace-version :target-type
                                  version :member-name
                                  "compatibleNamespaceVersion"))
                                (:shape-name "UpdateSystemTemplateRequest"))

(smithy/sdk/shapes:define-output update-system-template-response
                                 common-lisp:nil
                                 ((summary :target-type system-template-summary
                                   :member-name "summary"))
                                 (:shape-name "UpdateSystemTemplateResponse"))

(smithy/sdk/shapes:define-input upload-entity-definitions-request
                                common-lisp:nil
                                ((document :target-type definition-document
                                  :member-name "document")
                                 (sync-with-public-namespace :target-type
                                  sync-with-public-namespace :member-name
                                  "syncWithPublicNamespace")
                                 (deprecate-existing-entities :target-type
                                  deprecate-existing-entities :member-name
                                  "deprecateExistingEntities"))
                                (:shape-name "UploadEntityDefinitionsRequest"))

(smithy/sdk/shapes:define-output upload-entity-definitions-response
                                 common-lisp:nil
                                 ((upload-id :target-type upload-id :required
                                   common-lisp:t :member-name "uploadId"))
                                 (:shape-name
                                  "UploadEntityDefinitionsResponse"))

(smithy/sdk/shapes:define-type upload-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum upload-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-type urn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list urns :member urn)

(smithy/sdk/shapes:define-type version smithy/sdk/smithy-types:long)

(smithy/sdk/operation:define-operation associate-entity-to-thing :shape-name
                                       "AssociateEntityToThing" :input
                                       associate-entity-to-thing-request
                                       :output
                                       associate-entity-to-thing-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation create-flow-template :shape-name
                                       "CreateFlowTemplate" :input
                                       create-flow-template-request :output
                                       create-flow-template-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation create-system-instance :shape-name
                                       "CreateSystemInstance" :input
                                       create-system-instance-request :output
                                       create-system-instance-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation create-system-template :shape-name
                                       "CreateSystemTemplate" :input
                                       create-system-template-request :output
                                       create-system-template-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-already-exists-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation delete-flow-template :shape-name
                                       "DeleteFlowTemplate" :input
                                       delete-flow-template-request :output
                                       delete-flow-template-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation delete-namespace :shape-name
                                       "DeleteNamespace" :input
                                       delete-namespace-request :output
                                       delete-namespace-response :errors
                                       (internal-failure-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation delete-system-instance :shape-name
                                       "DeleteSystemInstance" :input
                                       delete-system-instance-request :output
                                       delete-system-instance-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation delete-system-template :shape-name
                                       "DeleteSystemTemplate" :input
                                       delete-system-template-request :output
                                       delete-system-template-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation deploy-system-instance :shape-name
                                       "DeploySystemInstance" :input
                                       deploy-system-instance-request :output
                                       deploy-system-instance-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation deprecate-flow-template :shape-name
                                       "DeprecateFlowTemplate" :input
                                       deprecate-flow-template-request :output
                                       deprecate-flow-template-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation deprecate-system-template :shape-name
                                       "DeprecateSystemTemplate" :input
                                       deprecate-system-template-request
                                       :output
                                       deprecate-system-template-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation describe-namespace :shape-name
                                       "DescribeNamespace" :input
                                       describe-namespace-request :output
                                       describe-namespace-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation dissociate-entity-from-thing :shape-name
                                       "DissociateEntityFromThing" :input
                                       dissociate-entity-from-thing-request
                                       :output
                                       dissociate-entity-from-thing-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-entities :shape-name "GetEntities"
                                       :input get-entities-request :output
                                       get-entities-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-flow-template :shape-name
                                       "GetFlowTemplate" :input
                                       get-flow-template-request :output
                                       get-flow-template-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-flow-template-revisions :shape-name
                                       "GetFlowTemplateRevisions" :input
                                       get-flow-template-revisions-request
                                       :output
                                       get-flow-template-revisions-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-namespace-deletion-status
                                       :shape-name "GetNamespaceDeletionStatus"
                                       :input
                                       get-namespace-deletion-status-request
                                       :output
                                       get-namespace-deletion-status-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-system-instance :shape-name
                                       "GetSystemInstance" :input
                                       get-system-instance-request :output
                                       get-system-instance-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-system-template :shape-name
                                       "GetSystemTemplate" :input
                                       get-system-template-request :output
                                       get-system-template-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-system-template-revisions
                                       :shape-name "GetSystemTemplateRevisions"
                                       :input
                                       get-system-template-revisions-request
                                       :output
                                       get-system-template-revisions-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-upload-status :shape-name
                                       "GetUploadStatus" :input
                                       get-upload-status-request :output
                                       get-upload-status-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-flow-execution-messages :shape-name
                                       "ListFlowExecutionMessages" :input
                                       list-flow-execution-messages-request
                                       :output
                                       list-flow-execution-messages-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-already-exists-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation search-entities :shape-name
                                       "SearchEntities" :input
                                       search-entities-request :output
                                       search-entities-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation search-flow-executions :shape-name
                                       "SearchFlowExecutions" :input
                                       search-flow-executions-request :output
                                       search-flow-executions-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation search-flow-templates :shape-name
                                       "SearchFlowTemplates" :input
                                       search-flow-templates-request :output
                                       search-flow-templates-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation search-system-instances :shape-name
                                       "SearchSystemInstances" :input
                                       search-system-instances-request :output
                                       search-system-instances-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation search-system-templates :shape-name
                                       "SearchSystemTemplates" :input
                                       search-system-templates-request :output
                                       search-system-templates-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation search-things :shape-name "SearchThings"
                                       :input search-things-request :output
                                       search-things-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-already-exists-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation undeploy-system-instance :shape-name
                                       "UndeploySystemInstance" :input
                                       undeploy-system-instance-request :output
                                       undeploy-system-instance-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-already-exists-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation update-flow-template :shape-name
                                       "UpdateFlowTemplate" :input
                                       update-flow-template-request :output
                                       update-flow-template-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation update-system-template :shape-name
                                       "UpdateSystemTemplate" :input
                                       update-system-template-request :output
                                       update-system-template-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation upload-entity-definitions :shape-name
                                       "UploadEntityDefinitions" :input
                                       upload-entity-definitions-request
                                       :output
                                       upload-entity-definitions-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception))
