(uiop/package:define-package #:pira/ssm-incidents (:use)
                             (:export #:action #:actions-list
                              #:add-region-action #:arn #:attribute-value-list
                              #:automation-execution #:automation-execution-set
                              #:batch-get-incident-findings
                              #:batch-get-incident-findings-error
                              #:batch-get-incident-findings-error-list
                              #:chat-channel #:chatbot-sns-configuration-set
                              #:client-token #:cloud-formation-stack-update
                              #:code-deploy-deployment #:condition
                              #:create-replication-set
                              #:create-replication-set-input
                              #:create-replication-set-output
                              #:create-response-plan
                              #:create-response-plan-input
                              #:create-response-plan-output
                              #:create-timeline-event
                              #:create-timeline-event-input
                              #:create-timeline-event-output #:dedupe-string
                              #:delete-incident-record
                              #:delete-incident-record-input
                              #:delete-incident-record-output
                              #:delete-region-action #:delete-replication-set
                              #:delete-replication-set-input
                              #:delete-replication-set-output
                              #:delete-resource-policy
                              #:delete-resource-policy-input
                              #:delete-resource-policy-output
                              #:delete-response-plan
                              #:delete-response-plan-input
                              #:delete-response-plan-output
                              #:delete-timeline-event
                              #:delete-timeline-event-input
                              #:delete-timeline-event-output
                              #:dynamic-ssm-parameter-value
                              #:dynamic-ssm-parameters #:empty-chat-channel
                              #:engagement-set #:event-data #:event-reference
                              #:event-reference-list #:event-summary
                              #:event-summary-list #:exception-message #:filter
                              #:filter-list #:finding #:finding-details
                              #:finding-id #:finding-id-list #:finding-list
                              #:finding-summary #:finding-summary-list
                              #:generated-id #:get-incident-record
                              #:get-incident-record-input
                              #:get-incident-record-output
                              #:get-replication-set #:get-replication-set-input
                              #:get-replication-set-output
                              #:get-resource-policies
                              #:get-resource-policies-input
                              #:get-resource-policies-output
                              #:get-response-plan #:get-response-plan-input
                              #:get-response-plan-output #:get-timeline-event
                              #:get-timeline-event-input
                              #:get-timeline-event-output #:impact
                              #:incident-record #:incident-record-source
                              #:incident-record-status
                              #:incident-record-summary
                              #:incident-record-summary-list #:incident-source
                              #:incident-summary #:incident-template
                              #:incident-title #:integer-list #:integration
                              #:integrations #:item-identifier #:item-type
                              #:item-value #:list-incident-findings
                              #:list-incident-records
                              #:list-incident-records-input
                              #:list-incident-records-output
                              #:list-related-items #:list-related-items-input
                              #:list-related-items-output
                              #:list-replication-sets
                              #:list-replication-sets-input
                              #:list-replication-sets-output
                              #:list-response-plans #:list-response-plans-input
                              #:list-response-plans-output
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:list-timeline-events
                              #:list-timeline-events-input
                              #:list-timeline-events-output #:max-results
                              #:metric-definition #:next-token
                              #:notification-target-item
                              #:notification-target-set
                              #:pager-duty-configuration
                              #:pager-duty-incident-configuration
                              #:pager-duty-incident-detail #:policy #:policy-id
                              #:put-resource-policy #:put-resource-policy-input
                              #:put-resource-policy-output #:raw-data
                              #:region-info #:region-info-map
                              #:region-map-input #:region-map-input-value
                              #:region-name #:region-status #:related-item
                              #:related-item-list #:related-items-update
                              #:replication-set #:replication-set-arn-list
                              #:replication-set-status #:resource-policy
                              #:resource-policy-list #:resource-type
                              #:response-plan-display-name #:response-plan-name
                              #:response-plan-summary
                              #:response-plan-summary-list #:role-arn
                              #:ssmincidents #:service-code #:service-principal
                              #:sns-arn #:sort-order #:sse-kms-key
                              #:ssm-automation #:ssm-contacts-arn
                              #:ssm-parameter-values #:ssm-parameters
                              #:ssm-target-account #:start-incident
                              #:start-incident-input #:start-incident-output
                              #:string-list #:tag-key #:tag-key-list #:tag-map
                              #:tag-map-update #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:timeline-event
                              #:timeline-event-sort #:timeline-event-type
                              #:trigger-details #:uuid #:untag-resource
                              #:untag-resource-request
                              #:untag-resource-response #:update-action-list
                              #:update-deletion-protection
                              #:update-deletion-protection-input
                              #:update-deletion-protection-output
                              #:update-incident-record
                              #:update-incident-record-input
                              #:update-incident-record-output
                              #:update-related-items
                              #:update-related-items-input
                              #:update-related-items-output
                              #:update-replication-set
                              #:update-replication-set-action
                              #:update-replication-set-input
                              #:update-replication-set-output
                              #:update-response-plan
                              #:update-response-plan-input
                              #:update-response-plan-output
                              #:update-timeline-event
                              #:update-timeline-event-input
                              #:update-timeline-event-output #:url
                              #:variable-type))
(common-lisp:in-package #:pira/ssm-incidents)

(smithy/sdk/service:define-service ssmincidents :shape-name "SSMIncidents"
                                   :version "2018-05-10" :title
                                   "AWS Systems Manager Incident Manager"
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "SSM Incidents")
                                      ("arnNamespace" . "ssm-incidents")
                                      ("awsProductName" . "AWSSystemsManager")
                                      ("cloudFormationName" . "SSMIncidents"))
                                     ("aws.auth#sigv4"
                                      ("name" . "ssm-incidents"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-union action common-lisp:nil
                                ((ssm-automation :target-type ssm-automation
                                  :member-name "ssmAutomation"))
                                (:shape-name "Action"))

(smithy/sdk/shapes:define-list actions-list :member action)

(smithy/sdk/shapes:define-structure add-region-action common-lisp:nil
                                    ((region-name :target-type region-name
                                      :required common-lisp:t :member-name
                                      "regionName")
                                     (sse-kms-key-id :target-type sse-kms-key
                                      :member-name "sseKmsKeyId"))
                                    (:shape-name "AddRegionAction"))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union attribute-value-list common-lisp:nil
                                ((string-values :target-type string-list
                                  :member-name "stringValues")
                                 (integer-values :target-type integer-list
                                  :member-name "integerValues"))
                                (:shape-name "AttributeValueList"))

(smithy/sdk/shapes:define-union automation-execution common-lisp:nil
                                ((ssm-execution-arn :target-type arn
                                  :member-name "ssmExecutionArn"))
                                (:shape-name "AutomationExecution"))

(smithy/sdk/shapes:define-list automation-execution-set :member
                               automation-execution)

(smithy/sdk/shapes:define-structure batch-get-incident-findings-error
                                    common-lisp:nil
                                    ((finding-id :target-type finding-id
                                      :required common-lisp:t :member-name
                                      "findingId")
                                     (code :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "code")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name
                                     "BatchGetIncidentFindingsError"))

(smithy/sdk/shapes:define-list batch-get-incident-findings-error-list :member
                               batch-get-incident-findings-error)

(smithy/sdk/shapes:define-input batch-get-incident-findings-input
                                common-lisp:nil
                                ((incident-record-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "incidentRecordArn")
                                 (finding-ids :target-type finding-id-list
                                  :required common-lisp:t :member-name
                                  "findingIds"))
                                (:shape-name "BatchGetIncidentFindingsInput"))

(smithy/sdk/shapes:define-output batch-get-incident-findings-output
                                 common-lisp:nil
                                 ((findings :target-type finding-list :required
                                   common-lisp:t :member-name "findings")
                                  (errors :target-type
                                   batch-get-incident-findings-error-list
                                   :required common-lisp:t :member-name
                                   "errors"))
                                 (:shape-name "BatchGetIncidentFindingsOutput"))

(smithy/sdk/shapes:define-union chat-channel common-lisp:nil
                                ((empty :target-type empty-chat-channel
                                  :member-name "empty")
                                 (chatbot-sns :target-type
                                  chatbot-sns-configuration-set :member-name
                                  "chatbotSns"))
                                (:shape-name "ChatChannel"))

(smithy/sdk/shapes:define-list chatbot-sns-configuration-set :member sns-arn)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cloud-formation-stack-update
                                    common-lisp:nil
                                    ((start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "startTime")
                                     (end-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "endTime")
                                     (stack-arn :target-type arn :required
                                      common-lisp:t :member-name "stackArn"))
                                    (:shape-name "CloudFormationStackUpdate"))

(smithy/sdk/shapes:define-structure code-deploy-deployment common-lisp:nil
                                    ((start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "startTime")
                                     (end-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "endTime")
                                     (deployment-group-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "deploymentGroupArn")
                                     (deployment-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "deploymentId"))
                                    (:shape-name "CodeDeployDeployment"))

(smithy/sdk/shapes:define-union condition common-lisp:nil
                                ((before :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "before")
                                 (after :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "after")
                                 (equals :target-type attribute-value-list
                                  :member-name "equals"))
                                (:shape-name "Condition"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message")
                                 (resource-identifier :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceIdentifier")
                                 (resource-type :target-type resource-type
                                  :member-name "resourceType")
                                 (retry-after :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "retryAfter"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure create-replication-set-input
                                    common-lisp:nil
                                    ((regions :target-type region-map-input
                                      :required common-lisp:t :member-name
                                      "regions")
                                     (client-token :target-type client-token
                                      :member-name "clientToken")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "CreateReplicationSetInput"))

(smithy/sdk/shapes:define-structure create-replication-set-output
                                    common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name "CreateReplicationSetOutput"))

(smithy/sdk/shapes:define-structure create-response-plan-input common-lisp:nil
                                    ((client-token :target-type client-token
                                      :member-name "clientToken")
                                     (name :target-type response-plan-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (display-name :target-type
                                      response-plan-display-name :member-name
                                      "displayName")
                                     (incident-template :target-type
                                      incident-template :required common-lisp:t
                                      :member-name "incidentTemplate")
                                     (chat-channel :target-type chat-channel
                                      :member-name "chatChannel")
                                     (engagements :target-type engagement-set
                                      :member-name "engagements")
                                     (actions :target-type actions-list
                                      :member-name "actions")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (integrations :target-type integrations
                                      :member-name "integrations"))
                                    (:shape-name "CreateResponsePlanInput"))

(smithy/sdk/shapes:define-structure create-response-plan-output common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name "CreateResponsePlanOutput"))

(smithy/sdk/shapes:define-structure create-timeline-event-input common-lisp:nil
                                    ((client-token :target-type client-token
                                      :member-name "clientToken")
                                     (incident-record-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "incidentRecordArn")
                                     (event-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "eventTime")
                                     (event-type :target-type
                                      timeline-event-type :required
                                      common-lisp:t :member-name "eventType")
                                     (event-data :target-type event-data
                                      :required common-lisp:t :member-name
                                      "eventData")
                                     (event-references :target-type
                                      event-reference-list :member-name
                                      "eventReferences"))
                                    (:shape-name "CreateTimelineEventInput"))

(smithy/sdk/shapes:define-structure create-timeline-event-output
                                    common-lisp:nil
                                    ((incident-record-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "incidentRecordArn")
                                     (event-id :target-type uuid :required
                                      common-lisp:t :member-name "eventId"))
                                    (:shape-name "CreateTimelineEventOutput"))

(smithy/sdk/shapes:define-type dedupe-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure delete-incident-record-input
                                    common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name "DeleteIncidentRecordInput"))

(smithy/sdk/shapes:define-structure delete-incident-record-output
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "DeleteIncidentRecordOutput"))

(smithy/sdk/shapes:define-structure delete-region-action common-lisp:nil
                                    ((region-name :target-type region-name
                                      :required common-lisp:t :member-name
                                      "regionName"))
                                    (:shape-name "DeleteRegionAction"))

(smithy/sdk/shapes:define-structure delete-replication-set-input
                                    common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "arn"
                                      :http-query "arn"))
                                    (:shape-name "DeleteReplicationSetInput"))

