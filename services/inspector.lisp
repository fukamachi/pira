(uiop/package:define-package #:pira/inspector (:use)
                             (:export #:access-denied-error-code
                              #:access-denied-exception
                              #:add-attributes-to-findings
                              #:add-remove-attributes-finding-arn-list
                              #:agent-already-running-assessment
                              #:agent-already-running-assessment-list
                              #:agent-filter #:agent-health #:agent-health-code
                              #:agent-health-code-list #:agent-health-list
                              #:agent-id #:agent-id-list #:agent-preview
                              #:agent-preview-list #:agent-version
                              #:agents-already-running-assessment-exception
                              #:ami-id #:arn #:arn-count
                              #:assessment-rules-package-arn-list
                              #:assessment-run #:assessment-run-agent
                              #:assessment-run-agent-list
                              #:assessment-run-duration #:assessment-run-filter
                              #:assessment-run-finding-counts
                              #:assessment-run-in-progress-arn-list
                              #:assessment-run-in-progress-exception
                              #:assessment-run-list #:assessment-run-name
                              #:assessment-run-notification
                              #:assessment-run-notification-list
                              #:assessment-run-notification-sns-status-code
                              #:assessment-run-state
                              #:assessment-run-state-change
                              #:assessment-run-state-change-list
                              #:assessment-run-state-list #:assessment-target
                              #:assessment-target-filter
                              #:assessment-target-list #:assessment-target-name
                              #:assessment-template
                              #:assessment-template-filter
                              #:assessment-template-list
                              #:assessment-template-name
                              #:assessment-template-rules-package-arn-list
                              #:asset-attributes #:asset-type #:attribute
                              #:attribute-key #:attribute-list
                              #:attribute-value #:auto-scaling-group
                              #:auto-scaling-group-list
                              #:batch-describe-arn-list
                              #:batch-describe-exclusions-arn-list #:bool
                              #:create-assessment-target
                              #:create-assessment-template
                              #:create-exclusions-preview
                              #:create-resource-group #:delete-assessment-run
                              #:delete-assessment-target
                              #:delete-assessment-template
                              #:describe-assessment-runs
                              #:describe-assessment-targets
                              #:describe-assessment-templates
                              #:describe-cross-account-access-role
                              #:describe-exclusions #:describe-findings
                              #:describe-resource-groups
                              #:describe-rules-packages #:duration-range
                              #:error-message #:event-subscription
                              #:event-subscription-list #:exclusion
                              #:exclusion-map #:exclusion-preview
                              #:exclusion-preview-list #:failed-item-details
                              #:failed-item-error-code #:failed-items
                              #:filter-rules-package-arn-list #:finding
                              #:finding-count #:finding-filter #:finding-id
                              #:finding-list #:get-assessment-report
                              #:get-exclusions-preview #:get-telemetry-metadata
                              #:hostname #:inspector-event #:inspector-service
                              #:inspector-service-attributes
                              #:internal-exception
                              #:invalid-cross-account-role-error-code
                              #:invalid-cross-account-role-exception
                              #:invalid-input-error-code
                              #:invalid-input-exception #:ioc-confidence
                              #:ipv4address #:ipv4address-list #:ipv6addresses
                              #:kernel-version #:limit-exceeded-error-code
                              #:limit-exceeded-exception
                              #:list-assessment-run-agents
                              #:list-assessment-runs #:list-assessment-targets
                              #:list-assessment-templates
                              #:list-event-subscriptions
                              #:list-event-subscriptions-max-results
                              #:list-exclusions #:list-findings
                              #:list-max-results #:list-parent-arn-list
                              #:list-returned-arn-list #:list-rules-packages
                              #:list-tags-for-resource #:locale #:long
                              #:message #:message-type #:name-pattern
                              #:network-interface #:network-interfaces
                              #:no-such-entity-error-code
                              #:no-such-entity-exception #:numeric-severity
                              #:numeric-version #:operating-system
                              #:pagination-token #:preview-agents
                              #:preview-agents-max-results
                              #:preview-generation-in-progress-exception
                              #:preview-status #:private-ip
                              #:private-ip-addresses #:provider-name
                              #:register-cross-account-access-role
                              #:remove-attributes-from-findings
                              #:report-file-format #:report-status
                              #:report-type #:resource-group
                              #:resource-group-list #:resource-group-tag
                              #:resource-group-tags #:rule-name
                              #:rule-name-list #:rules-package
                              #:rules-package-list #:rules-package-name #:scope
                              #:scope-list #:scope-type #:scope-value
                              #:security-group #:security-groups #:service-name
                              #:service-temporarily-unavailable-exception
                              #:set-tags-for-resource #:severity
                              #:severity-list #:start-assessment-run
                              #:stop-action #:stop-assessment-run
                              #:subscribe-to-event #:subscription
                              #:subscription-list #:tag #:tag-key #:tag-list
                              #:tag-value #:tags #:telemetry-metadata
                              #:telemetry-metadata-list #:text #:timestamp
                              #:timestamp-range #:uuid #:unsubscribe-from-event
                              #:unsupported-feature-exception
                              #:update-assessment-target #:url
                              #:user-attribute-key-list #:user-attribute-list
                              #:version #:inspector-error))
(common-lisp:in-package #:pira/inspector)

(common-lisp:define-condition inspector-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service inspector-service :shape-name
                                   "InspectorService" :version "2016-02-16"
                                   :title "Amazon Inspector" :operations
                                   '(add-attributes-to-findings
                                     create-assessment-target
                                     create-assessment-template
                                     create-exclusions-preview
                                     create-resource-group
                                     delete-assessment-run
                                     delete-assessment-target
                                     delete-assessment-template
                                     describe-assessment-runs
                                     describe-assessment-targets
                                     describe-assessment-templates
                                     describe-cross-account-access-role
                                     describe-exclusions describe-findings
                                     describe-resource-groups
                                     describe-rules-packages
                                     get-assessment-report
                                     get-exclusions-preview
                                     get-telemetry-metadata
                                     list-assessment-run-agents
                                     list-assessment-runs
                                     list-assessment-targets
                                     list-assessment-templates
                                     list-event-subscriptions list-exclusions
                                     list-findings list-rules-packages
                                     list-tags-for-resource preview-agents
                                     register-cross-account-access-role
                                     remove-attributes-from-findings
                                     set-tags-for-resource start-assessment-run
                                     stop-assessment-run subscribe-to-event
                                     unsubscribe-from-event
                                     update-assessment-target)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "Inspector")
                                      ("arnNamespace" . "inspector")
                                      ("cloudFormationName" . "Inspector")
                                      ("cloudTrailEventSource"
                                       . "inspector.amazonaws.com")
                                      ("endpointPrefix" . "inspector"))
                                     ("aws.auth#sigv4" ("name" . "inspector"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-enum access-denied-error-code
    common-lisp:nil
  (:access-denied-to-assessment-target "ACCESS_DENIED_TO_ASSESSMENT_TARGET")
  (:access-denied-to-assessment-template "ACCESS_DENIED_TO_ASSESSMENT_TEMPLATE")
  (:access-denied-to-assessment-run "ACCESS_DENIED_TO_ASSESSMENT_RUN")
  (:access-denied-to-finding "ACCESS_DENIED_TO_FINDING")
  (:access-denied-to-resource-group "ACCESS_DENIED_TO_RESOURCE_GROUP")
  (:access-denied-to-rules-package "ACCESS_DENIED_TO_RULES_PACKAGE")
  (:access-denied-to-sns-topic "ACCESS_DENIED_TO_SNS_TOPIC")
  (:access-denied-to-iam-role "ACCESS_DENIED_TO_IAM_ROLE"))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (error-code :target-type
                                  access-denied-error-code :required
                                  common-lisp:t :member-name "errorCode")
                                 (can-retry :target-type bool :required
                                  common-lisp:t :member-name "canRetry"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403) (:base-class inspector-error))

(smithy/sdk/shapes:define-input add-attributes-to-findings-request
                                common-lisp:nil
                                ((finding-arns :target-type
                                  add-remove-attributes-finding-arn-list
                                  :required common-lisp:t :member-name
                                  "findingArns")
                                 (attributes :target-type user-attribute-list
                                  :required common-lisp:t :member-name
                                  "attributes"))
                                (:shape-name "AddAttributesToFindingsRequest"))

(smithy/sdk/shapes:define-output add-attributes-to-findings-response
                                 common-lisp:nil
                                 ((failed-items :target-type failed-items
                                   :required common-lisp:t :member-name
                                   "failedItems"))
                                 (:shape-name
                                  "AddAttributesToFindingsResponse"))

(smithy/sdk/shapes:define-list add-remove-attributes-finding-arn-list :member
                               arn)

(smithy/sdk/shapes:define-structure agent-already-running-assessment
                                    common-lisp:nil
                                    ((agent-id :target-type agent-id :required
                                      common-lisp:t :member-name "agentId")
                                     (assessment-run-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "assessmentRunArn"))
                                    (:shape-name
                                     "AgentAlreadyRunningAssessment"))

(smithy/sdk/shapes:define-list agent-already-running-assessment-list :member
                               agent-already-running-assessment)

(smithy/sdk/shapes:define-structure agent-filter common-lisp:nil
                                    ((agent-healths :target-type
                                      agent-health-list :required common-lisp:t
                                      :member-name "agentHealths")
                                     (agent-health-codes :target-type
                                      agent-health-code-list :required
                                      common-lisp:t :member-name
                                      "agentHealthCodes"))
                                    (:shape-name "AgentFilter"))

(smithy/sdk/shapes:define-enum agent-health
    common-lisp:nil
  (:healthy "HEALTHY")
  (:unhealthy "UNHEALTHY")
  (:unknown "UNKNOWN"))

(smithy/sdk/shapes:define-enum agent-health-code
    common-lisp:nil
  (:idle "IDLE")
  (:running "RUNNING")
  (:shutdown "SHUTDOWN")
  (:unhealthy "UNHEALTHY")
  (:throttled "THROTTLED")
  (:unknown "UNKNOWN"))

(smithy/sdk/shapes:define-list agent-health-code-list :member agent-health-code)

(smithy/sdk/shapes:define-list agent-health-list :member agent-health)

(smithy/sdk/shapes:define-type agent-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list agent-id-list :member agent-id)

(smithy/sdk/shapes:define-structure agent-preview common-lisp:nil
                                    ((hostname :target-type hostname
                                      :member-name "hostname")
                                     (agent-id :target-type agent-id :required
                                      common-lisp:t :member-name "agentId")
                                     (auto-scaling-group :target-type
                                      auto-scaling-group :member-name
                                      "autoScalingGroup")
                                     (agent-health :target-type agent-health
                                      :member-name "agentHealth")
                                     (agent-version :target-type agent-version
                                      :member-name "agentVersion")
                                     (operating-system :target-type
                                      operating-system :member-name
                                      "operatingSystem")
                                     (kernel-version :target-type
                                      kernel-version :member-name
                                      "kernelVersion")
                                     (ipv4address :target-type ipv4address
                                      :member-name "ipv4Address"))
                                    (:shape-name "AgentPreview"))

(smithy/sdk/shapes:define-list agent-preview-list :member agent-preview)

(smithy/sdk/shapes:define-type agent-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error agents-already-running-assessment-exception
                                common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (agents :target-type
                                  agent-already-running-assessment-list
                                  :required common-lisp:t :member-name
                                  "agents")
                                 (agents-truncated :target-type bool :required
                                  common-lisp:t :member-name "agentsTruncated")
                                 (can-retry :target-type bool :required
                                  common-lisp:t :member-name "canRetry"))
                                (:shape-name
                                 "AgentsAlreadyRunningAssessmentException")
                                (:error-code 400) (:base-class inspector-error))

