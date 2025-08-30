(uiop/package:define-package #:pira/evidently (:use)
                             (:export #:access-denied-exception
                              #:app-config-resource-id #:arn
                              #:batch-evaluate-feature
                              #:batch-evaluate-feature-request
                              #:batch-evaluate-feature-response
                              #:change-direction-enum
                              #:cloud-watch-logs-destination
                              #:cloud-watch-logs-destination-config
                              #:conflict-exception #:create-experiment
                              #:create-experiment-request
                              #:create-experiment-response #:create-feature
                              #:create-feature-request
                              #:create-feature-response #:create-launch
                              #:create-launch-request #:create-launch-response
                              #:create-project #:create-project-request
                              #:create-project-response #:create-segment
                              #:create-segment-request
                              #:create-segment-response
                              #:cw-dimension-safe-name #:cw-log-group-safe-name
                              #:delete-experiment #:delete-experiment-request
                              #:delete-experiment-response #:delete-feature
                              #:delete-feature-request
                              #:delete-feature-response #:delete-launch
                              #:delete-launch-request #:delete-launch-response
                              #:delete-project #:delete-project-request
                              #:delete-project-response #:delete-segment
                              #:delete-segment-request
                              #:delete-segment-response #:description
                              #:double-value-list #:entity-id
                              #:entity-override-map #:error-code-enum
                              #:error-message #:evaluate-feature
                              #:evaluate-feature-request
                              #:evaluate-feature-response #:evaluation-request
                              #:evaluation-requests-list #:evaluation-result
                              #:evaluation-results-list #:evaluation-rule
                              #:evaluation-rules-list #:event #:event-list
                              #:event-type #:evidently #:experiment
                              #:experiment-arn #:experiment-base-stat
                              #:experiment-execution #:experiment-list
                              #:experiment-name #:experiment-report
                              #:experiment-report-list #:experiment-report-name
                              #:experiment-report-name-list
                              #:experiment-resource
                              #:experiment-result-request-type
                              #:experiment-result-request-type-list
                              #:experiment-result-response-type
                              #:experiment-results-data
                              #:experiment-results-data-list
                              #:experiment-schedule #:experiment-status
                              #:experiment-stop-desired-state #:experiment-type
                              #:feature #:feature-arn
                              #:feature-evaluation-strategy #:feature-name
                              #:feature-resource #:feature-status
                              #:feature-summaries-list #:feature-summary
                              #:feature-to-variation-map #:get-experiment
                              #:get-experiment-request
                              #:get-experiment-response
                              #:get-experiment-results
                              #:get-experiment-results-request
                              #:get-experiment-results-response #:get-feature
                              #:get-feature-request #:get-feature-response
                              #:get-launch #:get-launch-request
                              #:get-launch-response #:get-project
                              #:get-project-request #:get-project-response
                              #:get-segment #:get-segment-request
                              #:get-segment-response #:group-name
                              #:group-to-weight-map #:internal-server-exception
                              #:json-path #:json-value #:launch #:launch-arn
                              #:launch-execution #:launch-group
                              #:launch-group-config #:launch-group-config-list
                              #:launch-group-list #:launch-name
                              #:launch-resource #:launch-status
                              #:launch-stop-desired-state #:launch-type
                              #:launches-list #:list-experiments
                              #:list-experiments-request
                              #:list-experiments-response #:list-features
                              #:list-features-request #:list-features-response
                              #:list-launches #:list-launches-request
                              #:list-launches-response #:list-projects
                              #:list-projects-request #:list-projects-response
                              #:list-segment-references
                              #:list-segment-references-request
                              #:list-segment-references-response
                              #:list-segments #:list-segments-request
                              #:list-segments-response #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:max-experiments #:max-features #:max-launches
                              #:max-projects #:max-references #:max-segments
                              #:metric-definition #:metric-definition-config
                              #:metric-goal #:metric-goal-config
                              #:metric-goal-config-list #:metric-goals-list
                              #:metric-monitor #:metric-monitor-config
                              #:metric-monitor-config-list
                              #:metric-monitor-list #:metric-name-list
                              #:metric-unit-label #:next-token
                              #:online-ab-config #:online-ab-definition
                              #:project #:project-app-config-resource
                              #:project-app-config-resource-config
                              #:project-arn #:project-data-delivery
                              #:project-data-delivery-config #:project-name
                              #:project-ref #:project-resource #:project-status
                              #:project-summaries-list #:project-summary
                              #:put-project-events #:put-project-events-request
                              #:put-project-events-response
                              #:put-project-events-result-entry
                              #:put-project-events-result-entry-list
                              #:randomization-salt #:ref-resource
                              #:ref-resource-list
                              #:resource-not-found-exception #:results-period
                              #:rule-name #:rule-type #:s3bucket-safe-name
                              #:s3destination #:s3destination-config
                              #:s3prefix-safe-name #:scheduled-split
                              #:scheduled-split-config
                              #:scheduled-split-config-list
                              #:scheduled-splits-launch-config
                              #:scheduled-splits-launch-definition
                              #:scheduled-step-list #:segment #:segment-arn
                              #:segment-list #:segment-name #:segment-override
                              #:segment-overrides-list #:segment-pattern
                              #:segment-ref #:segment-reference-resource-type
                              #:segment-resource
                              #:service-quota-exceeded-exception
                              #:service-unavailable-exception #:split-weight
                              #:start-experiment #:start-experiment-request
                              #:start-experiment-response #:start-launch
                              #:start-launch-request #:start-launch-response
                              #:stop-experiment #:stop-experiment-request
                              #:stop-experiment-response #:stop-launch
                              #:stop-launch-request #:stop-launch-response
                              #:tag-key #:tag-key-list #:tag-map #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:test-segment-pattern
                              #:test-segment-pattern-request
                              #:test-segment-pattern-response
                              #:throttling-exception #:timestamp-list
                              #:treatment #:treatment-config
                              #:treatment-config-list #:treatment-list
                              #:treatment-name #:treatment-name-list
                              #:treatment-to-weight-map #:untag-resource
                              #:untag-resource-request
                              #:untag-resource-response #:update-experiment
                              #:update-experiment-request
                              #:update-experiment-response #:update-feature
                              #:update-feature-request
                              #:update-feature-response #:update-launch
                              #:update-launch-request #:update-launch-response
                              #:update-project #:update-project-data-delivery
                              #:update-project-data-delivery-request
                              #:update-project-data-delivery-response
                              #:update-project-request
                              #:update-project-response #:uuid
                              #:validation-exception
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason #:variable-value
                              #:variation #:variation-config
                              #:variation-configs-list #:variation-name
                              #:variation-name-list #:variation-value-type
                              #:variations-list #:evidently-error))
(common-lisp:in-package #:pira/evidently)

(common-lisp:define-condition evidently-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service evidently :shape-name "Evidently" :version
                                   "2021-02-01" :title
                                   "Amazon CloudWatch Evidently" :operations
                                   '(list-tags-for-resource tag-resource
                                     test-segment-pattern untag-resource)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "Evidently")
                                      ("arnNamespace" . "evidently"))
                                     ("aws.auth#sigv4" ("name" . "evidently"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403) (:base-class evidently-error))

(smithy/sdk/shapes:define-type app-config-resource-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input batch-evaluate-feature-request common-lisp:nil
                                ((project :target-type project-ref :required
                                  common-lisp:t :member-name "project"
                                  :http-label common-lisp:t)
                                 (requests :target-type
                                  evaluation-requests-list :required
                                  common-lisp:t :member-name "requests"))
                                (:shape-name "BatchEvaluateFeatureRequest"))

(smithy/sdk/shapes:define-structure batch-evaluate-feature-response
                                    common-lisp:nil
                                    ((results :target-type
                                      evaluation-results-list :member-name
                                      "results"))
                                    (:shape-name
                                     "BatchEvaluateFeatureResponse"))

(smithy/sdk/shapes:define-type change-direction-enum
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cloud-watch-logs-destination
                                    common-lisp:nil
                                    ((log-group :target-type
                                      cw-log-group-safe-name :member-name
                                      "logGroup"))
                                    (:shape-name "CloudWatchLogsDestination"))

(smithy/sdk/shapes:define-structure cloud-watch-logs-destination-config
                                    common-lisp:nil
                                    ((log-group :target-type
                                      cw-log-group-safe-name :member-name
                                      "logGroup"))
                                    (:shape-name
                                     "CloudWatchLogsDestinationConfig"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409) (:base-class evidently-error))

(smithy/sdk/shapes:define-input create-experiment-request common-lisp:nil
                                ((project :target-type project-ref :required
                                  common-lisp:t :member-name "project"
                                  :http-label common-lisp:t)
                                 (name :target-type experiment-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (treatments :target-type treatment-config-list
                                  :required common-lisp:t :member-name
                                  "treatments")
                                 (metric-goals :target-type
                                  metric-goal-config-list :required
                                  common-lisp:t :member-name "metricGoals")
                                 (randomization-salt :target-type
                                  randomization-salt :member-name
                                  "randomizationSalt")
                                 (sampling-rate :target-type split-weight
                                  :member-name "samplingRate")
                                 (online-ab-config :target-type
                                  online-ab-config :member-name
                                  "onlineAbConfig")
                                 (segment :target-type segment-ref :member-name
                                  "segment")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateExperimentRequest"))

(smithy/sdk/shapes:define-structure create-experiment-response common-lisp:nil
                                    ((experiment :target-type experiment
                                      :required common-lisp:t :member-name
                                      "experiment"))
                                    (:shape-name "CreateExperimentResponse"))

(smithy/sdk/shapes:define-input create-feature-request common-lisp:nil
                                ((project :target-type project-ref :required
                                  common-lisp:t :member-name "project"
                                  :http-label common-lisp:t)
                                 (name :target-type feature-name :required
                                  common-lisp:t :member-name "name")
                                 (evaluation-strategy :target-type
                                  feature-evaluation-strategy :member-name
                                  "evaluationStrategy")
                                 (description :target-type description
                                  :member-name "description")
                                 (variations :target-type
                                  variation-configs-list :required
                                  common-lisp:t :member-name "variations")
                                 (default-variation :target-type variation-name
                                  :member-name "defaultVariation")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (entity-overrides :target-type
                                  entity-override-map :member-name
                                  "entityOverrides"))
                                (:shape-name "CreateFeatureRequest"))

(smithy/sdk/shapes:define-structure create-feature-response common-lisp:nil
                                    ((feature :target-type feature :member-name
                                      "feature"))
                                    (:shape-name "CreateFeatureResponse"))

(smithy/sdk/shapes:define-input create-launch-request common-lisp:nil
                                ((project :target-type project-ref :required
                                  common-lisp:t :member-name "project"
                                  :http-label common-lisp:t)
                                 (name :target-type launch-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (scheduled-splits-config :target-type
                                  scheduled-splits-launch-config :member-name
                                  "scheduledSplitsConfig")
                                 (metric-monitors :target-type
                                  metric-monitor-config-list :member-name
                                  "metricMonitors")
                                 (groups :target-type launch-group-config-list
                                  :required common-lisp:t :member-name
                                  "groups")
                                 (randomization-salt :target-type
                                  randomization-salt :member-name
                                  "randomizationSalt")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateLaunchRequest"))

(smithy/sdk/shapes:define-structure create-launch-response common-lisp:nil
                                    ((launch :target-type launch :required
                                      common-lisp:t :member-name "launch"))
                                    (:shape-name "CreateLaunchResponse"))

(smithy/sdk/shapes:define-structure create-project-request common-lisp:nil
                                    ((name :target-type project-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (data-delivery :target-type
                                      project-data-delivery-config :member-name
                                      "dataDelivery")
                                     (app-config-resource :target-type
                                      project-app-config-resource-config
                                      :member-name "appConfigResource")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "CreateProjectRequest"))

(smithy/sdk/shapes:define-structure create-project-response common-lisp:nil
                                    ((project :target-type project :required
                                      common-lisp:t :member-name "project"))
                                    (:shape-name "CreateProjectResponse"))

(smithy/sdk/shapes:define-structure create-segment-request common-lisp:nil
                                    ((name :target-type segment-name :required
                                      common-lisp:t :member-name "name")
                                     (pattern :target-type segment-pattern
                                      :required common-lisp:t :member-name
                                      "pattern")
                                     (description :target-type description
                                      :member-name "description")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "CreateSegmentRequest"))

(smithy/sdk/shapes:define-structure create-segment-response common-lisp:nil
                                    ((segment :target-type segment :required
                                      common-lisp:t :member-name "segment"))
                                    (:shape-name "CreateSegmentResponse"))

(smithy/sdk/shapes:define-type cw-dimension-safe-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type cw-log-group-safe-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-experiment-request common-lisp:nil
                                ((project :target-type project-ref :required
                                  common-lisp:t :member-name "project"
                                  :http-label common-lisp:t)
                                 (experiment :target-type experiment-name
                                  :required common-lisp:t :member-name
                                  "experiment" :http-label common-lisp:t))
                                (:shape-name "DeleteExperimentRequest"))

(smithy/sdk/shapes:define-structure delete-experiment-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteExperimentResponse"))

(smithy/sdk/shapes:define-input delete-feature-request common-lisp:nil
                                ((project :target-type project-ref :required
                                  common-lisp:t :member-name "project"
                                  :http-label common-lisp:t)
                                 (feature :target-type feature-name :required
                                  common-lisp:t :member-name "feature"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteFeatureRequest"))

(smithy/sdk/shapes:define-structure delete-feature-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteFeatureResponse"))

(smithy/sdk/shapes:define-input delete-launch-request common-lisp:nil
                                ((project :target-type project-ref :required
                                  common-lisp:t :member-name "project"
                                  :http-label common-lisp:t)
                                 (launch :target-type launch-name :required
                                  common-lisp:t :member-name "launch"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteLaunchRequest"))

(smithy/sdk/shapes:define-structure delete-launch-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteLaunchResponse"))

(smithy/sdk/shapes:define-input delete-project-request common-lisp:nil
                                ((project :target-type project-ref :required
                                  common-lisp:t :member-name "project"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteProjectRequest"))

(smithy/sdk/shapes:define-structure delete-project-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteProjectResponse"))

(smithy/sdk/shapes:define-input delete-segment-request common-lisp:nil
                                ((segment :target-type segment-ref :required
                                  common-lisp:t :member-name "segment"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteSegmentRequest"))

(smithy/sdk/shapes:define-structure delete-segment-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteSegmentResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list double-value-list :member
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type entity-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map entity-override-map :key entity-id :value
                              variation-name)

(smithy/sdk/shapes:define-type error-code-enum smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input evaluate-feature-request common-lisp:nil
                                ((project :target-type project-ref :required
                                  common-lisp:t :member-name "project"
                                  :http-label common-lisp:t)
                                 (feature :target-type feature-name :required
                                  common-lisp:t :member-name "feature"
                                  :http-label common-lisp:t)
                                 (entity-id :target-type entity-id :required
                                  common-lisp:t :member-name "entityId")
                                 (evaluation-context :target-type json-value
                                  :member-name "evaluationContext"))
                                (:shape-name "EvaluateFeatureRequest"))

(smithy/sdk/shapes:define-structure evaluate-feature-response common-lisp:nil
                                    ((variation :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "variation")
                                     (value :target-type variable-value
                                      :member-name "value")
                                     (reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "reason")
                                     (details :target-type json-value
                                      :member-name "details"))
                                    (:shape-name "EvaluateFeatureResponse"))

(smithy/sdk/shapes:define-structure evaluation-request common-lisp:nil
                                    ((feature :target-type feature-name
                                      :required common-lisp:t :member-name
                                      "feature")
                                     (entity-id :target-type entity-id
                                      :required common-lisp:t :member-name
                                      "entityId")
                                     (evaluation-context :target-type
                                      json-value :member-name
                                      "evaluationContext"))
                                    (:shape-name "EvaluationRequest"))

(smithy/sdk/shapes:define-list evaluation-requests-list :member
                               evaluation-request)

(smithy/sdk/shapes:define-structure evaluation-result common-lisp:nil
                                    ((project :target-type arn :member-name
                                      "project")
                                     (feature :target-type feature-name
                                      :required common-lisp:t :member-name
                                      "feature")
                                     (variation :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "variation")
                                     (value :target-type variable-value
                                      :member-name "value")
                                     (entity-id :target-type entity-id
                                      :required common-lisp:t :member-name
                                      "entityId")
                                     (reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "reason")
                                     (details :target-type json-value
                                      :member-name "details"))
                                    (:shape-name "EvaluationResult"))

(smithy/sdk/shapes:define-list evaluation-results-list :member
                               evaluation-result)

(smithy/sdk/shapes:define-structure evaluation-rule common-lisp:nil
                                    ((name :target-type rule-name :member-name
                                      "name")
                                     (type :target-type rule-type :required
                                      common-lisp:t :member-name "type"))
                                    (:shape-name "EvaluationRule"))

(smithy/sdk/shapes:define-list evaluation-rules-list :member evaluation-rule)

(smithy/sdk/shapes:define-structure event common-lisp:nil
                                    ((timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "timestamp")
                                     (type :target-type event-type :required
                                      common-lisp:t :member-name "type")
                                     (data :target-type json-value :required
                                      common-lisp:t :member-name "data"))
                                    (:shape-name "Event"))

(smithy/sdk/shapes:define-list event-list :member event)

(smithy/sdk/shapes:define-type event-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure experiment common-lisp:nil
                                    ((arn :target-type experiment-arn :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type experiment-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (project :target-type project-arn
                                      :member-name "project")
                                     (status :target-type experiment-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (status-reason :target-type description
                                      :member-name "statusReason")
                                     (description :target-type description
                                      :member-name "description")
                                     (created-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdTime")
                                     (last-updated-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastUpdatedTime")
                                     (schedule :target-type experiment-schedule
                                      :member-name "schedule")
                                     (execution :target-type
                                      experiment-execution :member-name
                                      "execution")
                                     (treatments :target-type treatment-list
                                      :member-name "treatments")
                                     (metric-goals :target-type
                                      metric-goals-list :member-name
                                      "metricGoals")
                                     (randomization-salt :target-type
                                      randomization-salt :member-name
                                      "randomizationSalt")
                                     (sampling-rate :target-type split-weight
                                      :member-name "samplingRate")
                                     (segment :target-type segment-arn
                                      :member-name "segment")
                                     (type :target-type experiment-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (online-ab-definition :target-type
                                      online-ab-definition :member-name
                                      "onlineAbDefinition")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "Experiment"))

(smithy/sdk/shapes:define-type experiment-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type experiment-base-stat
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure experiment-execution common-lisp:nil
                                    ((started-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "startedTime")
                                     (ended-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "endedTime"))
                                    (:shape-name "ExperimentExecution"))

(smithy/sdk/shapes:define-list experiment-list :member experiment)

(smithy/sdk/shapes:define-type experiment-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure experiment-report common-lisp:nil
                                    ((metric-name :target-type
                                      cw-dimension-safe-name :member-name
                                      "metricName")
                                     (treatment-name :target-type
                                      treatment-name :member-name
                                      "treatmentName")
                                     (report-name :target-type
                                      experiment-report-name :member-name
                                      "reportName")
                                     (content :target-type json-value
                                      :member-name "content"))
                                    (:shape-name "ExperimentReport"))

(smithy/sdk/shapes:define-list experiment-report-list :member experiment-report)

(smithy/sdk/shapes:define-type experiment-report-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list experiment-report-name-list :member
                               experiment-report-name)

common-lisp:nil

(smithy/sdk/shapes:define-type experiment-result-request-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list experiment-result-request-type-list :member
                               experiment-result-request-type)

(smithy/sdk/shapes:define-type experiment-result-response-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure experiment-results-data common-lisp:nil
                                    ((metric-name :target-type
                                      cw-dimension-safe-name :member-name
                                      "metricName")
                                     (treatment-name :target-type
                                      treatment-name :member-name
                                      "treatmentName")
                                     (result-stat :target-type
                                      experiment-result-response-type
                                      :member-name "resultStat")
                                     (values :target-type double-value-list
                                      :member-name "values"))
                                    (:shape-name "ExperimentResultsData"))

(smithy/sdk/shapes:define-list experiment-results-data-list :member
                               experiment-results-data)

(smithy/sdk/shapes:define-structure experiment-schedule common-lisp:nil
                                    ((analysis-complete-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "analysisCompleteTime"))
                                    (:shape-name "ExperimentSchedule"))

(smithy/sdk/shapes:define-type experiment-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type experiment-stop-desired-state
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type experiment-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure feature common-lisp:nil
                                    ((arn :target-type feature-arn :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type feature-name :required
                                      common-lisp:t :member-name "name")
                                     (project :target-type project-arn
                                      :member-name "project")
                                     (status :target-type feature-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (created-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdTime")
                                     (last-updated-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastUpdatedTime")
                                     (description :target-type description
                                      :member-name "description")
                                     (evaluation-strategy :target-type
                                      feature-evaluation-strategy :required
                                      common-lisp:t :member-name
                                      "evaluationStrategy")
                                     (value-type :target-type
                                      variation-value-type :required
                                      common-lisp:t :member-name "valueType")
                                     (variations :target-type variations-list
                                      :required common-lisp:t :member-name
                                      "variations")
                                     (default-variation :target-type
                                      variation-name :member-name
                                      "defaultVariation")
                                     (evaluation-rules :target-type
                                      evaluation-rules-list :member-name
                                      "evaluationRules")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (entity-overrides :target-type
                                      entity-override-map :member-name
                                      "entityOverrides"))
                                    (:shape-name "Feature"))

(smithy/sdk/shapes:define-type feature-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type feature-evaluation-strategy
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type feature-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type feature-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list feature-summaries-list :member feature-summary)

(smithy/sdk/shapes:define-structure feature-summary common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type feature-name :required
                                      common-lisp:t :member-name "name")
                                     (project :target-type project-ref
                                      :member-name "project")
                                     (status :target-type feature-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (created-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdTime")
                                     (last-updated-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastUpdatedTime")
                                     (evaluation-strategy :target-type
                                      feature-evaluation-strategy :required
                                      common-lisp:t :member-name
                                      "evaluationStrategy")
                                     (evaluation-rules :target-type
                                      evaluation-rules-list :member-name
                                      "evaluationRules")
                                     (default-variation :target-type
                                      variation-name :member-name
                                      "defaultVariation")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "FeatureSummary"))

(smithy/sdk/shapes:define-map feature-to-variation-map :key feature-name :value
                              variation-name)

(smithy/sdk/shapes:define-input get-experiment-request common-lisp:nil
                                ((project :target-type project-ref :required
                                  common-lisp:t :member-name "project"
                                  :http-label common-lisp:t)
                                 (experiment :target-type experiment-name
                                  :required common-lisp:t :member-name
                                  "experiment" :http-label common-lisp:t))
                                (:shape-name "GetExperimentRequest"))

(smithy/sdk/shapes:define-structure get-experiment-response common-lisp:nil
                                    ((experiment :target-type experiment
                                      :member-name "experiment"))
                                    (:shape-name "GetExperimentResponse"))

(smithy/sdk/shapes:define-input get-experiment-results-request common-lisp:nil
                                ((project :target-type project-ref :required
                                  common-lisp:t :member-name "project"
                                  :http-label common-lisp:t)
                                 (experiment :target-type experiment-name
                                  :required common-lisp:t :member-name
                                  "experiment" :http-label common-lisp:t)
                                 (start-time :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "startTime")
                                 (end-time :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "endTime")
                                 (metric-names :target-type metric-name-list
                                  :required common-lisp:t :member-name
                                  "metricNames")
                                 (treatment-names :target-type
                                  treatment-name-list :required common-lisp:t
                                  :member-name "treatmentNames")
                                 (base-stat :target-type experiment-base-stat
                                  :member-name "baseStat")
                                 (result-stats :target-type
                                  experiment-result-request-type-list
                                  :member-name "resultStats")
                                 (report-names :target-type
                                  experiment-report-name-list :member-name
                                  "reportNames")
                                 (period :target-type results-period
                                  :member-name "period"))
                                (:shape-name "GetExperimentResultsRequest"))

(smithy/sdk/shapes:define-structure get-experiment-results-response
                                    common-lisp:nil
                                    ((results-data :target-type
                                      experiment-results-data-list :member-name
                                      "resultsData")
                                     (reports :target-type
                                      experiment-report-list :member-name
                                      "reports")
                                     (timestamps :target-type timestamp-list
                                      :member-name "timestamps")
                                     (details :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "details"))
                                    (:shape-name
                                     "GetExperimentResultsResponse"))

(smithy/sdk/shapes:define-input get-feature-request common-lisp:nil
                                ((project :target-type project-ref :required
                                  common-lisp:t :member-name "project"
                                  :http-label common-lisp:t)
                                 (feature :target-type feature-name :required
                                  common-lisp:t :member-name "feature"
                                  :http-label common-lisp:t))
                                (:shape-name "GetFeatureRequest"))

(smithy/sdk/shapes:define-structure get-feature-response common-lisp:nil
                                    ((feature :target-type feature :required
                                      common-lisp:t :member-name "feature"))
                                    (:shape-name "GetFeatureResponse"))

(smithy/sdk/shapes:define-input get-launch-request common-lisp:nil
                                ((project :target-type project-ref :required
                                  common-lisp:t :member-name "project"
                                  :http-label common-lisp:t)
                                 (launch :target-type launch-name :required
                                  common-lisp:t :member-name "launch"
                                  :http-label common-lisp:t))
                                (:shape-name "GetLaunchRequest"))

(smithy/sdk/shapes:define-structure get-launch-response common-lisp:nil
                                    ((launch :target-type launch :member-name
                                      "launch"))
                                    (:shape-name "GetLaunchResponse"))

(smithy/sdk/shapes:define-input get-project-request common-lisp:nil
                                ((project :target-type project-ref :required
                                  common-lisp:t :member-name "project"
                                  :http-label common-lisp:t))
                                (:shape-name "GetProjectRequest"))

(smithy/sdk/shapes:define-structure get-project-response common-lisp:nil
                                    ((project :target-type project :required
                                      common-lisp:t :member-name "project"))
                                    (:shape-name "GetProjectResponse"))

(smithy/sdk/shapes:define-input get-segment-request common-lisp:nil
                                ((segment :target-type segment-ref :required
                                  common-lisp:t :member-name "segment"
                                  :http-label common-lisp:t))
                                (:shape-name "GetSegmentRequest"))

(smithy/sdk/shapes:define-structure get-segment-response common-lisp:nil
                                    ((segment :target-type segment :required
                                      common-lisp:t :member-name "segment"))
                                    (:shape-name "GetSegmentResponse"))

(smithy/sdk/shapes:define-type group-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map group-to-weight-map :key group-name :value
                              split-weight)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500) (:base-class evidently-error))

(smithy/sdk/shapes:define-type json-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type json-value smithy/sdk/smithy-types:string
                               :media-type "application/json")

(smithy/sdk/shapes:define-structure launch common-lisp:nil
                                    ((arn :target-type launch-arn :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type launch-name :required
                                      common-lisp:t :member-name "name")
                                     (project :target-type project-ref
                                      :member-name "project")
                                     (status :target-type launch-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (status-reason :target-type description
                                      :member-name "statusReason")
                                     (description :target-type description
                                      :member-name "description")
                                     (created-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdTime")
                                     (last-updated-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastUpdatedTime")
                                     (execution :target-type launch-execution
                                      :member-name "execution")
                                     (groups :target-type launch-group-list
                                      :member-name "groups")
                                     (metric-monitors :target-type
                                      metric-monitor-list :member-name
                                      "metricMonitors")
                                     (randomization-salt :target-type
                                      randomization-salt :member-name
                                      "randomizationSalt")
                                     (type :target-type launch-type :required
                                      common-lisp:t :member-name "type")
                                     (scheduled-splits-definition :target-type
                                      scheduled-splits-launch-definition
                                      :member-name "scheduledSplitsDefinition")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "Launch"))

(smithy/sdk/shapes:define-type launch-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure launch-execution common-lisp:nil
                                    ((started-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "startedTime")
                                     (ended-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "endedTime"))
                                    (:shape-name "LaunchExecution"))

(smithy/sdk/shapes:define-structure launch-group common-lisp:nil
                                    ((name :target-type group-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (feature-variations :target-type
                                      feature-to-variation-map :required
                                      common-lisp:t :member-name
                                      "featureVariations"))
                                    (:shape-name "LaunchGroup"))

(smithy/sdk/shapes:define-structure launch-group-config common-lisp:nil
                                    ((name :target-type group-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (feature :target-type feature-name
                                      :required common-lisp:t :member-name
                                      "feature")
                                     (variation :target-type variation-name
                                      :required common-lisp:t :member-name
                                      "variation"))
                                    (:shape-name "LaunchGroupConfig"))

(smithy/sdk/shapes:define-list launch-group-config-list :member
                               launch-group-config)

(smithy/sdk/shapes:define-list launch-group-list :member launch-group)

(smithy/sdk/shapes:define-type launch-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type launch-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type launch-stop-desired-state
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type launch-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list launches-list :member launch)

(smithy/sdk/shapes:define-input list-experiments-request common-lisp:nil
                                ((project :target-type project-ref :required
                                  common-lisp:t :member-name "project"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-experiments
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (status :target-type experiment-status
                                  :member-name "status" :http-query "status"))
                                (:shape-name "ListExperimentsRequest"))

(smithy/sdk/shapes:define-structure list-experiments-response common-lisp:nil
                                    ((experiments :target-type experiment-list
                                      :member-name "experiments")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListExperimentsResponse"))

(smithy/sdk/shapes:define-input list-features-request common-lisp:nil
                                ((project :target-type project-ref :required
                                  common-lisp:t :member-name "project"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-features
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListFeaturesRequest"))

(smithy/sdk/shapes:define-structure list-features-response common-lisp:nil
                                    ((features :target-type
                                      feature-summaries-list :member-name
                                      "features")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListFeaturesResponse"))

(smithy/sdk/shapes:define-input list-launches-request common-lisp:nil
                                ((project :target-type project-ref :required
                                  common-lisp:t :member-name "project"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-launches
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (status :target-type launch-status
                                  :member-name "status" :http-query "status"))
                                (:shape-name "ListLaunchesRequest"))

(smithy/sdk/shapes:define-structure list-launches-response common-lisp:nil
                                    ((launches :target-type launches-list
                                      :member-name "launches")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListLaunchesResponse"))

(smithy/sdk/shapes:define-input list-projects-request common-lisp:nil
                                ((max-results :target-type max-projects
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListProjectsRequest"))

(smithy/sdk/shapes:define-structure list-projects-response common-lisp:nil
                                    ((projects :target-type
                                      project-summaries-list :member-name
                                      "projects")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListProjectsResponse"))

(smithy/sdk/shapes:define-input list-segment-references-request common-lisp:nil
                                ((segment :target-type segment-ref :required
                                  common-lisp:t :member-name "segment"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-references
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (type :target-type
                                  segment-reference-resource-type :required
                                  common-lisp:t :member-name "type" :http-query
                                  "type"))
                                (:shape-name "ListSegmentReferencesRequest"))

(smithy/sdk/shapes:define-structure list-segment-references-response
                                    common-lisp:nil
                                    ((referenced-by :target-type
                                      ref-resource-list :member-name
                                      "referencedBy")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListSegmentReferencesResponse"))

(smithy/sdk/shapes:define-input list-segments-request common-lisp:nil
                                ((max-results :target-type max-segments
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListSegmentsRequest"))

(smithy/sdk/shapes:define-structure list-segments-response common-lisp:nil
                                    ((segments :target-type segment-list
                                      :member-name "segments")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListSegmentsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type max-experiments smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-features smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-launches smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-projects smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-references smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-segments smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure metric-definition common-lisp:nil
                                    ((name :target-type cw-dimension-safe-name
                                      :member-name "name")
                                     (entity-id-key :target-type json-path
                                      :member-name "entityIdKey")
                                     (value-key :target-type json-path
                                      :member-name "valueKey")
                                     (event-pattern :target-type json-value
                                      :member-name "eventPattern")
                                     (unit-label :target-type metric-unit-label
                                      :member-name "unitLabel"))
                                    (:shape-name "MetricDefinition"))

(smithy/sdk/shapes:define-structure metric-definition-config common-lisp:nil
                                    ((name :target-type cw-dimension-safe-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (entity-id-key :target-type json-path
                                      :required common-lisp:t :member-name
                                      "entityIdKey")
                                     (value-key :target-type json-path
                                      :required common-lisp:t :member-name
                                      "valueKey")
                                     (event-pattern :target-type json-value
                                      :member-name "eventPattern")
                                     (unit-label :target-type metric-unit-label
                                      :member-name "unitLabel"))
                                    (:shape-name "MetricDefinitionConfig"))

(smithy/sdk/shapes:define-structure metric-goal common-lisp:nil
                                    ((metric-definition :target-type
                                      metric-definition :required common-lisp:t
                                      :member-name "metricDefinition")
                                     (desired-change :target-type
                                      change-direction-enum :member-name
                                      "desiredChange"))
                                    (:shape-name "MetricGoal"))

(smithy/sdk/shapes:define-structure metric-goal-config common-lisp:nil
                                    ((metric-definition :target-type
                                      metric-definition-config :required
                                      common-lisp:t :member-name
                                      "metricDefinition")
                                     (desired-change :target-type
                                      change-direction-enum :member-name
                                      "desiredChange"))
                                    (:shape-name "MetricGoalConfig"))

(smithy/sdk/shapes:define-list metric-goal-config-list :member
                               metric-goal-config)

(smithy/sdk/shapes:define-list metric-goals-list :member metric-goal)

(smithy/sdk/shapes:define-structure metric-monitor common-lisp:nil
                                    ((metric-definition :target-type
                                      metric-definition :required common-lisp:t
                                      :member-name "metricDefinition"))
                                    (:shape-name "MetricMonitor"))

(smithy/sdk/shapes:define-structure metric-monitor-config common-lisp:nil
                                    ((metric-definition :target-type
                                      metric-definition-config :required
                                      common-lisp:t :member-name
                                      "metricDefinition"))
                                    (:shape-name "MetricMonitorConfig"))

(smithy/sdk/shapes:define-list metric-monitor-config-list :member
                               metric-monitor-config)

(smithy/sdk/shapes:define-list metric-monitor-list :member metric-monitor)

(smithy/sdk/shapes:define-list metric-name-list :member cw-dimension-safe-name)

(smithy/sdk/shapes:define-type metric-unit-label smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure online-ab-config common-lisp:nil
                                    ((control-treatment-name :target-type
                                      treatment-name :member-name
                                      "controlTreatmentName")
                                     (treatment-weights :target-type
                                      treatment-to-weight-map :member-name
                                      "treatmentWeights"))
                                    (:shape-name "OnlineAbConfig"))

(smithy/sdk/shapes:define-structure online-ab-definition common-lisp:nil
                                    ((control-treatment-name :target-type
                                      treatment-name :member-name
                                      "controlTreatmentName")
                                     (treatment-weights :target-type
                                      treatment-to-weight-map :member-name
                                      "treatmentWeights"))
                                    (:shape-name "OnlineAbDefinition"))

(smithy/sdk/shapes:define-structure project common-lisp:nil
                                    ((arn :target-type project-arn :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type project-name :required
                                      common-lisp:t :member-name "name")
                                     (status :target-type project-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (description :target-type description
                                      :member-name "description")
                                     (created-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdTime")
                                     (last-updated-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastUpdatedTime")
                                     (feature-count :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "featureCount")
                                     (launch-count :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "launchCount")
                                     (active-launch-count :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "activeLaunchCount")
                                     (experiment-count :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "experimentCount")
                                     (active-experiment-count :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "activeExperimentCount")
                                     (data-delivery :target-type
                                      project-data-delivery :member-name
                                      "dataDelivery")
                                     (app-config-resource :target-type
                                      project-app-config-resource :member-name
                                      "appConfigResource")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "Project"))

(smithy/sdk/shapes:define-structure project-app-config-resource common-lisp:nil
                                    ((application-id :target-type
                                      app-config-resource-id :required
                                      common-lisp:t :member-name
                                      "applicationId")
                                     (environment-id :target-type
                                      app-config-resource-id :required
                                      common-lisp:t :member-name
                                      "environmentId")
                                     (configuration-profile-id :target-type
                                      app-config-resource-id :required
                                      common-lisp:t :member-name
                                      "configurationProfileId"))
                                    (:shape-name "ProjectAppConfigResource"))

(smithy/sdk/shapes:define-structure project-app-config-resource-config
                                    common-lisp:nil
                                    ((application-id :target-type
                                      app-config-resource-id :member-name
                                      "applicationId")
                                     (environment-id :target-type
                                      app-config-resource-id :member-name
                                      "environmentId"))
                                    (:shape-name
                                     "ProjectAppConfigResourceConfig"))

(smithy/sdk/shapes:define-type project-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure project-data-delivery common-lisp:nil
                                    ((s3destination :target-type s3destination
                                      :member-name "s3Destination")
                                     (cloud-watch-logs :target-type
                                      cloud-watch-logs-destination :member-name
                                      "cloudWatchLogs"))
                                    (:shape-name "ProjectDataDelivery"))

(smithy/sdk/shapes:define-structure project-data-delivery-config
                                    common-lisp:nil
                                    ((s3destination :target-type
                                      s3destination-config :member-name
                                      "s3Destination")
                                     (cloud-watch-logs :target-type
                                      cloud-watch-logs-destination-config
                                      :member-name "cloudWatchLogs"))
                                    (:shape-name "ProjectDataDeliveryConfig"))

(smithy/sdk/shapes:define-type project-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type project-ref smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type project-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list project-summaries-list :member project-summary)

(smithy/sdk/shapes:define-structure project-summary common-lisp:nil
                                    ((arn :target-type project-arn :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type project-name :required
                                      common-lisp:t :member-name "name")
                                     (status :target-type project-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (description :target-type description
                                      :member-name "description")
                                     (created-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdTime")
                                     (last-updated-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastUpdatedTime")
                                     (feature-count :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "featureCount")
                                     (launch-count :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "launchCount")
                                     (active-launch-count :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "activeLaunchCount")
                                     (experiment-count :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "experimentCount")
                                     (active-experiment-count :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "activeExperimentCount")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "ProjectSummary"))

(smithy/sdk/shapes:define-input put-project-events-request common-lisp:nil
                                ((project :target-type project-ref :required
                                  common-lisp:t :member-name "project"
                                  :http-label common-lisp:t)
                                 (events :target-type event-list :required
                                  common-lisp:t :member-name "events"))
                                (:shape-name "PutProjectEventsRequest"))

(smithy/sdk/shapes:define-structure put-project-events-response common-lisp:nil
                                    ((failed-event-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "failedEventCount")
                                     (event-results :target-type
                                      put-project-events-result-entry-list
                                      :member-name "eventResults"))
                                    (:shape-name "PutProjectEventsResponse"))

(smithy/sdk/shapes:define-structure put-project-events-result-entry
                                    common-lisp:nil
                                    ((event-id :target-type uuid :member-name
                                      "eventId")
                                     (error-code :target-type error-code-enum
                                      :member-name "errorCode")
                                     (error-message :target-type error-message
                                      :member-name "errorMessage"))
                                    (:shape-name "PutProjectEventsResultEntry"))

(smithy/sdk/shapes:define-list put-project-events-result-entry-list :member
                               put-project-events-result-entry)

(smithy/sdk/shapes:define-type randomization-salt
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ref-resource common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (type :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "type")
                                     (arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "arn")
                                     (status :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "status")
                                     (start-time :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "startTime")
                                     (end-time :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "endTime")
                                     (last-updated-on :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "lastUpdatedOn"))
                                    (:shape-name "RefResource"))

(smithy/sdk/shapes:define-list ref-resource-list :member ref-resource)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404) (:base-class evidently-error))

(smithy/sdk/shapes:define-type results-period smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type rule-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rule-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3bucket-safe-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3destination common-lisp:nil
                                    ((bucket :target-type s3bucket-safe-name
                                      :member-name "bucket")
                                     (prefix :target-type s3prefix-safe-name
                                      :member-name "prefix"))
                                    (:shape-name "S3Destination"))

(smithy/sdk/shapes:define-structure s3destination-config common-lisp:nil
                                    ((bucket :target-type s3bucket-safe-name
                                      :member-name "bucket")
                                     (prefix :target-type s3prefix-safe-name
                                      :member-name "prefix"))
                                    (:shape-name "S3DestinationConfig"))

(smithy/sdk/shapes:define-type s3prefix-safe-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure scheduled-split common-lisp:nil
                                    ((start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "startTime")
                                     (group-weights :target-type
                                      group-to-weight-map :member-name
                                      "groupWeights")
                                     (segment-overrides :target-type
                                      segment-overrides-list :member-name
                                      "segmentOverrides"))
                                    (:shape-name "ScheduledSplit"))

(smithy/sdk/shapes:define-structure scheduled-split-config common-lisp:nil
                                    ((start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "startTime")
                                     (group-weights :target-type
                                      group-to-weight-map :required
                                      common-lisp:t :member-name
                                      "groupWeights")
                                     (segment-overrides :target-type
                                      segment-overrides-list :member-name
                                      "segmentOverrides"))
                                    (:shape-name "ScheduledSplitConfig"))

(smithy/sdk/shapes:define-list scheduled-split-config-list :member
                               scheduled-split-config)

(smithy/sdk/shapes:define-structure scheduled-splits-launch-config
                                    common-lisp:nil
                                    ((steps :target-type
                                      scheduled-split-config-list :required
                                      common-lisp:t :member-name "steps"))
                                    (:shape-name "ScheduledSplitsLaunchConfig"))

(smithy/sdk/shapes:define-structure scheduled-splits-launch-definition
                                    common-lisp:nil
                                    ((steps :target-type scheduled-step-list
                                      :member-name "steps"))
                                    (:shape-name
                                     "ScheduledSplitsLaunchDefinition"))

(smithy/sdk/shapes:define-list scheduled-step-list :member scheduled-split)

(smithy/sdk/shapes:define-structure segment common-lisp:nil
                                    ((arn :target-type segment-arn :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type segment-name :required
                                      common-lisp:t :member-name "name")
                                     (pattern :target-type segment-pattern
                                      :required common-lisp:t :member-name
                                      "pattern")
                                     (created-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdTime")
                                     (last-updated-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastUpdatedTime")
                                     (description :target-type description
                                      :member-name "description")
                                     (experiment-count :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "experimentCount")
                                     (launch-count :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "launchCount")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "Segment"))

(smithy/sdk/shapes:define-type segment-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list segment-list :member segment)

(smithy/sdk/shapes:define-type segment-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure segment-override common-lisp:nil
                                    ((segment :target-type segment-ref
                                      :required common-lisp:t :member-name
                                      "segment")
                                     (evaluation-order :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name
                                      "evaluationOrder")
                                     (weights :target-type group-to-weight-map
                                      :required common-lisp:t :member-name
                                      "weights"))
                                    (:shape-name "SegmentOverride"))

(smithy/sdk/shapes:define-list segment-overrides-list :member segment-override)

(smithy/sdk/shapes:define-type segment-pattern smithy/sdk/smithy-types:string
                               :media-type "application/json")

(smithy/sdk/shapes:define-type segment-ref smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type segment-reference-resource-type
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceType")
                                 (service-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "serviceCode")
                                 (quota-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "quotaCode"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402) (:base-class evidently-error))

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503) (:base-class evidently-error))

(smithy/sdk/shapes:define-type split-weight smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-input start-experiment-request common-lisp:nil
                                ((project :target-type project-ref :required
                                  common-lisp:t :member-name "project"
                                  :http-label common-lisp:t)
                                 (experiment :target-type experiment-name
                                  :required common-lisp:t :member-name
                                  "experiment" :http-label common-lisp:t)
                                 (analysis-complete-time :target-type
                                  smithy/sdk/smithy-types:timestamp :required
                                  common-lisp:t :member-name
                                  "analysisCompleteTime"))
                                (:shape-name "StartExperimentRequest"))

(smithy/sdk/shapes:define-structure start-experiment-response common-lisp:nil
                                    ((started-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "startedTime"))
                                    (:shape-name "StartExperimentResponse"))

(smithy/sdk/shapes:define-input start-launch-request common-lisp:nil
                                ((project :target-type project-ref :required
                                  common-lisp:t :member-name "project"
                                  :http-label common-lisp:t)
                                 (launch :target-type launch-name :required
                                  common-lisp:t :member-name "launch"
                                  :http-label common-lisp:t))
                                (:shape-name "StartLaunchRequest"))

(smithy/sdk/shapes:define-structure start-launch-response common-lisp:nil
                                    ((launch :target-type launch :required
                                      common-lisp:t :member-name "launch"))
                                    (:shape-name "StartLaunchResponse"))

(smithy/sdk/shapes:define-input stop-experiment-request common-lisp:nil
                                ((project :target-type project-ref :required
                                  common-lisp:t :member-name "project"
                                  :http-label common-lisp:t)
                                 (experiment :target-type experiment-name
                                  :required common-lisp:t :member-name
                                  "experiment" :http-label common-lisp:t)
                                 (desired-state :target-type
                                  experiment-stop-desired-state :member-name
                                  "desiredState")
                                 (reason :target-type description :member-name
                                  "reason"))
                                (:shape-name "StopExperimentRequest"))

(smithy/sdk/shapes:define-structure stop-experiment-response common-lisp:nil
                                    ((ended-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "endedTime"))
                                    (:shape-name "StopExperimentResponse"))

(smithy/sdk/shapes:define-input stop-launch-request common-lisp:nil
                                ((project :target-type project-ref :required
                                  common-lisp:t :member-name "project"
                                  :http-label common-lisp:t)
                                 (launch :target-type launch-name :required
                                  common-lisp:t :member-name "launch"
                                  :http-label common-lisp:t)
                                 (desired-state :target-type
                                  launch-stop-desired-state :member-name
                                  "desiredState")
                                 (reason :target-type description :member-name
                                  "reason"))
                                (:shape-name "StopLaunchRequest"))

(smithy/sdk/shapes:define-structure stop-launch-response common-lisp:nil
                                    ((ended-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "endedTime"))
                                    (:shape-name "StopLaunchResponse"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-structure tag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure test-segment-pattern-request
                                    common-lisp:nil
                                    ((pattern :target-type segment-pattern
                                      :required common-lisp:t :member-name
                                      "pattern")
                                     (payload :target-type json-value :required
                                      common-lisp:t :member-name "payload"))
                                    (:shape-name "TestSegmentPatternRequest"))

(smithy/sdk/shapes:define-structure test-segment-pattern-response
                                    common-lisp:nil
                                    ((match :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name "match"))
                                    (:shape-name "TestSegmentPatternResponse"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message")
                                 (service-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "serviceCode")
                                 (quota-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "quotaCode"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429) (:base-class evidently-error))

(smithy/sdk/shapes:define-list timestamp-list :member
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure treatment common-lisp:nil
                                    ((name :target-type treatment-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (feature-variations :target-type
                                      feature-to-variation-map :member-name
                                      "featureVariations"))
                                    (:shape-name "Treatment"))

(smithy/sdk/shapes:define-structure treatment-config common-lisp:nil
                                    ((name :target-type treatment-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (feature :target-type feature-name
                                      :required common-lisp:t :member-name
                                      "feature")
                                     (variation :target-type variation-name
                                      :required common-lisp:t :member-name
                                      "variation"))
                                    (:shape-name "TreatmentConfig"))

(smithy/sdk/shapes:define-list treatment-config-list :member treatment-config)

(smithy/sdk/shapes:define-list treatment-list :member treatment)

(smithy/sdk/shapes:define-type treatment-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list treatment-name-list :member treatment-name)

(smithy/sdk/shapes:define-map treatment-to-weight-map :key treatment-name
                              :value split-weight)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-structure untag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-experiment-request common-lisp:nil
                                ((project :target-type project-ref :required
                                  common-lisp:t :member-name "project"
                                  :http-label common-lisp:t)
                                 (experiment :target-type experiment-name
                                  :required common-lisp:t :member-name
                                  "experiment" :http-label common-lisp:t)
                                 (description :target-type description
                                  :member-name "description")
                                 (treatments :target-type treatment-config-list
                                  :member-name "treatments")
                                 (metric-goals :target-type
                                  metric-goal-config-list :member-name
                                  "metricGoals")
                                 (randomization-salt :target-type
                                  randomization-salt :member-name
                                  "randomizationSalt")
                                 (sampling-rate :target-type split-weight
                                  :member-name "samplingRate")
                                 (segment :target-type segment-ref :member-name
                                  "segment")
                                 (remove-segment :target-type
                                  smithy/shapes/primitive-types:primitive-boolean
                                  :member-name "removeSegment")
                                 (online-ab-config :target-type
                                  online-ab-config :member-name
                                  "onlineAbConfig"))
                                (:shape-name "UpdateExperimentRequest"))

(smithy/sdk/shapes:define-structure update-experiment-response common-lisp:nil
                                    ((experiment :target-type experiment
                                      :required common-lisp:t :member-name
                                      "experiment"))
                                    (:shape-name "UpdateExperimentResponse"))

(smithy/sdk/shapes:define-input update-feature-request common-lisp:nil
                                ((project :target-type project-ref :required
                                  common-lisp:t :member-name "project"
                                  :http-label common-lisp:t)
                                 (feature :target-type feature-name :required
                                  common-lisp:t :member-name "feature"
                                  :http-label common-lisp:t)
                                 (evaluation-strategy :target-type
                                  feature-evaluation-strategy :member-name
                                  "evaluationStrategy")
                                 (description :target-type description
                                  :member-name "description")
                                 (add-or-update-variations :target-type
                                  variation-configs-list :member-name
                                  "addOrUpdateVariations")
                                 (remove-variations :target-type
                                  variation-name-list :member-name
                                  "removeVariations")
                                 (default-variation :target-type variation-name
                                  :member-name "defaultVariation")
                                 (entity-overrides :target-type
                                  entity-override-map :member-name
                                  "entityOverrides"))
                                (:shape-name "UpdateFeatureRequest"))

(smithy/sdk/shapes:define-structure update-feature-response common-lisp:nil
                                    ((feature :target-type feature :required
                                      common-lisp:t :member-name "feature"))
                                    (:shape-name "UpdateFeatureResponse"))

(smithy/sdk/shapes:define-input update-launch-request common-lisp:nil
                                ((project :target-type project-ref :required
                                  common-lisp:t :member-name "project"
                                  :http-label common-lisp:t)
                                 (launch :target-type launch-name :required
                                  common-lisp:t :member-name "launch"
                                  :http-label common-lisp:t)
                                 (description :target-type description
                                  :member-name "description")
                                 (groups :target-type launch-group-config-list
                                  :member-name "groups")
                                 (metric-monitors :target-type
                                  metric-monitor-config-list :member-name
                                  "metricMonitors")
                                 (randomization-salt :target-type
                                  randomization-salt :member-name
                                  "randomizationSalt")
                                 (scheduled-splits-config :target-type
                                  scheduled-splits-launch-config :member-name
                                  "scheduledSplitsConfig"))
                                (:shape-name "UpdateLaunchRequest"))

(smithy/sdk/shapes:define-structure update-launch-response common-lisp:nil
                                    ((launch :target-type launch :required
                                      common-lisp:t :member-name "launch"))
                                    (:shape-name "UpdateLaunchResponse"))

(smithy/sdk/shapes:define-input update-project-data-delivery-request
                                common-lisp:nil
                                ((project :target-type project-ref :required
                                  common-lisp:t :member-name "project"
                                  :http-label common-lisp:t)
                                 (s3destination :target-type
                                  s3destination-config :member-name
                                  "s3Destination")
                                 (cloud-watch-logs :target-type
                                  cloud-watch-logs-destination-config
                                  :member-name "cloudWatchLogs"))
                                (:shape-name
                                 "UpdateProjectDataDeliveryRequest"))

(smithy/sdk/shapes:define-structure update-project-data-delivery-response
                                    common-lisp:nil
                                    ((project :target-type project :required
                                      common-lisp:t :member-name "project"))
                                    (:shape-name
                                     "UpdateProjectDataDeliveryResponse"))

(smithy/sdk/shapes:define-input update-project-request common-lisp:nil
                                ((project :target-type project-ref :required
                                  common-lisp:t :member-name "project"
                                  :http-label common-lisp:t)
                                 (app-config-resource :target-type
                                  project-app-config-resource-config
                                  :member-name "appConfigResource")
                                 (description :target-type description
                                  :member-name "description"))
                                (:shape-name "UpdateProjectRequest"))

(smithy/sdk/shapes:define-structure update-project-response common-lisp:nil
                                    ((project :target-type project :required
                                      common-lisp:t :member-name "project"))
                                    (:shape-name "UpdateProjectResponse"))

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message")
                                 (reason :target-type
                                  validation-exception-reason :member-name
                                  "reason")
                                 (field-list :target-type
                                  validation-exception-field-list :member-name
                                  "fieldList"))
                                (:shape-name "ValidationException")
                                (:error-code 400) (:base-class evidently-error))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-type validation-exception-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union variable-value common-lisp:nil
                                ((bool-value :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "boolValue")
                                 (string-value :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "stringValue")
                                 (long-value :target-type
                                  smithy/sdk/smithy-types:long :member-name
                                  "longValue")
                                 (double-value :target-type
                                  smithy/sdk/smithy-types:double :member-name
                                  "doubleValue"))
                                (:shape-name "VariableValue"))

(smithy/sdk/shapes:define-structure variation common-lisp:nil
                                    ((name :target-type variation-name
                                      :member-name "name")
                                     (value :target-type variable-value
                                      :member-name "value"))
                                    (:shape-name "Variation"))

(smithy/sdk/shapes:define-structure variation-config common-lisp:nil
                                    ((name :target-type variation-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (value :target-type variable-value
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name "VariationConfig"))

(smithy/sdk/shapes:define-list variation-configs-list :member variation-config)

(smithy/sdk/shapes:define-type variation-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list variation-name-list :member variation-name)

(smithy/sdk/shapes:define-type variation-value-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list variations-list :member variation)

(smithy/sdk/operation:define-operation batch-evaluate-feature :shape-name
                                       "BatchEvaluateFeature" :input
                                       batch-evaluate-feature-request :output
                                       batch-evaluate-feature-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/projects/{project}/evaluations" :code
                                       200 :endpoint-host-prefix "dataplane.")

(smithy/sdk/operation:define-operation create-experiment :shape-name
                                       "CreateExperiment" :input
                                       create-experiment-request :output
                                       create-experiment-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/projects/{project}/experiments" :code
                                       200)

(smithy/sdk/operation:define-operation create-feature :shape-name
                                       "CreateFeature" :input
                                       create-feature-request :output
                                       create-feature-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/projects/{project}/features" :code 200)

(smithy/sdk/operation:define-operation create-launch :shape-name "CreateLaunch"
                                       :input create-launch-request :output
                                       create-launch-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/projects/{project}/launches" :code 200)

(smithy/sdk/operation:define-operation create-project :shape-name
                                       "CreateProject" :input
                                       create-project-request :output
                                       create-project-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/projects" :code
                                       200)

(smithy/sdk/operation:define-operation create-segment :shape-name
                                       "CreateSegment" :input
                                       create-segment-request :output
                                       create-segment-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/segments" :code
                                       200)

(smithy/sdk/operation:define-operation delete-experiment :shape-name
                                       "DeleteExperiment" :input
                                       delete-experiment-request :output
                                       delete-experiment-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/projects/{project}/experiments/{experiment}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-feature :shape-name
                                       "DeleteFeature" :input
                                       delete-feature-request :output
                                       delete-feature-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/projects/{project}/features/{feature}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-launch :shape-name "DeleteLaunch"
                                       :input delete-launch-request :output
                                       delete-launch-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/projects/{project}/launches/{launch}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-project :shape-name
                                       "DeleteProject" :input
                                       delete-project-request :output
                                       delete-project-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/projects/{project}" :code 200)

(smithy/sdk/operation:define-operation delete-segment :shape-name
                                       "DeleteSegment" :input
                                       delete-segment-request :output
                                       delete-segment-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/segments/{segment}" :code 200)

(smithy/sdk/operation:define-operation evaluate-feature :shape-name
                                       "EvaluateFeature" :input
                                       evaluate-feature-request :output
                                       evaluate-feature-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/projects/{project}/evaluations/{feature}"
                                       :code 200 :endpoint-host-prefix
                                       "dataplane.")

(smithy/sdk/operation:define-operation get-experiment :shape-name
                                       "GetExperiment" :input
                                       get-experiment-request :output
                                       get-experiment-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/projects/{project}/experiments/{experiment}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-experiment-results :shape-name
                                       "GetExperimentResults" :input
                                       get-experiment-results-request :output
                                       get-experiment-results-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/projects/{project}/experiments/{experiment}/results"
                                       :code 200)

(smithy/sdk/operation:define-operation get-feature :shape-name "GetFeature"
                                       :input get-feature-request :output
                                       get-feature-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/projects/{project}/features/{feature}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-launch :shape-name "GetLaunch"
                                       :input get-launch-request :output
                                       get-launch-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/projects/{project}/launches/{launch}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-project :shape-name "GetProject"
                                       :input get-project-request :output
                                       get-project-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/projects/{project}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-segment :shape-name "GetSegment"
                                       :input get-segment-request :output
                                       get-segment-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/segments/{segment}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-experiments :shape-name
                                       "ListExperiments" :input
                                       list-experiments-request :output
                                       list-experiments-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/projects/{project}/experiments" :code
                                       200)

(smithy/sdk/operation:define-operation list-features :shape-name "ListFeatures"
                                       :input list-features-request :output
                                       list-features-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/projects/{project}/features" :code 200)

(smithy/sdk/operation:define-operation list-launches :shape-name "ListLaunches"
                                       :input list-launches-request :output
                                       list-launches-response :errors
                                       (access-denied-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/projects/{project}/launches" :code 200)

(smithy/sdk/operation:define-operation list-projects :shape-name "ListProjects"
                                       :input list-projects-request :output
                                       list-projects-response :errors
                                       (access-denied-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/projects" :code 200)

(smithy/sdk/operation:define-operation list-segment-references :shape-name
                                       "ListSegmentReferences" :input
                                       list-segment-references-request :output
                                       list-segment-references-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/segments/{segment}/references" :code
                                       200)

(smithy/sdk/operation:define-operation list-segments :shape-name "ListSegments"
                                       :input list-segments-request :output
                                       list-segments-response :errors
                                       (access-denied-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/segments" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation put-project-events :shape-name
                                       "PutProjectEvents" :input
                                       put-project-events-request :output
                                       put-project-events-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/events/projects/{project}" :code 200
                                       :endpoint-host-prefix "dataplane.")

(smithy/sdk/operation:define-operation start-experiment :shape-name
                                       "StartExperiment" :input
                                       start-experiment-request :output
                                       start-experiment-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/projects/{project}/experiments/{experiment}/start"
                                       :code 200)

(smithy/sdk/operation:define-operation start-launch :shape-name "StartLaunch"
                                       :input start-launch-request :output
                                       start-launch-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/projects/{project}/launches/{launch}/start"
                                       :code 200)

(smithy/sdk/operation:define-operation stop-experiment :shape-name
                                       "StopExperiment" :input
                                       stop-experiment-request :output
                                       stop-experiment-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/projects/{project}/experiments/{experiment}/cancel"
                                       :code 200)

(smithy/sdk/operation:define-operation stop-launch :shape-name "StopLaunch"
                                       :input stop-launch-request :output
                                       stop-launch-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/projects/{project}/launches/{launch}/cancel"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation test-segment-pattern :shape-name
                                       "TestSegmentPattern" :input
                                       test-segment-pattern-request :output
                                       test-segment-pattern-response :errors
                                       (access-denied-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/test-segment-pattern" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation update-experiment :shape-name
                                       "UpdateExperiment" :input
                                       update-experiment-request :output
                                       update-experiment-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/projects/{project}/experiments/{experiment}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-feature :shape-name
                                       "UpdateFeature" :input
                                       update-feature-request :output
                                       update-feature-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/projects/{project}/features/{feature}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-launch :shape-name "UpdateLaunch"
                                       :input update-launch-request :output
                                       update-launch-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/projects/{project}/launches/{launch}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-project :shape-name
                                       "UpdateProject" :input
                                       update-project-request :output
                                       update-project-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/projects/{project}" :code 200)

(smithy/sdk/operation:define-operation update-project-data-delivery :shape-name
                                       "UpdateProjectDataDelivery" :input
                                       update-project-data-delivery-request
                                       :output
                                       update-project-data-delivery-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/projects/{project}/data-delivery"
                                       :code 200)