(smithy/sdk/shapes:define-structure delete-replication-set-output
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "DeleteReplicationSetOutput"))

(smithy/sdk/shapes:define-structure delete-resource-policy-input
                                    common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name "resourceArn")
                                     (policy-id :target-type policy-id
                                      :required common-lisp:t :member-name
                                      "policyId"))
                                    (:shape-name "DeleteResourcePolicyInput"))

(smithy/sdk/shapes:define-structure delete-resource-policy-output
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "DeleteResourcePolicyOutput"))

(smithy/sdk/shapes:define-structure delete-response-plan-input common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name "DeleteResponsePlanInput"))

(smithy/sdk/shapes:define-structure delete-response-plan-output common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteResponsePlanOutput"))

(smithy/sdk/shapes:define-structure delete-timeline-event-input common-lisp:nil
                                    ((incident-record-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "incidentRecordArn")
                                     (event-id :target-type uuid :required
                                      common-lisp:t :member-name "eventId"))
                                    (:shape-name "DeleteTimelineEventInput"))

(smithy/sdk/shapes:define-structure delete-timeline-event-output
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "DeleteTimelineEventOutput"))

(smithy/sdk/shapes:define-union dynamic-ssm-parameter-value common-lisp:nil
                                ((variable :target-type variable-type
                                  :member-name "variable"))
                                (:shape-name "DynamicSsmParameterValue"))