(smithy/sdk/shapes:define-type ami-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type arn-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list assessment-rules-package-arn-list :member arn)

(smithy/sdk/shapes:define-structure assessment-run common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type assessment-run-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (assessment-template-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "assessmentTemplateArn")
                                     (state :target-type assessment-run-state
                                      :required common-lisp:t :member-name
                                      "state")
                                     (duration-in-seconds :target-type
                                      assessment-run-duration :required
                                      common-lisp:t :member-name
                                      "durationInSeconds")
                                     (rules-package-arns :target-type
                                      assessment-rules-package-arn-list
                                      :required common-lisp:t :member-name
                                      "rulesPackageArns")
                                     (user-attributes-for-findings :target-type
                                      user-attribute-list :required
                                      common-lisp:t :member-name
                                      "userAttributesForFindings")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (started-at :target-type timestamp
                                      :member-name "startedAt")
                                     (completed-at :target-type timestamp
                                      :member-name "completedAt")
                                     (state-changed-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "stateChangedAt")
                                     (data-collected :target-type bool
                                      :required common-lisp:t :member-name
                                      "dataCollected")
                                     (state-changes :target-type
                                      assessment-run-state-change-list
                                      :required common-lisp:t :member-name
                                      "stateChanges")
                                     (notifications :target-type
                                      assessment-run-notification-list
                                      :required common-lisp:t :member-name
                                      "notifications")
                                     (finding-counts :target-type
                                      assessment-run-finding-counts :required
                                      common-lisp:t :member-name
                                      "findingCounts"))
                                    (:shape-name "AssessmentRun"))

(smithy/sdk/shapes:define-structure assessment-run-agent common-lisp:nil
                                    ((agent-id :target-type agent-id :required
                                      common-lisp:t :member-name "agentId")
                                     (assessment-run-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "assessmentRunArn")
                                     (agent-health :target-type agent-health
                                      :required common-lisp:t :member-name
                                      "agentHealth")
                                     (agent-health-code :target-type
                                      agent-health-code :required common-lisp:t
                                      :member-name "agentHealthCode")
                                     (agent-health-details :target-type message
                                      :member-name "agentHealthDetails")
                                     (auto-scaling-group :target-type
                                      auto-scaling-group :member-name
                                      "autoScalingGroup")
                                     (telemetry-metadata :target-type
                                      telemetry-metadata-list :required
                                      common-lisp:t :member-name
                                      "telemetryMetadata"))
                                    (:shape-name "AssessmentRunAgent"))

(smithy/sdk/shapes:define-list assessment-run-agent-list :member
                               assessment-run-agent)

(smithy/sdk/shapes:define-type assessment-run-duration
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure assessment-run-filter common-lisp:nil
                                    ((name-pattern :target-type name-pattern
                                      :member-name "namePattern")
                                     (states :target-type
                                      assessment-run-state-list :member-name
                                      "states")
                                     (duration-range :target-type
                                      duration-range :member-name
                                      "durationRange")
                                     (rules-package-arns :target-type
                                      filter-rules-package-arn-list
                                      :member-name "rulesPackageArns")
                                     (start-time-range :target-type
                                      timestamp-range :member-name
                                      "startTimeRange")
                                     (completion-time-range :target-type
                                      timestamp-range :member-name
                                      "completionTimeRange")
                                     (state-change-time-range :target-type
                                      timestamp-range :member-name
                                      "stateChangeTimeRange"))
                                    (:shape-name "AssessmentRunFilter"))

(smithy/sdk/shapes:define-map assessment-run-finding-counts :key severity
                              :value finding-count)

(smithy/sdk/shapes:define-list assessment-run-in-progress-arn-list :member arn)

(smithy/sdk/shapes:define-error assessment-run-in-progress-exception
                                common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (assessment-run-arns :target-type
                                  assessment-run-in-progress-arn-list :required
                                  common-lisp:t :member-name
                                  "assessmentRunArns")
                                 (assessment-run-arns-truncated :target-type
                                  bool :required common-lisp:t :member-name
                                  "assessmentRunArnsTruncated")
                                 (can-retry :target-type bool :required
                                  common-lisp:t :member-name "canRetry"))
                                (:shape-name
                                 "AssessmentRunInProgressException")
                                (:error-code 400) (:base-class inspector-error))

(smithy/sdk/shapes:define-list assessment-run-list :member assessment-run)

(smithy/sdk/shapes:define-type assessment-run-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure assessment-run-notification common-lisp:nil
                                    ((date :target-type timestamp :required
                                      common-lisp:t :member-name "date")
                                     (event :target-type inspector-event
                                      :required common-lisp:t :member-name
                                      "event")
                                     (message :target-type message :member-name
                                      "message")
                                     (error :target-type bool :required
                                      common-lisp:t :member-name "error")
                                     (sns-topic-arn :target-type arn
                                      :member-name "snsTopicArn")
                                     (sns-publish-status-code :target-type
                                      assessment-run-notification-sns-status-code
                                      :member-name "snsPublishStatusCode"))
                                    (:shape-name "AssessmentRunNotification"))

(smithy/sdk/shapes:define-list assessment-run-notification-list :member
                               assessment-run-notification)

(smithy/sdk/shapes:define-enum assessment-run-notification-sns-status-code
    common-lisp:nil
  (:success "SUCCESS")
  (:topic-does-not-exist "TOPIC_DOES_NOT_EXIST")
  (:access-denied "ACCESS_DENIED")
  (:internal-error "INTERNAL_ERROR"))

(smithy/sdk/shapes:define-enum assessment-run-state
    common-lisp:nil
  (:created "CREATED")
  (:start-data-collection-pending "START_DATA_COLLECTION_PENDING")
  (:start-data-collection-in-progress "START_DATA_COLLECTION_IN_PROGRESS")
  (:collecting-data "COLLECTING_DATA")
  (:stop-data-collection-pending "STOP_DATA_COLLECTION_PENDING")
  (:data-collected "DATA_COLLECTED")
  (:start-evaluating-rules-pending "START_EVALUATING_RULES_PENDING")
  (:evaluating-rules "EVALUATING_RULES")
  (:failed "FAILED")
  (:error "ERROR")
  (:completed "COMPLETED")
  (:completed-with-errors "COMPLETED_WITH_ERRORS")
  (:canceled "CANCELED"))

(smithy/sdk/shapes:define-structure assessment-run-state-change common-lisp:nil
                                    ((state-changed-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "stateChangedAt")
                                     (state :target-type assessment-run-state
                                      :required common-lisp:t :member-name
                                      "state"))
                                    (:shape-name "AssessmentRunStateChange"))

(smithy/sdk/shapes:define-list assessment-run-state-change-list :member
                               assessment-run-state-change)

(smithy/sdk/shapes:define-list assessment-run-state-list :member
                               assessment-run-state)

