(uiop/package:define-package #:pira/fis (:use)
                             (:export #:account-targeting #:action
                              #:action-description #:action-id
                              #:action-parameter #:action-parameter-description
                              #:action-parameter-map #:action-parameter-name
                              #:action-parameter-required #:action-summary
                              #:action-summary-list #:action-target
                              #:action-target-map #:action-target-name
                              #:actions-mode #:client-token
                              #:cloud-watch-log-group-arn #:conflict-exception
                              #:create-experiment-template
                              #:create-experiment-template-action-input
                              #:create-experiment-template-action-input-map
                              #:create-experiment-template-experiment-options-input
                              #:create-experiment-template-log-configuration-input
                              #:create-experiment-template-report-configuration-input
                              #:create-experiment-template-request
                              #:create-experiment-template-response
                              #:create-experiment-template-stop-condition-input
                              #:create-experiment-template-stop-condition-input-list
                              #:create-experiment-template-target-input
                              #:create-experiment-template-target-input-map
                              #:create-target-account-configuration
                              #:create-target-account-configuration-request
                              #:create-target-account-configuration-response
                              #:creation-time #:delete-experiment-template
                              #:delete-experiment-template-request
                              #:delete-experiment-template-response
                              #:delete-target-account-configuration
                              #:delete-target-account-configuration-request
                              #:delete-target-account-configuration-response
                              #:empty-target-resolution-mode
                              #:exception-message #:experiment
                              #:experiment-action
                              #:experiment-action-description
                              #:experiment-action-end-time
                              #:experiment-action-map #:experiment-action-name
                              #:experiment-action-parameter
                              #:experiment-action-parameter-map
                              #:experiment-action-parameter-name
                              #:experiment-action-start-after
                              #:experiment-action-start-after-list
                              #:experiment-action-start-time
                              #:experiment-action-state
                              #:experiment-action-status
                              #:experiment-action-status-reason
                              #:experiment-action-target-map
                              #:experiment-action-target-name
                              #:experiment-cloud-watch-logs-log-configuration
                              #:experiment-end-time #:experiment-error
                              #:experiment-error-account-id
                              #:experiment-error-code
                              #:experiment-error-location #:experiment-id
                              #:experiment-log-configuration
                              #:experiment-options #:experiment-report
                              #:experiment-report-configuration
                              #:experiment-report-configuration-cloud-watch-dashboard
                              #:experiment-report-configuration-cloud-watch-dashboard-list
                              #:experiment-report-configuration-data-sources
                              #:experiment-report-configuration-outputs
                              #:experiment-report-configuration-outputs-s3configuration
                              #:experiment-report-error
                              #:experiment-report-error-code
                              #:experiment-report-reason
                              #:experiment-report-s3report
                              #:experiment-report-s3report-arn
                              #:experiment-report-s3report-list
                              #:experiment-report-s3report-type
                              #:experiment-report-state
                              #:experiment-report-status
                              #:experiment-s3log-configuration
                              #:experiment-start-time #:experiment-state
                              #:experiment-status #:experiment-status-reason
                              #:experiment-stop-condition
                              #:experiment-stop-condition-list
                              #:experiment-summary #:experiment-summary-list
                              #:experiment-target
                              #:experiment-target-account-configuration
                              #:experiment-target-account-configuration-list
                              #:experiment-target-account-configuration-summary
                              #:experiment-target-filter
                              #:experiment-target-filter-list
                              #:experiment-target-filter-path
                              #:experiment-target-filter-value
                              #:experiment-target-filter-values
                              #:experiment-target-map #:experiment-target-name
                              #:experiment-target-parameter-map
                              #:experiment-target-parameter-name
                              #:experiment-target-parameter-value
                              #:experiment-target-selection-mode
                              #:experiment-template
                              #:experiment-template-action
                              #:experiment-template-action-description
                              #:experiment-template-action-map
                              #:experiment-template-action-name
                              #:experiment-template-action-parameter
                              #:experiment-template-action-parameter-map
                              #:experiment-template-action-parameter-name
                              #:experiment-template-action-start-after
                              #:experiment-template-action-start-after-list
                              #:experiment-template-action-target-map
                              #:experiment-template-action-target-name
                              #:experiment-template-cloud-watch-logs-log-configuration
                              #:experiment-template-cloud-watch-logs-log-configuration-input
                              #:experiment-template-description
                              #:experiment-template-experiment-options
                              #:experiment-template-id
                              #:experiment-template-log-configuration
                              #:experiment-template-report-configuration
                              #:experiment-template-report-configuration-cloud-watch-dashboard
                              #:experiment-template-report-configuration-cloud-watch-dashboard-list
                              #:experiment-template-report-configuration-data-sources
                              #:experiment-template-report-configuration-data-sources-input
                              #:experiment-template-report-configuration-outputs
                              #:experiment-template-report-configuration-outputs-input
                              #:experiment-template-s3log-configuration
                              #:experiment-template-s3log-configuration-input
                              #:experiment-template-stop-condition
                              #:experiment-template-stop-condition-list
                              #:experiment-template-summary
                              #:experiment-template-summary-list
                              #:experiment-template-target
                              #:experiment-template-target-filter
                              #:experiment-template-target-filter-input-list
                              #:experiment-template-target-filter-list
                              #:experiment-template-target-filter-path
                              #:experiment-template-target-filter-value
                              #:experiment-template-target-filter-values
                              #:experiment-template-target-input-filter
                              #:experiment-template-target-map
                              #:experiment-template-target-name
                              #:experiment-template-target-parameter-map
                              #:experiment-template-target-parameter-name
                              #:experiment-template-target-parameter-value
                              #:experiment-template-target-selection-mode
                              #:fault-injection-simulator #:get-action
                              #:get-action-request #:get-action-response
                              #:get-experiment #:get-experiment-request
                              #:get-experiment-response
                              #:get-experiment-target-account-configuration
                              #:get-experiment-target-account-configuration-request
                              #:get-experiment-target-account-configuration-response
                              #:get-experiment-template
                              #:get-experiment-template-request
                              #:get-experiment-template-response
                              #:get-safety-lever #:get-safety-lever-request
                              #:get-safety-lever-response
                              #:get-target-account-configuration
                              #:get-target-account-configuration-request
                              #:get-target-account-configuration-response
                              #:get-target-resource-type
                              #:get-target-resource-type-request
                              #:get-target-resource-type-response
                              #:last-update-time #:list-actions
                              #:list-actions-max-results #:list-actions-request
                              #:list-actions-response
                              #:list-experiment-resolved-targets
                              #:list-experiment-resolved-targets-max-results
                              #:list-experiment-resolved-targets-request
                              #:list-experiment-resolved-targets-response
                              #:list-experiment-target-account-configurations
                              #:list-experiment-target-account-configurations-request
                              #:list-experiment-target-account-configurations-response
                              #:list-experiment-templates
                              #:list-experiment-templates-max-results
                              #:list-experiment-templates-request
                              #:list-experiment-templates-response
                              #:list-experiments #:list-experiments-max-results
                              #:list-experiments-request
                              #:list-experiments-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:list-target-account-configurations
                              #:list-target-account-configurations-max-results
                              #:list-target-account-configurations-request
                              #:list-target-account-configurations-response
                              #:list-target-resource-types
                              #:list-target-resource-types-max-results
                              #:list-target-resource-types-request
                              #:list-target-resource-types-response
                              #:log-schema-version #:next-token
                              #:report-configuration-cloud-watch-dashboard-identifier
                              #:report-configuration-cloud-watch-dashboard-input
                              #:report-configuration-cloud-watch-dashboard-input-list
                              #:report-configuration-duration
                              #:report-configuration-s3output
                              #:report-configuration-s3output-input
                              #:report-configuration-s3output-prefix
                              #:resolved-target #:resolved-target-list
                              #:resource-arn #:resource-arn-list
                              #:resource-not-found-exception #:role-arn
                              #:s3bucket-name #:s3object-key #:safety-lever
                              #:safety-lever-id #:safety-lever-state
                              #:safety-lever-status #:safety-lever-status-input
                              #:safety-lever-status-reason
                              #:service-quota-exceeded-exception
                              #:start-experiment
                              #:start-experiment-experiment-options-input
                              #:start-experiment-request
                              #:start-experiment-response
                              #:stop-condition-source #:stop-condition-value
                              #:stop-experiment #:stop-experiment-request
                              #:stop-experiment-response #:tag-key
                              #:tag-key-list #:tag-map #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:target-account-configuration
                              #:target-account-configuration-description
                              #:target-account-configuration-list
                              #:target-account-configuration-summary
                              #:target-account-configurations-count
                              #:target-account-id #:target-information-key
                              #:target-information-map
                              #:target-information-value #:target-name
                              #:target-resource-type
                              #:target-resource-type-description
                              #:target-resource-type-id
                              #:target-resource-type-parameter
                              #:target-resource-type-parameter-description
                              #:target-resource-type-parameter-map
                              #:target-resource-type-parameter-name
                              #:target-resource-type-parameter-required
                              #:target-resource-type-summary
                              #:target-resource-type-summary-list
                              #:untag-resource #:untag-resource-request
                              #:untag-resource-response
                              #:update-experiment-template
                              #:update-experiment-template-action-input-item
                              #:update-experiment-template-action-input-map
                              #:update-experiment-template-experiment-options-input
                              #:update-experiment-template-log-configuration-input
                              #:update-experiment-template-report-configuration-input
                              #:update-experiment-template-request
                              #:update-experiment-template-response
                              #:update-experiment-template-stop-condition-input
                              #:update-experiment-template-stop-condition-input-list
                              #:update-experiment-template-target-input
                              #:update-experiment-template-target-input-map
                              #:update-safety-lever-state
                              #:update-safety-lever-state-input
                              #:update-safety-lever-state-request
                              #:update-safety-lever-state-response
                              #:update-target-account-configuration
                              #:update-target-account-configuration-request
                              #:update-target-account-configuration-response
                              #:validation-exception))
(common-lisp:in-package #:pira/fis)

(smithy/sdk/service:define-service fault-injection-simulator :shape-name
                                   "FaultInjectionSimulator" :version
                                   "2020-12-01" :title
                                   "AWS Fault Injection Simulator" :traits
                                   '(("aws.api#service" ("sdkId" . "fis")
                                      ("arnNamespace" . "fis")
                                      ("cloudFormationName" . "Fis")
                                      ("cloudTrailEventSource"
                                       . "fis.amazonaws.com")
                                      ("endpointPrefix" . "fis"))
                                     ("aws.auth#sigv4" ("name" . "fis"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-enum account-targeting
    common-lisp:nil
  (:single-account "single-account")
  (:multi-account "multi-account"))

(smithy/sdk/shapes:define-structure action common-lisp:nil
                                    ((id :target-type action-id :member-name
                                      "id")
                                     (arn :target-type resource-arn
                                      :member-name "arn")
                                     (description :target-type
                                      action-description :member-name
                                      "description")
                                     (parameters :target-type
                                      action-parameter-map :member-name
                                      "parameters")
                                     (targets :target-type action-target-map
                                      :member-name "targets")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "Action"))

(smithy/sdk/shapes:define-type action-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type action-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure action-parameter common-lisp:nil
                                    ((description :target-type
                                      action-parameter-description :member-name
                                      "description")
                                     (required :target-type
                                      action-parameter-required :member-name
                                      "required"))
                                    (:shape-name "ActionParameter"))

(smithy/sdk/shapes:define-type action-parameter-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map action-parameter-map :key action-parameter-name
                              :value action-parameter)

(smithy/sdk/shapes:define-type action-parameter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type action-parameter-required
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure action-summary common-lisp:nil
                                    ((id :target-type action-id :member-name
                                      "id")
                                     (arn :target-type resource-arn
                                      :member-name "arn")
                                     (description :target-type
                                      action-description :member-name
                                      "description")
                                     (targets :target-type action-target-map
                                      :member-name "targets")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "ActionSummary"))

(smithy/sdk/shapes:define-list action-summary-list :member action-summary)

(smithy/sdk/shapes:define-structure action-target common-lisp:nil
                                    ((resource-type :target-type
                                      target-resource-type-id :member-name
                                      "resourceType"))
                                    (:shape-name "ActionTarget"))

(smithy/sdk/shapes:define-map action-target-map :key action-target-name :value
                              action-target)

(smithy/sdk/shapes:define-type action-target-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum actions-mode
    common-lisp:nil
  (:skip-all "skip-all")
  (:run-all "run-all"))

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type cloud-watch-log-group-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure create-experiment-template-action-input
                                    common-lisp:nil
                                    ((action-id :target-type action-id
                                      :required common-lisp:t :member-name
                                      "actionId")
                                     (description :target-type
                                      experiment-template-action-description
                                      :member-name "description")
                                     (parameters :target-type
                                      experiment-template-action-parameter-map
                                      :member-name "parameters")
                                     (targets :target-type
                                      experiment-template-action-target-map
                                      :member-name "targets")
                                     (start-after :target-type
                                      experiment-template-action-start-after-list
                                      :member-name "startAfter"))
                                    (:shape-name
                                     "CreateExperimentTemplateActionInput"))

(smithy/sdk/shapes:define-map create-experiment-template-action-input-map :key
                              experiment-template-action-name :value
                              create-experiment-template-action-input)

(smithy/sdk/shapes:define-structure
 create-experiment-template-experiment-options-input common-lisp:nil
 ((account-targeting :target-type account-targeting :member-name
   "accountTargeting")
  (empty-target-resolution-mode :target-type empty-target-resolution-mode
   :member-name "emptyTargetResolutionMode"))
 (:shape-name "CreateExperimentTemplateExperimentOptionsInput"))

(smithy/sdk/shapes:define-structure
 create-experiment-template-log-configuration-input common-lisp:nil
 ((cloud-watch-logs-configuration :target-type
   experiment-template-cloud-watch-logs-log-configuration-input :member-name
   "cloudWatchLogsConfiguration")
  (s3configuration :target-type experiment-template-s3log-configuration-input
   :member-name "s3Configuration")
  (log-schema-version :target-type log-schema-version :required common-lisp:t
   :member-name "logSchemaVersion"))
 (:shape-name "CreateExperimentTemplateLogConfigurationInput"))

(smithy/sdk/shapes:define-structure
 create-experiment-template-report-configuration-input common-lisp:nil
 ((outputs :target-type experiment-template-report-configuration-outputs-input
   :member-name "outputs")
  (data-sources :target-type
   experiment-template-report-configuration-data-sources-input :member-name
   "dataSources")
  (pre-experiment-duration :target-type report-configuration-duration
   :member-name "preExperimentDuration")
  (post-experiment-duration :target-type report-configuration-duration
   :member-name "postExperimentDuration"))
 (:shape-name "CreateExperimentTemplateReportConfigurationInput"))

(smithy/sdk/shapes:define-input create-experiment-template-request
                                common-lisp:nil
                                ((client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken")
                                 (description :target-type
                                  experiment-template-description :required
                                  common-lisp:t :member-name "description")
                                 (stop-conditions :target-type
                                  create-experiment-template-stop-condition-input-list
                                  :required common-lisp:t :member-name
                                  "stopConditions")
                                 (targets :target-type
                                  create-experiment-template-target-input-map
                                  :member-name "targets")
                                 (actions :target-type
                                  create-experiment-template-action-input-map
                                  :required common-lisp:t :member-name
                                  "actions")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (log-configuration :target-type
                                  create-experiment-template-log-configuration-input
                                  :member-name "logConfiguration")
                                 (experiment-options :target-type
                                  create-experiment-template-experiment-options-input
                                  :member-name "experimentOptions")
                                 (experiment-report-configuration :target-type
                                  create-experiment-template-report-configuration-input
                                  :member-name
                                  "experimentReportConfiguration"))
                                (:shape-name "CreateExperimentTemplateRequest"))

(smithy/sdk/shapes:define-output create-experiment-template-response
                                 common-lisp:nil
                                 ((experiment-template :target-type
                                   experiment-template :member-name
                                   "experimentTemplate"))
                                 (:shape-name
                                  "CreateExperimentTemplateResponse"))

(smithy/sdk/shapes:define-structure
 create-experiment-template-stop-condition-input common-lisp:nil
 ((source :target-type stop-condition-source :required common-lisp:t
   :member-name "source")
  (value :target-type stop-condition-value :member-name "value"))
 (:shape-name "CreateExperimentTemplateStopConditionInput"))

(smithy/sdk/shapes:define-list
 create-experiment-template-stop-condition-input-list :member
 create-experiment-template-stop-condition-input)

(smithy/sdk/shapes:define-structure create-experiment-template-target-input
                                    common-lisp:nil
                                    ((resource-type :target-type
                                      target-resource-type-id :required
                                      common-lisp:t :member-name
                                      "resourceType")
                                     (resource-arns :target-type
                                      resource-arn-list :member-name
                                      "resourceArns")
                                     (resource-tags :target-type tag-map
                                      :member-name "resourceTags")
                                     (filters :target-type
                                      experiment-template-target-filter-input-list
                                      :member-name "filters")
                                     (selection-mode :target-type
                                      experiment-template-target-selection-mode
                                      :required common-lisp:t :member-name
                                      "selectionMode")
                                     (parameters :target-type
                                      experiment-template-target-parameter-map
                                      :member-name "parameters"))
                                    (:shape-name
                                     "CreateExperimentTemplateTargetInput"))

(smithy/sdk/shapes:define-map create-experiment-template-target-input-map :key
                              experiment-template-target-name :value
                              create-experiment-template-target-input)

(smithy/sdk/shapes:define-input create-target-account-configuration-request
                                common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken")
                                 (experiment-template-id :target-type
                                  experiment-template-id :required
                                  common-lisp:t :member-name
                                  "experimentTemplateId" :http-label
                                  common-lisp:t)
                                 (account-id :target-type target-account-id
                                  :required common-lisp:t :member-name
                                  "accountId" :http-label common-lisp:t)
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (description :target-type
                                  target-account-configuration-description
                                  :member-name "description"))
                                (:shape-name
                                 "CreateTargetAccountConfigurationRequest"))

(smithy/sdk/shapes:define-output create-target-account-configuration-response
                                 common-lisp:nil
                                 ((target-account-configuration :target-type
                                   target-account-configuration :member-name
                                   "targetAccountConfiguration"))
                                 (:shape-name
                                  "CreateTargetAccountConfigurationResponse"))

(smithy/sdk/shapes:define-type creation-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input delete-experiment-template-request
                                common-lisp:nil
                                ((id :target-type experiment-template-id
                                  :required common-lisp:t :member-name "id"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteExperimentTemplateRequest"))

(smithy/sdk/shapes:define-output delete-experiment-template-response
                                 common-lisp:nil
                                 ((experiment-template :target-type
                                   experiment-template :member-name
                                   "experimentTemplate"))
                                 (:shape-name
                                  "DeleteExperimentTemplateResponse"))

(smithy/sdk/shapes:define-input delete-target-account-configuration-request
                                common-lisp:nil
                                ((experiment-template-id :target-type
                                  experiment-template-id :required
                                  common-lisp:t :member-name
                                  "experimentTemplateId" :http-label
                                  common-lisp:t)
                                 (account-id :target-type target-account-id
                                  :required common-lisp:t :member-name
                                  "accountId" :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteTargetAccountConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-target-account-configuration-response
                                 common-lisp:nil
                                 ((target-account-configuration :target-type
                                   target-account-configuration :member-name
                                   "targetAccountConfiguration"))
                                 (:shape-name
                                  "DeleteTargetAccountConfigurationResponse"))

(smithy/sdk/shapes:define-enum empty-target-resolution-mode
    common-lisp:nil
  (:fail "fail")
  (:skip "skip"))

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure experiment common-lisp:nil
                                    ((id :target-type experiment-id
                                      :member-name "id")
                                     (arn :target-type resource-arn
                                      :member-name "arn")
                                     (experiment-template-id :target-type
                                      experiment-template-id :member-name
                                      "experimentTemplateId")
                                     (role-arn :target-type role-arn
                                      :member-name "roleArn")
                                     (state :target-type experiment-state
                                      :member-name "state")
                                     (targets :target-type
                                      experiment-target-map :member-name
                                      "targets")
                                     (actions :target-type
                                      experiment-action-map :member-name
                                      "actions")
                                     (stop-conditions :target-type
                                      experiment-stop-condition-list
                                      :member-name "stopConditions")
                                     (creation-time :target-type creation-time
                                      :member-name "creationTime")
                                     (start-time :target-type
                                      experiment-start-time :member-name
                                      "startTime")
                                     (end-time :target-type experiment-end-time
                                      :member-name "endTime")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (log-configuration :target-type
                                      experiment-log-configuration :member-name
                                      "logConfiguration")
                                     (experiment-options :target-type
                                      experiment-options :member-name
                                      "experimentOptions")
                                     (target-account-configurations-count
                                      :target-type
                                      target-account-configurations-count
                                      :member-name
                                      "targetAccountConfigurationsCount")
                                     (experiment-report-configuration
                                      :target-type
                                      experiment-report-configuration
                                      :member-name
                                      "experimentReportConfiguration")
                                     (experiment-report :target-type
                                      experiment-report :member-name
                                      "experimentReport"))
                                    (:shape-name "Experiment"))

(smithy/sdk/shapes:define-structure experiment-action common-lisp:nil
                                    ((action-id :target-type action-id
                                      :member-name "actionId")
                                     (description :target-type
                                      experiment-action-description
                                      :member-name "description")
                                     (parameters :target-type
                                      experiment-action-parameter-map
                                      :member-name "parameters")
                                     (targets :target-type
                                      experiment-action-target-map :member-name
                                      "targets")
                                     (start-after :target-type
                                      experiment-action-start-after-list
                                      :member-name "startAfter")
                                     (state :target-type
                                      experiment-action-state :member-name
                                      "state")
                                     (start-time :target-type
                                      experiment-action-start-time :member-name
                                      "startTime")
                                     (end-time :target-type
                                      experiment-action-end-time :member-name
                                      "endTime"))
                                    (:shape-name "ExperimentAction"))

(smithy/sdk/shapes:define-type experiment-action-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type experiment-action-end-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-map experiment-action-map :key experiment-action-name
                              :value experiment-action)

(smithy/sdk/shapes:define-type experiment-action-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type experiment-action-parameter
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map experiment-action-parameter-map :key
                              experiment-action-parameter-name :value
                              experiment-action-parameter)

(smithy/sdk/shapes:define-type experiment-action-parameter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type experiment-action-start-after
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list experiment-action-start-after-list :member
                               experiment-action-start-after)

(smithy/sdk/shapes:define-type experiment-action-start-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure experiment-action-state common-lisp:nil
                                    ((status :target-type
                                      experiment-action-status :member-name
                                      "status")
                                     (reason :target-type
                                      experiment-action-status-reason
                                      :member-name "reason"))
                                    (:shape-name "ExperimentActionState"))

(smithy/sdk/shapes:define-enum experiment-action-status
    common-lisp:nil
  (:pending "pending")
  (:initiating "initiating")
  (:running "running")
  (:completed "completed")
  (:cancelled "cancelled")
  (:stopping "stopping")
  (:stopped "stopped")
  (:failed "failed")
  (:skipped "skipped"))

(smithy/sdk/shapes:define-type experiment-action-status-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map experiment-action-target-map :key
                              experiment-action-target-name :value
                              experiment-target-name)

(smithy/sdk/shapes:define-type experiment-action-target-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 experiment-cloud-watch-logs-log-configuration common-lisp:nil
 ((log-group-arn :target-type cloud-watch-log-group-arn :member-name
   "logGroupArn"))
 (:shape-name "ExperimentCloudWatchLogsLogConfiguration"))

(smithy/sdk/shapes:define-type experiment-end-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure experiment-error common-lisp:nil
                                    ((account-id :target-type
                                      experiment-error-account-id :member-name
                                      "accountId")
                                     (code :target-type experiment-error-code
                                      :member-name "code")
                                     (location :target-type
                                      experiment-error-location :member-name
                                      "location"))
                                    (:shape-name "ExperimentError"))

(smithy/sdk/shapes:define-type experiment-error-account-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type experiment-error-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type experiment-error-location
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type experiment-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure experiment-log-configuration
                                    common-lisp:nil
                                    ((cloud-watch-logs-configuration
                                      :target-type
                                      experiment-cloud-watch-logs-log-configuration
                                      :member-name
                                      "cloudWatchLogsConfiguration")
                                     (s3configuration :target-type
                                      experiment-s3log-configuration
                                      :member-name "s3Configuration")
                                     (log-schema-version :target-type
                                      log-schema-version :member-name
                                      "logSchemaVersion"))
                                    (:shape-name "ExperimentLogConfiguration"))

(smithy/sdk/shapes:define-structure experiment-options common-lisp:nil
                                    ((account-targeting :target-type
                                      account-targeting :member-name
                                      "accountTargeting")
                                     (empty-target-resolution-mode :target-type
                                      empty-target-resolution-mode :member-name
                                      "emptyTargetResolutionMode")
                                     (actions-mode :target-type actions-mode
                                      :member-name "actionsMode"))
                                    (:shape-name "ExperimentOptions"))

(smithy/sdk/shapes:define-structure experiment-report common-lisp:nil
                                    ((state :target-type
                                      experiment-report-state :member-name
                                      "state")
                                     (s3reports :target-type
                                      experiment-report-s3report-list
                                      :member-name "s3Reports"))
                                    (:shape-name "ExperimentReport"))

(smithy/sdk/shapes:define-structure experiment-report-configuration
                                    common-lisp:nil
                                    ((outputs :target-type
                                      experiment-report-configuration-outputs
                                      :member-name "outputs")
                                     (data-sources :target-type
                                      experiment-report-configuration-data-sources
                                      :member-name "dataSources")
                                     (pre-experiment-duration :target-type
                                      report-configuration-duration
                                      :member-name "preExperimentDuration")
                                     (post-experiment-duration :target-type
                                      report-configuration-duration
                                      :member-name "postExperimentDuration"))
                                    (:shape-name
                                     "ExperimentReportConfiguration"))

(smithy/sdk/shapes:define-structure
 experiment-report-configuration-cloud-watch-dashboard common-lisp:nil
 ((dashboard-identifier :target-type
   report-configuration-cloud-watch-dashboard-identifier :member-name
   "dashboardIdentifier"))
 (:shape-name "ExperimentReportConfigurationCloudWatchDashboard"))

(smithy/sdk/shapes:define-list
 experiment-report-configuration-cloud-watch-dashboard-list :member
 experiment-report-configuration-cloud-watch-dashboard)

(smithy/sdk/shapes:define-structure
 experiment-report-configuration-data-sources common-lisp:nil
 ((cloud-watch-dashboards :target-type
   experiment-report-configuration-cloud-watch-dashboard-list :member-name
   "cloudWatchDashboards"))
 (:shape-name "ExperimentReportConfigurationDataSources"))

(smithy/sdk/shapes:define-structure experiment-report-configuration-outputs
                                    common-lisp:nil
                                    ((s3configuration :target-type
                                      experiment-report-configuration-outputs-s3configuration
                                      :member-name "s3Configuration"))
                                    (:shape-name
                                     "ExperimentReportConfigurationOutputs"))

(smithy/sdk/shapes:define-structure
 experiment-report-configuration-outputs-s3configuration common-lisp:nil
 ((bucket-name :target-type s3bucket-name :member-name "bucketName")
  (prefix :target-type report-configuration-s3output-prefix :member-name
   "prefix"))
 (:shape-name "ExperimentReportConfigurationOutputsS3Configuration"))

(smithy/sdk/shapes:define-structure experiment-report-error common-lisp:nil
                                    ((code :target-type
                                      experiment-report-error-code :member-name
                                      "code"))
                                    (:shape-name "ExperimentReportError"))

(smithy/sdk/shapes:define-type experiment-report-error-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type experiment-report-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure experiment-report-s3report common-lisp:nil
                                    ((arn :target-type
                                      experiment-report-s3report-arn
                                      :member-name "arn")
                                     (report-type :target-type
                                      experiment-report-s3report-type
                                      :member-name "reportType"))
                                    (:shape-name "ExperimentReportS3Report"))

(smithy/sdk/shapes:define-type experiment-report-s3report-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list experiment-report-s3report-list :member
                               experiment-report-s3report)

(smithy/sdk/shapes:define-type experiment-report-s3report-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure experiment-report-state common-lisp:nil
                                    ((status :target-type
                                      experiment-report-status :member-name
                                      "status")
                                     (reason :target-type
                                      experiment-report-reason :member-name
                                      "reason")
                                     (error :target-type
                                      experiment-report-error :member-name
                                      "error"))
                                    (:shape-name "ExperimentReportState"))

(smithy/sdk/shapes:define-enum experiment-report-status
    common-lisp:nil
  (:pending "pending")
  (:running "running")
  (:completed "completed")
  (:cancelled "cancelled")
  (:failed "failed"))

(smithy/sdk/shapes:define-structure experiment-s3log-configuration
                                    common-lisp:nil
                                    ((bucket-name :target-type s3bucket-name
                                      :member-name "bucketName")
                                     (prefix :target-type s3object-key
                                      :member-name "prefix"))
                                    (:shape-name
                                     "ExperimentS3LogConfiguration"))

(smithy/sdk/shapes:define-type experiment-start-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure experiment-state common-lisp:nil
                                    ((status :target-type experiment-status
                                      :member-name "status")
                                     (reason :target-type
                                      experiment-status-reason :member-name
                                      "reason")
                                     (error :target-type experiment-error
                                      :member-name "error"))
                                    (:shape-name "ExperimentState"))

(smithy/sdk/shapes:define-enum experiment-status
    common-lisp:nil
  (:pending "pending")
  (:initiating "initiating")
  (:running "running")
  (:completed "completed")
  (:stopping "stopping")
  (:stopped "stopped")
  (:failed "failed")
  (:cancelled "cancelled"))

(smithy/sdk/shapes:define-type experiment-status-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure experiment-stop-condition common-lisp:nil
                                    ((source :target-type stop-condition-source
                                      :member-name "source")
                                     (value :target-type stop-condition-value
                                      :member-name "value"))
                                    (:shape-name "ExperimentStopCondition"))

(smithy/sdk/shapes:define-list experiment-stop-condition-list :member
                               experiment-stop-condition)

(smithy/sdk/shapes:define-structure experiment-summary common-lisp:nil
                                    ((id :target-type experiment-id
                                      :member-name "id")
                                     (arn :target-type resource-arn
                                      :member-name "arn")
                                     (experiment-template-id :target-type
                                      experiment-template-id :member-name
                                      "experimentTemplateId")
                                     (state :target-type experiment-state
                                      :member-name "state")
                                     (creation-time :target-type creation-time
                                      :member-name "creationTime")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (experiment-options :target-type
                                      experiment-options :member-name
                                      "experimentOptions"))
                                    (:shape-name "ExperimentSummary"))

(smithy/sdk/shapes:define-list experiment-summary-list :member
                               experiment-summary)

(smithy/sdk/shapes:define-structure experiment-target common-lisp:nil
                                    ((resource-type :target-type
                                      target-resource-type-id :member-name
                                      "resourceType")
                                     (resource-arns :target-type
                                      resource-arn-list :member-name
                                      "resourceArns")
                                     (resource-tags :target-type tag-map
                                      :member-name "resourceTags")
                                     (filters :target-type
                                      experiment-target-filter-list
                                      :member-name "filters")
                                     (selection-mode :target-type
                                      experiment-target-selection-mode
                                      :member-name "selectionMode")
                                     (parameters :target-type
                                      experiment-target-parameter-map
                                      :member-name "parameters"))
                                    (:shape-name "ExperimentTarget"))

(smithy/sdk/shapes:define-structure experiment-target-account-configuration
                                    common-lisp:nil
                                    ((role-arn :target-type role-arn
                                      :member-name "roleArn")
                                     (account-id :target-type target-account-id
                                      :member-name "accountId")
                                     (description :target-type
                                      target-account-configuration-description
                                      :member-name "description"))
                                    (:shape-name
                                     "ExperimentTargetAccountConfiguration"))

(smithy/sdk/shapes:define-list experiment-target-account-configuration-list
                               :member
                               experiment-target-account-configuration-summary)

(smithy/sdk/shapes:define-structure
 experiment-target-account-configuration-summary common-lisp:nil
 ((role-arn :target-type role-arn :member-name "roleArn")
  (account-id :target-type target-account-id :member-name "accountId")
  (description :target-type target-account-configuration-description
   :member-name "description"))
 (:shape-name "ExperimentTargetAccountConfigurationSummary"))

(smithy/sdk/shapes:define-structure experiment-target-filter common-lisp:nil
                                    ((path :target-type
                                      experiment-target-filter-path
                                      :member-name "path")
                                     (values :target-type
                                      experiment-target-filter-values
                                      :member-name "values"))
                                    (:shape-name "ExperimentTargetFilter"))

(smithy/sdk/shapes:define-list experiment-target-filter-list :member
                               experiment-target-filter)

(smithy/sdk/shapes:define-type experiment-target-filter-path
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type experiment-target-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list experiment-target-filter-values :member
                               experiment-target-filter-value)

(smithy/sdk/shapes:define-map experiment-target-map :key experiment-target-name
                              :value experiment-target)

(smithy/sdk/shapes:define-type experiment-target-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map experiment-target-parameter-map :key
                              experiment-target-parameter-name :value
                              experiment-target-parameter-value)

(smithy/sdk/shapes:define-type experiment-target-parameter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type experiment-target-parameter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type experiment-target-selection-mode
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure experiment-template common-lisp:nil
                                    ((id :target-type experiment-template-id
                                      :member-name "id")
                                     (arn :target-type resource-arn
                                      :member-name "arn")
                                     (description :target-type
                                      experiment-template-description
                                      :member-name "description")
                                     (targets :target-type
                                      experiment-template-target-map
                                      :member-name "targets")
                                     (actions :target-type
                                      experiment-template-action-map
                                      :member-name "actions")
                                     (stop-conditions :target-type
                                      experiment-template-stop-condition-list
                                      :member-name "stopConditions")
                                     (creation-time :target-type creation-time
                                      :member-name "creationTime")
                                     (last-update-time :target-type
                                      last-update-time :member-name
                                      "lastUpdateTime")
                                     (role-arn :target-type role-arn
                                      :member-name "roleArn")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (log-configuration :target-type
                                      experiment-template-log-configuration
                                      :member-name "logConfiguration")
                                     (experiment-options :target-type
                                      experiment-template-experiment-options
                                      :member-name "experimentOptions")
                                     (target-account-configurations-count
                                      :target-type
                                      target-account-configurations-count
                                      :member-name
                                      "targetAccountConfigurationsCount")
                                     (experiment-report-configuration
                                      :target-type
                                      experiment-template-report-configuration
                                      :member-name
                                      "experimentReportConfiguration"))
                                    (:shape-name "ExperimentTemplate"))

(smithy/sdk/shapes:define-structure experiment-template-action common-lisp:nil
                                    ((action-id :target-type action-id
                                      :member-name "actionId")
                                     (description :target-type
                                      experiment-template-action-description
                                      :member-name "description")
                                     (parameters :target-type
                                      experiment-template-action-parameter-map
                                      :member-name "parameters")
                                     (targets :target-type
                                      experiment-template-action-target-map
                                      :member-name "targets")
                                     (start-after :target-type
                                      experiment-template-action-start-after-list
                                      :member-name "startAfter"))
                                    (:shape-name "ExperimentTemplateAction"))

(smithy/sdk/shapes:define-type experiment-template-action-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map experiment-template-action-map :key
                              experiment-template-action-name :value
                              experiment-template-action)

(smithy/sdk/shapes:define-type experiment-template-action-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type experiment-template-action-parameter
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map experiment-template-action-parameter-map :key
                              experiment-template-action-parameter-name :value
                              experiment-template-action-parameter)

(smithy/sdk/shapes:define-type experiment-template-action-parameter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type experiment-template-action-start-after
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list experiment-template-action-start-after-list
                               :member experiment-template-action-start-after)

(smithy/sdk/shapes:define-map experiment-template-action-target-map :key
                              experiment-template-action-target-name :value
                              experiment-template-target-name)

(smithy/sdk/shapes:define-type experiment-template-action-target-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 experiment-template-cloud-watch-logs-log-configuration common-lisp:nil
 ((log-group-arn :target-type cloud-watch-log-group-arn :member-name
   "logGroupArn"))
 (:shape-name "ExperimentTemplateCloudWatchLogsLogConfiguration"))

(smithy/sdk/shapes:define-structure
 experiment-template-cloud-watch-logs-log-configuration-input common-lisp:nil
 ((log-group-arn :target-type cloud-watch-log-group-arn :required common-lisp:t
   :member-name "logGroupArn"))
 (:shape-name "ExperimentTemplateCloudWatchLogsLogConfigurationInput"))

(smithy/sdk/shapes:define-type experiment-template-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure experiment-template-experiment-options
                                    common-lisp:nil
                                    ((account-targeting :target-type
                                      account-targeting :member-name
                                      "accountTargeting")
                                     (empty-target-resolution-mode :target-type
                                      empty-target-resolution-mode :member-name
                                      "emptyTargetResolutionMode"))
                                    (:shape-name
                                     "ExperimentTemplateExperimentOptions"))

(smithy/sdk/shapes:define-type experiment-template-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure experiment-template-log-configuration
                                    common-lisp:nil
                                    ((cloud-watch-logs-configuration
                                      :target-type
                                      experiment-template-cloud-watch-logs-log-configuration
                                      :member-name
                                      "cloudWatchLogsConfiguration")
                                     (s3configuration :target-type
                                      experiment-template-s3log-configuration
                                      :member-name "s3Configuration")
                                     (log-schema-version :target-type
                                      log-schema-version :member-name
                                      "logSchemaVersion"))
                                    (:shape-name
                                     "ExperimentTemplateLogConfiguration"))

(smithy/sdk/shapes:define-structure experiment-template-report-configuration
                                    common-lisp:nil
                                    ((outputs :target-type
                                      experiment-template-report-configuration-outputs
                                      :member-name "outputs")
                                     (data-sources :target-type
                                      experiment-template-report-configuration-data-sources
                                      :member-name "dataSources")
                                     (pre-experiment-duration :target-type
                                      report-configuration-duration
                                      :member-name "preExperimentDuration")
                                     (post-experiment-duration :target-type
                                      report-configuration-duration
                                      :member-name "postExperimentDuration"))
                                    (:shape-name
                                     "ExperimentTemplateReportConfiguration"))

(smithy/sdk/shapes:define-structure
 experiment-template-report-configuration-cloud-watch-dashboard common-lisp:nil
 ((dashboard-identifier :target-type
   report-configuration-cloud-watch-dashboard-identifier :member-name
   "dashboardIdentifier"))
 (:shape-name "ExperimentTemplateReportConfigurationCloudWatchDashboard"))

(smithy/sdk/shapes:define-list
 experiment-template-report-configuration-cloud-watch-dashboard-list :member
 experiment-template-report-configuration-cloud-watch-dashboard)

(smithy/sdk/shapes:define-structure
 experiment-template-report-configuration-data-sources common-lisp:nil
 ((cloud-watch-dashboards :target-type
   experiment-template-report-configuration-cloud-watch-dashboard-list
   :member-name "cloudWatchDashboards"))
 (:shape-name "ExperimentTemplateReportConfigurationDataSources"))

(smithy/sdk/shapes:define-structure
 experiment-template-report-configuration-data-sources-input common-lisp:nil
 ((cloud-watch-dashboards :target-type
   report-configuration-cloud-watch-dashboard-input-list :member-name
   "cloudWatchDashboards"))
 (:shape-name "ExperimentTemplateReportConfigurationDataSourcesInput"))

(smithy/sdk/shapes:define-structure
 experiment-template-report-configuration-outputs common-lisp:nil
 ((s3configuration :target-type report-configuration-s3output :member-name
   "s3Configuration"))
 (:shape-name "ExperimentTemplateReportConfigurationOutputs"))

(smithy/sdk/shapes:define-structure
 experiment-template-report-configuration-outputs-input common-lisp:nil
 ((s3configuration :target-type report-configuration-s3output-input
   :member-name "s3Configuration"))
 (:shape-name "ExperimentTemplateReportConfigurationOutputsInput"))

(smithy/sdk/shapes:define-structure experiment-template-s3log-configuration
                                    common-lisp:nil
                                    ((bucket-name :target-type s3bucket-name
                                      :member-name "bucketName")
                                     (prefix :target-type s3object-key
                                      :member-name "prefix"))
                                    (:shape-name
                                     "ExperimentTemplateS3LogConfiguration"))

(smithy/sdk/shapes:define-structure
 experiment-template-s3log-configuration-input common-lisp:nil
 ((bucket-name :target-type s3bucket-name :required common-lisp:t :member-name
   "bucketName")
  (prefix :target-type s3object-key :member-name "prefix"))
 (:shape-name "ExperimentTemplateS3LogConfigurationInput"))

(smithy/sdk/shapes:define-structure experiment-template-stop-condition
                                    common-lisp:nil
                                    ((source :target-type stop-condition-source
                                      :member-name "source")
                                     (value :target-type stop-condition-value
                                      :member-name "value"))
                                    (:shape-name
                                     "ExperimentTemplateStopCondition"))

(smithy/sdk/shapes:define-list experiment-template-stop-condition-list :member
                               experiment-template-stop-condition)

(smithy/sdk/shapes:define-structure experiment-template-summary common-lisp:nil
                                    ((id :target-type experiment-template-id
                                      :member-name "id")
                                     (arn :target-type resource-arn
                                      :member-name "arn")
                                     (description :target-type
                                      experiment-template-description
                                      :member-name "description")
                                     (creation-time :target-type creation-time
                                      :member-name "creationTime")
                                     (last-update-time :target-type
                                      last-update-time :member-name
                                      "lastUpdateTime")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "ExperimentTemplateSummary"))

(smithy/sdk/shapes:define-list experiment-template-summary-list :member
                               experiment-template-summary)

(smithy/sdk/shapes:define-structure experiment-template-target common-lisp:nil
                                    ((resource-type :target-type
                                      target-resource-type-id :member-name
                                      "resourceType")
                                     (resource-arns :target-type
                                      resource-arn-list :member-name
                                      "resourceArns")
                                     (resource-tags :target-type tag-map
                                      :member-name "resourceTags")
                                     (filters :target-type
                                      experiment-template-target-filter-list
                                      :member-name "filters")
                                     (selection-mode :target-type
                                      experiment-template-target-selection-mode
                                      :member-name "selectionMode")
                                     (parameters :target-type
                                      experiment-template-target-parameter-map
                                      :member-name "parameters"))
                                    (:shape-name "ExperimentTemplateTarget"))

(smithy/sdk/shapes:define-structure experiment-template-target-filter
                                    common-lisp:nil
                                    ((path :target-type
                                      experiment-template-target-filter-path
                                      :member-name "path")
                                     (values :target-type
                                      experiment-template-target-filter-values
                                      :member-name "values"))
                                    (:shape-name
                                     "ExperimentTemplateTargetFilter"))

(smithy/sdk/shapes:define-list experiment-template-target-filter-input-list
                               :member experiment-template-target-input-filter)

(smithy/sdk/shapes:define-list experiment-template-target-filter-list :member
                               experiment-template-target-filter)

(smithy/sdk/shapes:define-type experiment-template-target-filter-path
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type experiment-template-target-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list experiment-template-target-filter-values :member
                               experiment-template-target-filter-value)

(smithy/sdk/shapes:define-structure experiment-template-target-input-filter
                                    common-lisp:nil
                                    ((path :target-type
                                      experiment-template-target-filter-path
                                      :required common-lisp:t :member-name
                                      "path")
                                     (values :target-type
                                      experiment-template-target-filter-values
                                      :required common-lisp:t :member-name
                                      "values"))
                                    (:shape-name
                                     "ExperimentTemplateTargetInputFilter"))

(smithy/sdk/shapes:define-map experiment-template-target-map :key
                              experiment-template-target-name :value
                              experiment-template-target)

(smithy/sdk/shapes:define-type experiment-template-target-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map experiment-template-target-parameter-map :key
                              experiment-template-target-parameter-name :value
                              experiment-template-target-parameter-value)

(smithy/sdk/shapes:define-type experiment-template-target-parameter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type experiment-template-target-parameter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type experiment-template-target-selection-mode
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-action-request common-lisp:nil
                                ((id :target-type action-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetActionRequest"))

(smithy/sdk/shapes:define-output get-action-response common-lisp:nil
                                 ((action :target-type action :member-name
                                   "action"))
                                 (:shape-name "GetActionResponse"))

(smithy/sdk/shapes:define-input get-experiment-request common-lisp:nil
                                ((id :target-type experiment-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetExperimentRequest"))

(smithy/sdk/shapes:define-output get-experiment-response common-lisp:nil
                                 ((experiment :target-type experiment
                                   :member-name "experiment"))
                                 (:shape-name "GetExperimentResponse"))

(smithy/sdk/shapes:define-input
 get-experiment-target-account-configuration-request common-lisp:nil
 ((experiment-id :target-type experiment-id :required common-lisp:t
   :member-name "experimentId" :http-label common-lisp:t)
  (account-id :target-type target-account-id :required common-lisp:t
   :member-name "accountId" :http-label common-lisp:t))
 (:shape-name "GetExperimentTargetAccountConfigurationRequest"))

(smithy/sdk/shapes:define-output
 get-experiment-target-account-configuration-response common-lisp:nil
 ((target-account-configuration :target-type
   experiment-target-account-configuration :member-name
   "targetAccountConfiguration"))
 (:shape-name "GetExperimentTargetAccountConfigurationResponse"))

(smithy/sdk/shapes:define-input get-experiment-template-request common-lisp:nil
                                ((id :target-type experiment-template-id
                                  :required common-lisp:t :member-name "id"
                                  :http-label common-lisp:t))
                                (:shape-name "GetExperimentTemplateRequest"))

(smithy/sdk/shapes:define-output get-experiment-template-response
                                 common-lisp:nil
                                 ((experiment-template :target-type
                                   experiment-template :member-name
                                   "experimentTemplate"))
                                 (:shape-name "GetExperimentTemplateResponse"))

(smithy/sdk/shapes:define-input get-safety-lever-request common-lisp:nil
                                ((id :target-type safety-lever-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetSafetyLeverRequest"))

(smithy/sdk/shapes:define-output get-safety-lever-response common-lisp:nil
                                 ((safety-lever :target-type safety-lever
                                   :member-name "safetyLever"))
                                 (:shape-name "GetSafetyLeverResponse"))

(smithy/sdk/shapes:define-input get-target-account-configuration-request
                                common-lisp:nil
                                ((experiment-template-id :target-type
                                  experiment-template-id :required
                                  common-lisp:t :member-name
                                  "experimentTemplateId" :http-label
                                  common-lisp:t)
                                 (account-id :target-type target-account-id
                                  :required common-lisp:t :member-name
                                  "accountId" :http-label common-lisp:t))
                                (:shape-name
                                 "GetTargetAccountConfigurationRequest"))

(smithy/sdk/shapes:define-output get-target-account-configuration-response
                                 common-lisp:nil
                                 ((target-account-configuration :target-type
                                   target-account-configuration :member-name
                                   "targetAccountConfiguration"))
                                 (:shape-name
                                  "GetTargetAccountConfigurationResponse"))

(smithy/sdk/shapes:define-input get-target-resource-type-request
                                common-lisp:nil
                                ((resource-type :target-type
                                  target-resource-type-id :required
                                  common-lisp:t :member-name "resourceType"
                                  :http-label common-lisp:t))
                                (:shape-name "GetTargetResourceTypeRequest"))

(smithy/sdk/shapes:define-output get-target-resource-type-response
                                 common-lisp:nil
                                 ((target-resource-type :target-type
                                   target-resource-type :member-name
                                   "targetResourceType"))
                                 (:shape-name "GetTargetResourceTypeResponse"))

(smithy/sdk/shapes:define-type last-update-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type list-actions-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-actions-request common-lisp:nil
                                ((max-results :target-type
                                  list-actions-max-results :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListActionsRequest"))

(smithy/sdk/shapes:define-output list-actions-response common-lisp:nil
                                 ((actions :target-type action-summary-list
                                   :member-name "actions")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListActionsResponse"))

(smithy/sdk/shapes:define-type list-experiment-resolved-targets-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-experiment-resolved-targets-request
                                common-lisp:nil
                                ((experiment-id :target-type experiment-id
                                  :required common-lisp:t :member-name
                                  "experimentId" :http-label common-lisp:t)
                                 (max-results :target-type
                                  list-experiment-resolved-targets-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (target-name :target-type target-name
                                  :member-name "targetName" :http-query
                                  "targetName"))
                                (:shape-name
                                 "ListExperimentResolvedTargetsRequest"))

(smithy/sdk/shapes:define-output list-experiment-resolved-targets-response
                                 common-lisp:nil
                                 ((resolved-targets :target-type
                                   resolved-target-list :member-name
                                   "resolvedTargets")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListExperimentResolvedTargetsResponse"))

(smithy/sdk/shapes:define-input
 list-experiment-target-account-configurations-request common-lisp:nil
 ((experiment-id :target-type experiment-id :required common-lisp:t
   :member-name "experimentId" :http-label common-lisp:t)
  (next-token :target-type next-token :member-name "nextToken" :http-query
   "nextToken"))
 (:shape-name "ListExperimentTargetAccountConfigurationsRequest"))

(smithy/sdk/shapes:define-output
 list-experiment-target-account-configurations-response common-lisp:nil
 ((target-account-configurations :target-type
   experiment-target-account-configuration-list :member-name
   "targetAccountConfigurations")
  (next-token :target-type next-token :member-name "nextToken"))
 (:shape-name "ListExperimentTargetAccountConfigurationsResponse"))

(smithy/sdk/shapes:define-type list-experiment-templates-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-experiment-templates-request
                                common-lisp:nil
                                ((max-results :target-type
                                  list-experiment-templates-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListExperimentTemplatesRequest"))

(smithy/sdk/shapes:define-output list-experiment-templates-response
                                 common-lisp:nil
                                 ((experiment-templates :target-type
                                   experiment-template-summary-list
                                   :member-name "experimentTemplates")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListExperimentTemplatesResponse"))

(smithy/sdk/shapes:define-type list-experiments-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-experiments-request common-lisp:nil
                                ((max-results :target-type
                                  list-experiments-max-results :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (experiment-template-id :target-type
                                  experiment-template-id :member-name
                                  "experimentTemplateId" :http-query
                                  "experimentTemplateId"))
                                (:shape-name "ListExperimentsRequest"))

(smithy/sdk/shapes:define-output list-experiments-response common-lisp:nil
                                 ((experiments :target-type
                                   experiment-summary-list :member-name
                                   "experiments")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListExperimentsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type list-target-account-configurations-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-target-account-configurations-request
                                common-lisp:nil
                                ((experiment-template-id :target-type
                                  experiment-template-id :required
                                  common-lisp:t :member-name
                                  "experimentTemplateId" :http-label
                                  common-lisp:t)
                                 (max-results :target-type
                                  list-target-account-configurations-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name
                                 "ListTargetAccountConfigurationsRequest"))

(smithy/sdk/shapes:define-output list-target-account-configurations-response
                                 common-lisp:nil
                                 ((target-account-configurations :target-type
                                   target-account-configuration-list
                                   :member-name "targetAccountConfigurations")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListTargetAccountConfigurationsResponse"))

(smithy/sdk/shapes:define-type list-target-resource-types-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-target-resource-types-request
                                common-lisp:nil
                                ((max-results :target-type
                                  list-target-resource-types-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListTargetResourceTypesRequest"))

(smithy/sdk/shapes:define-output list-target-resource-types-response
                                 common-lisp:nil
                                 ((target-resource-types :target-type
                                   target-resource-type-summary-list
                                   :member-name "targetResourceTypes")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListTargetResourceTypesResponse"))

(smithy/sdk/shapes:define-type log-schema-version
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 report-configuration-cloud-watch-dashboard-identifier
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 report-configuration-cloud-watch-dashboard-input common-lisp:nil
 ((dashboard-identifier :target-type
   report-configuration-cloud-watch-dashboard-identifier :member-name
   "dashboardIdentifier"))
 (:shape-name "ReportConfigurationCloudWatchDashboardInput"))

(smithy/sdk/shapes:define-list
 report-configuration-cloud-watch-dashboard-input-list :member
 report-configuration-cloud-watch-dashboard-input)

(smithy/sdk/shapes:define-type report-configuration-duration
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure report-configuration-s3output
                                    common-lisp:nil
                                    ((bucket-name :target-type s3bucket-name
                                      :member-name "bucketName")
                                     (prefix :target-type
                                      report-configuration-s3output-prefix
                                      :member-name "prefix"))
                                    (:shape-name "ReportConfigurationS3Output"))

(smithy/sdk/shapes:define-structure report-configuration-s3output-input
                                    common-lisp:nil
                                    ((bucket-name :target-type s3bucket-name
                                      :member-name "bucketName")
                                     (prefix :target-type
                                      report-configuration-s3output-prefix
                                      :member-name "prefix"))
                                    (:shape-name
                                     "ReportConfigurationS3OutputInput"))

(smithy/sdk/shapes:define-type report-configuration-s3output-prefix
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resolved-target common-lisp:nil
                                    ((resource-type :target-type
                                      target-resource-type-id :member-name
                                      "resourceType")
                                     (target-name :target-type target-name
                                      :member-name "targetName")
                                     (target-information :target-type
                                      target-information-map :member-name
                                      "targetInformation"))
                                    (:shape-name "ResolvedTarget"))

(smithy/sdk/shapes:define-list resolved-target-list :member resolved-target)

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-arn-list :member resource-arn)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3object-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure safety-lever common-lisp:nil
                                    ((id :target-type safety-lever-id
                                      :member-name "id")
                                     (arn :target-type resource-arn
                                      :member-name "arn")
                                     (state :target-type safety-lever-state
                                      :member-name "state"))
                                    (:shape-name "SafetyLever"))

(smithy/sdk/shapes:define-type safety-lever-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure safety-lever-state common-lisp:nil
                                    ((status :target-type safety-lever-status
                                      :member-name "status")
                                     (reason :target-type
                                      safety-lever-status-reason :member-name
                                      "reason"))
                                    (:shape-name "SafetyLeverState"))

(smithy/sdk/shapes:define-enum safety-lever-status
    common-lisp:nil
  (:disengaged "disengaged")
  (:engaged "engaged")
  (:engaging "engaging"))

(smithy/sdk/shapes:define-enum safety-lever-status-input
    common-lisp:nil
  (:disengaged "disengaged")
  (:engaged "engaged"))

(smithy/sdk/shapes:define-type safety-lever-status-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-structure start-experiment-experiment-options-input
                                    common-lisp:nil
                                    ((actions-mode :target-type actions-mode
                                      :member-name "actionsMode"))
                                    (:shape-name
                                     "StartExperimentExperimentOptionsInput"))

(smithy/sdk/shapes:define-input start-experiment-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken")
                                 (experiment-template-id :target-type
                                  experiment-template-id :required
                                  common-lisp:t :member-name
                                  "experimentTemplateId")
                                 (experiment-options :target-type
                                  start-experiment-experiment-options-input
                                  :member-name "experimentOptions")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "StartExperimentRequest"))

(smithy/sdk/shapes:define-output start-experiment-response common-lisp:nil
                                 ((experiment :target-type experiment
                                   :member-name "experiment"))
                                 (:shape-name "StartExperimentResponse"))

(smithy/sdk/shapes:define-type stop-condition-source
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type stop-condition-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input stop-experiment-request common-lisp:nil
                                ((id :target-type experiment-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "StopExperimentRequest"))

(smithy/sdk/shapes:define-output stop-experiment-response common-lisp:nil
                                 ((experiment :target-type experiment
                                   :member-name "experiment"))
                                 (:shape-name "StopExperimentResponse"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure target-account-configuration
                                    common-lisp:nil
                                    ((role-arn :target-type role-arn
                                      :member-name "roleArn")
                                     (account-id :target-type target-account-id
                                      :member-name "accountId")
                                     (description :target-type
                                      target-account-configuration-description
                                      :member-name "description"))
                                    (:shape-name "TargetAccountConfiguration"))

(smithy/sdk/shapes:define-type target-account-configuration-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list target-account-configuration-list :member
                               target-account-configuration-summary)

(smithy/sdk/shapes:define-structure target-account-configuration-summary
                                    common-lisp:nil
                                    ((role-arn :target-type role-arn
                                      :member-name "roleArn")
                                     (account-id :target-type target-account-id
                                      :member-name "accountId")
                                     (description :target-type
                                      target-account-configuration-description
                                      :member-name "description"))
                                    (:shape-name
                                     "TargetAccountConfigurationSummary"))

(smithy/sdk/shapes:define-type target-account-configurations-count
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type target-account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-information-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map target-information-map :key
                              target-information-key :value
                              target-information-value)

(smithy/sdk/shapes:define-type target-information-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure target-resource-type common-lisp:nil
                                    ((resource-type :target-type
                                      target-resource-type-id :member-name
                                      "resourceType")
                                     (description :target-type
                                      target-resource-type-description
                                      :member-name "description")
                                     (parameters :target-type
                                      target-resource-type-parameter-map
                                      :member-name "parameters"))
                                    (:shape-name "TargetResourceType"))

(smithy/sdk/shapes:define-type target-resource-type-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-resource-type-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure target-resource-type-parameter
                                    common-lisp:nil
                                    ((description :target-type
                                      target-resource-type-parameter-description
                                      :member-name "description")
                                     (required :target-type
                                      target-resource-type-parameter-required
                                      :member-name "required"))
                                    (:shape-name "TargetResourceTypeParameter"))

(smithy/sdk/shapes:define-type target-resource-type-parameter-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map target-resource-type-parameter-map :key
                              target-resource-type-parameter-name :value
                              target-resource-type-parameter)

(smithy/sdk/shapes:define-type target-resource-type-parameter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-resource-type-parameter-required
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure target-resource-type-summary
                                    common-lisp:nil
                                    ((resource-type :target-type
                                      target-resource-type-id :member-name
                                      "resourceType")
                                     (description :target-type
                                      target-resource-type-description
                                      :member-name "description"))
                                    (:shape-name "TargetResourceTypeSummary"))

(smithy/sdk/shapes:define-list target-resource-type-summary-list :member
                               target-resource-type-summary)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list
                                  :member-name "tagKeys" :http-query
                                  "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-structure
 update-experiment-template-action-input-item common-lisp:nil
 ((action-id :target-type action-id :member-name "actionId")
  (description :target-type experiment-template-action-description :member-name
   "description")
  (parameters :target-type experiment-template-action-parameter-map
   :member-name "parameters")
  (targets :target-type experiment-template-action-target-map :member-name
   "targets")
  (start-after :target-type experiment-template-action-start-after-list
   :member-name "startAfter"))
 (:shape-name "UpdateExperimentTemplateActionInputItem"))

(smithy/sdk/shapes:define-map update-experiment-template-action-input-map :key
                              experiment-template-action-name :value
                              update-experiment-template-action-input-item)

(smithy/sdk/shapes:define-structure
 update-experiment-template-experiment-options-input common-lisp:nil
 ((empty-target-resolution-mode :target-type empty-target-resolution-mode
   :member-name "emptyTargetResolutionMode"))
 (:shape-name "UpdateExperimentTemplateExperimentOptionsInput"))

(smithy/sdk/shapes:define-structure
 update-experiment-template-log-configuration-input common-lisp:nil
 ((cloud-watch-logs-configuration :target-type
   experiment-template-cloud-watch-logs-log-configuration-input :member-name
   "cloudWatchLogsConfiguration")
  (s3configuration :target-type experiment-template-s3log-configuration-input
   :member-name "s3Configuration")
  (log-schema-version :target-type log-schema-version :member-name
   "logSchemaVersion"))
 (:shape-name "UpdateExperimentTemplateLogConfigurationInput"))

(smithy/sdk/shapes:define-structure
 update-experiment-template-report-configuration-input common-lisp:nil
 ((outputs :target-type experiment-template-report-configuration-outputs-input
   :member-name "outputs")
  (data-sources :target-type
   experiment-template-report-configuration-data-sources-input :member-name
   "dataSources")
  (pre-experiment-duration :target-type report-configuration-duration
   :member-name "preExperimentDuration")
  (post-experiment-duration :target-type report-configuration-duration
   :member-name "postExperimentDuration"))
 (:shape-name "UpdateExperimentTemplateReportConfigurationInput"))

(smithy/sdk/shapes:define-input update-experiment-template-request
                                common-lisp:nil
                                ((id :target-type experiment-template-id
                                  :required common-lisp:t :member-name "id"
                                  :http-label common-lisp:t)
                                 (description :target-type
                                  experiment-template-description :member-name
                                  "description")
                                 (stop-conditions :target-type
                                  update-experiment-template-stop-condition-input-list
                                  :member-name "stopConditions")
                                 (targets :target-type
                                  update-experiment-template-target-input-map
                                  :member-name "targets")
                                 (actions :target-type
                                  update-experiment-template-action-input-map
                                  :member-name "actions")
                                 (role-arn :target-type role-arn :member-name
                                  "roleArn")
                                 (log-configuration :target-type
                                  update-experiment-template-log-configuration-input
                                  :member-name "logConfiguration")
                                 (experiment-options :target-type
                                  update-experiment-template-experiment-options-input
                                  :member-name "experimentOptions")
                                 (experiment-report-configuration :target-type
                                  update-experiment-template-report-configuration-input
                                  :member-name
                                  "experimentReportConfiguration"))
                                (:shape-name "UpdateExperimentTemplateRequest"))

(smithy/sdk/shapes:define-output update-experiment-template-response
                                 common-lisp:nil
                                 ((experiment-template :target-type
                                   experiment-template :member-name
                                   "experimentTemplate"))
                                 (:shape-name
                                  "UpdateExperimentTemplateResponse"))

(smithy/sdk/shapes:define-structure
 update-experiment-template-stop-condition-input common-lisp:nil
 ((source :target-type stop-condition-source :required common-lisp:t
   :member-name "source")
  (value :target-type stop-condition-value :member-name "value"))
 (:shape-name "UpdateExperimentTemplateStopConditionInput"))

(smithy/sdk/shapes:define-list
 update-experiment-template-stop-condition-input-list :member
 update-experiment-template-stop-condition-input)

(smithy/sdk/shapes:define-structure update-experiment-template-target-input
                                    common-lisp:nil
                                    ((resource-type :target-type
                                      target-resource-type-id :required
                                      common-lisp:t :member-name
                                      "resourceType")
                                     (resource-arns :target-type
                                      resource-arn-list :member-name
                                      "resourceArns")
                                     (resource-tags :target-type tag-map
                                      :member-name "resourceTags")
                                     (filters :target-type
                                      experiment-template-target-filter-input-list
                                      :member-name "filters")
                                     (selection-mode :target-type
                                      experiment-template-target-selection-mode
                                      :required common-lisp:t :member-name
                                      "selectionMode")
                                     (parameters :target-type
                                      experiment-template-target-parameter-map
                                      :member-name "parameters"))
                                    (:shape-name
                                     "UpdateExperimentTemplateTargetInput"))

(smithy/sdk/shapes:define-map update-experiment-template-target-input-map :key
                              experiment-template-target-name :value
                              update-experiment-template-target-input)

(smithy/sdk/shapes:define-structure update-safety-lever-state-input
                                    common-lisp:nil
                                    ((status :target-type
                                      safety-lever-status-input :required
                                      common-lisp:t :member-name "status")
                                     (reason :target-type
                                      safety-lever-status-reason :required
                                      common-lisp:t :member-name "reason"))
                                    (:shape-name "UpdateSafetyLeverStateInput"))

(smithy/sdk/shapes:define-input update-safety-lever-state-request
                                common-lisp:nil
                                ((id :target-type safety-lever-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (state :target-type
                                  update-safety-lever-state-input :required
                                  common-lisp:t :member-name "state"))
                                (:shape-name "UpdateSafetyLeverStateRequest"))

(smithy/sdk/shapes:define-output update-safety-lever-state-response
                                 common-lisp:nil
                                 ((safety-lever :target-type safety-lever
                                   :member-name "safetyLever"))
                                 (:shape-name "UpdateSafetyLeverStateResponse"))

(smithy/sdk/shapes:define-input update-target-account-configuration-request
                                common-lisp:nil
                                ((experiment-template-id :target-type
                                  experiment-template-id :required
                                  common-lisp:t :member-name
                                  "experimentTemplateId" :http-label
                                  common-lisp:t)
                                 (account-id :target-type target-account-id
                                  :required common-lisp:t :member-name
                                  "accountId" :http-label common-lisp:t)
                                 (role-arn :target-type role-arn :member-name
                                  "roleArn")
                                 (description :target-type
                                  target-account-configuration-description
                                  :member-name "description"))
                                (:shape-name
                                 "UpdateTargetAccountConfigurationRequest"))

(smithy/sdk/shapes:define-output update-target-account-configuration-response
                                 common-lisp:nil
                                 ((target-account-configuration :target-type
                                   target-account-configuration :member-name
                                   "targetAccountConfiguration"))
                                 (:shape-name
                                  "UpdateTargetAccountConfigurationResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation create-experiment-template :shape-name
                                       "CreateExperimentTemplate" :input
                                       create-experiment-template-request
                                       :output
                                       create-experiment-template-response
                                       :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/experimentTemplates" :code 200)

(smithy/sdk/operation:define-operation create-target-account-configuration
                                       :shape-name
                                       "CreateTargetAccountConfiguration"
                                       :input
                                       create-target-account-configuration-request
                                       :output
                                       create-target-account-configuration-response
                                       :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/experimentTemplates/{experimentTemplateId}/targetAccountConfigurations/{accountId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-experiment-template :shape-name
                                       "DeleteExperimentTemplate" :input
                                       delete-experiment-template-request
                                       :output
                                       delete-experiment-template-response
                                       :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/experimentTemplates/{id}" :code 200)

(smithy/sdk/operation:define-operation delete-target-account-configuration
                                       :shape-name
                                       "DeleteTargetAccountConfiguration"
                                       :input
                                       delete-target-account-configuration-request
                                       :output
                                       delete-target-account-configuration-response
                                       :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/experimentTemplates/{experimentTemplateId}/targetAccountConfigurations/{accountId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-action :shape-name "GetAction"
                                       :input get-action-request :output
                                       get-action-response :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/actions/{id}" :code
                                       200)

(smithy/sdk/operation:define-operation get-experiment :shape-name
                                       "GetExperiment" :input
                                       get-experiment-request :output
                                       get-experiment-response :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/experiments/{id}"
                                       :code 200)

(smithy/sdk/operation:define-operation
 get-experiment-target-account-configuration :shape-name
 "GetExperimentTargetAccountConfiguration" :input
 get-experiment-target-account-configuration-request :output
 get-experiment-target-account-configuration-response :errors
 (resource-not-found-exception validation-exception) :method "GET" :uri
 "/experiments/{experimentId}/targetAccountConfigurations/{accountId}" :code
 200)

(smithy/sdk/operation:define-operation get-experiment-template :shape-name
                                       "GetExperimentTemplate" :input
                                       get-experiment-template-request :output
                                       get-experiment-template-response :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/experimentTemplates/{id}" :code 200)

(smithy/sdk/operation:define-operation get-safety-lever :shape-name
                                       "GetSafetyLever" :input
                                       get-safety-lever-request :output
                                       get-safety-lever-response :errors
                                       (resource-not-found-exception) :method
                                       "GET" :uri "/safetyLevers/{id}" :code
                                       200)

(smithy/sdk/operation:define-operation get-target-account-configuration
                                       :shape-name
                                       "GetTargetAccountConfiguration" :input
                                       get-target-account-configuration-request
                                       :output
                                       get-target-account-configuration-response
                                       :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/experimentTemplates/{experimentTemplateId}/targetAccountConfigurations/{accountId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-target-resource-type :shape-name
                                       "GetTargetResourceType" :input
                                       get-target-resource-type-request :output
                                       get-target-resource-type-response
                                       :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/targetResourceTypes/{resourceType}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-actions :shape-name "ListActions"
                                       :input list-actions-request :output
                                       list-actions-response :errors
                                       (validation-exception) :method "GET"
                                       :uri "/actions" :code 200)

(smithy/sdk/operation:define-operation list-experiment-resolved-targets
                                       :shape-name
                                       "ListExperimentResolvedTargets" :input
                                       list-experiment-resolved-targets-request
                                       :output
                                       list-experiment-resolved-targets-response
                                       :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/experiments/{experimentId}/resolvedTargets"
                                       :code 200)

(smithy/sdk/operation:define-operation
 list-experiment-target-account-configurations :shape-name
 "ListExperimentTargetAccountConfigurations" :input
 list-experiment-target-account-configurations-request :output
 list-experiment-target-account-configurations-response :errors
 (resource-not-found-exception validation-exception) :method "GET" :uri
 "/experiments/{experimentId}/targetAccountConfigurations" :code 200)

(smithy/sdk/operation:define-operation list-experiment-templates :shape-name
                                       "ListExperimentTemplates" :input
                                       list-experiment-templates-request
                                       :output
                                       list-experiment-templates-response
                                       :errors (validation-exception) :method
                                       "GET" :uri "/experimentTemplates" :code
                                       200)

(smithy/sdk/operation:define-operation list-experiments :shape-name
                                       "ListExperiments" :input
                                       list-experiments-request :output
                                       list-experiments-response :errors
                                       (validation-exception) :method "GET"
                                       :uri "/experiments" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation list-target-account-configurations
                                       :shape-name
                                       "ListTargetAccountConfigurations" :input
                                       list-target-account-configurations-request
                                       :output
                                       list-target-account-configurations-response
                                       :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/experimentTemplates/{experimentTemplateId}/targetAccountConfigurations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-target-resource-types :shape-name
                                       "ListTargetResourceTypes" :input
                                       list-target-resource-types-request
                                       :output
                                       list-target-resource-types-response
                                       :errors (validation-exception) :method
                                       "GET" :uri "/targetResourceTypes" :code
                                       200)

(smithy/sdk/operation:define-operation start-experiment :shape-name
                                       "StartExperiment" :input
                                       start-experiment-request :output
                                       start-experiment-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/experiments" :code
                                       200)

(smithy/sdk/operation:define-operation stop-experiment :shape-name
                                       "StopExperiment" :input
                                       stop-experiment-request :output
                                       stop-experiment-response :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/experiments/{id}" :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       common-lisp:nil :method "DELETE" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-experiment-template :shape-name
                                       "UpdateExperimentTemplate" :input
                                       update-experiment-template-request
                                       :output
                                       update-experiment-template-response
                                       :errors
                                       (resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/experimentTemplates/{id}" :code 200)

(smithy/sdk/operation:define-operation update-safety-lever-state :shape-name
                                       "UpdateSafetyLeverState" :input
                                       update-safety-lever-state-request
                                       :output
                                       update-safety-lever-state-response
                                       :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/safetyLevers/{id}/state" :code 200)

(smithy/sdk/operation:define-operation update-target-account-configuration
                                       :shape-name
                                       "UpdateTargetAccountConfiguration"
                                       :input
                                       update-target-account-configuration-request
                                       :output
                                       update-target-account-configuration-response
                                       :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/experimentTemplates/{experimentTemplateId}/targetAccountConfigurations/{accountId}"
                                       :code 200)