(smithy/sdk/shapes:define-map dynamic-ssm-parameters :key
                              smithy/sdk/smithy-types:string :value
                              dynamic-ssm-parameter-value)

(smithy/sdk/shapes:define-structure empty-chat-channel common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "EmptyChatChannel"))

(smithy/sdk/shapes:define-list engagement-set :member ssm-contacts-arn)

(smithy/sdk/shapes:define-type event-data smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union event-reference common-lisp:nil
                                ((resource :target-type arn :member-name
                                  "resource")
                                 (related-item-id :target-type generated-id
                                  :member-name "relatedItemId"))
                                (:shape-name "EventReference"))

(smithy/sdk/shapes:define-list event-reference-list :member event-reference)

(smithy/sdk/shapes:define-structure event-summary common-lisp:nil
                                    ((incident-record-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "incidentRecordArn")
                                     (event-id :target-type uuid :required
                                      common-lisp:t :member-name "eventId")
                                     (event-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "eventTime")
                                     (event-updated-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "eventUpdatedTime")
                                     (event-type :target-type
                                      timeline-event-type :required
                                      common-lisp:t :member-name "eventType")
                                     (event-references :target-type
                                      event-reference-list :member-name
                                      "eventReferences"))
                                    (:shape-name "EventSummary"))

(smithy/sdk/shapes:define-list event-summary-list :member event-summary)

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure filter common-lisp:nil
                                    ((key :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "key")
                                     (condition :target-type condition
                                      :required common-lisp:t :member-name
                                      "condition"))
                                    (:shape-name "Filter"))

(smithy/sdk/shapes:define-list filter-list :member filter)

(smithy/sdk/shapes:define-structure finding common-lisp:nil
                                    ((id :target-type finding-id :required
                                      common-lisp:t :member-name "id")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (last-modified-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModifiedTime")
                                     (details :target-type finding-details
                                      :member-name "details"))
                                    (:shape-name "Finding"))

(smithy/sdk/shapes:define-union finding-details common-lisp:nil
                                ((code-deploy-deployment :target-type
                                  code-deploy-deployment :member-name
                                  "codeDeployDeployment")
                                 (cloud-formation-stack-update :target-type
                                  cloud-formation-stack-update :member-name
                                  "cloudFormationStackUpdate"))
                                (:shape-name "FindingDetails"))

(smithy/sdk/shapes:define-type finding-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list finding-id-list :member finding-id)

(smithy/sdk/shapes:define-list finding-list :member finding)

(smithy/sdk/shapes:define-structure finding-summary common-lisp:nil
                                    ((id :target-type finding-id :required
                                      common-lisp:t :member-name "id")
                                     (last-modified-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModifiedTime"))
                                    (:shape-name "FindingSummary"))

(smithy/sdk/shapes:define-list finding-summary-list :member finding-summary)

(smithy/sdk/shapes:define-type generated-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure get-incident-record-input common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "arn"
                                      :http-query "arn"))
                                    (:shape-name "GetIncidentRecordInput"))

(smithy/sdk/shapes:define-structure get-incident-record-output common-lisp:nil
                                    ((incident-record :target-type
                                      incident-record :required common-lisp:t
                                      :member-name "incidentRecord"))
                                    (:shape-name "GetIncidentRecordOutput"))

(smithy/sdk/shapes:define-structure get-replication-set-input common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "arn"
                                      :http-query "arn"))
                                    (:shape-name "GetReplicationSetInput"))

(smithy/sdk/shapes:define-structure get-replication-set-output common-lisp:nil
                                    ((replication-set :target-type
                                      replication-set :required common-lisp:t
                                      :member-name "replicationSet"))
                                    (:shape-name "GetReplicationSetOutput"))

(smithy/sdk/shapes:define-structure get-resource-policies-input common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name "resourceArn"
                                      :http-query "resourceArn")
                                     (max-results :target-type max-results
                                      :member-name "maxResults")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "GetResourcePoliciesInput"))