(smithy/sdk/shapes:define-structure assessment-target common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type assessment-target-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (resource-group-arn :target-type arn
                                      :member-name "resourceGroupArn")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (updated-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt"))
                                    (:shape-name "AssessmentTarget"))

(smithy/sdk/shapes:define-structure assessment-target-filter common-lisp:nil
                                    ((assessment-target-name-pattern
                                      :target-type name-pattern :member-name
                                      "assessmentTargetNamePattern"))
                                    (:shape-name "AssessmentTargetFilter"))

(smithy/sdk/shapes:define-list assessment-target-list :member assessment-target)

(smithy/sdk/shapes:define-type assessment-target-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure assessment-template common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type
                                      assessment-template-name :required
                                      common-lisp:t :member-name "name")
                                     (assessment-target-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "assessmentTargetArn")
                                     (duration-in-seconds :target-type
                                      assessment-run-duration :required
                                      common-lisp:t :member-name
                                      "durationInSeconds")
                                     (rules-package-arns :target-type
                                      assessment-template-rules-package-arn-list
                                      :required common-lisp:t :member-name
                                      "rulesPackageArns")
                                     (user-attributes-for-findings :target-type
                                      user-attribute-list :required
                                      common-lisp:t :member-name
                                      "userAttributesForFindings")
                                     (last-assessment-run-arn :target-type arn
                                      :member-name "lastAssessmentRunArn")
                                     (assessment-run-count :target-type
                                      arn-count :required common-lisp:t
                                      :member-name "assessmentRunCount")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt"))
                                    (:shape-name "AssessmentTemplate"))

(smithy/sdk/shapes:define-structure assessment-template-filter common-lisp:nil
                                    ((name-pattern :target-type name-pattern
                                      :member-name "namePattern")
                                     (duration-range :target-type
                                      duration-range :member-name
                                      "durationRange")
                                     (rules-package-arns :target-type
                                      filter-rules-package-arn-list
                                      :member-name "rulesPackageArns"))
                                    (:shape-name "AssessmentTemplateFilter"))

(smithy/sdk/shapes:define-list assessment-template-list :member
                               assessment-template)

(smithy/sdk/shapes:define-type assessment-template-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list assessment-template-rules-package-arn-list
                               :member arn)

(smithy/sdk/shapes:define-structure asset-attributes common-lisp:nil
                                    ((schema-version :target-type
                                      numeric-version :required common-lisp:t
                                      :member-name "schemaVersion")
                                     (agent-id :target-type agent-id
                                      :member-name "agentId")
                                     (auto-scaling-group :target-type
                                      auto-scaling-group :member-name
                                      "autoScalingGroup")
                                     (ami-id :target-type ami-id :member-name
                                      "amiId")
                                     (hostname :target-type hostname
                                      :member-name "hostname")
                                     (ipv4addresses :target-type
                                      ipv4address-list :member-name
                                      "ipv4Addresses")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (network-interfaces :target-type
                                      network-interfaces :member-name
                                      "networkInterfaces"))
                                    (:shape-name "AssetAttributes"))

(smithy/sdk/shapes:define-enum asset-type
    common-lisp:nil
  (:ec2-instance "ec2-instance"))

(smithy/sdk/shapes:define-structure attribute common-lisp:nil
                                    ((key :target-type attribute-key :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type attribute-value
                                      :member-name "value"))
                                    (:shape-name "Attribute"))

(smithy/sdk/shapes:define-type attribute-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list attribute-list :member attribute)

(smithy/sdk/shapes:define-type attribute-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type auto-scaling-group
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list auto-scaling-group-list :member
                               auto-scaling-group)

(smithy/sdk/shapes:define-list batch-describe-arn-list :member arn)

(smithy/sdk/shapes:define-list batch-describe-exclusions-arn-list :member arn)

(smithy/sdk/shapes:define-type bool smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input create-assessment-target-request
                                common-lisp:nil
                                ((assessment-target-name :target-type
                                  assessment-target-name :required
                                  common-lisp:t :member-name
                                  "assessmentTargetName")
                                 (resource-group-arn :target-type arn
                                  :member-name "resourceGroupArn"))
                                (:shape-name "CreateAssessmentTargetRequest"))

(smithy/sdk/shapes:define-output create-assessment-target-response
                                 common-lisp:nil
                                 ((assessment-target-arn :target-type arn
                                   :required common-lisp:t :member-name
                                   "assessmentTargetArn"))
                                 (:shape-name "CreateAssessmentTargetResponse"))

(smithy/sdk/shapes:define-input create-assessment-template-request
                                common-lisp:nil
                                ((assessment-target-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "assessmentTargetArn")
                                 (assessment-template-name :target-type
                                  assessment-template-name :required
                                  common-lisp:t :member-name
                                  "assessmentTemplateName")
                                 (duration-in-seconds :target-type
                                  assessment-run-duration :required
                                  common-lisp:t :member-name
                                  "durationInSeconds")
                                 (rules-package-arns :target-type
                                  assessment-template-rules-package-arn-list
                                  :required common-lisp:t :member-name
                                  "rulesPackageArns")
                                 (user-attributes-for-findings :target-type
                                  user-attribute-list :member-name
                                  "userAttributesForFindings"))
                                (:shape-name "CreateAssessmentTemplateRequest"))

(smithy/sdk/shapes:define-output create-assessment-template-response
                                 common-lisp:nil
                                 ((assessment-template-arn :target-type arn
                                   :required common-lisp:t :member-name
                                   "assessmentTemplateArn"))
                                 (:shape-name
                                  "CreateAssessmentTemplateResponse"))

(smithy/sdk/shapes:define-input create-exclusions-preview-request
                                common-lisp:nil
                                ((assessment-template-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "assessmentTemplateArn"))
                                (:shape-name "CreateExclusionsPreviewRequest"))

(smithy/sdk/shapes:define-output create-exclusions-preview-response
                                 common-lisp:nil
                                 ((preview-token :target-type uuid :required
                                   common-lisp:t :member-name "previewToken"))
                                 (:shape-name
                                  "CreateExclusionsPreviewResponse"))

(smithy/sdk/shapes:define-input create-resource-group-request common-lisp:nil
                                ((resource-group-tags :target-type
                                  resource-group-tags :required common-lisp:t
                                  :member-name "resourceGroupTags"))
                                (:shape-name "CreateResourceGroupRequest"))

(smithy/sdk/shapes:define-output create-resource-group-response common-lisp:nil
                                 ((resource-group-arn :target-type arn
                                   :required common-lisp:t :member-name
                                   "resourceGroupArn"))
                                 (:shape-name "CreateResourceGroupResponse"))

(smithy/sdk/shapes:define-input delete-assessment-run-request common-lisp:nil
                                ((assessment-run-arn :target-type arn :required
                                  common-lisp:t :member-name
                                  "assessmentRunArn"))
                                (:shape-name "DeleteAssessmentRunRequest"))

(smithy/sdk/shapes:define-input delete-assessment-target-request
                                common-lisp:nil
                                ((assessment-target-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "assessmentTargetArn"))
                                (:shape-name "DeleteAssessmentTargetRequest"))

(smithy/sdk/shapes:define-input delete-assessment-template-request
                                common-lisp:nil
                                ((assessment-template-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "assessmentTemplateArn"))
                                (:shape-name "DeleteAssessmentTemplateRequest"))

(smithy/sdk/shapes:define-input describe-assessment-runs-request
                                common-lisp:nil
                                ((assessment-run-arns :target-type
                                  batch-describe-arn-list :required
                                  common-lisp:t :member-name
                                  "assessmentRunArns"))
                                (:shape-name "DescribeAssessmentRunsRequest"))

(smithy/sdk/shapes:define-output describe-assessment-runs-response
                                 common-lisp:nil
                                 ((assessment-runs :target-type
                                   assessment-run-list :required common-lisp:t
                                   :member-name "assessmentRuns")
                                  (failed-items :target-type failed-items
                                   :required common-lisp:t :member-name
                                   "failedItems"))
                                 (:shape-name "DescribeAssessmentRunsResponse"))

(smithy/sdk/shapes:define-input describe-assessment-targets-request
                                common-lisp:nil
                                ((assessment-target-arns :target-type
                                  batch-describe-arn-list :required
                                  common-lisp:t :member-name
                                  "assessmentTargetArns"))
                                (:shape-name
                                 "DescribeAssessmentTargetsRequest"))

(smithy/sdk/shapes:define-output describe-assessment-targets-response
                                 common-lisp:nil
                                 ((assessment-targets :target-type
                                   assessment-target-list :required
                                   common-lisp:t :member-name
                                   "assessmentTargets")
                                  (failed-items :target-type failed-items
                                   :required common-lisp:t :member-name
                                   "failedItems"))
                                 (:shape-name
                                  "DescribeAssessmentTargetsResponse"))

(smithy/sdk/shapes:define-input describe-assessment-templates-request
                                common-lisp:nil
                                ((assessment-template-arns :target-type
                                  batch-describe-arn-list :required
                                  common-lisp:t :member-name
                                  "assessmentTemplateArns"))
                                (:shape-name
                                 "DescribeAssessmentTemplatesRequest"))

(smithy/sdk/shapes:define-output describe-assessment-templates-response
                                 common-lisp:nil
                                 ((assessment-templates :target-type
                                   assessment-template-list :required
                                   common-lisp:t :member-name
                                   "assessmentTemplates")
                                  (failed-items :target-type failed-items
                                   :required common-lisp:t :member-name
                                   "failedItems"))
                                 (:shape-name
                                  "DescribeAssessmentTemplatesResponse"))

(smithy/sdk/shapes:define-output describe-cross-account-access-role-response
                                 common-lisp:nil
                                 ((role-arn :target-type arn :required
                                   common-lisp:t :member-name "roleArn")
                                  (valid :target-type bool :required
                                   common-lisp:t :member-name "valid")
                                  (registered-at :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "registeredAt"))
                                 (:shape-name
                                  "DescribeCrossAccountAccessRoleResponse"))

