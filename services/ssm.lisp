(uiop/package:define-package #:pira/ssm (:use)
                             (:export #:access-key-id-type
                              #:access-key-secret-type #:access-request-id
                              #:access-request-status #:access-type #:account
                              #:account-id #:account-id-list
                              #:account-sharing-info
                              #:account-sharing-info-list #:accounts
                              #:activation #:activation-code
                              #:activation-description #:activation-id
                              #:activation-list #:add-tags-to-resource
                              #:agent-error-code #:agent-type #:agent-version
                              #:aggregator-schema-only #:alarm
                              #:alarm-configuration #:alarm-list #:alarm-name
                              #:alarm-state-information
                              #:alarm-state-information-list #:allowed-pattern
                              #:amazon-ssm #:apply-only-at-cron-interval
                              #:approve-after-days #:architecture
                              #:associate-ops-item-related-item #:association
                              #:association-compliance-severity
                              #:association-description
                              #:association-description-list
                              #:association-execution
                              #:association-execution-filter
                              #:association-execution-filter-key
                              #:association-execution-filter-list
                              #:association-execution-filter-value
                              #:association-execution-id
                              #:association-execution-target
                              #:association-execution-targets-filter
                              #:association-execution-targets-filter-key
                              #:association-execution-targets-filter-list
                              #:association-execution-targets-filter-value
                              #:association-execution-targets-list
                              #:association-executions-list
                              #:association-filter #:association-filter-key
                              #:association-filter-list
                              #:association-filter-operator-type
                              #:association-filter-value #:association-id
                              #:association-id-list #:association-list
                              #:association-name #:association-overview
                              #:association-resource-id
                              #:association-resource-type #:association-status
                              #:association-status-aggregated-count
                              #:association-status-name
                              #:association-sync-compliance
                              #:association-version #:association-version-info
                              #:association-version-list #:attachment-content
                              #:attachment-content-list #:attachment-hash
                              #:attachment-hash-type #:attachment-identifier
                              #:attachment-information
                              #:attachment-information-list #:attachment-name
                              #:attachment-url #:attachments-source
                              #:attachments-source-key
                              #:attachments-source-list
                              #:attachments-source-value
                              #:attachments-source-values #:attribute-name
                              #:attribute-value #:automation-action-name
                              #:automation-execution
                              #:automation-execution-filter
                              #:automation-execution-filter-key
                              #:automation-execution-filter-list
                              #:automation-execution-filter-value
                              #:automation-execution-filter-value-list
                              #:automation-execution-id
                              #:automation-execution-inputs
                              #:automation-execution-metadata
                              #:automation-execution-metadata-list
                              #:automation-execution-preview
                              #:automation-execution-status
                              #:automation-parameter-key
                              #:automation-parameter-map
                              #:automation-parameter-value
                              #:automation-parameter-value-list
                              #:automation-subtype
                              #:automation-target-parameter-name
                              #:automation-type #:baseline-description
                              #:baseline-id #:baseline-name #:baseline-override
                              #:batch-error-message #:boolean
                              #:calendar-name-or-arn #:calendar-name-or-arnlist
                              #:calendar-state #:cancel-command
                              #:cancel-maintenance-window-execution #:category
                              #:category-enum-list #:category-list
                              #:change-details-value #:change-request-name
                              #:client-token #:cloud-watch-log-group-name
                              #:cloud-watch-output-config
                              #:cloud-watch-output-enabled #:command
                              #:command-filter #:command-filter-key
                              #:command-filter-list #:command-filter-value
                              #:command-id #:command-invocation
                              #:command-invocation-list
                              #:command-invocation-status #:command-list
                              #:command-max-results #:command-plugin
                              #:command-plugin-list #:command-plugin-name
                              #:command-plugin-output #:command-plugin-status
                              #:command-status #:comment #:completed-count
                              #:compliance-execution-id
                              #:compliance-execution-summary
                              #:compliance-execution-type
                              #:compliance-filter-value #:compliance-item
                              #:compliance-item-content-hash
                              #:compliance-item-details #:compliance-item-entry
                              #:compliance-item-entry-list #:compliance-item-id
                              #:compliance-item-list #:compliance-item-title
                              #:compliance-query-operator-type
                              #:compliance-resource-id
                              #:compliance-resource-id-list
                              #:compliance-resource-type
                              #:compliance-resource-type-list
                              #:compliance-severity #:compliance-status
                              #:compliance-string-filter
                              #:compliance-string-filter-key
                              #:compliance-string-filter-list
                              #:compliance-string-filter-value-list
                              #:compliance-summary-count
                              #:compliance-summary-item
                              #:compliance-summary-item-list
                              #:compliance-type-name #:compliance-upload-type
                              #:compliant-summary #:computer-name
                              #:connection-status #:content-length
                              #:create-activation #:create-association
                              #:create-association-batch
                              #:create-association-batch-request-entries
                              #:create-association-batch-request-entry
                              #:create-document #:create-maintenance-window
                              #:create-ops-item #:create-ops-metadata
                              #:create-patch-baseline
                              #:create-resource-data-sync #:created-date
                              #:credentials #:date-time #:default-baseline
                              #:default-instance-name #:delete-activation
                              #:delete-association #:delete-document
                              #:delete-inventory #:delete-maintenance-window
                              #:delete-ops-item #:delete-ops-metadata
                              #:delete-parameter #:delete-parameters
                              #:delete-patch-baseline
                              #:delete-resource-data-sync
                              #:delete-resource-policy
                              #:delivery-timed-out-count
                              #:deregister-managed-instance
                              #:deregister-patch-baseline-for-patch-group
                              #:deregister-target-from-maintenance-window
                              #:deregister-task-from-maintenance-window
                              #:describe-activations
                              #:describe-activations-filter
                              #:describe-activations-filter-keys
                              #:describe-activations-filter-list
                              #:describe-association
                              #:describe-association-execution-targets
                              #:describe-association-executions
                              #:describe-automation-executions
                              #:describe-automation-step-executions
                              #:describe-available-patches #:describe-document
                              #:describe-document-permission
                              #:describe-effective-instance-associations
                              #:describe-effective-patches-for-patch-baseline
                              #:describe-instance-associations-status
                              #:describe-instance-information
                              #:describe-instance-patch-states
                              #:describe-instance-patch-states-for-patch-group
                              #:describe-instance-patches
                              #:describe-instance-properties
                              #:describe-instance-properties-max-results
                              #:describe-inventory-deletions
                              #:describe-maintenance-window-execution-task-invocations
                              #:describe-maintenance-window-execution-tasks
                              #:describe-maintenance-window-executions
                              #:describe-maintenance-window-schedule
                              #:describe-maintenance-window-targets
                              #:describe-maintenance-window-tasks
                              #:describe-maintenance-windows
                              #:describe-maintenance-windows-for-target
                              #:describe-ops-items #:describe-parameters
                              #:describe-patch-baselines
                              #:describe-patch-group-state
                              #:describe-patch-groups
                              #:describe-patch-properties #:describe-sessions
                              #:description-in-document
                              #:disassociate-ops-item-related-item
                              #:document-arn #:document-author
                              #:document-content
                              #:document-default-version-description
                              #:document-description #:document-display-name
                              #:document-filter #:document-filter-key
                              #:document-filter-list #:document-filter-value
                              #:document-format #:document-hash
                              #:document-hash-type #:document-identifier
                              #:document-identifier-list
                              #:document-key-values-filter
                              #:document-key-values-filter-key
                              #:document-key-values-filter-list
                              #:document-key-values-filter-value
                              #:document-key-values-filter-values
                              #:document-metadata-enum
                              #:document-metadata-response-info #:document-name
                              #:document-owner #:document-parameter
                              #:document-parameter-default-value
                              #:document-parameter-descrption
                              #:document-parameter-list
                              #:document-parameter-name
                              #:document-parameter-type
                              #:document-permission-max-results
                              #:document-permission-type #:document-requires
                              #:document-requires-list #:document-review-action
                              #:document-review-comment
                              #:document-review-comment-list
                              #:document-review-comment-source
                              #:document-review-comment-type
                              #:document-reviewer-response-list
                              #:document-reviewer-response-source
                              #:document-reviews #:document-schema-version
                              #:document-sha1 #:document-status
                              #:document-status-information #:document-type
                              #:document-version #:document-version-info
                              #:document-version-list #:document-version-name
                              #:document-version-number #:dry-run #:duration
                              #:effective-instance-association-max-results
                              #:effective-patch #:effective-patch-list
                              #:error-count #:exclude-account
                              #:exclude-accounts #:execution-inputs
                              #:execution-mode #:execution-preview
                              #:execution-preview-id #:execution-preview-status
                              #:execution-role-name #:expiration-date
                              #:external-alarm-state
                              #:failed-create-association
                              #:failed-create-association-list
                              #:failure-details #:fault #:get-access-token
                              #:get-automation-execution #:get-calendar-state
                              #:get-command-invocation #:get-connection-status
                              #:get-default-patch-baseline
                              #:get-deployable-patch-snapshot-for-instance
                              #:get-document #:get-execution-preview
                              #:get-inventory #:get-inventory-schema
                              #:get-inventory-schema-max-results
                              #:get-maintenance-window
                              #:get-maintenance-window-execution
                              #:get-maintenance-window-execution-task
                              #:get-maintenance-window-execution-task-invocation
                              #:get-maintenance-window-task #:get-ops-item
                              #:get-ops-metadata #:get-ops-metadata-max-results
                              #:get-ops-summary #:get-parameter
                              #:get-parameter-history #:get-parameters
                              #:get-parameters-by-path
                              #:get-parameters-by-path-max-results
                              #:get-patch-baseline
                              #:get-patch-baseline-for-patch-group
                              #:get-resource-policies
                              #:get-resource-policies-response-entries
                              #:get-resource-policies-response-entry
                              #:get-service-setting #:ipaddress #:iso8601string
                              #:iam-role #:idempotency-token #:impact-type
                              #:install-override-list
                              #:instance-aggregated-association-overview
                              #:instance-association
                              #:instance-association-execution-summary
                              #:instance-association-list
                              #:instance-association-output-location
                              #:instance-association-output-url
                              #:instance-association-status-aggregated-count
                              #:instance-association-status-info
                              #:instance-association-status-infos
                              #:instance-count #:instance-id #:instance-id-list
                              #:instance-info #:instance-information
                              #:instance-information-filter
                              #:instance-information-filter-key
                              #:instance-information-filter-list
                              #:instance-information-filter-value
                              #:instance-information-filter-value-set
                              #:instance-information-list
                              #:instance-information-string-filter
                              #:instance-information-string-filter-key
                              #:instance-information-string-filter-list
                              #:instance-name #:instance-patch-state
                              #:instance-patch-state-filter
                              #:instance-patch-state-filter-key
                              #:instance-patch-state-filter-list
                              #:instance-patch-state-filter-value
                              #:instance-patch-state-filter-values
                              #:instance-patch-state-list
                              #:instance-patch-state-operator-type
                              #:instance-patch-states-list
                              #:instance-properties #:instance-property
                              #:instance-property-filter
                              #:instance-property-filter-key
                              #:instance-property-filter-list
                              #:instance-property-filter-operator
                              #:instance-property-filter-value
                              #:instance-property-filter-value-set
                              #:instance-property-string-filter
                              #:instance-property-string-filter-key
                              #:instance-property-string-filter-list
                              #:instance-role #:instance-state
                              #:instance-status #:instance-tag-name
                              #:instance-type #:instances-count #:integer
                              #:inventory-aggregator
                              #:inventory-aggregator-expression
                              #:inventory-aggregator-list
                              #:inventory-attribute-data-type
                              #:inventory-deletion-last-status-message
                              #:inventory-deletion-last-status-update-time
                              #:inventory-deletion-start-time
                              #:inventory-deletion-status
                              #:inventory-deletion-status-item
                              #:inventory-deletion-summary
                              #:inventory-deletion-summary-item
                              #:inventory-deletion-summary-items
                              #:inventory-deletions-list #:inventory-filter
                              #:inventory-filter-key #:inventory-filter-list
                              #:inventory-filter-value
                              #:inventory-filter-value-list #:inventory-group
                              #:inventory-group-list #:inventory-group-name
                              #:inventory-item #:inventory-item-attribute
                              #:inventory-item-attribute-list
                              #:inventory-item-attribute-name
                              #:inventory-item-capture-time
                              #:inventory-item-content-context
                              #:inventory-item-content-hash
                              #:inventory-item-entry
                              #:inventory-item-entry-list #:inventory-item-list
                              #:inventory-item-schema
                              #:inventory-item-schema-result-list
                              #:inventory-item-schema-version
                              #:inventory-item-type-name
                              #:inventory-item-type-name-filter
                              #:inventory-query-operator-type
                              #:inventory-result-entity
                              #:inventory-result-entity-id
                              #:inventory-result-entity-list
                              #:inventory-result-item
                              #:inventory-result-item-key
                              #:inventory-result-item-map
                              #:inventory-schema-delete-option
                              #:inventory-type-display-name
                              #:invocation-trace-output #:is-sub-type-schema
                              #:key-list #:key-name #:label-parameter-version
                              #:last-resource-data-sync-message
                              #:last-resource-data-sync-status
                              #:last-resource-data-sync-time
                              #:last-successful-resource-data-sync-time
                              #:list-association-versions #:list-associations
                              #:list-command-invocations #:list-commands
                              #:list-compliance-items
                              #:list-compliance-summaries
                              #:list-document-metadata-history
                              #:list-document-versions #:list-documents
                              #:list-inventory-entries #:list-nodes
                              #:list-nodes-summary #:list-ops-item-events
                              #:list-ops-item-related-items #:list-ops-metadata
                              #:list-ops-metadata-max-results
                              #:list-resource-compliance-summaries
                              #:list-resource-data-sync
                              #:list-tags-for-resource #:logging-info #:long
                              #:maintenance-window-allow-unassociated-targets
                              #:maintenance-window-automation-parameters
                              #:maintenance-window-cutoff
                              #:maintenance-window-description
                              #:maintenance-window-duration-hours
                              #:maintenance-window-enabled
                              #:maintenance-window-execution
                              #:maintenance-window-execution-id
                              #:maintenance-window-execution-list
                              #:maintenance-window-execution-status
                              #:maintenance-window-execution-status-details
                              #:maintenance-window-execution-task-execution-id
                              #:maintenance-window-execution-task-id
                              #:maintenance-window-execution-task-id-list
                              #:maintenance-window-execution-task-identity
                              #:maintenance-window-execution-task-identity-list
                              #:maintenance-window-execution-task-invocation-id
                              #:maintenance-window-execution-task-invocation-identity
                              #:maintenance-window-execution-task-invocation-identity-list
                              #:maintenance-window-execution-task-invocation-parameters
                              #:maintenance-window-filter
                              #:maintenance-window-filter-key
                              #:maintenance-window-filter-list
                              #:maintenance-window-filter-value
                              #:maintenance-window-filter-values
                              #:maintenance-window-id
                              #:maintenance-window-identity
                              #:maintenance-window-identity-for-target
                              #:maintenance-window-identity-list
                              #:maintenance-window-lambda-client-context
                              #:maintenance-window-lambda-parameters
                              #:maintenance-window-lambda-payload
                              #:maintenance-window-lambda-qualifier
                              #:maintenance-window-max-results
                              #:maintenance-window-name
                              #:maintenance-window-offset
                              #:maintenance-window-resource-type
                              #:maintenance-window-run-command-parameters
                              #:maintenance-window-schedule
                              #:maintenance-window-search-max-results
                              #:maintenance-window-step-functions-input
                              #:maintenance-window-step-functions-name
                              #:maintenance-window-step-functions-parameters
                              #:maintenance-window-string-date-time
                              #:maintenance-window-target
                              #:maintenance-window-target-id
                              #:maintenance-window-target-list
                              #:maintenance-window-task
                              #:maintenance-window-task-arn
                              #:maintenance-window-task-cutoff-behavior
                              #:maintenance-window-task-id
                              #:maintenance-window-task-invocation-parameters
                              #:maintenance-window-task-list
                              #:maintenance-window-task-parameter-name
                              #:maintenance-window-task-parameter-value
                              #:maintenance-window-task-parameter-value-expression
                              #:maintenance-window-task-parameter-value-list
                              #:maintenance-window-task-parameters
                              #:maintenance-window-task-parameters-list
                              #:maintenance-window-task-priority
                              #:maintenance-window-task-target-id
                              #:maintenance-window-task-type
                              #:maintenance-window-timezone
                              #:maintenance-windows-for-target-list
                              #:managed-instance-id #:managed-status
                              #:max-concurrency #:max-errors #:max-results
                              #:max-results-ec2compatible
                              #:max-session-duration #:metadata-key
                              #:metadata-keys-to-delete-list #:metadata-map
                              #:metadata-value #:metadata-value-string
                              #:modify-document-permission #:next-token #:node
                              #:node-account-id #:node-aggregator
                              #:node-aggregator-list #:node-aggregator-type
                              #:node-attribute-name #:node-capture-time
                              #:node-filter #:node-filter-key
                              #:node-filter-list #:node-filter-operator-type
                              #:node-filter-value #:node-filter-value-list
                              #:node-id #:node-list
                              #:node-organizational-unit-id
                              #:node-organizational-unit-path #:node-owner-info
                              #:node-region #:node-summary #:node-summary-list
                              #:node-type #:node-type-name
                              #:non-compliant-summary #:normal-string-map
                              #:notification-arn #:notification-config
                              #:notification-event #:notification-event-list
                              #:notification-type #:operating-system
                              #:ops-aggregator #:ops-aggregator-list
                              #:ops-aggregator-type #:ops-aggregator-value
                              #:ops-aggregator-value-key
                              #:ops-aggregator-value-map
                              #:ops-data-attribute-name #:ops-data-type-name
                              #:ops-entity #:ops-entity-id #:ops-entity-item
                              #:ops-entity-item-capture-time
                              #:ops-entity-item-entry
                              #:ops-entity-item-entry-list
                              #:ops-entity-item-key #:ops-entity-item-map
                              #:ops-entity-list #:ops-filter #:ops-filter-key
                              #:ops-filter-list #:ops-filter-operator-type
                              #:ops-filter-value #:ops-filter-value-list
                              #:ops-item #:ops-item-account-id #:ops-item-arn
                              #:ops-item-category #:ops-item-data-key
                              #:ops-item-data-type #:ops-item-data-value
                              #:ops-item-data-value-string
                              #:ops-item-description #:ops-item-event-filter
                              #:ops-item-event-filter-key
                              #:ops-item-event-filter-operator
                              #:ops-item-event-filter-value
                              #:ops-item-event-filter-values
                              #:ops-item-event-filters
                              #:ops-item-event-max-results
                              #:ops-item-event-summaries
                              #:ops-item-event-summary #:ops-item-filter
                              #:ops-item-filter-key #:ops-item-filter-operator
                              #:ops-item-filter-value #:ops-item-filter-values
                              #:ops-item-filters #:ops-item-id
                              #:ops-item-identity #:ops-item-max-results
                              #:ops-item-notification #:ops-item-notifications
                              #:ops-item-operational-data
                              #:ops-item-ops-data-keys-list
                              #:ops-item-parameter-names-list
                              #:ops-item-priority
                              #:ops-item-related-item-association-id
                              #:ops-item-related-item-association-resource-type
                              #:ops-item-related-item-association-resource-uri
                              #:ops-item-related-item-association-type
                              #:ops-item-related-item-summaries
                              #:ops-item-related-item-summary
                              #:ops-item-related-items-filter
                              #:ops-item-related-items-filter-key
                              #:ops-item-related-items-filter-operator
                              #:ops-item-related-items-filter-value
                              #:ops-item-related-items-filter-values
                              #:ops-item-related-items-filters
                              #:ops-item-related-items-max-results
                              #:ops-item-severity #:ops-item-source
                              #:ops-item-status #:ops-item-summaries
                              #:ops-item-summary #:ops-item-title
                              #:ops-item-type #:ops-metadata #:ops-metadata-arn
                              #:ops-metadata-filter #:ops-metadata-filter-key
                              #:ops-metadata-filter-list
                              #:ops-metadata-filter-value
                              #:ops-metadata-filter-value-list
                              #:ops-metadata-list #:ops-metadata-resource-id
                              #:ops-result-attribute
                              #:ops-result-attribute-list #:output-source
                              #:output-source-id #:output-source-type
                              #:owner-information #:psparameter-name
                              #:psparameter-selector #:psparameter-value
                              #:psparameter-version #:parameter
                              #:parameter-data-type #:parameter-description
                              #:parameter-history #:parameter-history-list
                              #:parameter-inline-policy #:parameter-key-id
                              #:parameter-label #:parameter-label-list
                              #:parameter-list #:parameter-metadata
                              #:parameter-metadata-list #:parameter-name
                              #:parameter-name-list #:parameter-policies
                              #:parameter-policy-list #:parameter-string-filter
                              #:parameter-string-filter-key
                              #:parameter-string-filter-list
                              #:parameter-string-filter-value
                              #:parameter-string-filter-value-list
                              #:parameter-string-query-option #:parameter-tier
                              #:parameter-type #:parameter-value
                              #:parameter-value-list #:parameters
                              #:parameters-filter #:parameters-filter-key
                              #:parameters-filter-list
                              #:parameters-filter-value
                              #:parameters-filter-value-list
                              #:parent-step-details #:patch #:patch-action
                              #:patch-advisory-id #:patch-advisory-id-list
                              #:patch-arch
                              #:patch-available-security-update-count
                              #:patch-baseline-identity
                              #:patch-baseline-identity-list
                              #:patch-baseline-max-results #:patch-bugzilla-id
                              #:patch-bugzilla-id-list #:patch-cveid
                              #:patch-cveid-list #:patch-cveids
                              #:patch-classification #:patch-compliance-data
                              #:patch-compliance-data-list
                              #:patch-compliance-data-state
                              #:patch-compliance-level
                              #:patch-compliance-max-results
                              #:patch-compliance-status #:patch-content-url
                              #:patch-critical-non-compliant-count
                              #:patch-deployment-status #:patch-description
                              #:patch-epoch #:patch-failed-count #:patch-filter
                              #:patch-filter-group #:patch-filter-key
                              #:patch-filter-list #:patch-filter-value
                              #:patch-filter-value-list #:patch-group
                              #:patch-group-list
                              #:patch-group-patch-baseline-mapping
                              #:patch-group-patch-baseline-mapping-list
                              #:patch-id #:patch-id-list
                              #:patch-installed-count
                              #:patch-installed-other-count
                              #:patch-installed-pending-reboot-count
                              #:patch-installed-rejected-count
                              #:patch-kb-number #:patch-language #:patch-list
                              #:patch-missing-count #:patch-msrc-number
                              #:patch-msrc-severity #:patch-name
                              #:patch-not-applicable-count
                              #:patch-operation-type
                              #:patch-orchestrator-filter
                              #:patch-orchestrator-filter-key
                              #:patch-orchestrator-filter-list
                              #:patch-orchestrator-filter-value
                              #:patch-orchestrator-filter-values
                              #:patch-other-non-compliant-count #:patch-product
                              #:patch-product-family #:patch-properties-list
                              #:patch-property #:patch-property-entry
                              #:patch-release #:patch-repository #:patch-rule
                              #:patch-rule-group #:patch-rule-list
                              #:patch-security-non-compliant-count #:patch-set
                              #:patch-severity #:patch-source
                              #:patch-source-configuration #:patch-source-list
                              #:patch-source-name #:patch-source-product
                              #:patch-source-product-list #:patch-status
                              #:patch-string-date-time #:patch-title
                              #:patch-unreported-not-applicable-count
                              #:patch-vendor #:patch-version #:ping-status
                              #:platform-name #:platform-type
                              #:platform-type-list #:platform-version #:policy
                              #:policy-hash #:policy-id #:product
                              #:progress-counters #:put-compliance-items
                              #:put-inventory #:put-inventory-message
                              #:put-parameter #:put-resource-policy
                              #:reboot-option #:region #:region-list #:regions
                              #:register-default-patch-baseline
                              #:register-patch-baseline-for-patch-group
                              #:register-target-with-maintenance-window
                              #:register-task-with-maintenance-window
                              #:registration-limit #:registration-metadata-item
                              #:registration-metadata-key
                              #:registration-metadata-list
                              #:registration-metadata-value
                              #:registrations-count #:related-ops-item
                              #:related-ops-items #:remaining-count
                              #:remove-tags-from-resource #:require-type
                              #:reset-service-setting #:resolved-targets
                              #:resource-arn-string
                              #:resource-compliance-summary-item
                              #:resource-compliance-summary-item-list
                              #:resource-count #:resource-count-by-status
                              #:resource-data-sync-awskmskey-arn
                              #:resource-data-sync-aws-organizations-source
                              #:resource-data-sync-created-time
                              #:resource-data-sync-destination-data-sharing
                              #:resource-data-sync-destination-data-sharing-type
                              #:resource-data-sync-enable-all-ops-data-sources
                              #:resource-data-sync-include-future-regions
                              #:resource-data-sync-item
                              #:resource-data-sync-item-list
                              #:resource-data-sync-last-modified-time
                              #:resource-data-sync-name
                              #:resource-data-sync-organization-source-type
                              #:resource-data-sync-organizational-unit
                              #:resource-data-sync-organizational-unit-id
                              #:resource-data-sync-organizational-unit-list
                              #:resource-data-sync-s3bucket-name
                              #:resource-data-sync-s3destination
                              #:resource-data-sync-s3format
                              #:resource-data-sync-s3prefix
                              #:resource-data-sync-s3region
                              #:resource-data-sync-source
                              #:resource-data-sync-source-region
                              #:resource-data-sync-source-region-list
                              #:resource-data-sync-source-type
                              #:resource-data-sync-source-with-state
                              #:resource-data-sync-state
                              #:resource-data-sync-type #:resource-id
                              #:resource-policy-max-results
                              #:resource-policy-parameter-names-list
                              #:resource-type #:resource-type-for-tagging
                              #:response-code #:result-attribute
                              #:result-attribute-list #:resume-session
                              #:review-information #:review-information-list
                              #:review-status #:reviewer #:runbook #:runbooks
                              #:s3bucket-name #:s3key-prefix
                              #:s3output-location #:s3output-url #:s3region
                              #:schedule-expression #:schedule-offset
                              #:scheduled-window-execution
                              #:scheduled-window-execution-list
                              #:send-automation-signal #:send-command
                              #:service-role #:service-setting
                              #:service-setting-id #:service-setting-value
                              #:session #:session-details #:session-filter
                              #:session-filter-key #:session-filter-list
                              #:session-filter-value #:session-id
                              #:session-list
                              #:session-manager-cloud-watch-output-url
                              #:session-manager-output-url
                              #:session-manager-parameter-name
                              #:session-manager-parameter-value
                              #:session-manager-parameter-value-list
                              #:session-manager-parameters
                              #:session-manager-s3output-url
                              #:session-max-results #:session-owner
                              #:session-reason #:session-state #:session-status
                              #:session-target #:session-token-type
                              #:severity-summary #:shared-document-version
                              #:signal-type #:snapshot-download-url
                              #:snapshot-id #:source-id #:source-type
                              #:standard-error-content
                              #:standard-output-content #:start-access-request
                              #:start-associations-once
                              #:start-automation-execution
                              #:start-change-request-execution
                              #:start-execution-preview #:start-session
                              #:status-additional-info #:status-details
                              #:status-message #:status-name #:step-execution
                              #:step-execution-filter
                              #:step-execution-filter-key
                              #:step-execution-filter-list
                              #:step-execution-filter-value
                              #:step-execution-filter-value-list
                              #:step-execution-list #:step-preview-map
                              #:stop-automation-execution #:stop-type
                              #:stream-url #:string #:string1to256
                              #:string-date-time #:string-list #:tag #:tag-key
                              #:tag-list #:tag-value #:target #:target-count
                              #:target-key #:target-location #:target-locations
                              #:target-locations-url #:target-map
                              #:target-map-key #:target-map-value
                              #:target-map-value-list #:target-maps
                              #:target-parameter-list #:target-preview
                              #:target-preview-list #:target-type
                              #:target-value #:target-values #:targets
                              #:terminate-session #:timeout-seconds
                              #:token-value #:total-count #:uuid
                              #:unlabel-parameter-version #:update-association
                              #:update-association-status #:update-document
                              #:update-document-default-version
                              #:update-document-metadata
                              #:update-maintenance-window
                              #:update-maintenance-window-target
                              #:update-maintenance-window-task
                              #:update-managed-instance-role #:update-ops-item
                              #:update-ops-metadata #:update-patch-baseline
                              #:update-resource-data-sync
                              #:update-service-setting #:url #:valid-next-step
                              #:valid-next-step-list #:version))
(common-lisp:in-package #:pira/ssm)

(smithy/sdk/service:define-service amazon-ssm :shape-name "AmazonSSM" :version
                                   "2014-11-06" :title
                                   "Amazon Simple Systems Manager (SSM)"
                                   :xml-namespace
                                   '(:uri
                                     "http://ssm.amazonaws.com/doc/2014-11-06/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "SSM")
                                      ("arnNamespace" . "ssm")
                                      ("cloudFormationName" . "SSM")
                                      ("cloudTrailEventSource"
                                       . "ssm.amazonaws.com")
                                      ("endpointPrefix" . "ssm"))
                                     ("aws.auth#sigv4" ("name" . "ssm"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type access-key-id-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type access-key-secret-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type access-request-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum access-request-status
    common-lisp:nil
  (:approved "Approved")
  (:rejected "Rejected")
  (:revoked "Revoked")
  (:expired "Expired")
  (:pending "Pending"))

(smithy/sdk/shapes:define-enum access-type
    common-lisp:nil
  (:standard "Standard")
  (:justintime "JustInTime"))

(smithy/sdk/shapes:define-type account smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list account-id-list :member
                               (account-id :xml-name "AccountId"))

(smithy/sdk/shapes:define-structure account-sharing-info common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "AccountId")
                                     (shared-document-version :target-type
                                      shared-document-version :member-name
                                      "SharedDocumentVersion"))
                                    (:shape-name "AccountSharingInfo"))

(smithy/sdk/shapes:define-list account-sharing-info-list :member
                               (account-sharing-info :xml-name
                                "AccountSharingInfo"))

(smithy/sdk/shapes:define-list accounts :member account)

(smithy/sdk/shapes:define-structure activation common-lisp:nil
                                    ((activation-id :target-type activation-id
                                      :member-name "ActivationId")
                                     (description :target-type
                                      activation-description :member-name
                                      "Description")
                                     (default-instance-name :target-type
                                      default-instance-name :member-name
                                      "DefaultInstanceName")
                                     (iam-role :target-type iam-role
                                      :member-name "IamRole")
                                     (registration-limit :target-type
                                      registration-limit :member-name
                                      "RegistrationLimit")
                                     (registrations-count :target-type
                                      registrations-count :member-name
                                      "RegistrationsCount")
                                     (expiration-date :target-type
                                      expiration-date :member-name
                                      "ExpirationDate")
                                     (expired :target-type boolean :member-name
                                      "Expired")
                                     (created-date :target-type created-date
                                      :member-name "CreatedDate")
                                     (tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "Activation"))

(smithy/sdk/shapes:define-type activation-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type activation-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type activation-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list activation-list :member activation)

(smithy/sdk/shapes:define-input add-tags-to-resource-request common-lisp:nil
                                ((resource-type :target-type
                                  resource-type-for-tagging :required
                                  common-lisp:t :member-name "ResourceType")
                                 (resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "AddTagsToResourceRequest"))

(smithy/sdk/shapes:define-output add-tags-to-resource-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "AddTagsToResourceResult"))

(smithy/sdk/shapes:define-type agent-error-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type agent-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type agent-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type aggregator-schema-only
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure alarm common-lisp:nil
                                    ((name :target-type alarm-name :required
                                      common-lisp:t :member-name "Name"))
                                    (:shape-name "Alarm"))

(smithy/sdk/shapes:define-structure alarm-configuration common-lisp:nil
                                    ((ignore-poll-alarm-failure :target-type
                                      boolean :member-name
                                      "IgnorePollAlarmFailure")
                                     (alarms :target-type alarm-list :required
                                      common-lisp:t :member-name "Alarms"))
                                    (:shape-name "AlarmConfiguration"))

(smithy/sdk/shapes:define-list alarm-list :member alarm)

(smithy/sdk/shapes:define-type alarm-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure alarm-state-information common-lisp:nil
                                    ((name :target-type alarm-name :required
                                      common-lisp:t :member-name "Name")
                                     (state :target-type external-alarm-state
                                      :required common-lisp:t :member-name
                                      "State"))
                                    (:shape-name "AlarmStateInformation"))

(smithy/sdk/shapes:define-list alarm-state-information-list :member
                               alarm-state-information)

(smithy/sdk/shapes:define-type allowed-pattern smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error already-exists-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "AlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type apply-only-at-cron-interval
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type approve-after-days
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type architecture smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input associate-ops-item-related-item-request
                                common-lisp:nil
                                ((ops-item-id :target-type ops-item-id
                                  :required common-lisp:t :member-name
                                  "OpsItemId")
                                 (association-type :target-type
                                  ops-item-related-item-association-type
                                  :required common-lisp:t :member-name
                                  "AssociationType")
                                 (resource-type :target-type
                                  ops-item-related-item-association-resource-type
                                  :required common-lisp:t :member-name
                                  "ResourceType")
                                 (resource-uri :target-type
                                  ops-item-related-item-association-resource-uri
                                  :required common-lisp:t :member-name
                                  "ResourceUri"))
                                (:shape-name
                                 "AssociateOpsItemRelatedItemRequest"))

(smithy/sdk/shapes:define-output associate-ops-item-related-item-response
                                 common-lisp:nil
                                 ((association-id :target-type
                                   ops-item-related-item-association-id
                                   :member-name "AssociationId"))
                                 (:shape-name
                                  "AssociateOpsItemRelatedItemResponse"))

(smithy/sdk/shapes:define-error associated-instances common-lisp:nil
                                common-lisp:nil
                                (:shape-name "AssociatedInstances")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure association common-lisp:nil
                                    ((name :target-type document-arn
                                      :member-name "Name")
                                     (instance-id :target-type instance-id
                                      :member-name "InstanceId")
                                     (association-id :target-type
                                      association-id :member-name
                                      "AssociationId")
                                     (association-version :target-type
                                      association-version :member-name
                                      "AssociationVersion")
                                     (document-version :target-type
                                      document-version :member-name
                                      "DocumentVersion")
                                     (targets :target-type targets :member-name
                                      "Targets")
                                     (last-execution-date :target-type
                                      date-time :member-name
                                      "LastExecutionDate")
                                     (overview :target-type
                                      association-overview :member-name
                                      "Overview")
                                     (schedule-expression :target-type
                                      schedule-expression :member-name
                                      "ScheduleExpression")
                                     (association-name :target-type
                                      association-name :member-name
                                      "AssociationName")
                                     (schedule-offset :target-type
                                      schedule-offset :member-name
                                      "ScheduleOffset")
                                     (duration :target-type duration
                                      :member-name "Duration")
                                     (target-maps :target-type target-maps
                                      :member-name "TargetMaps"))
                                    (:shape-name "Association"))

(smithy/sdk/shapes:define-error association-already-exists common-lisp:nil
                                common-lisp:nil
                                (:shape-name "AssociationAlreadyExists")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum association-compliance-severity
    common-lisp:nil
  (:critical "CRITICAL")
  (:high "HIGH")
  (:medium "MEDIUM")
  (:low "LOW")
  (:unspecified "UNSPECIFIED"))

(smithy/sdk/shapes:define-structure association-description common-lisp:nil
                                    ((name :target-type document-arn
                                      :member-name "Name")
                                     (instance-id :target-type instance-id
                                      :member-name "InstanceId")
                                     (association-version :target-type
                                      association-version :member-name
                                      "AssociationVersion")
                                     (date :target-type date-time :member-name
                                      "Date")
                                     (last-update-association-date :target-type
                                      date-time :member-name
                                      "LastUpdateAssociationDate")
                                     (status :target-type association-status
                                      :member-name "Status")
                                     (overview :target-type
                                      association-overview :member-name
                                      "Overview")
                                     (document-version :target-type
                                      document-version :member-name
                                      "DocumentVersion")
                                     (automation-target-parameter-name
                                      :target-type
                                      automation-target-parameter-name
                                      :member-name
                                      "AutomationTargetParameterName")
                                     (parameters :target-type parameters
                                      :member-name "Parameters")
                                     (association-id :target-type
                                      association-id :member-name
                                      "AssociationId")
                                     (targets :target-type targets :member-name
                                      "Targets")
                                     (schedule-expression :target-type
                                      schedule-expression :member-name
                                      "ScheduleExpression")
                                     (output-location :target-type
                                      instance-association-output-location
                                      :member-name "OutputLocation")
                                     (last-execution-date :target-type
                                      date-time :member-name
                                      "LastExecutionDate")
                                     (last-successful-execution-date
                                      :target-type date-time :member-name
                                      "LastSuccessfulExecutionDate")
                                     (association-name :target-type
                                      association-name :member-name
                                      "AssociationName")
                                     (max-errors :target-type max-errors
                                      :member-name "MaxErrors")
                                     (max-concurrency :target-type
                                      max-concurrency :member-name
                                      "MaxConcurrency")
                                     (compliance-severity :target-type
                                      association-compliance-severity
                                      :member-name "ComplianceSeverity")
                                     (sync-compliance :target-type
                                      association-sync-compliance :member-name
                                      "SyncCompliance")
                                     (apply-only-at-cron-interval :target-type
                                      apply-only-at-cron-interval :member-name
                                      "ApplyOnlyAtCronInterval")
                                     (calendar-names :target-type
                                      calendar-name-or-arnlist :member-name
                                      "CalendarNames")
                                     (target-locations :target-type
                                      target-locations :member-name
                                      "TargetLocations")
                                     (schedule-offset :target-type
                                      schedule-offset :member-name
                                      "ScheduleOffset")
                                     (duration :target-type duration
                                      :member-name "Duration")
                                     (target-maps :target-type target-maps
                                      :member-name "TargetMaps")
                                     (alarm-configuration :target-type
                                      alarm-configuration :member-name
                                      "AlarmConfiguration")
                                     (triggered-alarms :target-type
                                      alarm-state-information-list :member-name
                                      "TriggeredAlarms"))
                                    (:shape-name "AssociationDescription"))

(smithy/sdk/shapes:define-list association-description-list :member
                               (association-description :xml-name
                                "AssociationDescription"))

(smithy/sdk/shapes:define-error association-does-not-exist common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "AssociationDoesNotExist")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure association-execution common-lisp:nil
                                    ((association-id :target-type
                                      association-id :member-name
                                      "AssociationId")
                                     (association-version :target-type
                                      association-version :member-name
                                      "AssociationVersion")
                                     (execution-id :target-type
                                      association-execution-id :member-name
                                      "ExecutionId")
                                     (status :target-type status-name
                                      :member-name "Status")
                                     (detailed-status :target-type status-name
                                      :member-name "DetailedStatus")
                                     (created-time :target-type date-time
                                      :member-name "CreatedTime")
                                     (last-execution-date :target-type
                                      date-time :member-name
                                      "LastExecutionDate")
                                     (resource-count-by-status :target-type
                                      resource-count-by-status :member-name
                                      "ResourceCountByStatus")
                                     (alarm-configuration :target-type
                                      alarm-configuration :member-name
                                      "AlarmConfiguration")
                                     (triggered-alarms :target-type
                                      alarm-state-information-list :member-name
                                      "TriggeredAlarms"))
                                    (:shape-name "AssociationExecution"))

(smithy/sdk/shapes:define-error association-execution-does-not-exist
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "AssociationExecutionDoesNotExist")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure association-execution-filter
                                    common-lisp:nil
                                    ((key :target-type
                                      association-execution-filter-key
                                      :required common-lisp:t :member-name
                                      "Key")
                                     (value :target-type
                                      association-execution-filter-value
                                      :required common-lisp:t :member-name
                                      "Value")
                                     (type :target-type
                                      association-filter-operator-type
                                      :required common-lisp:t :member-name
                                      "Type"))
                                    (:shape-name "AssociationExecutionFilter"))

(smithy/sdk/shapes:define-enum association-execution-filter-key
    common-lisp:nil
  (:execution-id "ExecutionId")
  (:status "Status")
  (:created-time "CreatedTime"))

(smithy/sdk/shapes:define-list association-execution-filter-list :member
                               (association-execution-filter :xml-name
                                "AssociationExecutionFilter"))

(smithy/sdk/shapes:define-type association-execution-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type association-execution-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure association-execution-target
                                    common-lisp:nil
                                    ((association-id :target-type
                                      association-id :member-name
                                      "AssociationId")
                                     (association-version :target-type
                                      association-version :member-name
                                      "AssociationVersion")
                                     (execution-id :target-type
                                      association-execution-id :member-name
                                      "ExecutionId")
                                     (resource-id :target-type
                                      association-resource-id :member-name
                                      "ResourceId")
                                     (resource-type :target-type
                                      association-resource-type :member-name
                                      "ResourceType")
                                     (status :target-type status-name
                                      :member-name "Status")
                                     (detailed-status :target-type status-name
                                      :member-name "DetailedStatus")
                                     (last-execution-date :target-type
                                      date-time :member-name
                                      "LastExecutionDate")
                                     (output-source :target-type output-source
                                      :member-name "OutputSource"))
                                    (:shape-name "AssociationExecutionTarget"))

(smithy/sdk/shapes:define-structure association-execution-targets-filter
                                    common-lisp:nil
                                    ((key :target-type
                                      association-execution-targets-filter-key
                                      :required common-lisp:t :member-name
                                      "Key")
                                     (value :target-type
                                      association-execution-targets-filter-value
                                      :required common-lisp:t :member-name
                                      "Value"))
                                    (:shape-name
                                     "AssociationExecutionTargetsFilter"))

(smithy/sdk/shapes:define-enum association-execution-targets-filter-key
    common-lisp:nil
  (:status "Status")
  (:resource-id "ResourceId")
  (:resource-type "ResourceType"))

(smithy/sdk/shapes:define-list association-execution-targets-filter-list
                               :member
                               (association-execution-targets-filter :xml-name
                                "AssociationExecutionTargetsFilter"))

(smithy/sdk/shapes:define-type association-execution-targets-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list association-execution-targets-list :member
                               (association-execution-target :xml-name
                                "AssociationExecutionTarget"))

(smithy/sdk/shapes:define-list association-executions-list :member
                               (association-execution :xml-name
                                "AssociationExecution"))

(smithy/sdk/shapes:define-structure association-filter common-lisp:nil
                                    ((key :target-type association-filter-key
                                      :required common-lisp:t :member-name
                                      "key")
                                     (value :target-type
                                      association-filter-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "AssociationFilter"))

(smithy/sdk/shapes:define-enum association-filter-key
    common-lisp:nil
  (:instance-id "InstanceId")
  (:name "Name")
  (:association-id "AssociationId")
  (:status "AssociationStatusName")
  (:last-executed-before "LastExecutedBefore")
  (:last-executed-after "LastExecutedAfter")
  (:association-name "AssociationName")
  (:resource-group-name "ResourceGroupName"))

(smithy/sdk/shapes:define-list association-filter-list :member
                               (association-filter :xml-name
                                "AssociationFilter"))

(smithy/sdk/shapes:define-enum association-filter-operator-type
    common-lisp:nil
  (:equal "EQUAL")
  (:less-than "LESS_THAN")
  (:greater-than "GREATER_THAN"))

(smithy/sdk/shapes:define-type association-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type association-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list association-id-list :member association-id)

(smithy/sdk/shapes:define-error association-limit-exceeded common-lisp:nil
                                common-lisp:nil
                                (:shape-name "AssociationLimitExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-list association-list :member
                               (association :xml-name "Association"))

(smithy/sdk/shapes:define-type association-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure association-overview common-lisp:nil
                                    ((status :target-type status-name
                                      :member-name "Status")
                                     (detailed-status :target-type status-name
                                      :member-name "DetailedStatus")
                                     (association-status-aggregated-count
                                      :target-type
                                      association-status-aggregated-count
                                      :member-name
                                      "AssociationStatusAggregatedCount"))
                                    (:shape-name "AssociationOverview"))

(smithy/sdk/shapes:define-type association-resource-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type association-resource-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure association-status common-lisp:nil
                                    ((date :target-type date-time :required
                                      common-lisp:t :member-name "Date")
                                     (name :target-type association-status-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (message :target-type status-message
                                      :required common-lisp:t :member-name
                                      "Message")
                                     (additional-info :target-type
                                      status-additional-info :member-name
                                      "AdditionalInfo"))
                                    (:shape-name "AssociationStatus"))

(smithy/sdk/shapes:define-map association-status-aggregated-count :key
                              status-name :value instance-count)

(smithy/sdk/shapes:define-enum association-status-name
    common-lisp:nil
  (:pending "Pending")
  (:success "Success")
  (:failed "Failed"))

(smithy/sdk/shapes:define-enum association-sync-compliance
    common-lisp:nil
  (:auto "AUTO")
  (:manual "MANUAL"))

(smithy/sdk/shapes:define-type association-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure association-version-info common-lisp:nil
                                    ((association-id :target-type
                                      association-id :member-name
                                      "AssociationId")
                                     (association-version :target-type
                                      association-version :member-name
                                      "AssociationVersion")
                                     (created-date :target-type date-time
                                      :member-name "CreatedDate")
                                     (name :target-type document-arn
                                      :member-name "Name")
                                     (document-version :target-type
                                      document-version :member-name
                                      "DocumentVersion")
                                     (parameters :target-type parameters
                                      :member-name "Parameters")
                                     (targets :target-type targets :member-name
                                      "Targets")
                                     (schedule-expression :target-type
                                      schedule-expression :member-name
                                      "ScheduleExpression")
                                     (output-location :target-type
                                      instance-association-output-location
                                      :member-name "OutputLocation")
                                     (association-name :target-type
                                      association-name :member-name
                                      "AssociationName")
                                     (max-errors :target-type max-errors
                                      :member-name "MaxErrors")
                                     (max-concurrency :target-type
                                      max-concurrency :member-name
                                      "MaxConcurrency")
                                     (compliance-severity :target-type
                                      association-compliance-severity
                                      :member-name "ComplianceSeverity")
                                     (sync-compliance :target-type
                                      association-sync-compliance :member-name
                                      "SyncCompliance")
                                     (apply-only-at-cron-interval :target-type
                                      apply-only-at-cron-interval :member-name
                                      "ApplyOnlyAtCronInterval")
                                     (calendar-names :target-type
                                      calendar-name-or-arnlist :member-name
                                      "CalendarNames")
                                     (target-locations :target-type
                                      target-locations :member-name
                                      "TargetLocations")
                                     (schedule-offset :target-type
                                      schedule-offset :member-name
                                      "ScheduleOffset")
                                     (duration :target-type duration
                                      :member-name "Duration")
                                     (target-maps :target-type target-maps
                                      :member-name "TargetMaps"))
                                    (:shape-name "AssociationVersionInfo"))

(smithy/sdk/shapes:define-error association-version-limit-exceeded
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "AssociationVersionLimitExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-list association-version-list :member
                               association-version-info)

(smithy/sdk/shapes:define-structure attachment-content common-lisp:nil
                                    ((name :target-type attachment-name
                                      :member-name "Name")
                                     (size :target-type content-length
                                      :member-name "Size")
                                     (hash :target-type attachment-hash
                                      :member-name "Hash")
                                     (hash-type :target-type
                                      attachment-hash-type :member-name
                                      "HashType")
                                     (url :target-type attachment-url
                                      :member-name "Url"))
                                    (:shape-name "AttachmentContent"))

(smithy/sdk/shapes:define-list attachment-content-list :member
                               (attachment-content :xml-name
                                "AttachmentContent"))

(smithy/sdk/shapes:define-type attachment-hash smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum attachment-hash-type
    common-lisp:nil
  (:sha256 "Sha256"))

(smithy/sdk/shapes:define-type attachment-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure attachment-information common-lisp:nil
                                    ((name :target-type attachment-name
                                      :member-name "Name"))
                                    (:shape-name "AttachmentInformation"))

(smithy/sdk/shapes:define-list attachment-information-list :member
                               (attachment-information :xml-name
                                "AttachmentInformation"))

(smithy/sdk/shapes:define-type attachment-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attachment-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure attachments-source common-lisp:nil
                                    ((key :target-type attachments-source-key
                                      :member-name "Key")
                                     (values :target-type
                                      attachments-source-values :member-name
                                      "Values")
                                     (name :target-type attachment-identifier
                                      :member-name "Name"))
                                    (:shape-name "AttachmentsSource"))

(smithy/sdk/shapes:define-enum attachments-source-key
    common-lisp:nil
  (:source-url "SourceUrl")
  (:s3file-url "S3FileUrl")
  (:attachment-reference "AttachmentReference"))

(smithy/sdk/shapes:define-list attachments-source-list :member
                               attachments-source)

(smithy/sdk/shapes:define-type attachments-source-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list attachments-source-values :member
                               attachments-source-value)

(smithy/sdk/shapes:define-type attribute-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attribute-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type automation-action-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error automation-definition-not-approved-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "AutomationDefinitionNotApprovedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error automation-definition-not-found-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "AutomationDefinitionNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error
 automation-definition-version-not-found-exception common-lisp:nil
 ((message :target-type string :member-name "Message"))
 (:shape-name "AutomationDefinitionVersionNotFoundException") (:error-code 400))

(smithy/sdk/shapes:define-structure automation-execution common-lisp:nil
                                    ((automation-execution-id :target-type
                                      automation-execution-id :member-name
                                      "AutomationExecutionId")
                                     (document-name :target-type document-name
                                      :member-name "DocumentName")
                                     (document-version :target-type
                                      document-version :member-name
                                      "DocumentVersion")
                                     (execution-start-time :target-type
                                      date-time :member-name
                                      "ExecutionStartTime")
                                     (execution-end-time :target-type date-time
                                      :member-name "ExecutionEndTime")
                                     (automation-execution-status :target-type
                                      automation-execution-status :member-name
                                      "AutomationExecutionStatus")
                                     (step-executions :target-type
                                      step-execution-list :member-name
                                      "StepExecutions")
                                     (step-executions-truncated :target-type
                                      boolean :member-name
                                      "StepExecutionsTruncated")
                                     (parameters :target-type
                                      automation-parameter-map :member-name
                                      "Parameters")
                                     (outputs :target-type
                                      automation-parameter-map :member-name
                                      "Outputs")
                                     (failure-message :target-type string
                                      :member-name "FailureMessage")
                                     (mode :target-type execution-mode
                                      :member-name "Mode")
                                     (parent-automation-execution-id
                                      :target-type automation-execution-id
                                      :member-name
                                      "ParentAutomationExecutionId")
                                     (executed-by :target-type string
                                      :member-name "ExecutedBy")
                                     (current-step-name :target-type string
                                      :member-name "CurrentStepName")
                                     (current-action :target-type string
                                      :member-name "CurrentAction")
                                     (target-parameter-name :target-type
                                      automation-parameter-key :member-name
                                      "TargetParameterName")
                                     (targets :target-type targets :member-name
                                      "Targets")
                                     (target-maps :target-type target-maps
                                      :member-name "TargetMaps")
                                     (resolved-targets :target-type
                                      resolved-targets :member-name
                                      "ResolvedTargets")
                                     (max-concurrency :target-type
                                      max-concurrency :member-name
                                      "MaxConcurrency")
                                     (max-errors :target-type max-errors
                                      :member-name "MaxErrors")
                                     (target :target-type string :member-name
                                      "Target")
                                     (target-locations :target-type
                                      target-locations :member-name
                                      "TargetLocations")
                                     (progress-counters :target-type
                                      progress-counters :member-name
                                      "ProgressCounters")
                                     (alarm-configuration :target-type
                                      alarm-configuration :member-name
                                      "AlarmConfiguration")
                                     (triggered-alarms :target-type
                                      alarm-state-information-list :member-name
                                      "TriggeredAlarms")
                                     (target-locations-url :target-type
                                      target-locations-url :member-name
                                      "TargetLocationsURL")
                                     (automation-subtype :target-type
                                      automation-subtype :member-name
                                      "AutomationSubtype")
                                     (scheduled-time :target-type date-time
                                      :member-name "ScheduledTime")
                                     (runbooks :target-type runbooks
                                      :member-name "Runbooks")
                                     (ops-item-id :target-type string
                                      :member-name "OpsItemId")
                                     (association-id :target-type string
                                      :member-name "AssociationId")
                                     (change-request-name :target-type
                                      change-request-name :member-name
                                      "ChangeRequestName")
                                     (variables :target-type
                                      automation-parameter-map :member-name
                                      "Variables"))
                                    (:shape-name "AutomationExecution"))

(smithy/sdk/shapes:define-structure automation-execution-filter common-lisp:nil
                                    ((key :target-type
                                      automation-execution-filter-key :required
                                      common-lisp:t :member-name "Key")
                                     (values :target-type
                                      automation-execution-filter-value-list
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name "AutomationExecutionFilter"))

(smithy/sdk/shapes:define-enum automation-execution-filter-key
    common-lisp:nil
  (:document-name-prefix "DocumentNamePrefix")
  (:execution-status "ExecutionStatus")
  (:execution-id "ExecutionId")
  (:parent-execution-id "ParentExecutionId")
  (:current-action "CurrentAction")
  (:start-time-before "StartTimeBefore")
  (:start-time-after "StartTimeAfter")
  (:automation-type "AutomationType")
  (:tag-key "TagKey")
  (:target-resource-group "TargetResourceGroup")
  (:automation-subtype "AutomationSubtype")
  (:ops-item-id "OpsItemId"))

(smithy/sdk/shapes:define-list automation-execution-filter-list :member
                               automation-execution-filter)

(smithy/sdk/shapes:define-type automation-execution-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list automation-execution-filter-value-list :member
                               automation-execution-filter-value)

(smithy/sdk/shapes:define-type automation-execution-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure automation-execution-inputs common-lisp:nil
                                    ((parameters :target-type
                                      automation-parameter-map :member-name
                                      "Parameters")
                                     (target-parameter-name :target-type
                                      automation-parameter-key :member-name
                                      "TargetParameterName")
                                     (targets :target-type targets :member-name
                                      "Targets")
                                     (target-maps :target-type target-maps
                                      :member-name "TargetMaps")
                                     (target-locations :target-type
                                      target-locations :member-name
                                      "TargetLocations")
                                     (target-locations-url :target-type
                                      target-locations-url :member-name
                                      "TargetLocationsURL"))
                                    (:shape-name "AutomationExecutionInputs"))

(smithy/sdk/shapes:define-error automation-execution-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "AutomationExecutionLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure automation-execution-metadata
                                    common-lisp:nil
                                    ((automation-execution-id :target-type
                                      automation-execution-id :member-name
                                      "AutomationExecutionId")
                                     (document-name :target-type document-name
                                      :member-name "DocumentName")
                                     (document-version :target-type
                                      document-version :member-name
                                      "DocumentVersion")
                                     (automation-execution-status :target-type
                                      automation-execution-status :member-name
                                      "AutomationExecutionStatus")
                                     (execution-start-time :target-type
                                      date-time :member-name
                                      "ExecutionStartTime")
                                     (execution-end-time :target-type date-time
                                      :member-name "ExecutionEndTime")
                                     (executed-by :target-type string
                                      :member-name "ExecutedBy")
                                     (log-file :target-type string :member-name
                                      "LogFile")
                                     (outputs :target-type
                                      automation-parameter-map :member-name
                                      "Outputs")
                                     (mode :target-type execution-mode
                                      :member-name "Mode")
                                     (parent-automation-execution-id
                                      :target-type automation-execution-id
                                      :member-name
                                      "ParentAutomationExecutionId")
                                     (current-step-name :target-type string
                                      :member-name "CurrentStepName")
                                     (current-action :target-type string
                                      :member-name "CurrentAction")
                                     (failure-message :target-type string
                                      :member-name "FailureMessage")
                                     (target-parameter-name :target-type
                                      automation-parameter-key :member-name
                                      "TargetParameterName")
                                     (targets :target-type targets :member-name
                                      "Targets")
                                     (target-maps :target-type target-maps
                                      :member-name "TargetMaps")
                                     (resolved-targets :target-type
                                      resolved-targets :member-name
                                      "ResolvedTargets")
                                     (max-concurrency :target-type
                                      max-concurrency :member-name
                                      "MaxConcurrency")
                                     (max-errors :target-type max-errors
                                      :member-name "MaxErrors")
                                     (target :target-type string :member-name
                                      "Target")
                                     (automation-type :target-type
                                      automation-type :member-name
                                      "AutomationType")
                                     (alarm-configuration :target-type
                                      alarm-configuration :member-name
                                      "AlarmConfiguration")
                                     (triggered-alarms :target-type
                                      alarm-state-information-list :member-name
                                      "TriggeredAlarms")
                                     (target-locations-url :target-type
                                      target-locations-url :member-name
                                      "TargetLocationsURL")
                                     (automation-subtype :target-type
                                      automation-subtype :member-name
                                      "AutomationSubtype")
                                     (scheduled-time :target-type date-time
                                      :member-name "ScheduledTime")
                                     (runbooks :target-type runbooks
                                      :member-name "Runbooks")
                                     (ops-item-id :target-type string
                                      :member-name "OpsItemId")
                                     (association-id :target-type string
                                      :member-name "AssociationId")
                                     (change-request-name :target-type
                                      change-request-name :member-name
                                      "ChangeRequestName"))
                                    (:shape-name "AutomationExecutionMetadata"))

(smithy/sdk/shapes:define-list automation-execution-metadata-list :member
                               automation-execution-metadata)

(smithy/sdk/shapes:define-error automation-execution-not-found-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "AutomationExecutionNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure automation-execution-preview
                                    common-lisp:nil
                                    ((step-previews :target-type
                                      step-preview-map :member-name
                                      "StepPreviews")
                                     (regions :target-type region-list
                                      :member-name "Regions")
                                     (target-previews :target-type
                                      target-preview-list :member-name
                                      "TargetPreviews")
                                     (total-accounts :target-type integer
                                      :member-name "TotalAccounts"))
                                    (:shape-name "AutomationExecutionPreview"))

(smithy/sdk/shapes:define-enum automation-execution-status
    common-lisp:nil
  (:pending "Pending")
  (:inprogress "InProgress")
  (:waiting "Waiting")
  (:success "Success")
  (:timedout "TimedOut")
  (:cancelling "Cancelling")
  (:cancelled "Cancelled")
  (:failed "Failed")
  (:pending-approval "PendingApproval")
  (:approved "Approved")
  (:rejected "Rejected")
  (:scheduled "Scheduled")
  (:runbook-inprogress "RunbookInProgress")
  (:pending-change-calendar-override "PendingChangeCalendarOverride")
  (:change-calendar-override-approved "ChangeCalendarOverrideApproved")
  (:change-calendar-override-rejected "ChangeCalendarOverrideRejected")
  (:completed-with-success "CompletedWithSuccess")
  (:completed-with-failure "CompletedWithFailure")
  (:exited "Exited"))

(smithy/sdk/shapes:define-type automation-parameter-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map automation-parameter-map :key
                              automation-parameter-key :value
                              automation-parameter-value-list)

(smithy/sdk/shapes:define-type automation-parameter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list automation-parameter-value-list :member
                               automation-parameter-value)

(smithy/sdk/shapes:define-error automation-step-not-found-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "AutomationStepNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum automation-subtype
    common-lisp:nil
  (:change-request "ChangeRequest")
  (:access-request "AccessRequest"))

(smithy/sdk/shapes:define-type automation-target-parameter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum automation-type
    common-lisp:nil
  (:cross-account "CrossAccount")
  (:local "Local"))

(smithy/sdk/shapes:define-type baseline-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type baseline-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type baseline-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure baseline-override common-lisp:nil
                                    ((operating-system :target-type
                                      operating-system :member-name
                                      "OperatingSystem")
                                     (global-filters :target-type
                                      patch-filter-group :member-name
                                      "GlobalFilters")
                                     (approval-rules :target-type
                                      patch-rule-group :member-name
                                      "ApprovalRules")
                                     (approved-patches :target-type
                                      patch-id-list :member-name
                                      "ApprovedPatches")
                                     (approved-patches-compliance-level
                                      :target-type patch-compliance-level
                                      :member-name
                                      "ApprovedPatchesComplianceLevel")
                                     (rejected-patches :target-type
                                      patch-id-list :member-name
                                      "RejectedPatches")
                                     (rejected-patches-action :target-type
                                      patch-action :member-name
                                      "RejectedPatchesAction")
                                     (approved-patches-enable-non-security
                                      :target-type boolean :member-name
                                      "ApprovedPatchesEnableNonSecurity")
                                     (sources :target-type patch-source-list
                                      :member-name "Sources")
                                     (available-security-updates-compliance-status
                                      :target-type patch-compliance-status
                                      :member-name
                                      "AvailableSecurityUpdatesComplianceStatus"))
                                    (:shape-name "BaselineOverride"))

(smithy/sdk/shapes:define-type batch-error-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type calendar-name-or-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list calendar-name-or-arnlist :member
                               calendar-name-or-arn)

(smithy/sdk/shapes:define-enum calendar-state
    common-lisp:nil
  (:open "OPEN")
  (:closed "CLOSED"))

(smithy/sdk/shapes:define-input cancel-command-request common-lisp:nil
                                ((command-id :target-type command-id :required
                                  common-lisp:t :member-name "CommandId")
                                 (instance-ids :target-type instance-id-list
                                  :member-name "InstanceIds"))
                                (:shape-name "CancelCommandRequest"))

(smithy/sdk/shapes:define-output cancel-command-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CancelCommandResult"))

(smithy/sdk/shapes:define-input cancel-maintenance-window-execution-request
                                common-lisp:nil
                                ((window-execution-id :target-type
                                  maintenance-window-execution-id :required
                                  common-lisp:t :member-name
                                  "WindowExecutionId"))
                                (:shape-name
                                 "CancelMaintenanceWindowExecutionRequest"))

(smithy/sdk/shapes:define-output cancel-maintenance-window-execution-result
                                 common-lisp:nil
                                 ((window-execution-id :target-type
                                   maintenance-window-execution-id :member-name
                                   "WindowExecutionId"))
                                 (:shape-name
                                  "CancelMaintenanceWindowExecutionResult"))

(smithy/sdk/shapes:define-type category smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list category-enum-list :member category)

(smithy/sdk/shapes:define-list category-list :member category)

(smithy/sdk/shapes:define-type change-details-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type change-request-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type cloud-watch-log-group-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cloud-watch-output-config common-lisp:nil
                                    ((cloud-watch-log-group-name :target-type
                                      cloud-watch-log-group-name :member-name
                                      "CloudWatchLogGroupName")
                                     (cloud-watch-output-enabled :target-type
                                      cloud-watch-output-enabled :member-name
                                      "CloudWatchOutputEnabled"))
                                    (:shape-name "CloudWatchOutputConfig"))

(smithy/sdk/shapes:define-type cloud-watch-output-enabled
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure command common-lisp:nil
                                    ((command-id :target-type command-id
                                      :member-name "CommandId")
                                     (document-name :target-type document-name
                                      :member-name "DocumentName")
                                     (document-version :target-type
                                      document-version :member-name
                                      "DocumentVersion")
                                     (comment :target-type comment :member-name
                                      "Comment")
                                     (expires-after :target-type date-time
                                      :member-name "ExpiresAfter")
                                     (parameters :target-type parameters
                                      :member-name "Parameters")
                                     (instance-ids :target-type
                                      instance-id-list :member-name
                                      "InstanceIds")
                                     (targets :target-type targets :member-name
                                      "Targets")
                                     (requested-date-time :target-type
                                      date-time :member-name
                                      "RequestedDateTime")
                                     (status :target-type command-status
                                      :member-name "Status")
                                     (status-details :target-type
                                      status-details :member-name
                                      "StatusDetails")
                                     (output-s3region :target-type s3region
                                      :member-name "OutputS3Region")
                                     (output-s3bucket-name :target-type
                                      s3bucket-name :member-name
                                      "OutputS3BucketName")
                                     (output-s3key-prefix :target-type
                                      s3key-prefix :member-name
                                      "OutputS3KeyPrefix")
                                     (max-concurrency :target-type
                                      max-concurrency :member-name
                                      "MaxConcurrency")
                                     (max-errors :target-type max-errors
                                      :member-name "MaxErrors")
                                     (target-count :target-type target-count
                                      :member-name "TargetCount")
                                     (completed-count :target-type
                                      completed-count :member-name
                                      "CompletedCount")
                                     (error-count :target-type error-count
                                      :member-name "ErrorCount")
                                     (delivery-timed-out-count :target-type
                                      delivery-timed-out-count :member-name
                                      "DeliveryTimedOutCount")
                                     (service-role :target-type service-role
                                      :member-name "ServiceRole")
                                     (notification-config :target-type
                                      notification-config :member-name
                                      "NotificationConfig")
                                     (cloud-watch-output-config :target-type
                                      cloud-watch-output-config :member-name
                                      "CloudWatchOutputConfig")
                                     (timeout-seconds :target-type
                                      timeout-seconds :member-name
                                      "TimeoutSeconds")
                                     (alarm-configuration :target-type
                                      alarm-configuration :member-name
                                      "AlarmConfiguration")
                                     (triggered-alarms :target-type
                                      alarm-state-information-list :member-name
                                      "TriggeredAlarms"))
                                    (:shape-name "Command"))

(smithy/sdk/shapes:define-structure command-filter common-lisp:nil
                                    ((key :target-type command-filter-key
                                      :required common-lisp:t :member-name
                                      "key")
                                     (value :target-type command-filter-value
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name "CommandFilter"))

(smithy/sdk/shapes:define-enum command-filter-key
    common-lisp:nil
  (:invoked-after "InvokedAfter")
  (:invoked-before "InvokedBefore")
  (:status "Status")
  (:execution-stage "ExecutionStage")
  (:document-name "DocumentName"))

(smithy/sdk/shapes:define-list command-filter-list :member command-filter)

(smithy/sdk/shapes:define-type command-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type command-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure command-invocation common-lisp:nil
                                    ((command-id :target-type command-id
                                      :member-name "CommandId")
                                     (instance-id :target-type instance-id
                                      :member-name "InstanceId")
                                     (instance-name :target-type
                                      instance-tag-name :member-name
                                      "InstanceName")
                                     (comment :target-type comment :member-name
                                      "Comment")
                                     (document-name :target-type document-name
                                      :member-name "DocumentName")
                                     (document-version :target-type
                                      document-version :member-name
                                      "DocumentVersion")
                                     (requested-date-time :target-type
                                      date-time :member-name
                                      "RequestedDateTime")
                                     (status :target-type
                                      command-invocation-status :member-name
                                      "Status")
                                     (status-details :target-type
                                      status-details :member-name
                                      "StatusDetails")
                                     (trace-output :target-type
                                      invocation-trace-output :member-name
                                      "TraceOutput")
                                     (standard-output-url :target-type url
                                      :member-name "StandardOutputUrl")
                                     (standard-error-url :target-type url
                                      :member-name "StandardErrorUrl")
                                     (command-plugins :target-type
                                      command-plugin-list :member-name
                                      "CommandPlugins")
                                     (service-role :target-type service-role
                                      :member-name "ServiceRole")
                                     (notification-config :target-type
                                      notification-config :member-name
                                      "NotificationConfig")
                                     (cloud-watch-output-config :target-type
                                      cloud-watch-output-config :member-name
                                      "CloudWatchOutputConfig"))
                                    (:shape-name "CommandInvocation"))

(smithy/sdk/shapes:define-list command-invocation-list :member
                               command-invocation)

(smithy/sdk/shapes:define-enum command-invocation-status
    common-lisp:nil
  (:pending "Pending")
  (:in-progress "InProgress")
  (:delayed "Delayed")
  (:success "Success")
  (:cancelled "Cancelled")
  (:timed-out "TimedOut")
  (:failed "Failed")
  (:cancelling "Cancelling"))

(smithy/sdk/shapes:define-list command-list :member command)

(smithy/sdk/shapes:define-type command-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure command-plugin common-lisp:nil
                                    ((name :target-type command-plugin-name
                                      :member-name "Name")
                                     (status :target-type command-plugin-status
                                      :member-name "Status")
                                     (status-details :target-type
                                      status-details :member-name
                                      "StatusDetails")
                                     (response-code :target-type response-code
                                      :member-name "ResponseCode")
                                     (response-start-date-time :target-type
                                      date-time :member-name
                                      "ResponseStartDateTime")
                                     (response-finish-date-time :target-type
                                      date-time :member-name
                                      "ResponseFinishDateTime")
                                     (output :target-type command-plugin-output
                                      :member-name "Output")
                                     (standard-output-url :target-type url
                                      :member-name "StandardOutputUrl")
                                     (standard-error-url :target-type url
                                      :member-name "StandardErrorUrl")
                                     (output-s3region :target-type s3region
                                      :member-name "OutputS3Region")
                                     (output-s3bucket-name :target-type
                                      s3bucket-name :member-name
                                      "OutputS3BucketName")
                                     (output-s3key-prefix :target-type
                                      s3key-prefix :member-name
                                      "OutputS3KeyPrefix"))
                                    (:shape-name "CommandPlugin"))

(smithy/sdk/shapes:define-list command-plugin-list :member command-plugin)

(smithy/sdk/shapes:define-type command-plugin-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type command-plugin-output
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum command-plugin-status
    common-lisp:nil
  (:pending "Pending")
  (:in-progress "InProgress")
  (:success "Success")
  (:timed-out "TimedOut")
  (:cancelled "Cancelled")
  (:failed "Failed"))

(smithy/sdk/shapes:define-enum command-status
    common-lisp:nil
  (:pending "Pending")
  (:in-progress "InProgress")
  (:success "Success")
  (:cancelled "Cancelled")
  (:failed "Failed")
  (:timed-out "TimedOut")
  (:cancelling "Cancelling"))

(smithy/sdk/shapes:define-type comment smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type completed-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type compliance-execution-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure compliance-execution-summary
                                    common-lisp:nil
                                    ((execution-time :target-type date-time
                                      :required common-lisp:t :member-name
                                      "ExecutionTime")
                                     (execution-id :target-type
                                      compliance-execution-id :member-name
                                      "ExecutionId")
                                     (execution-type :target-type
                                      compliance-execution-type :member-name
                                      "ExecutionType"))
                                    (:shape-name "ComplianceExecutionSummary"))

(smithy/sdk/shapes:define-type compliance-execution-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type compliance-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure compliance-item common-lisp:nil
                                    ((compliance-type :target-type
                                      compliance-type-name :member-name
                                      "ComplianceType")
                                     (resource-type :target-type
                                      compliance-resource-type :member-name
                                      "ResourceType")
                                     (resource-id :target-type
                                      compliance-resource-id :member-name
                                      "ResourceId")
                                     (id :target-type compliance-item-id
                                      :member-name "Id")
                                     (title :target-type compliance-item-title
                                      :member-name "Title")
                                     (status :target-type compliance-status
                                      :member-name "Status")
                                     (severity :target-type compliance-severity
                                      :member-name "Severity")
                                     (execution-summary :target-type
                                      compliance-execution-summary :member-name
                                      "ExecutionSummary")
                                     (details :target-type
                                      compliance-item-details :member-name
                                      "Details"))
                                    (:shape-name "ComplianceItem"))

(smithy/sdk/shapes:define-type compliance-item-content-hash
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map compliance-item-details :key attribute-name
                              :value attribute-value)

(smithy/sdk/shapes:define-structure compliance-item-entry common-lisp:nil
                                    ((id :target-type compliance-item-id
                                      :member-name "Id")
                                     (title :target-type compliance-item-title
                                      :member-name "Title")
                                     (severity :target-type compliance-severity
                                      :required common-lisp:t :member-name
                                      "Severity")
                                     (status :target-type compliance-status
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (details :target-type
                                      compliance-item-details :member-name
                                      "Details"))
                                    (:shape-name "ComplianceItemEntry"))

(smithy/sdk/shapes:define-list compliance-item-entry-list :member
                               compliance-item-entry)

(smithy/sdk/shapes:define-type compliance-item-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list compliance-item-list :member
                               (compliance-item :xml-name "Item"))

(smithy/sdk/shapes:define-type compliance-item-title
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum compliance-query-operator-type
    common-lisp:nil
  (:equal "EQUAL")
  (:not-equal "NOT_EQUAL")
  (:begin-with "BEGIN_WITH")
  (:less-than "LESS_THAN")
  (:greater-than "GREATER_THAN"))

(smithy/sdk/shapes:define-type compliance-resource-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list compliance-resource-id-list :member
                               compliance-resource-id)

(smithy/sdk/shapes:define-type compliance-resource-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list compliance-resource-type-list :member
                               compliance-resource-type)

(smithy/sdk/shapes:define-enum compliance-severity
    common-lisp:nil
  (:critical "CRITICAL")
  (:high "HIGH")
  (:medium "MEDIUM")
  (:low "LOW")
  (:informational "INFORMATIONAL")
  (:unspecified "UNSPECIFIED"))

(smithy/sdk/shapes:define-enum compliance-status
    common-lisp:nil
  (:compliant "COMPLIANT")
  (:non-compliant "NON_COMPLIANT"))

(smithy/sdk/shapes:define-structure compliance-string-filter common-lisp:nil
                                    ((key :target-type
                                      compliance-string-filter-key :member-name
                                      "Key")
                                     (values :target-type
                                      compliance-string-filter-value-list
                                      :member-name "Values")
                                     (type :target-type
                                      compliance-query-operator-type
                                      :member-name "Type"))
                                    (:shape-name "ComplianceStringFilter"))

(smithy/sdk/shapes:define-type compliance-string-filter-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list compliance-string-filter-list :member
                               (compliance-string-filter :xml-name
                                "ComplianceFilter"))

(smithy/sdk/shapes:define-list compliance-string-filter-value-list :member
                               (compliance-filter-value :xml-name
                                "FilterValue"))

(smithy/sdk/shapes:define-type compliance-summary-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure compliance-summary-item common-lisp:nil
                                    ((compliance-type :target-type
                                      compliance-type-name :member-name
                                      "ComplianceType")
                                     (compliant-summary :target-type
                                      compliant-summary :member-name
                                      "CompliantSummary")
                                     (non-compliant-summary :target-type
                                      non-compliant-summary :member-name
                                      "NonCompliantSummary"))
                                    (:shape-name "ComplianceSummaryItem"))

(smithy/sdk/shapes:define-list compliance-summary-item-list :member
                               (compliance-summary-item :xml-name "Item"))

(smithy/sdk/shapes:define-error compliance-type-count-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "ComplianceTypeCountLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type compliance-type-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum compliance-upload-type
    common-lisp:nil
  (:complete "COMPLETE")
  (:partial "PARTIAL"))

(smithy/sdk/shapes:define-structure compliant-summary common-lisp:nil
                                    ((compliant-count :target-type
                                      compliance-summary-count :member-name
                                      "CompliantCount")
                                     (severity-summary :target-type
                                      severity-summary :member-name
                                      "SeveritySummary"))
                                    (:shape-name "CompliantSummary"))

(smithy/sdk/shapes:define-type computer-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum connection-status
    common-lisp:nil
  (:connected "connected")
  (:not-connected "notconnected"))

(smithy/sdk/shapes:define-type content-length smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-input create-activation-request common-lisp:nil
                                ((description :target-type
                                  activation-description :member-name
                                  "Description")
                                 (default-instance-name :target-type
                                  default-instance-name :member-name
                                  "DefaultInstanceName")
                                 (iam-role :target-type iam-role :required
                                  common-lisp:t :member-name "IamRole")
                                 (registration-limit :target-type
                                  registration-limit :member-name
                                  "RegistrationLimit")
                                 (expiration-date :target-type expiration-date
                                  :member-name "ExpirationDate")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (registration-metadata :target-type
                                  registration-metadata-list :member-name
                                  "RegistrationMetadata"))
                                (:shape-name "CreateActivationRequest"))

(smithy/sdk/shapes:define-output create-activation-result common-lisp:nil
                                 ((activation-id :target-type activation-id
                                   :member-name "ActivationId")
                                  (activation-code :target-type activation-code
                                   :member-name "ActivationCode"))
                                 (:shape-name "CreateActivationResult"))

(smithy/sdk/shapes:define-input create-association-batch-request
                                common-lisp:nil
                                ((entries :target-type
                                  create-association-batch-request-entries
                                  :required common-lisp:t :member-name
                                  "Entries"))
                                (:shape-name "CreateAssociationBatchRequest"))

(smithy/sdk/shapes:define-list create-association-batch-request-entries :member
                               (create-association-batch-request-entry
                                :xml-name "entries"))

(smithy/sdk/shapes:define-structure create-association-batch-request-entry
                                    common-lisp:nil
                                    ((name :target-type document-arn :required
                                      common-lisp:t :member-name "Name")
                                     (instance-id :target-type instance-id
                                      :member-name "InstanceId")
                                     (parameters :target-type parameters
                                      :member-name "Parameters")
                                     (automation-target-parameter-name
                                      :target-type
                                      automation-target-parameter-name
                                      :member-name
                                      "AutomationTargetParameterName")
                                     (document-version :target-type
                                      document-version :member-name
                                      "DocumentVersion")
                                     (targets :target-type targets :member-name
                                      "Targets")
                                     (schedule-expression :target-type
                                      schedule-expression :member-name
                                      "ScheduleExpression")
                                     (output-location :target-type
                                      instance-association-output-location
                                      :member-name "OutputLocation")
                                     (association-name :target-type
                                      association-name :member-name
                                      "AssociationName")
                                     (max-errors :target-type max-errors
                                      :member-name "MaxErrors")
                                     (max-concurrency :target-type
                                      max-concurrency :member-name
                                      "MaxConcurrency")
                                     (compliance-severity :target-type
                                      association-compliance-severity
                                      :member-name "ComplianceSeverity")
                                     (sync-compliance :target-type
                                      association-sync-compliance :member-name
                                      "SyncCompliance")
                                     (apply-only-at-cron-interval :target-type
                                      apply-only-at-cron-interval :member-name
                                      "ApplyOnlyAtCronInterval")
                                     (calendar-names :target-type
                                      calendar-name-or-arnlist :member-name
                                      "CalendarNames")
                                     (target-locations :target-type
                                      target-locations :member-name
                                      "TargetLocations")
                                     (schedule-offset :target-type
                                      schedule-offset :member-name
                                      "ScheduleOffset")
                                     (duration :target-type duration
                                      :member-name "Duration")
                                     (target-maps :target-type target-maps
                                      :member-name "TargetMaps")
                                     (alarm-configuration :target-type
                                      alarm-configuration :member-name
                                      "AlarmConfiguration"))
                                    (:shape-name
                                     "CreateAssociationBatchRequestEntry"))

(smithy/sdk/shapes:define-output create-association-batch-result
                                 common-lisp:nil
                                 ((successful :target-type
                                   association-description-list :member-name
                                   "Successful")
                                  (failed :target-type
                                   failed-create-association-list :member-name
                                   "Failed"))
                                 (:shape-name "CreateAssociationBatchResult"))

(smithy/sdk/shapes:define-input create-association-request common-lisp:nil
                                ((name :target-type document-arn :required
                                  common-lisp:t :member-name "Name")
                                 (document-version :target-type
                                  document-version :member-name
                                  "DocumentVersion")
                                 (instance-id :target-type instance-id
                                  :member-name "InstanceId")
                                 (parameters :target-type parameters
                                  :member-name "Parameters")
                                 (targets :target-type targets :member-name
                                  "Targets")
                                 (schedule-expression :target-type
                                  schedule-expression :member-name
                                  "ScheduleExpression")
                                 (output-location :target-type
                                  instance-association-output-location
                                  :member-name "OutputLocation")
                                 (association-name :target-type
                                  association-name :member-name
                                  "AssociationName")
                                 (automation-target-parameter-name :target-type
                                  automation-target-parameter-name :member-name
                                  "AutomationTargetParameterName")
                                 (max-errors :target-type max-errors
                                  :member-name "MaxErrors")
                                 (max-concurrency :target-type max-concurrency
                                  :member-name "MaxConcurrency")
                                 (compliance-severity :target-type
                                  association-compliance-severity :member-name
                                  "ComplianceSeverity")
                                 (sync-compliance :target-type
                                  association-sync-compliance :member-name
                                  "SyncCompliance")
                                 (apply-only-at-cron-interval :target-type
                                  apply-only-at-cron-interval :member-name
                                  "ApplyOnlyAtCronInterval")
                                 (calendar-names :target-type
                                  calendar-name-or-arnlist :member-name
                                  "CalendarNames")
                                 (target-locations :target-type
                                  target-locations :member-name
                                  "TargetLocations")
                                 (schedule-offset :target-type schedule-offset
                                  :member-name "ScheduleOffset")
                                 (duration :target-type duration :member-name
                                  "Duration")
                                 (target-maps :target-type target-maps
                                  :member-name "TargetMaps")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (alarm-configuration :target-type
                                  alarm-configuration :member-name
                                  "AlarmConfiguration"))
                                (:shape-name "CreateAssociationRequest"))

(smithy/sdk/shapes:define-output create-association-result common-lisp:nil
                                 ((association-description :target-type
                                   association-description :member-name
                                   "AssociationDescription"))
                                 (:shape-name "CreateAssociationResult"))

(smithy/sdk/shapes:define-input create-document-request common-lisp:nil
                                ((content :target-type document-content
                                  :required common-lisp:t :member-name
                                  "Content")
                                 (requires :target-type document-requires-list
                                  :member-name "Requires")
                                 (attachments :target-type
                                  attachments-source-list :member-name
                                  "Attachments")
                                 (name :target-type document-name :required
                                  common-lisp:t :member-name "Name")
                                 (display-name :target-type
                                  document-display-name :member-name
                                  "DisplayName")
                                 (version-name :target-type
                                  document-version-name :member-name
                                  "VersionName")
                                 (document-type :target-type document-type
                                  :member-name "DocumentType")
                                 (document-format :target-type document-format
                                  :member-name "DocumentFormat")
                                 (target-type :target-type target-type
                                  :member-name "TargetType")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateDocumentRequest"))

(smithy/sdk/shapes:define-output create-document-result common-lisp:nil
                                 ((document-description :target-type
                                   document-description :member-name
                                   "DocumentDescription"))
                                 (:shape-name "CreateDocumentResult"))

(smithy/sdk/shapes:define-input create-maintenance-window-request
                                common-lisp:nil
                                ((name :target-type maintenance-window-name
                                  :required common-lisp:t :member-name "Name")
                                 (description :target-type
                                  maintenance-window-description :member-name
                                  "Description")
                                 (start-date :target-type
                                  maintenance-window-string-date-time
                                  :member-name "StartDate")
                                 (end-date :target-type
                                  maintenance-window-string-date-time
                                  :member-name "EndDate")
                                 (schedule :target-type
                                  maintenance-window-schedule :required
                                  common-lisp:t :member-name "Schedule")
                                 (schedule-timezone :target-type
                                  maintenance-window-timezone :member-name
                                  "ScheduleTimezone")
                                 (schedule-offset :target-type
                                  maintenance-window-offset :member-name
                                  "ScheduleOffset")
                                 (duration :target-type
                                  maintenance-window-duration-hours :required
                                  common-lisp:t :member-name "Duration")
                                 (cutoff :target-type maintenance-window-cutoff
                                  :required common-lisp:t :member-name
                                  "Cutoff")
                                 (allow-unassociated-targets :target-type
                                  maintenance-window-allow-unassociated-targets
                                  :required common-lisp:t :member-name
                                  "AllowUnassociatedTargets")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateMaintenanceWindowRequest"))

(smithy/sdk/shapes:define-output create-maintenance-window-result
                                 common-lisp:nil
                                 ((window-id :target-type maintenance-window-id
                                   :member-name "WindowId"))
                                 (:shape-name "CreateMaintenanceWindowResult"))

(smithy/sdk/shapes:define-input create-ops-item-request common-lisp:nil
                                ((description :target-type ops-item-description
                                  :required common-lisp:t :member-name
                                  "Description")
                                 (ops-item-type :target-type ops-item-type
                                  :member-name "OpsItemType")
                                 (operational-data :target-type
                                  ops-item-operational-data :member-name
                                  "OperationalData")
                                 (notifications :target-type
                                  ops-item-notifications :member-name
                                  "Notifications")
                                 (priority :target-type ops-item-priority
                                  :member-name "Priority")
                                 (related-ops-items :target-type
                                  related-ops-items :member-name
                                  "RelatedOpsItems")
                                 (source :target-type ops-item-source :required
                                  common-lisp:t :member-name "Source")
                                 (title :target-type ops-item-title :required
                                  common-lisp:t :member-name "Title")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (category :target-type ops-item-category
                                  :member-name "Category")
                                 (severity :target-type ops-item-severity
                                  :member-name "Severity")
                                 (actual-start-time :target-type date-time
                                  :member-name "ActualStartTime")
                                 (actual-end-time :target-type date-time
                                  :member-name "ActualEndTime")
                                 (planned-start-time :target-type date-time
                                  :member-name "PlannedStartTime")
                                 (planned-end-time :target-type date-time
                                  :member-name "PlannedEndTime")
                                 (account-id :target-type ops-item-account-id
                                  :member-name "AccountId"))
                                (:shape-name "CreateOpsItemRequest"))

(smithy/sdk/shapes:define-output create-ops-item-response common-lisp:nil
                                 ((ops-item-id :target-type string :member-name
                                   "OpsItemId")
                                  (ops-item-arn :target-type ops-item-arn
                                   :member-name "OpsItemArn"))
                                 (:shape-name "CreateOpsItemResponse"))

(smithy/sdk/shapes:define-input create-ops-metadata-request common-lisp:nil
                                ((resource-id :target-type
                                  ops-metadata-resource-id :required
                                  common-lisp:t :member-name "ResourceId")
                                 (metadata :target-type metadata-map
                                  :member-name "Metadata")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateOpsMetadataRequest"))

(smithy/sdk/shapes:define-output create-ops-metadata-result common-lisp:nil
                                 ((ops-metadata-arn :target-type
                                   ops-metadata-arn :member-name
                                   "OpsMetadataArn"))
                                 (:shape-name "CreateOpsMetadataResult"))

(smithy/sdk/shapes:define-input create-patch-baseline-request common-lisp:nil
                                ((operating-system :target-type
                                  operating-system :member-name
                                  "OperatingSystem")
                                 (name :target-type baseline-name :required
                                  common-lisp:t :member-name "Name")
                                 (global-filters :target-type
                                  patch-filter-group :member-name
                                  "GlobalFilters")
                                 (approval-rules :target-type patch-rule-group
                                  :member-name "ApprovalRules")
                                 (approved-patches :target-type patch-id-list
                                  :member-name "ApprovedPatches")
                                 (approved-patches-compliance-level
                                  :target-type patch-compliance-level
                                  :member-name
                                  "ApprovedPatchesComplianceLevel")
                                 (approved-patches-enable-non-security
                                  :target-type boolean :member-name
                                  "ApprovedPatchesEnableNonSecurity")
                                 (rejected-patches :target-type patch-id-list
                                  :member-name "RejectedPatches")
                                 (rejected-patches-action :target-type
                                  patch-action :member-name
                                  "RejectedPatchesAction")
                                 (description :target-type baseline-description
                                  :member-name "Description")
                                 (sources :target-type patch-source-list
                                  :member-name "Sources")
                                 (available-security-updates-compliance-status
                                  :target-type patch-compliance-status
                                  :member-name
                                  "AvailableSecurityUpdatesComplianceStatus")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreatePatchBaselineRequest"))

(smithy/sdk/shapes:define-output create-patch-baseline-result common-lisp:nil
                                 ((baseline-id :target-type baseline-id
                                   :member-name "BaselineId"))
                                 (:shape-name "CreatePatchBaselineResult"))

(smithy/sdk/shapes:define-input create-resource-data-sync-request
                                common-lisp:nil
                                ((sync-name :target-type
                                  resource-data-sync-name :required
                                  common-lisp:t :member-name "SyncName")
                                 (s3destination :target-type
                                  resource-data-sync-s3destination :member-name
                                  "S3Destination")
                                 (sync-type :target-type
                                  resource-data-sync-type :member-name
                                  "SyncType")
                                 (sync-source :target-type
                                  resource-data-sync-source :member-name
                                  "SyncSource"))
                                (:shape-name "CreateResourceDataSyncRequest"))

(smithy/sdk/shapes:define-output create-resource-data-sync-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "CreateResourceDataSyncResult"))

(smithy/sdk/shapes:define-type created-date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure credentials common-lisp:nil
                                    ((access-key-id :target-type
                                      access-key-id-type :required
                                      common-lisp:t :member-name "AccessKeyId")
                                     (secret-access-key :target-type
                                      access-key-secret-type :required
                                      common-lisp:t :member-name
                                      "SecretAccessKey")
                                     (session-token :target-type
                                      session-token-type :required
                                      common-lisp:t :member-name
                                      "SessionToken")
                                     (expiration-time :target-type date-time
                                      :required common-lisp:t :member-name
                                      "ExpirationTime"))
                                    (:shape-name "Credentials"))

(smithy/sdk/shapes:define-error custom-schema-count-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "CustomSchemaCountLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type date-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type default-baseline smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type default-instance-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-activation-request common-lisp:nil
                                ((activation-id :target-type activation-id
                                  :required common-lisp:t :member-name
                                  "ActivationId"))
                                (:shape-name "DeleteActivationRequest"))

(smithy/sdk/shapes:define-output delete-activation-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteActivationResult"))

(smithy/sdk/shapes:define-input delete-association-request common-lisp:nil
                                ((name :target-type document-arn :member-name
                                  "Name")
                                 (instance-id :target-type instance-id
                                  :member-name "InstanceId")
                                 (association-id :target-type association-id
                                  :member-name "AssociationId"))
                                (:shape-name "DeleteAssociationRequest"))

(smithy/sdk/shapes:define-output delete-association-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteAssociationResult"))

(smithy/sdk/shapes:define-input delete-document-request common-lisp:nil
                                ((name :target-type document-name :required
                                  common-lisp:t :member-name "Name")
                                 (document-version :target-type
                                  document-version :member-name
                                  "DocumentVersion")
                                 (version-name :target-type
                                  document-version-name :member-name
                                  "VersionName")
                                 (force :target-type boolean :member-name
                                  "Force"))
                                (:shape-name "DeleteDocumentRequest"))

(smithy/sdk/shapes:define-output delete-document-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteDocumentResult"))

(smithy/sdk/shapes:define-input delete-inventory-request common-lisp:nil
                                ((type-name :target-type
                                  inventory-item-type-name :required
                                  common-lisp:t :member-name "TypeName")
                                 (schema-delete-option :target-type
                                  inventory-schema-delete-option :member-name
                                  "SchemaDeleteOption")
                                 (dry-run :target-type dry-run :member-name
                                  "DryRun")
                                 (client-token :target-type uuid :member-name
                                  "ClientToken"))
                                (:shape-name "DeleteInventoryRequest"))

(smithy/sdk/shapes:define-output delete-inventory-result common-lisp:nil
                                 ((deletion-id :target-type uuid :member-name
                                   "DeletionId")
                                  (type-name :target-type
                                   inventory-item-type-name :member-name
                                   "TypeName")
                                  (deletion-summary :target-type
                                   inventory-deletion-summary :member-name
                                   "DeletionSummary"))
                                 (:shape-name "DeleteInventoryResult"))

(smithy/sdk/shapes:define-input delete-maintenance-window-request
                                common-lisp:nil
                                ((window-id :target-type maintenance-window-id
                                  :required common-lisp:t :member-name
                                  "WindowId"))
                                (:shape-name "DeleteMaintenanceWindowRequest"))

(smithy/sdk/shapes:define-output delete-maintenance-window-result
                                 common-lisp:nil
                                 ((window-id :target-type maintenance-window-id
                                   :member-name "WindowId"))
                                 (:shape-name "DeleteMaintenanceWindowResult"))

(smithy/sdk/shapes:define-input delete-ops-item-request common-lisp:nil
                                ((ops-item-id :target-type ops-item-id
                                  :required common-lisp:t :member-name
                                  "OpsItemId"))
                                (:shape-name "DeleteOpsItemRequest"))

(smithy/sdk/shapes:define-output delete-ops-item-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteOpsItemResponse"))

(smithy/sdk/shapes:define-input delete-ops-metadata-request common-lisp:nil
                                ((ops-metadata-arn :target-type
                                  ops-metadata-arn :required common-lisp:t
                                  :member-name "OpsMetadataArn"))
                                (:shape-name "DeleteOpsMetadataRequest"))

(smithy/sdk/shapes:define-output delete-ops-metadata-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteOpsMetadataResult"))

(smithy/sdk/shapes:define-input delete-parameter-request common-lisp:nil
                                ((name :target-type psparameter-name :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "DeleteParameterRequest"))

(smithy/sdk/shapes:define-output delete-parameter-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteParameterResult"))

(smithy/sdk/shapes:define-input delete-parameters-request common-lisp:nil
                                ((names :target-type parameter-name-list
                                  :required common-lisp:t :member-name
                                  "Names"))
                                (:shape-name "DeleteParametersRequest"))

(smithy/sdk/shapes:define-output delete-parameters-result common-lisp:nil
                                 ((deleted-parameters :target-type
                                   parameter-name-list :member-name
                                   "DeletedParameters")
                                  (invalid-parameters :target-type
                                   parameter-name-list :member-name
                                   "InvalidParameters"))
                                 (:shape-name "DeleteParametersResult"))

(smithy/sdk/shapes:define-input delete-patch-baseline-request common-lisp:nil
                                ((baseline-id :target-type baseline-id
                                  :required common-lisp:t :member-name
                                  "BaselineId"))
                                (:shape-name "DeletePatchBaselineRequest"))

(smithy/sdk/shapes:define-output delete-patch-baseline-result common-lisp:nil
                                 ((baseline-id :target-type baseline-id
                                   :member-name "BaselineId"))
                                 (:shape-name "DeletePatchBaselineResult"))

(smithy/sdk/shapes:define-input delete-resource-data-sync-request
                                common-lisp:nil
                                ((sync-name :target-type
                                  resource-data-sync-name :required
                                  common-lisp:t :member-name "SyncName")
                                 (sync-type :target-type
                                  resource-data-sync-type :member-name
                                  "SyncType"))
                                (:shape-name "DeleteResourceDataSyncRequest"))

(smithy/sdk/shapes:define-output delete-resource-data-sync-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteResourceDataSyncResult"))

(smithy/sdk/shapes:define-input delete-resource-policy-request common-lisp:nil
                                ((resource-arn :target-type resource-arn-string
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (policy-id :target-type policy-id :required
                                  common-lisp:t :member-name "PolicyId")
                                 (policy-hash :target-type policy-hash
                                  :required common-lisp:t :member-name
                                  "PolicyHash"))
                                (:shape-name "DeleteResourcePolicyRequest"))

(smithy/sdk/shapes:define-output delete-resource-policy-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteResourcePolicyResponse"))

(smithy/sdk/shapes:define-type delivery-timed-out-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input deregister-managed-instance-request
                                common-lisp:nil
                                ((instance-id :target-type managed-instance-id
                                  :required common-lisp:t :member-name
                                  "InstanceId"))
                                (:shape-name
                                 "DeregisterManagedInstanceRequest"))

(smithy/sdk/shapes:define-output deregister-managed-instance-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeregisterManagedInstanceResult"))

(smithy/sdk/shapes:define-input
 deregister-patch-baseline-for-patch-group-request common-lisp:nil
 ((baseline-id :target-type baseline-id :required common-lisp:t :member-name
   "BaselineId")
  (patch-group :target-type patch-group :required common-lisp:t :member-name
   "PatchGroup"))
 (:shape-name "DeregisterPatchBaselineForPatchGroupRequest"))

(smithy/sdk/shapes:define-output
 deregister-patch-baseline-for-patch-group-result common-lisp:nil
 ((baseline-id :target-type baseline-id :member-name "BaselineId")
  (patch-group :target-type patch-group :member-name "PatchGroup"))
 (:shape-name "DeregisterPatchBaselineForPatchGroupResult"))

(smithy/sdk/shapes:define-input
 deregister-target-from-maintenance-window-request common-lisp:nil
 ((window-id :target-type maintenance-window-id :required common-lisp:t
   :member-name "WindowId")
  (window-target-id :target-type maintenance-window-target-id :required
   common-lisp:t :member-name "WindowTargetId")
  (safe :target-type boolean :member-name "Safe"))
 (:shape-name "DeregisterTargetFromMaintenanceWindowRequest"))

(smithy/sdk/shapes:define-output
 deregister-target-from-maintenance-window-result common-lisp:nil
 ((window-id :target-type maintenance-window-id :member-name "WindowId")
  (window-target-id :target-type maintenance-window-target-id :member-name
   "WindowTargetId"))
 (:shape-name "DeregisterTargetFromMaintenanceWindowResult"))

(smithy/sdk/shapes:define-input deregister-task-from-maintenance-window-request
                                common-lisp:nil
                                ((window-id :target-type maintenance-window-id
                                  :required common-lisp:t :member-name
                                  "WindowId")
                                 (window-task-id :target-type
                                  maintenance-window-task-id :required
                                  common-lisp:t :member-name "WindowTaskId"))
                                (:shape-name
                                 "DeregisterTaskFromMaintenanceWindowRequest"))

(smithy/sdk/shapes:define-output deregister-task-from-maintenance-window-result
                                 common-lisp:nil
                                 ((window-id :target-type maintenance-window-id
                                   :member-name "WindowId")
                                  (window-task-id :target-type
                                   maintenance-window-task-id :member-name
                                   "WindowTaskId"))
                                 (:shape-name
                                  "DeregisterTaskFromMaintenanceWindowResult"))

(smithy/sdk/shapes:define-structure describe-activations-filter common-lisp:nil
                                    ((filter-key :target-type
                                      describe-activations-filter-keys
                                      :member-name "FilterKey")
                                     (filter-values :target-type string-list
                                      :member-name "FilterValues"))
                                    (:shape-name "DescribeActivationsFilter"))

(smithy/sdk/shapes:define-enum describe-activations-filter-keys
    common-lisp:nil
  (:activation-ids "ActivationIds")
  (:default-instance-name "DefaultInstanceName")
  (:iam-role "IamRole"))

(smithy/sdk/shapes:define-list describe-activations-filter-list :member
                               describe-activations-filter)

(smithy/sdk/shapes:define-input describe-activations-request common-lisp:nil
                                ((filters :target-type
                                  describe-activations-filter-list :member-name
                                  "Filters")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "DescribeActivationsRequest"))

(smithy/sdk/shapes:define-output describe-activations-result common-lisp:nil
                                 ((activation-list :target-type activation-list
                                   :member-name "ActivationList")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeActivationsResult"))

(smithy/sdk/shapes:define-input describe-association-execution-targets-request
                                common-lisp:nil
                                ((association-id :target-type association-id
                                  :required common-lisp:t :member-name
                                  "AssociationId")
                                 (execution-id :target-type
                                  association-execution-id :required
                                  common-lisp:t :member-name "ExecutionId")
                                 (filters :target-type
                                  association-execution-targets-filter-list
                                  :member-name "Filters")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "DescribeAssociationExecutionTargetsRequest"))

(smithy/sdk/shapes:define-output describe-association-execution-targets-result
                                 common-lisp:nil
                                 ((association-execution-targets :target-type
                                   association-execution-targets-list
                                   :member-name "AssociationExecutionTargets")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeAssociationExecutionTargetsResult"))

(smithy/sdk/shapes:define-input describe-association-executions-request
                                common-lisp:nil
                                ((association-id :target-type association-id
                                  :required common-lisp:t :member-name
                                  "AssociationId")
                                 (filters :target-type
                                  association-execution-filter-list
                                  :member-name "Filters")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "DescribeAssociationExecutionsRequest"))

(smithy/sdk/shapes:define-output describe-association-executions-result
                                 common-lisp:nil
                                 ((association-executions :target-type
                                   association-executions-list :member-name
                                   "AssociationExecutions")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeAssociationExecutionsResult"))

(smithy/sdk/shapes:define-input describe-association-request common-lisp:nil
                                ((name :target-type document-arn :member-name
                                  "Name")
                                 (instance-id :target-type instance-id
                                  :member-name "InstanceId")
                                 (association-id :target-type association-id
                                  :member-name "AssociationId")
                                 (association-version :target-type
                                  association-version :member-name
                                  "AssociationVersion"))
                                (:shape-name "DescribeAssociationRequest"))

(smithy/sdk/shapes:define-output describe-association-result common-lisp:nil
                                 ((association-description :target-type
                                   association-description :member-name
                                   "AssociationDescription"))
                                 (:shape-name "DescribeAssociationResult"))

(smithy/sdk/shapes:define-input describe-automation-executions-request
                                common-lisp:nil
                                ((filters :target-type
                                  automation-execution-filter-list :member-name
                                  "Filters")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "DescribeAutomationExecutionsRequest"))

(smithy/sdk/shapes:define-output describe-automation-executions-result
                                 common-lisp:nil
                                 ((automation-execution-metadata-list
                                   :target-type
                                   automation-execution-metadata-list
                                   :member-name
                                   "AutomationExecutionMetadataList")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeAutomationExecutionsResult"))

(smithy/sdk/shapes:define-input describe-automation-step-executions-request
                                common-lisp:nil
                                ((automation-execution-id :target-type
                                  automation-execution-id :required
                                  common-lisp:t :member-name
                                  "AutomationExecutionId")
                                 (filters :target-type
                                  step-execution-filter-list :member-name
                                  "Filters")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (reverse-order :target-type boolean
                                  :member-name "ReverseOrder"))
                                (:shape-name
                                 "DescribeAutomationStepExecutionsRequest"))

(smithy/sdk/shapes:define-output describe-automation-step-executions-result
                                 common-lisp:nil
                                 ((step-executions :target-type
                                   step-execution-list :member-name
                                   "StepExecutions")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeAutomationStepExecutionsResult"))

(smithy/sdk/shapes:define-input describe-available-patches-request
                                common-lisp:nil
                                ((filters :target-type
                                  patch-orchestrator-filter-list :member-name
                                  "Filters")
                                 (max-results :target-type
                                  patch-baseline-max-results :member-name
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "DescribeAvailablePatchesRequest"))

(smithy/sdk/shapes:define-output describe-available-patches-result
                                 common-lisp:nil
                                 ((patches :target-type patch-list :member-name
                                   "Patches")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeAvailablePatchesResult"))

(smithy/sdk/shapes:define-input describe-document-permission-request
                                common-lisp:nil
                                ((name :target-type document-name :required
                                  common-lisp:t :member-name "Name")
                                 (permission-type :target-type
                                  document-permission-type :required
                                  common-lisp:t :member-name "PermissionType")
                                 (max-results :target-type
                                  document-permission-max-results :member-name
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "DescribeDocumentPermissionRequest"))

(smithy/sdk/shapes:define-output describe-document-permission-response
                                 common-lisp:nil
                                 ((account-ids :target-type account-id-list
                                   :member-name "AccountIds")
                                  (account-sharing-info-list :target-type
                                   account-sharing-info-list :member-name
                                   "AccountSharingInfoList")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeDocumentPermissionResponse"))

(smithy/sdk/shapes:define-input describe-document-request common-lisp:nil
                                ((name :target-type document-arn :required
                                  common-lisp:t :member-name "Name")
                                 (document-version :target-type
                                  document-version :member-name
                                  "DocumentVersion")
                                 (version-name :target-type
                                  document-version-name :member-name
                                  "VersionName"))
                                (:shape-name "DescribeDocumentRequest"))

(smithy/sdk/shapes:define-output describe-document-result common-lisp:nil
                                 ((document :target-type document-description
                                   :member-name "Document"))
                                 (:shape-name "DescribeDocumentResult"))

(smithy/sdk/shapes:define-input
 describe-effective-instance-associations-request common-lisp:nil
 ((instance-id :target-type instance-id :required common-lisp:t :member-name
   "InstanceId")
  (max-results :target-type effective-instance-association-max-results
   :member-name "MaxResults")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "DescribeEffectiveInstanceAssociationsRequest"))

(smithy/sdk/shapes:define-output
 describe-effective-instance-associations-result common-lisp:nil
 ((associations :target-type instance-association-list :member-name
   "Associations")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "DescribeEffectiveInstanceAssociationsResult"))

(smithy/sdk/shapes:define-input
 describe-effective-patches-for-patch-baseline-request common-lisp:nil
 ((baseline-id :target-type baseline-id :required common-lisp:t :member-name
   "BaselineId")
  (max-results :target-type patch-baseline-max-results :member-name
   "MaxResults")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "DescribeEffectivePatchesForPatchBaselineRequest"))

(smithy/sdk/shapes:define-output
 describe-effective-patches-for-patch-baseline-result common-lisp:nil
 ((effective-patches :target-type effective-patch-list :member-name
   "EffectivePatches")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "DescribeEffectivePatchesForPatchBaselineResult"))

(smithy/sdk/shapes:define-input describe-instance-associations-status-request
                                common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "InstanceId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "DescribeInstanceAssociationsStatusRequest"))

(smithy/sdk/shapes:define-output describe-instance-associations-status-result
                                 common-lisp:nil
                                 ((instance-association-status-infos
                                   :target-type
                                   instance-association-status-infos
                                   :member-name
                                   "InstanceAssociationStatusInfos")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeInstanceAssociationsStatusResult"))

(smithy/sdk/shapes:define-input describe-instance-information-request
                                common-lisp:nil
                                ((instance-information-filter-list :target-type
                                  instance-information-filter-list :member-name
                                  "InstanceInformationFilterList")
                                 (filters :target-type
                                  instance-information-string-filter-list
                                  :member-name "Filters")
                                 (max-results :target-type
                                  max-results-ec2compatible :member-name
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "DescribeInstanceInformationRequest"))

(smithy/sdk/shapes:define-output describe-instance-information-result
                                 common-lisp:nil
                                 ((instance-information-list :target-type
                                   instance-information-list :member-name
                                   "InstanceInformationList")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeInstanceInformationResult"))

(smithy/sdk/shapes:define-input
 describe-instance-patch-states-for-patch-group-request common-lisp:nil
 ((patch-group :target-type patch-group :required common-lisp:t :member-name
   "PatchGroup")
  (filters :target-type instance-patch-state-filter-list :member-name
   "Filters")
  (next-token :target-type next-token :member-name "NextToken")
  (max-results :target-type patch-compliance-max-results :member-name
   "MaxResults"))
 (:shape-name "DescribeInstancePatchStatesForPatchGroupRequest"))

(smithy/sdk/shapes:define-output
 describe-instance-patch-states-for-patch-group-result common-lisp:nil
 ((instance-patch-states :target-type instance-patch-states-list :member-name
   "InstancePatchStates")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "DescribeInstancePatchStatesForPatchGroupResult"))

(smithy/sdk/shapes:define-input describe-instance-patch-states-request
                                common-lisp:nil
                                ((instance-ids :target-type instance-id-list
                                  :required common-lisp:t :member-name
                                  "InstanceIds")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  patch-compliance-max-results :member-name
                                  "MaxResults"))
                                (:shape-name
                                 "DescribeInstancePatchStatesRequest"))

(smithy/sdk/shapes:define-output describe-instance-patch-states-result
                                 common-lisp:nil
                                 ((instance-patch-states :target-type
                                   instance-patch-state-list :member-name
                                   "InstancePatchStates")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeInstancePatchStatesResult"))

(smithy/sdk/shapes:define-input describe-instance-patches-request
                                common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "InstanceId")
                                 (filters :target-type
                                  patch-orchestrator-filter-list :member-name
                                  "Filters")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  patch-compliance-max-results :member-name
                                  "MaxResults"))
                                (:shape-name "DescribeInstancePatchesRequest"))

(smithy/sdk/shapes:define-output describe-instance-patches-result
                                 common-lisp:nil
                                 ((patches :target-type
                                   patch-compliance-data-list :member-name
                                   "Patches")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeInstancePatchesResult"))

(smithy/sdk/shapes:define-type describe-instance-properties-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input describe-instance-properties-request
                                common-lisp:nil
                                ((instance-property-filter-list :target-type
                                  instance-property-filter-list :member-name
                                  "InstancePropertyFilterList")
                                 (filters-with-operator :target-type
                                  instance-property-string-filter-list
                                  :member-name "FiltersWithOperator")
                                 (max-results :target-type
                                  describe-instance-properties-max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "DescribeInstancePropertiesRequest"))

(smithy/sdk/shapes:define-output describe-instance-properties-result
                                 common-lisp:nil
                                 ((instance-properties :target-type
                                   instance-properties :member-name
                                   "InstanceProperties")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeInstancePropertiesResult"))

(smithy/sdk/shapes:define-input describe-inventory-deletions-request
                                common-lisp:nil
                                ((deletion-id :target-type uuid :member-name
                                  "DeletionId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "DescribeInventoryDeletionsRequest"))

(smithy/sdk/shapes:define-output describe-inventory-deletions-result
                                 common-lisp:nil
                                 ((inventory-deletions :target-type
                                   inventory-deletions-list :member-name
                                   "InventoryDeletions")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeInventoryDeletionsResult"))

(smithy/sdk/shapes:define-input
 describe-maintenance-window-execution-task-invocations-request common-lisp:nil
 ((window-execution-id :target-type maintenance-window-execution-id :required
   common-lisp:t :member-name "WindowExecutionId")
  (task-id :target-type maintenance-window-execution-task-id :required
   common-lisp:t :member-name "TaskId")
  (filters :target-type maintenance-window-filter-list :member-name "Filters")
  (max-results :target-type maintenance-window-max-results :member-name
   "MaxResults")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "DescribeMaintenanceWindowExecutionTaskInvocationsRequest"))

(smithy/sdk/shapes:define-output
 describe-maintenance-window-execution-task-invocations-result common-lisp:nil
 ((window-execution-task-invocation-identities :target-type
   maintenance-window-execution-task-invocation-identity-list :member-name
   "WindowExecutionTaskInvocationIdentities")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "DescribeMaintenanceWindowExecutionTaskInvocationsResult"))

(smithy/sdk/shapes:define-input
 describe-maintenance-window-execution-tasks-request common-lisp:nil
 ((window-execution-id :target-type maintenance-window-execution-id :required
   common-lisp:t :member-name "WindowExecutionId")
  (filters :target-type maintenance-window-filter-list :member-name "Filters")
  (max-results :target-type maintenance-window-max-results :member-name
   "MaxResults")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "DescribeMaintenanceWindowExecutionTasksRequest"))

(smithy/sdk/shapes:define-output
 describe-maintenance-window-execution-tasks-result common-lisp:nil
 ((window-execution-task-identities :target-type
   maintenance-window-execution-task-identity-list :member-name
   "WindowExecutionTaskIdentities")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "DescribeMaintenanceWindowExecutionTasksResult"))

(smithy/sdk/shapes:define-input describe-maintenance-window-executions-request
                                common-lisp:nil
                                ((window-id :target-type maintenance-window-id
                                  :required common-lisp:t :member-name
                                  "WindowId")
                                 (filters :target-type
                                  maintenance-window-filter-list :member-name
                                  "Filters")
                                 (max-results :target-type
                                  maintenance-window-max-results :member-name
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "DescribeMaintenanceWindowExecutionsRequest"))

(smithy/sdk/shapes:define-output describe-maintenance-window-executions-result
                                 common-lisp:nil
                                 ((window-executions :target-type
                                   maintenance-window-execution-list
                                   :member-name "WindowExecutions")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeMaintenanceWindowExecutionsResult"))

(smithy/sdk/shapes:define-input describe-maintenance-window-schedule-request
                                common-lisp:nil
                                ((window-id :target-type maintenance-window-id
                                  :member-name "WindowId")
                                 (targets :target-type targets :member-name
                                  "Targets")
                                 (resource-type :target-type
                                  maintenance-window-resource-type :member-name
                                  "ResourceType")
                                 (filters :target-type
                                  patch-orchestrator-filter-list :member-name
                                  "Filters")
                                 (max-results :target-type
                                  maintenance-window-search-max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "DescribeMaintenanceWindowScheduleRequest"))

(smithy/sdk/shapes:define-output describe-maintenance-window-schedule-result
                                 common-lisp:nil
                                 ((scheduled-window-executions :target-type
                                   scheduled-window-execution-list :member-name
                                   "ScheduledWindowExecutions")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeMaintenanceWindowScheduleResult"))

(smithy/sdk/shapes:define-input describe-maintenance-window-targets-request
                                common-lisp:nil
                                ((window-id :target-type maintenance-window-id
                                  :required common-lisp:t :member-name
                                  "WindowId")
                                 (filters :target-type
                                  maintenance-window-filter-list :member-name
                                  "Filters")
                                 (max-results :target-type
                                  maintenance-window-max-results :member-name
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "DescribeMaintenanceWindowTargetsRequest"))

(smithy/sdk/shapes:define-output describe-maintenance-window-targets-result
                                 common-lisp:nil
                                 ((targets :target-type
                                   maintenance-window-target-list :member-name
                                   "Targets")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeMaintenanceWindowTargetsResult"))

(smithy/sdk/shapes:define-input describe-maintenance-window-tasks-request
                                common-lisp:nil
                                ((window-id :target-type maintenance-window-id
                                  :required common-lisp:t :member-name
                                  "WindowId")
                                 (filters :target-type
                                  maintenance-window-filter-list :member-name
                                  "Filters")
                                 (max-results :target-type
                                  maintenance-window-max-results :member-name
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "DescribeMaintenanceWindowTasksRequest"))

(smithy/sdk/shapes:define-output describe-maintenance-window-tasks-result
                                 common-lisp:nil
                                 ((tasks :target-type
                                   maintenance-window-task-list :member-name
                                   "Tasks")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeMaintenanceWindowTasksResult"))

(smithy/sdk/shapes:define-input describe-maintenance-windows-for-target-request
                                common-lisp:nil
                                ((targets :target-type targets :required
                                  common-lisp:t :member-name "Targets")
                                 (resource-type :target-type
                                  maintenance-window-resource-type :required
                                  common-lisp:t :member-name "ResourceType")
                                 (max-results :target-type
                                  maintenance-window-search-max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "DescribeMaintenanceWindowsForTargetRequest"))

(smithy/sdk/shapes:define-output describe-maintenance-windows-for-target-result
                                 common-lisp:nil
                                 ((window-identities :target-type
                                   maintenance-windows-for-target-list
                                   :member-name "WindowIdentities")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeMaintenanceWindowsForTargetResult"))

(smithy/sdk/shapes:define-input describe-maintenance-windows-request
                                common-lisp:nil
                                ((filters :target-type
                                  maintenance-window-filter-list :member-name
                                  "Filters")
                                 (max-results :target-type
                                  maintenance-window-max-results :member-name
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "DescribeMaintenanceWindowsRequest"))

(smithy/sdk/shapes:define-output describe-maintenance-windows-result
                                 common-lisp:nil
                                 ((window-identities :target-type
                                   maintenance-window-identity-list
                                   :member-name "WindowIdentities")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeMaintenanceWindowsResult"))

(smithy/sdk/shapes:define-input describe-ops-items-request common-lisp:nil
                                ((ops-item-filters :target-type
                                  ops-item-filters :member-name
                                  "OpsItemFilters")
                                 (max-results :target-type ops-item-max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "DescribeOpsItemsRequest"))

(smithy/sdk/shapes:define-output describe-ops-items-response common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (ops-item-summaries :target-type
                                   ops-item-summaries :member-name
                                   "OpsItemSummaries"))
                                 (:shape-name "DescribeOpsItemsResponse"))

(smithy/sdk/shapes:define-input describe-parameters-request common-lisp:nil
                                ((filters :target-type parameters-filter-list
                                  :member-name "Filters")
                                 (parameter-filters :target-type
                                  parameter-string-filter-list :member-name
                                  "ParameterFilters")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (shared :target-type boolean :member-name
                                  "Shared"))
                                (:shape-name "DescribeParametersRequest"))

(smithy/sdk/shapes:define-output describe-parameters-result common-lisp:nil
                                 ((parameters :target-type
                                   parameter-metadata-list :member-name
                                   "Parameters")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeParametersResult"))

(smithy/sdk/shapes:define-input describe-patch-baselines-request
                                common-lisp:nil
                                ((filters :target-type
                                  patch-orchestrator-filter-list :member-name
                                  "Filters")
                                 (max-results :target-type
                                  patch-baseline-max-results :member-name
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "DescribePatchBaselinesRequest"))

(smithy/sdk/shapes:define-output describe-patch-baselines-result
                                 common-lisp:nil
                                 ((baseline-identities :target-type
                                   patch-baseline-identity-list :member-name
                                   "BaselineIdentities")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribePatchBaselinesResult"))

(smithy/sdk/shapes:define-input describe-patch-group-state-request
                                common-lisp:nil
                                ((patch-group :target-type patch-group
                                  :required common-lisp:t :member-name
                                  "PatchGroup"))
                                (:shape-name "DescribePatchGroupStateRequest"))

(smithy/sdk/shapes:define-output describe-patch-group-state-result
                                 common-lisp:nil
                                 ((instances :target-type integer :member-name
                                   "Instances")
                                  (instances-with-installed-patches
                                   :target-type integer :member-name
                                   "InstancesWithInstalledPatches")
                                  (instances-with-installed-other-patches
                                   :target-type integer :member-name
                                   "InstancesWithInstalledOtherPatches")
                                  (instances-with-installed-pending-reboot-patches
                                   :target-type instances-count :member-name
                                   "InstancesWithInstalledPendingRebootPatches")
                                  (instances-with-installed-rejected-patches
                                   :target-type instances-count :member-name
                                   "InstancesWithInstalledRejectedPatches")
                                  (instances-with-missing-patches :target-type
                                   integer :member-name
                                   "InstancesWithMissingPatches")
                                  (instances-with-failed-patches :target-type
                                   integer :member-name
                                   "InstancesWithFailedPatches")
                                  (instances-with-not-applicable-patches
                                   :target-type integer :member-name
                                   "InstancesWithNotApplicablePatches")
                                  (instances-with-unreported-not-applicable-patches
                                   :target-type integer :member-name
                                   "InstancesWithUnreportedNotApplicablePatches")
                                  (instances-with-critical-non-compliant-patches
                                   :target-type instances-count :member-name
                                   "InstancesWithCriticalNonCompliantPatches")
                                  (instances-with-security-non-compliant-patches
                                   :target-type instances-count :member-name
                                   "InstancesWithSecurityNonCompliantPatches")
                                  (instances-with-other-non-compliant-patches
                                   :target-type instances-count :member-name
                                   "InstancesWithOtherNonCompliantPatches")
                                  (instances-with-available-security-updates
                                   :target-type integer :member-name
                                   "InstancesWithAvailableSecurityUpdates"))
                                 (:shape-name "DescribePatchGroupStateResult"))

(smithy/sdk/shapes:define-input describe-patch-groups-request common-lisp:nil
                                ((max-results :target-type
                                  patch-baseline-max-results :member-name
                                  "MaxResults")
                                 (filters :target-type
                                  patch-orchestrator-filter-list :member-name
                                  "Filters")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "DescribePatchGroupsRequest"))

(smithy/sdk/shapes:define-output describe-patch-groups-result common-lisp:nil
                                 ((mappings :target-type
                                   patch-group-patch-baseline-mapping-list
                                   :member-name "Mappings")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribePatchGroupsResult"))

(smithy/sdk/shapes:define-input describe-patch-properties-request
                                common-lisp:nil
                                ((operating-system :target-type
                                  operating-system :required common-lisp:t
                                  :member-name "OperatingSystem")
                                 (property :target-type patch-property
                                  :required common-lisp:t :member-name
                                  "Property")
                                 (patch-set :target-type patch-set :member-name
                                  "PatchSet")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "DescribePatchPropertiesRequest"))

(smithy/sdk/shapes:define-output describe-patch-properties-result
                                 common-lisp:nil
                                 ((properties :target-type
                                   patch-properties-list :member-name
                                   "Properties")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribePatchPropertiesResult"))

(smithy/sdk/shapes:define-input describe-sessions-request common-lisp:nil
                                ((state :target-type session-state :required
                                  common-lisp:t :member-name "State")
                                 (max-results :target-type session-max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (filters :target-type session-filter-list
                                  :member-name "Filters"))
                                (:shape-name "DescribeSessionsRequest"))

(smithy/sdk/shapes:define-output describe-sessions-response common-lisp:nil
                                 ((sessions :target-type session-list
                                   :member-name "Sessions")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeSessionsResponse"))

(smithy/sdk/shapes:define-type description-in-document
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input disassociate-ops-item-related-item-request
                                common-lisp:nil
                                ((ops-item-id :target-type ops-item-id
                                  :required common-lisp:t :member-name
                                  "OpsItemId")
                                 (association-id :target-type
                                  ops-item-related-item-association-id
                                  :required common-lisp:t :member-name
                                  "AssociationId"))
                                (:shape-name
                                 "DisassociateOpsItemRelatedItemRequest"))

(smithy/sdk/shapes:define-output disassociate-ops-item-related-item-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisassociateOpsItemRelatedItemResponse"))

(smithy/sdk/shapes:define-type document-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error document-already-exists common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "DocumentAlreadyExists")
                                (:error-code 400))

(smithy/sdk/shapes:define-type document-author smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type document-content smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure document-default-version-description
                                    common-lisp:nil
                                    ((name :target-type document-name
                                      :member-name "Name")
                                     (default-version :target-type
                                      document-version :member-name
                                      "DefaultVersion")
                                     (default-version-name :target-type
                                      document-version-name :member-name
                                      "DefaultVersionName"))
                                    (:shape-name
                                     "DocumentDefaultVersionDescription"))

(smithy/sdk/shapes:define-structure document-description common-lisp:nil
                                    ((sha1 :target-type document-sha1
                                      :member-name "Sha1")
                                     (hash :target-type document-hash
                                      :member-name "Hash")
                                     (hash-type :target-type document-hash-type
                                      :member-name "HashType")
                                     (name :target-type document-arn
                                      :member-name "Name")
                                     (display-name :target-type
                                      document-display-name :member-name
                                      "DisplayName")
                                     (version-name :target-type
                                      document-version-name :member-name
                                      "VersionName")
                                     (owner :target-type document-owner
                                      :member-name "Owner")
                                     (created-date :target-type date-time
                                      :member-name "CreatedDate")
                                     (status :target-type document-status
                                      :member-name "Status")
                                     (status-information :target-type
                                      document-status-information :member-name
                                      "StatusInformation")
                                     (document-version :target-type
                                      document-version :member-name
                                      "DocumentVersion")
                                     (description :target-type
                                      description-in-document :member-name
                                      "Description")
                                     (parameters :target-type
                                      document-parameter-list :member-name
                                      "Parameters")
                                     (platform-types :target-type
                                      platform-type-list :member-name
                                      "PlatformTypes")
                                     (document-type :target-type document-type
                                      :member-name "DocumentType")
                                     (schema-version :target-type
                                      document-schema-version :member-name
                                      "SchemaVersion")
                                     (latest-version :target-type
                                      document-version :member-name
                                      "LatestVersion")
                                     (default-version :target-type
                                      document-version :member-name
                                      "DefaultVersion")
                                     (document-format :target-type
                                      document-format :member-name
                                      "DocumentFormat")
                                     (target-type :target-type target-type
                                      :member-name "TargetType")
                                     (tags :target-type tag-list :member-name
                                      "Tags")
                                     (attachments-information :target-type
                                      attachment-information-list :member-name
                                      "AttachmentsInformation")
                                     (requires :target-type
                                      document-requires-list :member-name
                                      "Requires")
                                     (author :target-type document-author
                                      :member-name "Author")
                                     (review-information :target-type
                                      review-information-list :member-name
                                      "ReviewInformation")
                                     (approved-version :target-type
                                      document-version :member-name
                                      "ApprovedVersion")
                                     (pending-review-version :target-type
                                      document-version :member-name
                                      "PendingReviewVersion")
                                     (review-status :target-type review-status
                                      :member-name "ReviewStatus")
                                     (category :target-type category-list
                                      :member-name "Category")
                                     (category-enum :target-type
                                      category-enum-list :member-name
                                      "CategoryEnum"))
                                    (:shape-name "DocumentDescription"))

(smithy/sdk/shapes:define-type document-display-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure document-filter common-lisp:nil
                                    ((key :target-type document-filter-key
                                      :required common-lisp:t :member-name
                                      "key")
                                     (value :target-type document-filter-value
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name "DocumentFilter"))

(smithy/sdk/shapes:define-enum document-filter-key
    common-lisp:nil
  (:name "Name")
  (:owner "Owner")
  (:platform-types "PlatformTypes")
  (:document-type "DocumentType"))

(smithy/sdk/shapes:define-list document-filter-list :member
                               (document-filter :xml-name "DocumentFilter"))

(smithy/sdk/shapes:define-type document-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum document-format
    common-lisp:nil
  (:yaml "YAML")
  (:json "JSON")
  (:text "TEXT"))

(smithy/sdk/shapes:define-type document-hash smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum document-hash-type
    common-lisp:nil
  (:sha256 "Sha256")
  (:sha1 "Sha1"))

(smithy/sdk/shapes:define-structure document-identifier common-lisp:nil
                                    ((name :target-type document-arn
                                      :member-name "Name")
                                     (created-date :target-type date-time
                                      :member-name "CreatedDate")
                                     (display-name :target-type
                                      document-display-name :member-name
                                      "DisplayName")
                                     (owner :target-type document-owner
                                      :member-name "Owner")
                                     (version-name :target-type
                                      document-version-name :member-name
                                      "VersionName")
                                     (platform-types :target-type
                                      platform-type-list :member-name
                                      "PlatformTypes")
                                     (document-version :target-type
                                      document-version :member-name
                                      "DocumentVersion")
                                     (document-type :target-type document-type
                                      :member-name "DocumentType")
                                     (schema-version :target-type
                                      document-schema-version :member-name
                                      "SchemaVersion")
                                     (document-format :target-type
                                      document-format :member-name
                                      "DocumentFormat")
                                     (target-type :target-type target-type
                                      :member-name "TargetType")
                                     (tags :target-type tag-list :member-name
                                      "Tags")
                                     (requires :target-type
                                      document-requires-list :member-name
                                      "Requires")
                                     (review-status :target-type review-status
                                      :member-name "ReviewStatus")
                                     (author :target-type document-author
                                      :member-name "Author"))
                                    (:shape-name "DocumentIdentifier"))

(smithy/sdk/shapes:define-list document-identifier-list :member
                               (document-identifier :xml-name
                                "DocumentIdentifier"))

(smithy/sdk/shapes:define-structure document-key-values-filter common-lisp:nil
                                    ((key :target-type
                                      document-key-values-filter-key
                                      :member-name "Key")
                                     (values :target-type
                                      document-key-values-filter-values
                                      :member-name "Values"))
                                    (:shape-name "DocumentKeyValuesFilter"))

(smithy/sdk/shapes:define-type document-key-values-filter-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list document-key-values-filter-list :member
                               document-key-values-filter)

(smithy/sdk/shapes:define-type document-key-values-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list document-key-values-filter-values :member
                               document-key-values-filter-value)

(smithy/sdk/shapes:define-error document-limit-exceeded common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "DocumentLimitExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum document-metadata-enum
    common-lisp:nil
  (:document-reviews "DocumentReviews"))

(smithy/sdk/shapes:define-structure document-metadata-response-info
                                    common-lisp:nil
                                    ((reviewer-response :target-type
                                      document-reviewer-response-list
                                      :member-name "ReviewerResponse"))
                                    (:shape-name
                                     "DocumentMetadataResponseInfo"))

(smithy/sdk/shapes:define-type document-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type document-owner smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure document-parameter common-lisp:nil
                                    ((name :target-type document-parameter-name
                                      :member-name "Name")
                                     (type :target-type document-parameter-type
                                      :member-name "Type")
                                     (description :target-type
                                      document-parameter-descrption
                                      :member-name "Description")
                                     (default-value :target-type
                                      document-parameter-default-value
                                      :member-name "DefaultValue"))
                                    (:shape-name "DocumentParameter"))

(smithy/sdk/shapes:define-type document-parameter-default-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type document-parameter-descrption
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list document-parameter-list :member
                               (document-parameter :xml-name
                                "DocumentParameter"))

(smithy/sdk/shapes:define-type document-parameter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum document-parameter-type
    common-lisp:nil
  (:string "String")
  (:string-list "StringList"))

(smithy/sdk/shapes:define-error document-permission-limit common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "DocumentPermissionLimit")
                                (:error-code 400))

(smithy/sdk/shapes:define-type document-permission-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum document-permission-type
    common-lisp:nil
  (:share "Share"))

(smithy/sdk/shapes:define-structure document-requires common-lisp:nil
                                    ((name :target-type document-arn :required
                                      common-lisp:t :member-name "Name")
                                     (version :target-type document-version
                                      :member-name "Version")
                                     (require-type :target-type require-type
                                      :member-name "RequireType")
                                     (version-name :target-type
                                      document-version-name :member-name
                                      "VersionName"))
                                    (:shape-name "DocumentRequires"))

(smithy/sdk/shapes:define-list document-requires-list :member document-requires)

(smithy/sdk/shapes:define-enum document-review-action
    common-lisp:nil
  (:send-for-review "SendForReview")
  (:update-review "UpdateReview")
  (:approve "Approve")
  (:reject "Reject"))

(smithy/sdk/shapes:define-type document-review-comment
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list document-review-comment-list :member
                               document-review-comment-source)

(smithy/sdk/shapes:define-structure document-review-comment-source
                                    common-lisp:nil
                                    ((type :target-type
                                      document-review-comment-type :member-name
                                      "Type")
                                     (content :target-type
                                      document-review-comment :member-name
                                      "Content"))
                                    (:shape-name "DocumentReviewCommentSource"))

(smithy/sdk/shapes:define-enum document-review-comment-type
    common-lisp:nil
  (:comment "Comment"))

(smithy/sdk/shapes:define-list document-reviewer-response-list :member
                               document-reviewer-response-source)

(smithy/sdk/shapes:define-structure document-reviewer-response-source
                                    common-lisp:nil
                                    ((create-time :target-type date-time
                                      :member-name "CreateTime")
                                     (updated-time :target-type date-time
                                      :member-name "UpdatedTime")
                                     (review-status :target-type review-status
                                      :member-name "ReviewStatus")
                                     (comment :target-type
                                      document-review-comment-list :member-name
                                      "Comment")
                                     (reviewer :target-type reviewer
                                      :member-name "Reviewer"))
                                    (:shape-name
                                     "DocumentReviewerResponseSource"))

(smithy/sdk/shapes:define-structure document-reviews common-lisp:nil
                                    ((action :target-type
                                      document-review-action :required
                                      common-lisp:t :member-name "Action")
                                     (comment :target-type
                                      document-review-comment-list :member-name
                                      "Comment"))
                                    (:shape-name "DocumentReviews"))

(smithy/sdk/shapes:define-type document-schema-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type document-sha1 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum document-status
    common-lisp:nil
  (:creating "Creating")
  (:active "Active")
  (:updating "Updating")
  (:deleting "Deleting")
  (:failed "Failed"))

(smithy/sdk/shapes:define-type document-status-information
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum document-type
    common-lisp:nil
  (:command "Command")
  (:policy "Policy")
  (:automation "Automation")
  (:session "Session")
  (:package "Package")
  (:application-configuration "ApplicationConfiguration")
  (:application-configuration-schema "ApplicationConfigurationSchema")
  (:deployment-strategy "DeploymentStrategy")
  (:change-calendar "ChangeCalendar")
  (:change-template "Automation.ChangeTemplate")
  (:problem-analysis "ProblemAnalysis")
  (:problem-analysis-template "ProblemAnalysisTemplate")
  (:cloud-formation "CloudFormation")
  (:conformance-pack-template "ConformancePackTemplate")
  (:quick-setup "QuickSetup")
  (:manual-approval-policy "ManualApprovalPolicy")
  (:auto-approval-policy "AutoApprovalPolicy"))

(smithy/sdk/shapes:define-type document-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure document-version-info common-lisp:nil
                                    ((name :target-type document-name
                                      :member-name "Name")
                                     (display-name :target-type
                                      document-display-name :member-name
                                      "DisplayName")
                                     (document-version :target-type
                                      document-version :member-name
                                      "DocumentVersion")
                                     (version-name :target-type
                                      document-version-name :member-name
                                      "VersionName")
                                     (created-date :target-type date-time
                                      :member-name "CreatedDate")
                                     (is-default-version :target-type boolean
                                      :member-name "IsDefaultVersion")
                                     (document-format :target-type
                                      document-format :member-name
                                      "DocumentFormat")
                                     (status :target-type document-status
                                      :member-name "Status")
                                     (status-information :target-type
                                      document-status-information :member-name
                                      "StatusInformation")
                                     (review-status :target-type review-status
                                      :member-name "ReviewStatus"))
                                    (:shape-name "DocumentVersionInfo"))

(smithy/sdk/shapes:define-error document-version-limit-exceeded common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "DocumentVersionLimitExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-list document-version-list :member
                               document-version-info)

(smithy/sdk/shapes:define-type document-version-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type document-version-number
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error does-not-exist-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "DoesNotExistException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type dry-run smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error duplicate-document-content common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "DuplicateDocumentContent")
                                (:error-code 400))

(smithy/sdk/shapes:define-error duplicate-document-version-name common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "DuplicateDocumentVersionName")
                                (:error-code 400))

(smithy/sdk/shapes:define-error duplicate-instance-id common-lisp:nil
                                common-lisp:nil
                                (:shape-name "DuplicateInstanceId")
                                (:error-code 400))

(smithy/sdk/shapes:define-type duration smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type effective-instance-association-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure effective-patch common-lisp:nil
                                    ((patch :target-type patch :member-name
                                      "Patch")
                                     (patch-status :target-type patch-status
                                      :member-name "PatchStatus"))
                                    (:shape-name "EffectivePatch"))

(smithy/sdk/shapes:define-list effective-patch-list :member effective-patch)

(smithy/sdk/shapes:define-type error-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type exclude-account smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list exclude-accounts :member exclude-account)

(smithy/sdk/shapes:define-union execution-inputs common-lisp:nil
                                ((automation :target-type
                                  automation-execution-inputs :member-name
                                  "Automation"))
                                (:shape-name "ExecutionInputs"))

(smithy/sdk/shapes:define-enum execution-mode
    common-lisp:nil
  (:auto "Auto")
  (:interactive "Interactive"))

(smithy/sdk/shapes:define-union execution-preview common-lisp:nil
                                ((automation :target-type
                                  automation-execution-preview :member-name
                                  "Automation"))
                                (:shape-name "ExecutionPreview"))

(smithy/sdk/shapes:define-type execution-preview-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum execution-preview-status
    common-lisp:nil
  (:pending "Pending")
  (:in-progress "InProgress")
  (:success "Success")
  (:failed "Failed"))

(smithy/sdk/shapes:define-type execution-role-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type expiration-date
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-enum external-alarm-state
    common-lisp:nil
  (:unknown "UNKNOWN")
  (:alarm "ALARM"))

(smithy/sdk/shapes:define-structure failed-create-association common-lisp:nil
                                    ((entry :target-type
                                      create-association-batch-request-entry
                                      :member-name "Entry")
                                     (message :target-type batch-error-message
                                      :member-name "Message")
                                     (fault :target-type fault :member-name
                                      "Fault"))
                                    (:shape-name "FailedCreateAssociation"))

(smithy/sdk/shapes:define-list failed-create-association-list :member
                               (failed-create-association :xml-name
                                "FailedCreateAssociationEntry"))

(smithy/sdk/shapes:define-structure failure-details common-lisp:nil
                                    ((failure-stage :target-type string
                                      :member-name "FailureStage")
                                     (failure-type :target-type string
                                      :member-name "FailureType")
                                     (details :target-type
                                      automation-parameter-map :member-name
                                      "Details"))
                                    (:shape-name "FailureDetails"))

(smithy/sdk/shapes:define-enum fault
    common-lisp:nil
  (:client "Client")
  (:server "Server")
  (:unknown "Unknown"))

(smithy/sdk/shapes:define-error feature-not-available-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "FeatureNotAvailableException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input get-access-token-request common-lisp:nil
                                ((access-request-id :target-type
                                  access-request-id :required common-lisp:t
                                  :member-name "AccessRequestId"))
                                (:shape-name "GetAccessTokenRequest"))

(smithy/sdk/shapes:define-output get-access-token-response common-lisp:nil
                                 ((credentials :target-type credentials
                                   :member-name "Credentials")
                                  (access-request-status :target-type
                                   access-request-status :member-name
                                   "AccessRequestStatus"))
                                 (:shape-name "GetAccessTokenResponse"))

(smithy/sdk/shapes:define-input get-automation-execution-request
                                common-lisp:nil
                                ((automation-execution-id :target-type
                                  automation-execution-id :required
                                  common-lisp:t :member-name
                                  "AutomationExecutionId"))
                                (:shape-name "GetAutomationExecutionRequest"))

(smithy/sdk/shapes:define-output get-automation-execution-result
                                 common-lisp:nil
                                 ((automation-execution :target-type
                                   automation-execution :member-name
                                   "AutomationExecution"))
                                 (:shape-name "GetAutomationExecutionResult"))

(smithy/sdk/shapes:define-input get-calendar-state-request common-lisp:nil
                                ((calendar-names :target-type
                                  calendar-name-or-arnlist :required
                                  common-lisp:t :member-name "CalendarNames")
                                 (at-time :target-type iso8601string
                                  :member-name "AtTime"))
                                (:shape-name "GetCalendarStateRequest"))

(smithy/sdk/shapes:define-output get-calendar-state-response common-lisp:nil
                                 ((state :target-type calendar-state
                                   :member-name "State")
                                  (at-time :target-type iso8601string
                                   :member-name "AtTime")
                                  (next-transition-time :target-type
                                   iso8601string :member-name
                                   "NextTransitionTime"))
                                 (:shape-name "GetCalendarStateResponse"))

(smithy/sdk/shapes:define-input get-command-invocation-request common-lisp:nil
                                ((command-id :target-type command-id :required
                                  common-lisp:t :member-name "CommandId")
                                 (instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "InstanceId")
                                 (plugin-name :target-type command-plugin-name
                                  :member-name "PluginName"))
                                (:shape-name "GetCommandInvocationRequest"))

(smithy/sdk/shapes:define-output get-command-invocation-result common-lisp:nil
                                 ((command-id :target-type command-id
                                   :member-name "CommandId")
                                  (instance-id :target-type instance-id
                                   :member-name "InstanceId")
                                  (comment :target-type comment :member-name
                                   "Comment")
                                  (document-name :target-type document-name
                                   :member-name "DocumentName")
                                  (document-version :target-type
                                   document-version :member-name
                                   "DocumentVersion")
                                  (plugin-name :target-type command-plugin-name
                                   :member-name "PluginName")
                                  (response-code :target-type response-code
                                   :member-name "ResponseCode")
                                  (execution-start-date-time :target-type
                                   string-date-time :member-name
                                   "ExecutionStartDateTime")
                                  (execution-elapsed-time :target-type
                                   string-date-time :member-name
                                   "ExecutionElapsedTime")
                                  (execution-end-date-time :target-type
                                   string-date-time :member-name
                                   "ExecutionEndDateTime")
                                  (status :target-type
                                   command-invocation-status :member-name
                                   "Status")
                                  (status-details :target-type status-details
                                   :member-name "StatusDetails")
                                  (standard-output-content :target-type
                                   standard-output-content :member-name
                                   "StandardOutputContent")
                                  (standard-output-url :target-type url
                                   :member-name "StandardOutputUrl")
                                  (standard-error-content :target-type
                                   standard-error-content :member-name
                                   "StandardErrorContent")
                                  (standard-error-url :target-type url
                                   :member-name "StandardErrorUrl")
                                  (cloud-watch-output-config :target-type
                                   cloud-watch-output-config :member-name
                                   "CloudWatchOutputConfig"))
                                 (:shape-name "GetCommandInvocationResult"))

(smithy/sdk/shapes:define-input get-connection-status-request common-lisp:nil
                                ((target :target-type session-target :required
                                  common-lisp:t :member-name "Target"))
                                (:shape-name "GetConnectionStatusRequest"))

(smithy/sdk/shapes:define-output get-connection-status-response common-lisp:nil
                                 ((target :target-type session-target
                                   :member-name "Target")
                                  (status :target-type connection-status
                                   :member-name "Status"))
                                 (:shape-name "GetConnectionStatusResponse"))

(smithy/sdk/shapes:define-input get-default-patch-baseline-request
                                common-lisp:nil
                                ((operating-system :target-type
                                  operating-system :member-name
                                  "OperatingSystem"))
                                (:shape-name "GetDefaultPatchBaselineRequest"))

(smithy/sdk/shapes:define-output get-default-patch-baseline-result
                                 common-lisp:nil
                                 ((baseline-id :target-type baseline-id
                                   :member-name "BaselineId")
                                  (operating-system :target-type
                                   operating-system :member-name
                                   "OperatingSystem"))
                                 (:shape-name "GetDefaultPatchBaselineResult"))

(smithy/sdk/shapes:define-input
 get-deployable-patch-snapshot-for-instance-request common-lisp:nil
 ((instance-id :target-type instance-id :required common-lisp:t :member-name
   "InstanceId")
  (snapshot-id :target-type snapshot-id :required common-lisp:t :member-name
   "SnapshotId")
  (baseline-override :target-type baseline-override :member-name
   "BaselineOverride"))
 (:shape-name "GetDeployablePatchSnapshotForInstanceRequest"))

(smithy/sdk/shapes:define-output
 get-deployable-patch-snapshot-for-instance-result common-lisp:nil
 ((instance-id :target-type instance-id :member-name "InstanceId")
  (snapshot-id :target-type snapshot-id :member-name "SnapshotId")
  (snapshot-download-url :target-type snapshot-download-url :member-name
   "SnapshotDownloadUrl")
  (product :target-type product :member-name "Product"))
 (:shape-name "GetDeployablePatchSnapshotForInstanceResult"))

(smithy/sdk/shapes:define-input get-document-request common-lisp:nil
                                ((name :target-type document-arn :required
                                  common-lisp:t :member-name "Name")
                                 (version-name :target-type
                                  document-version-name :member-name
                                  "VersionName")
                                 (document-version :target-type
                                  document-version :member-name
                                  "DocumentVersion")
                                 (document-format :target-type document-format
                                  :member-name "DocumentFormat"))
                                (:shape-name "GetDocumentRequest"))

(smithy/sdk/shapes:define-output get-document-result common-lisp:nil
                                 ((name :target-type document-arn :member-name
                                   "Name")
                                  (created-date :target-type date-time
                                   :member-name "CreatedDate")
                                  (display-name :target-type
                                   document-display-name :member-name
                                   "DisplayName")
                                  (version-name :target-type
                                   document-version-name :member-name
                                   "VersionName")
                                  (document-version :target-type
                                   document-version :member-name
                                   "DocumentVersion")
                                  (status :target-type document-status
                                   :member-name "Status")
                                  (status-information :target-type
                                   document-status-information :member-name
                                   "StatusInformation")
                                  (content :target-type document-content
                                   :member-name "Content")
                                  (document-type :target-type document-type
                                   :member-name "DocumentType")
                                  (document-format :target-type document-format
                                   :member-name "DocumentFormat")
                                  (requires :target-type document-requires-list
                                   :member-name "Requires")
                                  (attachments-content :target-type
                                   attachment-content-list :member-name
                                   "AttachmentsContent")
                                  (review-status :target-type review-status
                                   :member-name "ReviewStatus"))
                                 (:shape-name "GetDocumentResult"))

(smithy/sdk/shapes:define-input get-execution-preview-request common-lisp:nil
                                ((execution-preview-id :target-type
                                  execution-preview-id :required common-lisp:t
                                  :member-name "ExecutionPreviewId"))
                                (:shape-name "GetExecutionPreviewRequest"))

(smithy/sdk/shapes:define-output get-execution-preview-response common-lisp:nil
                                 ((execution-preview-id :target-type
                                   execution-preview-id :member-name
                                   "ExecutionPreviewId")
                                  (ended-at :target-type date-time :member-name
                                   "EndedAt")
                                  (status :target-type execution-preview-status
                                   :member-name "Status")
                                  (status-message :target-type string
                                   :member-name "StatusMessage")
                                  (execution-preview :target-type
                                   execution-preview :member-name
                                   "ExecutionPreview"))
                                 (:shape-name "GetExecutionPreviewResponse"))

(smithy/sdk/shapes:define-input get-inventory-request common-lisp:nil
                                ((filters :target-type inventory-filter-list
                                  :member-name "Filters")
                                 (aggregators :target-type
                                  inventory-aggregator-list :member-name
                                  "Aggregators")
                                 (result-attributes :target-type
                                  result-attribute-list :member-name
                                  "ResultAttributes")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "GetInventoryRequest"))

(smithy/sdk/shapes:define-output get-inventory-result common-lisp:nil
                                 ((entities :target-type
                                   inventory-result-entity-list :member-name
                                   "Entities")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "GetInventoryResult"))

(smithy/sdk/shapes:define-type get-inventory-schema-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input get-inventory-schema-request common-lisp:nil
                                ((type-name :target-type
                                  inventory-item-type-name-filter :member-name
                                  "TypeName")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  get-inventory-schema-max-results :member-name
                                  "MaxResults")
                                 (aggregator :target-type
                                  aggregator-schema-only :member-name
                                  "Aggregator")
                                 (sub-type :target-type is-sub-type-schema
                                  :member-name "SubType"))
                                (:shape-name "GetInventorySchemaRequest"))

(smithy/sdk/shapes:define-output get-inventory-schema-result common-lisp:nil
                                 ((schemas :target-type
                                   inventory-item-schema-result-list
                                   :member-name "Schemas")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "GetInventorySchemaResult"))

(smithy/sdk/shapes:define-input get-maintenance-window-execution-request
                                common-lisp:nil
                                ((window-execution-id :target-type
                                  maintenance-window-execution-id :required
                                  common-lisp:t :member-name
                                  "WindowExecutionId"))
                                (:shape-name
                                 "GetMaintenanceWindowExecutionRequest"))

(smithy/sdk/shapes:define-output get-maintenance-window-execution-result
                                 common-lisp:nil
                                 ((window-execution-id :target-type
                                   maintenance-window-execution-id :member-name
                                   "WindowExecutionId")
                                  (task-ids :target-type
                                   maintenance-window-execution-task-id-list
                                   :member-name "TaskIds")
                                  (status :target-type
                                   maintenance-window-execution-status
                                   :member-name "Status")
                                  (status-details :target-type
                                   maintenance-window-execution-status-details
                                   :member-name "StatusDetails")
                                  (start-time :target-type date-time
                                   :member-name "StartTime")
                                  (end-time :target-type date-time :member-name
                                   "EndTime"))
                                 (:shape-name
                                  "GetMaintenanceWindowExecutionResult"))

(smithy/sdk/shapes:define-input
 get-maintenance-window-execution-task-invocation-request common-lisp:nil
 ((window-execution-id :target-type maintenance-window-execution-id :required
   common-lisp:t :member-name "WindowExecutionId")
  (task-id :target-type maintenance-window-execution-task-id :required
   common-lisp:t :member-name "TaskId")
  (invocation-id :target-type maintenance-window-execution-task-invocation-id
   :required common-lisp:t :member-name "InvocationId"))
 (:shape-name "GetMaintenanceWindowExecutionTaskInvocationRequest"))

(smithy/sdk/shapes:define-output
 get-maintenance-window-execution-task-invocation-result common-lisp:nil
 ((window-execution-id :target-type maintenance-window-execution-id
   :member-name "WindowExecutionId")
  (task-execution-id :target-type maintenance-window-execution-task-id
   :member-name "TaskExecutionId")
  (invocation-id :target-type maintenance-window-execution-task-invocation-id
   :member-name "InvocationId")
  (execution-id :target-type maintenance-window-execution-task-execution-id
   :member-name "ExecutionId")
  (task-type :target-type maintenance-window-task-type :member-name "TaskType")
  (parameters :target-type
   maintenance-window-execution-task-invocation-parameters :member-name
   "Parameters")
  (status :target-type maintenance-window-execution-status :member-name
   "Status")
  (status-details :target-type maintenance-window-execution-status-details
   :member-name "StatusDetails")
  (start-time :target-type date-time :member-name "StartTime")
  (end-time :target-type date-time :member-name "EndTime")
  (owner-information :target-type owner-information :member-name
   "OwnerInformation")
  (window-target-id :target-type maintenance-window-task-target-id :member-name
   "WindowTargetId"))
 (:shape-name "GetMaintenanceWindowExecutionTaskInvocationResult"))

(smithy/sdk/shapes:define-input get-maintenance-window-execution-task-request
                                common-lisp:nil
                                ((window-execution-id :target-type
                                  maintenance-window-execution-id :required
                                  common-lisp:t :member-name
                                  "WindowExecutionId")
                                 (task-id :target-type
                                  maintenance-window-execution-task-id
                                  :required common-lisp:t :member-name
                                  "TaskId"))
                                (:shape-name
                                 "GetMaintenanceWindowExecutionTaskRequest"))

(smithy/sdk/shapes:define-output get-maintenance-window-execution-task-result
                                 common-lisp:nil
                                 ((window-execution-id :target-type
                                   maintenance-window-execution-id :member-name
                                   "WindowExecutionId")
                                  (task-execution-id :target-type
                                   maintenance-window-execution-task-id
                                   :member-name "TaskExecutionId")
                                  (task-arn :target-type
                                   maintenance-window-task-arn :member-name
                                   "TaskArn")
                                  (service-role :target-type service-role
                                   :member-name "ServiceRole")
                                  (type :target-type
                                   maintenance-window-task-type :member-name
                                   "Type")
                                  (task-parameters :target-type
                                   maintenance-window-task-parameters-list
                                   :member-name "TaskParameters")
                                  (priority :target-type
                                   maintenance-window-task-priority
                                   :member-name "Priority")
                                  (max-concurrency :target-type max-concurrency
                                   :member-name "MaxConcurrency")
                                  (max-errors :target-type max-errors
                                   :member-name "MaxErrors")
                                  (status :target-type
                                   maintenance-window-execution-status
                                   :member-name "Status")
                                  (status-details :target-type
                                   maintenance-window-execution-status-details
                                   :member-name "StatusDetails")
                                  (start-time :target-type date-time
                                   :member-name "StartTime")
                                  (end-time :target-type date-time :member-name
                                   "EndTime")
                                  (alarm-configuration :target-type
                                   alarm-configuration :member-name
                                   "AlarmConfiguration")
                                  (triggered-alarms :target-type
                                   alarm-state-information-list :member-name
                                   "TriggeredAlarms"))
                                 (:shape-name
                                  "GetMaintenanceWindowExecutionTaskResult"))

(smithy/sdk/shapes:define-input get-maintenance-window-request common-lisp:nil
                                ((window-id :target-type maintenance-window-id
                                  :required common-lisp:t :member-name
                                  "WindowId"))
                                (:shape-name "GetMaintenanceWindowRequest"))

(smithy/sdk/shapes:define-output get-maintenance-window-result common-lisp:nil
                                 ((window-id :target-type maintenance-window-id
                                   :member-name "WindowId")
                                  (name :target-type maintenance-window-name
                                   :member-name "Name")
                                  (description :target-type
                                   maintenance-window-description :member-name
                                   "Description")
                                  (start-date :target-type
                                   maintenance-window-string-date-time
                                   :member-name "StartDate")
                                  (end-date :target-type
                                   maintenance-window-string-date-time
                                   :member-name "EndDate")
                                  (schedule :target-type
                                   maintenance-window-schedule :member-name
                                   "Schedule")
                                  (schedule-timezone :target-type
                                   maintenance-window-timezone :member-name
                                   "ScheduleTimezone")
                                  (schedule-offset :target-type
                                   maintenance-window-offset :member-name
                                   "ScheduleOffset")
                                  (next-execution-time :target-type
                                   maintenance-window-string-date-time
                                   :member-name "NextExecutionTime")
                                  (duration :target-type
                                   maintenance-window-duration-hours
                                   :member-name "Duration")
                                  (cutoff :target-type
                                   maintenance-window-cutoff :member-name
                                   "Cutoff")
                                  (allow-unassociated-targets :target-type
                                   maintenance-window-allow-unassociated-targets
                                   :member-name "AllowUnassociatedTargets")
                                  (enabled :target-type
                                   maintenance-window-enabled :member-name
                                   "Enabled")
                                  (created-date :target-type date-time
                                   :member-name "CreatedDate")
                                  (modified-date :target-type date-time
                                   :member-name "ModifiedDate"))
                                 (:shape-name "GetMaintenanceWindowResult"))

(smithy/sdk/shapes:define-input get-maintenance-window-task-request
                                common-lisp:nil
                                ((window-id :target-type maintenance-window-id
                                  :required common-lisp:t :member-name
                                  "WindowId")
                                 (window-task-id :target-type
                                  maintenance-window-task-id :required
                                  common-lisp:t :member-name "WindowTaskId"))
                                (:shape-name "GetMaintenanceWindowTaskRequest"))

(smithy/sdk/shapes:define-output get-maintenance-window-task-result
                                 common-lisp:nil
                                 ((window-id :target-type maintenance-window-id
                                   :member-name "WindowId")
                                  (window-task-id :target-type
                                   maintenance-window-task-id :member-name
                                   "WindowTaskId")
                                  (targets :target-type targets :member-name
                                   "Targets")
                                  (task-arn :target-type
                                   maintenance-window-task-arn :member-name
                                   "TaskArn")
                                  (service-role-arn :target-type service-role
                                   :member-name "ServiceRoleArn")
                                  (task-type :target-type
                                   maintenance-window-task-type :member-name
                                   "TaskType")
                                  (task-parameters :target-type
                                   maintenance-window-task-parameters
                                   :member-name "TaskParameters")
                                  (task-invocation-parameters :target-type
                                   maintenance-window-task-invocation-parameters
                                   :member-name "TaskInvocationParameters")
                                  (priority :target-type
                                   maintenance-window-task-priority
                                   :member-name "Priority")
                                  (max-concurrency :target-type max-concurrency
                                   :member-name "MaxConcurrency")
                                  (max-errors :target-type max-errors
                                   :member-name "MaxErrors")
                                  (logging-info :target-type logging-info
                                   :member-name "LoggingInfo")
                                  (name :target-type maintenance-window-name
                                   :member-name "Name")
                                  (description :target-type
                                   maintenance-window-description :member-name
                                   "Description")
                                  (cutoff-behavior :target-type
                                   maintenance-window-task-cutoff-behavior
                                   :member-name "CutoffBehavior")
                                  (alarm-configuration :target-type
                                   alarm-configuration :member-name
                                   "AlarmConfiguration"))
                                 (:shape-name "GetMaintenanceWindowTaskResult"))

(smithy/sdk/shapes:define-input get-ops-item-request common-lisp:nil
                                ((ops-item-id :target-type ops-item-id
                                  :required common-lisp:t :member-name
                                  "OpsItemId")
                                 (ops-item-arn :target-type ops-item-arn
                                  :member-name "OpsItemArn"))
                                (:shape-name "GetOpsItemRequest"))

(smithy/sdk/shapes:define-output get-ops-item-response common-lisp:nil
                                 ((ops-item :target-type ops-item :member-name
                                   "OpsItem"))
                                 (:shape-name "GetOpsItemResponse"))

(smithy/sdk/shapes:define-type get-ops-metadata-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input get-ops-metadata-request common-lisp:nil
                                ((ops-metadata-arn :target-type
                                  ops-metadata-arn :required common-lisp:t
                                  :member-name "OpsMetadataArn")
                                 (max-results :target-type
                                  get-ops-metadata-max-results :member-name
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "GetOpsMetadataRequest"))

(smithy/sdk/shapes:define-output get-ops-metadata-result common-lisp:nil
                                 ((resource-id :target-type
                                   ops-metadata-resource-id :member-name
                                   "ResourceId")
                                  (metadata :target-type metadata-map
                                   :member-name "Metadata")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "GetOpsMetadataResult"))

(smithy/sdk/shapes:define-input get-ops-summary-request common-lisp:nil
                                ((sync-name :target-type
                                  resource-data-sync-name :member-name
                                  "SyncName")
                                 (filters :target-type ops-filter-list
                                  :member-name "Filters")
                                 (aggregators :target-type ops-aggregator-list
                                  :member-name "Aggregators")
                                 (result-attributes :target-type
                                  ops-result-attribute-list :member-name
                                  "ResultAttributes")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "GetOpsSummaryRequest"))

(smithy/sdk/shapes:define-output get-ops-summary-result common-lisp:nil
                                 ((entities :target-type ops-entity-list
                                   :member-name "Entities")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "GetOpsSummaryResult"))

(smithy/sdk/shapes:define-input get-parameter-history-request common-lisp:nil
                                ((name :target-type psparameter-name :required
                                  common-lisp:t :member-name "Name")
                                 (with-decryption :target-type boolean
                                  :member-name "WithDecryption")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "GetParameterHistoryRequest"))

(smithy/sdk/shapes:define-output get-parameter-history-result common-lisp:nil
                                 ((parameters :target-type
                                   parameter-history-list :member-name
                                   "Parameters")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "GetParameterHistoryResult"))

(smithy/sdk/shapes:define-input get-parameter-request common-lisp:nil
                                ((name :target-type psparameter-name :required
                                  common-lisp:t :member-name "Name")
                                 (with-decryption :target-type boolean
                                  :member-name "WithDecryption"))
                                (:shape-name "GetParameterRequest"))

(smithy/sdk/shapes:define-output get-parameter-result common-lisp:nil
                                 ((parameter :target-type parameter
                                   :member-name "Parameter"))
                                 (:shape-name "GetParameterResult"))

(smithy/sdk/shapes:define-type get-parameters-by-path-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input get-parameters-by-path-request common-lisp:nil
                                ((path :target-type psparameter-name :required
                                  common-lisp:t :member-name "Path")
                                 (recursive :target-type boolean :member-name
                                  "Recursive")
                                 (parameter-filters :target-type
                                  parameter-string-filter-list :member-name
                                  "ParameterFilters")
                                 (with-decryption :target-type boolean
                                  :member-name "WithDecryption")
                                 (max-results :target-type
                                  get-parameters-by-path-max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "GetParametersByPathRequest"))

(smithy/sdk/shapes:define-output get-parameters-by-path-result common-lisp:nil
                                 ((parameters :target-type parameter-list
                                   :member-name "Parameters")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "GetParametersByPathResult"))

(smithy/sdk/shapes:define-input get-parameters-request common-lisp:nil
                                ((names :target-type parameter-name-list
                                  :required common-lisp:t :member-name "Names")
                                 (with-decryption :target-type boolean
                                  :member-name "WithDecryption"))
                                (:shape-name "GetParametersRequest"))

(smithy/sdk/shapes:define-output get-parameters-result common-lisp:nil
                                 ((parameters :target-type parameter-list
                                   :member-name "Parameters")
                                  (invalid-parameters :target-type
                                   parameter-name-list :member-name
                                   "InvalidParameters"))
                                 (:shape-name "GetParametersResult"))

(smithy/sdk/shapes:define-input get-patch-baseline-for-patch-group-request
                                common-lisp:nil
                                ((patch-group :target-type patch-group
                                  :required common-lisp:t :member-name
                                  "PatchGroup")
                                 (operating-system :target-type
                                  operating-system :member-name
                                  "OperatingSystem"))
                                (:shape-name
                                 "GetPatchBaselineForPatchGroupRequest"))

(smithy/sdk/shapes:define-output get-patch-baseline-for-patch-group-result
                                 common-lisp:nil
                                 ((baseline-id :target-type baseline-id
                                   :member-name "BaselineId")
                                  (patch-group :target-type patch-group
                                   :member-name "PatchGroup")
                                  (operating-system :target-type
                                   operating-system :member-name
                                   "OperatingSystem"))
                                 (:shape-name
                                  "GetPatchBaselineForPatchGroupResult"))

(smithy/sdk/shapes:define-input get-patch-baseline-request common-lisp:nil
                                ((baseline-id :target-type baseline-id
                                  :required common-lisp:t :member-name
                                  "BaselineId"))
                                (:shape-name "GetPatchBaselineRequest"))

(smithy/sdk/shapes:define-output get-patch-baseline-result common-lisp:nil
                                 ((baseline-id :target-type baseline-id
                                   :member-name "BaselineId")
                                  (name :target-type baseline-name :member-name
                                   "Name")
                                  (operating-system :target-type
                                   operating-system :member-name
                                   "OperatingSystem")
                                  (global-filters :target-type
                                   patch-filter-group :member-name
                                   "GlobalFilters")
                                  (approval-rules :target-type patch-rule-group
                                   :member-name "ApprovalRules")
                                  (approved-patches :target-type patch-id-list
                                   :member-name "ApprovedPatches")
                                  (approved-patches-compliance-level
                                   :target-type patch-compliance-level
                                   :member-name
                                   "ApprovedPatchesComplianceLevel")
                                  (approved-patches-enable-non-security
                                   :target-type boolean :member-name
                                   "ApprovedPatchesEnableNonSecurity")
                                  (rejected-patches :target-type patch-id-list
                                   :member-name "RejectedPatches")
                                  (rejected-patches-action :target-type
                                   patch-action :member-name
                                   "RejectedPatchesAction")
                                  (patch-groups :target-type patch-group-list
                                   :member-name "PatchGroups")
                                  (created-date :target-type date-time
                                   :member-name "CreatedDate")
                                  (modified-date :target-type date-time
                                   :member-name "ModifiedDate")
                                  (description :target-type
                                   baseline-description :member-name
                                   "Description")
                                  (sources :target-type patch-source-list
                                   :member-name "Sources")
                                  (available-security-updates-compliance-status
                                   :target-type patch-compliance-status
                                   :member-name
                                   "AvailableSecurityUpdatesComplianceStatus"))
                                 (:shape-name "GetPatchBaselineResult"))

(smithy/sdk/shapes:define-input get-resource-policies-request common-lisp:nil
                                ((resource-arn :target-type resource-arn-string
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type
                                  resource-policy-max-results :member-name
                                  "MaxResults"))
                                (:shape-name "GetResourcePoliciesRequest"))

(smithy/sdk/shapes:define-output get-resource-policies-response common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (policies :target-type
                                   get-resource-policies-response-entries
                                   :member-name "Policies"))
                                 (:shape-name "GetResourcePoliciesResponse"))

(smithy/sdk/shapes:define-list get-resource-policies-response-entries :member
                               get-resource-policies-response-entry)

(smithy/sdk/shapes:define-structure get-resource-policies-response-entry
                                    common-lisp:nil
                                    ((policy-id :target-type policy-id
                                      :member-name "PolicyId")
                                     (policy-hash :target-type policy-hash
                                      :member-name "PolicyHash")
                                     (policy :target-type policy :member-name
                                      "Policy"))
                                    (:shape-name
                                     "GetResourcePoliciesResponseEntry"))

(smithy/sdk/shapes:define-input get-service-setting-request common-lisp:nil
                                ((setting-id :target-type service-setting-id
                                  :required common-lisp:t :member-name
                                  "SettingId"))
                                (:shape-name "GetServiceSettingRequest"))

(smithy/sdk/shapes:define-output get-service-setting-result common-lisp:nil
                                 ((service-setting :target-type service-setting
                                   :member-name "ServiceSetting"))
                                 (:shape-name "GetServiceSettingResult"))

(smithy/sdk/shapes:define-error hierarchy-level-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name
                                 "HierarchyLevelLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error hierarchy-type-mismatch-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "HierarchyTypeMismatchException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type ipaddress smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type iso8601string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type iam-role smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type idempotency-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error idempotent-parameter-mismatch common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "IdempotentParameterMismatch")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum impact-type
    common-lisp:nil
  (:mutating "Mutating")
  (:non-mutating "NonMutating")
  (:undetermined "Undetermined"))

(smithy/sdk/shapes:define-error incompatible-policy-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "IncompatiblePolicyException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type install-override-list
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure instance-aggregated-association-overview
                                    common-lisp:nil
                                    ((detailed-status :target-type status-name
                                      :member-name "DetailedStatus")
                                     (instance-association-status-aggregated-count
                                      :target-type
                                      instance-association-status-aggregated-count
                                      :member-name
                                      "InstanceAssociationStatusAggregatedCount"))
                                    (:shape-name
                                     "InstanceAggregatedAssociationOverview"))

(smithy/sdk/shapes:define-structure instance-association common-lisp:nil
                                    ((association-id :target-type
                                      association-id :member-name
                                      "AssociationId")
                                     (instance-id :target-type instance-id
                                      :member-name "InstanceId")
                                     (content :target-type document-content
                                      :member-name "Content")
                                     (association-version :target-type
                                      association-version :member-name
                                      "AssociationVersion"))
                                    (:shape-name "InstanceAssociation"))

(smithy/sdk/shapes:define-type instance-association-execution-summary
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list instance-association-list :member
                               instance-association)

(smithy/sdk/shapes:define-structure instance-association-output-location
                                    common-lisp:nil
                                    ((s3location :target-type s3output-location
                                      :member-name "S3Location"))
                                    (:shape-name
                                     "InstanceAssociationOutputLocation"))

(smithy/sdk/shapes:define-structure instance-association-output-url
                                    common-lisp:nil
                                    ((s3output-url :target-type s3output-url
                                      :member-name "S3OutputUrl"))
                                    (:shape-name
                                     "InstanceAssociationOutputUrl"))

(smithy/sdk/shapes:define-map instance-association-status-aggregated-count :key
                              status-name :value instance-count)

(smithy/sdk/shapes:define-structure instance-association-status-info
                                    common-lisp:nil
                                    ((association-id :target-type
                                      association-id :member-name
                                      "AssociationId")
                                     (name :target-type document-arn
                                      :member-name "Name")
                                     (document-version :target-type
                                      document-version :member-name
                                      "DocumentVersion")
                                     (association-version :target-type
                                      association-version :member-name
                                      "AssociationVersion")
                                     (instance-id :target-type instance-id
                                      :member-name "InstanceId")
                                     (execution-date :target-type date-time
                                      :member-name "ExecutionDate")
                                     (status :target-type status-name
                                      :member-name "Status")
                                     (detailed-status :target-type status-name
                                      :member-name "DetailedStatus")
                                     (execution-summary :target-type
                                      instance-association-execution-summary
                                      :member-name "ExecutionSummary")
                                     (error-code :target-type agent-error-code
                                      :member-name "ErrorCode")
                                     (output-url :target-type
                                      instance-association-output-url
                                      :member-name "OutputUrl")
                                     (association-name :target-type
                                      association-name :member-name
                                      "AssociationName"))
                                    (:shape-name
                                     "InstanceAssociationStatusInfo"))

(smithy/sdk/shapes:define-list instance-association-status-infos :member
                               instance-association-status-info)

(smithy/sdk/shapes:define-type instance-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type instance-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list instance-id-list :member instance-id)

(smithy/sdk/shapes:define-structure instance-info common-lisp:nil
                                    ((agent-type :target-type agent-type
                                      :member-name "AgentType")
                                     (agent-version :target-type agent-version
                                      :member-name "AgentVersion")
                                     (computer-name :target-type computer-name
                                      :member-name "ComputerName")
                                     (instance-status :target-type
                                      instance-status :member-name
                                      "InstanceStatus")
                                     (ip-address :target-type ipaddress
                                      :member-name "IpAddress")
                                     (managed-status :target-type
                                      managed-status :member-name
                                      "ManagedStatus")
                                     (platform-type :target-type platform-type
                                      :member-name "PlatformType")
                                     (platform-name :target-type platform-name
                                      :member-name "PlatformName")
                                     (platform-version :target-type
                                      platform-version :member-name
                                      "PlatformVersion")
                                     (resource-type :target-type resource-type
                                      :member-name "ResourceType"))
                                    (:shape-name "InstanceInfo"))

(smithy/sdk/shapes:define-structure instance-information common-lisp:nil
                                    ((instance-id :target-type instance-id
                                      :member-name "InstanceId")
                                     (ping-status :target-type ping-status
                                      :member-name "PingStatus")
                                     (last-ping-date-time :target-type
                                      date-time :member-name
                                      "LastPingDateTime")
                                     (agent-version :target-type version
                                      :member-name "AgentVersion")
                                     (is-latest-version :target-type boolean
                                      :member-name "IsLatestVersion")
                                     (platform-type :target-type platform-type
                                      :member-name "PlatformType")
                                     (platform-name :target-type string
                                      :member-name "PlatformName")
                                     (platform-version :target-type string
                                      :member-name "PlatformVersion")
                                     (activation-id :target-type activation-id
                                      :member-name "ActivationId")
                                     (iam-role :target-type iam-role
                                      :member-name "IamRole")
                                     (registration-date :target-type date-time
                                      :member-name "RegistrationDate")
                                     (resource-type :target-type resource-type
                                      :member-name "ResourceType")
                                     (name :target-type string :member-name
                                      "Name")
                                     (ipaddress :target-type ipaddress
                                      :member-name "IPAddress")
                                     (computer-name :target-type computer-name
                                      :member-name "ComputerName")
                                     (association-status :target-type
                                      status-name :member-name
                                      "AssociationStatus")
                                     (last-association-execution-date
                                      :target-type date-time :member-name
                                      "LastAssociationExecutionDate")
                                     (last-successful-association-execution-date
                                      :target-type date-time :member-name
                                      "LastSuccessfulAssociationExecutionDate")
                                     (association-overview :target-type
                                      instance-aggregated-association-overview
                                      :member-name "AssociationOverview")
                                     (source-id :target-type source-id
                                      :member-name "SourceId")
                                     (source-type :target-type source-type
                                      :member-name "SourceType"))
                                    (:shape-name "InstanceInformation"))

(smithy/sdk/shapes:define-structure instance-information-filter common-lisp:nil
                                    ((key :target-type
                                      instance-information-filter-key :required
                                      common-lisp:t :member-name "key")
                                     (value-set :target-type
                                      instance-information-filter-value-set
                                      :required common-lisp:t :member-name
                                      "valueSet"))
                                    (:shape-name "InstanceInformationFilter"))

(smithy/sdk/shapes:define-enum instance-information-filter-key
    common-lisp:nil
  (:instance-ids "InstanceIds")
  (:agent-version "AgentVersion")
  (:ping-status "PingStatus")
  (:platform-types "PlatformTypes")
  (:activation-ids "ActivationIds")
  (:iam-role "IamRole")
  (:resource-type "ResourceType")
  (:association-status "AssociationStatus"))

(smithy/sdk/shapes:define-list instance-information-filter-list :member
                               (instance-information-filter :xml-name
                                "InstanceInformationFilter"))

(smithy/sdk/shapes:define-type instance-information-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list instance-information-filter-value-set :member
                               (instance-information-filter-value :xml-name
                                "InstanceInformationFilterValue"))

(smithy/sdk/shapes:define-list instance-information-list :member
                               (instance-information :xml-name
                                "InstanceInformation"))

(smithy/sdk/shapes:define-structure instance-information-string-filter
                                    common-lisp:nil
                                    ((key :target-type
                                      instance-information-string-filter-key
                                      :required common-lisp:t :member-name
                                      "Key")
                                     (values :target-type
                                      instance-information-filter-value-set
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name
                                     "InstanceInformationStringFilter"))

(smithy/sdk/shapes:define-type instance-information-string-filter-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list instance-information-string-filter-list :member
                               (instance-information-string-filter :xml-name
                                "InstanceInformationStringFilter"))

(smithy/sdk/shapes:define-type instance-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure instance-patch-state common-lisp:nil
                                    ((instance-id :target-type instance-id
                                      :required common-lisp:t :member-name
                                      "InstanceId")
                                     (patch-group :target-type patch-group
                                      :required common-lisp:t :member-name
                                      "PatchGroup")
                                     (baseline-id :target-type baseline-id
                                      :required common-lisp:t :member-name
                                      "BaselineId")
                                     (snapshot-id :target-type snapshot-id
                                      :member-name "SnapshotId")
                                     (install-override-list :target-type
                                      install-override-list :member-name
                                      "InstallOverrideList")
                                     (owner-information :target-type
                                      owner-information :member-name
                                      "OwnerInformation")
                                     (installed-count :target-type
                                      patch-installed-count :member-name
                                      "InstalledCount")
                                     (installed-other-count :target-type
                                      patch-installed-other-count :member-name
                                      "InstalledOtherCount")
                                     (installed-pending-reboot-count
                                      :target-type
                                      patch-installed-pending-reboot-count
                                      :member-name
                                      "InstalledPendingRebootCount")
                                     (installed-rejected-count :target-type
                                      patch-installed-rejected-count
                                      :member-name "InstalledRejectedCount")
                                     (missing-count :target-type
                                      patch-missing-count :member-name
                                      "MissingCount")
                                     (failed-count :target-type
                                      patch-failed-count :member-name
                                      "FailedCount")
                                     (unreported-not-applicable-count
                                      :target-type
                                      patch-unreported-not-applicable-count
                                      :member-name
                                      "UnreportedNotApplicableCount")
                                     (not-applicable-count :target-type
                                      patch-not-applicable-count :member-name
                                      "NotApplicableCount")
                                     (available-security-update-count
                                      :target-type
                                      patch-available-security-update-count
                                      :member-name
                                      "AvailableSecurityUpdateCount")
                                     (operation-start-time :target-type
                                      date-time :required common-lisp:t
                                      :member-name "OperationStartTime")
                                     (operation-end-time :target-type date-time
                                      :required common-lisp:t :member-name
                                      "OperationEndTime")
                                     (operation :target-type
                                      patch-operation-type :required
                                      common-lisp:t :member-name "Operation")
                                     (last-no-reboot-install-operation-time
                                      :target-type date-time :member-name
                                      "LastNoRebootInstallOperationTime")
                                     (reboot-option :target-type reboot-option
                                      :member-name "RebootOption")
                                     (critical-non-compliant-count :target-type
                                      patch-critical-non-compliant-count
                                      :member-name "CriticalNonCompliantCount")
                                     (security-non-compliant-count :target-type
                                      patch-security-non-compliant-count
                                      :member-name "SecurityNonCompliantCount")
                                     (other-non-compliant-count :target-type
                                      patch-other-non-compliant-count
                                      :member-name "OtherNonCompliantCount"))
                                    (:shape-name "InstancePatchState"))

(smithy/sdk/shapes:define-structure instance-patch-state-filter common-lisp:nil
                                    ((key :target-type
                                      instance-patch-state-filter-key :required
                                      common-lisp:t :member-name "Key")
                                     (values :target-type
                                      instance-patch-state-filter-values
                                      :required common-lisp:t :member-name
                                      "Values")
                                     (type :target-type
                                      instance-patch-state-operator-type
                                      :required common-lisp:t :member-name
                                      "Type"))
                                    (:shape-name "InstancePatchStateFilter"))

(smithy/sdk/shapes:define-type instance-patch-state-filter-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list instance-patch-state-filter-list :member
                               instance-patch-state-filter)

(smithy/sdk/shapes:define-type instance-patch-state-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list instance-patch-state-filter-values :member
                               instance-patch-state-filter-value)

(smithy/sdk/shapes:define-list instance-patch-state-list :member
                               instance-patch-state)

(smithy/sdk/shapes:define-enum instance-patch-state-operator-type
    common-lisp:nil
  (:equal "Equal")
  (:not-equal "NotEqual")
  (:less-than "LessThan")
  (:greater-than "GreaterThan"))

(smithy/sdk/shapes:define-list instance-patch-states-list :member
                               instance-patch-state)

(smithy/sdk/shapes:define-list instance-properties :member
                               (instance-property :xml-name "InstanceProperty"))

(smithy/sdk/shapes:define-structure instance-property common-lisp:nil
                                    ((name :target-type instance-name
                                      :member-name "Name")
                                     (instance-id :target-type instance-id
                                      :member-name "InstanceId")
                                     (instance-type :target-type instance-type
                                      :member-name "InstanceType")
                                     (instance-role :target-type instance-role
                                      :member-name "InstanceRole")
                                     (key-name :target-type key-name
                                      :member-name "KeyName")
                                     (instance-state :target-type
                                      instance-state :member-name
                                      "InstanceState")
                                     (architecture :target-type architecture
                                      :member-name "Architecture")
                                     (ipaddress :target-type ipaddress
                                      :member-name "IPAddress")
                                     (launch-time :target-type date-time
                                      :member-name "LaunchTime")
                                     (ping-status :target-type ping-status
                                      :member-name "PingStatus")
                                     (last-ping-date-time :target-type
                                      date-time :member-name
                                      "LastPingDateTime")
                                     (agent-version :target-type version
                                      :member-name "AgentVersion")
                                     (platform-type :target-type platform-type
                                      :member-name "PlatformType")
                                     (platform-name :target-type platform-name
                                      :member-name "PlatformName")
                                     (platform-version :target-type
                                      platform-version :member-name
                                      "PlatformVersion")
                                     (activation-id :target-type activation-id
                                      :member-name "ActivationId")
                                     (iam-role :target-type iam-role
                                      :member-name "IamRole")
                                     (registration-date :target-type date-time
                                      :member-name "RegistrationDate")
                                     (resource-type :target-type string
                                      :member-name "ResourceType")
                                     (computer-name :target-type computer-name
                                      :member-name "ComputerName")
                                     (association-status :target-type
                                      status-name :member-name
                                      "AssociationStatus")
                                     (last-association-execution-date
                                      :target-type date-time :member-name
                                      "LastAssociationExecutionDate")
                                     (last-successful-association-execution-date
                                      :target-type date-time :member-name
                                      "LastSuccessfulAssociationExecutionDate")
                                     (association-overview :target-type
                                      instance-aggregated-association-overview
                                      :member-name "AssociationOverview")
                                     (source-id :target-type source-id
                                      :member-name "SourceId")
                                     (source-type :target-type source-type
                                      :member-name "SourceType"))
                                    (:shape-name "InstanceProperty"))

(smithy/sdk/shapes:define-structure instance-property-filter common-lisp:nil
                                    ((key :target-type
                                      instance-property-filter-key :required
                                      common-lisp:t :member-name "key")
                                     (value-set :target-type
                                      instance-property-filter-value-set
                                      :required common-lisp:t :member-name
                                      "valueSet"))
                                    (:shape-name "InstancePropertyFilter"))

(smithy/sdk/shapes:define-enum instance-property-filter-key
    common-lisp:nil
  (:instance-ids "InstanceIds")
  (:agent-version "AgentVersion")
  (:ping-status "PingStatus")
  (:platform-types "PlatformTypes")
  (:document-name "DocumentName")
  (:activation-ids "ActivationIds")
  (:iam-role "IamRole")
  (:resource-type "ResourceType")
  (:association-status "AssociationStatus"))

(smithy/sdk/shapes:define-list instance-property-filter-list :member
                               (instance-property-filter :xml-name
                                "InstancePropertyFilter"))

(smithy/sdk/shapes:define-enum instance-property-filter-operator
    common-lisp:nil
  (:equal "Equal")
  (:not-equal "NotEqual")
  (:begin-with "BeginWith")
  (:less-than "LessThan")
  (:greater-than "GreaterThan"))

(smithy/sdk/shapes:define-type instance-property-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list instance-property-filter-value-set :member
                               (instance-property-filter-value :xml-name
                                "InstancePropertyFilterValue"))

(smithy/sdk/shapes:define-structure instance-property-string-filter
                                    common-lisp:nil
                                    ((key :target-type
                                      instance-property-string-filter-key
                                      :required common-lisp:t :member-name
                                      "Key")
                                     (values :target-type
                                      instance-property-filter-value-set
                                      :required common-lisp:t :member-name
                                      "Values")
                                     (operator :target-type
                                      instance-property-filter-operator
                                      :member-name "Operator"))
                                    (:shape-name
                                     "InstancePropertyStringFilter"))

(smithy/sdk/shapes:define-type instance-property-string-filter-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list instance-property-string-filter-list :member
                               (instance-property-string-filter :xml-name
                                "InstancePropertyStringFilter"))

(smithy/sdk/shapes:define-type instance-role smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type instance-state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type instance-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type instance-tag-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type instance-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type instances-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-error common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InternalServerError")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-activation common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidActivation")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-activation-id common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidActivationId")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-aggregator-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidAggregatorException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-allowed-pattern-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "InvalidAllowedPatternException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-association common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidAssociation")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-association-version common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidAssociationVersion")
                                (:error-code 400))

(smithy/sdk/shapes:define-error
 invalid-automation-execution-parameters-exception common-lisp:nil
 ((message :target-type string :member-name "Message"))
 (:shape-name "InvalidAutomationExecutionParametersException")
 (:error-code 400))

(smithy/sdk/shapes:define-error invalid-automation-signal-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "InvalidAutomationSignalException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-automation-status-update-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "InvalidAutomationStatusUpdateException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-command-id common-lisp:nil
                                common-lisp:nil
                                (:shape-name "InvalidCommandId")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-delete-inventory-parameters-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "InvalidDeleteInventoryParametersException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-deletion-id-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidDeletionIdException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-document common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidDocument")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-document-content common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidDocumentContent")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-document-operation common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidDocumentOperation")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-document-schema-version common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidDocumentSchemaVersion")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-document-type common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidDocumentType")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-document-version common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidDocumentVersion")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-filter common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidFilter") (:error-code 400))

(smithy/sdk/shapes:define-error invalid-filter-key common-lisp:nil
                                common-lisp:nil
                                (:shape-name "InvalidFilterKey")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-filter-option common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "InvalidFilterOption")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-filter-value common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidFilterValue")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-instance-id common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidInstanceId")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-instance-information-filter-value
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidInstanceInformationFilterValue")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-instance-property-filter-value
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidInstancePropertyFilterValue")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-inventory-group-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidInventoryGroupException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-inventory-item-context-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "InvalidInventoryItemContextException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-inventory-request-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "InvalidInventoryRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-item-content-exception common-lisp:nil
                                ((type-name :target-type
                                  inventory-item-type-name :member-name
                                  "TypeName")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidItemContentException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-key-id common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "InvalidKeyId") (:error-code 400))

(smithy/sdk/shapes:define-error invalid-next-token common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidNextToken")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-notification-config common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidNotificationConfig")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-option-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidOptionException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-output-folder common-lisp:nil
                                common-lisp:nil
                                (:shape-name "InvalidOutputFolder")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-output-location common-lisp:nil
                                common-lisp:nil
                                (:shape-name "InvalidOutputLocation")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-parameters common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidParameters")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-permission-type common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidPermissionType")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-plugin-name common-lisp:nil
                                common-lisp:nil
                                (:shape-name "InvalidPluginName")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-policy-attribute-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "InvalidPolicyAttributeException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-policy-type-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "InvalidPolicyTypeException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-resource-id common-lisp:nil
                                common-lisp:nil
                                (:shape-name "InvalidResourceId")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-resource-type common-lisp:nil
                                common-lisp:nil
                                (:shape-name "InvalidResourceType")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-result-attribute-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidResultAttributeException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-role common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidRole") (:error-code 400))

(smithy/sdk/shapes:define-error invalid-schedule common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidSchedule")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-tag common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidTag") (:error-code 400))

(smithy/sdk/shapes:define-error invalid-target common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidTarget") (:error-code 400))

(smithy/sdk/shapes:define-error invalid-target-maps common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidTargetMaps")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-type-name-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidTypeNameException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-update common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidUpdate") (:error-code 400))

(smithy/sdk/shapes:define-structure inventory-aggregator common-lisp:nil
                                    ((expression :target-type
                                      inventory-aggregator-expression
                                      :member-name "Expression")
                                     (aggregators :target-type
                                      inventory-aggregator-list :member-name
                                      "Aggregators")
                                     (groups :target-type inventory-group-list
                                      :member-name "Groups"))
                                    (:shape-name "InventoryAggregator"))

(smithy/sdk/shapes:define-type inventory-aggregator-expression
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list inventory-aggregator-list :member
                               (inventory-aggregator :xml-name "Aggregator"))

(smithy/sdk/shapes:define-enum inventory-attribute-data-type
    common-lisp:nil
  (:string "string")
  (:number "number"))

(smithy/sdk/shapes:define-type inventory-deletion-last-status-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type inventory-deletion-last-status-update-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type inventory-deletion-start-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-enum inventory-deletion-status
    common-lisp:nil
  (:in-progress "InProgress")
  (:complete "Complete"))

(smithy/sdk/shapes:define-structure inventory-deletion-status-item
                                    common-lisp:nil
                                    ((deletion-id :target-type uuid
                                      :member-name "DeletionId")
                                     (type-name :target-type
                                      inventory-item-type-name :member-name
                                      "TypeName")
                                     (deletion-start-time :target-type
                                      inventory-deletion-start-time
                                      :member-name "DeletionStartTime")
                                     (last-status :target-type
                                      inventory-deletion-status :member-name
                                      "LastStatus")
                                     (last-status-message :target-type
                                      inventory-deletion-last-status-message
                                      :member-name "LastStatusMessage")
                                     (deletion-summary :target-type
                                      inventory-deletion-summary :member-name
                                      "DeletionSummary")
                                     (last-status-update-time :target-type
                                      inventory-deletion-last-status-update-time
                                      :member-name "LastStatusUpdateTime"))
                                    (:shape-name "InventoryDeletionStatusItem"))

(smithy/sdk/shapes:define-structure inventory-deletion-summary common-lisp:nil
                                    ((total-count :target-type total-count
                                      :member-name "TotalCount")
                                     (remaining-count :target-type
                                      remaining-count :member-name
                                      "RemainingCount")
                                     (summary-items :target-type
                                      inventory-deletion-summary-items
                                      :member-name "SummaryItems"))
                                    (:shape-name "InventoryDeletionSummary"))

(smithy/sdk/shapes:define-structure inventory-deletion-summary-item
                                    common-lisp:nil
                                    ((version :target-type
                                      inventory-item-schema-version
                                      :member-name "Version")
                                     (count :target-type resource-count
                                      :member-name "Count")
                                     (remaining-count :target-type
                                      remaining-count :member-name
                                      "RemainingCount"))
                                    (:shape-name
                                     "InventoryDeletionSummaryItem"))

(smithy/sdk/shapes:define-list inventory-deletion-summary-items :member
                               inventory-deletion-summary-item)

(smithy/sdk/shapes:define-list inventory-deletions-list :member
                               inventory-deletion-status-item)

(smithy/sdk/shapes:define-structure inventory-filter common-lisp:nil
                                    ((key :target-type inventory-filter-key
                                      :required common-lisp:t :member-name
                                      "Key")
                                     (values :target-type
                                      inventory-filter-value-list :required
                                      common-lisp:t :member-name "Values")
                                     (type :target-type
                                      inventory-query-operator-type
                                      :member-name "Type"))
                                    (:shape-name "InventoryFilter"))

(smithy/sdk/shapes:define-type inventory-filter-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list inventory-filter-list :member
                               (inventory-filter :xml-name "InventoryFilter"))

(smithy/sdk/shapes:define-type inventory-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list inventory-filter-value-list :member
                               (inventory-filter-value :xml-name "FilterValue"))

(smithy/sdk/shapes:define-structure inventory-group common-lisp:nil
                                    ((name :target-type inventory-group-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (filters :target-type
                                      inventory-filter-list :required
                                      common-lisp:t :member-name "Filters"))
                                    (:shape-name "InventoryGroup"))

(smithy/sdk/shapes:define-list inventory-group-list :member
                               (inventory-group :xml-name "InventoryGroup"))

(smithy/sdk/shapes:define-type inventory-group-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure inventory-item common-lisp:nil
                                    ((type-name :target-type
                                      inventory-item-type-name :required
                                      common-lisp:t :member-name "TypeName")
                                     (schema-version :target-type
                                      inventory-item-schema-version :required
                                      common-lisp:t :member-name
                                      "SchemaVersion")
                                     (capture-time :target-type
                                      inventory-item-capture-time :required
                                      common-lisp:t :member-name "CaptureTime")
                                     (content-hash :target-type
                                      inventory-item-content-hash :member-name
                                      "ContentHash")
                                     (content :target-type
                                      inventory-item-entry-list :member-name
                                      "Content")
                                     (context :target-type
                                      inventory-item-content-context
                                      :member-name "Context"))
                                    (:shape-name "InventoryItem"))

(smithy/sdk/shapes:define-structure inventory-item-attribute common-lisp:nil
                                    ((name :target-type
                                      inventory-item-attribute-name :required
                                      common-lisp:t :member-name "Name")
                                     (data-type :target-type
                                      inventory-attribute-data-type :required
                                      common-lisp:t :member-name "DataType"))
                                    (:shape-name "InventoryItemAttribute"))

(smithy/sdk/shapes:define-list inventory-item-attribute-list :member
                               (inventory-item-attribute :xml-name "Attribute"))

(smithy/sdk/shapes:define-type inventory-item-attribute-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type inventory-item-capture-time
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map inventory-item-content-context :key
                              attribute-name :value attribute-value)

(smithy/sdk/shapes:define-type inventory-item-content-hash
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map inventory-item-entry :key attribute-name :value
                              attribute-value)

(smithy/sdk/shapes:define-list inventory-item-entry-list :member
                               inventory-item-entry)

(smithy/sdk/shapes:define-list inventory-item-list :member
                               (inventory-item :xml-name "Item"))

(smithy/sdk/shapes:define-structure inventory-item-schema common-lisp:nil
                                    ((type-name :target-type
                                      inventory-item-type-name :required
                                      common-lisp:t :member-name "TypeName")
                                     (version :target-type
                                      inventory-item-schema-version
                                      :member-name "Version")
                                     (attributes :target-type
                                      inventory-item-attribute-list :required
                                      common-lisp:t :member-name "Attributes")
                                     (display-name :target-type
                                      inventory-type-display-name :member-name
                                      "DisplayName"))
                                    (:shape-name "InventoryItemSchema"))

(smithy/sdk/shapes:define-list inventory-item-schema-result-list :member
                               inventory-item-schema)

(smithy/sdk/shapes:define-type inventory-item-schema-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type inventory-item-type-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type inventory-item-type-name-filter
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum inventory-query-operator-type
    common-lisp:nil
  (:equal "Equal")
  (:not-equal "NotEqual")
  (:begin-with "BeginWith")
  (:less-than "LessThan")
  (:greater-than "GreaterThan")
  (:exists "Exists"))

(smithy/sdk/shapes:define-structure inventory-result-entity common-lisp:nil
                                    ((id :target-type
                                      inventory-result-entity-id :member-name
                                      "Id")
                                     (data :target-type
                                      inventory-result-item-map :member-name
                                      "Data"))
                                    (:shape-name "InventoryResultEntity"))

(smithy/sdk/shapes:define-type inventory-result-entity-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list inventory-result-entity-list :member
                               (inventory-result-entity :xml-name "Entity"))

(smithy/sdk/shapes:define-structure inventory-result-item common-lisp:nil
                                    ((type-name :target-type
                                      inventory-item-type-name :required
                                      common-lisp:t :member-name "TypeName")
                                     (schema-version :target-type
                                      inventory-item-schema-version :required
                                      common-lisp:t :member-name
                                      "SchemaVersion")
                                     (capture-time :target-type
                                      inventory-item-capture-time :member-name
                                      "CaptureTime")
                                     (content-hash :target-type
                                      inventory-item-content-hash :member-name
                                      "ContentHash")
                                     (content :target-type
                                      inventory-item-entry-list :required
                                      common-lisp:t :member-name "Content"))
                                    (:shape-name "InventoryResultItem"))

(smithy/sdk/shapes:define-type inventory-result-item-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map inventory-result-item-map :key
                              inventory-result-item-key :value
                              inventory-result-item)

(smithy/sdk/shapes:define-enum inventory-schema-delete-option
    common-lisp:nil
  (:disable-schema "DisableSchema")
  (:delete-schema "DeleteSchema"))

(smithy/sdk/shapes:define-type inventory-type-display-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error invocation-does-not-exist common-lisp:nil
                                common-lisp:nil
                                (:shape-name "InvocationDoesNotExist")
                                (:error-code 400))

(smithy/sdk/shapes:define-type invocation-trace-output
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type is-sub-type-schema
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error item-content-mismatch-exception common-lisp:nil
                                ((type-name :target-type
                                  inventory-item-type-name :member-name
                                  "TypeName")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ItemContentMismatchException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error item-size-limit-exceeded-exception
                                common-lisp:nil
                                ((type-name :target-type
                                  inventory-item-type-name :member-name
                                  "TypeName")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ItemSizeLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list key-list :member tag-key)

(smithy/sdk/shapes:define-type key-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input label-parameter-version-request common-lisp:nil
                                ((name :target-type psparameter-name :required
                                  common-lisp:t :member-name "Name")
                                 (parameter-version :target-type
                                  psparameter-version :member-name
                                  "ParameterVersion")
                                 (labels :target-type parameter-label-list
                                  :required common-lisp:t :member-name
                                  "Labels"))
                                (:shape-name "LabelParameterVersionRequest"))

(smithy/sdk/shapes:define-output label-parameter-version-result common-lisp:nil
                                 ((invalid-labels :target-type
                                   parameter-label-list :member-name
                                   "InvalidLabels")
                                  (parameter-version :target-type
                                   psparameter-version :member-name
                                   "ParameterVersion"))
                                 (:shape-name "LabelParameterVersionResult"))

(smithy/sdk/shapes:define-type last-resource-data-sync-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum last-resource-data-sync-status
    common-lisp:nil
  (:successful "Successful")
  (:failed "Failed")
  (:inprogress "InProgress"))

(smithy/sdk/shapes:define-type last-resource-data-sync-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type last-successful-resource-data-sync-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input list-association-versions-request
                                common-lisp:nil
                                ((association-id :target-type association-id
                                  :required common-lisp:t :member-name
                                  "AssociationId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListAssociationVersionsRequest"))

(smithy/sdk/shapes:define-output list-association-versions-result
                                 common-lisp:nil
                                 ((association-versions :target-type
                                   association-version-list :member-name
                                   "AssociationVersions")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListAssociationVersionsResult"))

(smithy/sdk/shapes:define-input list-associations-request common-lisp:nil
                                ((association-filter-list :target-type
                                  association-filter-list :member-name
                                  "AssociationFilterList")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListAssociationsRequest"))

(smithy/sdk/shapes:define-output list-associations-result common-lisp:nil
                                 ((associations :target-type association-list
                                   :member-name "Associations")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListAssociationsResult"))

(smithy/sdk/shapes:define-input list-command-invocations-request
                                common-lisp:nil
                                ((command-id :target-type command-id
                                  :member-name "CommandId")
                                 (instance-id :target-type instance-id
                                  :member-name "InstanceId")
                                 (max-results :target-type command-max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (filters :target-type command-filter-list
                                  :member-name "Filters")
                                 (details :target-type boolean :member-name
                                  "Details"))
                                (:shape-name "ListCommandInvocationsRequest"))

(smithy/sdk/shapes:define-output list-command-invocations-result
                                 common-lisp:nil
                                 ((command-invocations :target-type
                                   command-invocation-list :member-name
                                   "CommandInvocations")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListCommandInvocationsResult"))

(smithy/sdk/shapes:define-input list-commands-request common-lisp:nil
                                ((command-id :target-type command-id
                                  :member-name "CommandId")
                                 (instance-id :target-type instance-id
                                  :member-name "InstanceId")
                                 (max-results :target-type command-max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (filters :target-type command-filter-list
                                  :member-name "Filters"))
                                (:shape-name "ListCommandsRequest"))

(smithy/sdk/shapes:define-output list-commands-result common-lisp:nil
                                 ((commands :target-type command-list
                                   :member-name "Commands")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListCommandsResult"))

(smithy/sdk/shapes:define-input list-compliance-items-request common-lisp:nil
                                ((filters :target-type
                                  compliance-string-filter-list :member-name
                                  "Filters")
                                 (resource-ids :target-type
                                  compliance-resource-id-list :member-name
                                  "ResourceIds")
                                 (resource-types :target-type
                                  compliance-resource-type-list :member-name
                                  "ResourceTypes")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListComplianceItemsRequest"))

(smithy/sdk/shapes:define-output list-compliance-items-result common-lisp:nil
                                 ((compliance-items :target-type
                                   compliance-item-list :member-name
                                   "ComplianceItems")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListComplianceItemsResult"))

(smithy/sdk/shapes:define-input list-compliance-summaries-request
                                common-lisp:nil
                                ((filters :target-type
                                  compliance-string-filter-list :member-name
                                  "Filters")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListComplianceSummariesRequest"))

(smithy/sdk/shapes:define-output list-compliance-summaries-result
                                 common-lisp:nil
                                 ((compliance-summary-items :target-type
                                   compliance-summary-item-list :member-name
                                   "ComplianceSummaryItems")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListComplianceSummariesResult"))

(smithy/sdk/shapes:define-input list-document-metadata-history-request
                                common-lisp:nil
                                ((name :target-type document-name :required
                                  common-lisp:t :member-name "Name")
                                 (document-version :target-type
                                  document-version :member-name
                                  "DocumentVersion")
                                 (metadata :target-type document-metadata-enum
                                  :required common-lisp:t :member-name
                                  "Metadata")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListDocumentMetadataHistoryRequest"))

(smithy/sdk/shapes:define-output list-document-metadata-history-response
                                 common-lisp:nil
                                 ((name :target-type document-name :member-name
                                   "Name")
                                  (document-version :target-type
                                   document-version :member-name
                                   "DocumentVersion")
                                  (author :target-type document-author
                                   :member-name "Author")
                                  (metadata :target-type
                                   document-metadata-response-info :member-name
                                   "Metadata")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListDocumentMetadataHistoryResponse"))

(smithy/sdk/shapes:define-input list-document-versions-request common-lisp:nil
                                ((name :target-type document-arn :required
                                  common-lisp:t :member-name "Name")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListDocumentVersionsRequest"))

(smithy/sdk/shapes:define-output list-document-versions-result common-lisp:nil
                                 ((document-versions :target-type
                                   document-version-list :member-name
                                   "DocumentVersions")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListDocumentVersionsResult"))

(smithy/sdk/shapes:define-input list-documents-request common-lisp:nil
                                ((document-filter-list :target-type
                                  document-filter-list :member-name
                                  "DocumentFilterList")
                                 (filters :target-type
                                  document-key-values-filter-list :member-name
                                  "Filters")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListDocumentsRequest"))

(smithy/sdk/shapes:define-output list-documents-result common-lisp:nil
                                 ((document-identifiers :target-type
                                   document-identifier-list :member-name
                                   "DocumentIdentifiers")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListDocumentsResult"))

(smithy/sdk/shapes:define-input list-inventory-entries-request common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "InstanceId")
                                 (type-name :target-type
                                  inventory-item-type-name :required
                                  common-lisp:t :member-name "TypeName")
                                 (filters :target-type inventory-filter-list
                                  :member-name "Filters")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListInventoryEntriesRequest"))

(smithy/sdk/shapes:define-output list-inventory-entries-result common-lisp:nil
                                 ((type-name :target-type
                                   inventory-item-type-name :member-name
                                   "TypeName")
                                  (instance-id :target-type instance-id
                                   :member-name "InstanceId")
                                  (schema-version :target-type
                                   inventory-item-schema-version :member-name
                                   "SchemaVersion")
                                  (capture-time :target-type
                                   inventory-item-capture-time :member-name
                                   "CaptureTime")
                                  (entries :target-type
                                   inventory-item-entry-list :member-name
                                   "Entries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListInventoryEntriesResult"))

(smithy/sdk/shapes:define-input list-nodes-request common-lisp:nil
                                ((sync-name :target-type
                                  resource-data-sync-name :member-name
                                  "SyncName")
                                 (filters :target-type node-filter-list
                                  :member-name "Filters")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListNodesRequest"))

(smithy/sdk/shapes:define-output list-nodes-result common-lisp:nil
                                 ((nodes :target-type node-list :member-name
                                   "Nodes")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListNodesResult"))

(smithy/sdk/shapes:define-input list-nodes-summary-request common-lisp:nil
                                ((sync-name :target-type
                                  resource-data-sync-name :member-name
                                  "SyncName")
                                 (filters :target-type node-filter-list
                                  :member-name "Filters")
                                 (aggregators :target-type node-aggregator-list
                                  :required common-lisp:t :member-name
                                  "Aggregators")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListNodesSummaryRequest"))

(smithy/sdk/shapes:define-output list-nodes-summary-result common-lisp:nil
                                 ((summary :target-type node-summary-list
                                   :member-name "Summary")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListNodesSummaryResult"))

(smithy/sdk/shapes:define-input list-ops-item-events-request common-lisp:nil
                                ((filters :target-type ops-item-event-filters
                                  :member-name "Filters")
                                 (max-results :target-type
                                  ops-item-event-max-results :member-name
                                  "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "ListOpsItemEventsRequest"))

(smithy/sdk/shapes:define-output list-ops-item-events-response common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (summaries :target-type
                                   ops-item-event-summaries :member-name
                                   "Summaries"))
                                 (:shape-name "ListOpsItemEventsResponse"))

(smithy/sdk/shapes:define-input list-ops-item-related-items-request
                                common-lisp:nil
                                ((ops-item-id :target-type ops-item-id
                                  :member-name "OpsItemId")
                                 (filters :target-type
                                  ops-item-related-items-filters :member-name
                                  "Filters")
                                 (max-results :target-type
                                  ops-item-related-items-max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "ListOpsItemRelatedItemsRequest"))

(smithy/sdk/shapes:define-output list-ops-item-related-items-response
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (summaries :target-type
                                   ops-item-related-item-summaries :member-name
                                   "Summaries"))
                                 (:shape-name
                                  "ListOpsItemRelatedItemsResponse"))

(smithy/sdk/shapes:define-type list-ops-metadata-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-ops-metadata-request common-lisp:nil
                                ((filters :target-type ops-metadata-filter-list
                                  :member-name "Filters")
                                 (max-results :target-type
                                  list-ops-metadata-max-results :member-name
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListOpsMetadataRequest"))

(smithy/sdk/shapes:define-output list-ops-metadata-result common-lisp:nil
                                 ((ops-metadata-list :target-type
                                   ops-metadata-list :member-name
                                   "OpsMetadataList")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListOpsMetadataResult"))

(smithy/sdk/shapes:define-input list-resource-compliance-summaries-request
                                common-lisp:nil
                                ((filters :target-type
                                  compliance-string-filter-list :member-name
                                  "Filters")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListResourceComplianceSummariesRequest"))

(smithy/sdk/shapes:define-output list-resource-compliance-summaries-result
                                 common-lisp:nil
                                 ((resource-compliance-summary-items
                                   :target-type
                                   resource-compliance-summary-item-list
                                   :member-name
                                   "ResourceComplianceSummaryItems")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListResourceComplianceSummariesResult"))

(smithy/sdk/shapes:define-input list-resource-data-sync-request common-lisp:nil
                                ((sync-type :target-type
                                  resource-data-sync-type :member-name
                                  "SyncType")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListResourceDataSyncRequest"))

(smithy/sdk/shapes:define-output list-resource-data-sync-result common-lisp:nil
                                 ((resource-data-sync-items :target-type
                                   resource-data-sync-item-list :member-name
                                   "ResourceDataSyncItems")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListResourceDataSyncResult"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-type :target-type
                                  resource-type-for-tagging :required
                                  common-lisp:t :member-name "ResourceType")
                                 (resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResourceId"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-result common-lisp:nil
                                 ((tag-list :target-type tag-list :member-name
                                   "TagList"))
                                 (:shape-name "ListTagsForResourceResult"))

(smithy/sdk/shapes:define-structure logging-info common-lisp:nil
                                    ((s3bucket-name :target-type s3bucket-name
                                      :required common-lisp:t :member-name
                                      "S3BucketName")
                                     (s3key-prefix :target-type s3key-prefix
                                      :member-name "S3KeyPrefix")
                                     (s3region :target-type s3region :required
                                      common-lisp:t :member-name "S3Region"))
                                    (:shape-name "LoggingInfo"))

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type maintenance-window-allow-unassociated-targets
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure maintenance-window-automation-parameters
                                    common-lisp:nil
                                    ((document-version :target-type
                                      document-version :member-name
                                      "DocumentVersion")
                                     (parameters :target-type
                                      automation-parameter-map :member-name
                                      "Parameters"))
                                    (:shape-name
                                     "MaintenanceWindowAutomationParameters"))

(smithy/sdk/shapes:define-type maintenance-window-cutoff
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type maintenance-window-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type maintenance-window-duration-hours
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type maintenance-window-enabled
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure maintenance-window-execution
                                    common-lisp:nil
                                    ((window-id :target-type
                                      maintenance-window-id :member-name
                                      "WindowId")
                                     (window-execution-id :target-type
                                      maintenance-window-execution-id
                                      :member-name "WindowExecutionId")
                                     (status :target-type
                                      maintenance-window-execution-status
                                      :member-name "Status")
                                     (status-details :target-type
                                      maintenance-window-execution-status-details
                                      :member-name "StatusDetails")
                                     (start-time :target-type date-time
                                      :member-name "StartTime")
                                     (end-time :target-type date-time
                                      :member-name "EndTime"))
                                    (:shape-name "MaintenanceWindowExecution"))

(smithy/sdk/shapes:define-type maintenance-window-execution-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list maintenance-window-execution-list :member
                               maintenance-window-execution)

(smithy/sdk/shapes:define-enum maintenance-window-execution-status
    common-lisp:nil
  (:pending "PENDING")
  (:in-progress "IN_PROGRESS")
  (:success "SUCCESS")
  (:failed "FAILED")
  (:timed-out "TIMED_OUT")
  (:cancelling "CANCELLING")
  (:cancelled "CANCELLED")
  (:skipped-overlapping "SKIPPED_OVERLAPPING"))

(smithy/sdk/shapes:define-type maintenance-window-execution-status-details
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type maintenance-window-execution-task-execution-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type maintenance-window-execution-task-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list maintenance-window-execution-task-id-list
                               :member maintenance-window-execution-task-id)

(smithy/sdk/shapes:define-structure maintenance-window-execution-task-identity
                                    common-lisp:nil
                                    ((window-execution-id :target-type
                                      maintenance-window-execution-id
                                      :member-name "WindowExecutionId")
                                     (task-execution-id :target-type
                                      maintenance-window-execution-task-id
                                      :member-name "TaskExecutionId")
                                     (status :target-type
                                      maintenance-window-execution-status
                                      :member-name "Status")
                                     (status-details :target-type
                                      maintenance-window-execution-status-details
                                      :member-name "StatusDetails")
                                     (start-time :target-type date-time
                                      :member-name "StartTime")
                                     (end-time :target-type date-time
                                      :member-name "EndTime")
                                     (task-arn :target-type
                                      maintenance-window-task-arn :member-name
                                      "TaskArn")
                                     (task-type :target-type
                                      maintenance-window-task-type :member-name
                                      "TaskType")
                                     (alarm-configuration :target-type
                                      alarm-configuration :member-name
                                      "AlarmConfiguration")
                                     (triggered-alarms :target-type
                                      alarm-state-information-list :member-name
                                      "TriggeredAlarms"))
                                    (:shape-name
                                     "MaintenanceWindowExecutionTaskIdentity"))

(smithy/sdk/shapes:define-list maintenance-window-execution-task-identity-list
                               :member
                               maintenance-window-execution-task-identity)

(smithy/sdk/shapes:define-type maintenance-window-execution-task-invocation-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 maintenance-window-execution-task-invocation-identity common-lisp:nil
 ((window-execution-id :target-type maintenance-window-execution-id
   :member-name "WindowExecutionId")
  (task-execution-id :target-type maintenance-window-execution-task-id
   :member-name "TaskExecutionId")
  (invocation-id :target-type maintenance-window-execution-task-invocation-id
   :member-name "InvocationId")
  (execution-id :target-type maintenance-window-execution-task-execution-id
   :member-name "ExecutionId")
  (task-type :target-type maintenance-window-task-type :member-name "TaskType")
  (parameters :target-type
   maintenance-window-execution-task-invocation-parameters :member-name
   "Parameters")
  (status :target-type maintenance-window-execution-status :member-name
   "Status")
  (status-details :target-type maintenance-window-execution-status-details
   :member-name "StatusDetails")
  (start-time :target-type date-time :member-name "StartTime")
  (end-time :target-type date-time :member-name "EndTime")
  (owner-information :target-type owner-information :member-name
   "OwnerInformation")
  (window-target-id :target-type maintenance-window-task-target-id :member-name
   "WindowTargetId"))
 (:shape-name "MaintenanceWindowExecutionTaskInvocationIdentity"))

(smithy/sdk/shapes:define-list
 maintenance-window-execution-task-invocation-identity-list :member
 maintenance-window-execution-task-invocation-identity)

(smithy/sdk/shapes:define-type
 maintenance-window-execution-task-invocation-parameters
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure maintenance-window-filter common-lisp:nil
                                    ((key :target-type
                                      maintenance-window-filter-key
                                      :member-name "Key")
                                     (values :target-type
                                      maintenance-window-filter-values
                                      :member-name "Values"))
                                    (:shape-name "MaintenanceWindowFilter"))

(smithy/sdk/shapes:define-type maintenance-window-filter-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list maintenance-window-filter-list :member
                               maintenance-window-filter)

(smithy/sdk/shapes:define-type maintenance-window-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list maintenance-window-filter-values :member
                               maintenance-window-filter-value)

(smithy/sdk/shapes:define-type maintenance-window-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure maintenance-window-identity common-lisp:nil
                                    ((window-id :target-type
                                      maintenance-window-id :member-name
                                      "WindowId")
                                     (name :target-type maintenance-window-name
                                      :member-name "Name")
                                     (description :target-type
                                      maintenance-window-description
                                      :member-name "Description")
                                     (enabled :target-type
                                      maintenance-window-enabled :member-name
                                      "Enabled")
                                     (duration :target-type
                                      maintenance-window-duration-hours
                                      :member-name "Duration")
                                     (cutoff :target-type
                                      maintenance-window-cutoff :member-name
                                      "Cutoff")
                                     (schedule :target-type
                                      maintenance-window-schedule :member-name
                                      "Schedule")
                                     (schedule-timezone :target-type
                                      maintenance-window-timezone :member-name
                                      "ScheduleTimezone")
                                     (schedule-offset :target-type
                                      maintenance-window-offset :member-name
                                      "ScheduleOffset")
                                     (end-date :target-type
                                      maintenance-window-string-date-time
                                      :member-name "EndDate")
                                     (start-date :target-type
                                      maintenance-window-string-date-time
                                      :member-name "StartDate")
                                     (next-execution-time :target-type
                                      maintenance-window-string-date-time
                                      :member-name "NextExecutionTime"))
                                    (:shape-name "MaintenanceWindowIdentity"))

(smithy/sdk/shapes:define-structure maintenance-window-identity-for-target
                                    common-lisp:nil
                                    ((window-id :target-type
                                      maintenance-window-id :member-name
                                      "WindowId")
                                     (name :target-type maintenance-window-name
                                      :member-name "Name"))
                                    (:shape-name
                                     "MaintenanceWindowIdentityForTarget"))

(smithy/sdk/shapes:define-list maintenance-window-identity-list :member
                               maintenance-window-identity)

(smithy/sdk/shapes:define-type maintenance-window-lambda-client-context
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure maintenance-window-lambda-parameters
                                    common-lisp:nil
                                    ((client-context :target-type
                                      maintenance-window-lambda-client-context
                                      :member-name "ClientContext")
                                     (qualifier :target-type
                                      maintenance-window-lambda-qualifier
                                      :member-name "Qualifier")
                                     (payload :target-type
                                      maintenance-window-lambda-payload
                                      :member-name "Payload"))
                                    (:shape-name
                                     "MaintenanceWindowLambdaParameters"))

(smithy/sdk/shapes:define-type maintenance-window-lambda-payload
                               smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type maintenance-window-lambda-qualifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type maintenance-window-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type maintenance-window-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type maintenance-window-offset
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum maintenance-window-resource-type
    common-lisp:nil
  (:instance "INSTANCE")
  (:resource-group "RESOURCE_GROUP"))

(smithy/sdk/shapes:define-structure maintenance-window-run-command-parameters
                                    common-lisp:nil
                                    ((comment :target-type comment :member-name
                                      "Comment")
                                     (cloud-watch-output-config :target-type
                                      cloud-watch-output-config :member-name
                                      "CloudWatchOutputConfig")
                                     (document-hash :target-type document-hash
                                      :member-name "DocumentHash")
                                     (document-hash-type :target-type
                                      document-hash-type :member-name
                                      "DocumentHashType")
                                     (document-version :target-type
                                      document-version :member-name
                                      "DocumentVersion")
                                     (notification-config :target-type
                                      notification-config :member-name
                                      "NotificationConfig")
                                     (output-s3bucket-name :target-type
                                      s3bucket-name :member-name
                                      "OutputS3BucketName")
                                     (output-s3key-prefix :target-type
                                      s3key-prefix :member-name
                                      "OutputS3KeyPrefix")
                                     (parameters :target-type parameters
                                      :member-name "Parameters")
                                     (service-role-arn :target-type
                                      service-role :member-name
                                      "ServiceRoleArn")
                                     (timeout-seconds :target-type
                                      timeout-seconds :member-name
                                      "TimeoutSeconds"))
                                    (:shape-name
                                     "MaintenanceWindowRunCommandParameters"))

(smithy/sdk/shapes:define-type maintenance-window-schedule
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type maintenance-window-search-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type maintenance-window-step-functions-input
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type maintenance-window-step-functions-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 maintenance-window-step-functions-parameters common-lisp:nil
 ((input :target-type maintenance-window-step-functions-input :member-name
   "Input")
  (name :target-type maintenance-window-step-functions-name :member-name
   "Name"))
 (:shape-name "MaintenanceWindowStepFunctionsParameters"))

(smithy/sdk/shapes:define-type maintenance-window-string-date-time
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure maintenance-window-target common-lisp:nil
                                    ((window-id :target-type
                                      maintenance-window-id :member-name
                                      "WindowId")
                                     (window-target-id :target-type
                                      maintenance-window-target-id :member-name
                                      "WindowTargetId")
                                     (resource-type :target-type
                                      maintenance-window-resource-type
                                      :member-name "ResourceType")
                                     (targets :target-type targets :member-name
                                      "Targets")
                                     (owner-information :target-type
                                      owner-information :member-name
                                      "OwnerInformation")
                                     (name :target-type maintenance-window-name
                                      :member-name "Name")
                                     (description :target-type
                                      maintenance-window-description
                                      :member-name "Description"))
                                    (:shape-name "MaintenanceWindowTarget"))

(smithy/sdk/shapes:define-type maintenance-window-target-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list maintenance-window-target-list :member
                               maintenance-window-target)

(smithy/sdk/shapes:define-structure maintenance-window-task common-lisp:nil
                                    ((window-id :target-type
                                      maintenance-window-id :member-name
                                      "WindowId")
                                     (window-task-id :target-type
                                      maintenance-window-task-id :member-name
                                      "WindowTaskId")
                                     (task-arn :target-type
                                      maintenance-window-task-arn :member-name
                                      "TaskArn")
                                     (type :target-type
                                      maintenance-window-task-type :member-name
                                      "Type")
                                     (targets :target-type targets :member-name
                                      "Targets")
                                     (task-parameters :target-type
                                      maintenance-window-task-parameters
                                      :member-name "TaskParameters")
                                     (priority :target-type
                                      maintenance-window-task-priority
                                      :member-name "Priority")
                                     (logging-info :target-type logging-info
                                      :member-name "LoggingInfo")
                                     (service-role-arn :target-type
                                      service-role :member-name
                                      "ServiceRoleArn")
                                     (max-concurrency :target-type
                                      max-concurrency :member-name
                                      "MaxConcurrency")
                                     (max-errors :target-type max-errors
                                      :member-name "MaxErrors")
                                     (name :target-type maintenance-window-name
                                      :member-name "Name")
                                     (description :target-type
                                      maintenance-window-description
                                      :member-name "Description")
                                     (cutoff-behavior :target-type
                                      maintenance-window-task-cutoff-behavior
                                      :member-name "CutoffBehavior")
                                     (alarm-configuration :target-type
                                      alarm-configuration :member-name
                                      "AlarmConfiguration"))
                                    (:shape-name "MaintenanceWindowTask"))

(smithy/sdk/shapes:define-type maintenance-window-task-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum maintenance-window-task-cutoff-behavior
    common-lisp:nil
  (:continue-task "CONTINUE_TASK")
  (:cancel-task "CANCEL_TASK"))

(smithy/sdk/shapes:define-type maintenance-window-task-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 maintenance-window-task-invocation-parameters common-lisp:nil
 ((run-command :target-type maintenance-window-run-command-parameters
   :member-name "RunCommand")
  (automation :target-type maintenance-window-automation-parameters
   :member-name "Automation")
  (step-functions :target-type maintenance-window-step-functions-parameters
   :member-name "StepFunctions")
  (lambda :target-type maintenance-window-lambda-parameters :member-name
   "Lambda"))
 (:shape-name "MaintenanceWindowTaskInvocationParameters"))

(smithy/sdk/shapes:define-list maintenance-window-task-list :member
                               maintenance-window-task)

(smithy/sdk/shapes:define-type maintenance-window-task-parameter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type maintenance-window-task-parameter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 maintenance-window-task-parameter-value-expression common-lisp:nil
 ((values :target-type maintenance-window-task-parameter-value-list
   :member-name "Values"))
 (:shape-name "MaintenanceWindowTaskParameterValueExpression"))

(smithy/sdk/shapes:define-list maintenance-window-task-parameter-value-list
                               :member maintenance-window-task-parameter-value)

(smithy/sdk/shapes:define-map maintenance-window-task-parameters :key
                              maintenance-window-task-parameter-name :value
                              maintenance-window-task-parameter-value-expression)

(smithy/sdk/shapes:define-list maintenance-window-task-parameters-list :member
                               maintenance-window-task-parameters)

(smithy/sdk/shapes:define-type maintenance-window-task-priority
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type maintenance-window-task-target-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum maintenance-window-task-type
    common-lisp:nil
  (:run-command "RUN_COMMAND")
  (:automation "AUTOMATION")
  (:step-functions "STEP_FUNCTIONS")
  (:lambda "LAMBDA"))

(smithy/sdk/shapes:define-type maintenance-window-timezone
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list maintenance-windows-for-target-list :member
                               maintenance-window-identity-for-target)

(smithy/sdk/shapes:define-error malformed-resource-policy-document-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "MalformedResourcePolicyDocumentException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type managed-instance-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum managed-status
    common-lisp:nil
  (:all "All")
  (:managed "Managed")
  (:unmanaged "Unmanaged"))

(smithy/sdk/shapes:define-type max-concurrency smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error max-document-size-exceeded common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "MaxDocumentSizeExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-type max-errors smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results-ec2compatible
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-session-duration
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type metadata-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list metadata-keys-to-delete-list :member
                               metadata-key)

(smithy/sdk/shapes:define-map metadata-map :key metadata-key :value
                              metadata-value)

(smithy/sdk/shapes:define-structure metadata-value common-lisp:nil
                                    ((value :target-type metadata-value-string
                                      :member-name "Value"))
                                    (:shape-name "MetadataValue"))

(smithy/sdk/shapes:define-type metadata-value-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input modify-document-permission-request
                                common-lisp:nil
                                ((name :target-type document-name :required
                                  common-lisp:t :member-name "Name")
                                 (permission-type :target-type
                                  document-permission-type :required
                                  common-lisp:t :member-name "PermissionType")
                                 (account-ids-to-add :target-type
                                  account-id-list :member-name
                                  "AccountIdsToAdd")
                                 (account-ids-to-remove :target-type
                                  account-id-list :member-name
                                  "AccountIdsToRemove")
                                 (shared-document-version :target-type
                                  shared-document-version :member-name
                                  "SharedDocumentVersion"))
                                (:shape-name "ModifyDocumentPermissionRequest"))

(smithy/sdk/shapes:define-output modify-document-permission-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "ModifyDocumentPermissionResponse"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure node common-lisp:nil
                                    ((capture-time :target-type
                                      node-capture-time :member-name
                                      "CaptureTime")
                                     (id :target-type node-id :member-name
                                      "Id")
                                     (owner :target-type node-owner-info
                                      :member-name "Owner")
                                     (region :target-type node-region
                                      :member-name "Region")
                                     (node-type :target-type node-type
                                      :member-name "NodeType"))
                                    (:shape-name "Node"))

(smithy/sdk/shapes:define-type node-account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure node-aggregator common-lisp:nil
                                    ((aggregator-type :target-type
                                      node-aggregator-type :required
                                      common-lisp:t :member-name
                                      "AggregatorType")
                                     (type-name :target-type node-type-name
                                      :required common-lisp:t :member-name
                                      "TypeName")
                                     (attribute-name :target-type
                                      node-attribute-name :required
                                      common-lisp:t :member-name
                                      "AttributeName")
                                     (aggregators :target-type
                                      node-aggregator-list :member-name
                                      "Aggregators"))
                                    (:shape-name "NodeAggregator"))

(smithy/sdk/shapes:define-list node-aggregator-list :member
                               (node-aggregator :xml-name "NodeAggregator"))

(smithy/sdk/shapes:define-enum node-aggregator-type
    common-lisp:nil
  (:count "Count"))

(smithy/sdk/shapes:define-enum node-attribute-name
    common-lisp:nil
  (:agent-version "AgentVersion")
  (:platform-name "PlatformName")
  (:platform-type "PlatformType")
  (:platform-version "PlatformVersion")
  (:region "Region")
  (:resource-type "ResourceType"))

(smithy/sdk/shapes:define-type node-capture-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure node-filter common-lisp:nil
                                    ((key :target-type node-filter-key
                                      :required common-lisp:t :member-name
                                      "Key")
                                     (values :target-type
                                      node-filter-value-list :required
                                      common-lisp:t :member-name "Values")
                                     (type :target-type
                                      node-filter-operator-type :member-name
                                      "Type"))
                                    (:shape-name "NodeFilter"))

(smithy/sdk/shapes:define-enum node-filter-key
    common-lisp:nil
  (:agent-type "AgentType")
  (:agent-version "AgentVersion")
  (:computer-name "ComputerName")
  (:instance-id "InstanceId")
  (:instance-status "InstanceStatus")
  (:ip-address "IpAddress")
  (:managed-status "ManagedStatus")
  (:platform-name "PlatformName")
  (:platform-type "PlatformType")
  (:platform-version "PlatformVersion")
  (:resource-type "ResourceType")
  (:organizational-unit-id "OrganizationalUnitId")
  (:organizational-unit-path "OrganizationalUnitPath")
  (:region "Region")
  (:account-id "AccountId"))

(smithy/sdk/shapes:define-list node-filter-list :member
                               (node-filter :xml-name "NodeFilter"))

(smithy/sdk/shapes:define-enum node-filter-operator-type
    common-lisp:nil
  (:equal "Equal")
  (:not-equal "NotEqual")
  (:begin-with "BeginWith"))

(smithy/sdk/shapes:define-type node-filter-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list node-filter-value-list :member
                               (node-filter-value :xml-name "FilterValue"))

(smithy/sdk/shapes:define-type node-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list node-list :member node)

(smithy/sdk/shapes:define-type node-organizational-unit-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type node-organizational-unit-path
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure node-owner-info common-lisp:nil
                                    ((account-id :target-type node-account-id
                                      :member-name "AccountId")
                                     (organizational-unit-id :target-type
                                      node-organizational-unit-id :member-name
                                      "OrganizationalUnitId")
                                     (organizational-unit-path :target-type
                                      node-organizational-unit-path
                                      :member-name "OrganizationalUnitPath"))
                                    (:shape-name "NodeOwnerInfo"))

(smithy/sdk/shapes:define-type node-region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map node-summary :key attribute-name :value
                              attribute-value)

(smithy/sdk/shapes:define-list node-summary-list :member node-summary)

(smithy/sdk/shapes:define-union node-type common-lisp:nil
                                ((instance :target-type instance-info
                                  :member-name "Instance"))
                                (:shape-name "NodeType"))

(smithy/sdk/shapes:define-enum node-type-name
    common-lisp:nil
  (:instance "Instance"))

(smithy/sdk/shapes:define-structure non-compliant-summary common-lisp:nil
                                    ((non-compliant-count :target-type
                                      compliance-summary-count :member-name
                                      "NonCompliantCount")
                                     (severity-summary :target-type
                                      severity-summary :member-name
                                      "SeveritySummary"))
                                    (:shape-name "NonCompliantSummary"))

(smithy/sdk/shapes:define-map normal-string-map :key string :value string)

(smithy/sdk/shapes:define-type notification-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure notification-config common-lisp:nil
                                    ((notification-arn :target-type
                                      notification-arn :member-name
                                      "NotificationArn")
                                     (notification-events :target-type
                                      notification-event-list :member-name
                                      "NotificationEvents")
                                     (notification-type :target-type
                                      notification-type :member-name
                                      "NotificationType"))
                                    (:shape-name "NotificationConfig"))

(smithy/sdk/shapes:define-enum notification-event
    common-lisp:nil
  (:all "All")
  (:in-progress "InProgress")
  (:success "Success")
  (:timed-out "TimedOut")
  (:cancelled "Cancelled")
  (:failed "Failed"))

(smithy/sdk/shapes:define-list notification-event-list :member
                               notification-event)

(smithy/sdk/shapes:define-enum notification-type
    common-lisp:nil
  (:command "Command")
  (:invocation "Invocation"))

(smithy/sdk/shapes:define-enum operating-system
    common-lisp:nil
  (:windows "WINDOWS")
  (:amazon-linux "AMAZON_LINUX")
  (:amazon-linux2 "AMAZON_LINUX_2")
  (:amazon-linux2022 "AMAZON_LINUX_2022")
  (:ubuntu "UBUNTU")
  (:redhat-enterprise-linux "REDHAT_ENTERPRISE_LINUX")
  (:suse "SUSE")
  (:cent-os "CENTOS")
  (:oracle-linux "ORACLE_LINUX")
  (:debian "DEBIAN")
  (:mac-os "MACOS")
  (:raspbian "RASPBIAN")
  (:rocky-linux "ROCKY_LINUX")
  (:alma-linux "ALMA_LINUX")
  (:amazon-linux2023 "AMAZON_LINUX_2023"))

(smithy/sdk/shapes:define-structure ops-aggregator common-lisp:nil
                                    ((aggregator-type :target-type
                                      ops-aggregator-type :member-name
                                      "AggregatorType")
                                     (type-name :target-type ops-data-type-name
                                      :member-name "TypeName")
                                     (attribute-name :target-type
                                      ops-data-attribute-name :member-name
                                      "AttributeName")
                                     (values :target-type
                                      ops-aggregator-value-map :member-name
                                      "Values")
                                     (filters :target-type ops-filter-list
                                      :member-name "Filters")
                                     (aggregators :target-type
                                      ops-aggregator-list :member-name
                                      "Aggregators"))
                                    (:shape-name "OpsAggregator"))

(smithy/sdk/shapes:define-list ops-aggregator-list :member
                               (ops-aggregator :xml-name "Aggregator"))

(smithy/sdk/shapes:define-type ops-aggregator-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ops-aggregator-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ops-aggregator-value-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map ops-aggregator-value-map :key
                              ops-aggregator-value-key :value
                              ops-aggregator-value)

(smithy/sdk/shapes:define-type ops-data-attribute-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ops-data-type-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ops-entity common-lisp:nil
                                    ((id :target-type ops-entity-id
                                      :member-name "Id")
                                     (data :target-type ops-entity-item-map
                                      :member-name "Data"))
                                    (:shape-name "OpsEntity"))

(smithy/sdk/shapes:define-type ops-entity-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ops-entity-item common-lisp:nil
                                    ((capture-time :target-type
                                      ops-entity-item-capture-time :member-name
                                      "CaptureTime")
                                     (content :target-type
                                      ops-entity-item-entry-list :member-name
                                      "Content"))
                                    (:shape-name "OpsEntityItem"))

(smithy/sdk/shapes:define-type ops-entity-item-capture-time
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map ops-entity-item-entry :key attribute-name :value
                              attribute-value)

(smithy/sdk/shapes:define-list ops-entity-item-entry-list :member
                               ops-entity-item-entry)

(smithy/sdk/shapes:define-type ops-entity-item-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map ops-entity-item-map :key ops-entity-item-key
                              :value ops-entity-item)

(smithy/sdk/shapes:define-list ops-entity-list :member
                               (ops-entity :xml-name "Entity"))

(smithy/sdk/shapes:define-structure ops-filter common-lisp:nil
                                    ((key :target-type ops-filter-key :required
                                      common-lisp:t :member-name "Key")
                                     (values :target-type ops-filter-value-list
                                      :required common-lisp:t :member-name
                                      "Values")
                                     (type :target-type
                                      ops-filter-operator-type :member-name
                                      "Type"))
                                    (:shape-name "OpsFilter"))

(smithy/sdk/shapes:define-type ops-filter-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ops-filter-list :member
                               (ops-filter :xml-name "OpsFilter"))

(smithy/sdk/shapes:define-enum ops-filter-operator-type
    common-lisp:nil
  (:equal "Equal")
  (:not-equal "NotEqual")
  (:begin-with "BeginWith")
  (:less-than "LessThan")
  (:greater-than "GreaterThan")
  (:exists "Exists"))

(smithy/sdk/shapes:define-type ops-filter-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ops-filter-value-list :member
                               (ops-filter-value :xml-name "FilterValue"))

(smithy/sdk/shapes:define-structure ops-item common-lisp:nil
                                    ((created-by :target-type string
                                      :member-name "CreatedBy")
                                     (ops-item-type :target-type ops-item-type
                                      :member-name "OpsItemType")
                                     (created-time :target-type date-time
                                      :member-name "CreatedTime")
                                     (description :target-type
                                      ops-item-description :member-name
                                      "Description")
                                     (last-modified-by :target-type string
                                      :member-name "LastModifiedBy")
                                     (last-modified-time :target-type date-time
                                      :member-name "LastModifiedTime")
                                     (notifications :target-type
                                      ops-item-notifications :member-name
                                      "Notifications")
                                     (priority :target-type ops-item-priority
                                      :member-name "Priority")
                                     (related-ops-items :target-type
                                      related-ops-items :member-name
                                      "RelatedOpsItems")
                                     (status :target-type ops-item-status
                                      :member-name "Status")
                                     (ops-item-id :target-type ops-item-id
                                      :member-name "OpsItemId")
                                     (version :target-type string :member-name
                                      "Version")
                                     (title :target-type ops-item-title
                                      :member-name "Title")
                                     (source :target-type ops-item-source
                                      :member-name "Source")
                                     (operational-data :target-type
                                      ops-item-operational-data :member-name
                                      "OperationalData")
                                     (category :target-type ops-item-category
                                      :member-name "Category")
                                     (severity :target-type ops-item-severity
                                      :member-name "Severity")
                                     (actual-start-time :target-type date-time
                                      :member-name "ActualStartTime")
                                     (actual-end-time :target-type date-time
                                      :member-name "ActualEndTime")
                                     (planned-start-time :target-type date-time
                                      :member-name "PlannedStartTime")
                                     (planned-end-time :target-type date-time
                                      :member-name "PlannedEndTime")
                                     (ops-item-arn :target-type ops-item-arn
                                      :member-name "OpsItemArn"))
                                    (:shape-name "OpsItem"))

(smithy/sdk/shapes:define-error ops-item-access-denied-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "OpsItemAccessDeniedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type ops-item-account-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error ops-item-already-exists-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (ops-item-id :target-type string :member-name
                                  "OpsItemId"))
                                (:shape-name "OpsItemAlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type ops-item-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ops-item-category smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error ops-item-conflict-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "OpsItemConflictException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type ops-item-data-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum ops-item-data-type
    common-lisp:nil
  (:searchable-string "SearchableString")
  (:string "String"))

(smithy/sdk/shapes:define-structure ops-item-data-value common-lisp:nil
                                    ((value :target-type
                                      ops-item-data-value-string :member-name
                                      "Value")
                                     (type :target-type ops-item-data-type
                                      :member-name "Type"))
                                    (:shape-name "OpsItemDataValue"))

(smithy/sdk/shapes:define-type ops-item-data-value-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ops-item-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ops-item-event-filter common-lisp:nil
                                    ((key :target-type
                                      ops-item-event-filter-key :required
                                      common-lisp:t :member-name "Key")
                                     (values :target-type
                                      ops-item-event-filter-values :required
                                      common-lisp:t :member-name "Values")
                                     (operator :target-type
                                      ops-item-event-filter-operator :required
                                      common-lisp:t :member-name "Operator"))
                                    (:shape-name "OpsItemEventFilter"))

(smithy/sdk/shapes:define-enum ops-item-event-filter-key
    common-lisp:nil
  (:opsitem-id "OpsItemId"))

(smithy/sdk/shapes:define-enum ops-item-event-filter-operator
    common-lisp:nil
  (:equal "Equal"))

(smithy/sdk/shapes:define-type ops-item-event-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ops-item-event-filter-values :member
                               ops-item-event-filter-value)

(smithy/sdk/shapes:define-list ops-item-event-filters :member
                               ops-item-event-filter)

(smithy/sdk/shapes:define-type ops-item-event-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list ops-item-event-summaries :member
                               ops-item-event-summary)

(smithy/sdk/shapes:define-structure ops-item-event-summary common-lisp:nil
                                    ((ops-item-id :target-type string
                                      :member-name "OpsItemId")
                                     (event-id :target-type string :member-name
                                      "EventId")
                                     (source :target-type string :member-name
                                      "Source")
                                     (detail-type :target-type string
                                      :member-name "DetailType")
                                     (detail :target-type string :member-name
                                      "Detail")
                                     (created-by :target-type ops-item-identity
                                      :member-name "CreatedBy")
                                     (created-time :target-type date-time
                                      :member-name "CreatedTime"))
                                    (:shape-name "OpsItemEventSummary"))

(smithy/sdk/shapes:define-structure ops-item-filter common-lisp:nil
                                    ((key :target-type ops-item-filter-key
                                      :required common-lisp:t :member-name
                                      "Key")
                                     (values :target-type
                                      ops-item-filter-values :required
                                      common-lisp:t :member-name "Values")
                                     (operator :target-type
                                      ops-item-filter-operator :required
                                      common-lisp:t :member-name "Operator"))
                                    (:shape-name "OpsItemFilter"))

(smithy/sdk/shapes:define-enum ops-item-filter-key
    common-lisp:nil
  (:status "Status")
  (:created-by "CreatedBy")
  (:source "Source")
  (:priority "Priority")
  (:title "Title")
  (:opsitem-id "OpsItemId")
  (:created-time "CreatedTime")
  (:last-modified-time "LastModifiedTime")
  (:actual-start-time "ActualStartTime")
  (:actual-end-time "ActualEndTime")
  (:planned-start-time "PlannedStartTime")
  (:planned-end-time "PlannedEndTime")
  (:operational-data "OperationalData")
  (:operational-data-key "OperationalDataKey")
  (:operational-data-value "OperationalDataValue")
  (:resource-id "ResourceId")
  (:automation-id "AutomationId")
  (:category "Category")
  (:severity "Severity")
  (:opsitem-type "OpsItemType")
  (:access-request-requester-arn "AccessRequestByRequesterArn")
  (:access-request-requester-id "AccessRequestByRequesterId")
  (:access-request-approver-arn "AccessRequestByApproverArn")
  (:access-request-approver-id "AccessRequestByApproverId")
  (:access-request-source-account-id "AccessRequestBySourceAccountId")
  (:access-request-source-ops-item-id "AccessRequestBySourceOpsItemId")
  (:access-request-source-region "AccessRequestBySourceRegion")
  (:access-request-is-replica "AccessRequestByIsReplica")
  (:access-request-target-resource-id "AccessRequestByTargetResourceId")
  (:change-request-requester-arn "ChangeRequestByRequesterArn")
  (:change-request-requester-name "ChangeRequestByRequesterName")
  (:change-request-approver-arn "ChangeRequestByApproverArn")
  (:change-request-approver-name "ChangeRequestByApproverName")
  (:change-request-template "ChangeRequestByTemplate")
  (:change-request-targets-resource-group "ChangeRequestByTargetsResourceGroup")
  (:insight-type "InsightByType")
  (:account-id "AccountId"))

(smithy/sdk/shapes:define-enum ops-item-filter-operator
    common-lisp:nil
  (:equal "Equal")
  (:contains "Contains")
  (:greater-than "GreaterThan")
  (:less-than "LessThan"))

(smithy/sdk/shapes:define-type ops-item-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ops-item-filter-values :member
                               ops-item-filter-value)

(smithy/sdk/shapes:define-list ops-item-filters :member ops-item-filter)

(smithy/sdk/shapes:define-type ops-item-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ops-item-identity common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn"))
                                    (:shape-name "OpsItemIdentity"))

(smithy/sdk/shapes:define-error ops-item-invalid-parameter-exception
                                common-lisp:nil
                                ((parameter-names :target-type
                                  ops-item-parameter-names-list :member-name
                                  "ParameterNames")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "OpsItemInvalidParameterException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error ops-item-limit-exceeded-exception
                                common-lisp:nil
                                ((resource-types :target-type
                                  ops-item-parameter-names-list :member-name
                                  "ResourceTypes")
                                 (limit :target-type integer :member-name
                                  "Limit")
                                 (limit-type :target-type string :member-name
                                  "LimitType")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "OpsItemLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type ops-item-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error ops-item-not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "OpsItemNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure ops-item-notification common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn"))
                                    (:shape-name "OpsItemNotification"))

(smithy/sdk/shapes:define-list ops-item-notifications :member
                               ops-item-notification)

(smithy/sdk/shapes:define-map ops-item-operational-data :key ops-item-data-key
                              :value ops-item-data-value)

(smithy/sdk/shapes:define-list ops-item-ops-data-keys-list :member string)

(smithy/sdk/shapes:define-list ops-item-parameter-names-list :member string)

(smithy/sdk/shapes:define-type ops-item-priority
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error ops-item-related-item-already-exists-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (resource-uri :target-type
                                  ops-item-related-item-association-resource-uri
                                  :member-name "ResourceUri")
                                 (ops-item-id :target-type ops-item-id
                                  :member-name "OpsItemId"))
                                (:shape-name
                                 "OpsItemRelatedItemAlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type ops-item-related-item-association-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error
 ops-item-related-item-association-not-found-exception common-lisp:nil
 ((message :target-type string :member-name "Message"))
 (:shape-name "OpsItemRelatedItemAssociationNotFoundException")
 (:error-code 400))

(smithy/sdk/shapes:define-type ops-item-related-item-association-resource-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ops-item-related-item-association-resource-uri
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ops-item-related-item-association-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ops-item-related-item-summaries :member
                               ops-item-related-item-summary)

(smithy/sdk/shapes:define-structure ops-item-related-item-summary
                                    common-lisp:nil
                                    ((ops-item-id :target-type ops-item-id
                                      :member-name "OpsItemId")
                                     (association-id :target-type
                                      ops-item-related-item-association-id
                                      :member-name "AssociationId")
                                     (resource-type :target-type
                                      ops-item-related-item-association-resource-type
                                      :member-name "ResourceType")
                                     (association-type :target-type
                                      ops-item-related-item-association-type
                                      :member-name "AssociationType")
                                     (resource-uri :target-type
                                      ops-item-related-item-association-resource-uri
                                      :member-name "ResourceUri")
                                     (created-by :target-type ops-item-identity
                                      :member-name "CreatedBy")
                                     (created-time :target-type date-time
                                      :member-name "CreatedTime")
                                     (last-modified-by :target-type
                                      ops-item-identity :member-name
                                      "LastModifiedBy")
                                     (last-modified-time :target-type date-time
                                      :member-name "LastModifiedTime"))
                                    (:shape-name "OpsItemRelatedItemSummary"))

(smithy/sdk/shapes:define-structure ops-item-related-items-filter
                                    common-lisp:nil
                                    ((key :target-type
                                      ops-item-related-items-filter-key
                                      :required common-lisp:t :member-name
                                      "Key")
                                     (values :target-type
                                      ops-item-related-items-filter-values
                                      :required common-lisp:t :member-name
                                      "Values")
                                     (operator :target-type
                                      ops-item-related-items-filter-operator
                                      :required common-lisp:t :member-name
                                      "Operator"))
                                    (:shape-name "OpsItemRelatedItemsFilter"))

(smithy/sdk/shapes:define-enum ops-item-related-items-filter-key
    common-lisp:nil
  (:resource-type "ResourceType")
  (:association-id "AssociationId")
  (:resource-uri "ResourceUri"))

(smithy/sdk/shapes:define-enum ops-item-related-items-filter-operator
    common-lisp:nil
  (:equal "Equal"))

(smithy/sdk/shapes:define-type ops-item-related-items-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ops-item-related-items-filter-values :member
                               ops-item-related-items-filter-value)

(smithy/sdk/shapes:define-list ops-item-related-items-filters :member
                               ops-item-related-items-filter)

(smithy/sdk/shapes:define-type ops-item-related-items-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type ops-item-severity smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ops-item-source smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum ops-item-status
    common-lisp:nil
  (:open "Open")
  (:in-progress "InProgress")
  (:resolved "Resolved")
  (:pending "Pending")
  (:timed-out "TimedOut")
  (:cancelling "Cancelling")
  (:cancelled "Cancelled")
  (:failed "Failed")
  (:completed-with-success "CompletedWithSuccess")
  (:completed-with-failure "CompletedWithFailure")
  (:scheduled "Scheduled")
  (:runbook-in-progress "RunbookInProgress")
  (:pending-change-calendar-override "PendingChangeCalendarOverride")
  (:change-calendar-override-approved "ChangeCalendarOverrideApproved")
  (:change-calendar-override-rejected "ChangeCalendarOverrideRejected")
  (:pending-approval "PendingApproval")
  (:approved "Approved")
  (:revoked "Revoked")
  (:rejected "Rejected")
  (:closed "Closed"))

(smithy/sdk/shapes:define-list ops-item-summaries :member ops-item-summary)

(smithy/sdk/shapes:define-structure ops-item-summary common-lisp:nil
                                    ((created-by :target-type string
                                      :member-name "CreatedBy")
                                     (created-time :target-type date-time
                                      :member-name "CreatedTime")
                                     (last-modified-by :target-type string
                                      :member-name "LastModifiedBy")
                                     (last-modified-time :target-type date-time
                                      :member-name "LastModifiedTime")
                                     (priority :target-type ops-item-priority
                                      :member-name "Priority")
                                     (source :target-type ops-item-source
                                      :member-name "Source")
                                     (status :target-type ops-item-status
                                      :member-name "Status")
                                     (ops-item-id :target-type ops-item-id
                                      :member-name "OpsItemId")
                                     (title :target-type ops-item-title
                                      :member-name "Title")
                                     (operational-data :target-type
                                      ops-item-operational-data :member-name
                                      "OperationalData")
                                     (category :target-type ops-item-category
                                      :member-name "Category")
                                     (severity :target-type ops-item-severity
                                      :member-name "Severity")
                                     (ops-item-type :target-type ops-item-type
                                      :member-name "OpsItemType")
                                     (actual-start-time :target-type date-time
                                      :member-name "ActualStartTime")
                                     (actual-end-time :target-type date-time
                                      :member-name "ActualEndTime")
                                     (planned-start-time :target-type date-time
                                      :member-name "PlannedStartTime")
                                     (planned-end-time :target-type date-time
                                      :member-name "PlannedEndTime"))
                                    (:shape-name "OpsItemSummary"))

(smithy/sdk/shapes:define-type ops-item-title smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ops-item-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ops-metadata common-lisp:nil
                                    ((resource-id :target-type
                                      ops-metadata-resource-id :member-name
                                      "ResourceId")
                                     (ops-metadata-arn :target-type
                                      ops-metadata-arn :member-name
                                      "OpsMetadataArn")
                                     (last-modified-date :target-type date-time
                                      :member-name "LastModifiedDate")
                                     (last-modified-user :target-type string
                                      :member-name "LastModifiedUser")
                                     (creation-date :target-type date-time
                                      :member-name "CreationDate"))
                                    (:shape-name "OpsMetadata"))

(smithy/sdk/shapes:define-error ops-metadata-already-exists-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name
                                 "OpsMetadataAlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type ops-metadata-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ops-metadata-filter common-lisp:nil
                                    ((key :target-type ops-metadata-filter-key
                                      :required common-lisp:t :member-name
                                      "Key")
                                     (values :target-type
                                      ops-metadata-filter-value-list :required
                                      common-lisp:t :member-name "Values"))
                                    (:shape-name "OpsMetadataFilter"))

(smithy/sdk/shapes:define-type ops-metadata-filter-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ops-metadata-filter-list :member
                               ops-metadata-filter)

(smithy/sdk/shapes:define-type ops-metadata-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ops-metadata-filter-value-list :member
                               ops-metadata-filter-value)

(smithy/sdk/shapes:define-error ops-metadata-invalid-argument-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name
                                 "OpsMetadataInvalidArgumentException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error ops-metadata-key-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name
                                 "OpsMetadataKeyLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error ops-metadata-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name
                                 "OpsMetadataLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list ops-metadata-list :member ops-metadata)

(smithy/sdk/shapes:define-error ops-metadata-not-found-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "OpsMetadataNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type ops-metadata-resource-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error ops-metadata-too-many-updates-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name
                                 "OpsMetadataTooManyUpdatesException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure ops-result-attribute common-lisp:nil
                                    ((type-name :target-type ops-data-type-name
                                      :required common-lisp:t :member-name
                                      "TypeName"))
                                    (:shape-name "OpsResultAttribute"))

(smithy/sdk/shapes:define-list ops-result-attribute-list :member
                               (ops-result-attribute :xml-name
                                "OpsResultAttribute"))

(smithy/sdk/shapes:define-structure output-source common-lisp:nil
                                    ((output-source-id :target-type
                                      output-source-id :member-name
                                      "OutputSourceId")
                                     (output-source-type :target-type
                                      output-source-type :member-name
                                      "OutputSourceType"))
                                    (:shape-name "OutputSource"))

(smithy/sdk/shapes:define-type output-source-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type output-source-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type owner-information smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type psparameter-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type psparameter-selector
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type psparameter-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type psparameter-version smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure parameter common-lisp:nil
                                    ((name :target-type psparameter-name
                                      :member-name "Name")
                                     (type :target-type parameter-type
                                      :member-name "Type")
                                     (value :target-type psparameter-value
                                      :member-name "Value")
                                     (version :target-type psparameter-version
                                      :member-name "Version")
                                     (selector :target-type
                                      psparameter-selector :member-name
                                      "Selector")
                                     (source-result :target-type string
                                      :member-name "SourceResult")
                                     (last-modified-date :target-type date-time
                                      :member-name "LastModifiedDate")
                                     (arn :target-type string :member-name
                                      "ARN")
                                     (data-type :target-type
                                      parameter-data-type :member-name
                                      "DataType"))
                                    (:shape-name "Parameter"))

(smithy/sdk/shapes:define-error parameter-already-exists common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ParameterAlreadyExists")
                                (:error-code 400))

(smithy/sdk/shapes:define-type parameter-data-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type parameter-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure parameter-history common-lisp:nil
                                    ((name :target-type psparameter-name
                                      :member-name "Name")
                                     (type :target-type parameter-type
                                      :member-name "Type")
                                     (key-id :target-type parameter-key-id
                                      :member-name "KeyId")
                                     (last-modified-date :target-type date-time
                                      :member-name "LastModifiedDate")
                                     (last-modified-user :target-type string
                                      :member-name "LastModifiedUser")
                                     (description :target-type
                                      parameter-description :member-name
                                      "Description")
                                     (value :target-type psparameter-value
                                      :member-name "Value")
                                     (allowed-pattern :target-type
                                      allowed-pattern :member-name
                                      "AllowedPattern")
                                     (version :target-type psparameter-version
                                      :member-name "Version")
                                     (labels :target-type parameter-label-list
                                      :member-name "Labels")
                                     (tier :target-type parameter-tier
                                      :member-name "Tier")
                                     (policies :target-type
                                      parameter-policy-list :member-name
                                      "Policies")
                                     (data-type :target-type
                                      parameter-data-type :member-name
                                      "DataType"))
                                    (:shape-name "ParameterHistory"))

(smithy/sdk/shapes:define-list parameter-history-list :member parameter-history)

(smithy/sdk/shapes:define-structure parameter-inline-policy common-lisp:nil
                                    ((policy-text :target-type string
                                      :member-name "PolicyText")
                                     (policy-type :target-type string
                                      :member-name "PolicyType")
                                     (policy-status :target-type string
                                      :member-name "PolicyStatus"))
                                    (:shape-name "ParameterInlinePolicy"))

(smithy/sdk/shapes:define-type parameter-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type parameter-label smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list parameter-label-list :member parameter-label)

(smithy/sdk/shapes:define-error parameter-limit-exceeded common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ParameterLimitExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-list parameter-list :member parameter)

(smithy/sdk/shapes:define-error parameter-max-version-limit-exceeded
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name
                                 "ParameterMaxVersionLimitExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure parameter-metadata common-lisp:nil
                                    ((name :target-type psparameter-name
                                      :member-name "Name")
                                     (arn :target-type string :member-name
                                      "ARN")
                                     (type :target-type parameter-type
                                      :member-name "Type")
                                     (key-id :target-type parameter-key-id
                                      :member-name "KeyId")
                                     (last-modified-date :target-type date-time
                                      :member-name "LastModifiedDate")
                                     (last-modified-user :target-type string
                                      :member-name "LastModifiedUser")
                                     (description :target-type
                                      parameter-description :member-name
                                      "Description")
                                     (allowed-pattern :target-type
                                      allowed-pattern :member-name
                                      "AllowedPattern")
                                     (version :target-type psparameter-version
                                      :member-name "Version")
                                     (tier :target-type parameter-tier
                                      :member-name "Tier")
                                     (policies :target-type
                                      parameter-policy-list :member-name
                                      "Policies")
                                     (data-type :target-type
                                      parameter-data-type :member-name
                                      "DataType"))
                                    (:shape-name "ParameterMetadata"))

(smithy/sdk/shapes:define-list parameter-metadata-list :member
                               parameter-metadata)

(smithy/sdk/shapes:define-type parameter-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list parameter-name-list :member psparameter-name)

(smithy/sdk/shapes:define-error parameter-not-found common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ParameterNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-error parameter-pattern-mismatch-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name
                                 "ParameterPatternMismatchException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type parameter-policies
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list parameter-policy-list :member
                               parameter-inline-policy)

(smithy/sdk/shapes:define-structure parameter-string-filter common-lisp:nil
                                    ((key :target-type
                                      parameter-string-filter-key :required
                                      common-lisp:t :member-name "Key")
                                     (option :target-type
                                      parameter-string-query-option
                                      :member-name "Option")
                                     (values :target-type
                                      parameter-string-filter-value-list
                                      :member-name "Values"))
                                    (:shape-name "ParameterStringFilter"))

(smithy/sdk/shapes:define-type parameter-string-filter-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list parameter-string-filter-list :member
                               parameter-string-filter)

(smithy/sdk/shapes:define-type parameter-string-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list parameter-string-filter-value-list :member
                               parameter-string-filter-value)

(smithy/sdk/shapes:define-type parameter-string-query-option
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum parameter-tier
    common-lisp:nil
  (:standard "Standard")
  (:advanced "Advanced")
  (:intelligent-tiering "Intelligent-Tiering"))

(smithy/sdk/shapes:define-enum parameter-type
    common-lisp:nil
  (:string "String")
  (:string-list "StringList")
  (:secure-string "SecureString"))

(smithy/sdk/shapes:define-type parameter-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list parameter-value-list :member parameter-value)

(smithy/sdk/shapes:define-error parameter-version-label-limit-exceeded
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name
                                 "ParameterVersionLabelLimitExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-error parameter-version-not-found common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ParameterVersionNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-map parameters :key parameter-name :value
                              parameter-value-list)

(smithy/sdk/shapes:define-structure parameters-filter common-lisp:nil
                                    ((key :target-type parameters-filter-key
                                      :required common-lisp:t :member-name
                                      "Key")
                                     (values :target-type
                                      parameters-filter-value-list :required
                                      common-lisp:t :member-name "Values"))
                                    (:shape-name "ParametersFilter"))

(smithy/sdk/shapes:define-enum parameters-filter-key
    common-lisp:nil
  (:name "Name")
  (:type "Type")
  (:key-id "KeyId"))

(smithy/sdk/shapes:define-list parameters-filter-list :member parameters-filter)

(smithy/sdk/shapes:define-type parameters-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list parameters-filter-value-list :member
                               parameters-filter-value)

(smithy/sdk/shapes:define-structure parent-step-details common-lisp:nil
                                    ((step-execution-id :target-type string
                                      :member-name "StepExecutionId")
                                     (step-name :target-type string
                                      :member-name "StepName")
                                     (action :target-type
                                      automation-action-name :member-name
                                      "Action")
                                     (iteration :target-type integer
                                      :member-name "Iteration")
                                     (iterator-value :target-type string
                                      :member-name "IteratorValue"))
                                    (:shape-name "ParentStepDetails"))

(smithy/sdk/shapes:define-structure patch common-lisp:nil
                                    ((id :target-type patch-id :member-name
                                      "Id")
                                     (release-date :target-type date-time
                                      :member-name "ReleaseDate")
                                     (title :target-type patch-title
                                      :member-name "Title")
                                     (description :target-type
                                      patch-description :member-name
                                      "Description")
                                     (content-url :target-type
                                      patch-content-url :member-name
                                      "ContentUrl")
                                     (vendor :target-type patch-vendor
                                      :member-name "Vendor")
                                     (product-family :target-type
                                      patch-product-family :member-name
                                      "ProductFamily")
                                     (product :target-type patch-product
                                      :member-name "Product")
                                     (classification :target-type
                                      patch-classification :member-name
                                      "Classification")
                                     (msrc-severity :target-type
                                      patch-msrc-severity :member-name
                                      "MsrcSeverity")
                                     (kb-number :target-type patch-kb-number
                                      :member-name "KbNumber")
                                     (msrc-number :target-type
                                      patch-msrc-number :member-name
                                      "MsrcNumber")
                                     (language :target-type patch-language
                                      :member-name "Language")
                                     (advisory-ids :target-type
                                      patch-advisory-id-list :member-name
                                      "AdvisoryIds")
                                     (bugzilla-ids :target-type
                                      patch-bugzilla-id-list :member-name
                                      "BugzillaIds")
                                     (cveids :target-type patch-cveid-list
                                      :member-name "CVEIds")
                                     (name :target-type patch-name :member-name
                                      "Name")
                                     (epoch :target-type patch-epoch
                                      :member-name "Epoch")
                                     (version :target-type patch-version
                                      :member-name "Version")
                                     (release :target-type patch-release
                                      :member-name "Release")
                                     (arch :target-type patch-arch :member-name
                                      "Arch")
                                     (severity :target-type patch-severity
                                      :member-name "Severity")
                                     (repository :target-type patch-repository
                                      :member-name "Repository"))
                                    (:shape-name "Patch"))

(smithy/sdk/shapes:define-enum patch-action
    common-lisp:nil
  (:allow-as-dependency "ALLOW_AS_DEPENDENCY")
  (:block "BLOCK"))

(smithy/sdk/shapes:define-type patch-advisory-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list patch-advisory-id-list :member patch-advisory-id)

(smithy/sdk/shapes:define-type patch-arch smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type patch-available-security-update-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure patch-baseline-identity common-lisp:nil
                                    ((baseline-id :target-type baseline-id
                                      :member-name "BaselineId")
                                     (baseline-name :target-type baseline-name
                                      :member-name "BaselineName")
                                     (operating-system :target-type
                                      operating-system :member-name
                                      "OperatingSystem")
                                     (baseline-description :target-type
                                      baseline-description :member-name
                                      "BaselineDescription")
                                     (default-baseline :target-type
                                      default-baseline :member-name
                                      "DefaultBaseline"))
                                    (:shape-name "PatchBaselineIdentity"))

(smithy/sdk/shapes:define-list patch-baseline-identity-list :member
                               patch-baseline-identity)

(smithy/sdk/shapes:define-type patch-baseline-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type patch-bugzilla-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list patch-bugzilla-id-list :member patch-bugzilla-id)

(smithy/sdk/shapes:define-type patch-cveid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list patch-cveid-list :member patch-cveid)

(smithy/sdk/shapes:define-type patch-cveids smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type patch-classification
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure patch-compliance-data common-lisp:nil
                                    ((title :target-type patch-title :required
                                      common-lisp:t :member-name "Title")
                                     (kbid :target-type patch-kb-number
                                      :required common-lisp:t :member-name
                                      "KBId")
                                     (classification :target-type
                                      patch-classification :required
                                      common-lisp:t :member-name
                                      "Classification")
                                     (severity :target-type patch-severity
                                      :required common-lisp:t :member-name
                                      "Severity")
                                     (state :target-type
                                      patch-compliance-data-state :required
                                      common-lisp:t :member-name "State")
                                     (installed-time :target-type date-time
                                      :required common-lisp:t :member-name
                                      "InstalledTime")
                                     (cveids :target-type patch-cveids
                                      :member-name "CVEIds"))
                                    (:shape-name "PatchComplianceData"))

(smithy/sdk/shapes:define-list patch-compliance-data-list :member
                               patch-compliance-data)

(smithy/sdk/shapes:define-enum patch-compliance-data-state
    common-lisp:nil
  (:installed "INSTALLED")
  (:installed-other "INSTALLED_OTHER")
  (:installed-pending-reboot "INSTALLED_PENDING_REBOOT")
  (:installed-rejected "INSTALLED_REJECTED")
  (:missing "MISSING")
  (:not-applicable "NOT_APPLICABLE")
  (:failed "FAILED")
  (:available-security-update "AVAILABLE_SECURITY_UPDATE"))

(smithy/sdk/shapes:define-enum patch-compliance-level
    common-lisp:nil
  (:critical "CRITICAL")
  (:high "HIGH")
  (:medium "MEDIUM")
  (:low "LOW")
  (:informational "INFORMATIONAL")
  (:unspecified "UNSPECIFIED"))

(smithy/sdk/shapes:define-type patch-compliance-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum patch-compliance-status
    common-lisp:nil
  (:compliant "COMPLIANT")
  (:non-compliant "NON_COMPLIANT"))

(smithy/sdk/shapes:define-type patch-content-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type patch-critical-non-compliant-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum patch-deployment-status
    common-lisp:nil
  (:approved "APPROVED")
  (:pending-approval "PENDING_APPROVAL")
  (:explicit-approved "EXPLICIT_APPROVED")
  (:explicit-rejected "EXPLICIT_REJECTED"))

(smithy/sdk/shapes:define-type patch-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type patch-epoch smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type patch-failed-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure patch-filter common-lisp:nil
                                    ((key :target-type patch-filter-key
                                      :required common-lisp:t :member-name
                                      "Key")
                                     (values :target-type
                                      patch-filter-value-list :required
                                      common-lisp:t :member-name "Values"))
                                    (:shape-name "PatchFilter"))

(smithy/sdk/shapes:define-structure patch-filter-group common-lisp:nil
                                    ((patch-filters :target-type
                                      patch-filter-list :required common-lisp:t
                                      :member-name "PatchFilters"))
                                    (:shape-name "PatchFilterGroup"))

(smithy/sdk/shapes:define-enum patch-filter-key
    common-lisp:nil
  (:arch "ARCH")
  (:advisory-id "ADVISORY_ID")
  (:bugzilla-id "BUGZILLA_ID")
  (:patch-set "PATCH_SET")
  (:product "PRODUCT")
  (:product-family "PRODUCT_FAMILY")
  (:classification "CLASSIFICATION")
  (:cveid "CVE_ID")
  (:epoch "EPOCH")
  (:msrc-severity "MSRC_SEVERITY")
  (:name "NAME")
  (:patch-id "PATCH_ID")
  (:section "SECTION")
  (:priority "PRIORITY")
  (:repository "REPOSITORY")
  (:release "RELEASE")
  (:severity "SEVERITY")
  (:security "SECURITY")
  (:version "VERSION"))

(smithy/sdk/shapes:define-list patch-filter-list :member patch-filter)

(smithy/sdk/shapes:define-type patch-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list patch-filter-value-list :member
                               patch-filter-value)

(smithy/sdk/shapes:define-type patch-group smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list patch-group-list :member patch-group)

(smithy/sdk/shapes:define-structure patch-group-patch-baseline-mapping
                                    common-lisp:nil
                                    ((patch-group :target-type patch-group
                                      :member-name "PatchGroup")
                                     (baseline-identity :target-type
                                      patch-baseline-identity :member-name
                                      "BaselineIdentity"))
                                    (:shape-name
                                     "PatchGroupPatchBaselineMapping"))

(smithy/sdk/shapes:define-list patch-group-patch-baseline-mapping-list :member
                               patch-group-patch-baseline-mapping)

(smithy/sdk/shapes:define-type patch-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list patch-id-list :member patch-id)

(smithy/sdk/shapes:define-type patch-installed-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type patch-installed-other-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type patch-installed-pending-reboot-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type patch-installed-rejected-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type patch-kb-number smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type patch-language smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list patch-list :member patch)

(smithy/sdk/shapes:define-type patch-missing-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type patch-msrc-number smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type patch-msrc-severity
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type patch-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type patch-not-applicable-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum patch-operation-type
    common-lisp:nil
  (:scan "Scan")
  (:install "Install"))

(smithy/sdk/shapes:define-structure patch-orchestrator-filter common-lisp:nil
                                    ((key :target-type
                                      patch-orchestrator-filter-key
                                      :member-name "Key")
                                     (values :target-type
                                      patch-orchestrator-filter-values
                                      :member-name "Values"))
                                    (:shape-name "PatchOrchestratorFilter"))

(smithy/sdk/shapes:define-type patch-orchestrator-filter-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list patch-orchestrator-filter-list :member
                               patch-orchestrator-filter)

(smithy/sdk/shapes:define-type patch-orchestrator-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list patch-orchestrator-filter-values :member
                               patch-orchestrator-filter-value)

(smithy/sdk/shapes:define-type patch-other-non-compliant-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type patch-product smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type patch-product-family
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list patch-properties-list :member
                               patch-property-entry)

(smithy/sdk/shapes:define-enum patch-property
    common-lisp:nil
  (:product "PRODUCT")
  (:patch-product-family "PRODUCT_FAMILY")
  (:patch-classification "CLASSIFICATION")
  (:patch-msrc-severity "MSRC_SEVERITY")
  (:patch-priority "PRIORITY")
  (:patch-severity "SEVERITY"))

(smithy/sdk/shapes:define-map patch-property-entry :key attribute-name :value
                              attribute-value)

(smithy/sdk/shapes:define-type patch-release smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type patch-repository smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure patch-rule common-lisp:nil
                                    ((patch-filter-group :target-type
                                      patch-filter-group :required
                                      common-lisp:t :member-name
                                      "PatchFilterGroup")
                                     (compliance-level :target-type
                                      patch-compliance-level :member-name
                                      "ComplianceLevel")
                                     (approve-after-days :target-type
                                      approve-after-days :member-name
                                      "ApproveAfterDays")
                                     (approve-until-date :target-type
                                      patch-string-date-time :member-name
                                      "ApproveUntilDate")
                                     (enable-non-security :target-type boolean
                                      :member-name "EnableNonSecurity"))
                                    (:shape-name "PatchRule"))

(smithy/sdk/shapes:define-structure patch-rule-group common-lisp:nil
                                    ((patch-rules :target-type patch-rule-list
                                      :required common-lisp:t :member-name
                                      "PatchRules"))
                                    (:shape-name "PatchRuleGroup"))

(smithy/sdk/shapes:define-list patch-rule-list :member patch-rule)

(smithy/sdk/shapes:define-type patch-security-non-compliant-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum patch-set
    common-lisp:nil
  (:os "OS")
  (:application "APPLICATION"))

(smithy/sdk/shapes:define-type patch-severity smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure patch-source common-lisp:nil
                                    ((name :target-type patch-source-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (products :target-type
                                      patch-source-product-list :required
                                      common-lisp:t :member-name "Products")
                                     (configuration :target-type
                                      patch-source-configuration :required
                                      common-lisp:t :member-name
                                      "Configuration"))
                                    (:shape-name "PatchSource"))

(smithy/sdk/shapes:define-type patch-source-configuration
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list patch-source-list :member patch-source)

(smithy/sdk/shapes:define-type patch-source-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type patch-source-product
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list patch-source-product-list :member
                               patch-source-product)

(smithy/sdk/shapes:define-structure patch-status common-lisp:nil
                                    ((deployment-status :target-type
                                      patch-deployment-status :member-name
                                      "DeploymentStatus")
                                     (compliance-level :target-type
                                      patch-compliance-level :member-name
                                      "ComplianceLevel")
                                     (approval-date :target-type date-time
                                      :member-name "ApprovalDate"))
                                    (:shape-name "PatchStatus"))

(smithy/sdk/shapes:define-type patch-string-date-time
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type patch-title smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type patch-unreported-not-applicable-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type patch-vendor smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type patch-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum ping-status
    common-lisp:nil
  (:online "Online")
  (:connection-lost "ConnectionLost")
  (:inactive "Inactive"))

(smithy/sdk/shapes:define-type platform-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum platform-type
    common-lisp:nil
  (:windows "Windows")
  (:linux "Linux")
  (:macos "MacOS"))

(smithy/sdk/shapes:define-list platform-type-list :member
                               (platform-type :xml-name "PlatformType"))

(smithy/sdk/shapes:define-type platform-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error policies-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "PoliciesLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type policy-hash smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type policy-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type product smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure progress-counters common-lisp:nil
                                    ((total-steps :target-type integer
                                      :member-name "TotalSteps")
                                     (success-steps :target-type integer
                                      :member-name "SuccessSteps")
                                     (failed-steps :target-type integer
                                      :member-name "FailedSteps")
                                     (cancelled-steps :target-type integer
                                      :member-name "CancelledSteps")
                                     (timed-out-steps :target-type integer
                                      :member-name "TimedOutSteps"))
                                    (:shape-name "ProgressCounters"))

(smithy/sdk/shapes:define-input put-compliance-items-request common-lisp:nil
                                ((resource-id :target-type
                                  compliance-resource-id :required
                                  common-lisp:t :member-name "ResourceId")
                                 (resource-type :target-type
                                  compliance-resource-type :required
                                  common-lisp:t :member-name "ResourceType")
                                 (compliance-type :target-type
                                  compliance-type-name :required common-lisp:t
                                  :member-name "ComplianceType")
                                 (execution-summary :target-type
                                  compliance-execution-summary :required
                                  common-lisp:t :member-name
                                  "ExecutionSummary")
                                 (items :target-type compliance-item-entry-list
                                  :required common-lisp:t :member-name "Items")
                                 (item-content-hash :target-type
                                  compliance-item-content-hash :member-name
                                  "ItemContentHash")
                                 (upload-type :target-type
                                  compliance-upload-type :member-name
                                  "UploadType"))
                                (:shape-name "PutComplianceItemsRequest"))

(smithy/sdk/shapes:define-output put-compliance-items-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "PutComplianceItemsResult"))

(smithy/sdk/shapes:define-type put-inventory-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input put-inventory-request common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "InstanceId")
                                 (items :target-type inventory-item-list
                                  :required common-lisp:t :member-name
                                  "Items"))
                                (:shape-name "PutInventoryRequest"))

(smithy/sdk/shapes:define-output put-inventory-result common-lisp:nil
                                 ((message :target-type put-inventory-message
                                   :member-name "Message"))
                                 (:shape-name "PutInventoryResult"))

(smithy/sdk/shapes:define-input put-parameter-request common-lisp:nil
                                ((name :target-type psparameter-name :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type
                                  parameter-description :member-name
                                  "Description")
                                 (value :target-type psparameter-value
                                  :required common-lisp:t :member-name "Value")
                                 (type :target-type parameter-type :member-name
                                  "Type")
                                 (key-id :target-type parameter-key-id
                                  :member-name "KeyId")
                                 (overwrite :target-type boolean :member-name
                                  "Overwrite")
                                 (allowed-pattern :target-type allowed-pattern
                                  :member-name "AllowedPattern")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (tier :target-type parameter-tier :member-name
                                  "Tier")
                                 (policies :target-type parameter-policies
                                  :member-name "Policies")
                                 (data-type :target-type parameter-data-type
                                  :member-name "DataType"))
                                (:shape-name "PutParameterRequest"))

(smithy/sdk/shapes:define-output put-parameter-result common-lisp:nil
                                 ((version :target-type psparameter-version
                                   :member-name "Version")
                                  (tier :target-type parameter-tier
                                   :member-name "Tier"))
                                 (:shape-name "PutParameterResult"))

(smithy/sdk/shapes:define-input put-resource-policy-request common-lisp:nil
                                ((resource-arn :target-type resource-arn-string
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (policy :target-type policy :required
                                  common-lisp:t :member-name "Policy")
                                 (policy-id :target-type policy-id :member-name
                                  "PolicyId")
                                 (policy-hash :target-type policy-hash
                                  :member-name "PolicyHash"))
                                (:shape-name "PutResourcePolicyRequest"))

(smithy/sdk/shapes:define-output put-resource-policy-response common-lisp:nil
                                 ((policy-id :target-type policy-id
                                   :member-name "PolicyId")
                                  (policy-hash :target-type policy-hash
                                   :member-name "PolicyHash"))
                                 (:shape-name "PutResourcePolicyResponse"))

(smithy/sdk/shapes:define-enum reboot-option
    common-lisp:nil
  (:reboot-if-needed "RebootIfNeeded")
  (:no-reboot "NoReboot"))

(smithy/sdk/shapes:define-type region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list region-list :member region)

(smithy/sdk/shapes:define-list regions :member region)

(smithy/sdk/shapes:define-input register-default-patch-baseline-request
                                common-lisp:nil
                                ((baseline-id :target-type baseline-id
                                  :required common-lisp:t :member-name
                                  "BaselineId"))
                                (:shape-name
                                 "RegisterDefaultPatchBaselineRequest"))

(smithy/sdk/shapes:define-output register-default-patch-baseline-result
                                 common-lisp:nil
                                 ((baseline-id :target-type baseline-id
                                   :member-name "BaselineId"))
                                 (:shape-name
                                  "RegisterDefaultPatchBaselineResult"))

(smithy/sdk/shapes:define-input register-patch-baseline-for-patch-group-request
                                common-lisp:nil
                                ((baseline-id :target-type baseline-id
                                  :required common-lisp:t :member-name
                                  "BaselineId")
                                 (patch-group :target-type patch-group
                                  :required common-lisp:t :member-name
                                  "PatchGroup"))
                                (:shape-name
                                 "RegisterPatchBaselineForPatchGroupRequest"))

(smithy/sdk/shapes:define-output register-patch-baseline-for-patch-group-result
                                 common-lisp:nil
                                 ((baseline-id :target-type baseline-id
                                   :member-name "BaselineId")
                                  (patch-group :target-type patch-group
                                   :member-name "PatchGroup"))
                                 (:shape-name
                                  "RegisterPatchBaselineForPatchGroupResult"))

(smithy/sdk/shapes:define-input register-target-with-maintenance-window-request
                                common-lisp:nil
                                ((window-id :target-type maintenance-window-id
                                  :required common-lisp:t :member-name
                                  "WindowId")
                                 (resource-type :target-type
                                  maintenance-window-resource-type :required
                                  common-lisp:t :member-name "ResourceType")
                                 (targets :target-type targets :required
                                  common-lisp:t :member-name "Targets")
                                 (owner-information :target-type
                                  owner-information :member-name
                                  "OwnerInformation")
                                 (name :target-type maintenance-window-name
                                  :member-name "Name")
                                 (description :target-type
                                  maintenance-window-description :member-name
                                  "Description")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name
                                 "RegisterTargetWithMaintenanceWindowRequest"))

(smithy/sdk/shapes:define-output register-target-with-maintenance-window-result
                                 common-lisp:nil
                                 ((window-target-id :target-type
                                   maintenance-window-target-id :member-name
                                   "WindowTargetId"))
                                 (:shape-name
                                  "RegisterTargetWithMaintenanceWindowResult"))

(smithy/sdk/shapes:define-input register-task-with-maintenance-window-request
                                common-lisp:nil
                                ((window-id :target-type maintenance-window-id
                                  :required common-lisp:t :member-name
                                  "WindowId")
                                 (targets :target-type targets :member-name
                                  "Targets")
                                 (task-arn :target-type
                                  maintenance-window-task-arn :required
                                  common-lisp:t :member-name "TaskArn")
                                 (service-role-arn :target-type service-role
                                  :member-name "ServiceRoleArn")
                                 (task-type :target-type
                                  maintenance-window-task-type :required
                                  common-lisp:t :member-name "TaskType")
                                 (task-parameters :target-type
                                  maintenance-window-task-parameters
                                  :member-name "TaskParameters")
                                 (task-invocation-parameters :target-type
                                  maintenance-window-task-invocation-parameters
                                  :member-name "TaskInvocationParameters")
                                 (priority :target-type
                                  maintenance-window-task-priority :member-name
                                  "Priority")
                                 (max-concurrency :target-type max-concurrency
                                  :member-name "MaxConcurrency")
                                 (max-errors :target-type max-errors
                                  :member-name "MaxErrors")
                                 (logging-info :target-type logging-info
                                  :member-name "LoggingInfo")
                                 (name :target-type maintenance-window-name
                                  :member-name "Name")
                                 (description :target-type
                                  maintenance-window-description :member-name
                                  "Description")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken")
                                 (cutoff-behavior :target-type
                                  maintenance-window-task-cutoff-behavior
                                  :member-name "CutoffBehavior")
                                 (alarm-configuration :target-type
                                  alarm-configuration :member-name
                                  "AlarmConfiguration"))
                                (:shape-name
                                 "RegisterTaskWithMaintenanceWindowRequest"))

(smithy/sdk/shapes:define-output register-task-with-maintenance-window-result
                                 common-lisp:nil
                                 ((window-task-id :target-type
                                   maintenance-window-task-id :member-name
                                   "WindowTaskId"))
                                 (:shape-name
                                  "RegisterTaskWithMaintenanceWindowResult"))

(smithy/sdk/shapes:define-type registration-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure registration-metadata-item common-lisp:nil
                                    ((key :target-type
                                      registration-metadata-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type
                                      registration-metadata-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "RegistrationMetadataItem"))

(smithy/sdk/shapes:define-type registration-metadata-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list registration-metadata-list :member
                               registration-metadata-item)

(smithy/sdk/shapes:define-type registration-metadata-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type registrations-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure related-ops-item common-lisp:nil
                                    ((ops-item-id :target-type string :required
                                      common-lisp:t :member-name "OpsItemId"))
                                    (:shape-name "RelatedOpsItem"))

(smithy/sdk/shapes:define-list related-ops-items :member related-ops-item)

(smithy/sdk/shapes:define-type remaining-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input remove-tags-from-resource-request
                                common-lisp:nil
                                ((resource-type :target-type
                                  resource-type-for-tagging :required
                                  common-lisp:t :member-name "ResourceType")
                                 (resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (tag-keys :target-type key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "RemoveTagsFromResourceRequest"))

(smithy/sdk/shapes:define-output remove-tags-from-resource-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "RemoveTagsFromResourceResult"))

(smithy/sdk/shapes:define-type require-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input reset-service-setting-request common-lisp:nil
                                ((setting-id :target-type service-setting-id
                                  :required common-lisp:t :member-name
                                  "SettingId"))
                                (:shape-name "ResetServiceSettingRequest"))

(smithy/sdk/shapes:define-output reset-service-setting-result common-lisp:nil
                                 ((service-setting :target-type service-setting
                                   :member-name "ServiceSetting"))
                                 (:shape-name "ResetServiceSettingResult"))

(smithy/sdk/shapes:define-structure resolved-targets common-lisp:nil
                                    ((parameter-values :target-type
                                      target-parameter-list :member-name
                                      "ParameterValues")
                                     (truncated :target-type boolean
                                      :member-name "Truncated"))
                                    (:shape-name "ResolvedTargets"))

(smithy/sdk/shapes:define-type resource-arn-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resource-compliance-summary-item
                                    common-lisp:nil
                                    ((compliance-type :target-type
                                      compliance-type-name :member-name
                                      "ComplianceType")
                                     (resource-type :target-type
                                      compliance-resource-type :member-name
                                      "ResourceType")
                                     (resource-id :target-type
                                      compliance-resource-id :member-name
                                      "ResourceId")
                                     (status :target-type compliance-status
                                      :member-name "Status")
                                     (overall-severity :target-type
                                      compliance-severity :member-name
                                      "OverallSeverity")
                                     (execution-summary :target-type
                                      compliance-execution-summary :member-name
                                      "ExecutionSummary")
                                     (compliant-summary :target-type
                                      compliant-summary :member-name
                                      "CompliantSummary")
                                     (non-compliant-summary :target-type
                                      non-compliant-summary :member-name
                                      "NonCompliantSummary"))
                                    (:shape-name
                                     "ResourceComplianceSummaryItem"))

(smithy/sdk/shapes:define-list resource-compliance-summary-item-list :member
                               (resource-compliance-summary-item :xml-name
                                "Item"))

(smithy/sdk/shapes:define-type resource-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type resource-count-by-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-data-sync-awskmskey-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-data-sync-already-exists-exception
                                common-lisp:nil
                                ((sync-name :target-type
                                  resource-data-sync-name :member-name
                                  "SyncName"))
                                (:shape-name
                                 "ResourceDataSyncAlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure resource-data-sync-aws-organizations-source
                                    common-lisp:nil
                                    ((organization-source-type :target-type
                                      resource-data-sync-organization-source-type
                                      :required common-lisp:t :member-name
                                      "OrganizationSourceType")
                                     (organizational-units :target-type
                                      resource-data-sync-organizational-unit-list
                                      :member-name "OrganizationalUnits"))
                                    (:shape-name
                                     "ResourceDataSyncAwsOrganizationsSource"))

(smithy/sdk/shapes:define-error resource-data-sync-conflict-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "ResourceDataSyncConflictException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-data-sync-count-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "ResourceDataSyncCountExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type resource-data-sync-created-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure resource-data-sync-destination-data-sharing
                                    common-lisp:nil
                                    ((destination-data-sharing-type
                                      :target-type
                                      resource-data-sync-destination-data-sharing-type
                                      :member-name
                                      "DestinationDataSharingType"))
                                    (:shape-name
                                     "ResourceDataSyncDestinationDataSharing"))

(smithy/sdk/shapes:define-type resource-data-sync-destination-data-sharing-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-data-sync-enable-all-ops-data-sources
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type resource-data-sync-include-future-regions
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error
 resource-data-sync-invalid-configuration-exception common-lisp:nil
 ((message :target-type string :member-name "Message"))
 (:shape-name "ResourceDataSyncInvalidConfigurationException")
 (:error-code 400))

(smithy/sdk/shapes:define-structure resource-data-sync-item common-lisp:nil
                                    ((sync-name :target-type
                                      resource-data-sync-name :member-name
                                      "SyncName")
                                     (sync-type :target-type
                                      resource-data-sync-type :member-name
                                      "SyncType")
                                     (sync-source :target-type
                                      resource-data-sync-source-with-state
                                      :member-name "SyncSource")
                                     (s3destination :target-type
                                      resource-data-sync-s3destination
                                      :member-name "S3Destination")
                                     (last-sync-time :target-type
                                      last-resource-data-sync-time :member-name
                                      "LastSyncTime")
                                     (last-successful-sync-time :target-type
                                      last-successful-resource-data-sync-time
                                      :member-name "LastSuccessfulSyncTime")
                                     (sync-last-modified-time :target-type
                                      resource-data-sync-last-modified-time
                                      :member-name "SyncLastModifiedTime")
                                     (last-status :target-type
                                      last-resource-data-sync-status
                                      :member-name "LastStatus")
                                     (sync-created-time :target-type
                                      resource-data-sync-created-time
                                      :member-name "SyncCreatedTime")
                                     (last-sync-status-message :target-type
                                      last-resource-data-sync-message
                                      :member-name "LastSyncStatusMessage"))
                                    (:shape-name "ResourceDataSyncItem"))

(smithy/sdk/shapes:define-list resource-data-sync-item-list :member
                               resource-data-sync-item)

(smithy/sdk/shapes:define-type resource-data-sync-last-modified-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type resource-data-sync-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-data-sync-not-found-exception
                                common-lisp:nil
                                ((sync-name :target-type
                                  resource-data-sync-name :member-name
                                  "SyncName")
                                 (sync-type :target-type
                                  resource-data-sync-type :member-name
                                  "SyncType")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "ResourceDataSyncNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type resource-data-sync-organization-source-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resource-data-sync-organizational-unit
                                    common-lisp:nil
                                    ((organizational-unit-id :target-type
                                      resource-data-sync-organizational-unit-id
                                      :member-name "OrganizationalUnitId"))
                                    (:shape-name
                                     "ResourceDataSyncOrganizationalUnit"))

(smithy/sdk/shapes:define-type resource-data-sync-organizational-unit-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-data-sync-organizational-unit-list
                               :member resource-data-sync-organizational-unit)

(smithy/sdk/shapes:define-type resource-data-sync-s3bucket-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resource-data-sync-s3destination
                                    common-lisp:nil
                                    ((bucket-name :target-type
                                      resource-data-sync-s3bucket-name
                                      :required common-lisp:t :member-name
                                      "BucketName")
                                     (prefix :target-type
                                      resource-data-sync-s3prefix :member-name
                                      "Prefix")
                                     (sync-format :target-type
                                      resource-data-sync-s3format :required
                                      common-lisp:t :member-name "SyncFormat")
                                     (region :target-type
                                      resource-data-sync-s3region :required
                                      common-lisp:t :member-name "Region")
                                     (awskmskey-arn :target-type
                                      resource-data-sync-awskmskey-arn
                                      :member-name "AWSKMSKeyARN")
                                     (destination-data-sharing :target-type
                                      resource-data-sync-destination-data-sharing
                                      :member-name "DestinationDataSharing"))
                                    (:shape-name
                                     "ResourceDataSyncS3Destination"))

(smithy/sdk/shapes:define-enum resource-data-sync-s3format
    common-lisp:nil
  (:json-serde "JsonSerDe"))

(smithy/sdk/shapes:define-type resource-data-sync-s3prefix
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-data-sync-s3region
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resource-data-sync-source common-lisp:nil
                                    ((source-type :target-type
                                      resource-data-sync-source-type :required
                                      common-lisp:t :member-name "SourceType")
                                     (aws-organizations-source :target-type
                                      resource-data-sync-aws-organizations-source
                                      :member-name "AwsOrganizationsSource")
                                     (source-regions :target-type
                                      resource-data-sync-source-region-list
                                      :required common-lisp:t :member-name
                                      "SourceRegions")
                                     (include-future-regions :target-type
                                      resource-data-sync-include-future-regions
                                      :member-name "IncludeFutureRegions")
                                     (enable-all-ops-data-sources :target-type
                                      resource-data-sync-enable-all-ops-data-sources
                                      :member-name "EnableAllOpsDataSources"))
                                    (:shape-name "ResourceDataSyncSource"))

(smithy/sdk/shapes:define-type resource-data-sync-source-region
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-data-sync-source-region-list :member
                               resource-data-sync-source-region)

(smithy/sdk/shapes:define-type resource-data-sync-source-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resource-data-sync-source-with-state
                                    common-lisp:nil
                                    ((source-type :target-type
                                      resource-data-sync-source-type
                                      :member-name "SourceType")
                                     (aws-organizations-source :target-type
                                      resource-data-sync-aws-organizations-source
                                      :member-name "AwsOrganizationsSource")
                                     (source-regions :target-type
                                      resource-data-sync-source-region-list
                                      :member-name "SourceRegions")
                                     (include-future-regions :target-type
                                      resource-data-sync-include-future-regions
                                      :member-name "IncludeFutureRegions")
                                     (state :target-type
                                      resource-data-sync-state :member-name
                                      "State")
                                     (enable-all-ops-data-sources :target-type
                                      resource-data-sync-enable-all-ops-data-sources
                                      :member-name "EnableAllOpsDataSources"))
                                    (:shape-name
                                     "ResourceDataSyncSourceWithState"))

(smithy/sdk/shapes:define-type resource-data-sync-state
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-data-sync-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-in-use-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ResourceInUseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ResourceLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-policy-conflict-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ResourcePolicyConflictException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-policy-invalid-parameter-exception
                                common-lisp:nil
                                ((parameter-names :target-type
                                  resource-policy-parameter-names-list
                                  :member-name "ParameterNames")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "ResourcePolicyInvalidParameterException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-policy-limit-exceeded-exception
                                common-lisp:nil
                                ((limit :target-type integer :member-name
                                  "Limit")
                                 (limit-type :target-type string :member-name
                                  "LimitType")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "ResourcePolicyLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type resource-policy-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error resource-policy-not-found-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ResourcePolicyNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list resource-policy-parameter-names-list :member
                               string)

(smithy/sdk/shapes:define-enum resource-type
    common-lisp:nil
  (:managed-instance "ManagedInstance")
  (:ec2-instance "EC2Instance"))

(smithy/sdk/shapes:define-enum resource-type-for-tagging
    common-lisp:nil
  (:document "Document")
  (:managed-instance "ManagedInstance")
  (:maintenance-window "MaintenanceWindow")
  (:parameter "Parameter")
  (:patch-baseline "PatchBaseline")
  (:ops-item "OpsItem")
  (:opsmetadata "OpsMetadata")
  (:automation "Automation")
  (:association "Association"))

(smithy/sdk/shapes:define-type response-code smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure result-attribute common-lisp:nil
                                    ((type-name :target-type
                                      inventory-item-type-name :required
                                      common-lisp:t :member-name "TypeName"))
                                    (:shape-name "ResultAttribute"))

(smithy/sdk/shapes:define-list result-attribute-list :member
                               (result-attribute :xml-name "ResultAttribute"))

(smithy/sdk/shapes:define-input resume-session-request common-lisp:nil
                                ((session-id :target-type session-id :required
                                  common-lisp:t :member-name "SessionId"))
                                (:shape-name "ResumeSessionRequest"))

(smithy/sdk/shapes:define-output resume-session-response common-lisp:nil
                                 ((session-id :target-type session-id
                                   :member-name "SessionId")
                                  (token-value :target-type token-value
                                   :member-name "TokenValue")
                                  (stream-url :target-type stream-url
                                   :member-name "StreamUrl"))
                                 (:shape-name "ResumeSessionResponse"))

(smithy/sdk/shapes:define-structure review-information common-lisp:nil
                                    ((reviewed-time :target-type date-time
                                      :member-name "ReviewedTime")
                                     (status :target-type review-status
                                      :member-name "Status")
                                     (reviewer :target-type reviewer
                                      :member-name "Reviewer"))
                                    (:shape-name "ReviewInformation"))

(smithy/sdk/shapes:define-list review-information-list :member
                               (review-information :xml-name
                                "ReviewInformation"))

(smithy/sdk/shapes:define-enum review-status
    common-lisp:nil
  (:approved "APPROVED")
  (:not-reviewed "NOT_REVIEWED")
  (:pending "PENDING")
  (:rejected "REJECTED"))

(smithy/sdk/shapes:define-type reviewer smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure runbook common-lisp:nil
                                    ((document-name :target-type document-arn
                                      :required common-lisp:t :member-name
                                      "DocumentName")
                                     (document-version :target-type
                                      document-version :member-name
                                      "DocumentVersion")
                                     (parameters :target-type
                                      automation-parameter-map :member-name
                                      "Parameters")
                                     (target-parameter-name :target-type
                                      automation-parameter-key :member-name
                                      "TargetParameterName")
                                     (targets :target-type targets :member-name
                                      "Targets")
                                     (target-maps :target-type target-maps
                                      :member-name "TargetMaps")
                                     (max-concurrency :target-type
                                      max-concurrency :member-name
                                      "MaxConcurrency")
                                     (max-errors :target-type max-errors
                                      :member-name "MaxErrors")
                                     (target-locations :target-type
                                      target-locations :member-name
                                      "TargetLocations"))
                                    (:shape-name "Runbook"))

(smithy/sdk/shapes:define-list runbooks :member runbook)

(smithy/sdk/shapes:define-type s3bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3key-prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3output-location common-lisp:nil
                                    ((output-s3region :target-type s3region
                                      :member-name "OutputS3Region")
                                     (output-s3bucket-name :target-type
                                      s3bucket-name :member-name
                                      "OutputS3BucketName")
                                     (output-s3key-prefix :target-type
                                      s3key-prefix :member-name
                                      "OutputS3KeyPrefix"))
                                    (:shape-name "S3OutputLocation"))

(smithy/sdk/shapes:define-structure s3output-url common-lisp:nil
                                    ((output-url :target-type url :member-name
                                      "OutputUrl"))
                                    (:shape-name "S3OutputUrl"))

(smithy/sdk/shapes:define-type s3region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type schedule-expression
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type schedule-offset smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure scheduled-window-execution common-lisp:nil
                                    ((window-id :target-type
                                      maintenance-window-id :member-name
                                      "WindowId")
                                     (name :target-type maintenance-window-name
                                      :member-name "Name")
                                     (execution-time :target-type
                                      maintenance-window-string-date-time
                                      :member-name "ExecutionTime"))
                                    (:shape-name "ScheduledWindowExecution"))

(smithy/sdk/shapes:define-list scheduled-window-execution-list :member
                               scheduled-window-execution)

(smithy/sdk/shapes:define-input send-automation-signal-request common-lisp:nil
                                ((automation-execution-id :target-type
                                  automation-execution-id :required
                                  common-lisp:t :member-name
                                  "AutomationExecutionId")
                                 (signal-type :target-type signal-type
                                  :required common-lisp:t :member-name
                                  "SignalType")
                                 (payload :target-type automation-parameter-map
                                  :member-name "Payload"))
                                (:shape-name "SendAutomationSignalRequest"))

(smithy/sdk/shapes:define-output send-automation-signal-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "SendAutomationSignalResult"))

(smithy/sdk/shapes:define-input send-command-request common-lisp:nil
                                ((instance-ids :target-type instance-id-list
                                  :member-name "InstanceIds")
                                 (targets :target-type targets :member-name
                                  "Targets")
                                 (document-name :target-type document-arn
                                  :required common-lisp:t :member-name
                                  "DocumentName")
                                 (document-version :target-type
                                  document-version :member-name
                                  "DocumentVersion")
                                 (document-hash :target-type document-hash
                                  :member-name "DocumentHash")
                                 (document-hash-type :target-type
                                  document-hash-type :member-name
                                  "DocumentHashType")
                                 (timeout-seconds :target-type timeout-seconds
                                  :member-name "TimeoutSeconds")
                                 (comment :target-type comment :member-name
                                  "Comment")
                                 (parameters :target-type parameters
                                  :member-name "Parameters")
                                 (output-s3region :target-type s3region
                                  :member-name "OutputS3Region")
                                 (output-s3bucket-name :target-type
                                  s3bucket-name :member-name
                                  "OutputS3BucketName")
                                 (output-s3key-prefix :target-type s3key-prefix
                                  :member-name "OutputS3KeyPrefix")
                                 (max-concurrency :target-type max-concurrency
                                  :member-name "MaxConcurrency")
                                 (max-errors :target-type max-errors
                                  :member-name "MaxErrors")
                                 (service-role-arn :target-type service-role
                                  :member-name "ServiceRoleArn")
                                 (notification-config :target-type
                                  notification-config :member-name
                                  "NotificationConfig")
                                 (cloud-watch-output-config :target-type
                                  cloud-watch-output-config :member-name
                                  "CloudWatchOutputConfig")
                                 (alarm-configuration :target-type
                                  alarm-configuration :member-name
                                  "AlarmConfiguration"))
                                (:shape-name "SendCommandRequest"))

(smithy/sdk/shapes:define-output send-command-result common-lisp:nil
                                 ((command :target-type command :member-name
                                   "Command"))
                                 (:shape-name "SendCommandResult"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message")
                                 (resource-id :target-type string :member-name
                                  "ResourceId")
                                 (resource-type :target-type string
                                  :member-name "ResourceType")
                                 (quota-code :target-type string :required
                                  common-lisp:t :member-name "QuotaCode")
                                 (service-code :target-type string :required
                                  common-lisp:t :member-name "ServiceCode"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type service-role smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure service-setting common-lisp:nil
                                    ((setting-id :target-type
                                      service-setting-id :member-name
                                      "SettingId")
                                     (setting-value :target-type
                                      service-setting-value :member-name
                                      "SettingValue")
                                     (last-modified-date :target-type date-time
                                      :member-name "LastModifiedDate")
                                     (last-modified-user :target-type string
                                      :member-name "LastModifiedUser")
                                     (arn :target-type string :member-name
                                      "ARN")
                                     (status :target-type string :member-name
                                      "Status"))
                                    (:shape-name "ServiceSetting"))

(smithy/sdk/shapes:define-type service-setting-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-setting-not-found common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ServiceSettingNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-type service-setting-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure session common-lisp:nil
                                    ((session-id :target-type session-id
                                      :member-name "SessionId")
                                     (target :target-type session-target
                                      :member-name "Target")
                                     (status :target-type session-status
                                      :member-name "Status")
                                     (start-date :target-type date-time
                                      :member-name "StartDate")
                                     (end-date :target-type date-time
                                      :member-name "EndDate")
                                     (document-name :target-type document-name
                                      :member-name "DocumentName")
                                     (owner :target-type session-owner
                                      :member-name "Owner")
                                     (reason :target-type session-reason
                                      :member-name "Reason")
                                     (details :target-type session-details
                                      :member-name "Details")
                                     (output-url :target-type
                                      session-manager-output-url :member-name
                                      "OutputUrl")
                                     (max-session-duration :target-type
                                      max-session-duration :member-name
                                      "MaxSessionDuration")
                                     (access-type :target-type access-type
                                      :member-name "AccessType"))
                                    (:shape-name "Session"))

(smithy/sdk/shapes:define-type session-details smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure session-filter common-lisp:nil
                                    ((key :target-type session-filter-key
                                      :required common-lisp:t :member-name
                                      "key")
                                     (value :target-type session-filter-value
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name "SessionFilter"))

(smithy/sdk/shapes:define-enum session-filter-key
    common-lisp:nil
  (:invoked-after "InvokedAfter")
  (:invoked-before "InvokedBefore")
  (:target-id "Target")
  (:owner "Owner")
  (:status "Status")
  (:session-id "SessionId")
  (:access-type "AccessType"))

(smithy/sdk/shapes:define-list session-filter-list :member session-filter)

(smithy/sdk/shapes:define-type session-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type session-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list session-list :member session)

(smithy/sdk/shapes:define-type session-manager-cloud-watch-output-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure session-manager-output-url common-lisp:nil
                                    ((s3output-url :target-type
                                      session-manager-s3output-url :member-name
                                      "S3OutputUrl")
                                     (cloud-watch-output-url :target-type
                                      session-manager-cloud-watch-output-url
                                      :member-name "CloudWatchOutputUrl"))
                                    (:shape-name "SessionManagerOutputUrl"))

(smithy/sdk/shapes:define-type session-manager-parameter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type session-manager-parameter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list session-manager-parameter-value-list :member
                               session-manager-parameter-value)

(smithy/sdk/shapes:define-map session-manager-parameters :key
                              session-manager-parameter-name :value
                              session-manager-parameter-value-list)

(smithy/sdk/shapes:define-type session-manager-s3output-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type session-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type session-owner smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type session-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum session-state
    common-lisp:nil
  (:active "Active")
  (:history "History"))

(smithy/sdk/shapes:define-enum session-status
    common-lisp:nil
  (:connected "Connected")
  (:connecting "Connecting")
  (:disconnected "Disconnected")
  (:terminated "Terminated")
  (:terminating "Terminating")
  (:failed "Failed"))

(smithy/sdk/shapes:define-type session-target smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type session-token-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure severity-summary common-lisp:nil
                                    ((critical-count :target-type
                                      compliance-summary-count :member-name
                                      "CriticalCount")
                                     (high-count :target-type
                                      compliance-summary-count :member-name
                                      "HighCount")
                                     (medium-count :target-type
                                      compliance-summary-count :member-name
                                      "MediumCount")
                                     (low-count :target-type
                                      compliance-summary-count :member-name
                                      "LowCount")
                                     (informational-count :target-type
                                      compliance-summary-count :member-name
                                      "InformationalCount")
                                     (unspecified-count :target-type
                                      compliance-summary-count :member-name
                                      "UnspecifiedCount"))
                                    (:shape-name "SeveritySummary"))

(smithy/sdk/shapes:define-type shared-document-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum signal-type
    common-lisp:nil
  (:approve "Approve")
  (:reject "Reject")
  (:start-step "StartStep")
  (:stop-step "StopStep")
  (:resume "Resume")
  (:revoke "Revoke"))

(smithy/sdk/shapes:define-type snapshot-download-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type snapshot-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type source-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum source-type
    common-lisp:nil
  (:aws-ec2-instance "AWS::EC2::Instance")
  (:aws-iot-thing "AWS::IoT::Thing")
  (:aws-ssm-managedinstance "AWS::SSM::ManagedInstance"))

(smithy/sdk/shapes:define-type standard-error-content
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type standard-output-content
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input start-access-request-request common-lisp:nil
                                ((reason :target-type string1to256 :required
                                  common-lisp:t :member-name "Reason")
                                 (targets :target-type targets :required
                                  common-lisp:t :member-name "Targets")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "StartAccessRequestRequest"))

(smithy/sdk/shapes:define-output start-access-request-response common-lisp:nil
                                 ((access-request-id :target-type
                                   access-request-id :member-name
                                   "AccessRequestId"))
                                 (:shape-name "StartAccessRequestResponse"))

(smithy/sdk/shapes:define-input start-associations-once-request common-lisp:nil
                                ((association-ids :target-type
                                  association-id-list :required common-lisp:t
                                  :member-name "AssociationIds"))
                                (:shape-name "StartAssociationsOnceRequest"))

(smithy/sdk/shapes:define-output start-associations-once-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StartAssociationsOnceResult"))

(smithy/sdk/shapes:define-input start-automation-execution-request
                                common-lisp:nil
                                ((document-name :target-type document-arn
                                  :required common-lisp:t :member-name
                                  "DocumentName")
                                 (document-version :target-type
                                  document-version :member-name
                                  "DocumentVersion")
                                 (parameters :target-type
                                  automation-parameter-map :member-name
                                  "Parameters")
                                 (client-token :target-type idempotency-token
                                  :member-name "ClientToken")
                                 (mode :target-type execution-mode :member-name
                                  "Mode")
                                 (target-parameter-name :target-type
                                  automation-parameter-key :member-name
                                  "TargetParameterName")
                                 (targets :target-type targets :member-name
                                  "Targets")
                                 (target-maps :target-type target-maps
                                  :member-name "TargetMaps")
                                 (max-concurrency :target-type max-concurrency
                                  :member-name "MaxConcurrency")
                                 (max-errors :target-type max-errors
                                  :member-name "MaxErrors")
                                 (target-locations :target-type
                                  target-locations :member-name
                                  "TargetLocations")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (alarm-configuration :target-type
                                  alarm-configuration :member-name
                                  "AlarmConfiguration")
                                 (target-locations-url :target-type
                                  target-locations-url :member-name
                                  "TargetLocationsURL"))
                                (:shape-name "StartAutomationExecutionRequest"))

(smithy/sdk/shapes:define-output start-automation-execution-result
                                 common-lisp:nil
                                 ((automation-execution-id :target-type
                                   automation-execution-id :member-name
                                   "AutomationExecutionId"))
                                 (:shape-name "StartAutomationExecutionResult"))

(smithy/sdk/shapes:define-input start-change-request-execution-request
                                common-lisp:nil
                                ((scheduled-time :target-type date-time
                                  :member-name "ScheduledTime")
                                 (document-name :target-type document-arn
                                  :required common-lisp:t :member-name
                                  "DocumentName")
                                 (document-version :target-type
                                  document-version :member-name
                                  "DocumentVersion")
                                 (parameters :target-type
                                  automation-parameter-map :member-name
                                  "Parameters")
                                 (change-request-name :target-type
                                  change-request-name :member-name
                                  "ChangeRequestName")
                                 (client-token :target-type idempotency-token
                                  :member-name "ClientToken")
                                 (auto-approve :target-type boolean
                                  :member-name "AutoApprove")
                                 (runbooks :target-type runbooks :required
                                  common-lisp:t :member-name "Runbooks")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (scheduled-end-time :target-type date-time
                                  :member-name "ScheduledEndTime")
                                 (change-details :target-type
                                  change-details-value :member-name
                                  "ChangeDetails"))
                                (:shape-name
                                 "StartChangeRequestExecutionRequest"))

(smithy/sdk/shapes:define-output start-change-request-execution-result
                                 common-lisp:nil
                                 ((automation-execution-id :target-type
                                   automation-execution-id :member-name
                                   "AutomationExecutionId"))
                                 (:shape-name
                                  "StartChangeRequestExecutionResult"))

(smithy/sdk/shapes:define-input start-execution-preview-request common-lisp:nil
                                ((document-name :target-type document-name
                                  :required common-lisp:t :member-name
                                  "DocumentName")
                                 (document-version :target-type
                                  document-version :member-name
                                  "DocumentVersion")
                                 (execution-inputs :target-type
                                  execution-inputs :member-name
                                  "ExecutionInputs"))
                                (:shape-name "StartExecutionPreviewRequest"))

(smithy/sdk/shapes:define-output start-execution-preview-response
                                 common-lisp:nil
                                 ((execution-preview-id :target-type
                                   execution-preview-id :member-name
                                   "ExecutionPreviewId"))
                                 (:shape-name "StartExecutionPreviewResponse"))

(smithy/sdk/shapes:define-input start-session-request common-lisp:nil
                                ((target :target-type session-target :required
                                  common-lisp:t :member-name "Target")
                                 (document-name :target-type document-arn
                                  :member-name "DocumentName")
                                 (reason :target-type session-reason
                                  :member-name "Reason")
                                 (parameters :target-type
                                  session-manager-parameters :member-name
                                  "Parameters"))
                                (:shape-name "StartSessionRequest"))

(smithy/sdk/shapes:define-output start-session-response common-lisp:nil
                                 ((session-id :target-type session-id
                                   :member-name "SessionId")
                                  (token-value :target-type token-value
                                   :member-name "TokenValue")
                                  (stream-url :target-type stream-url
                                   :member-name "StreamUrl"))
                                 (:shape-name "StartSessionResponse"))

(smithy/sdk/shapes:define-type status-additional-info
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type status-details smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type status-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type status-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error status-unchanged common-lisp:nil
                                common-lisp:nil (:shape-name "StatusUnchanged")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure step-execution common-lisp:nil
                                    ((step-name :target-type string
                                      :member-name "StepName")
                                     (action :target-type
                                      automation-action-name :member-name
                                      "Action")
                                     (timeout-seconds :target-type long
                                      :member-name "TimeoutSeconds")
                                     (on-failure :target-type string
                                      :member-name "OnFailure")
                                     (max-attempts :target-type integer
                                      :member-name "MaxAttempts")
                                     (execution-start-time :target-type
                                      date-time :member-name
                                      "ExecutionStartTime")
                                     (execution-end-time :target-type date-time
                                      :member-name "ExecutionEndTime")
                                     (step-status :target-type
                                      automation-execution-status :member-name
                                      "StepStatus")
                                     (response-code :target-type string
                                      :member-name "ResponseCode")
                                     (inputs :target-type normal-string-map
                                      :member-name "Inputs")
                                     (outputs :target-type
                                      automation-parameter-map :member-name
                                      "Outputs")
                                     (response :target-type string :member-name
                                      "Response")
                                     (failure-message :target-type string
                                      :member-name "FailureMessage")
                                     (failure-details :target-type
                                      failure-details :member-name
                                      "FailureDetails")
                                     (step-execution-id :target-type string
                                      :member-name "StepExecutionId")
                                     (overridden-parameters :target-type
                                      automation-parameter-map :member-name
                                      "OverriddenParameters")
                                     (is-end :target-type boolean :member-name
                                      "IsEnd")
                                     (next-step :target-type string
                                      :member-name "NextStep")
                                     (is-critical :target-type boolean
                                      :member-name "IsCritical")
                                     (valid-next-steps :target-type
                                      valid-next-step-list :member-name
                                      "ValidNextSteps")
                                     (targets :target-type targets :member-name
                                      "Targets")
                                     (target-location :target-type
                                      target-location :member-name
                                      "TargetLocation")
                                     (triggered-alarms :target-type
                                      alarm-state-information-list :member-name
                                      "TriggeredAlarms")
                                     (parent-step-details :target-type
                                      parent-step-details :member-name
                                      "ParentStepDetails"))
                                    (:shape-name "StepExecution"))

(smithy/sdk/shapes:define-structure step-execution-filter common-lisp:nil
                                    ((key :target-type
                                      step-execution-filter-key :required
                                      common-lisp:t :member-name "Key")
                                     (values :target-type
                                      step-execution-filter-value-list
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name "StepExecutionFilter"))

(smithy/sdk/shapes:define-enum step-execution-filter-key
    common-lisp:nil
  (:start-time-before "StartTimeBefore")
  (:start-time-after "StartTimeAfter")
  (:step-execution-status "StepExecutionStatus")
  (:step-execution-id "StepExecutionId")
  (:step-name "StepName")
  (:action "Action")
  (:parent-step-execution-id "ParentStepExecutionId")
  (:parent-step-iteration "ParentStepIteration")
  (:parent-step-iterator-value "ParentStepIteratorValue"))

(smithy/sdk/shapes:define-list step-execution-filter-list :member
                               step-execution-filter)

(smithy/sdk/shapes:define-type step-execution-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list step-execution-filter-value-list :member
                               step-execution-filter-value)

(smithy/sdk/shapes:define-list step-execution-list :member step-execution)

(smithy/sdk/shapes:define-map step-preview-map :key impact-type :value integer)

(smithy/sdk/shapes:define-input stop-automation-execution-request
                                common-lisp:nil
                                ((automation-execution-id :target-type
                                  automation-execution-id :required
                                  common-lisp:t :member-name
                                  "AutomationExecutionId")
                                 (type :target-type stop-type :member-name
                                  "Type"))
                                (:shape-name "StopAutomationExecutionRequest"))

(smithy/sdk/shapes:define-output stop-automation-execution-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "StopAutomationExecutionResult"))

(smithy/sdk/shapes:define-enum stop-type
    common-lisp:nil
  (:complete "Complete")
  (:cancel "Cancel"))

(smithy/sdk/shapes:define-type stream-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string1to256 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-date-time smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-list :member string)

(smithy/sdk/shapes:define-error sub-type-count-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "SubTypeCountLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure target common-lisp:nil
                                    ((key :target-type target-key :member-name
                                      "Key")
                                     (values :target-type target-values
                                      :member-name "Values"))
                                    (:shape-name "Target"))

(smithy/sdk/shapes:define-type target-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error target-in-use-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TargetInUseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type target-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure target-location common-lisp:nil
                                    ((accounts :target-type accounts
                                      :member-name "Accounts")
                                     (regions :target-type regions :member-name
                                      "Regions")
                                     (target-location-max-concurrency
                                      :target-type max-concurrency :member-name
                                      "TargetLocationMaxConcurrency")
                                     (target-location-max-errors :target-type
                                      max-errors :member-name
                                      "TargetLocationMaxErrors")
                                     (execution-role-name :target-type
                                      execution-role-name :member-name
                                      "ExecutionRoleName")
                                     (target-location-alarm-configuration
                                      :target-type alarm-configuration
                                      :member-name
                                      "TargetLocationAlarmConfiguration")
                                     (include-child-organization-units
                                      :target-type boolean :member-name
                                      "IncludeChildOrganizationUnits")
                                     (exclude-accounts :target-type
                                      exclude-accounts :member-name
                                      "ExcludeAccounts")
                                     (targets :target-type targets :member-name
                                      "Targets")
                                     (targets-max-concurrency :target-type
                                      max-concurrency :member-name
                                      "TargetsMaxConcurrency")
                                     (targets-max-errors :target-type
                                      max-errors :member-name
                                      "TargetsMaxErrors"))
                                    (:shape-name "TargetLocation"))

(smithy/sdk/shapes:define-list target-locations :member target-location)

(smithy/sdk/shapes:define-type target-locations-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map target-map :key target-map-key :value
                              target-map-value-list)

(smithy/sdk/shapes:define-type target-map-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-map-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list target-map-value-list :member target-map-value)

(smithy/sdk/shapes:define-list target-maps :member target-map)

(smithy/sdk/shapes:define-error target-not-connected common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TargetNotConnected")
                                (:error-code 400))

(smithy/sdk/shapes:define-list target-parameter-list :member parameter-value)

(smithy/sdk/shapes:define-structure target-preview common-lisp:nil
                                    ((count :target-type integer :member-name
                                      "Count")
                                     (target-type :target-type string
                                      :member-name "TargetType"))
                                    (:shape-name "TargetPreview"))

(smithy/sdk/shapes:define-list target-preview-list :member target-preview)

(smithy/sdk/shapes:define-type target-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list target-values :member target-value)

(smithy/sdk/shapes:define-list targets :member target)

(smithy/sdk/shapes:define-input terminate-session-request common-lisp:nil
                                ((session-id :target-type session-id :required
                                  common-lisp:t :member-name "SessionId"))
                                (:shape-name "TerminateSessionRequest"))

(smithy/sdk/shapes:define-output terminate-session-response common-lisp:nil
                                 ((session-id :target-type session-id
                                   :member-name "SessionId"))
                                 (:shape-name "TerminateSessionResponse"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message")
                                 (quota-code :target-type string :member-name
                                  "QuotaCode")
                                 (service-code :target-type string :member-name
                                  "ServiceCode"))
                                (:shape-name "ThrottlingException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type timeout-seconds smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type token-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error too-many-tags-error common-lisp:nil
                                common-lisp:nil
                                (:shape-name "TooManyTagsError")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-updates common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TooManyUpdates")
                                (:error-code 400))

(smithy/sdk/shapes:define-type total-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error total-size-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TotalSizeLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input unlabel-parameter-version-request
                                common-lisp:nil
                                ((name :target-type psparameter-name :required
                                  common-lisp:t :member-name "Name")
                                 (parameter-version :target-type
                                  psparameter-version :required common-lisp:t
                                  :member-name "ParameterVersion")
                                 (labels :target-type parameter-label-list
                                  :required common-lisp:t :member-name
                                  "Labels"))
                                (:shape-name "UnlabelParameterVersionRequest"))

(smithy/sdk/shapes:define-output unlabel-parameter-version-result
                                 common-lisp:nil
                                 ((removed-labels :target-type
                                   parameter-label-list :member-name
                                   "RemovedLabels")
                                  (invalid-labels :target-type
                                   parameter-label-list :member-name
                                   "InvalidLabels"))
                                 (:shape-name "UnlabelParameterVersionResult"))

(smithy/sdk/shapes:define-error unsupported-calendar-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "UnsupportedCalendarException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error unsupported-feature-required-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "UnsupportedFeatureRequiredException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error unsupported-inventory-item-context-exception
                                common-lisp:nil
                                ((type-name :target-type
                                  inventory-item-type-name :member-name
                                  "TypeName")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "UnsupportedInventoryItemContextException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error unsupported-inventory-schema-version-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "UnsupportedInventorySchemaVersionException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error unsupported-operating-system common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "UnsupportedOperatingSystem")
                                (:error-code 400))

(smithy/sdk/shapes:define-error unsupported-operation-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "UnsupportedOperationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error unsupported-parameter-type common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "UnsupportedParameterType")
                                (:error-code 400))

(smithy/sdk/shapes:define-error unsupported-platform-type common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "UnsupportedPlatformType")
                                (:error-code 400))

(smithy/sdk/shapes:define-input update-association-request common-lisp:nil
                                ((association-id :target-type association-id
                                  :required common-lisp:t :member-name
                                  "AssociationId")
                                 (parameters :target-type parameters
                                  :member-name "Parameters")
                                 (document-version :target-type
                                  document-version :member-name
                                  "DocumentVersion")
                                 (schedule-expression :target-type
                                  schedule-expression :member-name
                                  "ScheduleExpression")
                                 (output-location :target-type
                                  instance-association-output-location
                                  :member-name "OutputLocation")
                                 (name :target-type document-arn :member-name
                                  "Name")
                                 (targets :target-type targets :member-name
                                  "Targets")
                                 (association-name :target-type
                                  association-name :member-name
                                  "AssociationName")
                                 (association-version :target-type
                                  association-version :member-name
                                  "AssociationVersion")
                                 (automation-target-parameter-name :target-type
                                  automation-target-parameter-name :member-name
                                  "AutomationTargetParameterName")
                                 (max-errors :target-type max-errors
                                  :member-name "MaxErrors")
                                 (max-concurrency :target-type max-concurrency
                                  :member-name "MaxConcurrency")
                                 (compliance-severity :target-type
                                  association-compliance-severity :member-name
                                  "ComplianceSeverity")
                                 (sync-compliance :target-type
                                  association-sync-compliance :member-name
                                  "SyncCompliance")
                                 (apply-only-at-cron-interval :target-type
                                  apply-only-at-cron-interval :member-name
                                  "ApplyOnlyAtCronInterval")
                                 (calendar-names :target-type
                                  calendar-name-or-arnlist :member-name
                                  "CalendarNames")
                                 (target-locations :target-type
                                  target-locations :member-name
                                  "TargetLocations")
                                 (schedule-offset :target-type schedule-offset
                                  :member-name "ScheduleOffset")
                                 (duration :target-type duration :member-name
                                  "Duration")
                                 (target-maps :target-type target-maps
                                  :member-name "TargetMaps")
                                 (alarm-configuration :target-type
                                  alarm-configuration :member-name
                                  "AlarmConfiguration"))
                                (:shape-name "UpdateAssociationRequest"))

(smithy/sdk/shapes:define-output update-association-result common-lisp:nil
                                 ((association-description :target-type
                                   association-description :member-name
                                   "AssociationDescription"))
                                 (:shape-name "UpdateAssociationResult"))

(smithy/sdk/shapes:define-input update-association-status-request
                                common-lisp:nil
                                ((name :target-type document-arn :required
                                  common-lisp:t :member-name "Name")
                                 (instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "InstanceId")
                                 (association-status :target-type
                                  association-status :required common-lisp:t
                                  :member-name "AssociationStatus"))
                                (:shape-name "UpdateAssociationStatusRequest"))

(smithy/sdk/shapes:define-output update-association-status-result
                                 common-lisp:nil
                                 ((association-description :target-type
                                   association-description :member-name
                                   "AssociationDescription"))
                                 (:shape-name "UpdateAssociationStatusResult"))

(smithy/sdk/shapes:define-input update-document-default-version-request
                                common-lisp:nil
                                ((name :target-type document-name :required
                                  common-lisp:t :member-name "Name")
                                 (document-version :target-type
                                  document-version-number :required
                                  common-lisp:t :member-name
                                  "DocumentVersion"))
                                (:shape-name
                                 "UpdateDocumentDefaultVersionRequest"))

(smithy/sdk/shapes:define-output update-document-default-version-result
                                 common-lisp:nil
                                 ((description :target-type
                                   document-default-version-description
                                   :member-name "Description"))
                                 (:shape-name
                                  "UpdateDocumentDefaultVersionResult"))

(smithy/sdk/shapes:define-input update-document-metadata-request
                                common-lisp:nil
                                ((name :target-type document-name :required
                                  common-lisp:t :member-name "Name")
                                 (document-version :target-type
                                  document-version :member-name
                                  "DocumentVersion")
                                 (document-reviews :target-type
                                  document-reviews :required common-lisp:t
                                  :member-name "DocumentReviews"))
                                (:shape-name "UpdateDocumentMetadataRequest"))

(smithy/sdk/shapes:define-output update-document-metadata-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateDocumentMetadataResponse"))

(smithy/sdk/shapes:define-input update-document-request common-lisp:nil
                                ((content :target-type document-content
                                  :required common-lisp:t :member-name
                                  "Content")
                                 (attachments :target-type
                                  attachments-source-list :member-name
                                  "Attachments")
                                 (name :target-type document-name :required
                                  common-lisp:t :member-name "Name")
                                 (display-name :target-type
                                  document-display-name :member-name
                                  "DisplayName")
                                 (version-name :target-type
                                  document-version-name :member-name
                                  "VersionName")
                                 (document-version :target-type
                                  document-version :member-name
                                  "DocumentVersion")
                                 (document-format :target-type document-format
                                  :member-name "DocumentFormat")
                                 (target-type :target-type target-type
                                  :member-name "TargetType"))
                                (:shape-name "UpdateDocumentRequest"))

(smithy/sdk/shapes:define-output update-document-result common-lisp:nil
                                 ((document-description :target-type
                                   document-description :member-name
                                   "DocumentDescription"))
                                 (:shape-name "UpdateDocumentResult"))

(smithy/sdk/shapes:define-input update-maintenance-window-request
                                common-lisp:nil
                                ((window-id :target-type maintenance-window-id
                                  :required common-lisp:t :member-name
                                  "WindowId")
                                 (name :target-type maintenance-window-name
                                  :member-name "Name")
                                 (description :target-type
                                  maintenance-window-description :member-name
                                  "Description")
                                 (start-date :target-type
                                  maintenance-window-string-date-time
                                  :member-name "StartDate")
                                 (end-date :target-type
                                  maintenance-window-string-date-time
                                  :member-name "EndDate")
                                 (schedule :target-type
                                  maintenance-window-schedule :member-name
                                  "Schedule")
                                 (schedule-timezone :target-type
                                  maintenance-window-timezone :member-name
                                  "ScheduleTimezone")
                                 (schedule-offset :target-type
                                  maintenance-window-offset :member-name
                                  "ScheduleOffset")
                                 (duration :target-type
                                  maintenance-window-duration-hours
                                  :member-name "Duration")
                                 (cutoff :target-type maintenance-window-cutoff
                                  :member-name "Cutoff")
                                 (allow-unassociated-targets :target-type
                                  maintenance-window-allow-unassociated-targets
                                  :member-name "AllowUnassociatedTargets")
                                 (enabled :target-type
                                  maintenance-window-enabled :member-name
                                  "Enabled")
                                 (replace :target-type boolean :member-name
                                  "Replace"))
                                (:shape-name "UpdateMaintenanceWindowRequest"))

(smithy/sdk/shapes:define-output update-maintenance-window-result
                                 common-lisp:nil
                                 ((window-id :target-type maintenance-window-id
                                   :member-name "WindowId")
                                  (name :target-type maintenance-window-name
                                   :member-name "Name")
                                  (description :target-type
                                   maintenance-window-description :member-name
                                   "Description")
                                  (start-date :target-type
                                   maintenance-window-string-date-time
                                   :member-name "StartDate")
                                  (end-date :target-type
                                   maintenance-window-string-date-time
                                   :member-name "EndDate")
                                  (schedule :target-type
                                   maintenance-window-schedule :member-name
                                   "Schedule")
                                  (schedule-timezone :target-type
                                   maintenance-window-timezone :member-name
                                   "ScheduleTimezone")
                                  (schedule-offset :target-type
                                   maintenance-window-offset :member-name
                                   "ScheduleOffset")
                                  (duration :target-type
                                   maintenance-window-duration-hours
                                   :member-name "Duration")
                                  (cutoff :target-type
                                   maintenance-window-cutoff :member-name
                                   "Cutoff")
                                  (allow-unassociated-targets :target-type
                                   maintenance-window-allow-unassociated-targets
                                   :member-name "AllowUnassociatedTargets")
                                  (enabled :target-type
                                   maintenance-window-enabled :member-name
                                   "Enabled"))
                                 (:shape-name "UpdateMaintenanceWindowResult"))

(smithy/sdk/shapes:define-input update-maintenance-window-target-request
                                common-lisp:nil
                                ((window-id :target-type maintenance-window-id
                                  :required common-lisp:t :member-name
                                  "WindowId")
                                 (window-target-id :target-type
                                  maintenance-window-target-id :required
                                  common-lisp:t :member-name "WindowTargetId")
                                 (targets :target-type targets :member-name
                                  "Targets")
                                 (owner-information :target-type
                                  owner-information :member-name
                                  "OwnerInformation")
                                 (name :target-type maintenance-window-name
                                  :member-name "Name")
                                 (description :target-type
                                  maintenance-window-description :member-name
                                  "Description")
                                 (replace :target-type boolean :member-name
                                  "Replace"))
                                (:shape-name
                                 "UpdateMaintenanceWindowTargetRequest"))

(smithy/sdk/shapes:define-output update-maintenance-window-target-result
                                 common-lisp:nil
                                 ((window-id :target-type maintenance-window-id
                                   :member-name "WindowId")
                                  (window-target-id :target-type
                                   maintenance-window-target-id :member-name
                                   "WindowTargetId")
                                  (targets :target-type targets :member-name
                                   "Targets")
                                  (owner-information :target-type
                                   owner-information :member-name
                                   "OwnerInformation")
                                  (name :target-type maintenance-window-name
                                   :member-name "Name")
                                  (description :target-type
                                   maintenance-window-description :member-name
                                   "Description"))
                                 (:shape-name
                                  "UpdateMaintenanceWindowTargetResult"))

(smithy/sdk/shapes:define-input update-maintenance-window-task-request
                                common-lisp:nil
                                ((window-id :target-type maintenance-window-id
                                  :required common-lisp:t :member-name
                                  "WindowId")
                                 (window-task-id :target-type
                                  maintenance-window-task-id :required
                                  common-lisp:t :member-name "WindowTaskId")
                                 (targets :target-type targets :member-name
                                  "Targets")
                                 (task-arn :target-type
                                  maintenance-window-task-arn :member-name
                                  "TaskArn")
                                 (service-role-arn :target-type service-role
                                  :member-name "ServiceRoleArn")
                                 (task-parameters :target-type
                                  maintenance-window-task-parameters
                                  :member-name "TaskParameters")
                                 (task-invocation-parameters :target-type
                                  maintenance-window-task-invocation-parameters
                                  :member-name "TaskInvocationParameters")
                                 (priority :target-type
                                  maintenance-window-task-priority :member-name
                                  "Priority")
                                 (max-concurrency :target-type max-concurrency
                                  :member-name "MaxConcurrency")
                                 (max-errors :target-type max-errors
                                  :member-name "MaxErrors")
                                 (logging-info :target-type logging-info
                                  :member-name "LoggingInfo")
                                 (name :target-type maintenance-window-name
                                  :member-name "Name")
                                 (description :target-type
                                  maintenance-window-description :member-name
                                  "Description")
                                 (replace :target-type boolean :member-name
                                  "Replace")
                                 (cutoff-behavior :target-type
                                  maintenance-window-task-cutoff-behavior
                                  :member-name "CutoffBehavior")
                                 (alarm-configuration :target-type
                                  alarm-configuration :member-name
                                  "AlarmConfiguration"))
                                (:shape-name
                                 "UpdateMaintenanceWindowTaskRequest"))

(smithy/sdk/shapes:define-output update-maintenance-window-task-result
                                 common-lisp:nil
                                 ((window-id :target-type maintenance-window-id
                                   :member-name "WindowId")
                                  (window-task-id :target-type
                                   maintenance-window-task-id :member-name
                                   "WindowTaskId")
                                  (targets :target-type targets :member-name
                                   "Targets")
                                  (task-arn :target-type
                                   maintenance-window-task-arn :member-name
                                   "TaskArn")
                                  (service-role-arn :target-type service-role
                                   :member-name "ServiceRoleArn")
                                  (task-parameters :target-type
                                   maintenance-window-task-parameters
                                   :member-name "TaskParameters")
                                  (task-invocation-parameters :target-type
                                   maintenance-window-task-invocation-parameters
                                   :member-name "TaskInvocationParameters")
                                  (priority :target-type
                                   maintenance-window-task-priority
                                   :member-name "Priority")
                                  (max-concurrency :target-type max-concurrency
                                   :member-name "MaxConcurrency")
                                  (max-errors :target-type max-errors
                                   :member-name "MaxErrors")
                                  (logging-info :target-type logging-info
                                   :member-name "LoggingInfo")
                                  (name :target-type maintenance-window-name
                                   :member-name "Name")
                                  (description :target-type
                                   maintenance-window-description :member-name
                                   "Description")
                                  (cutoff-behavior :target-type
                                   maintenance-window-task-cutoff-behavior
                                   :member-name "CutoffBehavior")
                                  (alarm-configuration :target-type
                                   alarm-configuration :member-name
                                   "AlarmConfiguration"))
                                 (:shape-name
                                  "UpdateMaintenanceWindowTaskResult"))

(smithy/sdk/shapes:define-input update-managed-instance-role-request
                                common-lisp:nil
                                ((instance-id :target-type managed-instance-id
                                  :required common-lisp:t :member-name
                                  "InstanceId")
                                 (iam-role :target-type iam-role :required
                                  common-lisp:t :member-name "IamRole"))
                                (:shape-name
                                 "UpdateManagedInstanceRoleRequest"))

(smithy/sdk/shapes:define-output update-managed-instance-role-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateManagedInstanceRoleResult"))

(smithy/sdk/shapes:define-input update-ops-item-request common-lisp:nil
                                ((description :target-type ops-item-description
                                  :member-name "Description")
                                 (operational-data :target-type
                                  ops-item-operational-data :member-name
                                  "OperationalData")
                                 (operational-data-to-delete :target-type
                                  ops-item-ops-data-keys-list :member-name
                                  "OperationalDataToDelete")
                                 (notifications :target-type
                                  ops-item-notifications :member-name
                                  "Notifications")
                                 (priority :target-type ops-item-priority
                                  :member-name "Priority")
                                 (related-ops-items :target-type
                                  related-ops-items :member-name
                                  "RelatedOpsItems")
                                 (status :target-type ops-item-status
                                  :member-name "Status")
                                 (ops-item-id :target-type ops-item-id
                                  :required common-lisp:t :member-name
                                  "OpsItemId")
                                 (title :target-type ops-item-title
                                  :member-name "Title")
                                 (category :target-type ops-item-category
                                  :member-name "Category")
                                 (severity :target-type ops-item-severity
                                  :member-name "Severity")
                                 (actual-start-time :target-type date-time
                                  :member-name "ActualStartTime")
                                 (actual-end-time :target-type date-time
                                  :member-name "ActualEndTime")
                                 (planned-start-time :target-type date-time
                                  :member-name "PlannedStartTime")
                                 (planned-end-time :target-type date-time
                                  :member-name "PlannedEndTime")
                                 (ops-item-arn :target-type ops-item-arn
                                  :member-name "OpsItemArn"))
                                (:shape-name "UpdateOpsItemRequest"))

(smithy/sdk/shapes:define-output update-ops-item-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateOpsItemResponse"))

(smithy/sdk/shapes:define-input update-ops-metadata-request common-lisp:nil
                                ((ops-metadata-arn :target-type
                                  ops-metadata-arn :required common-lisp:t
                                  :member-name "OpsMetadataArn")
                                 (metadata-to-update :target-type metadata-map
                                  :member-name "MetadataToUpdate")
                                 (keys-to-delete :target-type
                                  metadata-keys-to-delete-list :member-name
                                  "KeysToDelete"))
                                (:shape-name "UpdateOpsMetadataRequest"))

(smithy/sdk/shapes:define-output update-ops-metadata-result common-lisp:nil
                                 ((ops-metadata-arn :target-type
                                   ops-metadata-arn :member-name
                                   "OpsMetadataArn"))
                                 (:shape-name "UpdateOpsMetadataResult"))

(smithy/sdk/shapes:define-input update-patch-baseline-request common-lisp:nil
                                ((baseline-id :target-type baseline-id
                                  :required common-lisp:t :member-name
                                  "BaselineId")
                                 (name :target-type baseline-name :member-name
                                  "Name")
                                 (global-filters :target-type
                                  patch-filter-group :member-name
                                  "GlobalFilters")
                                 (approval-rules :target-type patch-rule-group
                                  :member-name "ApprovalRules")
                                 (approved-patches :target-type patch-id-list
                                  :member-name "ApprovedPatches")
                                 (approved-patches-compliance-level
                                  :target-type patch-compliance-level
                                  :member-name
                                  "ApprovedPatchesComplianceLevel")
                                 (approved-patches-enable-non-security
                                  :target-type boolean :member-name
                                  "ApprovedPatchesEnableNonSecurity")
                                 (rejected-patches :target-type patch-id-list
                                  :member-name "RejectedPatches")
                                 (rejected-patches-action :target-type
                                  patch-action :member-name
                                  "RejectedPatchesAction")
                                 (description :target-type baseline-description
                                  :member-name "Description")
                                 (sources :target-type patch-source-list
                                  :member-name "Sources")
                                 (available-security-updates-compliance-status
                                  :target-type patch-compliance-status
                                  :member-name
                                  "AvailableSecurityUpdatesComplianceStatus")
                                 (replace :target-type boolean :member-name
                                  "Replace"))
                                (:shape-name "UpdatePatchBaselineRequest"))

(smithy/sdk/shapes:define-output update-patch-baseline-result common-lisp:nil
                                 ((baseline-id :target-type baseline-id
                                   :member-name "BaselineId")
                                  (name :target-type baseline-name :member-name
                                   "Name")
                                  (operating-system :target-type
                                   operating-system :member-name
                                   "OperatingSystem")
                                  (global-filters :target-type
                                   patch-filter-group :member-name
                                   "GlobalFilters")
                                  (approval-rules :target-type patch-rule-group
                                   :member-name "ApprovalRules")
                                  (approved-patches :target-type patch-id-list
                                   :member-name "ApprovedPatches")
                                  (approved-patches-compliance-level
                                   :target-type patch-compliance-level
                                   :member-name
                                   "ApprovedPatchesComplianceLevel")
                                  (approved-patches-enable-non-security
                                   :target-type boolean :member-name
                                   "ApprovedPatchesEnableNonSecurity")
                                  (rejected-patches :target-type patch-id-list
                                   :member-name "RejectedPatches")
                                  (rejected-patches-action :target-type
                                   patch-action :member-name
                                   "RejectedPatchesAction")
                                  (created-date :target-type date-time
                                   :member-name "CreatedDate")
                                  (modified-date :target-type date-time
                                   :member-name "ModifiedDate")
                                  (description :target-type
                                   baseline-description :member-name
                                   "Description")
                                  (sources :target-type patch-source-list
                                   :member-name "Sources")
                                  (available-security-updates-compliance-status
                                   :target-type patch-compliance-status
                                   :member-name
                                   "AvailableSecurityUpdatesComplianceStatus"))
                                 (:shape-name "UpdatePatchBaselineResult"))

(smithy/sdk/shapes:define-input update-resource-data-sync-request
                                common-lisp:nil
                                ((sync-name :target-type
                                  resource-data-sync-name :required
                                  common-lisp:t :member-name "SyncName")
                                 (sync-type :target-type
                                  resource-data-sync-type :required
                                  common-lisp:t :member-name "SyncType")
                                 (sync-source :target-type
                                  resource-data-sync-source :required
                                  common-lisp:t :member-name "SyncSource"))
                                (:shape-name "UpdateResourceDataSyncRequest"))

(smithy/sdk/shapes:define-output update-resource-data-sync-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateResourceDataSyncResult"))

(smithy/sdk/shapes:define-input update-service-setting-request common-lisp:nil
                                ((setting-id :target-type service-setting-id
                                  :required common-lisp:t :member-name
                                  "SettingId")
                                 (setting-value :target-type
                                  service-setting-value :required common-lisp:t
                                  :member-name "SettingValue"))
                                (:shape-name "UpdateServiceSettingRequest"))

(smithy/sdk/shapes:define-output update-service-setting-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateServiceSettingResult"))

(smithy/sdk/shapes:define-type url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type valid-next-step smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list valid-next-step-list :member valid-next-step)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (reason-code :target-type string :member-name
                                  "ReasonCode"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type version smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation add-tags-to-resource :shape-name
                                       "AddTagsToResource" :input
                                       add-tags-to-resource-request :output
                                       add-tags-to-resource-result :errors
                                       (internal-server-error
                                        invalid-resource-id
                                        invalid-resource-type
                                        too-many-tags-error too-many-updates))

(smithy/sdk/operation:define-operation associate-ops-item-related-item
                                       :shape-name
                                       "AssociateOpsItemRelatedItem" :input
                                       associate-ops-item-related-item-request
                                       :output
                                       associate-ops-item-related-item-response
                                       :errors
                                       (internal-server-error
                                        ops-item-conflict-exception
                                        ops-item-invalid-parameter-exception
                                        ops-item-limit-exceeded-exception
                                        ops-item-not-found-exception
                                        ops-item-related-item-already-exists-exception))

(smithy/sdk/operation:define-operation cancel-command :shape-name
                                       "CancelCommand" :input
                                       cancel-command-request :output
                                       cancel-command-result :errors
                                       (duplicate-instance-id
                                        internal-server-error
                                        invalid-command-id invalid-instance-id))

(smithy/sdk/operation:define-operation cancel-maintenance-window-execution
                                       :shape-name
                                       "CancelMaintenanceWindowExecution"
                                       :input
                                       cancel-maintenance-window-execution-request
                                       :output
                                       cancel-maintenance-window-execution-result
                                       :errors
                                       (does-not-exist-exception
                                        internal-server-error))

(smithy/sdk/operation:define-operation create-activation :shape-name
                                       "CreateActivation" :input
                                       create-activation-request :output
                                       create-activation-result :errors
                                       (internal-server-error
                                        invalid-parameters))

(smithy/sdk/operation:define-operation create-association :shape-name
                                       "CreateAssociation" :input
                                       create-association-request :output
                                       create-association-result :errors
                                       (association-already-exists
                                        association-limit-exceeded
                                        internal-server-error invalid-document
                                        invalid-document-version
                                        invalid-instance-id
                                        invalid-output-location
                                        invalid-parameters invalid-schedule
                                        invalid-tag invalid-target
                                        invalid-target-maps
                                        unsupported-platform-type))

(smithy/sdk/operation:define-operation create-association-batch :shape-name
                                       "CreateAssociationBatch" :input
                                       create-association-batch-request :output
                                       create-association-batch-result :errors
                                       (association-limit-exceeded
                                        duplicate-instance-id
                                        internal-server-error invalid-document
                                        invalid-document-version
                                        invalid-instance-id
                                        invalid-output-location
                                        invalid-parameters invalid-schedule
                                        invalid-target invalid-target-maps
                                        unsupported-platform-type))

(smithy/sdk/operation:define-operation create-document :shape-name
                                       "CreateDocument" :input
                                       create-document-request :output
                                       create-document-result :errors
                                       (document-already-exists
                                        document-limit-exceeded
                                        internal-server-error
                                        invalid-document-content
                                        invalid-document-schema-version
                                        max-document-size-exceeded
                                        too-many-updates))

(smithy/sdk/operation:define-operation create-maintenance-window :shape-name
                                       "CreateMaintenanceWindow" :input
                                       create-maintenance-window-request
                                       :output create-maintenance-window-result
                                       :errors
                                       (idempotent-parameter-mismatch
                                        internal-server-error
                                        resource-limit-exceeded-exception))

(smithy/sdk/operation:define-operation create-ops-item :shape-name
                                       "CreateOpsItem" :input
                                       create-ops-item-request :output
                                       create-ops-item-response :errors
                                       (internal-server-error
                                        ops-item-access-denied-exception
                                        ops-item-already-exists-exception
                                        ops-item-invalid-parameter-exception
                                        ops-item-limit-exceeded-exception))

(smithy/sdk/operation:define-operation create-ops-metadata :shape-name
                                       "CreateOpsMetadata" :input
                                       create-ops-metadata-request :output
                                       create-ops-metadata-result :errors
                                       (internal-server-error
                                        ops-metadata-already-exists-exception
                                        ops-metadata-invalid-argument-exception
                                        ops-metadata-limit-exceeded-exception
                                        ops-metadata-too-many-updates-exception))

(smithy/sdk/operation:define-operation create-patch-baseline :shape-name
                                       "CreatePatchBaseline" :input
                                       create-patch-baseline-request :output
                                       create-patch-baseline-result :errors
                                       (idempotent-parameter-mismatch
                                        internal-server-error
                                        resource-limit-exceeded-exception))

(smithy/sdk/operation:define-operation create-resource-data-sync :shape-name
                                       "CreateResourceDataSync" :input
                                       create-resource-data-sync-request
                                       :output create-resource-data-sync-result
                                       :errors
                                       (internal-server-error
                                        resource-data-sync-already-exists-exception
                                        resource-data-sync-count-exceeded-exception
                                        resource-data-sync-invalid-configuration-exception))

(smithy/sdk/operation:define-operation delete-activation :shape-name
                                       "DeleteActivation" :input
                                       delete-activation-request :output
                                       delete-activation-result :errors
                                       (internal-server-error
                                        invalid-activation
                                        invalid-activation-id too-many-updates))

(smithy/sdk/operation:define-operation delete-association :shape-name
                                       "DeleteAssociation" :input
                                       delete-association-request :output
                                       delete-association-result :errors
                                       (association-does-not-exist
                                        internal-server-error invalid-document
                                        invalid-instance-id too-many-updates))

(smithy/sdk/operation:define-operation delete-document :shape-name
                                       "DeleteDocument" :input
                                       delete-document-request :output
                                       delete-document-result :errors
                                       (associated-instances
                                        internal-server-error invalid-document
                                        invalid-document-operation
                                        too-many-updates))

(smithy/sdk/operation:define-operation delete-inventory :shape-name
                                       "DeleteInventory" :input
                                       delete-inventory-request :output
                                       delete-inventory-result :errors
                                       (internal-server-error
                                        invalid-delete-inventory-parameters-exception
                                        invalid-inventory-request-exception
                                        invalid-option-exception
                                        invalid-type-name-exception))

(smithy/sdk/operation:define-operation delete-maintenance-window :shape-name
                                       "DeleteMaintenanceWindow" :input
                                       delete-maintenance-window-request
                                       :output delete-maintenance-window-result
                                       :errors (internal-server-error))

(smithy/sdk/operation:define-operation delete-ops-item :shape-name
                                       "DeleteOpsItem" :input
                                       delete-ops-item-request :output
                                       delete-ops-item-response :errors
                                       (internal-server-error
                                        ops-item-invalid-parameter-exception))

(smithy/sdk/operation:define-operation delete-ops-metadata :shape-name
                                       "DeleteOpsMetadata" :input
                                       delete-ops-metadata-request :output
                                       delete-ops-metadata-result :errors
                                       (internal-server-error
                                        ops-metadata-invalid-argument-exception
                                        ops-metadata-not-found-exception))

(smithy/sdk/operation:define-operation delete-parameter :shape-name
                                       "DeleteParameter" :input
                                       delete-parameter-request :output
                                       delete-parameter-result :errors
                                       (internal-server-error
                                        parameter-not-found))

(smithy/sdk/operation:define-operation delete-parameters :shape-name
                                       "DeleteParameters" :input
                                       delete-parameters-request :output
                                       delete-parameters-result :errors
                                       (internal-server-error))

(smithy/sdk/operation:define-operation delete-patch-baseline :shape-name
                                       "DeletePatchBaseline" :input
                                       delete-patch-baseline-request :output
                                       delete-patch-baseline-result :errors
                                       (internal-server-error
                                        resource-in-use-exception))

(smithy/sdk/operation:define-operation delete-resource-data-sync :shape-name
                                       "DeleteResourceDataSync" :input
                                       delete-resource-data-sync-request
                                       :output delete-resource-data-sync-result
                                       :errors
                                       (internal-server-error
                                        resource-data-sync-invalid-configuration-exception
                                        resource-data-sync-not-found-exception))

(smithy/sdk/operation:define-operation delete-resource-policy :shape-name
                                       "DeleteResourcePolicy" :input
                                       delete-resource-policy-request :output
                                       delete-resource-policy-response :errors
                                       (internal-server-error
                                        malformed-resource-policy-document-exception
                                        resource-not-found-exception
                                        resource-policy-conflict-exception
                                        resource-policy-invalid-parameter-exception
                                        resource-policy-not-found-exception))

(smithy/sdk/operation:define-operation deregister-managed-instance :shape-name
                                       "DeregisterManagedInstance" :input
                                       deregister-managed-instance-request
                                       :output
                                       deregister-managed-instance-result
                                       :errors
                                       (internal-server-error
                                        invalid-instance-id))

(smithy/sdk/operation:define-operation
 deregister-patch-baseline-for-patch-group :shape-name
 "DeregisterPatchBaselineForPatchGroup" :input
 deregister-patch-baseline-for-patch-group-request :output
 deregister-patch-baseline-for-patch-group-result :errors
 (internal-server-error invalid-resource-id))

(smithy/sdk/operation:define-operation
 deregister-target-from-maintenance-window :shape-name
 "DeregisterTargetFromMaintenanceWindow" :input
 deregister-target-from-maintenance-window-request :output
 deregister-target-from-maintenance-window-result :errors
 (does-not-exist-exception internal-server-error target-in-use-exception))

(smithy/sdk/operation:define-operation deregister-task-from-maintenance-window
                                       :shape-name
                                       "DeregisterTaskFromMaintenanceWindow"
                                       :input
                                       deregister-task-from-maintenance-window-request
                                       :output
                                       deregister-task-from-maintenance-window-result
                                       :errors
                                       (does-not-exist-exception
                                        internal-server-error))

(smithy/sdk/operation:define-operation describe-activations :shape-name
                                       "DescribeActivations" :input
                                       describe-activations-request :output
                                       describe-activations-result :errors
                                       (internal-server-error invalid-filter
                                        invalid-next-token))

(smithy/sdk/operation:define-operation describe-association :shape-name
                                       "DescribeAssociation" :input
                                       describe-association-request :output
                                       describe-association-result :errors
                                       (association-does-not-exist
                                        internal-server-error
                                        invalid-association-version
                                        invalid-document invalid-instance-id))

(smithy/sdk/operation:define-operation describe-association-execution-targets
                                       :shape-name
                                       "DescribeAssociationExecutionTargets"
                                       :input
                                       describe-association-execution-targets-request
                                       :output
                                       describe-association-execution-targets-result
                                       :errors
                                       (association-does-not-exist
                                        association-execution-does-not-exist
                                        internal-server-error
                                        invalid-next-token))

(smithy/sdk/operation:define-operation describe-association-executions
                                       :shape-name
                                       "DescribeAssociationExecutions" :input
                                       describe-association-executions-request
                                       :output
                                       describe-association-executions-result
                                       :errors
                                       (association-does-not-exist
                                        internal-server-error
                                        invalid-next-token))

(smithy/sdk/operation:define-operation describe-automation-executions
                                       :shape-name
                                       "DescribeAutomationExecutions" :input
                                       describe-automation-executions-request
                                       :output
                                       describe-automation-executions-result
                                       :errors
                                       (internal-server-error
                                        invalid-filter-key invalid-filter-value
                                        invalid-next-token))

(smithy/sdk/operation:define-operation describe-automation-step-executions
                                       :shape-name
                                       "DescribeAutomationStepExecutions"
                                       :input
                                       describe-automation-step-executions-request
                                       :output
                                       describe-automation-step-executions-result
                                       :errors
                                       (automation-execution-not-found-exception
                                        internal-server-error
                                        invalid-filter-key invalid-filter-value
                                        invalid-next-token))

(smithy/sdk/operation:define-operation describe-available-patches :shape-name
                                       "DescribeAvailablePatches" :input
                                       describe-available-patches-request
                                       :output
                                       describe-available-patches-result
                                       :errors (internal-server-error))

(smithy/sdk/operation:define-operation describe-document :shape-name
                                       "DescribeDocument" :input
                                       describe-document-request :output
                                       describe-document-result :errors
                                       (internal-server-error invalid-document
                                        invalid-document-version))

(smithy/sdk/operation:define-operation describe-document-permission :shape-name
                                       "DescribeDocumentPermission" :input
                                       describe-document-permission-request
                                       :output
                                       describe-document-permission-response
                                       :errors
                                       (internal-server-error invalid-document
                                        invalid-document-operation
                                        invalid-next-token
                                        invalid-permission-type))

(smithy/sdk/operation:define-operation describe-effective-instance-associations
                                       :shape-name
                                       "DescribeEffectiveInstanceAssociations"
                                       :input
                                       describe-effective-instance-associations-request
                                       :output
                                       describe-effective-instance-associations-result
                                       :errors
                                       (internal-server-error
                                        invalid-instance-id invalid-next-token))

(smithy/sdk/operation:define-operation
 describe-effective-patches-for-patch-baseline :shape-name
 "DescribeEffectivePatchesForPatchBaseline" :input
 describe-effective-patches-for-patch-baseline-request :output
 describe-effective-patches-for-patch-baseline-result :errors
 (does-not-exist-exception internal-server-error invalid-resource-id
  unsupported-operating-system))

(smithy/sdk/operation:define-operation describe-instance-associations-status
                                       :shape-name
                                       "DescribeInstanceAssociationsStatus"
                                       :input
                                       describe-instance-associations-status-request
                                       :output
                                       describe-instance-associations-status-result
                                       :errors
                                       (internal-server-error
                                        invalid-instance-id invalid-next-token))

(smithy/sdk/operation:define-operation describe-instance-information
                                       :shape-name
                                       "DescribeInstanceInformation" :input
                                       describe-instance-information-request
                                       :output
                                       describe-instance-information-result
                                       :errors
                                       (internal-server-error
                                        invalid-filter-key invalid-instance-id
                                        invalid-instance-information-filter-value
                                        invalid-next-token))

(smithy/sdk/operation:define-operation describe-instance-patch-states
                                       :shape-name
                                       "DescribeInstancePatchStates" :input
                                       describe-instance-patch-states-request
                                       :output
                                       describe-instance-patch-states-result
                                       :errors
                                       (internal-server-error
                                        invalid-next-token))

(smithy/sdk/operation:define-operation
 describe-instance-patch-states-for-patch-group :shape-name
 "DescribeInstancePatchStatesForPatchGroup" :input
 describe-instance-patch-states-for-patch-group-request :output
 describe-instance-patch-states-for-patch-group-result :errors
 (internal-server-error invalid-filter invalid-next-token))

(smithy/sdk/operation:define-operation describe-instance-patches :shape-name
                                       "DescribeInstancePatches" :input
                                       describe-instance-patches-request
                                       :output describe-instance-patches-result
                                       :errors
                                       (internal-server-error invalid-filter
                                        invalid-instance-id invalid-next-token))

(smithy/sdk/operation:define-operation describe-instance-properties :shape-name
                                       "DescribeInstanceProperties" :input
                                       describe-instance-properties-request
                                       :output
                                       describe-instance-properties-result
                                       :errors
                                       (internal-server-error
                                        invalid-activation-id invalid-document
                                        invalid-filter-key invalid-instance-id
                                        invalid-instance-property-filter-value
                                        invalid-next-token))

(smithy/sdk/operation:define-operation describe-inventory-deletions :shape-name
                                       "DescribeInventoryDeletions" :input
                                       describe-inventory-deletions-request
                                       :output
                                       describe-inventory-deletions-result
                                       :errors
                                       (internal-server-error
                                        invalid-deletion-id-exception
                                        invalid-next-token))

(smithy/sdk/operation:define-operation
 describe-maintenance-window-execution-task-invocations :shape-name
 "DescribeMaintenanceWindowExecutionTaskInvocations" :input
 describe-maintenance-window-execution-task-invocations-request :output
 describe-maintenance-window-execution-task-invocations-result :errors
 (does-not-exist-exception internal-server-error))

(smithy/sdk/operation:define-operation
 describe-maintenance-window-execution-tasks :shape-name
 "DescribeMaintenanceWindowExecutionTasks" :input
 describe-maintenance-window-execution-tasks-request :output
 describe-maintenance-window-execution-tasks-result :errors
 (does-not-exist-exception internal-server-error))

(smithy/sdk/operation:define-operation describe-maintenance-window-executions
                                       :shape-name
                                       "DescribeMaintenanceWindowExecutions"
                                       :input
                                       describe-maintenance-window-executions-request
                                       :output
                                       describe-maintenance-window-executions-result
                                       :errors (internal-server-error))

(smithy/sdk/operation:define-operation describe-maintenance-window-schedule
                                       :shape-name
                                       "DescribeMaintenanceWindowSchedule"
                                       :input
                                       describe-maintenance-window-schedule-request
                                       :output
                                       describe-maintenance-window-schedule-result
                                       :errors
                                       (does-not-exist-exception
                                        internal-server-error))

(smithy/sdk/operation:define-operation describe-maintenance-window-targets
                                       :shape-name
                                       "DescribeMaintenanceWindowTargets"
                                       :input
                                       describe-maintenance-window-targets-request
                                       :output
                                       describe-maintenance-window-targets-result
                                       :errors
                                       (does-not-exist-exception
                                        internal-server-error))

(smithy/sdk/operation:define-operation describe-maintenance-window-tasks
                                       :shape-name
                                       "DescribeMaintenanceWindowTasks" :input
                                       describe-maintenance-window-tasks-request
                                       :output
                                       describe-maintenance-window-tasks-result
                                       :errors
                                       (does-not-exist-exception
                                        internal-server-error))

(smithy/sdk/operation:define-operation describe-maintenance-windows :shape-name
                                       "DescribeMaintenanceWindows" :input
                                       describe-maintenance-windows-request
                                       :output
                                       describe-maintenance-windows-result
                                       :errors (internal-server-error))

(smithy/sdk/operation:define-operation describe-maintenance-windows-for-target
                                       :shape-name
                                       "DescribeMaintenanceWindowsForTarget"
                                       :input
                                       describe-maintenance-windows-for-target-request
                                       :output
                                       describe-maintenance-windows-for-target-result
                                       :errors (internal-server-error))

(smithy/sdk/operation:define-operation describe-ops-items :shape-name
                                       "DescribeOpsItems" :input
                                       describe-ops-items-request :output
                                       describe-ops-items-response :errors
                                       (internal-server-error))

(smithy/sdk/operation:define-operation describe-parameters :shape-name
                                       "DescribeParameters" :input
                                       describe-parameters-request :output
                                       describe-parameters-result :errors
                                       (internal-server-error
                                        invalid-filter-key
                                        invalid-filter-option
                                        invalid-filter-value
                                        invalid-next-token))

(smithy/sdk/operation:define-operation describe-patch-baselines :shape-name
                                       "DescribePatchBaselines" :input
                                       describe-patch-baselines-request :output
                                       describe-patch-baselines-result :errors
                                       (internal-server-error))

(smithy/sdk/operation:define-operation describe-patch-group-state :shape-name
                                       "DescribePatchGroupState" :input
                                       describe-patch-group-state-request
                                       :output
                                       describe-patch-group-state-result
                                       :errors
                                       (internal-server-error
                                        invalid-next-token))

(smithy/sdk/operation:define-operation describe-patch-groups :shape-name
                                       "DescribePatchGroups" :input
                                       describe-patch-groups-request :output
                                       describe-patch-groups-result :errors
                                       (internal-server-error))

(smithy/sdk/operation:define-operation describe-patch-properties :shape-name
                                       "DescribePatchProperties" :input
                                       describe-patch-properties-request
                                       :output describe-patch-properties-result
                                       :errors (internal-server-error))

(smithy/sdk/operation:define-operation describe-sessions :shape-name
                                       "DescribeSessions" :input
                                       describe-sessions-request :output
                                       describe-sessions-response :errors
                                       (internal-server-error
                                        invalid-filter-key invalid-next-token))

(smithy/sdk/operation:define-operation disassociate-ops-item-related-item
                                       :shape-name
                                       "DisassociateOpsItemRelatedItem" :input
                                       disassociate-ops-item-related-item-request
                                       :output
                                       disassociate-ops-item-related-item-response
                                       :errors
                                       (internal-server-error
                                        ops-item-conflict-exception
                                        ops-item-invalid-parameter-exception
                                        ops-item-not-found-exception
                                        ops-item-related-item-association-not-found-exception))

(smithy/sdk/operation:define-operation get-access-token :shape-name
                                       "GetAccessToken" :input
                                       get-access-token-request :output
                                       get-access-token-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-automation-execution :shape-name
                                       "GetAutomationExecution" :input
                                       get-automation-execution-request :output
                                       get-automation-execution-result :errors
                                       (automation-execution-not-found-exception
                                        internal-server-error))

(smithy/sdk/operation:define-operation get-calendar-state :shape-name
                                       "GetCalendarState" :input
                                       get-calendar-state-request :output
                                       get-calendar-state-response :errors
                                       (internal-server-error invalid-document
                                        invalid-document-type
                                        unsupported-calendar-exception))

(smithy/sdk/operation:define-operation get-command-invocation :shape-name
                                       "GetCommandInvocation" :input
                                       get-command-invocation-request :output
                                       get-command-invocation-result :errors
                                       (internal-server-error
                                        invalid-command-id invalid-instance-id
                                        invalid-plugin-name
                                        invocation-does-not-exist))

(smithy/sdk/operation:define-operation get-connection-status :shape-name
                                       "GetConnectionStatus" :input
                                       get-connection-status-request :output
                                       get-connection-status-response :errors
                                       (internal-server-error))

(smithy/sdk/operation:define-operation get-default-patch-baseline :shape-name
                                       "GetDefaultPatchBaseline" :input
                                       get-default-patch-baseline-request
                                       :output
                                       get-default-patch-baseline-result
                                       :errors (internal-server-error))

(smithy/sdk/operation:define-operation
 get-deployable-patch-snapshot-for-instance :shape-name
 "GetDeployablePatchSnapshotForInstance" :input
 get-deployable-patch-snapshot-for-instance-request :output
 get-deployable-patch-snapshot-for-instance-result :errors
 (internal-server-error unsupported-feature-required-exception
  unsupported-operating-system))

(smithy/sdk/operation:define-operation get-document :shape-name "GetDocument"
                                       :input get-document-request :output
                                       get-document-result :errors
                                       (internal-server-error invalid-document
                                        invalid-document-version))

(smithy/sdk/operation:define-operation get-execution-preview :shape-name
                                       "GetExecutionPreview" :input
                                       get-execution-preview-request :output
                                       get-execution-preview-response :errors
                                       (internal-server-error
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-inventory :shape-name "GetInventory"
                                       :input get-inventory-request :output
                                       get-inventory-result :errors
                                       (internal-server-error
                                        invalid-aggregator-exception
                                        invalid-filter
                                        invalid-inventory-group-exception
                                        invalid-next-token
                                        invalid-result-attribute-exception
                                        invalid-type-name-exception))

(smithy/sdk/operation:define-operation get-inventory-schema :shape-name
                                       "GetInventorySchema" :input
                                       get-inventory-schema-request :output
                                       get-inventory-schema-result :errors
                                       (internal-server-error
                                        invalid-next-token
                                        invalid-type-name-exception))

(smithy/sdk/operation:define-operation get-maintenance-window :shape-name
                                       "GetMaintenanceWindow" :input
                                       get-maintenance-window-request :output
                                       get-maintenance-window-result :errors
                                       (does-not-exist-exception
                                        internal-server-error))

(smithy/sdk/operation:define-operation get-maintenance-window-execution
                                       :shape-name
                                       "GetMaintenanceWindowExecution" :input
                                       get-maintenance-window-execution-request
                                       :output
                                       get-maintenance-window-execution-result
                                       :errors
                                       (does-not-exist-exception
                                        internal-server-error))

(smithy/sdk/operation:define-operation get-maintenance-window-execution-task
                                       :shape-name
                                       "GetMaintenanceWindowExecutionTask"
                                       :input
                                       get-maintenance-window-execution-task-request
                                       :output
                                       get-maintenance-window-execution-task-result
                                       :errors
                                       (does-not-exist-exception
                                        internal-server-error))

(smithy/sdk/operation:define-operation
 get-maintenance-window-execution-task-invocation :shape-name
 "GetMaintenanceWindowExecutionTaskInvocation" :input
 get-maintenance-window-execution-task-invocation-request :output
 get-maintenance-window-execution-task-invocation-result :errors
 (does-not-exist-exception internal-server-error))

(smithy/sdk/operation:define-operation get-maintenance-window-task :shape-name
                                       "GetMaintenanceWindowTask" :input
                                       get-maintenance-window-task-request
                                       :output
                                       get-maintenance-window-task-result
                                       :errors
                                       (does-not-exist-exception
                                        internal-server-error))

(smithy/sdk/operation:define-operation get-ops-item :shape-name "GetOpsItem"
                                       :input get-ops-item-request :output
                                       get-ops-item-response :errors
                                       (internal-server-error
                                        ops-item-access-denied-exception
                                        ops-item-not-found-exception))

(smithy/sdk/operation:define-operation get-ops-metadata :shape-name
                                       "GetOpsMetadata" :input
                                       get-ops-metadata-request :output
                                       get-ops-metadata-result :errors
                                       (internal-server-error
                                        ops-metadata-invalid-argument-exception
                                        ops-metadata-not-found-exception))

(smithy/sdk/operation:define-operation get-ops-summary :shape-name
                                       "GetOpsSummary" :input
                                       get-ops-summary-request :output
                                       get-ops-summary-result :errors
                                       (internal-server-error
                                        invalid-aggregator-exception
                                        invalid-filter invalid-next-token
                                        invalid-type-name-exception
                                        resource-data-sync-not-found-exception))

(smithy/sdk/operation:define-operation get-parameter :shape-name "GetParameter"
                                       :input get-parameter-request :output
                                       get-parameter-result :errors
                                       (internal-server-error invalid-key-id
                                        parameter-not-found
                                        parameter-version-not-found))

(smithy/sdk/operation:define-operation get-parameter-history :shape-name
                                       "GetParameterHistory" :input
                                       get-parameter-history-request :output
                                       get-parameter-history-result :errors
                                       (internal-server-error invalid-key-id
                                        invalid-next-token parameter-not-found))

(smithy/sdk/operation:define-operation get-parameters :shape-name
                                       "GetParameters" :input
                                       get-parameters-request :output
                                       get-parameters-result :errors
                                       (internal-server-error invalid-key-id))

(smithy/sdk/operation:define-operation get-parameters-by-path :shape-name
                                       "GetParametersByPath" :input
                                       get-parameters-by-path-request :output
                                       get-parameters-by-path-result :errors
                                       (internal-server-error
                                        invalid-filter-key
                                        invalid-filter-option
                                        invalid-filter-value invalid-key-id
                                        invalid-next-token))

(smithy/sdk/operation:define-operation get-patch-baseline :shape-name
                                       "GetPatchBaseline" :input
                                       get-patch-baseline-request :output
                                       get-patch-baseline-result :errors
                                       (does-not-exist-exception
                                        internal-server-error
                                        invalid-resource-id))

(smithy/sdk/operation:define-operation get-patch-baseline-for-patch-group
                                       :shape-name
                                       "GetPatchBaselineForPatchGroup" :input
                                       get-patch-baseline-for-patch-group-request
                                       :output
                                       get-patch-baseline-for-patch-group-result
                                       :errors (internal-server-error))

(smithy/sdk/operation:define-operation get-resource-policies :shape-name
                                       "GetResourcePolicies" :input
                                       get-resource-policies-request :output
                                       get-resource-policies-response :errors
                                       (internal-server-error
                                        resource-not-found-exception
                                        resource-policy-invalid-parameter-exception))

(smithy/sdk/operation:define-operation get-service-setting :shape-name
                                       "GetServiceSetting" :input
                                       get-service-setting-request :output
                                       get-service-setting-result :errors
                                       (internal-server-error
                                        service-setting-not-found))

(smithy/sdk/operation:define-operation label-parameter-version :shape-name
                                       "LabelParameterVersion" :input
                                       label-parameter-version-request :output
                                       label-parameter-version-result :errors
                                       (internal-server-error
                                        parameter-not-found
                                        parameter-version-label-limit-exceeded
                                        parameter-version-not-found
                                        too-many-updates))

(smithy/sdk/operation:define-operation list-association-versions :shape-name
                                       "ListAssociationVersions" :input
                                       list-association-versions-request
                                       :output list-association-versions-result
                                       :errors
                                       (association-does-not-exist
                                        internal-server-error
                                        invalid-next-token))

(smithy/sdk/operation:define-operation list-associations :shape-name
                                       "ListAssociations" :input
                                       list-associations-request :output
                                       list-associations-result :errors
                                       (internal-server-error
                                        invalid-next-token))

(smithy/sdk/operation:define-operation list-command-invocations :shape-name
                                       "ListCommandInvocations" :input
                                       list-command-invocations-request :output
                                       list-command-invocations-result :errors
                                       (internal-server-error
                                        invalid-command-id invalid-filter-key
                                        invalid-instance-id invalid-next-token))

(smithy/sdk/operation:define-operation list-commands :shape-name "ListCommands"
                                       :input list-commands-request :output
                                       list-commands-result :errors
                                       (internal-server-error
                                        invalid-command-id invalid-filter-key
                                        invalid-instance-id invalid-next-token))

(smithy/sdk/operation:define-operation list-compliance-items :shape-name
                                       "ListComplianceItems" :input
                                       list-compliance-items-request :output
                                       list-compliance-items-result :errors
                                       (internal-server-error invalid-filter
                                        invalid-next-token invalid-resource-id
                                        invalid-resource-type))

(smithy/sdk/operation:define-operation list-compliance-summaries :shape-name
                                       "ListComplianceSummaries" :input
                                       list-compliance-summaries-request
                                       :output list-compliance-summaries-result
                                       :errors
                                       (internal-server-error invalid-filter
                                        invalid-next-token))

(smithy/sdk/operation:define-operation list-document-metadata-history
                                       :shape-name
                                       "ListDocumentMetadataHistory" :input
                                       list-document-metadata-history-request
                                       :output
                                       list-document-metadata-history-response
                                       :errors
                                       (internal-server-error invalid-document
                                        invalid-document-version
                                        invalid-next-token))

(smithy/sdk/operation:define-operation list-document-versions :shape-name
                                       "ListDocumentVersions" :input
                                       list-document-versions-request :output
                                       list-document-versions-result :errors
                                       (internal-server-error invalid-document
                                        invalid-next-token))

(smithy/sdk/operation:define-operation list-documents :shape-name
                                       "ListDocuments" :input
                                       list-documents-request :output
                                       list-documents-result :errors
                                       (internal-server-error
                                        invalid-filter-key invalid-next-token))

(smithy/sdk/operation:define-operation list-inventory-entries :shape-name
                                       "ListInventoryEntries" :input
                                       list-inventory-entries-request :output
                                       list-inventory-entries-result :errors
                                       (internal-server-error invalid-filter
                                        invalid-instance-id invalid-next-token
                                        invalid-type-name-exception))

(smithy/sdk/operation:define-operation list-nodes :shape-name "ListNodes"
                                       :input list-nodes-request :output
                                       list-nodes-result :errors
                                       (internal-server-error invalid-filter
                                        invalid-next-token
                                        resource-data-sync-not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation list-nodes-summary :shape-name
                                       "ListNodesSummary" :input
                                       list-nodes-summary-request :output
                                       list-nodes-summary-result :errors
                                       (internal-server-error
                                        invalid-aggregator-exception
                                        invalid-filter invalid-next-token
                                        resource-data-sync-not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation list-ops-item-events :shape-name
                                       "ListOpsItemEvents" :input
                                       list-ops-item-events-request :output
                                       list-ops-item-events-response :errors
                                       (internal-server-error
                                        ops-item-invalid-parameter-exception
                                        ops-item-limit-exceeded-exception
                                        ops-item-not-found-exception))

(smithy/sdk/operation:define-operation list-ops-item-related-items :shape-name
                                       "ListOpsItemRelatedItems" :input
                                       list-ops-item-related-items-request
                                       :output
                                       list-ops-item-related-items-response
                                       :errors
                                       (internal-server-error
                                        ops-item-invalid-parameter-exception))

(smithy/sdk/operation:define-operation list-ops-metadata :shape-name
                                       "ListOpsMetadata" :input
                                       list-ops-metadata-request :output
                                       list-ops-metadata-result :errors
                                       (internal-server-error
                                        ops-metadata-invalid-argument-exception))

(smithy/sdk/operation:define-operation list-resource-compliance-summaries
                                       :shape-name
                                       "ListResourceComplianceSummaries" :input
                                       list-resource-compliance-summaries-request
                                       :output
                                       list-resource-compliance-summaries-result
                                       :errors
                                       (internal-server-error invalid-filter
                                        invalid-next-token))

(smithy/sdk/operation:define-operation list-resource-data-sync :shape-name
                                       "ListResourceDataSync" :input
                                       list-resource-data-sync-request :output
                                       list-resource-data-sync-result :errors
                                       (internal-server-error
                                        invalid-next-token
                                        resource-data-sync-invalid-configuration-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-result :errors
                                       (internal-server-error
                                        invalid-resource-id
                                        invalid-resource-type))

(smithy/sdk/operation:define-operation modify-document-permission :shape-name
                                       "ModifyDocumentPermission" :input
                                       modify-document-permission-request
                                       :output
                                       modify-document-permission-response
                                       :errors
                                       (document-limit-exceeded
                                        document-permission-limit
                                        internal-server-error invalid-document
                                        invalid-permission-type))

(smithy/sdk/operation:define-operation put-compliance-items :shape-name
                                       "PutComplianceItems" :input
                                       put-compliance-items-request :output
                                       put-compliance-items-result :errors
                                       (compliance-type-count-limit-exceeded-exception
                                        internal-server-error
                                        invalid-item-content-exception
                                        invalid-resource-id
                                        invalid-resource-type
                                        item-size-limit-exceeded-exception
                                        total-size-limit-exceeded-exception))

(smithy/sdk/operation:define-operation put-inventory :shape-name "PutInventory"
                                       :input put-inventory-request :output
                                       put-inventory-result :errors
                                       (custom-schema-count-limit-exceeded-exception
                                        internal-server-error
                                        invalid-instance-id
                                        invalid-inventory-item-context-exception
                                        invalid-item-content-exception
                                        invalid-type-name-exception
                                        item-content-mismatch-exception
                                        item-size-limit-exceeded-exception
                                        sub-type-count-limit-exceeded-exception
                                        total-size-limit-exceeded-exception
                                        unsupported-inventory-item-context-exception
                                        unsupported-inventory-schema-version-exception))

(smithy/sdk/operation:define-operation put-parameter :shape-name "PutParameter"
                                       :input put-parameter-request :output
                                       put-parameter-result :errors
                                       (hierarchy-level-limit-exceeded-exception
                                        hierarchy-type-mismatch-exception
                                        incompatible-policy-exception
                                        internal-server-error
                                        invalid-allowed-pattern-exception
                                        invalid-key-id
                                        invalid-policy-attribute-exception
                                        invalid-policy-type-exception
                                        parameter-already-exists
                                        parameter-limit-exceeded
                                        parameter-max-version-limit-exceeded
                                        parameter-pattern-mismatch-exception
                                        policies-limit-exceeded-exception
                                        too-many-updates
                                        unsupported-parameter-type))

(smithy/sdk/operation:define-operation put-resource-policy :shape-name
                                       "PutResourcePolicy" :input
                                       put-resource-policy-request :output
                                       put-resource-policy-response :errors
                                       (internal-server-error
                                        malformed-resource-policy-document-exception
                                        resource-not-found-exception
                                        resource-policy-conflict-exception
                                        resource-policy-invalid-parameter-exception
                                        resource-policy-limit-exceeded-exception
                                        resource-policy-not-found-exception))

(smithy/sdk/operation:define-operation register-default-patch-baseline
                                       :shape-name
                                       "RegisterDefaultPatchBaseline" :input
                                       register-default-patch-baseline-request
                                       :output
                                       register-default-patch-baseline-result
                                       :errors
                                       (does-not-exist-exception
                                        internal-server-error
                                        invalid-resource-id))

(smithy/sdk/operation:define-operation register-patch-baseline-for-patch-group
                                       :shape-name
                                       "RegisterPatchBaselineForPatchGroup"
                                       :input
                                       register-patch-baseline-for-patch-group-request
                                       :output
                                       register-patch-baseline-for-patch-group-result
                                       :errors
                                       (already-exists-exception
                                        does-not-exist-exception
                                        internal-server-error
                                        invalid-resource-id
                                        resource-limit-exceeded-exception))

(smithy/sdk/operation:define-operation register-target-with-maintenance-window
                                       :shape-name
                                       "RegisterTargetWithMaintenanceWindow"
                                       :input
                                       register-target-with-maintenance-window-request
                                       :output
                                       register-target-with-maintenance-window-result
                                       :errors
                                       (does-not-exist-exception
                                        idempotent-parameter-mismatch
                                        internal-server-error
                                        resource-limit-exceeded-exception))

(smithy/sdk/operation:define-operation register-task-with-maintenance-window
                                       :shape-name
                                       "RegisterTaskWithMaintenanceWindow"
                                       :input
                                       register-task-with-maintenance-window-request
                                       :output
                                       register-task-with-maintenance-window-result
                                       :errors
                                       (does-not-exist-exception
                                        feature-not-available-exception
                                        idempotent-parameter-mismatch
                                        internal-server-error
                                        resource-limit-exceeded-exception))

(smithy/sdk/operation:define-operation remove-tags-from-resource :shape-name
                                       "RemoveTagsFromResource" :input
                                       remove-tags-from-resource-request
                                       :output remove-tags-from-resource-result
                                       :errors
                                       (internal-server-error
                                        invalid-resource-id
                                        invalid-resource-type too-many-updates))

(smithy/sdk/operation:define-operation reset-service-setting :shape-name
                                       "ResetServiceSetting" :input
                                       reset-service-setting-request :output
                                       reset-service-setting-result :errors
                                       (internal-server-error
                                        service-setting-not-found
                                        too-many-updates))

(smithy/sdk/operation:define-operation resume-session :shape-name
                                       "ResumeSession" :input
                                       resume-session-request :output
                                       resume-session-response :errors
                                       (does-not-exist-exception
                                        internal-server-error))

(smithy/sdk/operation:define-operation send-automation-signal :shape-name
                                       "SendAutomationSignal" :input
                                       send-automation-signal-request :output
                                       send-automation-signal-result :errors
                                       (automation-execution-not-found-exception
                                        automation-step-not-found-exception
                                        internal-server-error
                                        invalid-automation-signal-exception))

(smithy/sdk/operation:define-operation send-command :shape-name "SendCommand"
                                       :input send-command-request :output
                                       send-command-result :errors
                                       (duplicate-instance-id
                                        internal-server-error invalid-document
                                        invalid-document-version
                                        invalid-instance-id
                                        invalid-notification-config
                                        invalid-output-folder
                                        invalid-parameters invalid-role
                                        max-document-size-exceeded
                                        unsupported-platform-type))

(smithy/sdk/operation:define-operation start-access-request :shape-name
                                       "StartAccessRequest" :input
                                       start-access-request-request :output
                                       start-access-request-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation start-associations-once :shape-name
                                       "StartAssociationsOnce" :input
                                       start-associations-once-request :output
                                       start-associations-once-result :errors
                                       (association-does-not-exist
                                        invalid-association))

(smithy/sdk/operation:define-operation start-automation-execution :shape-name
                                       "StartAutomationExecution" :input
                                       start-automation-execution-request
                                       :output
                                       start-automation-execution-result
                                       :errors
                                       (automation-definition-not-found-exception
                                        automation-definition-version-not-found-exception
                                        automation-execution-limit-exceeded-exception
                                        idempotent-parameter-mismatch
                                        internal-server-error
                                        invalid-automation-execution-parameters-exception
                                        invalid-target))

(smithy/sdk/operation:define-operation start-change-request-execution
                                       :shape-name
                                       "StartChangeRequestExecution" :input
                                       start-change-request-execution-request
                                       :output
                                       start-change-request-execution-result
                                       :errors
                                       (automation-definition-not-approved-exception
                                        automation-definition-not-found-exception
                                        automation-definition-version-not-found-exception
                                        automation-execution-limit-exceeded-exception
                                        idempotent-parameter-mismatch
                                        internal-server-error
                                        invalid-automation-execution-parameters-exception))

(smithy/sdk/operation:define-operation start-execution-preview :shape-name
                                       "StartExecutionPreview" :input
                                       start-execution-preview-request :output
                                       start-execution-preview-response :errors
                                       (internal-server-error
                                        validation-exception))

(smithy/sdk/operation:define-operation start-session :shape-name "StartSession"
                                       :input start-session-request :output
                                       start-session-response :errors
                                       (internal-server-error invalid-document
                                        target-not-connected))

(smithy/sdk/operation:define-operation stop-automation-execution :shape-name
                                       "StopAutomationExecution" :input
                                       stop-automation-execution-request
                                       :output stop-automation-execution-result
                                       :errors
                                       (automation-execution-not-found-exception
                                        internal-server-error
                                        invalid-automation-status-update-exception))

(smithy/sdk/operation:define-operation terminate-session :shape-name
                                       "TerminateSession" :input
                                       terminate-session-request :output
                                       terminate-session-response :errors
                                       (internal-server-error))

(smithy/sdk/operation:define-operation unlabel-parameter-version :shape-name
                                       "UnlabelParameterVersion" :input
                                       unlabel-parameter-version-request
                                       :output unlabel-parameter-version-result
                                       :errors
                                       (internal-server-error
                                        parameter-not-found
                                        parameter-version-not-found
                                        too-many-updates))

(smithy/sdk/operation:define-operation update-association :shape-name
                                       "UpdateAssociation" :input
                                       update-association-request :output
                                       update-association-result :errors
                                       (association-does-not-exist
                                        association-version-limit-exceeded
                                        internal-server-error
                                        invalid-association-version
                                        invalid-document
                                        invalid-document-version
                                        invalid-output-location
                                        invalid-parameters invalid-schedule
                                        invalid-target invalid-target-maps
                                        invalid-update too-many-updates))

(smithy/sdk/operation:define-operation update-association-status :shape-name
                                       "UpdateAssociationStatus" :input
                                       update-association-status-request
                                       :output update-association-status-result
                                       :errors
                                       (association-does-not-exist
                                        internal-server-error invalid-document
                                        invalid-instance-id status-unchanged
                                        too-many-updates))

(smithy/sdk/operation:define-operation update-document :shape-name
                                       "UpdateDocument" :input
                                       update-document-request :output
                                       update-document-result :errors
                                       (document-version-limit-exceeded
                                        duplicate-document-content
                                        duplicate-document-version-name
                                        internal-server-error invalid-document
                                        invalid-document-content
                                        invalid-document-operation
                                        invalid-document-schema-version
                                        invalid-document-version
                                        max-document-size-exceeded))

(smithy/sdk/operation:define-operation update-document-default-version
                                       :shape-name
                                       "UpdateDocumentDefaultVersion" :input
                                       update-document-default-version-request
                                       :output
                                       update-document-default-version-result
                                       :errors
                                       (internal-server-error invalid-document
                                        invalid-document-schema-version
                                        invalid-document-version))

(smithy/sdk/operation:define-operation update-document-metadata :shape-name
                                       "UpdateDocumentMetadata" :input
                                       update-document-metadata-request :output
                                       update-document-metadata-response
                                       :errors
                                       (internal-server-error invalid-document
                                        invalid-document-operation
                                        invalid-document-version
                                        too-many-updates))

(smithy/sdk/operation:define-operation update-maintenance-window :shape-name
                                       "UpdateMaintenanceWindow" :input
                                       update-maintenance-window-request
                                       :output update-maintenance-window-result
                                       :errors
                                       (does-not-exist-exception
                                        internal-server-error))

(smithy/sdk/operation:define-operation update-maintenance-window-target
                                       :shape-name
                                       "UpdateMaintenanceWindowTarget" :input
                                       update-maintenance-window-target-request
                                       :output
                                       update-maintenance-window-target-result
                                       :errors
                                       (does-not-exist-exception
                                        internal-server-error))

(smithy/sdk/operation:define-operation update-maintenance-window-task
                                       :shape-name
                                       "UpdateMaintenanceWindowTask" :input
                                       update-maintenance-window-task-request
                                       :output
                                       update-maintenance-window-task-result
                                       :errors
                                       (does-not-exist-exception
                                        internal-server-error))

(smithy/sdk/operation:define-operation update-managed-instance-role :shape-name
                                       "UpdateManagedInstanceRole" :input
                                       update-managed-instance-role-request
                                       :output
                                       update-managed-instance-role-result
                                       :errors
                                       (internal-server-error
                                        invalid-instance-id))

(smithy/sdk/operation:define-operation update-ops-item :shape-name
                                       "UpdateOpsItem" :input
                                       update-ops-item-request :output
                                       update-ops-item-response :errors
                                       (internal-server-error
                                        ops-item-access-denied-exception
                                        ops-item-already-exists-exception
                                        ops-item-conflict-exception
                                        ops-item-invalid-parameter-exception
                                        ops-item-limit-exceeded-exception
                                        ops-item-not-found-exception))

(smithy/sdk/operation:define-operation update-ops-metadata :shape-name
                                       "UpdateOpsMetadata" :input
                                       update-ops-metadata-request :output
                                       update-ops-metadata-result :errors
                                       (internal-server-error
                                        ops-metadata-invalid-argument-exception
                                        ops-metadata-key-limit-exceeded-exception
                                        ops-metadata-not-found-exception
                                        ops-metadata-too-many-updates-exception))

(smithy/sdk/operation:define-operation update-patch-baseline :shape-name
                                       "UpdatePatchBaseline" :input
                                       update-patch-baseline-request :output
                                       update-patch-baseline-result :errors
                                       (does-not-exist-exception
                                        internal-server-error))

(smithy/sdk/operation:define-operation update-resource-data-sync :shape-name
                                       "UpdateResourceDataSync" :input
                                       update-resource-data-sync-request
                                       :output update-resource-data-sync-result
                                       :errors
                                       (internal-server-error
                                        resource-data-sync-conflict-exception
                                        resource-data-sync-invalid-configuration-exception
                                        resource-data-sync-not-found-exception))

(smithy/sdk/operation:define-operation update-service-setting :shape-name
                                       "UpdateServiceSetting" :input
                                       update-service-setting-request :output
                                       update-service-setting-result :errors
                                       (internal-server-error
                                        service-setting-not-found
                                        too-many-updates))