(smithy/sdk/shapes:define-structure get-resource-policies-output
                                    common-lisp:nil
                                    ((resource-policies :target-type
                                      resource-policy-list :required
                                      common-lisp:t :member-name
                                      "resourcePolicies")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "GetResourcePoliciesOutput"))

(smithy/sdk/shapes:define-structure get-response-plan-input common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "arn"
                                      :http-query "arn"))
                                    (:shape-name "GetResponsePlanInput"))

(smithy/sdk/shapes:define-structure get-response-plan-output common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type response-plan-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (display-name :target-type
                                      response-plan-display-name :member-name
                                      "displayName")
                                     (incident-template :target-type
                                      incident-template :required common-lisp:t
                                      :member-name "incidentTemplate")
                                     (chat-channel :target-type chat-channel
                                      :member-name "chatChannel")
                                     (engagements :target-type engagement-set
                                      :member-name "engagements")
                                     (actions :target-type actions-list
                                      :member-name "actions")
                                     (integrations :target-type integrations
                                      :member-name "integrations"))
                                    (:shape-name "GetResponsePlanOutput"))

(smithy/sdk/shapes:define-structure get-timeline-event-input common-lisp:nil
                                    ((incident-record-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "incidentRecordArn" :http-query
                                      "incidentRecordArn")
                                     (event-id :target-type uuid :required
                                      common-lisp:t :member-name "eventId"
                                      :http-query "eventId"))
                                    (:shape-name "GetTimelineEventInput"))

(smithy/sdk/shapes:define-structure get-timeline-event-output common-lisp:nil
                                    ((event :target-type timeline-event
                                      :required common-lisp:t :member-name
                                      "event"))
                                    (:shape-name "GetTimelineEventOutput"))

(smithy/sdk/shapes:define-type impact smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure incident-record common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (title :target-type incident-title
                                      :required common-lisp:t :member-name
                                      "title")
                                     (summary :target-type incident-summary
                                      :member-name "summary")
                                     (status :target-type
                                      incident-record-status :required
                                      common-lisp:t :member-name "status")
                                     (impact :target-type impact :required
                                      common-lisp:t :member-name "impact")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (resolved-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "resolvedTime")
                                     (last-modified-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModifiedTime")
                                     (last-modified-by :target-type arn
                                      :required common-lisp:t :member-name
                                      "lastModifiedBy")
                                     (automation-executions :target-type
                                      automation-execution-set :member-name
                                      "automationExecutions")
                                     (incident-record-source :target-type
                                      incident-record-source :required
                                      common-lisp:t :member-name
                                      "incidentRecordSource")
                                     (dedupe-string :target-type dedupe-string
                                      :required common-lisp:t :member-name
                                      "dedupeString")
                                     (chat-channel :target-type chat-channel
                                      :member-name "chatChannel")
                                     (notification-targets :target-type
                                      notification-target-set :member-name
                                      "notificationTargets"))
                                    (:shape-name "IncidentRecord"))

(smithy/sdk/shapes:define-structure incident-record-source common-lisp:nil
                                    ((created-by :target-type arn :required
                                      common-lisp:t :member-name "createdBy")
                                     (invoked-by :target-type service-principal
                                      :member-name "invokedBy")
                                     (resource-arn :target-type arn
                                      :member-name "resourceArn")
                                     (source :target-type incident-source
                                      :required common-lisp:t :member-name
                                      "source"))
                                    (:shape-name "IncidentRecordSource"))

(smithy/sdk/shapes:define-type incident-record-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure incident-record-summary common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (title :target-type incident-title
                                      :required common-lisp:t :member-name
                                      "title")
                                     (status :target-type
                                      incident-record-status :required
                                      common-lisp:t :member-name "status")
                                     (impact :target-type impact :required
                                      common-lisp:t :member-name "impact")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (resolved-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "resolvedTime")
                                     (incident-record-source :target-type
                                      incident-record-source :required
                                      common-lisp:t :member-name
                                      "incidentRecordSource"))
                                    (:shape-name "IncidentRecordSummary"))

(smithy/sdk/shapes:define-list incident-record-summary-list :member
                               incident-record-summary)

(smithy/sdk/shapes:define-type incident-source smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type incident-summary smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure incident-template common-lisp:nil
                                    ((title :target-type incident-title
                                      :required common-lisp:t :member-name
                                      "title")
                                     (impact :target-type impact :required
                                      common-lisp:t :member-name "impact")
                                     (summary :target-type incident-summary
                                      :member-name "summary")
                                     (dedupe-string :target-type dedupe-string
                                      :member-name "dedupeString")
                                     (notification-targets :target-type
                                      notification-target-set :member-name
                                      "notificationTargets")
                                     (incident-tags :target-type tag-map
                                      :member-name "incidentTags"))
                                    (:shape-name "IncidentTemplate"))

(smithy/sdk/shapes:define-type incident-title smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list integer-list :member
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-union integration common-lisp:nil
                                ((pager-duty-configuration :target-type
                                  pager-duty-configuration :member-name
                                  "pagerDutyConfiguration"))
                                (:shape-name "Integration"))

(smithy/sdk/shapes:define-list integrations :member integration)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure item-identifier common-lisp:nil
                                    ((value :target-type item-value :required
                                      common-lisp:t :member-name "value")
                                     (type :target-type item-type :required
                                      common-lisp:t :member-name "type"))
                                    (:shape-name "ItemIdentifier"))

(smithy/sdk/shapes:define-type item-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union item-value common-lisp:nil
                                ((arn :target-type arn :member-name "arn")
                                 (url :target-type url :member-name "url")
                                 (metric-definition :target-type
                                  metric-definition :member-name
                                  "metricDefinition")
                                 (pager-duty-incident-detail :target-type
                                  pager-duty-incident-detail :member-name
                                  "pagerDutyIncidentDetail"))
                                (:shape-name "ItemValue"))