(smithy/sdk/shapes:define-input describe-exclusions-request common-lisp:nil
                                ((exclusion-arns :target-type
                                  batch-describe-exclusions-arn-list :required
                                  common-lisp:t :member-name "exclusionArns")
                                 (locale :target-type locale :member-name
                                  "locale"))
                                (:shape-name "DescribeExclusionsRequest"))

(smithy/sdk/shapes:define-output describe-exclusions-response common-lisp:nil
                                 ((exclusions :target-type exclusion-map
                                   :required common-lisp:t :member-name
                                   "exclusions")
                                  (failed-items :target-type failed-items
                                   :required common-lisp:t :member-name
                                   "failedItems"))
                                 (:shape-name "DescribeExclusionsResponse"))

(smithy/sdk/shapes:define-input describe-findings-request common-lisp:nil
                                ((finding-arns :target-type
                                  batch-describe-arn-list :required
                                  common-lisp:t :member-name "findingArns")
                                 (locale :target-type locale :member-name
                                  "locale"))
                                (:shape-name "DescribeFindingsRequest"))

(smithy/sdk/shapes:define-output describe-findings-response common-lisp:nil
                                 ((findings :target-type finding-list :required
                                   common-lisp:t :member-name "findings")
                                  (failed-items :target-type failed-items
                                   :required common-lisp:t :member-name
                                   "failedItems"))
                                 (:shape-name "DescribeFindingsResponse"))

(smithy/sdk/shapes:define-input describe-resource-groups-request
                                common-lisp:nil
                                ((resource-group-arns :target-type
                                  batch-describe-arn-list :required
                                  common-lisp:t :member-name
                                  "resourceGroupArns"))
                                (:shape-name "DescribeResourceGroupsRequest"))

(smithy/sdk/shapes:define-output describe-resource-groups-response
                                 common-lisp:nil
                                 ((resource-groups :target-type
                                   resource-group-list :required common-lisp:t
                                   :member-name "resourceGroups")
                                  (failed-items :target-type failed-items
                                   :required common-lisp:t :member-name
                                   "failedItems"))
                                 (:shape-name "DescribeResourceGroupsResponse"))

(smithy/sdk/shapes:define-input describe-rules-packages-request common-lisp:nil
                                ((rules-package-arns :target-type
                                  batch-describe-arn-list :required
                                  common-lisp:t :member-name
                                  "rulesPackageArns")
                                 (locale :target-type locale :member-name
                                  "locale"))
                                (:shape-name "DescribeRulesPackagesRequest"))

(smithy/sdk/shapes:define-output describe-rules-packages-response
                                 common-lisp:nil
                                 ((rules-packages :target-type
                                   rules-package-list :required common-lisp:t
                                   :member-name "rulesPackages")
                                  (failed-items :target-type failed-items
                                   :required common-lisp:t :member-name
                                   "failedItems"))
                                 (:shape-name "DescribeRulesPackagesResponse"))

(smithy/sdk/shapes:define-structure duration-range common-lisp:nil
                                    ((min-seconds :target-type
                                      assessment-run-duration :member-name
                                      "minSeconds")
                                     (max-seconds :target-type
                                      assessment-run-duration :member-name
                                      "maxSeconds"))
                                    (:shape-name "DurationRange"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure event-subscription common-lisp:nil
                                    ((event :target-type inspector-event
                                      :required common-lisp:t :member-name
                                      "event")
                                     (subscribed-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "subscribedAt"))
                                    (:shape-name "EventSubscription"))

(smithy/sdk/shapes:define-list event-subscription-list :member
                               event-subscription)

(smithy/sdk/shapes:define-structure exclusion common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (title :target-type text :required
                                      common-lisp:t :member-name "title")
                                     (description :target-type text :required
                                      common-lisp:t :member-name "description")
                                     (recommendation :target-type text
                                      :required common-lisp:t :member-name
                                      "recommendation")
                                     (scopes :target-type scope-list :required
                                      common-lisp:t :member-name "scopes")
                                     (attributes :target-type attribute-list
                                      :member-name "attributes"))
                                    (:shape-name "Exclusion"))

(smithy/sdk/shapes:define-map exclusion-map :key arn :value exclusion)

(smithy/sdk/shapes:define-structure exclusion-preview common-lisp:nil
                                    ((title :target-type text :required
                                      common-lisp:t :member-name "title")
                                     (description :target-type text :required
                                      common-lisp:t :member-name "description")
                                     (recommendation :target-type text
                                      :required common-lisp:t :member-name
                                      "recommendation")
                                     (scopes :target-type scope-list :required
                                      common-lisp:t :member-name "scopes")
                                     (attributes :target-type attribute-list
                                      :member-name "attributes"))
                                    (:shape-name "ExclusionPreview"))

(smithy/sdk/shapes:define-list exclusion-preview-list :member exclusion-preview)

(smithy/sdk/shapes:define-structure failed-item-details common-lisp:nil
                                    ((failure-code :target-type
                                      failed-item-error-code :required
                                      common-lisp:t :member-name "failureCode")
                                     (retryable :target-type bool :required
                                      common-lisp:t :member-name "retryable"))
                                    (:shape-name "FailedItemDetails"))

(smithy/sdk/shapes:define-enum failed-item-error-code
    common-lisp:nil
  (:invalid-arn "INVALID_ARN")
  (:duplicate-arn "DUPLICATE_ARN")
  (:item-does-not-exist "ITEM_DOES_NOT_EXIST")
  (:access-denied "ACCESS_DENIED")
  (:limit-exceeded "LIMIT_EXCEEDED")
  (:internal-error "INTERNAL_ERROR"))

(smithy/sdk/shapes:define-map failed-items :key arn :value failed-item-details)

(smithy/sdk/shapes:define-list filter-rules-package-arn-list :member arn)

(smithy/sdk/shapes:define-structure finding common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (schema-version :target-type
                                      numeric-version :member-name
                                      "schemaVersion")
                                     (service :target-type service-name
                                      :member-name "service")
                                     (service-attributes :target-type
                                      inspector-service-attributes :member-name
                                      "serviceAttributes")
                                     (asset-type :target-type asset-type
                                      :member-name "assetType")
                                     (asset-attributes :target-type
                                      asset-attributes :member-name
                                      "assetAttributes")
                                     (id :target-type finding-id :member-name
                                      "id")
                                     (title :target-type text :member-name
                                      "title")
                                     (description :target-type text
                                      :member-name "description")
                                     (recommendation :target-type text
                                      :member-name "recommendation")
                                     (severity :target-type severity
                                      :member-name "severity")
                                     (numeric-severity :target-type
                                      numeric-severity :member-name
                                      "numericSeverity")
                                     (confidence :target-type ioc-confidence
                                      :member-name "confidence")
                                     (indicator-of-compromise :target-type bool
                                      :member-name "indicatorOfCompromise")
                                     (attributes :target-type attribute-list
                                      :required common-lisp:t :member-name
                                      "attributes")
                                     (user-attributes :target-type
                                      user-attribute-list :required
                                      common-lisp:t :member-name
                                      "userAttributes")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (updated-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt"))
                                    (:shape-name "Finding"))

(smithy/sdk/shapes:define-type finding-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure finding-filter common-lisp:nil
                                    ((agent-ids :target-type agent-id-list
                                      :member-name "agentIds")
                                     (auto-scaling-groups :target-type
                                      auto-scaling-group-list :member-name
                                      "autoScalingGroups")
                                     (rule-names :target-type rule-name-list
                                      :member-name "ruleNames")
                                     (severities :target-type severity-list
                                      :member-name "severities")
                                     (rules-package-arns :target-type
                                      filter-rules-package-arn-list
                                      :member-name "rulesPackageArns")
                                     (attributes :target-type attribute-list
                                      :member-name "attributes")
                                     (user-attributes :target-type
                                      attribute-list :member-name
                                      "userAttributes")
                                     (creation-time-range :target-type
                                      timestamp-range :member-name
                                      "creationTimeRange"))
                                    (:shape-name "FindingFilter"))

(smithy/sdk/shapes:define-type finding-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list finding-list :member finding)

(smithy/sdk/shapes:define-input get-assessment-report-request common-lisp:nil
                                ((assessment-run-arn :target-type arn :required
                                  common-lisp:t :member-name
                                  "assessmentRunArn")
                                 (report-file-format :target-type
                                  report-file-format :required common-lisp:t
                                  :member-name "reportFileFormat")
                                 (report-type :target-type report-type
                                  :required common-lisp:t :member-name
                                  "reportType"))
                                (:shape-name "GetAssessmentReportRequest"))

(smithy/sdk/shapes:define-output get-assessment-report-response common-lisp:nil
                                 ((status :target-type report-status :required
                                   common-lisp:t :member-name "status")
                                  (url :target-type url :member-name "url"))
                                 (:shape-name "GetAssessmentReportResponse"))

(smithy/sdk/shapes:define-input get-exclusions-preview-request common-lisp:nil
                                ((assessment-template-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "assessmentTemplateArn")
                                 (preview-token :target-type uuid :required
                                  common-lisp:t :member-name "previewToken")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (max-results :target-type list-max-results
                                  :member-name "maxResults")
                                 (locale :target-type locale :member-name
                                  "locale"))
                                (:shape-name "GetExclusionsPreviewRequest"))

(smithy/sdk/shapes:define-output get-exclusions-preview-response
                                 common-lisp:nil
                                 ((preview-status :target-type preview-status
                                   :required common-lisp:t :member-name
                                   "previewStatus")
                                  (exclusion-previews :target-type
                                   exclusion-preview-list :member-name
                                   "exclusionPreviews")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "GetExclusionsPreviewResponse"))

(smithy/sdk/shapes:define-input get-telemetry-metadata-request common-lisp:nil
                                ((assessment-run-arn :target-type arn :required
                                  common-lisp:t :member-name
                                  "assessmentRunArn"))
                                (:shape-name "GetTelemetryMetadataRequest"))

(smithy/sdk/shapes:define-output get-telemetry-metadata-response
                                 common-lisp:nil
                                 ((telemetry-metadata :target-type
                                   telemetry-metadata-list :required
                                   common-lisp:t :member-name
                                   "telemetryMetadata"))
                                 (:shape-name "GetTelemetryMetadataResponse"))

(smithy/sdk/shapes:define-type hostname smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum inspector-event
    common-lisp:nil
  (:assessment-run-started "ASSESSMENT_RUN_STARTED")
  (:assessment-run-completed "ASSESSMENT_RUN_COMPLETED")
  (:assessment-run-state-changed "ASSESSMENT_RUN_STATE_CHANGED")
  (:finding-reported "FINDING_REPORTED")
  (:other "OTHER"))

(smithy/sdk/shapes:define-structure inspector-service-attributes
                                    common-lisp:nil
                                    ((schema-version :target-type
                                      numeric-version :required common-lisp:t
                                      :member-name "schemaVersion")
                                     (assessment-run-arn :target-type arn
                                      :member-name "assessmentRunArn")
                                     (rules-package-arn :target-type arn
                                      :member-name "rulesPackageArn"))
                                    (:shape-name "InspectorServiceAttributes"))

(smithy/sdk/shapes:define-error internal-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (can-retry :target-type bool :required
                                  common-lisp:t :member-name "canRetry"))
                                (:shape-name "InternalException")
                                (:error-code 500) (:base-class inspector-error))