(smithy/sdk/shapes:define-input list-incident-findings-input common-lisp:nil
                                ((incident-record-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "incidentRecordArn")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListIncidentFindingsInput"))

(smithy/sdk/shapes:define-output list-incident-findings-output common-lisp:nil
                                 ((findings :target-type finding-summary-list
                                   :required common-lisp:t :member-name
                                   "findings")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListIncidentFindingsOutput"))

(smithy/sdk/shapes:define-structure list-incident-records-input common-lisp:nil
                                    ((filters :target-type filter-list
                                      :member-name "filters")
                                     (max-results :target-type max-results
                                      :member-name "maxResults")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListIncidentRecordsInput"))

(smithy/sdk/shapes:define-structure list-incident-records-output
                                    common-lisp:nil
                                    ((incident-record-summaries :target-type
                                      incident-record-summary-list :required
                                      common-lisp:t :member-name
                                      "incidentRecordSummaries")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListIncidentRecordsOutput"))

(smithy/sdk/shapes:define-structure list-related-items-input common-lisp:nil
                                    ((incident-record-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "incidentRecordArn")
                                     (max-results :target-type max-results
                                      :member-name "maxResults")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListRelatedItemsInput"))

(smithy/sdk/shapes:define-structure list-related-items-output common-lisp:nil
                                    ((related-items :target-type
                                      related-item-list :required common-lisp:t
                                      :member-name "relatedItems")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListRelatedItemsOutput"))

(smithy/sdk/shapes:define-structure list-replication-sets-input common-lisp:nil
                                    ((max-results :target-type max-results
                                      :member-name "maxResults")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListReplicationSetsInput"))

(smithy/sdk/shapes:define-structure list-replication-sets-output
                                    common-lisp:nil
                                    ((replication-set-arns :target-type
                                      replication-set-arn-list :required
                                      common-lisp:t :member-name
                                      "replicationSetArns")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListReplicationSetsOutput"))

(smithy/sdk/shapes:define-structure list-response-plans-input common-lisp:nil
                                    ((max-results :target-type max-results
                                      :member-name "maxResults")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListResponsePlansInput"))

(smithy/sdk/shapes:define-structure list-response-plans-output common-lisp:nil
                                    ((response-plan-summaries :target-type
                                      response-plan-summary-list :required
                                      common-lisp:t :member-name
                                      "responsePlanSummaries")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListResponsePlansOutput"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-request
                                    common-lisp:nil
                                    ((resource-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "resourceArn"))
                                    (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((tags :target-type tag-map :required
                                      common-lisp:t :member-name "tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-structure list-timeline-events-input common-lisp:nil
                                    ((incident-record-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "incidentRecordArn")
                                     (filters :target-type filter-list
                                      :member-name "filters")
                                     (sort-by :target-type timeline-event-sort
                                      :member-name "sortBy")
                                     (sort-order :target-type sort-order
                                      :member-name "sortOrder")
                                     (max-results :target-type max-results
                                      :member-name "maxResults")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListTimelineEventsInput"))

(smithy/sdk/shapes:define-structure list-timeline-events-output common-lisp:nil
                                    ((event-summaries :target-type
                                      event-summary-list :required
                                      common-lisp:t :member-name
                                      "eventSummaries")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListTimelineEventsOutput"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type metric-definition smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union notification-target-item common-lisp:nil
                                ((sns-topic-arn :target-type arn :member-name
                                  "snsTopicArn"))
                                (:shape-name "NotificationTargetItem"))

(smithy/sdk/shapes:define-list notification-target-set :member
                               notification-target-item)

(smithy/sdk/shapes:define-structure pager-duty-configuration common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (secret-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "secretId")
                                     (pager-duty-incident-configuration
                                      :target-type
                                      pager-duty-incident-configuration
                                      :required common-lisp:t :member-name
                                      "pagerDutyIncidentConfiguration"))
                                    (:shape-name "PagerDutyConfiguration"))

(smithy/sdk/shapes:define-structure pager-duty-incident-configuration
                                    common-lisp:nil
                                    ((service-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "serviceId"))
                                    (:shape-name
                                     "PagerDutyIncidentConfiguration"))

(smithy/sdk/shapes:define-structure pager-duty-incident-detail common-lisp:nil
                                    ((id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "id")
                                     (auto-resolve :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "autoResolve")
                                     (secret-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "secretId"))
                                    (:shape-name "PagerDutyIncidentDetail"))

(smithy/sdk/shapes:define-type policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type policy-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure put-resource-policy-input common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name "resourceArn")
                                     (policy :target-type policy :required
                                      common-lisp:t :member-name "policy"))
                                    (:shape-name "PutResourcePolicyInput"))

(smithy/sdk/shapes:define-structure put-resource-policy-output common-lisp:nil
                                    ((policy-id :target-type policy-id
                                      :required common-lisp:t :member-name
                                      "policyId"))
                                    (:shape-name "PutResourcePolicyOutput"))

(smithy/sdk/shapes:define-type raw-data smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure region-info common-lisp:nil
                                    ((sse-kms-key-id :target-type sse-kms-key
                                      :member-name "sseKmsKeyId")
                                     (status :target-type region-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (status-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusMessage")
                                     (status-update-date-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "statusUpdateDateTime"))
                                    (:shape-name "RegionInfo"))

(smithy/sdk/shapes:define-map region-info-map :key region-name :value
                              region-info)

(smithy/sdk/shapes:define-map region-map-input :key region-name :value
                              region-map-input-value)

(smithy/sdk/shapes:define-structure region-map-input-value common-lisp:nil
                                    ((sse-kms-key-id :target-type sse-kms-key
                                      :member-name "sseKmsKeyId"))
                                    (:shape-name "RegionMapInputValue"))

(smithy/sdk/shapes:define-type region-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type region-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure related-item common-lisp:nil
                                    ((identifier :target-type item-identifier
                                      :required common-lisp:t :member-name
                                      "identifier")
                                     (title :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "title")
                                     (generated-id :target-type generated-id
                                      :member-name "generatedId"))
                                    (:shape-name "RelatedItem"))

(smithy/sdk/shapes:define-list related-item-list :member related-item)

(smithy/sdk/shapes:define-union related-items-update common-lisp:nil
                                ((item-to-add :target-type related-item
                                  :member-name "itemToAdd")
                                 (item-to-remove :target-type item-identifier
                                  :member-name "itemToRemove"))
                                (:shape-name "RelatedItemsUpdate"))

(smithy/sdk/shapes:define-structure replication-set common-lisp:nil
                                    ((arn :target-type arn :member-name "arn")
                                     (region-map :target-type region-info-map
                                      :required common-lisp:t :member-name
                                      "regionMap")
                                     (status :target-type
                                      replication-set-status :required
                                      common-lisp:t :member-name "status")
                                     (deletion-protected :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name
                                      "deletionProtected")
                                     (created-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdTime")
                                     (created-by :target-type arn :required
                                      common-lisp:t :member-name "createdBy")
                                     (last-modified-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModifiedTime")
                                     (last-modified-by :target-type arn
                                      :required common-lisp:t :member-name
                                      "lastModifiedBy"))
                                    (:shape-name "ReplicationSet"))

(smithy/sdk/shapes:define-list replication-set-arn-list :member arn)

(smithy/sdk/shapes:define-type replication-set-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message")
                                 (resource-identifier :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceIdentifier")
                                 (resource-type :target-type resource-type
                                  :member-name "resourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure resource-policy common-lisp:nil
                                    ((policy-document :target-type policy
                                      :required common-lisp:t :member-name
                                      "policyDocument")
                                     (policy-id :target-type policy-id
                                      :required common-lisp:t :member-name
                                      "policyId")
                                     (ram-resource-share-region :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "ramResourceShareRegion"))
                                    (:shape-name "ResourcePolicy"))

(smithy/sdk/shapes:define-list resource-policy-list :member resource-policy)

(smithy/sdk/shapes:define-type resource-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type response-plan-display-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type response-plan-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure response-plan-summary common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type response-plan-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (display-name :target-type
                                      response-plan-display-name :member-name
                                      "displayName"))
                                    (:shape-name "ResponsePlanSummary"))

(smithy/sdk/shapes:define-list response-plan-summary-list :member
                               response-plan-summary)

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-principal smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message")
                                 (resource-identifier :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceIdentifier")
                                 (resource-type :target-type resource-type
                                  :member-name "resourceType")
                                 (service-code :target-type service-code
                                  :required common-lisp:t :member-name
                                  "serviceCode")
                                 (quota-code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "quotaCode"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type sns-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sort-order smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sse-kms-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ssm-automation common-lisp:nil
                                    ((role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (document-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "documentName")
                                     (document-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "documentVersion")
                                     (target-account :target-type
                                      ssm-target-account :member-name
                                      "targetAccount")
                                     (parameters :target-type ssm-parameters
                                      :member-name "parameters")
                                     (dynamic-parameters :target-type
                                      dynamic-ssm-parameters :member-name
                                      "dynamicParameters"))
                                    (:shape-name "SsmAutomation"))

(smithy/sdk/shapes:define-type ssm-contacts-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ssm-parameter-values :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map ssm-parameters :key
                              smithy/sdk/smithy-types:string :value
                              ssm-parameter-values)

(smithy/sdk/shapes:define-type ssm-target-account
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure start-incident-input common-lisp:nil
                                    ((client-token :target-type client-token
                                      :member-name "clientToken")
                                     (response-plan-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "responsePlanArn")
                                     (title :target-type incident-title
                                      :member-name "title")
                                     (impact :target-type impact :member-name
                                      "impact")
                                     (trigger-details :target-type
                                      trigger-details :member-name
                                      "triggerDetails")
                                     (related-items :target-type
                                      related-item-list :member-name
                                      "relatedItems"))
                                    (:shape-name "StartIncidentInput"))

(smithy/sdk/shapes:define-structure start-incident-output common-lisp:nil
                                    ((incident-record-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "incidentRecordArn"))
                                    (:shape-name "StartIncidentOutput"))

(smithy/sdk/shapes:define-list string-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-map tag-map-update :key tag-key :value tag-value)

(smithy/sdk/shapes:define-structure tag-resource-request common-lisp:nil
                                    ((resource-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "resourceArn")
                                     (tags :target-type tag-map :required
                                      common-lisp:t :member-name "tags"))
                                    (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-structure tag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message")
                                 (service-code :target-type service-code
                                  :required common-lisp:t :member-name
                                  "serviceCode")
                                 (quota-code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "quotaCode"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure timeline-event common-lisp:nil
                                    ((incident-record-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "incidentRecordArn")
                                     (event-id :target-type uuid :required
                                      common-lisp:t :member-name "eventId")
                                     (event-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "eventTime")
                                     (event-updated-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "eventUpdatedTime")
                                     (event-type :target-type
                                      timeline-event-type :required
                                      common-lisp:t :member-name "eventType")
                                     (event-data :target-type event-data
                                      :required common-lisp:t :member-name
                                      "eventData")
                                     (event-references :target-type
                                      event-reference-list :member-name
                                      "eventReferences"))
                                    (:shape-name "TimelineEvent"))

(smithy/sdk/shapes:define-type timeline-event-sort
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timeline-event-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure trigger-details common-lisp:nil
                                    ((source :target-type incident-source
                                      :required common-lisp:t :member-name
                                      "source")
                                     (trigger-arn :target-type arn :member-name
                                      "triggerArn")
                                     (timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "timestamp")
                                     (raw-data :target-type raw-data
                                      :member-name "rawData"))
                                    (:shape-name "TriggerDetails"))

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure untag-resource-request common-lisp:nil
                                    ((resource-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "resourceArn")
                                     (tag-keys :target-type tag-key-list
                                      :required common-lisp:t :member-name
                                      "tagKeys" :http-query "tagKeys"))
                                    (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-structure untag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-list update-action-list :member
                               update-replication-set-action)

(smithy/sdk/shapes:define-structure update-deletion-protection-input
                                    common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (deletion-protected :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name
                                      "deletionProtected")
                                     (client-token :target-type client-token
                                      :member-name "clientToken"))
                                    (:shape-name
                                     "UpdateDeletionProtectionInput"))

(smithy/sdk/shapes:define-structure update-deletion-protection-output
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "UpdateDeletionProtectionOutput"))

(smithy/sdk/shapes:define-structure update-incident-record-input
                                    common-lisp:nil
                                    ((client-token :target-type client-token
                                      :member-name "clientToken")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (title :target-type incident-title
                                      :member-name "title")
                                     (summary :target-type incident-summary
                                      :member-name "summary")
                                     (impact :target-type impact :member-name
                                      "impact")
                                     (status :target-type
                                      incident-record-status :member-name
                                      "status")
                                     (chat-channel :target-type chat-channel
                                      :member-name "chatChannel")
                                     (notification-targets :target-type
                                      notification-target-set :member-name
                                      "notificationTargets"))
                                    (:shape-name "UpdateIncidentRecordInput"))

(smithy/sdk/shapes:define-structure update-incident-record-output
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "UpdateIncidentRecordOutput"))

(smithy/sdk/shapes:define-structure update-related-items-input common-lisp:nil
                                    ((client-token :target-type client-token
                                      :member-name "clientToken")
                                     (incident-record-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "incidentRecordArn")
                                     (related-items-update :target-type
                                      related-items-update :required
                                      common-lisp:t :member-name
                                      "relatedItemsUpdate"))
                                    (:shape-name "UpdateRelatedItemsInput"))

(smithy/sdk/shapes:define-structure update-related-items-output common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UpdateRelatedItemsOutput"))

(smithy/sdk/shapes:define-union update-replication-set-action common-lisp:nil
                                ((add-region-action :target-type
                                  add-region-action :member-name
                                  "addRegionAction")
                                 (delete-region-action :target-type
                                  delete-region-action :member-name
                                  "deleteRegionAction"))
                                (:shape-name "UpdateReplicationSetAction"))

(smithy/sdk/shapes:define-structure update-replication-set-input
                                    common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (actions :target-type update-action-list
                                      :required common-lisp:t :member-name
                                      "actions")
                                     (client-token :target-type client-token
                                      :member-name "clientToken"))
                                    (:shape-name "UpdateReplicationSetInput"))

(smithy/sdk/shapes:define-structure update-replication-set-output
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "UpdateReplicationSetOutput"))

(smithy/sdk/shapes:define-structure update-response-plan-input common-lisp:nil
                                    ((client-token :target-type client-token
                                      :member-name "clientToken")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (display-name :target-type
                                      response-plan-display-name :member-name
                                      "displayName")
                                     (incident-template-title :target-type
                                      incident-title :member-name
                                      "incidentTemplateTitle")
                                     (incident-template-impact :target-type
                                      impact :member-name
                                      "incidentTemplateImpact")
                                     (incident-template-summary :target-type
                                      incident-summary :member-name
                                      "incidentTemplateSummary")
                                     (incident-template-dedupe-string
                                      :target-type dedupe-string :member-name
                                      "incidentTemplateDedupeString")
                                     (incident-template-notification-targets
                                      :target-type notification-target-set
                                      :member-name
                                      "incidentTemplateNotificationTargets")
                                     (chat-channel :target-type chat-channel
                                      :member-name "chatChannel")
                                     (engagements :target-type engagement-set
                                      :member-name "engagements")
                                     (actions :target-type actions-list
                                      :member-name "actions")
                                     (incident-template-tags :target-type
                                      tag-map-update :member-name
                                      "incidentTemplateTags")
                                     (integrations :target-type integrations
                                      :member-name "integrations"))
                                    (:shape-name "UpdateResponsePlanInput"))

(smithy/sdk/shapes:define-structure update-response-plan-output common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UpdateResponsePlanOutput"))

(smithy/sdk/shapes:define-structure update-timeline-event-input common-lisp:nil
                                    ((client-token :target-type client-token
                                      :member-name "clientToken")
                                     (incident-record-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "incidentRecordArn")
                                     (event-id :target-type uuid :required
                                      common-lisp:t :member-name "eventId")
                                     (event-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "eventTime")
                                     (event-type :target-type
                                      timeline-event-type :member-name
                                      "eventType")
                                     (event-data :target-type event-data
                                      :member-name "eventData")
                                     (event-references :target-type
                                      event-reference-list :member-name
                                      "eventReferences"))
                                    (:shape-name "UpdateTimelineEventInput"))

(smithy/sdk/shapes:define-structure update-timeline-event-output
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "UpdateTimelineEventOutput"))

(smithy/sdk/shapes:define-type url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type variable-type smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation batch-get-incident-findings :shape-name
                                       "BatchGetIncidentFindings" :input
                                       batch-get-incident-findings-input
                                       :output
                                       batch-get-incident-findings-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/batchGetIncidentFindings" :code 200)

(smithy/sdk/operation:define-operation create-replication-set :shape-name
                                       "CreateReplicationSet" :input
                                       create-replication-set-input :output
                                       create-replication-set-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/createReplicationSet" :code 201)

(smithy/sdk/operation:define-operation create-response-plan :shape-name
                                       "CreateResponsePlan" :input
                                       create-response-plan-input :output
                                       create-response-plan-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/createResponsePlan" :code 201)

(smithy/sdk/operation:define-operation create-timeline-event :shape-name
                                       "CreateTimelineEvent" :input
                                       create-timeline-event-input :output
                                       create-timeline-event-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/createTimelineEvent" :code 201)

(smithy/sdk/operation:define-operation delete-incident-record :shape-name
                                       "DeleteIncidentRecord" :input
                                       delete-incident-record-input :output
                                       delete-incident-record-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/deleteIncidentRecord" :code 204)

(smithy/sdk/operation:define-operation delete-replication-set :shape-name
                                       "DeleteReplicationSet" :input
                                       delete-replication-set-input :output
                                       delete-replication-set-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/deleteReplicationSet" :code 204)

(smithy/sdk/operation:define-operation delete-resource-policy :shape-name
                                       "DeleteResourcePolicy" :input
                                       delete-resource-policy-input :output
                                       delete-resource-policy-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/deleteResourcePolicy" :code 200)

(smithy/sdk/operation:define-operation delete-response-plan :shape-name
                                       "DeleteResponsePlan" :input
                                       delete-response-plan-input :output
                                       delete-response-plan-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/deleteResponsePlan" :code 204)

(smithy/sdk/operation:define-operation delete-timeline-event :shape-name
                                       "DeleteTimelineEvent" :input
                                       delete-timeline-event-input :output
                                       delete-timeline-event-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/deleteTimelineEvent" :code 204)

(smithy/sdk/operation:define-operation get-incident-record :shape-name
                                       "GetIncidentRecord" :input
                                       get-incident-record-input :output
                                       get-incident-record-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/getIncidentRecord"
                                       :code 200)

(smithy/sdk/operation:define-operation get-replication-set :shape-name
                                       "GetReplicationSet" :input
                                       get-replication-set-input :output
                                       get-replication-set-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/getReplicationSet"
                                       :code 200)

(smithy/sdk/operation:define-operation get-resource-policies :shape-name
                                       "GetResourcePolicies" :input
                                       get-resource-policies-input :output
                                       get-resource-policies-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/getResourcePolicies" :code 200)

(smithy/sdk/operation:define-operation get-response-plan :shape-name
                                       "GetResponsePlan" :input
                                       get-response-plan-input :output
                                       get-response-plan-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/getResponsePlan"
                                       :code 200)

(smithy/sdk/operation:define-operation get-timeline-event :shape-name
                                       "GetTimelineEvent" :input
                                       get-timeline-event-input :output
                                       get-timeline-event-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/getTimelineEvent"
                                       :code 200)

(smithy/sdk/operation:define-operation list-incident-findings :shape-name
                                       "ListIncidentFindings" :input
                                       list-incident-findings-input :output
                                       list-incident-findings-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/listIncidentFindings" :code 200)

(smithy/sdk/operation:define-operation list-incident-records :shape-name
                                       "ListIncidentRecords" :input
                                       list-incident-records-input :output
                                       list-incident-records-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/listIncidentRecords" :code 200)

(smithy/sdk/operation:define-operation list-related-items :shape-name
                                       "ListRelatedItems" :input
                                       list-related-items-input :output
                                       list-related-items-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/listRelatedItems"
                                       :code 200)

(smithy/sdk/operation:define-operation list-replication-sets :shape-name
                                       "ListReplicationSets" :input
                                       list-replication-sets-input :output
                                       list-replication-sets-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/listReplicationSets" :code 200)

(smithy/sdk/operation:define-operation list-response-plans :shape-name
                                       "ListResponsePlans" :input
                                       list-response-plans-input :output
                                       list-response-plans-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/listResponsePlans"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-timeline-events :shape-name
                                       "ListTimelineEvents" :input
                                       list-timeline-events-input :output
                                       list-timeline-events-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/listTimelineEvents" :code 200)

(smithy/sdk/operation:define-operation put-resource-policy :shape-name
                                       "PutResourcePolicy" :input
                                       put-resource-policy-input :output
                                       put-resource-policy-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/putResourcePolicy"
                                       :code 200)

(smithy/sdk/operation:define-operation start-incident :shape-name
                                       "StartIncident" :input
                                       start-incident-input :output
                                       start-incident-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/startIncident"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}" :code 204)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}" :code 204)

(smithy/sdk/operation:define-operation update-deletion-protection :shape-name
                                       "UpdateDeletionProtection" :input
                                       update-deletion-protection-input :output
                                       update-deletion-protection-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/updateDeletionProtection" :code 204)

(smithy/sdk/operation:define-operation update-incident-record :shape-name
                                       "UpdateIncidentRecord" :input
                                       update-incident-record-input :output
                                       update-incident-record-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/updateIncidentRecord" :code 204)

(smithy/sdk/operation:define-operation update-related-items :shape-name
                                       "UpdateRelatedItems" :input
                                       update-related-items-input :output
                                       update-related-items-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/updateRelatedItems" :code 204)

(smithy/sdk/operation:define-operation update-replication-set :shape-name
                                       "UpdateReplicationSet" :input
                                       update-replication-set-input :output
                                       update-replication-set-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/updateReplicationSet" :code 204)

(smithy/sdk/operation:define-operation update-response-plan :shape-name
                                       "UpdateResponsePlan" :input
                                       update-response-plan-input :output
                                       update-response-plan-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/updateResponsePlan" :code 204)

(smithy/sdk/operation:define-operation update-timeline-event :shape-name
                                       "UpdateTimelineEvent" :input
                                       update-timeline-event-input :output
                                       update-timeline-event-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/updateTimelineEvent" :code 204)