(smithy/sdk/shapes:define-enum invalid-cross-account-role-error-code
    common-lisp:nil
  (:role-does-not-exist-or-invalid-trust-relationship
   "ROLE_DOES_NOT_EXIST_OR_INVALID_TRUST_RELATIONSHIP")
  (:role-does-not-have-correct-policy "ROLE_DOES_NOT_HAVE_CORRECT_POLICY"))

(smithy/sdk/shapes:define-error invalid-cross-account-role-exception
                                common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (error-code :target-type
                                  invalid-cross-account-role-error-code
                                  :required common-lisp:t :member-name
                                  "errorCode")
                                 (can-retry :target-type bool :required
                                  common-lisp:t :member-name "canRetry"))
                                (:shape-name
                                 "InvalidCrossAccountRoleException")
                                (:error-code 400) (:base-class inspector-error))

(smithy/sdk/shapes:define-enum invalid-input-error-code
    common-lisp:nil
  (:invalid-assessment-target-arn "INVALID_ASSESSMENT_TARGET_ARN")
  (:invalid-assessment-template-arn "INVALID_ASSESSMENT_TEMPLATE_ARN")
  (:invalid-assessment-run-arn "INVALID_ASSESSMENT_RUN_ARN")
  (:invalid-finding-arn "INVALID_FINDING_ARN")
  (:invalid-resource-group-arn "INVALID_RESOURCE_GROUP_ARN")
  (:invalid-rules-package-arn "INVALID_RULES_PACKAGE_ARN")
  (:invalid-resource-arn "INVALID_RESOURCE_ARN")
  (:invalid-sns-topic-arn "INVALID_SNS_TOPIC_ARN")
  (:invalid-iam-role-arn "INVALID_IAM_ROLE_ARN")
  (:invalid-assessment-target-name "INVALID_ASSESSMENT_TARGET_NAME")
  (:invalid-assessment-target-name-pattern
   "INVALID_ASSESSMENT_TARGET_NAME_PATTERN")
  (:invalid-assessment-template-name "INVALID_ASSESSMENT_TEMPLATE_NAME")
  (:invalid-assessment-template-name-pattern
   "INVALID_ASSESSMENT_TEMPLATE_NAME_PATTERN")
  (:invalid-assessment-template-duration "INVALID_ASSESSMENT_TEMPLATE_DURATION")
  (:invalid-assessment-template-duration-range
   "INVALID_ASSESSMENT_TEMPLATE_DURATION_RANGE")
  (:invalid-assessment-run-duration-range
   "INVALID_ASSESSMENT_RUN_DURATION_RANGE")
  (:invalid-assessment-run-start-time-range
   "INVALID_ASSESSMENT_RUN_START_TIME_RANGE")
  (:invalid-assessment-run-completion-time-range
   "INVALID_ASSESSMENT_RUN_COMPLETION_TIME_RANGE")
  (:invalid-assessment-run-state-change-time-range
   "INVALID_ASSESSMENT_RUN_STATE_CHANGE_TIME_RANGE")
  (:invalid-assessment-run-state "INVALID_ASSESSMENT_RUN_STATE")
  (:invalid-tag "INVALID_TAG")
  (:invalid-tag-key "INVALID_TAG_KEY")
  (:invalid-tag-value "INVALID_TAG_VALUE")
  (:invalid-resource-group-tag-key "INVALID_RESOURCE_GROUP_TAG_KEY")
  (:invalid-resource-group-tag-value "INVALID_RESOURCE_GROUP_TAG_VALUE")
  (:invalid-attribute "INVALID_ATTRIBUTE")
  (:invalid-user-attribute "INVALID_USER_ATTRIBUTE")
  (:invalid-user-attribute-key "INVALID_USER_ATTRIBUTE_KEY")
  (:invalid-user-attribute-value "INVALID_USER_ATTRIBUTE_VALUE")
  (:invalid-pagination-token "INVALID_PAGINATION_TOKEN")
  (:invalid-max-results "INVALID_MAX_RESULTS")
  (:invalid-agent-id "INVALID_AGENT_ID")
  (:invalid-auto-scaling-group "INVALID_AUTO_SCALING_GROUP")
  (:invalid-rule-name "INVALID_RULE_NAME")
  (:invalid-severity "INVALID_SEVERITY")
  (:invalid-locale "INVALID_LOCALE")
  (:invalid-event "INVALID_EVENT")
  (:assessment-target-name-already-taken "ASSESSMENT_TARGET_NAME_ALREADY_TAKEN")
  (:assessment-template-name-already-taken
   "ASSESSMENT_TEMPLATE_NAME_ALREADY_TAKEN")
  (:invalid-number-of-assessment-target-arns
   "INVALID_NUMBER_OF_ASSESSMENT_TARGET_ARNS")
  (:invalid-number-of-assessment-template-arns
   "INVALID_NUMBER_OF_ASSESSMENT_TEMPLATE_ARNS")
  (:invalid-number-of-assessment-run-arns
   "INVALID_NUMBER_OF_ASSESSMENT_RUN_ARNS")
  (:invalid-number-of-finding-arns "INVALID_NUMBER_OF_FINDING_ARNS")
  (:invalid-number-of-resource-group-arns
   "INVALID_NUMBER_OF_RESOURCE_GROUP_ARNS")
  (:invalid-number-of-rules-package-arns "INVALID_NUMBER_OF_RULES_PACKAGE_ARNS")
  (:invalid-number-of-assessment-run-states
   "INVALID_NUMBER_OF_ASSESSMENT_RUN_STATES")
  (:invalid-number-of-tags "INVALID_NUMBER_OF_TAGS")
  (:invalid-number-of-resource-group-tags
   "INVALID_NUMBER_OF_RESOURCE_GROUP_TAGS")
  (:invalid-number-of-attributes "INVALID_NUMBER_OF_ATTRIBUTES")
  (:invalid-number-of-user-attributes "INVALID_NUMBER_OF_USER_ATTRIBUTES")
  (:invalid-number-of-agent-ids "INVALID_NUMBER_OF_AGENT_IDS")
  (:invalid-number-of-auto-scaling-groups
   "INVALID_NUMBER_OF_AUTO_SCALING_GROUPS")
  (:invalid-number-of-rule-names "INVALID_NUMBER_OF_RULE_NAMES")
  (:invalid-number-of-severities "INVALID_NUMBER_OF_SEVERITIES"))

(smithy/sdk/shapes:define-error invalid-input-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (error-code :target-type
                                  invalid-input-error-code :required
                                  common-lisp:t :member-name "errorCode")
                                 (can-retry :target-type bool :required
                                  common-lisp:t :member-name "canRetry"))
                                (:shape-name "InvalidInputException")
                                (:error-code 400) (:base-class inspector-error))

(smithy/sdk/shapes:define-type ioc-confidence smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type ipv4address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ipv4address-list :member ipv4address)

(smithy/sdk/shapes:define-list ipv6addresses :member text)

(smithy/sdk/shapes:define-type kernel-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum limit-exceeded-error-code
    common-lisp:nil
  (:assessment-target-limit-exceeded "ASSESSMENT_TARGET_LIMIT_EXCEEDED")
  (:assessment-template-limit-exceeded "ASSESSMENT_TEMPLATE_LIMIT_EXCEEDED")
  (:assessment-run-limit-exceeded "ASSESSMENT_RUN_LIMIT_EXCEEDED")
  (:resource-group-limit-exceeded "RESOURCE_GROUP_LIMIT_EXCEEDED")
  (:event-subscription-limit-exceeded "EVENT_SUBSCRIPTION_LIMIT_EXCEEDED"))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (error-code :target-type
                                  limit-exceeded-error-code :required
                                  common-lisp:t :member-name "errorCode")
                                 (can-retry :target-type bool :required
                                  common-lisp:t :member-name "canRetry"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400) (:base-class inspector-error))

(smithy/sdk/shapes:define-input list-assessment-run-agents-request
                                common-lisp:nil
                                ((assessment-run-arn :target-type arn :required
                                  common-lisp:t :member-name
                                  "assessmentRunArn")
                                 (filter :target-type agent-filter :member-name
                                  "filter")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (max-results :target-type list-max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListAssessmentRunAgentsRequest"))

(smithy/sdk/shapes:define-output list-assessment-run-agents-response
                                 common-lisp:nil
                                 ((assessment-run-agents :target-type
                                   assessment-run-agent-list :required
                                   common-lisp:t :member-name
                                   "assessmentRunAgents")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListAssessmentRunAgentsResponse"))

(smithy/sdk/shapes:define-input list-assessment-runs-request common-lisp:nil
                                ((assessment-template-arns :target-type
                                  list-parent-arn-list :member-name
                                  "assessmentTemplateArns")
                                 (filter :target-type assessment-run-filter
                                  :member-name "filter")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (max-results :target-type list-max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListAssessmentRunsRequest"))

(smithy/sdk/shapes:define-output list-assessment-runs-response common-lisp:nil
                                 ((assessment-run-arns :target-type
                                   list-returned-arn-list :required
                                   common-lisp:t :member-name
                                   "assessmentRunArns")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListAssessmentRunsResponse"))

(smithy/sdk/shapes:define-input list-assessment-targets-request common-lisp:nil
                                ((filter :target-type assessment-target-filter
                                  :member-name "filter")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (max-results :target-type list-max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListAssessmentTargetsRequest"))

(smithy/sdk/shapes:define-output list-assessment-targets-response
                                 common-lisp:nil
                                 ((assessment-target-arns :target-type
                                   list-returned-arn-list :required
                                   common-lisp:t :member-name
                                   "assessmentTargetArns")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListAssessmentTargetsResponse"))

(smithy/sdk/shapes:define-input list-assessment-templates-request
                                common-lisp:nil
                                ((assessment-target-arns :target-type
                                  list-parent-arn-list :member-name
                                  "assessmentTargetArns")
                                 (filter :target-type
                                  assessment-template-filter :member-name
                                  "filter")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (max-results :target-type list-max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListAssessmentTemplatesRequest"))

(smithy/sdk/shapes:define-output list-assessment-templates-response
                                 common-lisp:nil
                                 ((assessment-template-arns :target-type
                                   list-returned-arn-list :required
                                   common-lisp:t :member-name
                                   "assessmentTemplateArns")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListAssessmentTemplatesResponse"))

(smithy/sdk/shapes:define-type list-event-subscriptions-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-event-subscriptions-request
                                common-lisp:nil
                                ((resource-arn :target-type arn :member-name
                                  "resourceArn")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (max-results :target-type
                                  list-event-subscriptions-max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListEventSubscriptionsRequest"))

(smithy/sdk/shapes:define-output list-event-subscriptions-response
                                 common-lisp:nil
                                 ((subscriptions :target-type subscription-list
                                   :required common-lisp:t :member-name
                                   "subscriptions")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListEventSubscriptionsResponse"))

(smithy/sdk/shapes:define-input list-exclusions-request common-lisp:nil
                                ((assessment-run-arn :target-type arn :required
                                  common-lisp:t :member-name
                                  "assessmentRunArn")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (max-results :target-type list-max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListExclusionsRequest"))

(smithy/sdk/shapes:define-output list-exclusions-response common-lisp:nil
                                 ((exclusion-arns :target-type
                                   list-returned-arn-list :required
                                   common-lisp:t :member-name "exclusionArns")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListExclusionsResponse"))

(smithy/sdk/shapes:define-input list-findings-request common-lisp:nil
                                ((assessment-run-arns :target-type
                                  list-parent-arn-list :member-name
                                  "assessmentRunArns")
                                 (filter :target-type finding-filter
                                  :member-name "filter")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (max-results :target-type list-max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListFindingsRequest"))

(smithy/sdk/shapes:define-output list-findings-response common-lisp:nil
                                 ((finding-arns :target-type
                                   list-returned-arn-list :required
                                   common-lisp:t :member-name "findingArns")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListFindingsResponse"))

(smithy/sdk/shapes:define-type list-max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list list-parent-arn-list :member arn)

(smithy/sdk/shapes:define-list list-returned-arn-list :member arn)

(smithy/sdk/shapes:define-input list-rules-packages-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (max-results :target-type list-max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListRulesPackagesRequest"))

(smithy/sdk/shapes:define-output list-rules-packages-response common-lisp:nil
                                 ((rules-package-arns :target-type
                                   list-returned-arn-list :required
                                   common-lisp:t :member-name
                                   "rulesPackageArns")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListRulesPackagesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :required
                                   common-lisp:t :member-name "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-enum locale
    common-lisp:nil
  (:en-us "EN_US"))

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type message-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type name-pattern smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure network-interface common-lisp:nil
                                    ((network-interface-id :target-type text
                                      :member-name "networkInterfaceId")
                                     (subnet-id :target-type text :member-name
                                      "subnetId")
                                     (vpc-id :target-type text :member-name
                                      "vpcId")
                                     (private-dns-name :target-type text
                                      :member-name "privateDnsName")
                                     (private-ip-address :target-type text
                                      :member-name "privateIpAddress")
                                     (private-ip-addresses :target-type
                                      private-ip-addresses :member-name
                                      "privateIpAddresses")
                                     (public-dns-name :target-type text
                                      :member-name "publicDnsName")
                                     (public-ip :target-type text :member-name
                                      "publicIp")
                                     (ipv6addresses :target-type ipv6addresses
                                      :member-name "ipv6Addresses")
                                     (security-groups :target-type
                                      security-groups :member-name
                                      "securityGroups"))
                                    (:shape-name "NetworkInterface"))

(smithy/sdk/shapes:define-list network-interfaces :member network-interface)

(smithy/sdk/shapes:define-enum no-such-entity-error-code
    common-lisp:nil
  (:assessment-target-does-not-exist "ASSESSMENT_TARGET_DOES_NOT_EXIST")
  (:assessment-template-does-not-exist "ASSESSMENT_TEMPLATE_DOES_NOT_EXIST")
  (:assessment-run-does-not-exist "ASSESSMENT_RUN_DOES_NOT_EXIST")
  (:finding-does-not-exist "FINDING_DOES_NOT_EXIST")
  (:resource-group-does-not-exist "RESOURCE_GROUP_DOES_NOT_EXIST")
  (:rules-package-does-not-exist "RULES_PACKAGE_DOES_NOT_EXIST")
  (:sns-topic-does-not-exist "SNS_TOPIC_DOES_NOT_EXIST")
  (:iam-role-does-not-exist "IAM_ROLE_DOES_NOT_EXIST"))

(smithy/sdk/shapes:define-error no-such-entity-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (error-code :target-type
                                  no-such-entity-error-code :required
                                  common-lisp:t :member-name "errorCode")
                                 (can-retry :target-type bool :required
                                  common-lisp:t :member-name "canRetry"))
                                (:shape-name "NoSuchEntityException")
                                (:error-code 400) (:base-class inspector-error))

(smithy/sdk/shapes:define-type numeric-severity smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type numeric-version smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type operating-system smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type preview-agents-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input preview-agents-request common-lisp:nil
                                ((preview-agents-arn :target-type arn :required
                                  common-lisp:t :member-name
                                  "previewAgentsArn")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (max-results :target-type
                                  preview-agents-max-results :member-name
                                  "maxResults"))
                                (:shape-name "PreviewAgentsRequest"))

(smithy/sdk/shapes:define-output preview-agents-response common-lisp:nil
                                 ((agent-previews :target-type
                                   agent-preview-list :required common-lisp:t
                                   :member-name "agentPreviews")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "PreviewAgentsResponse"))

(smithy/sdk/shapes:define-error preview-generation-in-progress-exception
                                common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name
                                 "PreviewGenerationInProgressException")
                                (:error-code 400) (:base-class inspector-error))

(smithy/sdk/shapes:define-enum preview-status
    common-lisp:nil
  (:work-in-progress "WORK_IN_PROGRESS")
  (:completed "COMPLETED"))

(smithy/sdk/shapes:define-structure private-ip common-lisp:nil
                                    ((private-dns-name :target-type text
                                      :member-name "privateDnsName")
                                     (private-ip-address :target-type text
                                      :member-name "privateIpAddress"))
                                    (:shape-name "PrivateIp"))

(smithy/sdk/shapes:define-list private-ip-addresses :member private-ip)

(smithy/sdk/shapes:define-type provider-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input register-cross-account-access-role-request
                                common-lisp:nil
                                ((role-arn :target-type arn :required
                                  common-lisp:t :member-name "roleArn"))
                                (:shape-name
                                 "RegisterCrossAccountAccessRoleRequest"))

(smithy/sdk/shapes:define-input remove-attributes-from-findings-request
                                common-lisp:nil
                                ((finding-arns :target-type
                                  add-remove-attributes-finding-arn-list
                                  :required common-lisp:t :member-name
                                  "findingArns")
                                 (attribute-keys :target-type
                                  user-attribute-key-list :required
                                  common-lisp:t :member-name "attributeKeys"))
                                (:shape-name
                                 "RemoveAttributesFromFindingsRequest"))

(smithy/sdk/shapes:define-output remove-attributes-from-findings-response
                                 common-lisp:nil
                                 ((failed-items :target-type failed-items
                                   :required common-lisp:t :member-name
                                   "failedItems"))
                                 (:shape-name
                                  "RemoveAttributesFromFindingsResponse"))

(smithy/sdk/shapes:define-enum report-file-format
    common-lisp:nil
  (:html "HTML")
  (:pdf "PDF"))

(smithy/sdk/shapes:define-enum report-status
    common-lisp:nil
  (:work-in-progress "WORK_IN_PROGRESS")
  (:failed "FAILED")
  (:completed "COMPLETED"))

(smithy/sdk/shapes:define-enum report-type
    common-lisp:nil
  (:finding "FINDING")
  (:full "FULL"))

(smithy/sdk/shapes:define-structure resource-group common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (tags :target-type resource-group-tags
                                      :required common-lisp:t :member-name
                                      "tags")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt"))
                                    (:shape-name "ResourceGroup"))

(smithy/sdk/shapes:define-list resource-group-list :member resource-group)

(smithy/sdk/shapes:define-structure resource-group-tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type tag-value :member-name
                                      "value"))
                                    (:shape-name "ResourceGroupTag"))

(smithy/sdk/shapes:define-list resource-group-tags :member resource-group-tag)

(smithy/sdk/shapes:define-type rule-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list rule-name-list :member rule-name)

(smithy/sdk/shapes:define-structure rules-package common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type rules-package-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (version :target-type version :required
                                      common-lisp:t :member-name "version")
                                     (provider :target-type provider-name
                                      :required common-lisp:t :member-name
                                      "provider")
                                     (description :target-type text
                                      :member-name "description"))
                                    (:shape-name "RulesPackage"))

(smithy/sdk/shapes:define-list rules-package-list :member rules-package)

(smithy/sdk/shapes:define-type rules-package-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure scope common-lisp:nil
                                    ((key :target-type scope-type :member-name
                                      "key")
                                     (value :target-type scope-value
                                      :member-name "value"))
                                    (:shape-name "Scope"))

(smithy/sdk/shapes:define-list scope-list :member scope)

(smithy/sdk/shapes:define-enum scope-type
    common-lisp:nil
  (:instance-id "INSTANCE_ID")
  (:rules-package-arn "RULES_PACKAGE_ARN"))

(smithy/sdk/shapes:define-type scope-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure security-group common-lisp:nil
                                    ((group-name :target-type text :member-name
                                      "groupName")
                                     (group-id :target-type text :member-name
                                      "groupId"))
                                    (:shape-name "SecurityGroup"))

(smithy/sdk/shapes:define-list security-groups :member security-group)

(smithy/sdk/shapes:define-type service-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-temporarily-unavailable-exception
                                common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (can-retry :target-type bool :required
                                  common-lisp:t :member-name "canRetry"))
                                (:shape-name
                                 "ServiceTemporarilyUnavailableException")
                                (:error-code 503) (:base-class inspector-error))

(smithy/sdk/shapes:define-input set-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "SetTagsForResourceRequest"))

(smithy/sdk/shapes:define-enum severity
    common-lisp:nil
  (:low "Low")
  (:medium "Medium")
  (:high "High")
  (:informational "Informational")
  (:undefined "Undefined"))

(smithy/sdk/shapes:define-list severity-list :member severity)

(smithy/sdk/shapes:define-input start-assessment-run-request common-lisp:nil
                                ((assessment-template-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "assessmentTemplateArn")
                                 (assessment-run-name :target-type
                                  assessment-run-name :member-name
                                  "assessmentRunName"))
                                (:shape-name "StartAssessmentRunRequest"))

(smithy/sdk/shapes:define-output start-assessment-run-response common-lisp:nil
                                 ((assessment-run-arn :target-type arn
                                   :required common-lisp:t :member-name
                                   "assessmentRunArn"))
                                 (:shape-name "StartAssessmentRunResponse"))

(smithy/sdk/shapes:define-enum stop-action
    common-lisp:nil
  (:start-evaluation "START_EVALUATION")
  (:skip-evaluation "SKIP_EVALUATION"))

(smithy/sdk/shapes:define-input stop-assessment-run-request common-lisp:nil
                                ((assessment-run-arn :target-type arn :required
                                  common-lisp:t :member-name
                                  "assessmentRunArn")
                                 (stop-action :target-type stop-action
                                  :member-name "stopAction"))
                                (:shape-name "StopAssessmentRunRequest"))

(smithy/sdk/shapes:define-input subscribe-to-event-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn")
                                 (event :target-type inspector-event :required
                                  common-lisp:t :member-name "event")
                                 (topic-arn :target-type arn :required
                                  common-lisp:t :member-name "topicArn"))
                                (:shape-name "SubscribeToEventRequest"))

(smithy/sdk/shapes:define-structure subscription common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name "resourceArn")
                                     (topic-arn :target-type arn :required
                                      common-lisp:t :member-name "topicArn")
                                     (event-subscriptions :target-type
                                      event-subscription-list :required
                                      common-lisp:t :member-name
                                      "eventSubscriptions"))
                                    (:shape-name "Subscription"))

(smithy/sdk/shapes:define-list subscription-list :member subscription)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type tag-value :member-name
                                      "value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tags :member tag)

(smithy/sdk/shapes:define-structure telemetry-metadata common-lisp:nil
                                    ((message-type :target-type message-type
                                      :required common-lisp:t :member-name
                                      "messageType")
                                     (count :target-type long :required
                                      common-lisp:t :member-name "count")
                                     (data-size :target-type long :member-name
                                      "dataSize"))
                                    (:shape-name "TelemetryMetadata"))

(smithy/sdk/shapes:define-list telemetry-metadata-list :member
                               telemetry-metadata)

(smithy/sdk/shapes:define-type text smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure timestamp-range common-lisp:nil
                                    ((begin-date :target-type timestamp
                                      :member-name "beginDate")
                                     (end-date :target-type timestamp
                                      :member-name "endDate"))
                                    (:shape-name "TimestampRange"))

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input unsubscribe-from-event-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn")
                                 (event :target-type inspector-event :required
                                  common-lisp:t :member-name "event")
                                 (topic-arn :target-type arn :required
                                  common-lisp:t :member-name "topicArn"))
                                (:shape-name "UnsubscribeFromEventRequest"))

(smithy/sdk/shapes:define-error unsupported-feature-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (can-retry :target-type bool :required
                                  common-lisp:t :member-name "canRetry"))
                                (:shape-name "UnsupportedFeatureException")
                                (:error-code 400) (:base-class inspector-error))

(smithy/sdk/shapes:define-input update-assessment-target-request
                                common-lisp:nil
                                ((assessment-target-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "assessmentTargetArn")
                                 (assessment-target-name :target-type
                                  assessment-target-name :required
                                  common-lisp:t :member-name
                                  "assessmentTargetName")
                                 (resource-group-arn :target-type arn
                                  :member-name "resourceGroupArn"))
                                (:shape-name "UpdateAssessmentTargetRequest"))

(smithy/sdk/shapes:define-type url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list user-attribute-key-list :member attribute-key)

(smithy/sdk/shapes:define-list user-attribute-list :member attribute)

(smithy/sdk/shapes:define-type version smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation add-attributes-to-findings :shape-name
                                       "AddAttributesToFindings" :input
                                       add-attributes-to-findings-request
                                       :output
                                       add-attributes-to-findings-response
                                       :errors
                                       (access-denied-exception
                                        internal-exception
                                        invalid-input-exception
                                        no-such-entity-exception
                                        service-temporarily-unavailable-exception))

(smithy/sdk/operation:define-operation create-assessment-target :shape-name
                                       "CreateAssessmentTarget" :input
                                       create-assessment-target-request :output
                                       create-assessment-target-response
                                       :errors
                                       (access-denied-exception
                                        internal-exception
                                        invalid-cross-account-role-exception
                                        invalid-input-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-temporarily-unavailable-exception))

(smithy/sdk/operation:define-operation create-assessment-template :shape-name
                                       "CreateAssessmentTemplate" :input
                                       create-assessment-template-request
                                       :output
                                       create-assessment-template-response
                                       :errors
                                       (access-denied-exception
                                        internal-exception
                                        invalid-input-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-temporarily-unavailable-exception))

(smithy/sdk/operation:define-operation create-exclusions-preview :shape-name
                                       "CreateExclusionsPreview" :input
                                       create-exclusions-preview-request
                                       :output
                                       create-exclusions-preview-response
                                       :errors
                                       (access-denied-exception
                                        internal-exception
                                        invalid-input-exception
                                        no-such-entity-exception
                                        preview-generation-in-progress-exception
                                        service-temporarily-unavailable-exception))

(smithy/sdk/operation:define-operation create-resource-group :shape-name
                                       "CreateResourceGroup" :input
                                       create-resource-group-request :output
                                       create-resource-group-response :errors
                                       (access-denied-exception
                                        internal-exception
                                        invalid-input-exception
                                        limit-exceeded-exception
                                        service-temporarily-unavailable-exception))

(smithy/sdk/operation:define-operation delete-assessment-run :shape-name
                                       "DeleteAssessmentRun" :input
                                       delete-assessment-run-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        assessment-run-in-progress-exception
                                        internal-exception
                                        invalid-input-exception
                                        no-such-entity-exception
                                        service-temporarily-unavailable-exception))

(smithy/sdk/operation:define-operation delete-assessment-target :shape-name
                                       "DeleteAssessmentTarget" :input
                                       delete-assessment-target-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        assessment-run-in-progress-exception
                                        internal-exception
                                        invalid-input-exception
                                        no-such-entity-exception
                                        service-temporarily-unavailable-exception))

(smithy/sdk/operation:define-operation delete-assessment-template :shape-name
                                       "DeleteAssessmentTemplate" :input
                                       delete-assessment-template-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        assessment-run-in-progress-exception
                                        internal-exception
                                        invalid-input-exception
                                        no-such-entity-exception
                                        service-temporarily-unavailable-exception))

(smithy/sdk/operation:define-operation describe-assessment-runs :shape-name
                                       "DescribeAssessmentRuns" :input
                                       describe-assessment-runs-request :output
                                       describe-assessment-runs-response
                                       :errors
                                       (internal-exception
                                        invalid-input-exception))

(smithy/sdk/operation:define-operation describe-assessment-targets :shape-name
                                       "DescribeAssessmentTargets" :input
                                       describe-assessment-targets-request
                                       :output
                                       describe-assessment-targets-response
                                       :errors
                                       (internal-exception
                                        invalid-input-exception))

(smithy/sdk/operation:define-operation describe-assessment-templates
                                       :shape-name
                                       "DescribeAssessmentTemplates" :input
                                       describe-assessment-templates-request
                                       :output
                                       describe-assessment-templates-response
                                       :errors
                                       (internal-exception
                                        invalid-input-exception))

(smithy/sdk/operation:define-operation describe-cross-account-access-role
                                       :shape-name
                                       "DescribeCrossAccountAccessRole" :input
                                       common-lisp:null :output
                                       describe-cross-account-access-role-response
                                       :errors (internal-exception))

(smithy/sdk/operation:define-operation describe-exclusions :shape-name
                                       "DescribeExclusions" :input
                                       describe-exclusions-request :output
                                       describe-exclusions-response :errors
                                       (internal-exception
                                        invalid-input-exception))

(smithy/sdk/operation:define-operation describe-findings :shape-name
                                       "DescribeFindings" :input
                                       describe-findings-request :output
                                       describe-findings-response :errors
                                       (internal-exception
                                        invalid-input-exception))

(smithy/sdk/operation:define-operation describe-resource-groups :shape-name
                                       "DescribeResourceGroups" :input
                                       describe-resource-groups-request :output
                                       describe-resource-groups-response
                                       :errors
                                       (internal-exception
                                        invalid-input-exception))

(smithy/sdk/operation:define-operation describe-rules-packages :shape-name
                                       "DescribeRulesPackages" :input
                                       describe-rules-packages-request :output
                                       describe-rules-packages-response :errors
                                       (internal-exception
                                        invalid-input-exception))

(smithy/sdk/operation:define-operation get-assessment-report :shape-name
                                       "GetAssessmentReport" :input
                                       get-assessment-report-request :output
                                       get-assessment-report-response :errors
                                       (access-denied-exception
                                        assessment-run-in-progress-exception
                                        internal-exception
                                        invalid-input-exception
                                        no-such-entity-exception
                                        service-temporarily-unavailable-exception
                                        unsupported-feature-exception))

(smithy/sdk/operation:define-operation get-exclusions-preview :shape-name
                                       "GetExclusionsPreview" :input
                                       get-exclusions-preview-request :output
                                       get-exclusions-preview-response :errors
                                       (access-denied-exception
                                        internal-exception
                                        invalid-input-exception
                                        no-such-entity-exception))

(smithy/sdk/operation:define-operation get-telemetry-metadata :shape-name
                                       "GetTelemetryMetadata" :input
                                       get-telemetry-metadata-request :output
                                       get-telemetry-metadata-response :errors
                                       (access-denied-exception
                                        internal-exception
                                        invalid-input-exception
                                        no-such-entity-exception))

(smithy/sdk/operation:define-operation list-assessment-run-agents :shape-name
                                       "ListAssessmentRunAgents" :input
                                       list-assessment-run-agents-request
                                       :output
                                       list-assessment-run-agents-response
                                       :errors
                                       (access-denied-exception
                                        internal-exception
                                        invalid-input-exception
                                        no-such-entity-exception))

(smithy/sdk/operation:define-operation list-assessment-runs :shape-name
                                       "ListAssessmentRuns" :input
                                       list-assessment-runs-request :output
                                       list-assessment-runs-response :errors
                                       (access-denied-exception
                                        internal-exception
                                        invalid-input-exception
                                        no-such-entity-exception))

(smithy/sdk/operation:define-operation list-assessment-targets :shape-name
                                       "ListAssessmentTargets" :input
                                       list-assessment-targets-request :output
                                       list-assessment-targets-response :errors
                                       (access-denied-exception
                                        internal-exception
                                        invalid-input-exception))

(smithy/sdk/operation:define-operation list-assessment-templates :shape-name
                                       "ListAssessmentTemplates" :input
                                       list-assessment-templates-request
                                       :output
                                       list-assessment-templates-response
                                       :errors
                                       (access-denied-exception
                                        internal-exception
                                        invalid-input-exception
                                        no-such-entity-exception))

(smithy/sdk/operation:define-operation list-event-subscriptions :shape-name
                                       "ListEventSubscriptions" :input
                                       list-event-subscriptions-request :output
                                       list-event-subscriptions-response
                                       :errors
                                       (access-denied-exception
                                        internal-exception
                                        invalid-input-exception
                                        no-such-entity-exception))

(smithy/sdk/operation:define-operation list-exclusions :shape-name
                                       "ListExclusions" :input
                                       list-exclusions-request :output
                                       list-exclusions-response :errors
                                       (access-denied-exception
                                        internal-exception
                                        invalid-input-exception
                                        no-such-entity-exception))

(smithy/sdk/operation:define-operation list-findings :shape-name "ListFindings"
                                       :input list-findings-request :output
                                       list-findings-response :errors
                                       (access-denied-exception
                                        internal-exception
                                        invalid-input-exception
                                        no-such-entity-exception))

(smithy/sdk/operation:define-operation list-rules-packages :shape-name
                                       "ListRulesPackages" :input
                                       list-rules-packages-request :output
                                       list-rules-packages-response :errors
                                       (access-denied-exception
                                        internal-exception
                                        invalid-input-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-exception
                                        invalid-input-exception
                                        no-such-entity-exception))

(smithy/sdk/operation:define-operation preview-agents :shape-name
                                       "PreviewAgents" :input
                                       preview-agents-request :output
                                       preview-agents-response :errors
                                       (access-denied-exception
                                        internal-exception
                                        invalid-cross-account-role-exception
                                        invalid-input-exception
                                        no-such-entity-exception))

(smithy/sdk/operation:define-operation register-cross-account-access-role
                                       :shape-name
                                       "RegisterCrossAccountAccessRole" :input
                                       register-cross-account-access-role-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        internal-exception
                                        invalid-cross-account-role-exception
                                        invalid-input-exception
                                        service-temporarily-unavailable-exception))

(smithy/sdk/operation:define-operation remove-attributes-from-findings
                                       :shape-name
                                       "RemoveAttributesFromFindings" :input
                                       remove-attributes-from-findings-request
                                       :output
                                       remove-attributes-from-findings-response
                                       :errors
                                       (access-denied-exception
                                        internal-exception
                                        invalid-input-exception
                                        no-such-entity-exception
                                        service-temporarily-unavailable-exception))

(smithy/sdk/operation:define-operation set-tags-for-resource :shape-name
                                       "SetTagsForResource" :input
                                       set-tags-for-resource-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-exception
                                        invalid-input-exception
                                        no-such-entity-exception
                                        service-temporarily-unavailable-exception))

(smithy/sdk/operation:define-operation start-assessment-run :shape-name
                                       "StartAssessmentRun" :input
                                       start-assessment-run-request :output
                                       start-assessment-run-response :errors
                                       (access-denied-exception
                                        agents-already-running-assessment-exception
                                        internal-exception
                                        invalid-cross-account-role-exception
                                        invalid-input-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-temporarily-unavailable-exception))

(smithy/sdk/operation:define-operation stop-assessment-run :shape-name
                                       "StopAssessmentRun" :input
                                       stop-assessment-run-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-exception
                                        invalid-input-exception
                                        no-such-entity-exception
                                        service-temporarily-unavailable-exception))

(smithy/sdk/operation:define-operation subscribe-to-event :shape-name
                                       "SubscribeToEvent" :input
                                       subscribe-to-event-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-exception
                                        invalid-input-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-temporarily-unavailable-exception))

(smithy/sdk/operation:define-operation unsubscribe-from-event :shape-name
                                       "UnsubscribeFromEvent" :input
                                       unsubscribe-from-event-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-exception
                                        invalid-input-exception
                                        no-such-entity-exception
                                        service-temporarily-unavailable-exception))

(smithy/sdk/operation:define-operation update-assessment-target :shape-name
                                       "UpdateAssessmentTarget" :input
                                       update-assessment-target-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-exception
                                        invalid-input-exception
                                        no-such-entity-exception
                                        service-temporarily-unavailable-exception))
