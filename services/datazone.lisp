(uiop/package:define-package #:pira/datazone (:use)
                             (:export #:accept-choice #:accept-choices
                              #:accept-predictions #:accept-predictions-input
                              #:accept-predictions-output #:accept-rule
                              #:accept-rule-behavior
                              #:accept-subscription-request
                              #:accept-subscription-request-input
                              #:accept-subscription-request-output
                              #:accepted-asset-scope #:accepted-asset-scopes
                              #:access-denied-exception #:action-link
                              #:action-parameters #:add-entity-owner
                              #:add-entity-owner-input
                              #:add-entity-owner-output #:add-policy-grant
                              #:add-policy-grant-input
                              #:add-policy-grant-output
                              #:add-to-project-member-pool-policy-grant-detail
                              #:aggregation-attribute-display-value
                              #:aggregation-attribute-value
                              #:aggregation-display-value #:aggregation-list
                              #:aggregation-list-item #:aggregation-output
                              #:aggregation-output-item
                              #:aggregation-output-items
                              #:aggregation-output-list
                              #:all-domain-units-grant-filter
                              #:all-users-grant-filter #:applicable-asset-types
                              #:asset #:asset-filter-configuration
                              #:asset-filter-summary #:asset-filters #:asset-id
                              #:asset-identifier
                              #:asset-in-data-product-listing-item
                              #:asset-in-data-product-listing-items
                              #:asset-item #:asset-item-additional-attributes
                              #:asset-listing #:asset-listing-details
                              #:asset-listing-item
                              #:asset-listing-item-additional-attributes
                              #:asset-name #:asset-revision #:asset-revisions
                              #:asset-scope #:asset-target-name-map
                              #:asset-target-names #:asset-type
                              #:asset-type-identifier #:asset-type-identifiers
                              #:asset-type-item #:asset-types-for-rule
                              #:associate-environment-role
                              #:associate-environment-role-input
                              #:associate-environment-role-output
                              #:athena-properties-input
                              #:athena-properties-output
                              #:athena-properties-patch #:attribute #:auth-type
                              #:authentication-configuration
                              #:authentication-configuration-input
                              #:authentication-configuration-patch
                              #:authentication-type
                              #:authorization-code-properties
                              #:authorized-principal-identifier
                              #:authorized-principal-identifiers #:aws-account
                              #:aws-account-id #:aws-console-link-parameters
                              #:aws-location #:aws-region
                              #:basic-authentication-credentials
                              #:business-name-generation-configuration
                              #:cancel-metadata-generation-run
                              #:cancel-metadata-generation-run-input
                              #:cancel-metadata-generation-run-output
                              #:cancel-subscription #:cancel-subscription-input
                              #:cancel-subscription-output #:change-action
                              #:client-token #:cloud-formation-properties
                              #:column-filter-configuration #:column-name-list
                              #:compute-environments
                              #:compute-environments-list
                              #:configurable-action-parameter
                              #:configurable-action-parameter-list
                              #:configurable-action-type-authorization
                              #:configurable-environment-action
                              #:conflict-exception #:connection-credentials
                              #:connection-id #:connection-name
                              #:connection-properties
                              #:connection-properties-input
                              #:connection-properties-output
                              #:connection-properties-patch #:connection-status
                              #:connection-summaries #:connection-summary
                              #:connection-type #:create-asset
                              #:create-asset-filter #:create-asset-filter-input
                              #:create-asset-filter-output #:create-asset-input
                              #:create-asset-output #:create-asset-revision
                              #:create-asset-revision-input
                              #:create-asset-revision-output
                              #:create-asset-type #:create-asset-type-input
                              #:create-asset-type-output
                              #:create-asset-type-policy-grant-detail
                              #:create-connection #:create-connection-input
                              #:create-connection-output #:create-data-product
                              #:create-data-product-input
                              #:create-data-product-output
                              #:create-data-product-revision
                              #:create-data-product-revision-input
                              #:create-data-product-revision-output
                              #:create-data-source #:create-data-source-input
                              #:create-data-source-output #:create-domain
                              #:create-domain-input #:create-domain-output
                              #:create-domain-unit #:create-domain-unit-input
                              #:create-domain-unit-output
                              #:create-domain-unit-policy-grant-detail
                              #:create-environment #:create-environment-action
                              #:create-environment-action-input
                              #:create-environment-action-output
                              #:create-environment-input
                              #:create-environment-output
                              #:create-environment-profile
                              #:create-environment-profile-input
                              #:create-environment-profile-output
                              #:create-environment-profile-policy-grant-detail
                              #:create-form-type #:create-form-type-input
                              #:create-form-type-output
                              #:create-form-type-policy-grant-detail
                              #:create-glossary #:create-glossary-input
                              #:create-glossary-output
                              #:create-glossary-policy-grant-detail
                              #:create-glossary-term
                              #:create-glossary-term-input
                              #:create-glossary-term-output
                              #:create-group-profile
                              #:create-group-profile-input
                              #:create-group-profile-output
                              #:create-listing-change-set
                              #:create-listing-change-set-input
                              #:create-listing-change-set-output
                              #:create-project
                              #:create-project-from-project-profile-policy-grant-detail
                              #:create-project-input
                              #:create-project-membership
                              #:create-project-membership-input
                              #:create-project-membership-output
                              #:create-project-output
                              #:create-project-policy-grant-detail
                              #:create-project-profile
                              #:create-project-profile-input
                              #:create-project-profile-output #:create-rule
                              #:create-rule-input #:create-rule-output
                              #:create-subscription-grant
                              #:create-subscription-grant-input
                              #:create-subscription-grant-output
                              #:create-subscription-request
                              #:create-subscription-request-input
                              #:create-subscription-request-output
                              #:create-subscription-target
                              #:create-subscription-target-input
                              #:create-subscription-target-output
                              #:create-user-profile #:create-user-profile-input
                              #:create-user-profile-output #:created-at
                              #:created-by #:credential-map #:cron-string
                              #:custom-parameter #:custom-parameter-list
                              #:data-asset-activity-status
                              #:data-point-identifier #:data-product
                              #:data-product-description #:data-product-id
                              #:data-product-item
                              #:data-product-item-additional-attributes
                              #:data-product-item-type #:data-product-items
                              #:data-product-listing
                              #:data-product-listing-item
                              #:data-product-listing-item-additional-attributes
                              #:data-product-name #:data-product-result-item
                              #:data-product-revision #:data-product-revisions
                              #:data-product-status #:data-source
                              #:data-source-configuration-input
                              #:data-source-configuration-output
                              #:data-source-error-message
                              #:data-source-error-type #:data-source-id
                              #:data-source-run #:data-source-run-activities
                              #:data-source-run-activity #:data-source-run-id
                              #:data-source-run-lineage-summary
                              #:data-source-run-status
                              #:data-source-run-summaries
                              #:data-source-run-summary #:data-source-run-type
                              #:data-source-status #:data-source-summaries
                              #:data-source-summary #:data-source-type
                              #:data-zone #:data-zone-entity-type #:date-time
                              #:decision-comment #:delete-asset
                              #:delete-asset-filter #:delete-asset-filter-input
                              #:delete-asset-input #:delete-asset-output
                              #:delete-asset-type #:delete-asset-type-input
                              #:delete-asset-type-output #:delete-connection
                              #:delete-connection-input
                              #:delete-connection-output #:delete-data-product
                              #:delete-data-product-input
                              #:delete-data-product-output #:delete-data-source
                              #:delete-data-source-input
                              #:delete-data-source-output #:delete-domain
                              #:delete-domain-input #:delete-domain-output
                              #:delete-domain-unit #:delete-domain-unit-input
                              #:delete-domain-unit-output #:delete-environment
                              #:delete-environment-action
                              #:delete-environment-action-input
                              #:delete-environment-blueprint-configuration
                              #:delete-environment-blueprint-configuration-input
                              #:delete-environment-blueprint-configuration-output
                              #:delete-environment-input
                              #:delete-environment-profile
                              #:delete-environment-profile-input
                              #:delete-form-type #:delete-form-type-input
                              #:delete-form-type-output #:delete-glossary
                              #:delete-glossary-input #:delete-glossary-output
                              #:delete-glossary-term
                              #:delete-glossary-term-input
                              #:delete-glossary-term-output #:delete-listing
                              #:delete-listing-input #:delete-listing-output
                              #:delete-project #:delete-project-input
                              #:delete-project-membership
                              #:delete-project-membership-input
                              #:delete-project-membership-output
                              #:delete-project-output #:delete-project-profile
                              #:delete-project-profile-input
                              #:delete-project-profile-output #:delete-rule
                              #:delete-rule-input #:delete-rule-output
                              #:delete-subscription-grant
                              #:delete-subscription-grant-input
                              #:delete-subscription-grant-output
                              #:delete-subscription-request
                              #:delete-subscription-request-input
                              #:delete-subscription-target
                              #:delete-subscription-target-input
                              #:delete-time-series-data-points
                              #:delete-time-series-data-points-input
                              #:delete-time-series-data-points-output
                              #:deployment #:deployment-message
                              #:deployment-messages-list #:deployment-mode
                              #:deployment-order #:deployment-properties
                              #:deployment-status #:deployment-type
                              #:description #:detailed-glossary-term
                              #:detailed-glossary-terms
                              #:disassociate-environment-role
                              #:disassociate-environment-role-input
                              #:disassociate-environment-role-output #:domain
                              #:domain-description #:domain-id #:domain-name
                              #:domain-status #:domain-summaries
                              #:domain-summary #:domain-unit
                              #:domain-unit-description
                              #:domain-unit-designation
                              #:domain-unit-filter-for-project
                              #:domain-unit-grant-filter
                              #:domain-unit-group-properties #:domain-unit-id
                              #:domain-unit-ids #:domain-unit-name
                              #:domain-unit-owner-properties
                              #:domain-unit-owners
                              #:domain-unit-policy-grant-principal
                              #:domain-unit-summaries #:domain-unit-summary
                              #:domain-unit-target
                              #:domain-unit-user-properties #:domain-version
                              #:edge-direction #:edited-value #:enable-setting
                              #:enabled-region-list #:entity-id
                              #:entity-identifier #:entity-owners #:entity-type
                              #:environment-action-id #:environment-action-list
                              #:environment-action-summary
                              #:environment-blueprint-configuration
                              #:environment-blueprint-configuration-item
                              #:environment-blueprint-configurations
                              #:environment-blueprint-id
                              #:environment-blueprint-name
                              #:environment-blueprint-summaries
                              #:environment-blueprint-summary
                              #:environment-configuration
                              #:environment-configuration-id
                              #:environment-configuration-name
                              #:environment-configuration-parameter
                              #:environment-configuration-parameter-name
                              #:environment-configuration-parameters-details
                              #:environment-configuration-parameters-list
                              #:environment-configuration-user-parameter
                              #:environment-configuration-user-parameters-list
                              #:environment-configurations-list
                              #:environment-deployment-details
                              #:environment-error #:environment-failure-reasons
                              #:environment-failure-reasons-list
                              #:environment-id #:environment-name
                              #:environment-parameter
                              #:environment-parameters-list
                              #:environment-profile-id
                              #:environment-profile-name
                              #:environment-profile-summaries
                              #:environment-profile-summary
                              #:environment-status #:environment-summaries
                              #:environment-summary #:equal-to-expression
                              #:error-message #:event-summary
                              #:external-identifier
                              #:failed-query-processing-error-messages
                              #:failure-cause #:failure-reasons #:filter
                              #:filter-clause #:filter-expression
                              #:filter-expression-type #:filter-expressions
                              #:filter-id #:filter-ids #:filter-list
                              #:filter-name #:filter-status #:first-name
                              #:form-entry-input #:form-entry-output
                              #:form-input #:form-input-list #:form-name
                              #:form-output #:form-output-list #:form-type
                              #:form-type-data #:form-type-identifier
                              #:form-type-name #:form-type-status #:forms
                              #:forms-input-map #:forms-output-map #:get-asset
                              #:get-asset-filter #:get-asset-filter-input
                              #:get-asset-filter-output #:get-asset-input
                              #:get-asset-output #:get-asset-type
                              #:get-asset-type-input #:get-asset-type-output
                              #:get-connection #:get-connection-input
                              #:get-connection-output #:get-data-product
                              #:get-data-product-input
                              #:get-data-product-output #:get-data-source
                              #:get-data-source-input #:get-data-source-output
                              #:get-data-source-run #:get-data-source-run-input
                              #:get-data-source-run-output #:get-domain
                              #:get-domain-input #:get-domain-output
                              #:get-domain-unit #:get-domain-unit-input
                              #:get-domain-unit-output #:get-environment
                              #:get-environment-action
                              #:get-environment-action-input
                              #:get-environment-action-output
                              #:get-environment-blueprint
                              #:get-environment-blueprint-configuration
                              #:get-environment-blueprint-configuration-input
                              #:get-environment-blueprint-configuration-output
                              #:get-environment-blueprint-input
                              #:get-environment-blueprint-output
                              #:get-environment-credentials
                              #:get-environment-credentials-input
                              #:get-environment-credentials-output
                              #:get-environment-input #:get-environment-output
                              #:get-environment-profile
                              #:get-environment-profile-input
                              #:get-environment-profile-output #:get-form-type
                              #:get-form-type-input #:get-form-type-output
                              #:get-glossary #:get-glossary-input
                              #:get-glossary-output #:get-glossary-term
                              #:get-glossary-term-input
                              #:get-glossary-term-output #:get-group-profile
                              #:get-group-profile-input
                              #:get-group-profile-output
                              #:get-iam-portal-login-url
                              #:get-iam-portal-login-url-input
                              #:get-iam-portal-login-url-output #:get-job-run
                              #:get-job-run-input #:get-job-run-output
                              #:get-lineage-event #:get-lineage-event-input
                              #:get-lineage-event-output #:get-lineage-node
                              #:get-lineage-node-input
                              #:get-lineage-node-output #:get-listing
                              #:get-listing-input #:get-listing-output
                              #:get-metadata-generation-run
                              #:get-metadata-generation-run-input
                              #:get-metadata-generation-run-output
                              #:get-project #:get-project-input
                              #:get-project-output #:get-project-profile
                              #:get-project-profile-input
                              #:get-project-profile-output #:get-rule
                              #:get-rule-input #:get-rule-output
                              #:get-subscription #:get-subscription-grant
                              #:get-subscription-grant-input
                              #:get-subscription-grant-output
                              #:get-subscription-input
                              #:get-subscription-output
                              #:get-subscription-request-details
                              #:get-subscription-request-details-input
                              #:get-subscription-request-details-output
                              #:get-subscription-target
                              #:get-subscription-target-input
                              #:get-subscription-target-output
                              #:get-time-series-data-point
                              #:get-time-series-data-point-input
                              #:get-time-series-data-point-output
                              #:get-user-profile #:get-user-profile-input
                              #:get-user-profile-output #:glossary
                              #:glossary-description #:glossary-id
                              #:glossary-item
                              #:glossary-item-additional-attributes
                              #:glossary-name #:glossary-status #:glossary-term
                              #:glossary-term-id #:glossary-term-item
                              #:glossary-term-item-additional-attributes
                              #:glossary-term-name #:glossary-term-status
                              #:glossary-terms #:glue-connection
                              #:glue-connection-input #:glue-connection-patch
                              #:glue-connection-type #:glue-oauth2credentials
                              #:glue-properties-input #:glue-properties-output
                              #:glue-properties-patch
                              #:glue-run-configuration-input
                              #:glue-run-configuration-output
                              #:glue-self-grant-status-output #:governance-type
                              #:granted-entity #:granted-entity-input
                              #:greater-than-expression
                              #:greater-than-or-equal-to-expression
                              #:group-details #:group-identifier
                              #:group-policy-grant-principal #:group-profile-id
                              #:group-profile-name #:group-profile-status
                              #:group-profile-summaries #:group-profile-summary
                              #:group-search-text #:group-search-type
                              #:hyper-pod-orchestrator
                              #:hyper-pod-properties-input
                              #:hyper-pod-properties-output
                              #:iam-properties-input #:iam-properties-output
                              #:iam-properties-patch #:iam-role-arn
                              #:iam-user-profile-details #:import #:import-list
                              #:in-expression #:internal-server-exception
                              #:inventory-search-scope #:is-not-null-expression
                              #:is-null-expression #:item-glossary-terms
                              #:job-run-details #:job-run-error #:job-run-mode
                              #:job-run-status #:job-run-summaries
                              #:job-run-summary #:job-type #:kms-key-arn
                              #:lake-formation-configuration #:last-name
                              #:less-than-expression
                              #:less-than-or-equal-to-expression
                              #:like-expression #:lineage-event
                              #:lineage-event-error-message
                              #:lineage-event-identifier
                              #:lineage-event-processing-status
                              #:lineage-event-summaries #:lineage-event-summary
                              #:lineage-import-status #:lineage-info
                              #:lineage-node-id #:lineage-node-identifier
                              #:lineage-node-reference
                              #:lineage-node-reference-list
                              #:lineage-node-summaries #:lineage-node-summary
                              #:lineage-node-type-item #:lineage-run-details
                              #:lineage-sql-query-run-details
                              #:lineage-sync-schedule #:list-asset-filters
                              #:list-asset-filters-input
                              #:list-asset-filters-output
                              #:list-asset-revisions
                              #:list-asset-revisions-input
                              #:list-asset-revisions-output #:list-connections
                              #:list-connections-input
                              #:list-connections-output
                              #:list-data-product-revisions
                              #:list-data-product-revisions-input
                              #:list-data-product-revisions-output
                              #:list-data-source-run-activities
                              #:list-data-source-run-activities-input
                              #:list-data-source-run-activities-output
                              #:list-data-source-runs
                              #:list-data-source-runs-input
                              #:list-data-source-runs-output
                              #:list-data-sources #:list-data-sources-input
                              #:list-data-sources-output
                              #:list-domain-units-for-parent
                              #:list-domain-units-for-parent-input
                              #:list-domain-units-for-parent-output
                              #:list-domains #:list-domains-input
                              #:list-domains-output #:list-entity-owners
                              #:list-entity-owners-input
                              #:list-entity-owners-output
                              #:list-environment-action-summaries
                              #:list-environment-actions
                              #:list-environment-actions-input
                              #:list-environment-actions-output
                              #:list-environment-blueprint-configurations
                              #:list-environment-blueprint-configurations-input
                              #:list-environment-blueprint-configurations-output
                              #:list-environment-blueprints
                              #:list-environment-blueprints-input
                              #:list-environment-blueprints-output
                              #:list-environment-profiles
                              #:list-environment-profiles-input
                              #:list-environment-profiles-output
                              #:list-environments #:list-environments-input
                              #:list-environments-output #:list-job-runs
                              #:list-job-runs-input #:list-job-runs-output
                              #:list-lineage-events #:list-lineage-events-input
                              #:list-lineage-events-output
                              #:list-lineage-node-history
                              #:list-lineage-node-history-input
                              #:list-lineage-node-history-output
                              #:list-metadata-generation-runs
                              #:list-metadata-generation-runs-input
                              #:list-metadata-generation-runs-output
                              #:list-notifications #:list-notifications-input
                              #:list-notifications-output #:list-policy-grants
                              #:list-policy-grants-input
                              #:list-policy-grants-output
                              #:list-project-memberships
                              #:list-project-memberships-input
                              #:list-project-memberships-output
                              #:list-project-profiles
                              #:list-project-profiles-input
                              #:list-project-profiles-output #:list-projects
                              #:list-projects-input #:list-projects-output
                              #:list-rules #:list-rules-input
                              #:list-rules-output #:list-subscription-grants
                              #:list-subscription-grants-input
                              #:list-subscription-grants-output
                              #:list-subscription-requests
                              #:list-subscription-requests-input
                              #:list-subscription-requests-output
                              #:list-subscription-targets
                              #:list-subscription-targets-input
                              #:list-subscription-targets-output
                              #:list-subscriptions #:list-subscriptions-input
                              #:list-subscriptions-output
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:list-time-series-data-points
                              #:list-time-series-data-points-input
                              #:list-time-series-data-points-output #:listing
                              #:listing-id #:listing-item #:listing-name
                              #:listing-revision #:listing-revision-input
                              #:listing-status #:listing-summaries
                              #:listing-summary #:listing-summary-item
                              #:listing-summary-items #:long-description
                              #:managed-policy-type #:match-criteria
                              #:match-offset #:match-offsets #:match-rationale
                              #:match-rationale-item #:max-results
                              #:max-results-for-list-domains #:member
                              #:member-details #:message
                              #:metadata-form-enforcement-detail
                              #:metadata-form-inputs #:metadata-form-reference
                              #:metadata-form-summary #:metadata-forms
                              #:metadata-forms-summary
                              #:metadata-generation-run
                              #:metadata-generation-run-identifier
                              #:metadata-generation-run-item
                              #:metadata-generation-run-status
                              #:metadata-generation-run-target
                              #:metadata-generation-run-type
                              #:metadata-generation-runs
                              #:metadata-generation-target-type #:metadata-map
                              #:model #:name #:name-identifier
                              #:name-identifiers #:not-equal-to-expression
                              #:not-in-expression #:not-like-expression
                              #:notification-output #:notification-resource
                              #:notification-resource-type #:notification-role
                              #:notification-subjects #:notification-type
                              #:notifications-list #:oauth2client-application
                              #:oauth2grant-type #:oauth2properties
                              #:open-lineage-run-event-summary
                              #:open-lineage-run-state
                              #:overall-deployment-status
                              #:override-domain-unit-owners-policy-grant-detail
                              #:override-project-owners-policy-grant-detail
                              #:owner-group-properties
                              #:owner-group-properties-output
                              #:owner-properties #:owner-properties-output
                              #:owner-user-properties
                              #:owner-user-properties-output #:pagination-token
                              #:parameter-store-path #:password
                              #:physical-connection-requirements
                              #:physical-endpoint #:physical-endpoints
                              #:policy-arn #:policy-grant-detail
                              #:policy-grant-list #:policy-grant-member
                              #:policy-grant-principal #:post-lineage-event
                              #:post-lineage-event-input
                              #:post-lineage-event-output
                              #:post-time-series-data-points
                              #:post-time-series-data-points-input
                              #:post-time-series-data-points-output
                              #:prediction-choices #:prediction-configuration
                              #:project-deletion-error #:project-designation
                              #:project-grant-filter #:project-id #:project-ids
                              #:project-member #:project-members #:project-name
                              #:project-policy-grant-principal
                              #:project-profile-id #:project-profile-list
                              #:project-profile-name
                              #:project-profile-summaries
                              #:project-profile-summary #:project-status
                              #:project-summaries #:project-summary
                              #:projects-for-rule #:property-map #:protocol
                              #:provisioning-configuration
                              #:provisioning-configuration-list
                              #:provisioning-properties
                              #:put-environment-blueprint-configuration
                              #:put-environment-blueprint-configuration-input
                              #:put-environment-blueprint-configuration-output
                              #:recommendation-configuration
                              #:redshift-cluster-storage
                              #:redshift-credential-configuration
                              #:redshift-credentials
                              #:redshift-lineage-sync-configuration-input
                              #:redshift-lineage-sync-configuration-output
                              #:redshift-properties-input
                              #:redshift-properties-output
                              #:redshift-properties-patch
                              #:redshift-run-configuration-input
                              #:redshift-run-configuration-output
                              #:redshift-self-grant-status-output
                              #:redshift-serverless-storage #:redshift-storage
                              #:redshift-storage-properties #:region
                              #:region-name #:regional-parameter
                              #:regional-parameter-map #:reject-choice
                              #:reject-choices #:reject-predictions
                              #:reject-predictions-input
                              #:reject-predictions-output #:reject-rule
                              #:reject-rule-behavior
                              #:reject-subscription-request
                              #:reject-subscription-request-input
                              #:reject-subscription-request-output
                              #:relational-filter-configuration
                              #:relational-filter-configurations
                              #:remove-entity-owner #:remove-entity-owner-input
                              #:remove-entity-owner-output
                              #:remove-policy-grant #:remove-policy-grant-input
                              #:remove-policy-grant-output #:request-reason
                              #:required-metadata-form-list #:resource
                              #:resource-list #:resource-not-found-exception
                              #:revision #:revision-input #:revoke-subscription
                              #:revoke-subscription-input
                              #:revoke-subscription-output #:role-arn
                              #:row-filter #:row-filter-configuration
                              #:row-filter-expression #:row-filter-list #:rule
                              #:rule-action #:rule-asset-type-list
                              #:rule-detail #:rule-id #:rule-name
                              #:rule-project-identifier-list #:rule-scope
                              #:rule-scope-selection-mode #:rule-summaries
                              #:rule-summary #:rule-target #:rule-target-type
                              #:rule-type #:run-identifier
                              #:run-statistics-for-assets
                              #:s3access-grant-location-id #:s3location
                              #:s3location-list #:s3properties-input
                              #:s3properties-output #:s3properties-patch
                              #:s3uri #:sage-maker-asset-type
                              #:sage-maker-resource-arn
                              #:sage-maker-run-configuration-input
                              #:sage-maker-run-configuration-output
                              #:schedule-configuration #:search
                              #:search-group-profiles
                              #:search-group-profiles-input
                              #:search-group-profiles-output #:search-in-item
                              #:search-in-list #:search-input
                              #:search-inventory-result-item
                              #:search-inventory-result-items #:search-listings
                              #:search-listings-input #:search-listings-output
                              #:search-output
                              #:search-output-additional-attribute
                              #:search-output-additional-attributes
                              #:search-result-item #:search-result-items
                              #:search-sort #:search-text #:search-types
                              #:search-types-input #:search-types-output
                              #:search-types-result-item
                              #:search-types-result-items
                              #:search-user-profiles
                              #:search-user-profiles-input
                              #:search-user-profiles-output
                              #:security-group-id-list #:self-grant-status
                              #:self-grant-status-detail
                              #:self-grant-status-details
                              #:self-grant-status-output
                              #:service-quota-exceeded-exception
                              #:short-description #:single-sign-on #:smithy
                              #:sort-field-connection #:sort-field-project
                              #:sort-key #:sort-order
                              #:spark-emr-properties-input
                              #:spark-emr-properties-output
                              #:spark-emr-properties-patch #:spark-glue-args
                              #:spark-glue-properties-input
                              #:spark-glue-properties-output
                              #:sso-user-profile-details
                              #:start-data-source-run
                              #:start-data-source-run-input
                              #:start-data-source-run-output
                              #:start-metadata-generation-run
                              #:start-metadata-generation-run-input
                              #:start-metadata-generation-run-output #:status
                              #:string-list #:subnet-id #:subnet-id-list
                              #:subscribed-asset #:subscribed-asset-listing
                              #:subscribed-assets #:subscribed-listing
                              #:subscribed-listing-input
                              #:subscribed-listing-inputs
                              #:subscribed-listing-item #:subscribed-listings
                              #:subscribed-principal
                              #:subscribed-principal-input
                              #:subscribed-principal-inputs
                              #:subscribed-principals
                              #:subscribed-product-listing #:subscribed-project
                              #:subscribed-project-input
                              #:subscription-grant-id
                              #:subscription-grant-overall-status
                              #:subscription-grant-status
                              #:subscription-grant-summary
                              #:subscription-grants #:subscription-id
                              #:subscription-request-id
                              #:subscription-request-status
                              #:subscription-request-summary
                              #:subscription-requests #:subscription-status
                              #:subscription-summary #:subscription-target-form
                              #:subscription-target-forms
                              #:subscription-target-id
                              #:subscription-target-name
                              #:subscription-target-summary
                              #:subscription-targets #:subscriptions #:tag-key
                              #:tag-key-list #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:tags #:target-entity-type #:task-id
                              #:task-status #:term-relations #:text-match-item
                              #:text-matches #:throttling-exception
                              #:time-series-data-point-form-input
                              #:time-series-data-point-form-input-list
                              #:time-series-data-point-form-output
                              #:time-series-data-point-form-output-list
                              #:time-series-data-point-identifier
                              #:time-series-data-point-summary-form-output
                              #:time-series-data-point-summary-form-output-list
                              #:time-series-entity-type #:time-series-form-name
                              #:timezone #:title #:token-url-parameters-map
                              #:topic #:tracking-asset-arns #:tracking-assets
                              #:type-name #:types-search-scope
                              #:unauthorized-exception #:unit #:untag-resource
                              #:untag-resource-request
                              #:untag-resource-response #:update-asset-filter
                              #:update-asset-filter-input
                              #:update-asset-filter-output #:update-connection
                              #:update-connection-input
                              #:update-connection-output #:update-data-source
                              #:update-data-source-input
                              #:update-data-source-output #:update-domain
                              #:update-domain-input #:update-domain-output
                              #:update-domain-unit #:update-domain-unit-input
                              #:update-domain-unit-output #:update-environment
                              #:update-environment-action
                              #:update-environment-action-input
                              #:update-environment-action-output
                              #:update-environment-input
                              #:update-environment-output
                              #:update-environment-profile
                              #:update-environment-profile-input
                              #:update-environment-profile-output
                              #:update-glossary #:update-glossary-input
                              #:update-glossary-output #:update-glossary-term
                              #:update-glossary-term-input
                              #:update-glossary-term-output
                              #:update-group-profile
                              #:update-group-profile-input
                              #:update-group-profile-output #:update-project
                              #:update-project-input #:update-project-output
                              #:update-project-profile
                              #:update-project-profile-input
                              #:update-project-profile-output #:update-rule
                              #:update-rule-input #:update-rule-output
                              #:update-subscription-grant-status
                              #:update-subscription-grant-status-input
                              #:update-subscription-grant-status-output
                              #:update-subscription-request
                              #:update-subscription-request-input
                              #:update-subscription-request-output
                              #:update-subscription-target
                              #:update-subscription-target-input
                              #:update-subscription-target-output
                              #:update-user-profile #:update-user-profile-input
                              #:update-user-profile-output #:updated-at
                              #:updated-by #:use-asset-type-policy-grant-detail
                              #:user-assignment #:user-designation
                              #:user-details #:user-identifier
                              #:user-policy-grant-principal
                              #:user-profile-details #:user-profile-id
                              #:user-profile-name #:user-profile-status
                              #:user-profile-summaries #:user-profile-summary
                              #:user-profile-type #:user-search-text
                              #:user-search-type #:user-type #:username
                              #:username-password #:validation-exception))
(common-lisp:in-package #:pira/datazone)

(smithy/sdk/service:define-service data-zone :shape-name "DataZone" :version
                                   "2018-05-10" :title "Amazon DataZone"
                                   :errors
                                   '(access-denied-exception
                                     throttling-exception
                                     unauthorized-exception)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "DataZone")
                                      ("arnNamespace" . "datazone")
                                      ("serviceName" . "datazone")
                                      ("cloudTrailEventSource"
                                       . "datazone.amazonaws.com"))
                                     ("aws.auth#sigv4" ("name" . "datazone"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-structure accept-choice common-lisp:nil
                                    ((prediction-target :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "predictionTarget")
                                     (prediction-choice :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "predictionChoice")
                                     (edited-value :target-type edited-value
                                      :member-name "editedValue"))
                                    (:shape-name "AcceptChoice"))

(smithy/sdk/shapes:define-list accept-choices :member accept-choice)

(smithy/sdk/shapes:define-input accept-predictions-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type asset-identifier
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t)
                                 (revision :target-type revision :member-name
                                  "revision" :http-query "revision")
                                 (accept-rule :target-type accept-rule
                                  :member-name "acceptRule")
                                 (accept-choices :target-type accept-choices
                                  :member-name "acceptChoices")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "AcceptPredictionsInput"))

(smithy/sdk/shapes:define-output accept-predictions-output common-lisp:nil
                                 ((domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (asset-id :target-type asset-id :required
                                   common-lisp:t :member-name "assetId")
                                  (revision :target-type revision :required
                                   common-lisp:t :member-name "revision"))
                                 (:shape-name "AcceptPredictionsOutput"))

(smithy/sdk/shapes:define-structure accept-rule common-lisp:nil
                                    ((rule :target-type accept-rule-behavior
                                      :member-name "rule")
                                     (threshold :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "threshold"))
                                    (:shape-name "AcceptRule"))

(smithy/sdk/shapes:define-enum accept-rule-behavior
    common-lisp:nil
  (:all "ALL")
  (:none "NONE"))

(smithy/sdk/shapes:define-input accept-subscription-request-input
                                common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type
                                  subscription-request-id :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t)
                                 (decision-comment :target-type
                                  decision-comment :member-name
                                  "decisionComment")
                                 (asset-scopes :target-type
                                  accepted-asset-scopes :member-name
                                  "assetScopes"))
                                (:shape-name "AcceptSubscriptionRequestInput"))

(smithy/sdk/shapes:define-output accept-subscription-request-output
                                 common-lisp:nil
                                 ((id :target-type subscription-request-id
                                   :required common-lisp:t :member-name "id")
                                  (created-by :target-type created-by :required
                                   common-lisp:t :member-name "createdBy")
                                  (updated-by :target-type updated-by
                                   :member-name "updatedBy")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (status :target-type
                                   subscription-request-status :required
                                   common-lisp:t :member-name "status")
                                  (created-at :target-type created-at :required
                                   common-lisp:t :member-name "createdAt")
                                  (updated-at :target-type updated-at :required
                                   common-lisp:t :member-name "updatedAt")
                                  (request-reason :target-type request-reason
                                   :required common-lisp:t :member-name
                                   "requestReason")
                                  (subscribed-principals :target-type
                                   subscribed-principals :required
                                   common-lisp:t :member-name
                                   "subscribedPrincipals")
                                  (subscribed-listings :target-type
                                   subscribed-listings :required common-lisp:t
                                   :member-name "subscribedListings")
                                  (reviewer-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "reviewerId")
                                  (decision-comment :target-type
                                   decision-comment :member-name
                                   "decisionComment")
                                  (existing-subscription-id :target-type
                                   subscription-id :member-name
                                   "existingSubscriptionId")
                                  (metadata-forms :target-type metadata-forms
                                   :member-name "metadataForms"))
                                 (:shape-name
                                  "AcceptSubscriptionRequestOutput"))

(smithy/sdk/shapes:define-structure accepted-asset-scope common-lisp:nil
                                    ((asset-id :target-type asset-id :required
                                      common-lisp:t :member-name "assetId")
                                     (filter-ids :target-type filter-ids
                                      :required common-lisp:t :member-name
                                      "filterIds"))
                                    (:shape-name "AcceptedAssetScope"))

(smithy/sdk/shapes:define-list accepted-asset-scopes :member
                               accepted-asset-scope)

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type action-link smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union action-parameters common-lisp:nil
                                ((aws-console-link :target-type
                                  aws-console-link-parameters :member-name
                                  "awsConsoleLink"))
                                (:shape-name "ActionParameters"))

(smithy/sdk/shapes:define-input add-entity-owner-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (entity-type :target-type
                                  data-zone-entity-type :required common-lisp:t
                                  :member-name "entityType" :http-label
                                  common-lisp:t)
                                 (entity-identifier :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "entityIdentifier"
                                  :http-label common-lisp:t)
                                 (owner :target-type owner-properties :required
                                  common-lisp:t :member-name "owner")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "AddEntityOwnerInput"))

(smithy/sdk/shapes:define-output add-entity-owner-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "AddEntityOwnerOutput"))

(smithy/sdk/shapes:define-input add-policy-grant-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (entity-type :target-type target-entity-type
                                  :required common-lisp:t :member-name
                                  "entityType" :http-label common-lisp:t)
                                 (entity-identifier :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "entityIdentifier"
                                  :http-label common-lisp:t)
                                 (policy-type :target-type managed-policy-type
                                  :required common-lisp:t :member-name
                                  "policyType")
                                 (principal :target-type policy-grant-principal
                                  :required common-lisp:t :member-name
                                  "principal")
                                 (detail :target-type policy-grant-detail
                                  :required common-lisp:t :member-name
                                  "detail")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "AddPolicyGrantInput"))

(smithy/sdk/shapes:define-output add-policy-grant-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "AddPolicyGrantOutput"))

(smithy/sdk/shapes:define-structure
 add-to-project-member-pool-policy-grant-detail common-lisp:nil
 ((include-child-domain-units :target-type smithy/sdk/smithy-types:boolean
   :member-name "includeChildDomainUnits"))
 (:shape-name "AddToProjectMemberPoolPolicyGrantDetail"))

(smithy/sdk/shapes:define-type aggregation-attribute-display-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type aggregation-attribute-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type aggregation-display-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list aggregation-list :member aggregation-list-item)

(smithy/sdk/shapes:define-structure aggregation-list-item common-lisp:nil
                                    ((attribute :target-type attribute
                                      :required common-lisp:t :member-name
                                      "attribute")
                                     (display-value :target-type
                                      aggregation-display-value :member-name
                                      "displayValue"))
                                    (:shape-name "AggregationListItem"))

(smithy/sdk/shapes:define-structure aggregation-output common-lisp:nil
                                    ((attribute :target-type attribute
                                      :member-name "attribute")
                                     (display-value :target-type
                                      aggregation-display-value :member-name
                                      "displayValue")
                                     (items :target-type
                                      aggregation-output-items :member-name
                                      "items"))
                                    (:shape-name "AggregationOutput"))

(smithy/sdk/shapes:define-structure aggregation-output-item common-lisp:nil
                                    ((value :target-type
                                      aggregation-attribute-value :member-name
                                      "value")
                                     (count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "count")
                                     (display-value :target-type
                                      aggregation-attribute-display-value
                                      :member-name "displayValue"))
                                    (:shape-name "AggregationOutputItem"))

(smithy/sdk/shapes:define-list aggregation-output-items :member
                               aggregation-output-item)

(smithy/sdk/shapes:define-list aggregation-output-list :member
                               aggregation-output)

(smithy/sdk/shapes:define-structure all-domain-units-grant-filter
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "AllDomainUnitsGrantFilter"))

(smithy/sdk/shapes:define-structure all-users-grant-filter common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "AllUsersGrantFilter"))

(smithy/sdk/shapes:define-list applicable-asset-types :member type-name)

common-lisp:nil

(smithy/sdk/shapes:define-union asset-filter-configuration common-lisp:nil
                                ((column-configuration :target-type
                                  column-filter-configuration :member-name
                                  "columnConfiguration")
                                 (row-configuration :target-type
                                  row-filter-configuration :member-name
                                  "rowConfiguration"))
                                (:shape-name "AssetFilterConfiguration"))

(smithy/sdk/shapes:define-structure asset-filter-summary common-lisp:nil
                                    ((id :target-type filter-id :required
                                      common-lisp:t :member-name "id")
                                     (domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "domainId")
                                     (asset-id :target-type asset-id :required
                                      common-lisp:t :member-name "assetId")
                                     (name :target-type filter-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (status :target-type filter-status
                                      :member-name "status")
                                     (effective-column-names :target-type
                                      column-name-list :member-name
                                      "effectiveColumnNames")
                                     (effective-row-filter :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "effectiveRowFilter")
                                     (created-at :target-type created-at
                                      :member-name "createdAt")
                                     (error-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "errorMessage"))
                                    (:shape-name "AssetFilterSummary"))

(smithy/sdk/shapes:define-list asset-filters :member asset-filter-summary)

(smithy/sdk/shapes:define-type asset-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type asset-identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure asset-in-data-product-listing-item
                                    common-lisp:nil
                                    ((entity-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "entityId")
                                     (entity-revision :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "entityRevision")
                                     (entity-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "entityType"))
                                    (:shape-name
                                     "AssetInDataProductListingItem"))

(smithy/sdk/shapes:define-list asset-in-data-product-listing-items :member
                               asset-in-data-product-listing-item)

(smithy/sdk/shapes:define-structure asset-item common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "domainId")
                                     (identifier :target-type asset-identifier
                                      :required common-lisp:t :member-name
                                      "identifier")
                                     (name :target-type asset-name :required
                                      common-lisp:t :member-name "name")
                                     (type-identifier :target-type
                                      asset-type-identifier :required
                                      common-lisp:t :member-name
                                      "typeIdentifier")
                                     (type-revision :target-type revision
                                      :required common-lisp:t :member-name
                                      "typeRevision")
                                     (external-identifier :target-type
                                      external-identifier :member-name
                                      "externalIdentifier")
                                     (description :target-type description
                                      :member-name "description")
                                     (created-at :target-type created-at
                                      :member-name "createdAt")
                                     (created-by :target-type created-by
                                      :member-name "createdBy")
                                     (first-revision-created-at :target-type
                                      created-at :member-name
                                      "firstRevisionCreatedAt")
                                     (first-revision-created-by :target-type
                                      created-by :member-name
                                      "firstRevisionCreatedBy")
                                     (glossary-terms :target-type
                                      glossary-terms :member-name
                                      "glossaryTerms")
                                     (owning-project-id :target-type project-id
                                      :required common-lisp:t :member-name
                                      "owningProjectId")
                                     (additional-attributes :target-type
                                      asset-item-additional-attributes
                                      :member-name "additionalAttributes"))
                                    (:shape-name "AssetItem"))

(smithy/sdk/shapes:define-structure asset-item-additional-attributes
                                    common-lisp:nil
                                    ((forms-output :target-type
                                      form-output-list :member-name
                                      "formsOutput")
                                     (read-only-forms-output :target-type
                                      form-output-list :member-name
                                      "readOnlyFormsOutput")
                                     (latest-time-series-data-point-forms-output
                                      :target-type
                                      time-series-data-point-summary-form-output-list
                                      :member-name
                                      "latestTimeSeriesDataPointFormsOutput")
                                     (match-rationale :target-type
                                      match-rationale :member-name
                                      "matchRationale"))
                                    (:shape-name
                                     "AssetItemAdditionalAttributes"))

(smithy/sdk/shapes:define-structure asset-listing common-lisp:nil
                                    ((asset-id :target-type asset-id
                                      :member-name "assetId")
                                     (asset-revision :target-type revision
                                      :member-name "assetRevision")
                                     (asset-type :target-type type-name
                                      :member-name "assetType")
                                     (created-at :target-type created-at
                                      :member-name "createdAt")
                                     (forms :target-type forms :member-name
                                      "forms")
                                     (latest-time-series-data-point-forms
                                      :target-type
                                      time-series-data-point-summary-form-output-list
                                      :member-name
                                      "latestTimeSeriesDataPointForms")
                                     (glossary-terms :target-type
                                      detailed-glossary-terms :member-name
                                      "glossaryTerms")
                                     (owning-project-id :target-type project-id
                                      :member-name "owningProjectId"))
                                    (:shape-name "AssetListing"))

(smithy/sdk/shapes:define-structure asset-listing-details common-lisp:nil
                                    ((listing-id :target-type listing-id
                                      :required common-lisp:t :member-name
                                      "listingId")
                                     (listing-status :target-type
                                      listing-status :required common-lisp:t
                                      :member-name "listingStatus"))
                                    (:shape-name "AssetListingDetails"))

(smithy/sdk/shapes:define-structure asset-listing-item common-lisp:nil
                                    ((listing-id :target-type listing-id
                                      :member-name "listingId")
                                     (listing-revision :target-type revision
                                      :member-name "listingRevision")
                                     (name :target-type asset-name :member-name
                                      "name")
                                     (entity-id :target-type asset-id
                                      :member-name "entityId")
                                     (entity-revision :target-type revision
                                      :member-name "entityRevision")
                                     (entity-type :target-type type-name
                                      :member-name "entityType")
                                     (description :target-type description
                                      :member-name "description")
                                     (created-at :target-type created-at
                                      :member-name "createdAt")
                                     (listing-created-by :target-type
                                      created-by :member-name
                                      "listingCreatedBy")
                                     (listing-updated-by :target-type
                                      updated-by :member-name
                                      "listingUpdatedBy")
                                     (glossary-terms :target-type
                                      detailed-glossary-terms :member-name
                                      "glossaryTerms")
                                     (owning-project-id :target-type project-id
                                      :member-name "owningProjectId")
                                     (additional-attributes :target-type
                                      asset-listing-item-additional-attributes
                                      :member-name "additionalAttributes"))
                                    (:shape-name "AssetListingItem"))

(smithy/sdk/shapes:define-structure asset-listing-item-additional-attributes
                                    common-lisp:nil
                                    ((forms :target-type forms :member-name
                                      "forms")
                                     (match-rationale :target-type
                                      match-rationale :member-name
                                      "matchRationale")
                                     (latest-time-series-data-point-forms
                                      :target-type
                                      time-series-data-point-summary-form-output-list
                                      :member-name
                                      "latestTimeSeriesDataPointForms"))
                                    (:shape-name
                                     "AssetListingItemAdditionalAttributes"))

(smithy/sdk/shapes:define-type asset-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure asset-revision common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :member-name "domainId")
                                     (id :target-type asset-id :member-name
                                      "id")
                                     (revision :target-type revision
                                      :member-name "revision")
                                     (created-by :target-type created-by
                                      :member-name "createdBy")
                                     (created-at :target-type created-at
                                      :member-name "createdAt"))
                                    (:shape-name "AssetRevision"))

(smithy/sdk/shapes:define-list asset-revisions :member asset-revision)

(smithy/sdk/shapes:define-structure asset-scope common-lisp:nil
                                    ((asset-id :target-type asset-id :required
                                      common-lisp:t :member-name "assetId")
                                     (filter-ids :target-type filter-ids
                                      :required common-lisp:t :member-name
                                      "filterIds")
                                     (status :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "status")
                                     (error-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "errorMessage"))
                                    (:shape-name "AssetScope"))

(smithy/sdk/shapes:define-structure asset-target-name-map common-lisp:nil
                                    ((asset-id :target-type asset-id :required
                                      common-lisp:t :member-name "assetId")
                                     (target-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "targetName"))
                                    (:shape-name "AssetTargetNameMap"))

(smithy/sdk/shapes:define-list asset-target-names :member asset-target-name-map)

common-lisp:nil

(smithy/sdk/shapes:define-type asset-type-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list asset-type-identifiers :member
                               asset-type-identifier)

(smithy/sdk/shapes:define-structure asset-type-item common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "domainId")
                                     (name :target-type type-name :required
                                      common-lisp:t :member-name "name")
                                     (revision :target-type revision :required
                                      common-lisp:t :member-name "revision")
                                     (description :target-type description
                                      :member-name "description")
                                     (forms-output :target-type
                                      forms-output-map :required common-lisp:t
                                      :member-name "formsOutput")
                                     (owning-project-id :target-type project-id
                                      :required common-lisp:t :member-name
                                      "owningProjectId")
                                     (origin-domain-id :target-type domain-id
                                      :member-name "originDomainId")
                                     (origin-project-id :target-type project-id
                                      :member-name "originProjectId")
                                     (created-at :target-type created-at
                                      :member-name "createdAt")
                                     (created-by :target-type created-by
                                      :member-name "createdBy")
                                     (updated-at :target-type updated-at
                                      :member-name "updatedAt")
                                     (updated-by :target-type updated-by
                                      :member-name "updatedBy"))
                                    (:shape-name "AssetTypeItem"))

(smithy/sdk/shapes:define-structure asset-types-for-rule common-lisp:nil
                                    ((selection-mode :target-type
                                      rule-scope-selection-mode :required
                                      common-lisp:t :member-name
                                      "selectionMode")
                                     (specific-asset-types :target-type
                                      rule-asset-type-list :member-name
                                      "specificAssetTypes"))
                                    (:shape-name "AssetTypesForRule"))

(smithy/sdk/shapes:define-input associate-environment-role-input
                                common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (environment-identifier :target-type
                                  environment-id :required common-lisp:t
                                  :member-name "environmentIdentifier"
                                  :http-label common-lisp:t)
                                 (environment-role-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "environmentRoleArn" :http-label
                                  common-lisp:t))
                                (:shape-name "AssociateEnvironmentRoleInput"))

(smithy/sdk/shapes:define-output associate-environment-role-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "AssociateEnvironmentRoleOutput"))

(smithy/sdk/shapes:define-structure athena-properties-input common-lisp:nil
                                    ((workgroup-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "workgroupName"))
                                    (:shape-name "AthenaPropertiesInput"))

(smithy/sdk/shapes:define-structure athena-properties-output common-lisp:nil
                                    ((workgroup-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "workgroupName"))
                                    (:shape-name "AthenaPropertiesOutput"))

(smithy/sdk/shapes:define-structure athena-properties-patch common-lisp:nil
                                    ((workgroup-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "workgroupName"))
                                    (:shape-name "AthenaPropertiesPatch"))

(smithy/sdk/shapes:define-type attribute smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum auth-type
    common-lisp:nil
  (:iam-idc "IAM_IDC")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure authentication-configuration
                                    common-lisp:nil
                                    ((authentication-type :target-type
                                      authentication-type :member-name
                                      "authenticationType")
                                     (secret-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "secretArn")
                                     (o-auth2properties :target-type
                                      oauth2properties :member-name
                                      "oAuth2Properties"))
                                    (:shape-name "AuthenticationConfiguration"))

(smithy/sdk/shapes:define-structure authentication-configuration-input
                                    common-lisp:nil
                                    ((authentication-type :target-type
                                      authentication-type :member-name
                                      "authenticationType")
                                     (o-auth2properties :target-type
                                      oauth2properties :member-name
                                      "oAuth2Properties")
                                     (secret-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "secretArn")
                                     (kms-key-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "kmsKeyArn")
                                     (basic-authentication-credentials
                                      :target-type
                                      basic-authentication-credentials
                                      :member-name
                                      "basicAuthenticationCredentials")
                                     (custom-authentication-credentials
                                      :target-type credential-map :member-name
                                      "customAuthenticationCredentials"))
                                    (:shape-name
                                     "AuthenticationConfigurationInput"))

(smithy/sdk/shapes:define-structure authentication-configuration-patch
                                    common-lisp:nil
                                    ((secret-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "secretArn")
                                     (basic-authentication-credentials
                                      :target-type
                                      basic-authentication-credentials
                                      :member-name
                                      "basicAuthenticationCredentials"))
                                    (:shape-name
                                     "AuthenticationConfigurationPatch"))

(smithy/sdk/shapes:define-enum authentication-type
    common-lisp:nil
  (:basic "BASIC")
  (:oauth2 "OAUTH2")
  (:custom "CUSTOM"))

(smithy/sdk/shapes:define-structure authorization-code-properties
                                    common-lisp:nil
                                    ((authorization-code :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "authorizationCode")
                                     (redirect-uri :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "redirectUri"))
                                    (:shape-name "AuthorizationCodeProperties"))

(smithy/sdk/shapes:define-type authorized-principal-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list authorized-principal-identifiers :member
                               authorized-principal-identifier)

(smithy/sdk/shapes:define-union aws-account common-lisp:nil
                                ((aws-account-id :target-type aws-account-id
                                  :member-name "awsAccountId")
                                 (aws-account-id-path :target-type
                                  parameter-store-path :member-name
                                  "awsAccountIdPath"))
                                (:shape-name "AwsAccount"))

(smithy/sdk/shapes:define-type aws-account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure aws-console-link-parameters common-lisp:nil
                                    ((uri :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "uri"))
                                    (:shape-name "AwsConsoleLinkParameters"))

(smithy/sdk/shapes:define-structure aws-location common-lisp:nil
                                    ((access-role :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "accessRole")
                                     (aws-account-id :target-type
                                      aws-account-id :member-name
                                      "awsAccountId")
                                     (aws-region :target-type aws-region
                                      :member-name "awsRegion")
                                     (iam-connection-id :target-type
                                      connection-id :member-name
                                      "iamConnectionId"))
                                    (:shape-name "AwsLocation"))

(smithy/sdk/shapes:define-type aws-region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure basic-authentication-credentials
                                    common-lisp:nil
                                    ((user-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "userName")
                                     (password :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "password"))
                                    (:shape-name
                                     "BasicAuthenticationCredentials"))

(smithy/sdk/shapes:define-structure business-name-generation-configuration
                                    common-lisp:nil
                                    ((enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "enabled"))
                                    (:shape-name
                                     "BusinessNameGenerationConfiguration"))

(smithy/sdk/shapes:define-input cancel-metadata-generation-run-input
                                common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type
                                  metadata-generation-run-identifier :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "CancelMetadataGenerationRunInput"))

(smithy/sdk/shapes:define-output cancel-metadata-generation-run-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "CancelMetadataGenerationRunOutput"))

(smithy/sdk/shapes:define-input cancel-subscription-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type subscription-id
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t))
                                (:shape-name "CancelSubscriptionInput"))

(smithy/sdk/shapes:define-output cancel-subscription-output common-lisp:nil
                                 ((id :target-type subscription-id :required
                                   common-lisp:t :member-name "id")
                                  (created-by :target-type created-by :required
                                   common-lisp:t :member-name "createdBy")
                                  (updated-by :target-type updated-by
                                   :member-name "updatedBy")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (status :target-type subscription-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (created-at :target-type created-at :required
                                   common-lisp:t :member-name "createdAt")
                                  (updated-at :target-type updated-at :required
                                   common-lisp:t :member-name "updatedAt")
                                  (subscribed-principal :target-type
                                   subscribed-principal :required common-lisp:t
                                   :member-name "subscribedPrincipal")
                                  (subscribed-listing :target-type
                                   subscribed-listing :required common-lisp:t
                                   :member-name "subscribedListing")
                                  (subscription-request-id :target-type
                                   subscription-request-id :member-name
                                   "subscriptionRequestId")
                                  (retain-permissions :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "retainPermissions"))
                                 (:shape-name "CancelSubscriptionOutput"))

(smithy/sdk/shapes:define-enum change-action
    common-lisp:nil
  (:publish "PUBLISH")
  (:unpublish "UNPUBLISH"))

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cloud-formation-properties common-lisp:nil
                                    ((template-url :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "templateUrl"))
                                    (:shape-name "CloudFormationProperties"))

(smithy/sdk/shapes:define-structure column-filter-configuration common-lisp:nil
                                    ((included-column-names :target-type
                                      column-name-list :member-name
                                      "includedColumnNames"))
                                    (:shape-name "ColumnFilterConfiguration"))

(smithy/sdk/shapes:define-list column-name-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum compute-environments
    common-lisp:nil
  (:spark "SPARK")
  (:athena "ATHENA")
  (:python "PYTHON"))

(smithy/sdk/shapes:define-list compute-environments-list :member
                               compute-environments)

(smithy/sdk/shapes:define-structure configurable-action-parameter
                                    common-lisp:nil
                                    ((key :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "key")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "value"))
                                    (:shape-name "ConfigurableActionParameter"))

(smithy/sdk/shapes:define-list configurable-action-parameter-list :member
                               configurable-action-parameter)

(smithy/sdk/shapes:define-enum configurable-action-type-authorization
    common-lisp:nil
  (:iam "IAM")
  (:https "HTTPS"))

(smithy/sdk/shapes:define-structure configurable-environment-action
                                    common-lisp:nil
                                    ((type :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "type")
                                     (auth :target-type
                                      configurable-action-type-authorization
                                      :member-name "auth")
                                     (parameters :target-type
                                      configurable-action-parameter-list
                                      :required common-lisp:t :member-name
                                      "parameters"))
                                    (:shape-name
                                     "ConfigurableEnvironmentAction"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure connection-credentials common-lisp:nil
                                    ((access-key-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "accessKeyId")
                                     (secret-access-key :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "secretAccessKey")
                                     (session-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "sessionToken")
                                     (expiration :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "expiration"
                                      :timestamp-format "date-time"))
                                    (:shape-name "ConnectionCredentials"))

(smithy/sdk/shapes:define-type connection-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type connection-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map connection-properties :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union connection-properties-input common-lisp:nil
                                ((athena-properties :target-type
                                  athena-properties-input :member-name
                                  "athenaProperties")
                                 (glue-properties :target-type
                                  glue-properties-input :member-name
                                  "glueProperties")
                                 (hyper-pod-properties :target-type
                                  hyper-pod-properties-input :member-name
                                  "hyperPodProperties")
                                 (iam-properties :target-type
                                  iam-properties-input :member-name
                                  "iamProperties")
                                 (redshift-properties :target-type
                                  redshift-properties-input :member-name
                                  "redshiftProperties")
                                 (spark-emr-properties :target-type
                                  spark-emr-properties-input :member-name
                                  "sparkEmrProperties")
                                 (spark-glue-properties :target-type
                                  spark-glue-properties-input :member-name
                                  "sparkGlueProperties")
                                 (s3properties :target-type s3properties-input
                                  :member-name "s3Properties"))
                                (:shape-name "ConnectionPropertiesInput"))

(smithy/sdk/shapes:define-union connection-properties-output common-lisp:nil
                                ((athena-properties :target-type
                                  athena-properties-output :member-name
                                  "athenaProperties")
                                 (glue-properties :target-type
                                  glue-properties-output :member-name
                                  "glueProperties")
                                 (hyper-pod-properties :target-type
                                  hyper-pod-properties-output :member-name
                                  "hyperPodProperties")
                                 (iam-properties :target-type
                                  iam-properties-output :member-name
                                  "iamProperties")
                                 (redshift-properties :target-type
                                  redshift-properties-output :member-name
                                  "redshiftProperties")
                                 (spark-emr-properties :target-type
                                  spark-emr-properties-output :member-name
                                  "sparkEmrProperties")
                                 (spark-glue-properties :target-type
                                  spark-glue-properties-output :member-name
                                  "sparkGlueProperties")
                                 (s3properties :target-type s3properties-output
                                  :member-name "s3Properties"))
                                (:shape-name "ConnectionPropertiesOutput"))

(smithy/sdk/shapes:define-union connection-properties-patch common-lisp:nil
                                ((athena-properties :target-type
                                  athena-properties-patch :member-name
                                  "athenaProperties")
                                 (glue-properties :target-type
                                  glue-properties-patch :member-name
                                  "glueProperties")
                                 (iam-properties :target-type
                                  iam-properties-patch :member-name
                                  "iamProperties")
                                 (redshift-properties :target-type
                                  redshift-properties-patch :member-name
                                  "redshiftProperties")
                                 (spark-emr-properties :target-type
                                  spark-emr-properties-patch :member-name
                                  "sparkEmrProperties")
                                 (s3properties :target-type s3properties-patch
                                  :member-name "s3Properties"))
                                (:shape-name "ConnectionPropertiesPatch"))

(smithy/sdk/shapes:define-enum connection-status
    common-lisp:nil
  (:creating "CREATING")
  (:create-failed "CREATE_FAILED")
  (:deleting "DELETING")
  (:delete-failed "DELETE_FAILED")
  (:ready "READY")
  (:updating "UPDATING")
  (:update-failed "UPDATE_FAILED")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-list connection-summaries :member connection-summary)

(smithy/sdk/shapes:define-structure connection-summary common-lisp:nil
                                    ((connection-id :target-type connection-id
                                      :required common-lisp:t :member-name
                                      "connectionId")
                                     (domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "domainId")
                                     (domain-unit-id :target-type
                                      domain-unit-id :required common-lisp:t
                                      :member-name "domainUnitId")
                                     (environment-id :target-type
                                      environment-id :member-name
                                      "environmentId")
                                     (name :target-type connection-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (physical-endpoints :target-type
                                      physical-endpoints :required
                                      common-lisp:t :member-name
                                      "physicalEndpoints")
                                     (project-id :target-type project-id
                                      :member-name "projectId")
                                     (props :target-type
                                      connection-properties-output :member-name
                                      "props")
                                     (type :target-type connection-type
                                      :required common-lisp:t :member-name
                                      "type"))
                                    (:shape-name "ConnectionSummary"))

(smithy/sdk/shapes:define-enum connection-type
    common-lisp:nil
  (:athena "ATHENA")
  (:bigquery "BIGQUERY")
  (:databricks "DATABRICKS")
  (:documentdb "DOCUMENTDB")
  (:dynamodb "DYNAMODB")
  (:hyperpod "HYPERPOD")
  (:iam "IAM")
  (:mysql "MYSQL")
  (:opensearch "OPENSEARCH")
  (:oracle "ORACLE")
  (:postgresql "POSTGRESQL")
  (:redshift "REDSHIFT")
  (:s3 "S3")
  (:saphana "SAPHANA")
  (:snowflake "SNOWFLAKE")
  (:spark "SPARK")
  (:sqlserver "SQLSERVER")
  (:teradata "TERADATA")
  (:vertica "VERTICA")
  (:workflows-mwaa "WORKFLOWS_MWAA"))

(smithy/sdk/shapes:define-input create-asset-filter-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (asset-identifier :target-type asset-id
                                  :required common-lisp:t :member-name
                                  "assetIdentifier" :http-label common-lisp:t)
                                 (name :target-type filter-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (configuration :target-type
                                  asset-filter-configuration :required
                                  common-lisp:t :member-name "configuration")
                                 (client-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "clientToken"))
                                (:shape-name "CreateAssetFilterInput"))

(smithy/sdk/shapes:define-output create-asset-filter-output common-lisp:nil
                                 ((id :target-type filter-id :required
                                   common-lisp:t :member-name "id")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (asset-id :target-type asset-id :required
                                   common-lisp:t :member-name "assetId")
                                  (name :target-type filter-name :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (status :target-type filter-status
                                   :member-name "status")
                                  (configuration :target-type
                                   asset-filter-configuration :required
                                   common-lisp:t :member-name "configuration")
                                  (created-at :target-type created-at
                                   :member-name "createdAt")
                                  (error-message :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "errorMessage")
                                  (effective-column-names :target-type
                                   column-name-list :member-name
                                   "effectiveColumnNames")
                                  (effective-row-filter :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "effectiveRowFilter"))
                                 (:shape-name "CreateAssetFilterOutput"))

(smithy/sdk/shapes:define-input create-asset-input common-lisp:nil
                                ((name :target-type asset-name :required
                                  common-lisp:t :member-name "name")
                                 (domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (external-identifier :target-type
                                  external-identifier :member-name
                                  "externalIdentifier")
                                 (type-identifier :target-type
                                  asset-type-identifier :required common-lisp:t
                                  :member-name "typeIdentifier")
                                 (type-revision :target-type revision
                                  :member-name "typeRevision")
                                 (description :target-type description
                                  :member-name "description")
                                 (glossary-terms :target-type glossary-terms
                                  :member-name "glossaryTerms")
                                 (forms-input :target-type form-input-list
                                  :member-name "formsInput")
                                 (owning-project-identifier :target-type
                                  project-id :required common-lisp:t
                                  :member-name "owningProjectIdentifier")
                                 (prediction-configuration :target-type
                                  prediction-configuration :member-name
                                  "predictionConfiguration")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "CreateAssetInput"))

(smithy/sdk/shapes:define-output create-asset-output common-lisp:nil
                                 ((id :target-type asset-id :required
                                   common-lisp:t :member-name "id")
                                  (name :target-type asset-name :required
                                   common-lisp:t :member-name "name")
                                  (type-identifier :target-type
                                   asset-type-identifier :required
                                   common-lisp:t :member-name "typeIdentifier")
                                  (type-revision :target-type revision
                                   :required common-lisp:t :member-name
                                   "typeRevision")
                                  (external-identifier :target-type
                                   external-identifier :member-name
                                   "externalIdentifier")
                                  (revision :target-type revision :required
                                   common-lisp:t :member-name "revision")
                                  (description :target-type description
                                   :member-name "description")
                                  (created-at :target-type created-at
                                   :member-name "createdAt")
                                  (created-by :target-type created-by
                                   :member-name "createdBy")
                                  (first-revision-created-at :target-type
                                   created-at :member-name
                                   "firstRevisionCreatedAt")
                                  (first-revision-created-by :target-type
                                   created-by :member-name
                                   "firstRevisionCreatedBy")
                                  (glossary-terms :target-type glossary-terms
                                   :member-name "glossaryTerms")
                                  (owning-project-id :target-type project-id
                                   :required common-lisp:t :member-name
                                   "owningProjectId")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (listing :target-type asset-listing-details
                                   :member-name "listing")
                                  (forms-output :target-type form-output-list
                                   :required common-lisp:t :member-name
                                   "formsOutput")
                                  (read-only-forms-output :target-type
                                   form-output-list :member-name
                                   "readOnlyFormsOutput")
                                  (latest-time-series-data-point-forms-output
                                   :target-type
                                   time-series-data-point-summary-form-output-list
                                   :member-name
                                   "latestTimeSeriesDataPointFormsOutput")
                                  (prediction-configuration :target-type
                                   prediction-configuration :member-name
                                   "predictionConfiguration"))
                                 (:shape-name "CreateAssetOutput"))

(smithy/sdk/shapes:define-input create-asset-revision-input common-lisp:nil
                                ((name :target-type asset-name :required
                                  common-lisp:t :member-name "name")
                                 (domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type asset-identifier
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t)
                                 (type-revision :target-type revision
                                  :member-name "typeRevision")
                                 (description :target-type description
                                  :member-name "description")
                                 (glossary-terms :target-type glossary-terms
                                  :member-name "glossaryTerms")
                                 (forms-input :target-type form-input-list
                                  :member-name "formsInput")
                                 (prediction-configuration :target-type
                                  prediction-configuration :member-name
                                  "predictionConfiguration")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "CreateAssetRevisionInput"))

(smithy/sdk/shapes:define-output create-asset-revision-output common-lisp:nil
                                 ((id :target-type asset-id :required
                                   common-lisp:t :member-name "id")
                                  (name :target-type asset-name :required
                                   common-lisp:t :member-name "name")
                                  (type-identifier :target-type
                                   asset-type-identifier :required
                                   common-lisp:t :member-name "typeIdentifier")
                                  (type-revision :target-type revision
                                   :required common-lisp:t :member-name
                                   "typeRevision")
                                  (external-identifier :target-type
                                   external-identifier :member-name
                                   "externalIdentifier")
                                  (revision :target-type revision :required
                                   common-lisp:t :member-name "revision")
                                  (description :target-type description
                                   :member-name "description")
                                  (created-at :target-type created-at
                                   :member-name "createdAt")
                                  (created-by :target-type created-by
                                   :member-name "createdBy")
                                  (first-revision-created-at :target-type
                                   created-at :member-name
                                   "firstRevisionCreatedAt")
                                  (first-revision-created-by :target-type
                                   created-by :member-name
                                   "firstRevisionCreatedBy")
                                  (glossary-terms :target-type glossary-terms
                                   :member-name "glossaryTerms")
                                  (owning-project-id :target-type project-id
                                   :required common-lisp:t :member-name
                                   "owningProjectId")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (listing :target-type asset-listing-details
                                   :member-name "listing")
                                  (forms-output :target-type form-output-list
                                   :required common-lisp:t :member-name
                                   "formsOutput")
                                  (read-only-forms-output :target-type
                                   form-output-list :member-name
                                   "readOnlyFormsOutput")
                                  (latest-time-series-data-point-forms-output
                                   :target-type
                                   time-series-data-point-summary-form-output-list
                                   :member-name
                                   "latestTimeSeriesDataPointFormsOutput")
                                  (prediction-configuration :target-type
                                   prediction-configuration :member-name
                                   "predictionConfiguration"))
                                 (:shape-name "CreateAssetRevisionOutput"))

(smithy/sdk/shapes:define-input create-asset-type-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (name :target-type type-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (forms-input :target-type forms-input-map
                                  :required common-lisp:t :member-name
                                  "formsInput")
                                 (owning-project-identifier :target-type
                                  project-id :required common-lisp:t
                                  :member-name "owningProjectIdentifier"))
                                (:shape-name "CreateAssetTypeInput"))

(smithy/sdk/shapes:define-output create-asset-type-output common-lisp:nil
                                 ((domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (name :target-type type-name :required
                                   common-lisp:t :member-name "name")
                                  (revision :target-type revision :required
                                   common-lisp:t :member-name "revision")
                                  (description :target-type description
                                   :member-name "description")
                                  (forms-output :target-type forms-output-map
                                   :required common-lisp:t :member-name
                                   "formsOutput")
                                  (owning-project-id :target-type project-id
                                   :member-name "owningProjectId")
                                  (origin-domain-id :target-type domain-id
                                   :member-name "originDomainId")
                                  (origin-project-id :target-type project-id
                                   :member-name "originProjectId")
                                  (created-at :target-type created-at
                                   :member-name "createdAt")
                                  (created-by :target-type created-by
                                   :member-name "createdBy")
                                  (updated-at :target-type updated-at
                                   :member-name "updatedAt")
                                  (updated-by :target-type updated-by
                                   :member-name "updatedBy"))
                                 (:shape-name "CreateAssetTypeOutput"))

(smithy/sdk/shapes:define-structure create-asset-type-policy-grant-detail
                                    common-lisp:nil
                                    ((include-child-domain-units :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "includeChildDomainUnits"))
                                    (:shape-name
                                     "CreateAssetTypePolicyGrantDetail"))

(smithy/sdk/shapes:define-input create-connection-input common-lisp:nil
                                ((aws-location :target-type aws-location
                                  :member-name "awsLocation")
                                 (client-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "clientToken")
                                 (description :target-type description
                                  :member-name "description")
                                 (domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (environment-identifier :target-type
                                  environment-id :required common-lisp:t
                                  :member-name "environmentIdentifier")
                                 (name :target-type connection-name :required
                                  common-lisp:t :member-name "name")
                                 (props :target-type
                                  connection-properties-input :member-name
                                  "props"))
                                (:shape-name "CreateConnectionInput"))

(smithy/sdk/shapes:define-output create-connection-output common-lisp:nil
                                 ((connection-id :target-type connection-id
                                   :required common-lisp:t :member-name
                                   "connectionId")
                                  (description :target-type description
                                   :member-name "description")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (domain-unit-id :target-type domain-unit-id
                                   :required common-lisp:t :member-name
                                   "domainUnitId")
                                  (environment-id :target-type environment-id
                                   :member-name "environmentId")
                                  (name :target-type connection-name :required
                                   common-lisp:t :member-name "name")
                                  (physical-endpoints :target-type
                                   physical-endpoints :required common-lisp:t
                                   :member-name "physicalEndpoints")
                                  (project-id :target-type project-id
                                   :member-name "projectId")
                                  (props :target-type
                                   connection-properties-output :member-name
                                   "props")
                                  (type :target-type connection-type :required
                                   common-lisp:t :member-name "type"))
                                 (:shape-name "CreateConnectionOutput"))

(smithy/sdk/shapes:define-input create-data-product-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (name :target-type data-product-name :required
                                  common-lisp:t :member-name "name")
                                 (owning-project-identifier :target-type
                                  project-id :required common-lisp:t
                                  :member-name "owningProjectIdentifier")
                                 (description :target-type
                                  data-product-description :member-name
                                  "description")
                                 (glossary-terms :target-type glossary-terms
                                  :member-name "glossaryTerms")
                                 (forms-input :target-type form-input-list
                                  :member-name "formsInput")
                                 (items :target-type data-product-items
                                  :member-name "items")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "CreateDataProductInput"))

(smithy/sdk/shapes:define-output create-data-product-output common-lisp:nil
                                 ((domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (id :target-type data-product-id :required
                                   common-lisp:t :member-name "id")
                                  (revision :target-type revision :required
                                   common-lisp:t :member-name "revision")
                                  (owning-project-id :target-type project-id
                                   :required common-lisp:t :member-name
                                   "owningProjectId")
                                  (name :target-type data-product-name
                                   :required common-lisp:t :member-name "name")
                                  (status :target-type data-product-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (description :target-type
                                   data-product-description :member-name
                                   "description")
                                  (glossary-terms :target-type glossary-terms
                                   :member-name "glossaryTerms")
                                  (items :target-type data-product-items
                                   :member-name "items")
                                  (forms-output :target-type form-output-list
                                   :member-name "formsOutput")
                                  (created-at :target-type created-at
                                   :member-name "createdAt")
                                  (created-by :target-type created-by
                                   :member-name "createdBy")
                                  (first-revision-created-at :target-type
                                   created-at :member-name
                                   "firstRevisionCreatedAt")
                                  (first-revision-created-by :target-type
                                   created-by :member-name
                                   "firstRevisionCreatedBy"))
                                 (:shape-name "CreateDataProductOutput"))

(smithy/sdk/shapes:define-input create-data-product-revision-input
                                common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type data-product-id
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t)
                                 (name :target-type data-product-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type
                                  data-product-description :member-name
                                  "description")
                                 (glossary-terms :target-type glossary-terms
                                  :member-name "glossaryTerms")
                                 (items :target-type data-product-items
                                  :member-name "items")
                                 (forms-input :target-type form-input-list
                                  :member-name "formsInput")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "CreateDataProductRevisionInput"))

(smithy/sdk/shapes:define-output create-data-product-revision-output
                                 common-lisp:nil
                                 ((domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (id :target-type data-product-id :required
                                   common-lisp:t :member-name "id")
                                  (revision :target-type revision :required
                                   common-lisp:t :member-name "revision")
                                  (owning-project-id :target-type project-id
                                   :required common-lisp:t :member-name
                                   "owningProjectId")
                                  (name :target-type data-product-name
                                   :required common-lisp:t :member-name "name")
                                  (status :target-type data-product-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (description :target-type
                                   data-product-description :member-name
                                   "description")
                                  (glossary-terms :target-type glossary-terms
                                   :member-name "glossaryTerms")
                                  (items :target-type data-product-items
                                   :member-name "items")
                                  (forms-output :target-type form-output-list
                                   :member-name "formsOutput")
                                  (created-at :target-type created-at
                                   :member-name "createdAt")
                                  (created-by :target-type created-by
                                   :member-name "createdBy")
                                  (first-revision-created-at :target-type
                                   created-at :member-name
                                   "firstRevisionCreatedAt")
                                  (first-revision-created-by :target-type
                                   created-by :member-name
                                   "firstRevisionCreatedBy"))
                                 (:shape-name
                                  "CreateDataProductRevisionOutput"))

(smithy/sdk/shapes:define-input create-data-source-input common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (project-identifier :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "projectIdentifier")
                                 (environment-identifier :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "environmentIdentifier")
                                 (connection-identifier :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "connectionIdentifier")
                                 (type :target-type data-source-type :required
                                  common-lisp:t :member-name "type")
                                 (configuration :target-type
                                  data-source-configuration-input :member-name
                                  "configuration")
                                 (recommendation :target-type
                                  recommendation-configuration :member-name
                                  "recommendation")
                                 (enable-setting :target-type enable-setting
                                  :member-name "enableSetting")
                                 (schedule :target-type schedule-configuration
                                  :member-name "schedule")
                                 (publish-on-import :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "publishOnImport")
                                 (asset-forms-input :target-type
                                  form-input-list :member-name
                                  "assetFormsInput")
                                 (client-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "clientToken"))
                                (:shape-name "CreateDataSourceInput"))

(smithy/sdk/shapes:define-output create-data-source-output common-lisp:nil
                                 ((id :target-type data-source-id :required
                                   common-lisp:t :member-name "id")
                                  (status :target-type data-source-status
                                   :member-name "status")
                                  (type :target-type data-source-type
                                   :member-name "type")
                                  (name :target-type name :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (project-id :target-type project-id :required
                                   common-lisp:t :member-name "projectId")
                                  (environment-id :target-type environment-id
                                   :member-name "environmentId")
                                  (connection-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "connectionId")
                                  (configuration :target-type
                                   data-source-configuration-output
                                   :member-name "configuration")
                                  (recommendation :target-type
                                   recommendation-configuration :member-name
                                   "recommendation")
                                  (enable-setting :target-type enable-setting
                                   :member-name "enableSetting")
                                  (publish-on-import :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "publishOnImport")
                                  (asset-forms-output :target-type
                                   form-output-list :member-name
                                   "assetFormsOutput")
                                  (schedule :target-type schedule-configuration
                                   :member-name "schedule")
                                  (last-run-status :target-type
                                   data-source-run-status :member-name
                                   "lastRunStatus")
                                  (last-run-at :target-type date-time
                                   :member-name "lastRunAt")
                                  (last-run-error-message :target-type
                                   data-source-error-message :member-name
                                   "lastRunErrorMessage")
                                  (error-message :target-type
                                   data-source-error-message :member-name
                                   "errorMessage")
                                  (created-at :target-type date-time
                                   :member-name "createdAt")
                                  (updated-at :target-type date-time
                                   :member-name "updatedAt"))
                                 (:shape-name "CreateDataSourceOutput"))

(smithy/sdk/shapes:define-input create-domain-input common-lisp:nil
                                ((name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "description")
                                 (single-sign-on :target-type single-sign-on
                                  :member-name "singleSignOn")
                                 (domain-execution-role :target-type role-arn
                                  :required common-lisp:t :member-name
                                  "domainExecutionRole")
                                 (kms-key-identifier :target-type kms-key-arn
                                  :member-name "kmsKeyIdentifier")
                                 (tags :target-type tags :member-name "tags")
                                 (domain-version :target-type domain-version
                                  :member-name "domainVersion")
                                 (service-role :target-type role-arn
                                  :member-name "serviceRole")
                                 (client-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "clientToken"))
                                (:shape-name "CreateDomainInput"))

(smithy/sdk/shapes:define-output create-domain-output common-lisp:nil
                                 ((id :target-type domain-id :required
                                   common-lisp:t :member-name "id")
                                  (root-domain-unit-id :target-type
                                   domain-unit-id :member-name
                                   "rootDomainUnitId")
                                  (name :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "name")
                                  (description :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "description")
                                  (single-sign-on :target-type single-sign-on
                                   :member-name "singleSignOn")
                                  (domain-execution-role :target-type role-arn
                                   :member-name "domainExecutionRole")
                                  (arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "arn")
                                  (kms-key-identifier :target-type kms-key-arn
                                   :member-name "kmsKeyIdentifier")
                                  (status :target-type domain-status
                                   :member-name "status")
                                  (portal-url :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "portalUrl")
                                  (tags :target-type tags :member-name "tags")
                                  (domain-version :target-type domain-version
                                   :member-name "domainVersion")
                                  (service-role :target-type role-arn
                                   :member-name "serviceRole"))
                                 (:shape-name "CreateDomainOutput"))

(smithy/sdk/shapes:define-input create-domain-unit-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (name :target-type domain-unit-name :required
                                  common-lisp:t :member-name "name")
                                 (parent-domain-unit-identifier :target-type
                                  domain-unit-id :required common-lisp:t
                                  :member-name "parentDomainUnitIdentifier")
                                 (description :target-type
                                  domain-unit-description :member-name
                                  "description")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "CreateDomainUnitInput"))

(smithy/sdk/shapes:define-output create-domain-unit-output common-lisp:nil
                                 ((id :target-type domain-unit-id :required
                                   common-lisp:t :member-name "id")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (name :target-type domain-unit-name :required
                                   common-lisp:t :member-name "name")
                                  (parent-domain-unit-id :target-type
                                   domain-unit-id :member-name
                                   "parentDomainUnitId")
                                  (description :target-type
                                   domain-unit-description :member-name
                                   "description")
                                  (owners :target-type domain-unit-owners
                                   :required common-lisp:t :member-name
                                   "owners")
                                  (ancestor-domain-unit-ids :target-type
                                   domain-unit-ids :required common-lisp:t
                                   :member-name "ancestorDomainUnitIds")
                                  (created-at :target-type created-at
                                   :member-name "createdAt")
                                  (created-by :target-type created-by
                                   :member-name "createdBy"))
                                 (:shape-name "CreateDomainUnitOutput"))

(smithy/sdk/shapes:define-structure create-domain-unit-policy-grant-detail
                                    common-lisp:nil
                                    ((include-child-domain-units :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "includeChildDomainUnits"))
                                    (:shape-name
                                     "CreateDomainUnitPolicyGrantDetail"))

(smithy/sdk/shapes:define-input create-environment-action-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (environment-identifier :target-type
                                  environment-id :required common-lisp:t
                                  :member-name "environmentIdentifier"
                                  :http-label common-lisp:t)
                                 (name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "name")
                                 (parameters :target-type action-parameters
                                  :required common-lisp:t :member-name
                                  "parameters")
                                 (description :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "description"))
                                (:shape-name "CreateEnvironmentActionInput"))

(smithy/sdk/shapes:define-output create-environment-action-output
                                 common-lisp:nil
                                 ((domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (environment-id :target-type environment-id
                                   :required common-lisp:t :member-name
                                   "environmentId")
                                  (id :target-type environment-action-id
                                   :required common-lisp:t :member-name "id")
                                  (name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "name")
                                  (parameters :target-type action-parameters
                                   :required common-lisp:t :member-name
                                   "parameters")
                                  (description :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "description"))
                                 (:shape-name "CreateEnvironmentActionOutput"))

(smithy/sdk/shapes:define-input create-environment-input common-lisp:nil
                                ((project-identifier :target-type project-id
                                  :required common-lisp:t :member-name
                                  "projectIdentifier")
                                 (domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (description :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "description")
                                 (name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "name")
                                 (environment-profile-identifier :target-type
                                  environment-profile-id :member-name
                                  "environmentProfileIdentifier")
                                 (user-parameters :target-type
                                  environment-parameters-list :member-name
                                  "userParameters")
                                 (glossary-terms :target-type glossary-terms
                                  :member-name "glossaryTerms")
                                 (environment-account-identifier :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "environmentAccountIdentifier")
                                 (environment-account-region :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "environmentAccountRegion")
                                 (environment-blueprint-identifier :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "environmentBlueprintIdentifier")
                                 (deployment-order :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "deploymentOrder")
                                 (environment-configuration-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "environmentConfigurationId"))
                                (:shape-name "CreateEnvironmentInput"))

(smithy/sdk/shapes:define-output create-environment-output common-lisp:nil
                                 ((project-id :target-type project-id :required
                                   common-lisp:t :member-name "projectId")
                                  (id :target-type environment-id :member-name
                                   "id")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (created-by :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "createdBy")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "createdAt" :timestamp-format
                                   "date-time")
                                  (updated-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "updatedAt" :timestamp-format
                                   "date-time")
                                  (name :target-type environment-name :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (environment-profile-id :target-type
                                   environment-profile-id :member-name
                                   "environmentProfileId")
                                  (aws-account-id :target-type aws-account-id
                                   :member-name "awsAccountId")
                                  (aws-account-region :target-type aws-region
                                   :member-name "awsAccountRegion")
                                  (provider :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "provider")
                                  (provisioned-resources :target-type
                                   resource-list :member-name
                                   "provisionedResources")
                                  (status :target-type environment-status
                                   :member-name "status")
                                  (environment-actions :target-type
                                   environment-action-list :member-name
                                   "environmentActions")
                                  (glossary-terms :target-type glossary-terms
                                   :member-name "glossaryTerms")
                                  (user-parameters :target-type
                                   custom-parameter-list :member-name
                                   "userParameters")
                                  (last-deployment :target-type deployment
                                   :member-name "lastDeployment")
                                  (provisioning-properties :target-type
                                   provisioning-properties :member-name
                                   "provisioningProperties")
                                  (deployment-properties :target-type
                                   deployment-properties :member-name
                                   "deploymentProperties")
                                  (environment-blueprint-id :target-type
                                   environment-blueprint-id :member-name
                                   "environmentBlueprintId")
                                  (environment-configuration-id :target-type
                                   environment-configuration-id :member-name
                                   "environmentConfigurationId"))
                                 (:shape-name "CreateEnvironmentOutput"))

(smithy/sdk/shapes:define-input create-environment-profile-input
                                common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (name :target-type environment-profile-name
                                  :required common-lisp:t :member-name "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (environment-blueprint-identifier :target-type
                                  environment-blueprint-id :required
                                  common-lisp:t :member-name
                                  "environmentBlueprintIdentifier")
                                 (project-identifier :target-type project-id
                                  :required common-lisp:t :member-name
                                  "projectIdentifier")
                                 (user-parameters :target-type
                                  environment-parameters-list :member-name
                                  "userParameters")
                                 (aws-account-id :target-type aws-account-id
                                  :member-name "awsAccountId")
                                 (aws-account-region :target-type aws-region
                                  :member-name "awsAccountRegion"))
                                (:shape-name "CreateEnvironmentProfileInput"))

(smithy/sdk/shapes:define-output create-environment-profile-output
                                 common-lisp:nil
                                 ((id :target-type environment-profile-id
                                   :required common-lisp:t :member-name "id")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (aws-account-id :target-type aws-account-id
                                   :member-name "awsAccountId")
                                  (aws-account-region :target-type aws-region
                                   :member-name "awsAccountRegion")
                                  (created-by :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "createdBy")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "createdAt" :timestamp-format
                                   "date-time")
                                  (updated-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "updatedAt" :timestamp-format
                                   "date-time")
                                  (name :target-type environment-profile-name
                                   :required common-lisp:t :member-name "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (environment-blueprint-id :target-type
                                   environment-blueprint-id :required
                                   common-lisp:t :member-name
                                   "environmentBlueprintId")
                                  (project-id :target-type project-id
                                   :member-name "projectId")
                                  (user-parameters :target-type
                                   custom-parameter-list :member-name
                                   "userParameters"))
                                 (:shape-name "CreateEnvironmentProfileOutput"))

(smithy/sdk/shapes:define-structure
 create-environment-profile-policy-grant-detail common-lisp:nil
 ((domain-unit-id :target-type domain-unit-id :member-name "domainUnitId"))
 (:shape-name "CreateEnvironmentProfilePolicyGrantDetail"))

(smithy/sdk/shapes:define-input create-form-type-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (name :target-type form-type-name :required
                                  common-lisp:t :member-name "name")
                                 (model :target-type model :required
                                  common-lisp:t :member-name "model")
                                 (owning-project-identifier :target-type
                                  project-id :required common-lisp:t
                                  :member-name "owningProjectIdentifier")
                                 (status :target-type form-type-status
                                  :member-name "status")
                                 (description :target-type description
                                  :member-name "description"))
                                (:shape-name "CreateFormTypeInput"))

(smithy/sdk/shapes:define-output create-form-type-output common-lisp:nil
                                 ((domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (name :target-type form-type-name :required
                                   common-lisp:t :member-name "name")
                                  (revision :target-type revision :required
                                   common-lisp:t :member-name "revision")
                                  (description :target-type description
                                   :member-name "description")
                                  (owning-project-id :target-type project-id
                                   :member-name "owningProjectId")
                                  (origin-domain-id :target-type domain-id
                                   :member-name "originDomainId")
                                  (origin-project-id :target-type project-id
                                   :member-name "originProjectId"))
                                 (:shape-name "CreateFormTypeOutput"))

(smithy/sdk/shapes:define-structure create-form-type-policy-grant-detail
                                    common-lisp:nil
                                    ((include-child-domain-units :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "includeChildDomainUnits"))
                                    (:shape-name
                                     "CreateFormTypePolicyGrantDetail"))

(smithy/sdk/shapes:define-input create-glossary-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (name :target-type glossary-name :required
                                  common-lisp:t :member-name "name")
                                 (owning-project-identifier :target-type
                                  project-id :required common-lisp:t
                                  :member-name "owningProjectIdentifier")
                                 (description :target-type glossary-description
                                  :member-name "description")
                                 (status :target-type glossary-status
                                  :member-name "status")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "CreateGlossaryInput"))

(smithy/sdk/shapes:define-output create-glossary-output common-lisp:nil
                                 ((domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (id :target-type glossary-id :required
                                   common-lisp:t :member-name "id")
                                  (name :target-type glossary-name :required
                                   common-lisp:t :member-name "name")
                                  (owning-project-id :target-type project-id
                                   :required common-lisp:t :member-name
                                   "owningProjectId")
                                  (description :target-type
                                   glossary-description :member-name
                                   "description")
                                  (status :target-type glossary-status
                                   :member-name "status"))
                                 (:shape-name "CreateGlossaryOutput"))

(smithy/sdk/shapes:define-structure create-glossary-policy-grant-detail
                                    common-lisp:nil
                                    ((include-child-domain-units :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "includeChildDomainUnits"))
                                    (:shape-name
                                     "CreateGlossaryPolicyGrantDetail"))

(smithy/sdk/shapes:define-input create-glossary-term-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (glossary-identifier :target-type
                                  glossary-term-id :required common-lisp:t
                                  :member-name "glossaryIdentifier")
                                 (name :target-type glossary-term-name
                                  :required common-lisp:t :member-name "name")
                                 (status :target-type glossary-term-status
                                  :member-name "status")
                                 (short-description :target-type
                                  short-description :member-name
                                  "shortDescription")
                                 (long-description :target-type
                                  long-description :member-name
                                  "longDescription")
                                 (term-relations :target-type term-relations
                                  :member-name "termRelations")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "CreateGlossaryTermInput"))

(smithy/sdk/shapes:define-output create-glossary-term-output common-lisp:nil
                                 ((id :target-type glossary-term-id :required
                                   common-lisp:t :member-name "id")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (glossary-id :target-type glossary-id
                                   :required common-lisp:t :member-name
                                   "glossaryId")
                                  (name :target-type glossary-term-name
                                   :required common-lisp:t :member-name "name")
                                  (status :target-type glossary-term-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (short-description :target-type
                                   short-description :member-name
                                   "shortDescription")
                                  (long-description :target-type
                                   long-description :member-name
                                   "longDescription")
                                  (term-relations :target-type term-relations
                                   :member-name "termRelations"))
                                 (:shape-name "CreateGlossaryTermOutput"))

(smithy/sdk/shapes:define-input create-group-profile-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (group-identifier :target-type
                                  group-identifier :required common-lisp:t
                                  :member-name "groupIdentifier")
                                 (client-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "clientToken"))
                                (:shape-name "CreateGroupProfileInput"))

(smithy/sdk/shapes:define-output create-group-profile-output common-lisp:nil
                                 ((domain-id :target-type domain-id
                                   :member-name "domainId")
                                  (id :target-type group-profile-id
                                   :member-name "id")
                                  (status :target-type group-profile-status
                                   :member-name "status")
                                  (group-name :target-type group-profile-name
                                   :member-name "groupName"))
                                 (:shape-name "CreateGroupProfileOutput"))

(smithy/sdk/shapes:define-input create-listing-change-set-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (entity-identifier :target-type
                                  entity-identifier :required common-lisp:t
                                  :member-name "entityIdentifier")
                                 (entity-type :target-type entity-type
                                  :required common-lisp:t :member-name
                                  "entityType")
                                 (entity-revision :target-type revision
                                  :member-name "entityRevision")
                                 (action :target-type change-action :required
                                  common-lisp:t :member-name "action")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "CreateListingChangeSetInput"))

(smithy/sdk/shapes:define-output create-listing-change-set-output
                                 common-lisp:nil
                                 ((listing-id :target-type listing-id :required
                                   common-lisp:t :member-name "listingId")
                                  (listing-revision :target-type revision
                                   :required common-lisp:t :member-name
                                   "listingRevision")
                                  (status :target-type listing-status :required
                                   common-lisp:t :member-name "status"))
                                 (:shape-name "CreateListingChangeSetOutput"))

(smithy/sdk/shapes:define-structure
 create-project-from-project-profile-policy-grant-detail common-lisp:nil
 ((include-child-domain-units :target-type smithy/sdk/smithy-types:boolean
   :member-name "includeChildDomainUnits")
  (project-profiles :target-type project-profile-list :member-name
   "projectProfiles"))
 (:shape-name "CreateProjectFromProjectProfilePolicyGrantDetail"))

(smithy/sdk/shapes:define-input create-project-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (name :target-type project-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (glossary-terms :target-type glossary-terms
                                  :member-name "glossaryTerms")
                                 (domain-unit-id :target-type domain-unit-id
                                  :member-name "domainUnitId")
                                 (project-profile-id :target-type
                                  project-profile-id :member-name
                                  "projectProfileId")
                                 (user-parameters :target-type
                                  environment-configuration-user-parameters-list
                                  :member-name "userParameters"))
                                (:shape-name "CreateProjectInput"))

(smithy/sdk/shapes:define-input create-project-membership-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (project-identifier :target-type project-id
                                  :required common-lisp:t :member-name
                                  "projectIdentifier" :http-label
                                  common-lisp:t)
                                 (member :target-type member :required
                                  common-lisp:t :member-name "member")
                                 (designation :target-type user-designation
                                  :required common-lisp:t :member-name
                                  "designation"))
                                (:shape-name "CreateProjectMembershipInput"))

(smithy/sdk/shapes:define-output create-project-membership-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "CreateProjectMembershipOutput"))

(smithy/sdk/shapes:define-output create-project-output common-lisp:nil
                                 ((domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (id :target-type project-id :required
                                   common-lisp:t :member-name "id")
                                  (name :target-type project-name :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (project-status :target-type project-status
                                   :member-name "projectStatus")
                                  (failure-reasons :target-type failure-reasons
                                   :member-name "failureReasons")
                                  (created-by :target-type created-by :required
                                   common-lisp:t :member-name "createdBy")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "createdAt" :timestamp-format
                                   "date-time")
                                  (last-updated-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "lastUpdatedAt"
                                   :timestamp-format "date-time")
                                  (glossary-terms :target-type glossary-terms
                                   :member-name "glossaryTerms")
                                  (domain-unit-id :target-type domain-unit-id
                                   :member-name "domainUnitId")
                                  (project-profile-id :target-type
                                   project-profile-id :member-name
                                   "projectProfileId")
                                  (user-parameters :target-type
                                   environment-configuration-user-parameters-list
                                   :member-name "userParameters")
                                  (environment-deployment-details :target-type
                                   environment-deployment-details :member-name
                                   "environmentDeploymentDetails"))
                                 (:shape-name "CreateProjectOutput"))

(smithy/sdk/shapes:define-structure create-project-policy-grant-detail
                                    common-lisp:nil
                                    ((include-child-domain-units :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "includeChildDomainUnits"))
                                    (:shape-name
                                     "CreateProjectPolicyGrantDetail"))

(smithy/sdk/shapes:define-input create-project-profile-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (name :target-type project-profile-name
                                  :required common-lisp:t :member-name "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (status :target-type status :member-name
                                  "status")
                                 (environment-configurations :target-type
                                  environment-configurations-list :member-name
                                  "environmentConfigurations")
                                 (domain-unit-identifier :target-type
                                  domain-unit-id :member-name
                                  "domainUnitIdentifier"))
                                (:shape-name "CreateProjectProfileInput"))

(smithy/sdk/shapes:define-output create-project-profile-output common-lisp:nil
                                 ((domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (id :target-type project-profile-id :required
                                   common-lisp:t :member-name "id")
                                  (name :target-type project-profile-name
                                   :required common-lisp:t :member-name "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (status :target-type status :member-name
                                   "status")
                                  (environment-configurations :target-type
                                   environment-configurations-list :member-name
                                   "environmentConfigurations")
                                  (created-by :target-type created-by :required
                                   common-lisp:t :member-name "createdBy")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "createdAt" :timestamp-format
                                   "date-time")
                                  (last-updated-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "lastUpdatedAt"
                                   :timestamp-format "date-time")
                                  (domain-unit-id :target-type domain-unit-id
                                   :member-name "domainUnitId"))
                                 (:shape-name "CreateProjectProfileOutput"))

(smithy/sdk/shapes:define-input create-rule-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (name :target-type rule-name :required
                                  common-lisp:t :member-name "name")
                                 (target :target-type rule-target :required
                                  common-lisp:t :member-name "target")
                                 (action :target-type rule-action :required
                                  common-lisp:t :member-name "action")
                                 (scope :target-type rule-scope :required
                                  common-lisp:t :member-name "scope")
                                 (detail :target-type rule-detail :required
                                  common-lisp:t :member-name "detail")
                                 (description :target-type description
                                  :member-name "description")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "CreateRuleInput"))

(smithy/sdk/shapes:define-output create-rule-output common-lisp:nil
                                 ((identifier :target-type rule-id :required
                                   common-lisp:t :member-name "identifier")
                                  (name :target-type rule-name :required
                                   common-lisp:t :member-name "name")
                                  (rule-type :target-type rule-type :required
                                   common-lisp:t :member-name "ruleType")
                                  (target :target-type rule-target :required
                                   common-lisp:t :member-name "target")
                                  (action :target-type rule-action :required
                                   common-lisp:t :member-name "action")
                                  (scope :target-type rule-scope :required
                                   common-lisp:t :member-name "scope")
                                  (detail :target-type rule-detail :required
                                   common-lisp:t :member-name "detail")
                                  (target-type :target-type rule-target-type
                                   :member-name "targetType")
                                  (description :target-type description
                                   :member-name "description")
                                  (created-at :target-type created-at :required
                                   common-lisp:t :member-name "createdAt")
                                  (created-by :target-type created-by :required
                                   common-lisp:t :member-name "createdBy"))
                                 (:shape-name "CreateRuleOutput"))

(smithy/sdk/shapes:define-input create-subscription-grant-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (environment-identifier :target-type
                                  environment-id :required common-lisp:t
                                  :member-name "environmentIdentifier")
                                 (subscription-target-identifier :target-type
                                  subscription-target-id :member-name
                                  "subscriptionTargetIdentifier")
                                 (granted-entity :target-type
                                  granted-entity-input :required common-lisp:t
                                  :member-name "grantedEntity")
                                 (asset-target-names :target-type
                                  asset-target-names :member-name
                                  "assetTargetNames")
                                 (client-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "clientToken"))
                                (:shape-name "CreateSubscriptionGrantInput"))

(smithy/sdk/shapes:define-output create-subscription-grant-output
                                 common-lisp:nil
                                 ((id :target-type subscription-grant-id
                                   :required common-lisp:t :member-name "id")
                                  (created-by :target-type created-by :required
                                   common-lisp:t :member-name "createdBy")
                                  (updated-by :target-type updated-by
                                   :member-name "updatedBy")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (created-at :target-type created-at :required
                                   common-lisp:t :member-name "createdAt")
                                  (updated-at :target-type updated-at :required
                                   common-lisp:t :member-name "updatedAt")
                                  (subscription-target-id :target-type
                                   subscription-target-id :required
                                   common-lisp:t :member-name
                                   "subscriptionTargetId")
                                  (granted-entity :target-type granted-entity
                                   :required common-lisp:t :member-name
                                   "grantedEntity")
                                  (status :target-type
                                   subscription-grant-overall-status :required
                                   common-lisp:t :member-name "status")
                                  (assets :target-type subscribed-assets
                                   :member-name "assets")
                                  (subscription-id :target-type subscription-id
                                   :member-name "subscriptionId"))
                                 (:shape-name "CreateSubscriptionGrantOutput"))

(smithy/sdk/shapes:define-input create-subscription-request-input
                                common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (subscribed-principals :target-type
                                  subscribed-principal-inputs :required
                                  common-lisp:t :member-name
                                  "subscribedPrincipals")
                                 (subscribed-listings :target-type
                                  subscribed-listing-inputs :required
                                  common-lisp:t :member-name
                                  "subscribedListings")
                                 (request-reason :target-type request-reason
                                  :required common-lisp:t :member-name
                                  "requestReason")
                                 (client-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "clientToken")
                                 (metadata-forms :target-type
                                  metadata-form-inputs :member-name
                                  "metadataForms"))
                                (:shape-name "CreateSubscriptionRequestInput"))

(smithy/sdk/shapes:define-output create-subscription-request-output
                                 common-lisp:nil
                                 ((id :target-type subscription-request-id
                                   :required common-lisp:t :member-name "id")
                                  (created-by :target-type created-by :required
                                   common-lisp:t :member-name "createdBy")
                                  (updated-by :target-type updated-by
                                   :member-name "updatedBy")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (status :target-type
                                   subscription-request-status :required
                                   common-lisp:t :member-name "status")
                                  (created-at :target-type created-at :required
                                   common-lisp:t :member-name "createdAt")
                                  (updated-at :target-type updated-at :required
                                   common-lisp:t :member-name "updatedAt")
                                  (request-reason :target-type request-reason
                                   :required common-lisp:t :member-name
                                   "requestReason")
                                  (subscribed-principals :target-type
                                   subscribed-principals :required
                                   common-lisp:t :member-name
                                   "subscribedPrincipals")
                                  (subscribed-listings :target-type
                                   subscribed-listings :required common-lisp:t
                                   :member-name "subscribedListings")
                                  (reviewer-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "reviewerId")
                                  (decision-comment :target-type
                                   decision-comment :member-name
                                   "decisionComment")
                                  (existing-subscription-id :target-type
                                   subscription-id :member-name
                                   "existingSubscriptionId")
                                  (metadata-forms :target-type metadata-forms
                                   :member-name "metadataForms"))
                                 (:shape-name
                                  "CreateSubscriptionRequestOutput"))

(smithy/sdk/shapes:define-input create-subscription-target-input
                                common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (environment-identifier :target-type
                                  environment-id :required common-lisp:t
                                  :member-name "environmentIdentifier"
                                  :http-label common-lisp:t)
                                 (name :target-type subscription-target-name
                                  :required common-lisp:t :member-name "name")
                                 (type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "type")
                                 (subscription-target-config :target-type
                                  subscription-target-forms :required
                                  common-lisp:t :member-name
                                  "subscriptionTargetConfig")
                                 (authorized-principals :target-type
                                  authorized-principal-identifiers :required
                                  common-lisp:t :member-name
                                  "authorizedPrincipals")
                                 (manage-access-role :target-type iam-role-arn
                                  :required common-lisp:t :member-name
                                  "manageAccessRole")
                                 (applicable-asset-types :target-type
                                  applicable-asset-types :required
                                  common-lisp:t :member-name
                                  "applicableAssetTypes")
                                 (provider :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "provider")
                                 (client-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "clientToken"))
                                (:shape-name "CreateSubscriptionTargetInput"))

(smithy/sdk/shapes:define-output create-subscription-target-output
                                 common-lisp:nil
                                 ((id :target-type subscription-target-id
                                   :required common-lisp:t :member-name "id")
                                  (authorized-principals :target-type
                                   authorized-principal-identifiers :required
                                   common-lisp:t :member-name
                                   "authorizedPrincipals")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (project-id :target-type project-id :required
                                   common-lisp:t :member-name "projectId")
                                  (environment-id :target-type environment-id
                                   :required common-lisp:t :member-name
                                   "environmentId")
                                  (name :target-type subscription-target-name
                                   :required common-lisp:t :member-name "name")
                                  (type :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "type")
                                  (created-by :target-type created-by :required
                                   common-lisp:t :member-name "createdBy")
                                  (updated-by :target-type updated-by
                                   :member-name "updatedBy")
                                  (created-at :target-type created-at :required
                                   common-lisp:t :member-name "createdAt")
                                  (updated-at :target-type updated-at
                                   :member-name "updatedAt")
                                  (manage-access-role :target-type iam-role-arn
                                   :member-name "manageAccessRole")
                                  (applicable-asset-types :target-type
                                   applicable-asset-types :required
                                   common-lisp:t :member-name
                                   "applicableAssetTypes")
                                  (subscription-target-config :target-type
                                   subscription-target-forms :required
                                   common-lisp:t :member-name
                                   "subscriptionTargetConfig")
                                  (provider :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "provider"))
                                 (:shape-name "CreateSubscriptionTargetOutput"))

(smithy/sdk/shapes:define-input create-user-profile-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (user-identifier :target-type user-identifier
                                  :required common-lisp:t :member-name
                                  "userIdentifier")
                                 (user-type :target-type user-type :member-name
                                  "userType")
                                 (client-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "clientToken"))
                                (:shape-name "CreateUserProfileInput"))

(smithy/sdk/shapes:define-output create-user-profile-output common-lisp:nil
                                 ((domain-id :target-type domain-id
                                   :member-name "domainId")
                                  (id :target-type user-profile-id :member-name
                                   "id")
                                  (type :target-type user-profile-type
                                   :member-name "type")
                                  (status :target-type user-profile-status
                                   :member-name "status")
                                  (details :target-type user-profile-details
                                   :member-name "details"))
                                 (:shape-name "CreateUserProfileOutput"))

(smithy/sdk/shapes:define-type created-at smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type created-by smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map credential-map :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type cron-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure custom-parameter common-lisp:nil
                                    ((key-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "keyName")
                                     (description :target-type description
                                      :member-name "description")
                                     (field-type :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "fieldType")
                                     (default-value :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "defaultValue")
                                     (is-editable :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isEditable")
                                     (is-optional :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isOptional"))
                                    (:shape-name "CustomParameter"))

(smithy/sdk/shapes:define-list custom-parameter-list :member custom-parameter)

(smithy/sdk/shapes:define-enum data-asset-activity-status
    common-lisp:nil
  (:failed "FAILED")
  (:publishing-failed "PUBLISHING_FAILED")
  (:succeeded-created "SUCCEEDED_CREATED")
  (:succeeded-updated "SUCCEEDED_UPDATED")
  (:skipped-already-imported "SKIPPED_ALREADY_IMPORTED")
  (:skipped-archived "SKIPPED_ARCHIVED")
  (:skipped-no-access "SKIPPED_NO_ACCESS")
  (:unchanged "UNCHANGED"))

(smithy/sdk/shapes:define-type data-point-identifier
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type data-product-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type data-product-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure data-product-item common-lisp:nil
                                    ((item-type :target-type
                                      data-product-item-type :required
                                      common-lisp:t :member-name "itemType")
                                     (identifier :target-type entity-identifier
                                      :required common-lisp:t :member-name
                                      "identifier")
                                     (revision :target-type revision
                                      :member-name "revision")
                                     (glossary-terms :target-type
                                      item-glossary-terms :member-name
                                      "glossaryTerms"))
                                    (:shape-name "DataProductItem"))

(smithy/sdk/shapes:define-structure data-product-item-additional-attributes
                                    common-lisp:nil
                                    ((match-rationale :target-type
                                      match-rationale :member-name
                                      "matchRationale"))
                                    (:shape-name
                                     "DataProductItemAdditionalAttributes"))

(smithy/sdk/shapes:define-enum data-product-item-type
    common-lisp:nil
  (:asset "ASSET"))

(smithy/sdk/shapes:define-list data-product-items :member data-product-item)

(smithy/sdk/shapes:define-structure data-product-listing common-lisp:nil
                                    ((data-product-id :target-type
                                      data-product-id :member-name
                                      "dataProductId")
                                     (data-product-revision :target-type
                                      revision :member-name
                                      "dataProductRevision")
                                     (created-at :target-type created-at
                                      :member-name "createdAt")
                                     (forms :target-type forms :member-name
                                      "forms")
                                     (glossary-terms :target-type
                                      detailed-glossary-terms :member-name
                                      "glossaryTerms")
                                     (owning-project-id :target-type project-id
                                      :member-name "owningProjectId")
                                     (items :target-type listing-summaries
                                      :member-name "items"))
                                    (:shape-name "DataProductListing"))

(smithy/sdk/shapes:define-structure data-product-listing-item common-lisp:nil
                                    ((listing-id :target-type listing-id
                                      :member-name "listingId")
                                     (listing-revision :target-type revision
                                      :member-name "listingRevision")
                                     (name :target-type data-product-name
                                      :member-name "name")
                                     (entity-id :target-type data-product-id
                                      :member-name "entityId")
                                     (entity-revision :target-type revision
                                      :member-name "entityRevision")
                                     (description :target-type description
                                      :member-name "description")
                                     (created-at :target-type created-at
                                      :member-name "createdAt")
                                     (listing-created-by :target-type
                                      created-by :member-name
                                      "listingCreatedBy")
                                     (listing-updated-by :target-type
                                      updated-by :member-name
                                      "listingUpdatedBy")
                                     (glossary-terms :target-type
                                      detailed-glossary-terms :member-name
                                      "glossaryTerms")
                                     (owning-project-id :target-type project-id
                                      :member-name "owningProjectId")
                                     (additional-attributes :target-type
                                      data-product-listing-item-additional-attributes
                                      :member-name "additionalAttributes")
                                     (items :target-type listing-summary-items
                                      :member-name "items"))
                                    (:shape-name "DataProductListingItem"))

(smithy/sdk/shapes:define-structure
 data-product-listing-item-additional-attributes common-lisp:nil
 ((forms :target-type forms :member-name "forms")
  (match-rationale :target-type match-rationale :member-name "matchRationale"))
 (:shape-name "DataProductListingItemAdditionalAttributes"))

(smithy/sdk/shapes:define-type data-product-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure data-product-result-item common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "domainId")
                                     (id :target-type data-product-id :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type data-product-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (owning-project-id :target-type project-id
                                      :required common-lisp:t :member-name
                                      "owningProjectId")
                                     (description :target-type
                                      data-product-description :member-name
                                      "description")
                                     (glossary-terms :target-type
                                      glossary-terms :member-name
                                      "glossaryTerms")
                                     (created-at :target-type created-at
                                      :member-name "createdAt")
                                     (created-by :target-type created-by
                                      :member-name "createdBy")
                                     (first-revision-created-at :target-type
                                      created-at :member-name
                                      "firstRevisionCreatedAt")
                                     (first-revision-created-by :target-type
                                      created-by :member-name
                                      "firstRevisionCreatedBy")
                                     (additional-attributes :target-type
                                      data-product-item-additional-attributes
                                      :member-name "additionalAttributes"))
                                    (:shape-name "DataProductResultItem"))

(smithy/sdk/shapes:define-structure data-product-revision common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :member-name "domainId")
                                     (id :target-type data-product-id
                                      :member-name "id")
                                     (revision :target-type revision
                                      :member-name "revision")
                                     (created-at :target-type created-at
                                      :member-name "createdAt")
                                     (created-by :target-type created-by
                                      :member-name "createdBy"))
                                    (:shape-name "DataProductRevision"))

(smithy/sdk/shapes:define-list data-product-revisions :member
                               data-product-revision)

(smithy/sdk/shapes:define-enum data-product-status
    common-lisp:nil
  (:created "CREATED")
  (:creating "CREATING")
  (:create-failed "CREATE_FAILED"))

common-lisp:nil

(smithy/sdk/shapes:define-union data-source-configuration-input common-lisp:nil
                                ((glue-run-configuration :target-type
                                  glue-run-configuration-input :member-name
                                  "glueRunConfiguration")
                                 (redshift-run-configuration :target-type
                                  redshift-run-configuration-input :member-name
                                  "redshiftRunConfiguration")
                                 (sage-maker-run-configuration :target-type
                                  sage-maker-run-configuration-input
                                  :member-name "sageMakerRunConfiguration"))
                                (:shape-name "DataSourceConfigurationInput"))

(smithy/sdk/shapes:define-union data-source-configuration-output
                                common-lisp:nil
                                ((glue-run-configuration :target-type
                                  glue-run-configuration-output :member-name
                                  "glueRunConfiguration")
                                 (redshift-run-configuration :target-type
                                  redshift-run-configuration-output
                                  :member-name "redshiftRunConfiguration")
                                 (sage-maker-run-configuration :target-type
                                  sage-maker-run-configuration-output
                                  :member-name "sageMakerRunConfiguration"))
                                (:shape-name "DataSourceConfigurationOutput"))

(smithy/sdk/shapes:define-structure data-source-error-message common-lisp:nil
                                    ((error-type :target-type
                                      data-source-error-type :required
                                      common-lisp:t :member-name "errorType")
                                     (error-detail :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "errorDetail"))
                                    (:shape-name "DataSourceErrorMessage"))

(smithy/sdk/shapes:define-enum data-source-error-type
    common-lisp:nil
  (:access-denied-exception "ACCESS_DENIED_EXCEPTION")
  (:conflict-exception "CONFLICT_EXCEPTION")
  (:internal-server-exception "INTERNAL_SERVER_EXCEPTION")
  (:resource-not-found-exception "RESOURCE_NOT_FOUND_EXCEPTION")
  (:service-quota-exceeded-exception "SERVICE_QUOTA_EXCEEDED_EXCEPTION")
  (:throttling-exception "THROTTLING_EXCEPTION")
  (:validation-exception "VALIDATION_EXCEPTION"))

(smithy/sdk/shapes:define-type data-source-id smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-list data-source-run-activities :member
                               data-source-run-activity)

(smithy/sdk/shapes:define-structure data-source-run-activity common-lisp:nil
                                    ((database :target-type name :required
                                      common-lisp:t :member-name "database")
                                     (data-source-run-id :target-type
                                      data-source-run-id :required
                                      common-lisp:t :member-name
                                      "dataSourceRunId")
                                     (technical-name :target-type name
                                      :required common-lisp:t :member-name
                                      "technicalName")
                                     (data-asset-status :target-type
                                      data-asset-activity-status :required
                                      common-lisp:t :member-name
                                      "dataAssetStatus")
                                     (project-id :target-type project-id
                                      :required common-lisp:t :member-name
                                      "projectId")
                                     (data-asset-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "dataAssetId")
                                     (technical-description :target-type
                                      description :member-name
                                      "technicalDescription")
                                     (error-message :target-type
                                      data-source-error-message :member-name
                                      "errorMessage")
                                     (lineage-summary :target-type lineage-info
                                      :member-name "lineageSummary")
                                     (created-at :target-type date-time
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (updated-at :target-type date-time
                                      :required common-lisp:t :member-name
                                      "updatedAt"))
                                    (:shape-name "DataSourceRunActivity"))

(smithy/sdk/shapes:define-type data-source-run-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure data-source-run-lineage-summary
                                    common-lisp:nil
                                    ((import-status :target-type
                                      lineage-import-status :member-name
                                      "importStatus"))
                                    (:shape-name "DataSourceRunLineageSummary"))

(smithy/sdk/shapes:define-enum data-source-run-status
    common-lisp:nil
  (:requested "REQUESTED")
  (:running "RUNNING")
  (:failed "FAILED")
  (:partially-succeeded "PARTIALLY_SUCCEEDED")
  (:success "SUCCESS"))

(smithy/sdk/shapes:define-list data-source-run-summaries :member
                               data-source-run-summary)

(smithy/sdk/shapes:define-structure data-source-run-summary common-lisp:nil
                                    ((id :target-type data-source-run-id
                                      :required common-lisp:t :member-name
                                      "id")
                                     (data-source-id :target-type
                                      data-source-id :required common-lisp:t
                                      :member-name "dataSourceId")
                                     (type :target-type data-source-run-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (status :target-type
                                      data-source-run-status :required
                                      common-lisp:t :member-name "status")
                                     (project-id :target-type project-id
                                      :required common-lisp:t :member-name
                                      "projectId")
                                     (run-statistics-for-assets :target-type
                                      run-statistics-for-assets :member-name
                                      "runStatisticsForAssets")
                                     (error-message :target-type
                                      data-source-error-message :member-name
                                      "errorMessage")
                                     (created-at :target-type date-time
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (updated-at :target-type date-time
                                      :required common-lisp:t :member-name
                                      "updatedAt")
                                     (started-at :target-type date-time
                                      :member-name "startedAt")
                                     (stopped-at :target-type date-time
                                      :member-name "stoppedAt")
                                     (lineage-summary :target-type
                                      data-source-run-lineage-summary
                                      :member-name "lineageSummary"))
                                    (:shape-name "DataSourceRunSummary"))

(smithy/sdk/shapes:define-enum data-source-run-type
    common-lisp:nil
  (:prioritized "PRIORITIZED")
  (:scheduled "SCHEDULED"))

(smithy/sdk/shapes:define-enum data-source-status
    common-lisp:nil
  (:creating "CREATING")
  (:failed-creation "FAILED_CREATION")
  (:ready "READY")
  (:updating "UPDATING")
  (:failed-update "FAILED_UPDATE")
  (:running "RUNNING")
  (:deleting "DELETING")
  (:failed-deletion "FAILED_DELETION"))

(smithy/sdk/shapes:define-list data-source-summaries :member
                               data-source-summary)

(smithy/sdk/shapes:define-structure data-source-summary common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "domainId")
                                     (environment-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "environmentId")
                                     (connection-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "connectionId")
                                     (data-source-id :target-type
                                      data-source-id :required common-lisp:t
                                      :member-name "dataSourceId")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (type :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "type")
                                     (status :target-type data-source-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (enable-setting :target-type
                                      enable-setting :member-name
                                      "enableSetting")
                                     (schedule :target-type
                                      schedule-configuration :member-name
                                      "schedule")
                                     (last-run-status :target-type
                                      data-source-run-status :member-name
                                      "lastRunStatus")
                                     (last-run-at :target-type date-time
                                      :member-name "lastRunAt")
                                     (last-run-error-message :target-type
                                      data-source-error-message :member-name
                                      "lastRunErrorMessage")
                                     (last-run-asset-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "lastRunAssetCount")
                                     (created-at :target-type date-time
                                      :member-name "createdAt")
                                     (updated-at :target-type date-time
                                      :member-name "updatedAt")
                                     (description :target-type description
                                      :member-name "description"))
                                    (:shape-name "DataSourceSummary"))

(smithy/sdk/shapes:define-type data-source-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum data-zone-entity-type
    common-lisp:nil
  (:domain-unit "DOMAIN_UNIT"))

(smithy/sdk/shapes:define-type date-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type decision-comment smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-asset-filter-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (asset-identifier :target-type asset-id
                                  :required common-lisp:t :member-name
                                  "assetIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type filter-id :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteAssetFilterInput"))

(smithy/sdk/shapes:define-input delete-asset-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type asset-identifier
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t))
                                (:shape-name "DeleteAssetInput"))

(smithy/sdk/shapes:define-output delete-asset-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteAssetOutput"))

(smithy/sdk/shapes:define-input delete-asset-type-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type asset-type-identifier
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t))
                                (:shape-name "DeleteAssetTypeInput"))

(smithy/sdk/shapes:define-output delete-asset-type-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteAssetTypeOutput"))

(smithy/sdk/shapes:define-input delete-connection-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type connection-id
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t))
                                (:shape-name "DeleteConnectionInput"))

(smithy/sdk/shapes:define-output delete-connection-output common-lisp:nil
                                 ((status :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "status"))
                                 (:shape-name "DeleteConnectionOutput"))

(smithy/sdk/shapes:define-input delete-data-product-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type data-product-id
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t))
                                (:shape-name "DeleteDataProductInput"))

(smithy/sdk/shapes:define-output delete-data-product-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteDataProductOutput"))

(smithy/sdk/shapes:define-input delete-data-source-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type data-source-id
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t)
                                 (client-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "clientToken" :http-query "clientToken")
                                 (retain-permissions-on-revoke-failure
                                  :target-type smithy/sdk/smithy-types:boolean
                                  :member-name
                                  "retainPermissionsOnRevokeFailure"
                                  :http-query
                                  "retainPermissionsOnRevokeFailure"))
                                (:shape-name "DeleteDataSourceInput"))

(smithy/sdk/shapes:define-output delete-data-source-output common-lisp:nil
                                 ((id :target-type data-source-id :required
                                   common-lisp:t :member-name "id")
                                  (status :target-type data-source-status
                                   :member-name "status")
                                  (type :target-type data-source-type
                                   :member-name "type")
                                  (name :target-type name :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (project-id :target-type project-id :required
                                   common-lisp:t :member-name "projectId")
                                  (environment-id :target-type environment-id
                                   :member-name "environmentId")
                                  (connection-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "connectionId")
                                  (configuration :target-type
                                   data-source-configuration-output
                                   :member-name "configuration")
                                  (enable-setting :target-type enable-setting
                                   :member-name "enableSetting")
                                  (publish-on-import :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "publishOnImport")
                                  (asset-forms-output :target-type
                                   form-output-list :member-name
                                   "assetFormsOutput")
                                  (schedule :target-type schedule-configuration
                                   :member-name "schedule")
                                  (last-run-status :target-type
                                   data-source-run-status :member-name
                                   "lastRunStatus")
                                  (last-run-at :target-type date-time
                                   :member-name "lastRunAt")
                                  (last-run-error-message :target-type
                                   data-source-error-message :member-name
                                   "lastRunErrorMessage")
                                  (error-message :target-type
                                   data-source-error-message :member-name
                                   "errorMessage")
                                  (created-at :target-type date-time
                                   :member-name "createdAt")
                                  (updated-at :target-type date-time
                                   :member-name "updatedAt")
                                  (self-grant-status :target-type
                                   self-grant-status-output :member-name
                                   "selfGrantStatus")
                                  (retain-permissions-on-revoke-failure
                                   :target-type smithy/sdk/smithy-types:boolean
                                   :member-name
                                   "retainPermissionsOnRevokeFailure"))
                                 (:shape-name "DeleteDataSourceOutput"))

(smithy/sdk/shapes:define-input delete-domain-input common-lisp:nil
                                ((identifier :target-type domain-id :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t)
                                 (client-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "clientToken" :http-query "clientToken")
                                 (skip-deletion-check :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "skipDeletionCheck" :http-query
                                  "skipDeletionCheck"))
                                (:shape-name "DeleteDomainInput"))

(smithy/sdk/shapes:define-output delete-domain-output common-lisp:nil
                                 ((status :target-type domain-status :required
                                   common-lisp:t :member-name "status"))
                                 (:shape-name "DeleteDomainOutput"))

(smithy/sdk/shapes:define-input delete-domain-unit-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type domain-unit-id
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t))
                                (:shape-name "DeleteDomainUnitInput"))

(smithy/sdk/shapes:define-output delete-domain-unit-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteDomainUnitOutput"))

(smithy/sdk/shapes:define-input delete-environment-action-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (environment-identifier :target-type
                                  environment-id :required common-lisp:t
                                  :member-name "environmentIdentifier"
                                  :http-label common-lisp:t)
                                 (identifier :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteEnvironmentActionInput"))

(smithy/sdk/shapes:define-input
 delete-environment-blueprint-configuration-input common-lisp:nil
 ((domain-identifier :target-type domain-id :required common-lisp:t
   :member-name "domainIdentifier" :http-label common-lisp:t)
  (environment-blueprint-identifier :target-type environment-blueprint-id
   :required common-lisp:t :member-name "environmentBlueprintIdentifier"
   :http-label common-lisp:t))
 (:shape-name "DeleteEnvironmentBlueprintConfigurationInput"))

(smithy/sdk/shapes:define-output
 delete-environment-blueprint-configuration-output common-lisp:nil
 common-lisp:nil (:shape-name "DeleteEnvironmentBlueprintConfigurationOutput"))

(smithy/sdk/shapes:define-input delete-environment-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type environment-id
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t))
                                (:shape-name "DeleteEnvironmentInput"))

(smithy/sdk/shapes:define-input delete-environment-profile-input
                                common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type
                                  environment-profile-id :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteEnvironmentProfileInput"))

(smithy/sdk/shapes:define-input delete-form-type-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (form-type-identifier :target-type
                                  form-type-identifier :required common-lisp:t
                                  :member-name "formTypeIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteFormTypeInput"))

(smithy/sdk/shapes:define-output delete-form-type-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteFormTypeOutput"))

(smithy/sdk/shapes:define-input delete-glossary-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type glossary-id :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteGlossaryInput"))

(smithy/sdk/shapes:define-output delete-glossary-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteGlossaryOutput"))

(smithy/sdk/shapes:define-input delete-glossary-term-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type glossary-term-id
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t))
                                (:shape-name "DeleteGlossaryTermInput"))

(smithy/sdk/shapes:define-output delete-glossary-term-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteGlossaryTermOutput"))

(smithy/sdk/shapes:define-input delete-listing-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type listing-id :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteListingInput"))

(smithy/sdk/shapes:define-output delete-listing-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteListingOutput"))

(smithy/sdk/shapes:define-input delete-project-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type project-id :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t)
                                 (skip-deletion-check :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "skipDeletionCheck" :http-query
                                  "skipDeletionCheck"))
                                (:shape-name "DeleteProjectInput"))

(smithy/sdk/shapes:define-input delete-project-membership-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (project-identifier :target-type project-id
                                  :required common-lisp:t :member-name
                                  "projectIdentifier" :http-label
                                  common-lisp:t)
                                 (member :target-type member :required
                                  common-lisp:t :member-name "member"))
                                (:shape-name "DeleteProjectMembershipInput"))

(smithy/sdk/shapes:define-output delete-project-membership-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteProjectMembershipOutput"))

(smithy/sdk/shapes:define-output delete-project-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteProjectOutput"))

(smithy/sdk/shapes:define-input delete-project-profile-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type project-profile-id
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t))
                                (:shape-name "DeleteProjectProfileInput"))

(smithy/sdk/shapes:define-output delete-project-profile-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteProjectProfileOutput"))

(smithy/sdk/shapes:define-input delete-rule-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type rule-id :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteRuleInput"))

(smithy/sdk/shapes:define-output delete-rule-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteRuleOutput"))

(smithy/sdk/shapes:define-input delete-subscription-grant-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type subscription-grant-id
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t))
                                (:shape-name "DeleteSubscriptionGrantInput"))

(smithy/sdk/shapes:define-output delete-subscription-grant-output
                                 common-lisp:nil
                                 ((id :target-type subscription-grant-id
                                   :required common-lisp:t :member-name "id")
                                  (created-by :target-type created-by :required
                                   common-lisp:t :member-name "createdBy")
                                  (updated-by :target-type updated-by
                                   :member-name "updatedBy")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (created-at :target-type created-at :required
                                   common-lisp:t :member-name "createdAt")
                                  (updated-at :target-type updated-at :required
                                   common-lisp:t :member-name "updatedAt")
                                  (subscription-target-id :target-type
                                   subscription-target-id :required
                                   common-lisp:t :member-name
                                   "subscriptionTargetId")
                                  (granted-entity :target-type granted-entity
                                   :required common-lisp:t :member-name
                                   "grantedEntity")
                                  (status :target-type
                                   subscription-grant-overall-status :required
                                   common-lisp:t :member-name "status")
                                  (assets :target-type subscribed-assets
                                   :member-name "assets")
                                  (subscription-id :target-type subscription-id
                                   :member-name "subscriptionId"))
                                 (:shape-name "DeleteSubscriptionGrantOutput"))

(smithy/sdk/shapes:define-input delete-subscription-request-input
                                common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type
                                  subscription-request-id :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteSubscriptionRequestInput"))

(smithy/sdk/shapes:define-input delete-subscription-target-input
                                common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (environment-identifier :target-type
                                  environment-id :required common-lisp:t
                                  :member-name "environmentIdentifier"
                                  :http-label common-lisp:t)
                                 (identifier :target-type
                                  subscription-target-id :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteSubscriptionTargetInput"))

(smithy/sdk/shapes:define-input delete-time-series-data-points-input
                                common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (entity-identifier :target-type
                                  entity-identifier :required common-lisp:t
                                  :member-name "entityIdentifier" :http-label
                                  common-lisp:t)
                                 (entity-type :target-type
                                  time-series-entity-type :required
                                  common-lisp:t :member-name "entityType"
                                  :http-label common-lisp:t)
                                 (form-name :target-type time-series-form-name
                                  :required common-lisp:t :member-name
                                  "formName" :http-query "formName")
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-query
                                  "clientToken"))
                                (:shape-name "DeleteTimeSeriesDataPointsInput"))

(smithy/sdk/shapes:define-output delete-time-series-data-points-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteTimeSeriesDataPointsOutput"))

(smithy/sdk/shapes:define-structure deployment common-lisp:nil
                                    ((deployment-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "deploymentId")
                                     (deployment-type :target-type
                                      deployment-type :member-name
                                      "deploymentType")
                                     (deployment-status :target-type
                                      deployment-status :member-name
                                      "deploymentStatus")
                                     (failure-reason :target-type
                                      environment-error :member-name
                                      "failureReason")
                                     (messages :target-type
                                      deployment-messages-list :member-name
                                      "messages")
                                     (is-deployment-complete :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isDeploymentComplete"))
                                    (:shape-name "Deployment"))

(smithy/sdk/shapes:define-type deployment-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list deployment-messages-list :member
                               deployment-message)

(smithy/sdk/shapes:define-enum deployment-mode
    common-lisp:nil
  (:on-create "ON_CREATE")
  (:on-demand "ON_DEMAND"))

(smithy/sdk/shapes:define-type deployment-order smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure deployment-properties common-lisp:nil
                                    ((start-timeout-minutes :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "startTimeoutMinutes")
                                     (end-timeout-minutes :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "endTimeoutMinutes"))
                                    (:shape-name "DeploymentProperties"))

(smithy/sdk/shapes:define-enum deployment-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:successful "SUCCESSFUL")
  (:failed "FAILED")
  (:pending-deployment "PENDING_DEPLOYMENT"))

(smithy/sdk/shapes:define-enum deployment-type
    common-lisp:nil
  (:create "CREATE")
  (:update "UPDATE")
  (:delete "DELETE"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure detailed-glossary-term common-lisp:nil
                                    ((name :target-type glossary-term-name
                                      :member-name "name")
                                     (short-description :target-type
                                      short-description :member-name
                                      "shortDescription"))
                                    (:shape-name "DetailedGlossaryTerm"))

(smithy/sdk/shapes:define-list detailed-glossary-terms :member
                               detailed-glossary-term)

(smithy/sdk/shapes:define-input disassociate-environment-role-input
                                common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (environment-identifier :target-type
                                  environment-id :required common-lisp:t
                                  :member-name "environmentIdentifier"
                                  :http-label common-lisp:t)
                                 (environment-role-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "environmentRoleArn" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DisassociateEnvironmentRoleInput"))

(smithy/sdk/shapes:define-output disassociate-environment-role-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisassociateEnvironmentRoleOutput"))

common-lisp:nil

(smithy/sdk/shapes:define-type domain-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type domain-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type domain-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum domain-status
    common-lisp:nil
  (:creating "CREATING")
  (:available "AVAILABLE")
  (:creation-failed "CREATION_FAILED")
  (:deleting "DELETING")
  (:deleted "DELETED")
  (:deletion-failed "DELETION_FAILED"))

(smithy/sdk/shapes:define-list domain-summaries :member domain-summary)

(smithy/sdk/shapes:define-structure domain-summary common-lisp:nil
                                    ((id :target-type domain-id :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type domain-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      domain-description :member-name
                                      "description")
                                     (arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "arn")
                                     (managed-account-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "managedAccountId")
                                     (status :target-type domain-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (portal-url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "portalUrl")
                                     (created-at :target-type created-at
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-updated-at :target-type updated-at
                                      :member-name "lastUpdatedAt")
                                     (domain-version :target-type
                                      domain-version :member-name
                                      "domainVersion"))
                                    (:shape-name "DomainSummary"))

common-lisp:nil

(smithy/sdk/shapes:define-type domain-unit-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum domain-unit-designation
    common-lisp:nil
  (:owner "OWNER"))

(smithy/sdk/shapes:define-structure domain-unit-filter-for-project
                                    common-lisp:nil
                                    ((domain-unit :target-type domain-unit-id
                                      :required common-lisp:t :member-name
                                      "domainUnit")
                                     (include-child-domain-units :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "includeChildDomainUnits"))
                                    (:shape-name "DomainUnitFilterForProject"))

(smithy/sdk/shapes:define-union domain-unit-grant-filter common-lisp:nil
                                ((all-domain-units-grant-filter :target-type
                                  all-domain-units-grant-filter :member-name
                                  "allDomainUnitsGrantFilter"))
                                (:shape-name "DomainUnitGrantFilter"))

(smithy/sdk/shapes:define-structure domain-unit-group-properties
                                    common-lisp:nil
                                    ((group-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "groupId"))
                                    (:shape-name "DomainUnitGroupProperties"))

(smithy/sdk/shapes:define-type domain-unit-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list domain-unit-ids :member domain-unit-id)

(smithy/sdk/shapes:define-type domain-unit-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union domain-unit-owner-properties common-lisp:nil
                                ((user :target-type domain-unit-user-properties
                                  :member-name "user")
                                 (group :target-type
                                  domain-unit-group-properties :member-name
                                  "group"))
                                (:shape-name "DomainUnitOwnerProperties"))

(smithy/sdk/shapes:define-list domain-unit-owners :member
                               domain-unit-owner-properties)

(smithy/sdk/shapes:define-structure domain-unit-policy-grant-principal
                                    common-lisp:nil
                                    ((domain-unit-designation :target-type
                                      domain-unit-designation :required
                                      common-lisp:t :member-name
                                      "domainUnitDesignation")
                                     (domain-unit-identifier :target-type
                                      domain-unit-id :member-name
                                      "domainUnitIdentifier")
                                     (domain-unit-grant-filter :target-type
                                      domain-unit-grant-filter :member-name
                                      "domainUnitGrantFilter"))
                                    (:shape-name
                                     "DomainUnitPolicyGrantPrincipal"))

(smithy/sdk/shapes:define-list domain-unit-summaries :member
                               domain-unit-summary)

(smithy/sdk/shapes:define-structure domain-unit-summary common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (id :target-type domain-unit-id :required
                                      common-lisp:t :member-name "id"))
                                    (:shape-name "DomainUnitSummary"))

(smithy/sdk/shapes:define-structure domain-unit-target common-lisp:nil
                                    ((domain-unit-id :target-type
                                      domain-unit-id :required common-lisp:t
                                      :member-name "domainUnitId")
                                     (include-child-domain-units :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "includeChildDomainUnits"))
                                    (:shape-name "DomainUnitTarget"))

(smithy/sdk/shapes:define-structure domain-unit-user-properties common-lisp:nil
                                    ((user-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "userId"))
                                    (:shape-name "DomainUnitUserProperties"))

(smithy/sdk/shapes:define-enum domain-version
    common-lisp:nil
  (:v1 "V1")
  (:v2 "V2"))

(smithy/sdk/shapes:define-enum edge-direction
    common-lisp:nil
  (:upstream "UPSTREAM")
  (:downstream "DOWNSTREAM"))

(smithy/sdk/shapes:define-type edited-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum enable-setting
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-list enabled-region-list :member region-name)

(smithy/sdk/shapes:define-type entity-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type entity-identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list entity-owners :member owner-properties-output)

(smithy/sdk/shapes:define-enum entity-type
    common-lisp:nil
  (:asset "ASSET")
  (:data-product "DATA_PRODUCT"))

(smithy/sdk/shapes:define-type environment-action-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list environment-action-list :member
                               configurable-environment-action)

(smithy/sdk/shapes:define-structure environment-action-summary common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "domainId")
                                     (environment-id :target-type
                                      environment-id :required common-lisp:t
                                      :member-name "environmentId")
                                     (id :target-type environment-action-id
                                      :required common-lisp:t :member-name
                                      "id")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (parameters :target-type action-parameters
                                      :required common-lisp:t :member-name
                                      "parameters")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description"))
                                    (:shape-name "EnvironmentActionSummary"))

common-lisp:nil

(smithy/sdk/shapes:define-structure environment-blueprint-configuration-item
                                    common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "domainId")
                                     (environment-blueprint-id :target-type
                                      environment-blueprint-id :required
                                      common-lisp:t :member-name
                                      "environmentBlueprintId")
                                     (provisioning-role-arn :target-type
                                      role-arn :member-name
                                      "provisioningRoleArn")
                                     (environment-role-permission-boundary
                                      :target-type policy-arn :member-name
                                      "environmentRolePermissionBoundary")
                                     (manage-access-role-arn :target-type
                                      role-arn :member-name
                                      "manageAccessRoleArn")
                                     (enabled-regions :target-type
                                      enabled-region-list :member-name
                                      "enabledRegions")
                                     (regional-parameters :target-type
                                      regional-parameter-map :member-name
                                      "regionalParameters")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt"
                                      :timestamp-format "date-time")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "updatedAt"
                                      :timestamp-format "date-time")
                                     (provisioning-configurations :target-type
                                      provisioning-configuration-list
                                      :member-name
                                      "provisioningConfigurations"))
                                    (:shape-name
                                     "EnvironmentBlueprintConfigurationItem"))

(smithy/sdk/shapes:define-list environment-blueprint-configurations :member
                               environment-blueprint-configuration-item)

(smithy/sdk/shapes:define-type environment-blueprint-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type environment-blueprint-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list environment-blueprint-summaries :member
                               environment-blueprint-summary)

(smithy/sdk/shapes:define-structure environment-blueprint-summary
                                    common-lisp:nil
                                    ((id :target-type environment-blueprint-id
                                      :required common-lisp:t :member-name
                                      "id")
                                     (name :target-type
                                      environment-blueprint-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (provider :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "provider")
                                     (provisioning-properties :target-type
                                      provisioning-properties :required
                                      common-lisp:t :member-name
                                      "provisioningProperties")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt"
                                      :timestamp-format "date-time")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "updatedAt"
                                      :timestamp-format "date-time"))
                                    (:shape-name "EnvironmentBlueprintSummary"))

(smithy/sdk/shapes:define-structure environment-configuration common-lisp:nil
                                    ((name :target-type
                                      environment-configuration-name :required
                                      common-lisp:t :member-name "name")
                                     (id :target-type
                                      environment-configuration-id :member-name
                                      "id")
                                     (environment-blueprint-id :target-type
                                      environment-blueprint-id :required
                                      common-lisp:t :member-name
                                      "environmentBlueprintId")
                                     (description :target-type description
                                      :member-name "description")
                                     (deployment-mode :target-type
                                      deployment-mode :member-name
                                      "deploymentMode")
                                     (configuration-parameters :target-type
                                      environment-configuration-parameters-details
                                      :member-name "configurationParameters")
                                     (aws-account :target-type aws-account
                                      :required common-lisp:t :member-name
                                      "awsAccount")
                                     (aws-region :target-type region :required
                                      common-lisp:t :member-name "awsRegion")
                                     (deployment-order :target-type
                                      deployment-order :member-name
                                      "deploymentOrder"))
                                    (:shape-name "EnvironmentConfiguration"))

(smithy/sdk/shapes:define-type environment-configuration-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type environment-configuration-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure environment-configuration-parameter
                                    common-lisp:nil
                                    ((name :target-type
                                      environment-configuration-parameter-name
                                      :member-name "name")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "value")
                                     (is-editable :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isEditable"))
                                    (:shape-name
                                     "EnvironmentConfigurationParameter"))

(smithy/sdk/shapes:define-type environment-configuration-parameter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 environment-configuration-parameters-details common-lisp:nil
 ((ssm-path :target-type parameter-store-path :member-name "ssmPath")
  (parameter-overrides :target-type environment-configuration-parameters-list
   :member-name "parameterOverrides")
  (resolved-parameters :target-type environment-configuration-parameters-list
   :member-name "resolvedParameters"))
 (:shape-name "EnvironmentConfigurationParametersDetails"))

(smithy/sdk/shapes:define-list environment-configuration-parameters-list
                               :member environment-configuration-parameter)

(smithy/sdk/shapes:define-structure environment-configuration-user-parameter
                                    common-lisp:nil
                                    ((environment-id :target-type
                                      environment-id :member-name
                                      "environmentId")
                                     (environment-configuration-name
                                      :target-type
                                      environment-configuration-name
                                      :member-name
                                      "environmentConfigurationName")
                                     (environment-parameters :target-type
                                      environment-parameters-list :member-name
                                      "environmentParameters"))
                                    (:shape-name
                                     "EnvironmentConfigurationUserParameter"))

(smithy/sdk/shapes:define-list environment-configuration-user-parameters-list
                               :member environment-configuration-user-parameter)

(smithy/sdk/shapes:define-list environment-configurations-list :member
                               environment-configuration)

(smithy/sdk/shapes:define-structure environment-deployment-details
                                    common-lisp:nil
                                    ((overall-deployment-status :target-type
                                      overall-deployment-status :member-name
                                      "overallDeploymentStatus")
                                     (environment-failure-reasons :target-type
                                      environment-failure-reasons :member-name
                                      "environmentFailureReasons"))
                                    (:shape-name
                                     "EnvironmentDeploymentDetails"))

(smithy/sdk/shapes:define-structure environment-error common-lisp:nil
                                    ((code :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "code")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "EnvironmentError"))

(smithy/sdk/shapes:define-map environment-failure-reasons :key
                              smithy/sdk/smithy-types:string :value
                              environment-failure-reasons-list)

(smithy/sdk/shapes:define-list environment-failure-reasons-list :member
                               environment-error)

(smithy/sdk/shapes:define-type environment-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type environment-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure environment-parameter common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "value"))
                                    (:shape-name "EnvironmentParameter"))

(smithy/sdk/shapes:define-list environment-parameters-list :member
                               environment-parameter)

(smithy/sdk/shapes:define-type environment-profile-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type environment-profile-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list environment-profile-summaries :member
                               environment-profile-summary)

(smithy/sdk/shapes:define-structure environment-profile-summary common-lisp:nil
                                    ((id :target-type environment-profile-id
                                      :required common-lisp:t :member-name
                                      "id")
                                     (domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "domainId")
                                     (aws-account-id :target-type
                                      aws-account-id :member-name
                                      "awsAccountId")
                                     (aws-account-region :target-type
                                      aws-region :member-name
                                      "awsAccountRegion")
                                     (created-by :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "createdBy")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt"
                                      :timestamp-format "date-time")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "updatedAt"
                                      :timestamp-format "date-time")
                                     (name :target-type
                                      environment-profile-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (environment-blueprint-id :target-type
                                      environment-blueprint-id :required
                                      common-lisp:t :member-name
                                      "environmentBlueprintId")
                                     (project-id :target-type project-id
                                      :member-name "projectId"))
                                    (:shape-name "EnvironmentProfileSummary"))

(smithy/sdk/shapes:define-enum environment-status
    common-lisp:nil
  (:active "ACTIVE")
  (:creating "CREATING")
  (:updating "UPDATING")
  (:deleting "DELETING")
  (:create-failed "CREATE_FAILED")
  (:update-failed "UPDATE_FAILED")
  (:delete-failed "DELETE_FAILED")
  (:validation-failed "VALIDATION_FAILED")
  (:suspended "SUSPENDED")
  (:disabled "DISABLED")
  (:expired "EXPIRED")
  (:deleted "DELETED")
  (:inaccessible "INACCESSIBLE"))

(smithy/sdk/shapes:define-list environment-summaries :member
                               environment-summary)

(smithy/sdk/shapes:define-structure environment-summary common-lisp:nil
                                    ((project-id :target-type project-id
                                      :required common-lisp:t :member-name
                                      "projectId")
                                     (id :target-type environment-id
                                      :member-name "id")
                                     (domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "domainId")
                                     (created-by :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "createdBy")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt"
                                      :timestamp-format "date-time")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "updatedAt"
                                      :timestamp-format "date-time")
                                     (name :target-type environment-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (environment-profile-id :target-type
                                      environment-profile-id :member-name
                                      "environmentProfileId")
                                     (aws-account-id :target-type
                                      aws-account-id :member-name
                                      "awsAccountId")
                                     (aws-account-region :target-type
                                      aws-region :member-name
                                      "awsAccountRegion")
                                     (provider :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "provider")
                                     (status :target-type environment-status
                                      :member-name "status")
                                     (environment-configuration-id :target-type
                                      environment-configuration-id :member-name
                                      "environmentConfigurationId"))
                                    (:shape-name "EnvironmentSummary"))

(smithy/sdk/shapes:define-structure equal-to-expression common-lisp:nil
                                    ((column-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "columnName")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "EqualToExpression"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union event-summary common-lisp:nil
                                ((open-lineage-run-event-summary :target-type
                                  open-lineage-run-event-summary :member-name
                                  "openLineageRunEventSummary"))
                                (:shape-name "EventSummary"))

(smithy/sdk/shapes:define-type external-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list failed-query-processing-error-messages :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure failure-cause common-lisp:nil
                                    ((message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "message"))
                                    (:shape-name "FailureCause"))

(smithy/sdk/shapes:define-list failure-reasons :member project-deletion-error)

(smithy/sdk/shapes:define-structure filter common-lisp:nil
                                    ((attribute :target-type attribute
                                      :required common-lisp:t :member-name
                                      "attribute")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "Filter"))

(smithy/sdk/shapes:define-union filter-clause common-lisp:nil
                                ((filter :target-type filter :member-name
                                  "filter")
                                 (and :target-type filter-list :member-name
                                  "and")
                                 (or :target-type filter-list :member-name
                                  "or"))
                                (:shape-name "FilterClause"))

(smithy/sdk/shapes:define-structure filter-expression common-lisp:nil
                                    ((type :target-type filter-expression-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (expression :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "expression"))
                                    (:shape-name "FilterExpression"))

(smithy/sdk/shapes:define-enum filter-expression-type
    common-lisp:nil
  (:include "INCLUDE")
  (:exclude "EXCLUDE"))

(smithy/sdk/shapes:define-list filter-expressions :member filter-expression)

(smithy/sdk/shapes:define-type filter-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list filter-ids :member filter-id)

(smithy/sdk/shapes:define-list filter-list :member filter-clause)

(smithy/sdk/shapes:define-type filter-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum filter-status
    common-lisp:nil
  (:valid "VALID")
  (:invalid "INVALID"))

(smithy/sdk/shapes:define-type first-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure form-entry-input common-lisp:nil
                                    ((type-identifier :target-type
                                      form-type-identifier :required
                                      common-lisp:t :member-name
                                      "typeIdentifier")
                                     (type-revision :target-type revision
                                      :required common-lisp:t :member-name
                                      "typeRevision")
                                     (required :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "required"))
                                    (:shape-name "FormEntryInput"))

(smithy/sdk/shapes:define-structure form-entry-output common-lisp:nil
                                    ((type-name :target-type form-type-name
                                      :required common-lisp:t :member-name
                                      "typeName")
                                     (type-revision :target-type revision
                                      :required common-lisp:t :member-name
                                      "typeRevision")
                                     (required :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "required"))
                                    (:shape-name "FormEntryOutput"))

(smithy/sdk/shapes:define-structure form-input common-lisp:nil
                                    ((form-name :target-type form-name
                                      :required common-lisp:t :member-name
                                      "formName")
                                     (type-identifier :target-type
                                      form-type-identifier :member-name
                                      "typeIdentifier")
                                     (type-revision :target-type revision-input
                                      :member-name "typeRevision")
                                     (content :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "content"))
                                    (:shape-name "FormInput"))

(smithy/sdk/shapes:define-list form-input-list :member form-input)

(smithy/sdk/shapes:define-type form-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure form-output common-lisp:nil
                                    ((form-name :target-type form-name
                                      :required common-lisp:t :member-name
                                      "formName")
                                     (type-name :target-type form-type-name
                                      :member-name "typeName")
                                     (type-revision :target-type revision
                                      :member-name "typeRevision")
                                     (content :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "content"))
                                    (:shape-name "FormOutput"))

(smithy/sdk/shapes:define-list form-output-list :member form-output)

common-lisp:nil

(smithy/sdk/shapes:define-structure form-type-data common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "domainId")
                                     (name :target-type form-type-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (revision :target-type revision :required
                                      common-lisp:t :member-name "revision")
                                     (model :target-type model :member-name
                                      "model")
                                     (status :target-type form-type-status
                                      :member-name "status")
                                     (owning-project-id :target-type project-id
                                      :member-name "owningProjectId")
                                     (origin-domain-id :target-type domain-id
                                      :member-name "originDomainId")
                                     (origin-project-id :target-type project-id
                                      :member-name "originProjectId")
                                     (created-at :target-type created-at
                                      :member-name "createdAt")
                                     (created-by :target-type created-by
                                      :member-name "createdBy")
                                     (description :target-type description
                                      :member-name "description")
                                     (imports :target-type import-list
                                      :member-name "imports"))
                                    (:shape-name "FormTypeData"))

(smithy/sdk/shapes:define-type form-type-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type form-type-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum form-type-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-type forms smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map forms-input-map :key form-name :value
                              form-entry-input)

(smithy/sdk/shapes:define-map forms-output-map :key form-name :value
                              form-entry-output)

(smithy/sdk/shapes:define-input get-asset-filter-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (asset-identifier :target-type asset-id
                                  :required common-lisp:t :member-name
                                  "assetIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type filter-id :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "GetAssetFilterInput"))

(smithy/sdk/shapes:define-output get-asset-filter-output common-lisp:nil
                                 ((id :target-type filter-id :required
                                   common-lisp:t :member-name "id")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (asset-id :target-type asset-id :required
                                   common-lisp:t :member-name "assetId")
                                  (name :target-type filter-name :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (status :target-type filter-status
                                   :member-name "status")
                                  (configuration :target-type
                                   asset-filter-configuration :required
                                   common-lisp:t :member-name "configuration")
                                  (created-at :target-type created-at
                                   :member-name "createdAt")
                                  (error-message :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "errorMessage")
                                  (effective-column-names :target-type
                                   column-name-list :member-name
                                   "effectiveColumnNames")
                                  (effective-row-filter :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "effectiveRowFilter"))
                                 (:shape-name "GetAssetFilterOutput"))

(smithy/sdk/shapes:define-input get-asset-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type asset-identifier
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t)
                                 (revision :target-type revision :member-name
                                  "revision" :http-query "revision"))
                                (:shape-name "GetAssetInput"))

(smithy/sdk/shapes:define-output get-asset-output common-lisp:nil
                                 ((id :target-type asset-id :required
                                   common-lisp:t :member-name "id")
                                  (name :target-type asset-name :required
                                   common-lisp:t :member-name "name")
                                  (type-identifier :target-type
                                   asset-type-identifier :required
                                   common-lisp:t :member-name "typeIdentifier")
                                  (type-revision :target-type revision
                                   :required common-lisp:t :member-name
                                   "typeRevision")
                                  (external-identifier :target-type
                                   external-identifier :member-name
                                   "externalIdentifier")
                                  (revision :target-type revision :required
                                   common-lisp:t :member-name "revision")
                                  (description :target-type description
                                   :member-name "description")
                                  (created-at :target-type created-at
                                   :member-name "createdAt")
                                  (created-by :target-type created-by
                                   :member-name "createdBy")
                                  (first-revision-created-at :target-type
                                   created-at :member-name
                                   "firstRevisionCreatedAt")
                                  (first-revision-created-by :target-type
                                   created-by :member-name
                                   "firstRevisionCreatedBy")
                                  (glossary-terms :target-type glossary-terms
                                   :member-name "glossaryTerms")
                                  (owning-project-id :target-type project-id
                                   :required common-lisp:t :member-name
                                   "owningProjectId")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (listing :target-type asset-listing-details
                                   :member-name "listing")
                                  (forms-output :target-type form-output-list
                                   :required common-lisp:t :member-name
                                   "formsOutput")
                                  (read-only-forms-output :target-type
                                   form-output-list :member-name
                                   "readOnlyFormsOutput")
                                  (latest-time-series-data-point-forms-output
                                   :target-type
                                   time-series-data-point-summary-form-output-list
                                   :member-name
                                   "latestTimeSeriesDataPointFormsOutput"))
                                 (:shape-name "GetAssetOutput"))

(smithy/sdk/shapes:define-input get-asset-type-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type asset-type-identifier
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t)
                                 (revision :target-type revision :member-name
                                  "revision" :http-query "revision"))
                                (:shape-name "GetAssetTypeInput"))

(smithy/sdk/shapes:define-output get-asset-type-output common-lisp:nil
                                 ((domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (name :target-type type-name :required
                                   common-lisp:t :member-name "name")
                                  (revision :target-type revision :required
                                   common-lisp:t :member-name "revision")
                                  (description :target-type description
                                   :member-name "description")
                                  (forms-output :target-type forms-output-map
                                   :required common-lisp:t :member-name
                                   "formsOutput")
                                  (owning-project-id :target-type project-id
                                   :required common-lisp:t :member-name
                                   "owningProjectId")
                                  (origin-domain-id :target-type domain-id
                                   :member-name "originDomainId")
                                  (origin-project-id :target-type project-id
                                   :member-name "originProjectId")
                                  (created-at :target-type created-at
                                   :member-name "createdAt")
                                  (created-by :target-type created-by
                                   :member-name "createdBy")
                                  (updated-at :target-type updated-at
                                   :member-name "updatedAt")
                                  (updated-by :target-type updated-by
                                   :member-name "updatedBy"))
                                 (:shape-name "GetAssetTypeOutput"))

(smithy/sdk/shapes:define-input get-connection-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type connection-id
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t)
                                 (with-secret :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "withSecret" :http-query "withSecret"))
                                (:shape-name "GetConnectionInput"))

(smithy/sdk/shapes:define-output get-connection-output common-lisp:nil
                                 ((connection-credentials :target-type
                                   connection-credentials :member-name
                                   "connectionCredentials")
                                  (connection-id :target-type connection-id
                                   :required common-lisp:t :member-name
                                   "connectionId")
                                  (description :target-type description
                                   :member-name "description")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (domain-unit-id :target-type domain-unit-id
                                   :required common-lisp:t :member-name
                                   "domainUnitId")
                                  (environment-id :target-type environment-id
                                   :member-name "environmentId")
                                  (environment-user-role :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "environmentUserRole")
                                  (name :target-type connection-name :required
                                   common-lisp:t :member-name "name")
                                  (physical-endpoints :target-type
                                   physical-endpoints :required common-lisp:t
                                   :member-name "physicalEndpoints")
                                  (project-id :target-type project-id
                                   :member-name "projectId")
                                  (props :target-type
                                   connection-properties-output :member-name
                                   "props")
                                  (type :target-type connection-type :required
                                   common-lisp:t :member-name "type"))
                                 (:shape-name "GetConnectionOutput"))

(smithy/sdk/shapes:define-input get-data-product-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type data-product-id
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t)
                                 (revision :target-type revision :member-name
                                  "revision" :http-query "revision"))
                                (:shape-name "GetDataProductInput"))

(smithy/sdk/shapes:define-output get-data-product-output common-lisp:nil
                                 ((domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (id :target-type data-product-id :required
                                   common-lisp:t :member-name "id")
                                  (revision :target-type revision :required
                                   common-lisp:t :member-name "revision")
                                  (owning-project-id :target-type project-id
                                   :required common-lisp:t :member-name
                                   "owningProjectId")
                                  (name :target-type data-product-name
                                   :required common-lisp:t :member-name "name")
                                  (status :target-type data-product-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (description :target-type
                                   data-product-description :member-name
                                   "description")
                                  (glossary-terms :target-type glossary-terms
                                   :member-name "glossaryTerms")
                                  (items :target-type data-product-items
                                   :member-name "items")
                                  (forms-output :target-type form-output-list
                                   :member-name "formsOutput")
                                  (created-at :target-type created-at
                                   :member-name "createdAt")
                                  (created-by :target-type created-by
                                   :member-name "createdBy")
                                  (first-revision-created-at :target-type
                                   created-at :member-name
                                   "firstRevisionCreatedAt")
                                  (first-revision-created-by :target-type
                                   created-by :member-name
                                   "firstRevisionCreatedBy"))
                                 (:shape-name "GetDataProductOutput"))

(smithy/sdk/shapes:define-input get-data-source-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type data-source-id
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t))
                                (:shape-name "GetDataSourceInput"))

(smithy/sdk/shapes:define-output get-data-source-output common-lisp:nil
                                 ((id :target-type data-source-id :required
                                   common-lisp:t :member-name "id")
                                  (status :target-type data-source-status
                                   :member-name "status")
                                  (type :target-type data-source-type
                                   :member-name "type")
                                  (name :target-type name :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (project-id :target-type project-id :required
                                   common-lisp:t :member-name "projectId")
                                  (environment-id :target-type environment-id
                                   :member-name "environmentId")
                                  (connection-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "connectionId")
                                  (configuration :target-type
                                   data-source-configuration-output
                                   :member-name "configuration")
                                  (recommendation :target-type
                                   recommendation-configuration :member-name
                                   "recommendation")
                                  (enable-setting :target-type enable-setting
                                   :member-name "enableSetting")
                                  (publish-on-import :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "publishOnImport")
                                  (asset-forms-output :target-type
                                   form-output-list :member-name
                                   "assetFormsOutput")
                                  (schedule :target-type schedule-configuration
                                   :member-name "schedule")
                                  (last-run-status :target-type
                                   data-source-run-status :member-name
                                   "lastRunStatus")
                                  (last-run-at :target-type date-time
                                   :member-name "lastRunAt")
                                  (last-run-error-message :target-type
                                   data-source-error-message :member-name
                                   "lastRunErrorMessage")
                                  (last-run-asset-count :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "lastRunAssetCount")
                                  (error-message :target-type
                                   data-source-error-message :member-name
                                   "errorMessage")
                                  (created-at :target-type date-time
                                   :member-name "createdAt")
                                  (updated-at :target-type date-time
                                   :member-name "updatedAt")
                                  (self-grant-status :target-type
                                   self-grant-status-output :member-name
                                   "selfGrantStatus"))
                                 (:shape-name "GetDataSourceOutput"))

(smithy/sdk/shapes:define-input get-data-source-run-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type data-source-run-id
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t))
                                (:shape-name "GetDataSourceRunInput"))

(smithy/sdk/shapes:define-output get-data-source-run-output common-lisp:nil
                                 ((domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (data-source-id :target-type data-source-id
                                   :required common-lisp:t :member-name
                                   "dataSourceId")
                                  (id :target-type data-source-run-id :required
                                   common-lisp:t :member-name "id")
                                  (project-id :target-type project-id :required
                                   common-lisp:t :member-name "projectId")
                                  (status :target-type data-source-run-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (type :target-type data-source-run-type
                                   :required common-lisp:t :member-name "type")
                                  (data-source-configuration-snapshot
                                   :target-type smithy/sdk/smithy-types:string
                                   :member-name
                                   "dataSourceConfigurationSnapshot")
                                  (run-statistics-for-assets :target-type
                                   run-statistics-for-assets :member-name
                                   "runStatisticsForAssets")
                                  (lineage-summary :target-type
                                   data-source-run-lineage-summary :member-name
                                   "lineageSummary")
                                  (error-message :target-type
                                   data-source-error-message :member-name
                                   "errorMessage")
                                  (created-at :target-type date-time :required
                                   common-lisp:t :member-name "createdAt")
                                  (updated-at :target-type date-time :required
                                   common-lisp:t :member-name "updatedAt")
                                  (started-at :target-type date-time
                                   :member-name "startedAt")
                                  (stopped-at :target-type date-time
                                   :member-name "stoppedAt"))
                                 (:shape-name "GetDataSourceRunOutput"))

(smithy/sdk/shapes:define-input get-domain-input common-lisp:nil
                                ((identifier :target-type domain-id :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "GetDomainInput"))

(smithy/sdk/shapes:define-output get-domain-output common-lisp:nil
                                 ((id :target-type domain-id :required
                                   common-lisp:t :member-name "id")
                                  (root-domain-unit-id :target-type
                                   domain-unit-id :member-name
                                   "rootDomainUnitId")
                                  (name :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "name")
                                  (description :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "description")
                                  (single-sign-on :target-type single-sign-on
                                   :member-name "singleSignOn")
                                  (domain-execution-role :target-type role-arn
                                   :required common-lisp:t :member-name
                                   "domainExecutionRole")
                                  (arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "arn")
                                  (kms-key-identifier :target-type kms-key-arn
                                   :member-name "kmsKeyIdentifier")
                                  (status :target-type domain-status :required
                                   common-lisp:t :member-name "status")
                                  (portal-url :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "portalUrl")
                                  (created-at :target-type created-at
                                   :member-name "createdAt")
                                  (last-updated-at :target-type updated-at
                                   :member-name "lastUpdatedAt")
                                  (tags :target-type tags :member-name "tags")
                                  (domain-version :target-type domain-version
                                   :member-name "domainVersion")
                                  (service-role :target-type role-arn
                                   :member-name "serviceRole"))
                                 (:shape-name "GetDomainOutput"))

(smithy/sdk/shapes:define-input get-domain-unit-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type domain-unit-id
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t))
                                (:shape-name "GetDomainUnitInput"))

(smithy/sdk/shapes:define-output get-domain-unit-output common-lisp:nil
                                 ((id :target-type domain-unit-id :required
                                   common-lisp:t :member-name "id")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (name :target-type domain-unit-name :required
                                   common-lisp:t :member-name "name")
                                  (parent-domain-unit-id :target-type
                                   domain-unit-id :member-name
                                   "parentDomainUnitId")
                                  (description :target-type
                                   domain-unit-description :member-name
                                   "description")
                                  (owners :target-type domain-unit-owners
                                   :required common-lisp:t :member-name
                                   "owners")
                                  (created-at :target-type created-at
                                   :member-name "createdAt")
                                  (last-updated-at :target-type updated-at
                                   :member-name "lastUpdatedAt")
                                  (created-by :target-type created-by
                                   :member-name "createdBy")
                                  (last-updated-by :target-type updated-by
                                   :member-name "lastUpdatedBy"))
                                 (:shape-name "GetDomainUnitOutput"))

(smithy/sdk/shapes:define-input get-environment-action-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (environment-identifier :target-type
                                  environment-id :required common-lisp:t
                                  :member-name "environmentIdentifier"
                                  :http-label common-lisp:t)
                                 (identifier :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "GetEnvironmentActionInput"))

(smithy/sdk/shapes:define-output get-environment-action-output common-lisp:nil
                                 ((domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (environment-id :target-type environment-id
                                   :required common-lisp:t :member-name
                                   "environmentId")
                                  (id :target-type environment-action-id
                                   :required common-lisp:t :member-name "id")
                                  (name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "name")
                                  (parameters :target-type action-parameters
                                   :required common-lisp:t :member-name
                                   "parameters")
                                  (description :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "description"))
                                 (:shape-name "GetEnvironmentActionOutput"))

(smithy/sdk/shapes:define-input get-environment-blueprint-configuration-input
                                common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (environment-blueprint-identifier :target-type
                                  environment-blueprint-id :required
                                  common-lisp:t :member-name
                                  "environmentBlueprintIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetEnvironmentBlueprintConfigurationInput"))

(smithy/sdk/shapes:define-output get-environment-blueprint-configuration-output
                                 common-lisp:nil
                                 ((domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (environment-blueprint-id :target-type
                                   environment-blueprint-id :required
                                   common-lisp:t :member-name
                                   "environmentBlueprintId")
                                  (provisioning-role-arn :target-type role-arn
                                   :member-name "provisioningRoleArn")
                                  (environment-role-permission-boundary
                                   :target-type policy-arn :member-name
                                   "environmentRolePermissionBoundary")
                                  (manage-access-role-arn :target-type role-arn
                                   :member-name "manageAccessRoleArn")
                                  (enabled-regions :target-type
                                   enabled-region-list :member-name
                                   "enabledRegions")
                                  (regional-parameters :target-type
                                   regional-parameter-map :member-name
                                   "regionalParameters")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "createdAt" :timestamp-format
                                   "date-time")
                                  (updated-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "updatedAt" :timestamp-format
                                   "date-time")
                                  (provisioning-configurations :target-type
                                   provisioning-configuration-list :member-name
                                   "provisioningConfigurations"))
                                 (:shape-name
                                  "GetEnvironmentBlueprintConfigurationOutput"))

(smithy/sdk/shapes:define-input get-environment-blueprint-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type
                                  environment-blueprint-id :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "GetEnvironmentBlueprintInput"))

(smithy/sdk/shapes:define-output get-environment-blueprint-output
                                 common-lisp:nil
                                 ((id :target-type environment-blueprint-id
                                   :required common-lisp:t :member-name "id")
                                  (name :target-type environment-blueprint-name
                                   :required common-lisp:t :member-name "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (provider :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "provider")
                                  (provisioning-properties :target-type
                                   provisioning-properties :required
                                   common-lisp:t :member-name
                                   "provisioningProperties")
                                  (deployment-properties :target-type
                                   deployment-properties :member-name
                                   "deploymentProperties")
                                  (user-parameters :target-type
                                   custom-parameter-list :member-name
                                   "userParameters")
                                  (glossary-terms :target-type glossary-terms
                                   :member-name "glossaryTerms")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "createdAt" :timestamp-format
                                   "date-time")
                                  (updated-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "updatedAt" :timestamp-format
                                   "date-time"))
                                 (:shape-name "GetEnvironmentBlueprintOutput"))

(smithy/sdk/shapes:define-input get-environment-credentials-input
                                common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (environment-identifier :target-type
                                  environment-id :required common-lisp:t
                                  :member-name "environmentIdentifier"
                                  :http-label common-lisp:t))
                                (:shape-name "GetEnvironmentCredentialsInput"))

(smithy/sdk/shapes:define-output get-environment-credentials-output
                                 common-lisp:nil
                                 ((access-key-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "accessKeyId")
                                  (secret-access-key :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "secretAccessKey")
                                  (session-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "sessionToken")
                                  (expiration :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "expiration" :timestamp-format
                                   "date-time"))
                                 (:shape-name
                                  "GetEnvironmentCredentialsOutput"))

(smithy/sdk/shapes:define-input get-environment-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type environment-id
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t))
                                (:shape-name "GetEnvironmentInput"))

(smithy/sdk/shapes:define-output get-environment-output common-lisp:nil
                                 ((project-id :target-type project-id :required
                                   common-lisp:t :member-name "projectId")
                                  (id :target-type environment-id :member-name
                                   "id")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (created-by :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "createdBy")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "createdAt" :timestamp-format
                                   "date-time")
                                  (updated-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "updatedAt" :timestamp-format
                                   "date-time")
                                  (name :target-type environment-name :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (environment-profile-id :target-type
                                   environment-profile-id :member-name
                                   "environmentProfileId")
                                  (aws-account-id :target-type aws-account-id
                                   :member-name "awsAccountId")
                                  (aws-account-region :target-type aws-region
                                   :member-name "awsAccountRegion")
                                  (provider :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "provider")
                                  (provisioned-resources :target-type
                                   resource-list :member-name
                                   "provisionedResources")
                                  (status :target-type environment-status
                                   :member-name "status")
                                  (environment-actions :target-type
                                   environment-action-list :member-name
                                   "environmentActions")
                                  (glossary-terms :target-type glossary-terms
                                   :member-name "glossaryTerms")
                                  (user-parameters :target-type
                                   custom-parameter-list :member-name
                                   "userParameters")
                                  (last-deployment :target-type deployment
                                   :member-name "lastDeployment")
                                  (provisioning-properties :target-type
                                   provisioning-properties :member-name
                                   "provisioningProperties")
                                  (deployment-properties :target-type
                                   deployment-properties :member-name
                                   "deploymentProperties")
                                  (environment-blueprint-id :target-type
                                   environment-blueprint-id :member-name
                                   "environmentBlueprintId")
                                  (environment-configuration-id :target-type
                                   environment-configuration-id :member-name
                                   "environmentConfigurationId"))
                                 (:shape-name "GetEnvironmentOutput"))

(smithy/sdk/shapes:define-input get-environment-profile-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type
                                  environment-profile-id :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "GetEnvironmentProfileInput"))

(smithy/sdk/shapes:define-output get-environment-profile-output common-lisp:nil
                                 ((id :target-type environment-profile-id
                                   :required common-lisp:t :member-name "id")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (aws-account-id :target-type aws-account-id
                                   :member-name "awsAccountId")
                                  (aws-account-region :target-type aws-region
                                   :member-name "awsAccountRegion")
                                  (created-by :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "createdBy")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "createdAt" :timestamp-format
                                   "date-time")
                                  (updated-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "updatedAt" :timestamp-format
                                   "date-time")
                                  (name :target-type environment-profile-name
                                   :required common-lisp:t :member-name "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (environment-blueprint-id :target-type
                                   environment-blueprint-id :required
                                   common-lisp:t :member-name
                                   "environmentBlueprintId")
                                  (project-id :target-type project-id
                                   :member-name "projectId")
                                  (user-parameters :target-type
                                   custom-parameter-list :member-name
                                   "userParameters"))
                                 (:shape-name "GetEnvironmentProfileOutput"))

(smithy/sdk/shapes:define-input get-form-type-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (form-type-identifier :target-type
                                  form-type-identifier :required common-lisp:t
                                  :member-name "formTypeIdentifier" :http-label
                                  common-lisp:t)
                                 (revision :target-type revision :member-name
                                  "revision" :http-query "revision"))
                                (:shape-name "GetFormTypeInput"))

(smithy/sdk/shapes:define-output get-form-type-output common-lisp:nil
                                 ((domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (name :target-type form-type-name :required
                                   common-lisp:t :member-name "name")
                                  (revision :target-type revision :required
                                   common-lisp:t :member-name "revision")
                                  (model :target-type model :required
                                   common-lisp:t :member-name "model")
                                  (owning-project-id :target-type project-id
                                   :member-name "owningProjectId")
                                  (origin-domain-id :target-type domain-id
                                   :member-name "originDomainId")
                                  (origin-project-id :target-type project-id
                                   :member-name "originProjectId")
                                  (status :target-type form-type-status
                                   :member-name "status")
                                  (created-at :target-type created-at
                                   :member-name "createdAt")
                                  (created-by :target-type created-by
                                   :member-name "createdBy")
                                  (description :target-type description
                                   :member-name "description")
                                  (imports :target-type import-list
                                   :member-name "imports"))
                                 (:shape-name "GetFormTypeOutput"))

(smithy/sdk/shapes:define-input get-glossary-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type glossary-id :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "GetGlossaryInput"))

(smithy/sdk/shapes:define-output get-glossary-output common-lisp:nil
                                 ((domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (id :target-type glossary-id :required
                                   common-lisp:t :member-name "id")
                                  (owning-project-id :target-type project-id
                                   :required common-lisp:t :member-name
                                   "owningProjectId")
                                  (name :target-type glossary-name :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type
                                   glossary-description :member-name
                                   "description")
                                  (status :target-type glossary-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (created-at :target-type created-at
                                   :member-name "createdAt")
                                  (created-by :target-type created-by
                                   :member-name "createdBy")
                                  (updated-at :target-type updated-at
                                   :member-name "updatedAt")
                                  (updated-by :target-type updated-by
                                   :member-name "updatedBy"))
                                 (:shape-name "GetGlossaryOutput"))

(smithy/sdk/shapes:define-input get-glossary-term-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type glossary-term-id
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t))
                                (:shape-name "GetGlossaryTermInput"))

(smithy/sdk/shapes:define-output get-glossary-term-output common-lisp:nil
                                 ((domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (glossary-id :target-type glossary-id
                                   :required common-lisp:t :member-name
                                   "glossaryId")
                                  (id :target-type glossary-term-id :required
                                   common-lisp:t :member-name "id")
                                  (name :target-type glossary-term-name
                                   :required common-lisp:t :member-name "name")
                                  (short-description :target-type
                                   short-description :member-name
                                   "shortDescription")
                                  (long-description :target-type
                                   long-description :member-name
                                   "longDescription")
                                  (term-relations :target-type term-relations
                                   :member-name "termRelations")
                                  (status :target-type glossary-term-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (created-at :target-type created-at
                                   :member-name "createdAt")
                                  (created-by :target-type created-by
                                   :member-name "createdBy")
                                  (updated-at :target-type updated-at
                                   :member-name "updatedAt")
                                  (updated-by :target-type updated-by
                                   :member-name "updatedBy"))
                                 (:shape-name "GetGlossaryTermOutput"))

(smithy/sdk/shapes:define-input get-group-profile-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (group-identifier :target-type
                                  group-identifier :required common-lisp:t
                                  :member-name "groupIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "GetGroupProfileInput"))

(smithy/sdk/shapes:define-output get-group-profile-output common-lisp:nil
                                 ((domain-id :target-type domain-id
                                   :member-name "domainId")
                                  (id :target-type group-profile-id
                                   :member-name "id")
                                  (status :target-type group-profile-status
                                   :member-name "status")
                                  (group-name :target-type group-profile-name
                                   :member-name "groupName"))
                                 (:shape-name "GetGroupProfileOutput"))

(smithy/sdk/shapes:define-input get-iam-portal-login-url-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "GetIamPortalLoginUrlInput"))

(smithy/sdk/shapes:define-output get-iam-portal-login-url-output
                                 common-lisp:nil
                                 ((auth-code-url :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "authCodeUrl")
                                  (user-profile-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "userProfileId"))
                                 (:shape-name "GetIamPortalLoginUrlOutput"))

(smithy/sdk/shapes:define-input get-job-run-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type run-identifier
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t))
                                (:shape-name "GetJobRunInput"))

(smithy/sdk/shapes:define-output get-job-run-output common-lisp:nil
                                 ((domain-id :target-type domain-id
                                   :member-name "domainId")
                                  (id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "id")
                                  (job-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "jobId")
                                  (job-type :target-type job-type :member-name
                                   "jobType")
                                  (run-mode :target-type job-run-mode
                                   :member-name "runMode")
                                  (details :target-type job-run-details
                                   :member-name "details")
                                  (status :target-type job-run-status
                                   :member-name "status")
                                  (error :target-type job-run-error
                                   :member-name "error")
                                  (created-by :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "createdBy")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "createdAt")
                                  (start-time :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "startTime")
                                  (end-time :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "endTime"))
                                 (:shape-name "GetJobRunOutput"))

(smithy/sdk/shapes:define-input get-lineage-event-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type
                                  lineage-event-identifier :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "GetLineageEventInput"))

(smithy/sdk/shapes:define-output get-lineage-event-output common-lisp:nil
                                 ((domain-id :target-type domain-id
                                   :member-name "domainId" :http-header
                                   "Domain-Id")
                                  (id :target-type lineage-event-identifier
                                   :member-name "id" :http-header "Id")
                                  (event :target-type lineage-event
                                   :member-name "event" :http-payload
                                   common-lisp:t)
                                  (created-by :target-type created-by
                                   :member-name "createdBy" :http-header
                                   "Created-By")
                                  (processing-status :target-type
                                   lineage-event-processing-status :member-name
                                   "processingStatus" :http-header
                                   "Processing-Status")
                                  (event-time :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "eventTime" :http-header
                                   "Event-Time")
                                  (created-at :target-type created-at
                                   :member-name "createdAt" :http-header
                                   "Created-At"))
                                 (:shape-name "GetLineageEventOutput"))

(smithy/sdk/shapes:define-input get-lineage-node-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type
                                  lineage-node-identifier :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t)
                                 (event-timestamp :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "eventTimestamp" :http-query
                                  "timestamp"))
                                (:shape-name "GetLineageNodeInput"))

(smithy/sdk/shapes:define-output get-lineage-node-output common-lisp:nil
                                 ((domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (name :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "name")
                                  (description :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "description")
                                  (created-at :target-type created-at
                                   :member-name "createdAt")
                                  (created-by :target-type created-by
                                   :member-name "createdBy")
                                  (updated-at :target-type updated-at
                                   :member-name "updatedAt")
                                  (updated-by :target-type updated-by
                                   :member-name "updatedBy")
                                  (id :target-type lineage-node-id :required
                                   common-lisp:t :member-name "id")
                                  (type-name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "typeName")
                                  (type-revision :target-type revision
                                   :member-name "typeRevision")
                                  (source-identifier :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "sourceIdentifier")
                                  (event-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "eventTimestamp")
                                  (forms-output :target-type form-output-list
                                   :member-name "formsOutput")
                                  (upstream-nodes :target-type
                                   lineage-node-reference-list :member-name
                                   "upstreamNodes")
                                  (downstream-nodes :target-type
                                   lineage-node-reference-list :member-name
                                   "downstreamNodes"))
                                 (:shape-name "GetLineageNodeOutput"))

(smithy/sdk/shapes:define-input get-listing-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type listing-id :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t)
                                 (listing-revision :target-type revision
                                  :member-name "listingRevision" :http-query
                                  "listingRevision"))
                                (:shape-name "GetListingInput"))

(smithy/sdk/shapes:define-output get-listing-output common-lisp:nil
                                 ((domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (id :target-type listing-id :required
                                   common-lisp:t :member-name "id")
                                  (listing-revision :target-type revision
                                   :required common-lisp:t :member-name
                                   "listingRevision")
                                  (created-at :target-type created-at
                                   :member-name "createdAt")
                                  (updated-at :target-type updated-at
                                   :member-name "updatedAt")
                                  (created-by :target-type created-by
                                   :member-name "createdBy")
                                  (updated-by :target-type updated-by
                                   :member-name "updatedBy")
                                  (item :target-type listing-item :member-name
                                   "item")
                                  (name :target-type listing-name :member-name
                                   "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (status :target-type listing-status
                                   :member-name "status"))
                                 (:shape-name "GetListingOutput"))

(smithy/sdk/shapes:define-input get-metadata-generation-run-input
                                common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type
                                  metadata-generation-run-identifier :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "GetMetadataGenerationRunInput"))

(smithy/sdk/shapes:define-output get-metadata-generation-run-output
                                 common-lisp:nil
                                 ((domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (id :target-type
                                   metadata-generation-run-identifier :required
                                   common-lisp:t :member-name "id")
                                  (target :target-type
                                   metadata-generation-run-target :member-name
                                   "target")
                                  (status :target-type
                                   metadata-generation-run-status :member-name
                                   "status")
                                  (type :target-type
                                   metadata-generation-run-type :member-name
                                   "type")
                                  (created-at :target-type created-at
                                   :member-name "createdAt")
                                  (created-by :target-type created-by
                                   :member-name "createdBy")
                                  (owning-project-id :target-type project-id
                                   :required common-lisp:t :member-name
                                   "owningProjectId"))
                                 (:shape-name "GetMetadataGenerationRunOutput"))

(smithy/sdk/shapes:define-input get-project-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type project-id :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "GetProjectInput"))

(smithy/sdk/shapes:define-output get-project-output common-lisp:nil
                                 ((domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (id :target-type project-id :required
                                   common-lisp:t :member-name "id")
                                  (name :target-type project-name :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (project-status :target-type project-status
                                   :member-name "projectStatus")
                                  (failure-reasons :target-type failure-reasons
                                   :member-name "failureReasons")
                                  (created-by :target-type created-by :required
                                   common-lisp:t :member-name "createdBy")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "createdAt" :timestamp-format
                                   "date-time")
                                  (last-updated-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "lastUpdatedAt"
                                   :timestamp-format "date-time")
                                  (glossary-terms :target-type glossary-terms
                                   :member-name "glossaryTerms")
                                  (domain-unit-id :target-type domain-unit-id
                                   :member-name "domainUnitId")
                                  (project-profile-id :target-type
                                   project-profile-id :member-name
                                   "projectProfileId")
                                  (user-parameters :target-type
                                   environment-configuration-user-parameters-list
                                   :member-name "userParameters")
                                  (environment-deployment-details :target-type
                                   environment-deployment-details :member-name
                                   "environmentDeploymentDetails"))
                                 (:shape-name "GetProjectOutput"))

(smithy/sdk/shapes:define-input get-project-profile-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type project-profile-id
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t))
                                (:shape-name "GetProjectProfileInput"))

(smithy/sdk/shapes:define-output get-project-profile-output common-lisp:nil
                                 ((domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (id :target-type project-profile-id :required
                                   common-lisp:t :member-name "id")
                                  (name :target-type project-profile-name
                                   :required common-lisp:t :member-name "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (status :target-type status :member-name
                                   "status")
                                  (environment-configurations :target-type
                                   environment-configurations-list :member-name
                                   "environmentConfigurations")
                                  (created-by :target-type created-by :required
                                   common-lisp:t :member-name "createdBy")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "createdAt" :timestamp-format
                                   "date-time")
                                  (last-updated-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "lastUpdatedAt"
                                   :timestamp-format "date-time")
                                  (domain-unit-id :target-type domain-unit-id
                                   :member-name "domainUnitId"))
                                 (:shape-name "GetProjectProfileOutput"))

(smithy/sdk/shapes:define-input get-rule-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type rule-id :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t)
                                 (revision :target-type revision :member-name
                                  "revision" :http-query "revision"))
                                (:shape-name "GetRuleInput"))

(smithy/sdk/shapes:define-output get-rule-output common-lisp:nil
                                 ((identifier :target-type rule-id :required
                                   common-lisp:t :member-name "identifier")
                                  (revision :target-type revision :required
                                   common-lisp:t :member-name "revision")
                                  (name :target-type rule-name :required
                                   common-lisp:t :member-name "name")
                                  (rule-type :target-type rule-type :required
                                   common-lisp:t :member-name "ruleType")
                                  (target :target-type rule-target :required
                                   common-lisp:t :member-name "target")
                                  (action :target-type rule-action :required
                                   common-lisp:t :member-name "action")
                                  (scope :target-type rule-scope :required
                                   common-lisp:t :member-name "scope")
                                  (detail :target-type rule-detail :required
                                   common-lisp:t :member-name "detail")
                                  (target-type :target-type rule-target-type
                                   :member-name "targetType")
                                  (description :target-type description
                                   :member-name "description")
                                  (created-at :target-type created-at :required
                                   common-lisp:t :member-name "createdAt")
                                  (updated-at :target-type updated-at :required
                                   common-lisp:t :member-name "updatedAt")
                                  (created-by :target-type created-by :required
                                   common-lisp:t :member-name "createdBy")
                                  (last-updated-by :target-type updated-by
                                   :required common-lisp:t :member-name
                                   "lastUpdatedBy"))
                                 (:shape-name "GetRuleOutput"))

(smithy/sdk/shapes:define-input get-subscription-grant-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type subscription-grant-id
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t))
                                (:shape-name "GetSubscriptionGrantInput"))

(smithy/sdk/shapes:define-output get-subscription-grant-output common-lisp:nil
                                 ((id :target-type subscription-grant-id
                                   :required common-lisp:t :member-name "id")
                                  (created-by :target-type created-by :required
                                   common-lisp:t :member-name "createdBy")
                                  (updated-by :target-type updated-by
                                   :member-name "updatedBy")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (created-at :target-type created-at :required
                                   common-lisp:t :member-name "createdAt")
                                  (updated-at :target-type updated-at :required
                                   common-lisp:t :member-name "updatedAt")
                                  (subscription-target-id :target-type
                                   subscription-target-id :required
                                   common-lisp:t :member-name
                                   "subscriptionTargetId")
                                  (granted-entity :target-type granted-entity
                                   :required common-lisp:t :member-name
                                   "grantedEntity")
                                  (status :target-type
                                   subscription-grant-overall-status :required
                                   common-lisp:t :member-name "status")
                                  (assets :target-type subscribed-assets
                                   :member-name "assets")
                                  (subscription-id :target-type subscription-id
                                   :member-name "subscriptionId"))
                                 (:shape-name "GetSubscriptionGrantOutput"))

(smithy/sdk/shapes:define-input get-subscription-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type subscription-id
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t))
                                (:shape-name "GetSubscriptionInput"))

(smithy/sdk/shapes:define-output get-subscription-output common-lisp:nil
                                 ((id :target-type subscription-id :required
                                   common-lisp:t :member-name "id")
                                  (created-by :target-type created-by :required
                                   common-lisp:t :member-name "createdBy")
                                  (updated-by :target-type updated-by
                                   :member-name "updatedBy")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (status :target-type subscription-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (created-at :target-type created-at :required
                                   common-lisp:t :member-name "createdAt")
                                  (updated-at :target-type updated-at :required
                                   common-lisp:t :member-name "updatedAt")
                                  (subscribed-principal :target-type
                                   subscribed-principal :required common-lisp:t
                                   :member-name "subscribedPrincipal")
                                  (subscribed-listing :target-type
                                   subscribed-listing :required common-lisp:t
                                   :member-name "subscribedListing")
                                  (subscription-request-id :target-type
                                   subscription-request-id :member-name
                                   "subscriptionRequestId")
                                  (retain-permissions :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "retainPermissions"))
                                 (:shape-name "GetSubscriptionOutput"))

(smithy/sdk/shapes:define-input get-subscription-request-details-input
                                common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type
                                  subscription-request-id :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetSubscriptionRequestDetailsInput"))

(smithy/sdk/shapes:define-output get-subscription-request-details-output
                                 common-lisp:nil
                                 ((id :target-type subscription-request-id
                                   :required common-lisp:t :member-name "id")
                                  (created-by :target-type created-by :required
                                   common-lisp:t :member-name "createdBy")
                                  (updated-by :target-type updated-by
                                   :member-name "updatedBy")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (status :target-type
                                   subscription-request-status :required
                                   common-lisp:t :member-name "status")
                                  (created-at :target-type created-at :required
                                   common-lisp:t :member-name "createdAt")
                                  (updated-at :target-type updated-at :required
                                   common-lisp:t :member-name "updatedAt")
                                  (request-reason :target-type request-reason
                                   :required common-lisp:t :member-name
                                   "requestReason")
                                  (subscribed-principals :target-type
                                   subscribed-principals :required
                                   common-lisp:t :member-name
                                   "subscribedPrincipals")
                                  (subscribed-listings :target-type
                                   subscribed-listings :required common-lisp:t
                                   :member-name "subscribedListings")
                                  (reviewer-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "reviewerId")
                                  (decision-comment :target-type
                                   decision-comment :member-name
                                   "decisionComment")
                                  (existing-subscription-id :target-type
                                   subscription-id :member-name
                                   "existingSubscriptionId")
                                  (metadata-forms :target-type metadata-forms
                                   :member-name "metadataForms"))
                                 (:shape-name
                                  "GetSubscriptionRequestDetailsOutput"))

(smithy/sdk/shapes:define-input get-subscription-target-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (environment-identifier :target-type
                                  environment-id :required common-lisp:t
                                  :member-name "environmentIdentifier"
                                  :http-label common-lisp:t)
                                 (identifier :target-type
                                  subscription-target-id :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "GetSubscriptionTargetInput"))

(smithy/sdk/shapes:define-output get-subscription-target-output common-lisp:nil
                                 ((id :target-type subscription-target-id
                                   :required common-lisp:t :member-name "id")
                                  (authorized-principals :target-type
                                   authorized-principal-identifiers :required
                                   common-lisp:t :member-name
                                   "authorizedPrincipals")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (project-id :target-type project-id :required
                                   common-lisp:t :member-name "projectId")
                                  (environment-id :target-type environment-id
                                   :required common-lisp:t :member-name
                                   "environmentId")
                                  (name :target-type subscription-target-name
                                   :required common-lisp:t :member-name "name")
                                  (type :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "type")
                                  (created-by :target-type created-by :required
                                   common-lisp:t :member-name "createdBy")
                                  (updated-by :target-type updated-by
                                   :member-name "updatedBy")
                                  (created-at :target-type created-at :required
                                   common-lisp:t :member-name "createdAt")
                                  (updated-at :target-type updated-at
                                   :member-name "updatedAt")
                                  (manage-access-role :target-type iam-role-arn
                                   :member-name "manageAccessRole")
                                  (applicable-asset-types :target-type
                                   applicable-asset-types :required
                                   common-lisp:t :member-name
                                   "applicableAssetTypes")
                                  (subscription-target-config :target-type
                                   subscription-target-forms :required
                                   common-lisp:t :member-name
                                   "subscriptionTargetConfig")
                                  (provider :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "provider"))
                                 (:shape-name "GetSubscriptionTargetOutput"))

(smithy/sdk/shapes:define-input get-time-series-data-point-input
                                common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (entity-identifier :target-type
                                  entity-identifier :required common-lisp:t
                                  :member-name "entityIdentifier" :http-label
                                  common-lisp:t)
                                 (entity-type :target-type
                                  time-series-entity-type :required
                                  common-lisp:t :member-name "entityType"
                                  :http-label common-lisp:t)
                                 (identifier :target-type
                                  time-series-data-point-identifier :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t)
                                 (form-name :target-type time-series-form-name
                                  :required common-lisp:t :member-name
                                  "formName" :http-query "formName"))
                                (:shape-name "GetTimeSeriesDataPointInput"))

(smithy/sdk/shapes:define-output get-time-series-data-point-output
                                 common-lisp:nil
                                 ((domain-id :target-type domain-id
                                   :member-name "domainId")
                                  (entity-id :target-type entity-id
                                   :member-name "entityId")
                                  (entity-type :target-type
                                   time-series-entity-type :member-name
                                   "entityType")
                                  (form-name :target-type time-series-form-name
                                   :member-name "formName")
                                  (form :target-type
                                   time-series-data-point-form-output
                                   :member-name "form"))
                                 (:shape-name "GetTimeSeriesDataPointOutput"))

(smithy/sdk/shapes:define-input get-user-profile-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (user-identifier :target-type user-identifier
                                  :required common-lisp:t :member-name
                                  "userIdentifier" :http-label common-lisp:t)
                                 (type :target-type user-profile-type
                                  :member-name "type" :http-query "type"))
                                (:shape-name "GetUserProfileInput"))

(smithy/sdk/shapes:define-output get-user-profile-output common-lisp:nil
                                 ((domain-id :target-type domain-id
                                   :member-name "domainId")
                                  (id :target-type user-profile-id :member-name
                                   "id")
                                  (type :target-type user-profile-type
                                   :member-name "type")
                                  (status :target-type user-profile-status
                                   :member-name "status")
                                  (details :target-type user-profile-details
                                   :member-name "details"))
                                 (:shape-name "GetUserProfileOutput"))

common-lisp:nil

(smithy/sdk/shapes:define-type glossary-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type glossary-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure glossary-item common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "domainId")
                                     (id :target-type glossary-id :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type glossary-name :required
                                      common-lisp:t :member-name "name")
                                     (owning-project-id :target-type project-id
                                      :required common-lisp:t :member-name
                                      "owningProjectId")
                                     (description :target-type
                                      glossary-description :member-name
                                      "description")
                                     (status :target-type glossary-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (created-at :target-type created-at
                                      :member-name "createdAt")
                                     (created-by :target-type created-by
                                      :member-name "createdBy")
                                     (updated-at :target-type updated-at
                                      :member-name "updatedAt")
                                     (updated-by :target-type updated-by
                                      :member-name "updatedBy")
                                     (additional-attributes :target-type
                                      glossary-item-additional-attributes
                                      :member-name "additionalAttributes"))
                                    (:shape-name "GlossaryItem"))

(smithy/sdk/shapes:define-structure glossary-item-additional-attributes
                                    common-lisp:nil
                                    ((match-rationale :target-type
                                      match-rationale :member-name
                                      "matchRationale"))
                                    (:shape-name
                                     "GlossaryItemAdditionalAttributes"))

(smithy/sdk/shapes:define-type glossary-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum glossary-status
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

common-lisp:nil

(smithy/sdk/shapes:define-type glossary-term-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure glossary-term-item common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "domainId")
                                     (glossary-id :target-type glossary-id
                                      :required common-lisp:t :member-name
                                      "glossaryId")
                                     (id :target-type glossary-term-id
                                      :required common-lisp:t :member-name
                                      "id")
                                     (name :target-type glossary-term-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (short-description :target-type
                                      short-description :member-name
                                      "shortDescription")
                                     (long-description :target-type
                                      long-description :member-name
                                      "longDescription")
                                     (term-relations :target-type
                                      term-relations :member-name
                                      "termRelations")
                                     (status :target-type glossary-term-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (created-at :target-type created-at
                                      :member-name "createdAt")
                                     (created-by :target-type created-by
                                      :member-name "createdBy")
                                     (updated-at :target-type updated-at
                                      :member-name "updatedAt")
                                     (updated-by :target-type updated-by
                                      :member-name "updatedBy")
                                     (additional-attributes :target-type
                                      glossary-term-item-additional-attributes
                                      :member-name "additionalAttributes"))
                                    (:shape-name "GlossaryTermItem"))

(smithy/sdk/shapes:define-structure glossary-term-item-additional-attributes
                                    common-lisp:nil
                                    ((match-rationale :target-type
                                      match-rationale :member-name
                                      "matchRationale"))
                                    (:shape-name
                                     "GlossaryTermItemAdditionalAttributes"))

(smithy/sdk/shapes:define-type glossary-term-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum glossary-term-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-list glossary-terms :member glossary-term-id)

(smithy/sdk/shapes:define-structure glue-connection common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (connection-type :target-type
                                      connection-type :member-name
                                      "connectionType")
                                     (match-criteria :target-type
                                      match-criteria :member-name
                                      "matchCriteria")
                                     (connection-properties :target-type
                                      connection-properties :member-name
                                      "connectionProperties")
                                     (spark-properties :target-type
                                      property-map :member-name
                                      "sparkProperties")
                                     (athena-properties :target-type
                                      property-map :member-name
                                      "athenaProperties")
                                     (python-properties :target-type
                                      property-map :member-name
                                      "pythonProperties")
                                     (physical-connection-requirements
                                      :target-type
                                      physical-connection-requirements
                                      :member-name
                                      "physicalConnectionRequirements")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "creationTime")
                                     (last-updated-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "lastUpdatedTime")
                                     (last-updated-by :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "lastUpdatedBy")
                                     (status :target-type connection-status
                                      :member-name "status")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason")
                                     (last-connection-validation-time
                                      :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name
                                      "lastConnectionValidationTime")
                                     (authentication-configuration :target-type
                                      authentication-configuration :member-name
                                      "authenticationConfiguration")
                                     (connection-schema-version :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "connectionSchemaVersion")
                                     (compatible-compute-environments
                                      :target-type compute-environments-list
                                      :member-name
                                      "compatibleComputeEnvironments"))
                                    (:shape-name "GlueConnection"))

(smithy/sdk/shapes:define-structure glue-connection-input common-lisp:nil
                                    ((connection-properties :target-type
                                      connection-properties :member-name
                                      "connectionProperties")
                                     (physical-connection-requirements
                                      :target-type
                                      physical-connection-requirements
                                      :member-name
                                      "physicalConnectionRequirements")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (connection-type :target-type
                                      glue-connection-type :member-name
                                      "connectionType")
                                     (match-criteria :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "matchCriteria")
                                     (validate-credentials :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "validateCredentials")
                                     (validate-for-compute-environments
                                      :target-type compute-environments-list
                                      :member-name
                                      "validateForComputeEnvironments")
                                     (spark-properties :target-type
                                      property-map :member-name
                                      "sparkProperties")
                                     (athena-properties :target-type
                                      property-map :member-name
                                      "athenaProperties")
                                     (python-properties :target-type
                                      property-map :member-name
                                      "pythonProperties")
                                     (authentication-configuration :target-type
                                      authentication-configuration-input
                                      :member-name
                                      "authenticationConfiguration"))
                                    (:shape-name "GlueConnectionInput"))

(smithy/sdk/shapes:define-structure glue-connection-patch common-lisp:nil
                                    ((description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (connection-properties :target-type
                                      connection-properties :member-name
                                      "connectionProperties")
                                     (authentication-configuration :target-type
                                      authentication-configuration-patch
                                      :member-name
                                      "authenticationConfiguration"))
                                    (:shape-name "GlueConnectionPatch"))

(smithy/sdk/shapes:define-enum glue-connection-type
    common-lisp:nil
  (:snowflake "SNOWFLAKE")
  (:bigquery "BIGQUERY")
  (:documentdb "DOCUMENTDB")
  (:dynamodb "DYNAMODB")
  (:mysql "MYSQL")
  (:opensearch "OPENSEARCH")
  (:oracle "ORACLE")
  (:postgresql "POSTGRESQL")
  (:redshift "REDSHIFT")
  (:saphana "SAPHANA")
  (:sqlserver "SQLSERVER")
  (:teradata "TERADATA")
  (:vertica "VERTICA"))

(smithy/sdk/shapes:define-structure glue-oauth2credentials common-lisp:nil
                                    ((user-managed-client-application-client-secret
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "userManagedClientApplicationClientSecret")
                                     (access-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "accessToken")
                                     (refresh-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "refreshToken")
                                     (jwt-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "jwtToken"))
                                    (:shape-name "GlueOAuth2Credentials"))

(smithy/sdk/shapes:define-structure glue-properties-input common-lisp:nil
                                    ((glue-connection-input :target-type
                                      glue-connection-input :member-name
                                      "glueConnectionInput"))
                                    (:shape-name "GluePropertiesInput"))

(smithy/sdk/shapes:define-structure glue-properties-output common-lisp:nil
                                    ((status :target-type connection-status
                                      :member-name "status")
                                     (error-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "errorMessage"))
                                    (:shape-name "GluePropertiesOutput"))

(smithy/sdk/shapes:define-structure glue-properties-patch common-lisp:nil
                                    ((glue-connection-input :target-type
                                      glue-connection-patch :member-name
                                      "glueConnectionInput"))
                                    (:shape-name "GluePropertiesPatch"))

(smithy/sdk/shapes:define-structure glue-run-configuration-input
                                    common-lisp:nil
                                    ((data-access-role :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "dataAccessRole")
                                     (relational-filter-configurations
                                      :target-type
                                      relational-filter-configurations
                                      :required common-lisp:t :member-name
                                      "relationalFilterConfigurations")
                                     (auto-import-data-quality-result
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "autoImportDataQualityResult")
                                     (catalog-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "catalogName"))
                                    (:shape-name "GlueRunConfigurationInput"))

(smithy/sdk/shapes:define-structure glue-run-configuration-output
                                    common-lisp:nil
                                    ((account-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "accountId")
                                     (region :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "region")
                                     (data-access-role :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "dataAccessRole")
                                     (relational-filter-configurations
                                      :target-type
                                      relational-filter-configurations
                                      :required common-lisp:t :member-name
                                      "relationalFilterConfigurations")
                                     (auto-import-data-quality-result
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "autoImportDataQualityResult")
                                     (catalog-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "catalogName"))
                                    (:shape-name "GlueRunConfigurationOutput"))

(smithy/sdk/shapes:define-structure glue-self-grant-status-output
                                    common-lisp:nil
                                    ((self-grant-status-details :target-type
                                      self-grant-status-details :required
                                      common-lisp:t :member-name
                                      "selfGrantStatusDetails"))
                                    (:shape-name "GlueSelfGrantStatusOutput"))

(smithy/sdk/shapes:define-enum governance-type
    common-lisp:nil
  (:aws-managed "AWS_MANAGED")
  (:user-managed "USER_MANAGED"))

(smithy/sdk/shapes:define-union granted-entity common-lisp:nil
                                ((listing :target-type listing-revision
                                  :member-name "listing"))
                                (:shape-name "GrantedEntity"))

(smithy/sdk/shapes:define-union granted-entity-input common-lisp:nil
                                ((listing :target-type listing-revision-input
                                  :member-name "listing"))
                                (:shape-name "GrantedEntityInput"))

(smithy/sdk/shapes:define-structure greater-than-expression common-lisp:nil
                                    ((column-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "columnName")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "GreaterThanExpression"))

(smithy/sdk/shapes:define-structure greater-than-or-equal-to-expression
                                    common-lisp:nil
                                    ((column-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "columnName")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name
                                     "GreaterThanOrEqualToExpression"))

(smithy/sdk/shapes:define-structure group-details common-lisp:nil
                                    ((group-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "groupId"))
                                    (:shape-name "GroupDetails"))

(smithy/sdk/shapes:define-type group-identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union group-policy-grant-principal common-lisp:nil
                                ((group-identifier :target-type
                                  group-identifier :member-name
                                  "groupIdentifier"))
                                (:shape-name "GroupPolicyGrantPrincipal"))

(smithy/sdk/shapes:define-type group-profile-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type group-profile-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum group-profile-status
    common-lisp:nil
  (:assigned "ASSIGNED")
  (:not-assigned "NOT_ASSIGNED"))

(smithy/sdk/shapes:define-list group-profile-summaries :member
                               group-profile-summary)

(smithy/sdk/shapes:define-structure group-profile-summary common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :member-name "domainId")
                                     (id :target-type group-profile-id
                                      :member-name "id")
                                     (status :target-type group-profile-status
                                      :member-name "status")
                                     (group-name :target-type
                                      group-profile-name :member-name
                                      "groupName"))
                                    (:shape-name "GroupProfileSummary"))

(smithy/sdk/shapes:define-type group-search-text smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum group-search-type
    common-lisp:nil
  (:sso-group "SSO_GROUP")
  (:datazone-sso-group "DATAZONE_SSO_GROUP"))

(smithy/sdk/shapes:define-enum hyper-pod-orchestrator
    common-lisp:nil
  (:eks "EKS")
  (:slurm "SLURM"))

(smithy/sdk/shapes:define-structure hyper-pod-properties-input common-lisp:nil
                                    ((cluster-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "clusterName"))
                                    (:shape-name "HyperPodPropertiesInput"))

(smithy/sdk/shapes:define-structure hyper-pod-properties-output common-lisp:nil
                                    ((cluster-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "clusterName")
                                     (cluster-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "clusterArn")
                                     (orchestrator :target-type
                                      hyper-pod-orchestrator :member-name
                                      "orchestrator"))
                                    (:shape-name "HyperPodPropertiesOutput"))

(smithy/sdk/shapes:define-structure iam-properties-input common-lisp:nil
                                    ((glue-lineage-sync-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "glueLineageSyncEnabled"))
                                    (:shape-name "IamPropertiesInput"))

(smithy/sdk/shapes:define-structure iam-properties-output common-lisp:nil
                                    ((environment-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "environmentId")
                                     (glue-lineage-sync-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "glueLineageSyncEnabled"))
                                    (:shape-name "IamPropertiesOutput"))

(smithy/sdk/shapes:define-structure iam-properties-patch common-lisp:nil
                                    ((glue-lineage-sync-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "glueLineageSyncEnabled"))
                                    (:shape-name "IamPropertiesPatch"))

(smithy/sdk/shapes:define-type iam-role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure iam-user-profile-details common-lisp:nil
                                    ((arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "arn"))
                                    (:shape-name "IamUserProfileDetails"))

(smithy/sdk/shapes:define-structure import common-lisp:nil
                                    ((name :target-type form-type-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (revision :target-type revision :required
                                      common-lisp:t :member-name "revision"))
                                    (:shape-name "Import"))

(smithy/sdk/shapes:define-list import-list :member import)

(smithy/sdk/shapes:define-structure in-expression common-lisp:nil
                                    ((column-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "columnName")
                                     (values :target-type string-list :required
                                      common-lisp:t :member-name "values"))
                                    (:shape-name "InExpression"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-enum inventory-search-scope
    common-lisp:nil
  (:asset "ASSET")
  (:glossary "GLOSSARY")
  (:glossary-term "GLOSSARY_TERM")
  (:data-product "DATA_PRODUCT"))

(smithy/sdk/shapes:define-structure is-not-null-expression common-lisp:nil
                                    ((column-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "columnName"))
                                    (:shape-name "IsNotNullExpression"))

(smithy/sdk/shapes:define-structure is-null-expression common-lisp:nil
                                    ((column-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "columnName"))
                                    (:shape-name "IsNullExpression"))

(smithy/sdk/shapes:define-list item-glossary-terms :member glossary-term-id)

(smithy/sdk/shapes:define-union job-run-details common-lisp:nil
                                ((lineage-run-details :target-type
                                  lineage-run-details :member-name
                                  "lineageRunDetails"))
                                (:shape-name "JobRunDetails"))

(smithy/sdk/shapes:define-structure job-run-error common-lisp:nil
                                    ((message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "JobRunError"))

(smithy/sdk/shapes:define-enum job-run-mode
    common-lisp:nil
  (:scheduled "SCHEDULED")
  (:on-demand "ON_DEMAND"))

(smithy/sdk/shapes:define-enum job-run-status
    common-lisp:nil
  (:scheduled "SCHEDULED")
  (:in-progress "IN_PROGRESS")
  (:success "SUCCESS")
  (:partially-succeeded "PARTIALLY_SUCCEEDED")
  (:failed "FAILED")
  (:aborted "ABORTED")
  (:timed-out "TIMED_OUT")
  (:canceled "CANCELED"))

(smithy/sdk/shapes:define-list job-run-summaries :member job-run-summary)

(smithy/sdk/shapes:define-structure job-run-summary common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :member-name "domainId")
                                     (job-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "jobId")
                                     (job-type :target-type job-type
                                      :member-name "jobType")
                                     (run-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "runId")
                                     (run-mode :target-type job-run-mode
                                      :member-name "runMode")
                                     (status :target-type job-run-status
                                      :member-name "status")
                                     (error :target-type job-run-error
                                      :member-name "error")
                                     (created-by :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "createdBy")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt")
                                     (start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "startTime")
                                     (end-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "endTime"))
                                    (:shape-name "JobRunSummary"))

(smithy/sdk/shapes:define-enum job-type
    common-lisp:nil
  (:lineage "LINEAGE"))

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lake-formation-configuration
                                    common-lisp:nil
                                    ((location-registration-role :target-type
                                      role-arn :member-name
                                      "locationRegistrationRole")
                                     (location-registration-exclude-s3locations
                                      :target-type s3location-list :member-name
                                      "locationRegistrationExcludeS3Locations"))
                                    (:shape-name "LakeFormationConfiguration"))

(smithy/sdk/shapes:define-type last-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure less-than-expression common-lisp:nil
                                    ((column-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "columnName")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "LessThanExpression"))

(smithy/sdk/shapes:define-structure less-than-or-equal-to-expression
                                    common-lisp:nil
                                    ((column-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "columnName")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "LessThanOrEqualToExpression"))

(smithy/sdk/shapes:define-structure like-expression common-lisp:nil
                                    ((column-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "columnName")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "LikeExpression"))

(smithy/sdk/shapes:define-type lineage-event smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type lineage-event-error-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type lineage-event-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum lineage-event-processing-status
    common-lisp:nil
  (:requested "REQUESTED")
  (:processing "PROCESSING")
  (:success "SUCCESS")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-list lineage-event-summaries :member
                               lineage-event-summary)

(smithy/sdk/shapes:define-structure lineage-event-summary common-lisp:nil
                                    ((id :target-type lineage-event-identifier
                                      :member-name "id")
                                     (domain-id :target-type domain-id
                                      :member-name "domainId")
                                     (processing-status :target-type
                                      lineage-event-processing-status
                                      :member-name "processingStatus")
                                     (event-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "eventTime")
                                     (event-summary :target-type event-summary
                                      :member-name "eventSummary")
                                     (created-by :target-type created-by
                                      :member-name "createdBy")
                                     (created-at :target-type created-at
                                      :member-name "createdAt"))
                                    (:shape-name "LineageEventSummary"))

(smithy/sdk/shapes:define-enum lineage-import-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:success "SUCCESS")
  (:failed "FAILED")
  (:partially-succeeded "PARTIALLY_SUCCEEDED"))

(smithy/sdk/shapes:define-structure lineage-info common-lisp:nil
                                    ((event-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "eventId")
                                     (event-status :target-type
                                      lineage-event-processing-status
                                      :member-name "eventStatus")
                                     (error-message :target-type
                                      lineage-event-error-message :member-name
                                      "errorMessage"))
                                    (:shape-name "LineageInfo"))

(smithy/sdk/shapes:define-type lineage-node-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type lineage-node-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lineage-node-reference common-lisp:nil
                                    ((id :target-type lineage-node-id
                                      :member-name "id")
                                     (event-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "eventTimestamp"))
                                    (:shape-name "LineageNodeReference"))

(smithy/sdk/shapes:define-list lineage-node-reference-list :member
                               lineage-node-reference)

(smithy/sdk/shapes:define-list lineage-node-summaries :member
                               lineage-node-summary)

(smithy/sdk/shapes:define-structure lineage-node-summary common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "domainId")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (created-at :target-type created-at
                                      :member-name "createdAt")
                                     (created-by :target-type created-by
                                      :member-name "createdBy")
                                     (updated-at :target-type updated-at
                                      :member-name "updatedAt")
                                     (updated-by :target-type updated-by
                                      :member-name "updatedBy")
                                     (id :target-type lineage-node-id :required
                                      common-lisp:t :member-name "id")
                                     (type-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "typeName")
                                     (type-revision :target-type revision
                                      :member-name "typeRevision")
                                     (source-identifier :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "sourceIdentifier")
                                     (event-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "eventTimestamp"))
                                    (:shape-name "LineageNodeSummary"))

(smithy/sdk/shapes:define-structure lineage-node-type-item common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "domainId")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (created-at :target-type created-at
                                      :member-name "createdAt")
                                     (created-by :target-type created-by
                                      :member-name "createdBy")
                                     (updated-at :target-type updated-at
                                      :member-name "updatedAt")
                                     (updated-by :target-type updated-by
                                      :member-name "updatedBy")
                                     (revision :target-type revision :required
                                      common-lisp:t :member-name "revision")
                                     (forms-output :target-type
                                      forms-output-map :required common-lisp:t
                                      :member-name "formsOutput"))
                                    (:shape-name "LineageNodeTypeItem"))

(smithy/sdk/shapes:define-structure lineage-run-details common-lisp:nil
                                    ((sql-query-run-details :target-type
                                      lineage-sql-query-run-details
                                      :member-name "sqlQueryRunDetails"))
                                    (:shape-name "LineageRunDetails"))

(smithy/sdk/shapes:define-structure lineage-sql-query-run-details
                                    common-lisp:nil
                                    ((query-start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "queryStartTime")
                                     (query-end-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "queryEndTime")
                                     (total-queries-processed :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "totalQueriesProcessed")
                                     (num-queries-failed :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "numQueriesFailed")
                                     (error-messages :target-type
                                      failed-query-processing-error-messages
                                      :member-name "errorMessages"))
                                    (:shape-name "LineageSqlQueryRunDetails"))

(smithy/sdk/shapes:define-structure lineage-sync-schedule common-lisp:nil
                                    ((schedule :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "schedule"))
                                    (:shape-name "LineageSyncSchedule"))

(smithy/sdk/shapes:define-input list-asset-filters-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (asset-identifier :target-type asset-id
                                  :required common-lisp:t :member-name
                                  "assetIdentifier" :http-label common-lisp:t)
                                 (status :target-type filter-status
                                  :member-name "status" :http-query "status")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListAssetFiltersInput"))

(smithy/sdk/shapes:define-output list-asset-filters-output common-lisp:nil
                                 ((items :target-type asset-filters :required
                                   common-lisp:t :member-name "items")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListAssetFiltersOutput"))

(smithy/sdk/shapes:define-input list-asset-revisions-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type asset-identifier
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t)
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListAssetRevisionsInput"))

(smithy/sdk/shapes:define-output list-asset-revisions-output common-lisp:nil
                                 ((items :target-type asset-revisions
                                   :member-name "items")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListAssetRevisionsOutput"))

(smithy/sdk/shapes:define-input list-connections-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (sort-by :target-type sort-field-connection
                                  :member-name "sortBy" :http-query "sortBy")
                                 (sort-order :target-type sort-order
                                  :member-name "sortOrder" :http-query
                                  "sortOrder")
                                 (name :target-type connection-name
                                  :member-name "name" :http-query "name")
                                 (environment-identifier :target-type
                                  environment-id :member-name
                                  "environmentIdentifier" :http-query
                                  "environmentIdentifier")
                                 (project-identifier :target-type project-id
                                  :required common-lisp:t :member-name
                                  "projectIdentifier" :http-query
                                  "projectIdentifier")
                                 (type :target-type connection-type
                                  :member-name "type" :http-query "type"))
                                (:shape-name "ListConnectionsInput"))

(smithy/sdk/shapes:define-output list-connections-output common-lisp:nil
                                 ((items :target-type connection-summaries
                                   :required common-lisp:t :member-name
                                   "items")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListConnectionsOutput"))

(smithy/sdk/shapes:define-input list-data-product-revisions-input
                                common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type data-product-id
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListDataProductRevisionsInput"))

(smithy/sdk/shapes:define-output list-data-product-revisions-output
                                 common-lisp:nil
                                 ((items :target-type data-product-revisions
                                   :required common-lisp:t :member-name
                                   "items")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDataProductRevisionsOutput"))

(smithy/sdk/shapes:define-input list-data-source-run-activities-input
                                common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type data-source-run-id
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t)
                                 (status :target-type
                                  data-asset-activity-status :member-name
                                  "status" :http-query "status")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListDataSourceRunActivitiesInput"))

(smithy/sdk/shapes:define-output list-data-source-run-activities-output
                                 common-lisp:nil
                                 ((items :target-type
                                   data-source-run-activities :required
                                   common-lisp:t :member-name "items")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListDataSourceRunActivitiesOutput"))

(smithy/sdk/shapes:define-input list-data-source-runs-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (data-source-identifier :target-type
                                  data-source-id :required common-lisp:t
                                  :member-name "dataSourceIdentifier"
                                  :http-label common-lisp:t)
                                 (status :target-type data-source-run-status
                                  :member-name "status" :http-query "status")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListDataSourceRunsInput"))

(smithy/sdk/shapes:define-output list-data-source-runs-output common-lisp:nil
                                 ((items :target-type data-source-run-summaries
                                   :required common-lisp:t :member-name
                                   "items")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDataSourceRunsOutput"))

(smithy/sdk/shapes:define-input list-data-sources-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (project-identifier :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "projectIdentifier" :http-query
                                  "projectIdentifier")
                                 (environment-identifier :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "environmentIdentifier" :http-query
                                  "environmentIdentifier")
                                 (connection-identifier :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "connectionIdentifier" :http-query
                                  "connectionIdentifier")
                                 (type :target-type data-source-type
                                  :member-name "type" :http-query "type")
                                 (status :target-type data-source-status
                                  :member-name "status" :http-query "status")
                                 (name :target-type name :member-name "name"
                                  :http-query "name")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListDataSourcesInput"))

(smithy/sdk/shapes:define-output list-data-sources-output common-lisp:nil
                                 ((items :target-type data-source-summaries
                                   :required common-lisp:t :member-name
                                   "items")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDataSourcesOutput"))

(smithy/sdk/shapes:define-input list-domain-units-for-parent-input
                                common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (parent-domain-unit-identifier :target-type
                                  domain-unit-id :required common-lisp:t
                                  :member-name "parentDomainUnitIdentifier"
                                  :http-query "parentDomainUnitIdentifier")
                                 (max-results :target-type
                                  max-results-for-list-domains :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListDomainUnitsForParentInput"))

(smithy/sdk/shapes:define-output list-domain-units-for-parent-output
                                 common-lisp:nil
                                 ((items :target-type domain-unit-summaries
                                   :required common-lisp:t :member-name
                                   "items")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDomainUnitsForParentOutput"))

(smithy/sdk/shapes:define-input list-domains-input common-lisp:nil
                                ((status :target-type domain-status
                                  :member-name "status" :http-query "status")
                                 (max-results :target-type
                                  max-results-for-list-domains :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListDomainsInput"))

(smithy/sdk/shapes:define-output list-domains-output common-lisp:nil
                                 ((items :target-type domain-summaries
                                   :required common-lisp:t :member-name
                                   "items")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDomainsOutput"))

(smithy/sdk/shapes:define-input list-entity-owners-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (entity-type :target-type
                                  data-zone-entity-type :required common-lisp:t
                                  :member-name "entityType" :http-label
                                  common-lisp:t)
                                 (entity-identifier :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "entityIdentifier"
                                  :http-label common-lisp:t)
                                 (max-results :target-type
                                  max-results-for-list-domains :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListEntityOwnersInput"))

(smithy/sdk/shapes:define-output list-entity-owners-output common-lisp:nil
                                 ((owners :target-type entity-owners :required
                                   common-lisp:t :member-name "owners")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListEntityOwnersOutput"))

(smithy/sdk/shapes:define-list list-environment-action-summaries :member
                               environment-action-summary)

(smithy/sdk/shapes:define-input list-environment-actions-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (environment-identifier :target-type
                                  environment-id :required common-lisp:t
                                  :member-name "environmentIdentifier"
                                  :http-label common-lisp:t)
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListEnvironmentActionsInput"))

(smithy/sdk/shapes:define-output list-environment-actions-output
                                 common-lisp:nil
                                 ((items :target-type
                                   list-environment-action-summaries
                                   :member-name "items")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListEnvironmentActionsOutput"))

(smithy/sdk/shapes:define-input list-environment-blueprint-configurations-input
                                common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name
                                 "ListEnvironmentBlueprintConfigurationsInput"))

(smithy/sdk/shapes:define-output
 list-environment-blueprint-configurations-output common-lisp:nil
 ((items :target-type environment-blueprint-configurations :member-name
   "items")
  (next-token :target-type pagination-token :member-name "nextToken"))
 (:shape-name "ListEnvironmentBlueprintConfigurationsOutput"))

(smithy/sdk/shapes:define-input list-environment-blueprints-input
                                common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (name :target-type environment-blueprint-name
                                  :member-name "name" :http-query "name")
                                 (managed :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "managed" :http-query "managed"))
                                (:shape-name "ListEnvironmentBlueprintsInput"))

(smithy/sdk/shapes:define-output list-environment-blueprints-output
                                 common-lisp:nil
                                 ((items :target-type
                                   environment-blueprint-summaries :required
                                   common-lisp:t :member-name "items")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListEnvironmentBlueprintsOutput"))

(smithy/sdk/shapes:define-input list-environment-profiles-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (aws-account-id :target-type aws-account-id
                                  :member-name "awsAccountId" :http-query
                                  "awsAccountId")
                                 (aws-account-region :target-type aws-region
                                  :member-name "awsAccountRegion" :http-query
                                  "awsAccountRegion")
                                 (environment-blueprint-identifier :target-type
                                  environment-blueprint-id :member-name
                                  "environmentBlueprintIdentifier" :http-query
                                  "environmentBlueprintIdentifier")
                                 (project-identifier :target-type project-id
                                  :member-name "projectIdentifier" :http-query
                                  "projectIdentifier")
                                 (name :target-type environment-profile-name
                                  :member-name "name" :http-query "name")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListEnvironmentProfilesInput"))

(smithy/sdk/shapes:define-output list-environment-profiles-output
                                 common-lisp:nil
                                 ((items :target-type
                                   environment-profile-summaries :required
                                   common-lisp:t :member-name "items")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListEnvironmentProfilesOutput"))

(smithy/sdk/shapes:define-input list-environments-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (aws-account-id :target-type aws-account-id
                                  :member-name "awsAccountId" :http-query
                                  "awsAccountId")
                                 (status :target-type environment-status
                                  :member-name "status" :http-query "status")
                                 (aws-account-region :target-type aws-region
                                  :member-name "awsAccountRegion" :http-query
                                  "awsAccountRegion")
                                 (project-identifier :target-type project-id
                                  :required common-lisp:t :member-name
                                  "projectIdentifier" :http-query
                                  "projectIdentifier")
                                 (environment-profile-identifier :target-type
                                  environment-profile-id :member-name
                                  "environmentProfileIdentifier" :http-query
                                  "environmentProfileIdentifier")
                                 (environment-blueprint-identifier :target-type
                                  environment-blueprint-id :member-name
                                  "environmentBlueprintIdentifier" :http-query
                                  "environmentBlueprintIdentifier")
                                 (provider :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "provider" :http-query "provider")
                                 (name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "name" :http-query "name")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListEnvironmentsInput"))

(smithy/sdk/shapes:define-output list-environments-output common-lisp:nil
                                 ((items :target-type environment-summaries
                                   :required common-lisp:t :member-name
                                   "items")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListEnvironmentsOutput"))

(smithy/sdk/shapes:define-input list-job-runs-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (job-identifier :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "jobIdentifier"
                                  :http-label common-lisp:t)
                                 (status :target-type job-run-status
                                  :member-name "status" :http-query "status")
                                 (sort-order :target-type sort-order
                                  :member-name "sortOrder" :http-query
                                  "sortOrder")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListJobRunsInput"))

(smithy/sdk/shapes:define-output list-job-runs-output common-lisp:nil
                                 ((items :target-type job-run-summaries
                                   :member-name "items")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListJobRunsOutput"))

(smithy/sdk/shapes:define-input list-lineage-events-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (timestamp-after :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "timestampAfter" :http-query
                                  "timestampAfter")
                                 (timestamp-before :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "timestampBefore" :http-query
                                  "timestampBefore")
                                 (processing-status :target-type
                                  lineage-event-processing-status :member-name
                                  "processingStatus" :http-query
                                  "processingStatus")
                                 (sort-order :target-type sort-order
                                  :member-name "sortOrder" :http-query
                                  "sortOrder")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListLineageEventsInput"))

(smithy/sdk/shapes:define-output list-lineage-events-output common-lisp:nil
                                 ((items :target-type lineage-event-summaries
                                   :member-name "items")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListLineageEventsOutput"))

(smithy/sdk/shapes:define-input list-lineage-node-history-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (identifier :target-type
                                  lineage-node-identifier :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t)
                                 (direction :target-type edge-direction
                                  :member-name "direction" :http-query
                                  "direction")
                                 (event-timestamp-gte :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "eventTimestampGTE" :http-query
                                  "timestampGTE")
                                 (event-timestamp-lte :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "eventTimestampLTE" :http-query
                                  "timestampLTE")
                                 (sort-order :target-type sort-order
                                  :member-name "sortOrder" :http-query
                                  "sortOrder"))
                                (:shape-name "ListLineageNodeHistoryInput"))

(smithy/sdk/shapes:define-output list-lineage-node-history-output
                                 common-lisp:nil
                                 ((nodes :target-type lineage-node-summaries
                                   :member-name "nodes")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListLineageNodeHistoryOutput"))

(smithy/sdk/shapes:define-input list-metadata-generation-runs-input
                                common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (status :target-type
                                  metadata-generation-run-status :member-name
                                  "status" :http-query "status")
                                 (type :target-type
                                  metadata-generation-run-type :member-name
                                  "type" :http-query "type")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListMetadataGenerationRunsInput"))

(smithy/sdk/shapes:define-output list-metadata-generation-runs-output
                                 common-lisp:nil
                                 ((items :target-type metadata-generation-runs
                                   :member-name "items")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListMetadataGenerationRunsOutput"))

(smithy/sdk/shapes:define-input list-notifications-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (type :target-type notification-type :required
                                  common-lisp:t :member-name "type" :http-query
                                  "type")
                                 (after-timestamp :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "afterTimestamp" :http-query
                                  "afterTimestamp")
                                 (before-timestamp :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "beforeTimestamp" :http-query
                                  "beforeTimestamp")
                                 (subjects :target-type notification-subjects
                                  :member-name "subjects" :http-query
                                  "subjects")
                                 (task-status :target-type task-status
                                  :member-name "taskStatus" :http-query
                                  "taskStatus")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListNotificationsInput"))

(smithy/sdk/shapes:define-output list-notifications-output common-lisp:nil
                                 ((notifications :target-type
                                   notifications-list :member-name
                                   "notifications")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListNotificationsOutput"))

(smithy/sdk/shapes:define-input list-policy-grants-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (entity-type :target-type target-entity-type
                                  :required common-lisp:t :member-name
                                  "entityType" :http-label common-lisp:t)
                                 (entity-identifier :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "entityIdentifier"
                                  :http-label common-lisp:t)
                                 (policy-type :target-type managed-policy-type
                                  :required common-lisp:t :member-name
                                  "policyType" :http-query "policyType")
                                 (max-results :target-type
                                  max-results-for-list-domains :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListPolicyGrantsInput"))

(smithy/sdk/shapes:define-output list-policy-grants-output common-lisp:nil
                                 ((grant-list :target-type policy-grant-list
                                   :required common-lisp:t :member-name
                                   "grantList")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListPolicyGrantsOutput"))

(smithy/sdk/shapes:define-input list-project-memberships-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (project-identifier :target-type project-id
                                  :required common-lisp:t :member-name
                                  "projectIdentifier" :http-label
                                  common-lisp:t)
                                 (sort-by :target-type sort-field-project
                                  :member-name "sortBy" :http-query "sortBy")
                                 (sort-order :target-type sort-order
                                  :member-name "sortOrder" :http-query
                                  "sortOrder")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListProjectMembershipsInput"))

(smithy/sdk/shapes:define-output list-project-memberships-output
                                 common-lisp:nil
                                 ((members :target-type project-members
                                   :required common-lisp:t :member-name
                                   "members")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListProjectMembershipsOutput"))

(smithy/sdk/shapes:define-input list-project-profiles-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (name :target-type project-profile-name
                                  :member-name "name" :http-query "name")
                                 (sort-by :target-type sort-field-project
                                  :member-name "sortBy" :http-query "sortBy")
                                 (sort-order :target-type sort-order
                                  :member-name "sortOrder" :http-query
                                  "sortOrder")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListProjectProfilesInput"))

(smithy/sdk/shapes:define-output list-project-profiles-output common-lisp:nil
                                 ((items :target-type project-profile-summaries
                                   :member-name "items")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListProjectProfilesOutput"))

(smithy/sdk/shapes:define-input list-projects-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (user-identifier :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "userIdentifier" :http-query
                                  "userIdentifier")
                                 (group-identifier :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "groupIdentifier" :http-query
                                  "groupIdentifier")
                                 (name :target-type project-name :member-name
                                  "name" :http-query "name")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListProjectsInput"))

(smithy/sdk/shapes:define-output list-projects-output common-lisp:nil
                                 ((items :target-type project-summaries
                                   :member-name "items")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListProjectsOutput"))

(smithy/sdk/shapes:define-input list-rules-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (target-type :target-type rule-target-type
                                  :required common-lisp:t :member-name
                                  "targetType" :http-label common-lisp:t)
                                 (target-identifier :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "targetIdentifier"
                                  :http-label common-lisp:t)
                                 (rule-type :target-type rule-type :member-name
                                  "ruleType" :http-query "ruleType")
                                 (action :target-type rule-action :member-name
                                  "action" :http-query "ruleAction")
                                 (project-ids :target-type project-ids
                                  :member-name "projectIds" :http-query
                                  "projectIds")
                                 (asset-types :target-type
                                  asset-type-identifiers :member-name
                                  "assetTypes" :http-query "assetTypes")
                                 (data-product :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "dataProduct" :http-query "dataProduct")
                                 (include-cascaded :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "includeCascaded" :http-query
                                  "includeCascaded")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListRulesInput"))

(smithy/sdk/shapes:define-output list-rules-output common-lisp:nil
                                 ((items :target-type rule-summaries :required
                                   common-lisp:t :member-name "items")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListRulesOutput"))

(smithy/sdk/shapes:define-input list-subscription-grants-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (environment-id :target-type environment-id
                                  :member-name "environmentId" :http-query
                                  "environmentId")
                                 (subscription-target-id :target-type
                                  subscription-target-id :member-name
                                  "subscriptionTargetId" :http-query
                                  "subscriptionTargetId")
                                 (subscribed-listing-id :target-type listing-id
                                  :member-name "subscribedListingId"
                                  :http-query "subscribedListingId")
                                 (subscription-id :target-type subscription-id
                                  :member-name "subscriptionId" :http-query
                                  "subscriptionId")
                                 (owning-project-id :target-type project-id
                                  :member-name "owningProjectId" :http-query
                                  "owningProjectId")
                                 (sort-by :target-type sort-key :member-name
                                  "sortBy" :http-query "sortBy")
                                 (sort-order :target-type sort-order
                                  :member-name "sortOrder" :http-query
                                  "sortOrder")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListSubscriptionGrantsInput"))

(smithy/sdk/shapes:define-output list-subscription-grants-output
                                 common-lisp:nil
                                 ((items :target-type subscription-grants
                                   :required common-lisp:t :member-name
                                   "items")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListSubscriptionGrantsOutput"))

(smithy/sdk/shapes:define-input list-subscription-requests-input
                                common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (status :target-type
                                  subscription-request-status :member-name
                                  "status" :http-query "status")
                                 (subscribed-listing-id :target-type listing-id
                                  :member-name "subscribedListingId"
                                  :http-query "subscribedListingId")
                                 (owning-project-id :target-type project-id
                                  :member-name "owningProjectId" :http-query
                                  "owningProjectId")
                                 (approver-project-id :target-type project-id
                                  :member-name "approverProjectId" :http-query
                                  "approverProjectId")
                                 (sort-by :target-type sort-key :member-name
                                  "sortBy" :http-query "sortBy")
                                 (sort-order :target-type sort-order
                                  :member-name "sortOrder" :http-query
                                  "sortOrder")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListSubscriptionRequestsInput"))

(smithy/sdk/shapes:define-output list-subscription-requests-output
                                 common-lisp:nil
                                 ((items :target-type subscription-requests
                                   :required common-lisp:t :member-name
                                   "items")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListSubscriptionRequestsOutput"))

(smithy/sdk/shapes:define-input list-subscription-targets-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (environment-identifier :target-type
                                  environment-id :required common-lisp:t
                                  :member-name "environmentIdentifier"
                                  :http-label common-lisp:t)
                                 (sort-by :target-type sort-key :member-name
                                  "sortBy" :http-query "sortBy")
                                 (sort-order :target-type sort-order
                                  :member-name "sortOrder" :http-query
                                  "sortOrder")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListSubscriptionTargetsInput"))

(smithy/sdk/shapes:define-output list-subscription-targets-output
                                 common-lisp:nil
                                 ((items :target-type subscription-targets
                                   :required common-lisp:t :member-name
                                   "items")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListSubscriptionTargetsOutput"))

(smithy/sdk/shapes:define-input list-subscriptions-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (subscription-request-identifier :target-type
                                  subscription-request-id :member-name
                                  "subscriptionRequestIdentifier" :http-query
                                  "subscriptionRequestIdentifier")
                                 (status :target-type subscription-status
                                  :member-name "status" :http-query "status")
                                 (subscribed-listing-id :target-type listing-id
                                  :member-name "subscribedListingId"
                                  :http-query "subscribedListingId")
                                 (owning-project-id :target-type project-id
                                  :member-name "owningProjectId" :http-query
                                  "owningProjectId")
                                 (approver-project-id :target-type project-id
                                  :member-name "approverProjectId" :http-query
                                  "approverProjectId")
                                 (sort-by :target-type sort-key :member-name
                                  "sortBy" :http-query "sortBy")
                                 (sort-order :target-type sort-order
                                  :member-name "sortOrder" :http-query
                                  "sortOrder")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListSubscriptionsInput"))

(smithy/sdk/shapes:define-output list-subscriptions-output common-lisp:nil
                                 ((items :target-type subscriptions :required
                                   common-lisp:t :member-name "items")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListSubscriptionsOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tags :member-name "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-time-series-data-points-input
                                common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (entity-identifier :target-type
                                  entity-identifier :required common-lisp:t
                                  :member-name "entityIdentifier" :http-label
                                  common-lisp:t)
                                 (entity-type :target-type
                                  time-series-entity-type :required
                                  common-lisp:t :member-name "entityType"
                                  :http-label common-lisp:t)
                                 (form-name :target-type time-series-form-name
                                  :required common-lisp:t :member-name
                                  "formName" :http-query "formName")
                                 (started-at :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "startedAt" :http-query
                                  "startedAt")
                                 (ended-at :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "endedAt" :http-query "endedAt")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListTimeSeriesDataPointsInput"))

(smithy/sdk/shapes:define-output list-time-series-data-points-output
                                 common-lisp:nil
                                 ((items :target-type
                                   time-series-data-point-summary-form-output-list
                                   :member-name "items")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListTimeSeriesDataPointsOutput"))

common-lisp:nil

(smithy/sdk/shapes:define-type listing-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union listing-item common-lisp:nil
                                ((asset-listing :target-type asset-listing
                                  :member-name "assetListing")
                                 (data-product-listing :target-type
                                  data-product-listing :member-name
                                  "dataProductListing"))
                                (:shape-name "ListingItem"))

(smithy/sdk/shapes:define-type listing-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure listing-revision common-lisp:nil
                                    ((id :target-type listing-id :required
                                      common-lisp:t :member-name "id")
                                     (revision :target-type revision :required
                                      common-lisp:t :member-name "revision"))
                                    (:shape-name "ListingRevision"))

(smithy/sdk/shapes:define-structure listing-revision-input common-lisp:nil
                                    ((identifier :target-type listing-id
                                      :required common-lisp:t :member-name
                                      "identifier")
                                     (revision :target-type revision :required
                                      common-lisp:t :member-name "revision"))
                                    (:shape-name "ListingRevisionInput"))

(smithy/sdk/shapes:define-enum listing-status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:inactive "INACTIVE"))

(smithy/sdk/shapes:define-list listing-summaries :member listing-summary)

(smithy/sdk/shapes:define-structure listing-summary common-lisp:nil
                                    ((listing-id :target-type listing-id
                                      :member-name "listingId")
                                     (listing-revision :target-type revision
                                      :member-name "listingRevision")
                                     (glossary-terms :target-type
                                      detailed-glossary-terms :member-name
                                      "glossaryTerms"))
                                    (:shape-name "ListingSummary"))

(smithy/sdk/shapes:define-structure listing-summary-item common-lisp:nil
                                    ((listing-id :target-type listing-id
                                      :member-name "listingId")
                                     (listing-revision :target-type revision
                                      :member-name "listingRevision")
                                     (glossary-terms :target-type
                                      detailed-glossary-terms :member-name
                                      "glossaryTerms"))
                                    (:shape-name "ListingSummaryItem"))

(smithy/sdk/shapes:define-list listing-summary-items :member
                               listing-summary-item)

(smithy/sdk/shapes:define-type long-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum managed-policy-type
    common-lisp:nil
  (:create-domain-unit "CREATE_DOMAIN_UNIT")
  (:override-domain-unit-owners "OVERRIDE_DOMAIN_UNIT_OWNERS")
  (:add-to-project-member-pool "ADD_TO_PROJECT_MEMBER_POOL")
  (:override-project-owners "OVERRIDE_PROJECT_OWNERS")
  (:create-glossary "CREATE_GLOSSARY")
  (:create-form-type "CREATE_FORM_TYPE")
  (:create-asset-type "CREATE_ASSET_TYPE")
  (:create-project "CREATE_PROJECT")
  (:create-environment-profile "CREATE_ENVIRONMENT_PROFILE")
  (:delegate-create-environment-profile "DELEGATE_CREATE_ENVIRONMENT_PROFILE")
  (:create-environment "CREATE_ENVIRONMENT")
  (:create-environment-from-blueprint "CREATE_ENVIRONMENT_FROM_BLUEPRINT")
  (:create-project-from-project-profile "CREATE_PROJECT_FROM_PROJECT_PROFILE")
  (:use-asset-type "USE_ASSET_TYPE"))

(smithy/sdk/shapes:define-list match-criteria :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure match-offset common-lisp:nil
                                    ((start-offset :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "startOffset")
                                     (end-offset :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "endOffset"))
                                    (:shape-name "MatchOffset"))

(smithy/sdk/shapes:define-list match-offsets :member match-offset)

(smithy/sdk/shapes:define-list match-rationale :member match-rationale-item)

(smithy/sdk/shapes:define-union match-rationale-item common-lisp:nil
                                ((text-matches :target-type text-matches
                                  :member-name "textMatches"))
                                (:shape-name "MatchRationaleItem"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results-for-list-domains
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-union member common-lisp:nil
                                ((user-identifier :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "userIdentifier")
                                 (group-identifier :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "groupIdentifier"))
                                (:shape-name "Member"))

(smithy/sdk/shapes:define-union member-details common-lisp:nil
                                ((user :target-type user-details :member-name
                                  "user")
                                 (group :target-type group-details :member-name
                                  "group"))
                                (:shape-name "MemberDetails"))

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure metadata-form-enforcement-detail
                                    common-lisp:nil
                                    ((required-metadata-forms :target-type
                                      required-metadata-form-list :member-name
                                      "requiredMetadataForms"))
                                    (:shape-name
                                     "MetadataFormEnforcementDetail"))

(smithy/sdk/shapes:define-list metadata-form-inputs :member form-input)

(smithy/sdk/shapes:define-structure metadata-form-reference common-lisp:nil
                                    ((type-identifier :target-type
                                      form-type-identifier :required
                                      common-lisp:t :member-name
                                      "typeIdentifier")
                                     (type-revision :target-type revision
                                      :required common-lisp:t :member-name
                                      "typeRevision"))
                                    (:shape-name "MetadataFormReference"))

(smithy/sdk/shapes:define-structure metadata-form-summary common-lisp:nil
                                    ((form-name :target-type form-name
                                      :member-name "formName")
                                     (type-name :target-type form-type-name
                                      :required common-lisp:t :member-name
                                      "typeName")
                                     (type-revision :target-type revision
                                      :required common-lisp:t :member-name
                                      "typeRevision"))
                                    (:shape-name "MetadataFormSummary"))

(smithy/sdk/shapes:define-list metadata-forms :member form-output)

(smithy/sdk/shapes:define-list metadata-forms-summary :member
                               metadata-form-summary)

common-lisp:nil

(smithy/sdk/shapes:define-type metadata-generation-run-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure metadata-generation-run-item
                                    common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "domainId")
                                     (id :target-type
                                      metadata-generation-run-identifier
                                      :required common-lisp:t :member-name
                                      "id")
                                     (target :target-type
                                      metadata-generation-run-target
                                      :member-name "target")
                                     (status :target-type
                                      metadata-generation-run-status
                                      :member-name "status")
                                     (type :target-type
                                      metadata-generation-run-type :member-name
                                      "type")
                                     (created-at :target-type created-at
                                      :member-name "createdAt")
                                     (created-by :target-type created-by
                                      :member-name "createdBy")
                                     (owning-project-id :target-type project-id
                                      :required common-lisp:t :member-name
                                      "owningProjectId"))
                                    (:shape-name "MetadataGenerationRunItem"))

(smithy/sdk/shapes:define-enum metadata-generation-run-status
    common-lisp:nil
  (:submitted "SUBMITTED")
  (:in-progress "IN_PROGRESS")
  (:canceled "CANCELED")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure metadata-generation-run-target
                                    common-lisp:nil
                                    ((type :target-type
                                      metadata-generation-target-type :required
                                      common-lisp:t :member-name "type")
                                     (identifier :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "identifier")
                                     (revision :target-type revision
                                      :member-name "revision"))
                                    (:shape-name "MetadataGenerationRunTarget"))

(smithy/sdk/shapes:define-enum metadata-generation-run-type
    common-lisp:nil
  (:business-descriptions "BUSINESS_DESCRIPTIONS"))

(smithy/sdk/shapes:define-list metadata-generation-runs :member
                               metadata-generation-run-item)

(smithy/sdk/shapes:define-enum metadata-generation-target-type
    common-lisp:nil
  (:asset "ASSET"))

(smithy/sdk/shapes:define-map metadata-map :key smithy/sdk/smithy-types:string
                              :value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union model common-lisp:nil
                                ((smithy :target-type smithy :member-name
                                  "smithy"))
                                (:shape-name "Model"))

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure name-identifier common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (namespace :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "namespace"))
                                    (:shape-name "NameIdentifier"))

(smithy/sdk/shapes:define-list name-identifiers :member name-identifier)

(smithy/sdk/shapes:define-structure not-equal-to-expression common-lisp:nil
                                    ((column-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "columnName")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "NotEqualToExpression"))

(smithy/sdk/shapes:define-structure not-in-expression common-lisp:nil
                                    ((column-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "columnName")
                                     (values :target-type string-list :required
                                      common-lisp:t :member-name "values"))
                                    (:shape-name "NotInExpression"))

(smithy/sdk/shapes:define-structure not-like-expression common-lisp:nil
                                    ((column-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "columnName")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "NotLikeExpression"))

(smithy/sdk/shapes:define-structure notification-output common-lisp:nil
                                    ((identifier :target-type task-id :required
                                      common-lisp:t :member-name "identifier")
                                     (domain-identifier :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "domainIdentifier")
                                     (type :target-type notification-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (topic :target-type topic :required
                                      common-lisp:t :member-name "topic")
                                     (title :target-type title :required
                                      common-lisp:t :member-name "title")
                                     (message :target-type message :required
                                      common-lisp:t :member-name "message")
                                     (status :target-type task-status
                                      :member-name "status")
                                     (action-link :target-type action-link
                                      :required common-lisp:t :member-name
                                      "actionLink")
                                     (creation-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "creationTimestamp")
                                     (last-updated-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastUpdatedTimestamp")
                                     (metadata :target-type metadata-map
                                      :member-name "metadata"))
                                    (:shape-name "NotificationOutput"))

(smithy/sdk/shapes:define-structure notification-resource common-lisp:nil
                                    ((type :target-type
                                      notification-resource-type :required
                                      common-lisp:t :member-name "type")
                                     (id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name"))
                                    (:shape-name "NotificationResource"))

(smithy/sdk/shapes:define-enum notification-resource-type
    common-lisp:nil
  (:project "PROJECT"))

(smithy/sdk/shapes:define-enum notification-role
    common-lisp:nil
  (:project-owner "PROJECT_OWNER")
  (:project-contributor "PROJECT_CONTRIBUTOR")
  (:project-viewer "PROJECT_VIEWER")
  (:domain-owner "DOMAIN_OWNER")
  (:project-subscriber "PROJECT_SUBSCRIBER"))

(smithy/sdk/shapes:define-list notification-subjects :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum notification-type
    common-lisp:nil
  (:task "TASK")
  (:event "EVENT"))

(smithy/sdk/shapes:define-list notifications-list :member notification-output)

(smithy/sdk/shapes:define-structure oauth2client-application common-lisp:nil
                                    ((user-managed-client-application-client-id
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "userManagedClientApplicationClientId")
                                     (a-wsmanaged-client-application-reference
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "aWSManagedClientApplicationReference"))
                                    (:shape-name "OAuth2ClientApplication"))

(smithy/sdk/shapes:define-enum oauth2grant-type
    common-lisp:nil
  (:authorization-code "AUTHORIZATION_CODE")
  (:client-credentials "CLIENT_CREDENTIALS")
  (:jwt-bearer "JWT_BEARER"))

(smithy/sdk/shapes:define-structure oauth2properties common-lisp:nil
                                    ((o-auth2grant-type :target-type
                                      oauth2grant-type :member-name
                                      "oAuth2GrantType")
                                     (o-auth2client-application :target-type
                                      oauth2client-application :member-name
                                      "oAuth2ClientApplication")
                                     (token-url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "tokenUrl")
                                     (token-url-parameters-map :target-type
                                      token-url-parameters-map :member-name
                                      "tokenUrlParametersMap")
                                     (authorization-code-properties
                                      :target-type
                                      authorization-code-properties
                                      :member-name
                                      "authorizationCodeProperties")
                                     (o-auth2credentials :target-type
                                      glue-oauth2credentials :member-name
                                      "oAuth2Credentials"))
                                    (:shape-name "OAuth2Properties"))

(smithy/sdk/shapes:define-structure open-lineage-run-event-summary
                                    common-lisp:nil
                                    ((event-type :target-type
                                      open-lineage-run-state :member-name
                                      "eventType")
                                     (run-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "runId")
                                     (job :target-type name-identifier
                                      :member-name "job")
                                     (inputs :target-type name-identifiers
                                      :member-name "inputs")
                                     (outputs :target-type name-identifiers
                                      :member-name "outputs"))
                                    (:shape-name "OpenLineageRunEventSummary"))

(smithy/sdk/shapes:define-enum open-lineage-run-state
    common-lisp:nil
  (:start "START")
  (:running "RUNNING")
  (:complete "COMPLETE")
  (:abort "ABORT")
  (:fail "FAIL")
  (:other "OTHER"))

(smithy/sdk/shapes:define-enum overall-deployment-status
    common-lisp:nil
  (:pending-deployment "PENDING_DEPLOYMENT")
  (:in-progress "IN_PROGRESS")
  (:successful "SUCCESSFUL")
  (:failed-validation "FAILED_VALIDATION")
  (:failed-deployment "FAILED_DEPLOYMENT"))

(smithy/sdk/shapes:define-structure
 override-domain-unit-owners-policy-grant-detail common-lisp:nil
 ((include-child-domain-units :target-type smithy/sdk/smithy-types:boolean
   :member-name "includeChildDomainUnits"))
 (:shape-name "OverrideDomainUnitOwnersPolicyGrantDetail"))

(smithy/sdk/shapes:define-structure override-project-owners-policy-grant-detail
                                    common-lisp:nil
                                    ((include-child-domain-units :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "includeChildDomainUnits"))
                                    (:shape-name
                                     "OverrideProjectOwnersPolicyGrantDetail"))

(smithy/sdk/shapes:define-structure owner-group-properties common-lisp:nil
                                    ((group-identifier :target-type
                                      group-identifier :required common-lisp:t
                                      :member-name "groupIdentifier"))
                                    (:shape-name "OwnerGroupProperties"))

(smithy/sdk/shapes:define-structure owner-group-properties-output
                                    common-lisp:nil
                                    ((group-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "groupId"))
                                    (:shape-name "OwnerGroupPropertiesOutput"))

(smithy/sdk/shapes:define-union owner-properties common-lisp:nil
                                ((user :target-type owner-user-properties
                                  :member-name "user")
                                 (group :target-type owner-group-properties
                                  :member-name "group"))
                                (:shape-name "OwnerProperties"))

(smithy/sdk/shapes:define-union owner-properties-output common-lisp:nil
                                ((user :target-type
                                  owner-user-properties-output :member-name
                                  "user")
                                 (group :target-type
                                  owner-group-properties-output :member-name
                                  "group"))
                                (:shape-name "OwnerPropertiesOutput"))

(smithy/sdk/shapes:define-structure owner-user-properties common-lisp:nil
                                    ((user-identifier :target-type
                                      user-identifier :required common-lisp:t
                                      :member-name "userIdentifier"))
                                    (:shape-name "OwnerUserProperties"))

(smithy/sdk/shapes:define-structure owner-user-properties-output
                                    common-lisp:nil
                                    ((user-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "userId"))
                                    (:shape-name "OwnerUserPropertiesOutput"))

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type parameter-store-path
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type password smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure physical-connection-requirements
                                    common-lisp:nil
                                    ((subnet-id :target-type subnet-id
                                      :member-name "subnetId")
                                     (subnet-id-list :target-type
                                      subnet-id-list :member-name
                                      "subnetIdList")
                                     (security-group-id-list :target-type
                                      security-group-id-list :member-name
                                      "securityGroupIdList")
                                     (availability-zone :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "availabilityZone"))
                                    (:shape-name
                                     "PhysicalConnectionRequirements"))

(smithy/sdk/shapes:define-structure physical-endpoint common-lisp:nil
                                    ((aws-location :target-type aws-location
                                      :member-name "awsLocation")
                                     (glue-connection-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "glueConnectionName")
                                     (glue-connection :target-type
                                      glue-connection :member-name
                                      "glueConnection")
                                     (host :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "host")
                                     (port :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "port")
                                     (protocol :target-type protocol
                                      :member-name "protocol")
                                     (stage :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "stage"))
                                    (:shape-name "PhysicalEndpoint"))

(smithy/sdk/shapes:define-list physical-endpoints :member physical-endpoint)

(smithy/sdk/shapes:define-type policy-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union policy-grant-detail common-lisp:nil
                                ((create-domain-unit :target-type
                                  create-domain-unit-policy-grant-detail
                                  :member-name "createDomainUnit")
                                 (override-domain-unit-owners :target-type
                                  override-domain-unit-owners-policy-grant-detail
                                  :member-name "overrideDomainUnitOwners")
                                 (add-to-project-member-pool :target-type
                                  add-to-project-member-pool-policy-grant-detail
                                  :member-name "addToProjectMemberPool")
                                 (override-project-owners :target-type
                                  override-project-owners-policy-grant-detail
                                  :member-name "overrideProjectOwners")
                                 (create-glossary :target-type
                                  create-glossary-policy-grant-detail
                                  :member-name "createGlossary")
                                 (create-form-type :target-type
                                  create-form-type-policy-grant-detail
                                  :member-name "createFormType")
                                 (create-asset-type :target-type
                                  create-asset-type-policy-grant-detail
                                  :member-name "createAssetType")
                                 (create-project :target-type
                                  create-project-policy-grant-detail
                                  :member-name "createProject")
                                 (create-environment-profile :target-type
                                  create-environment-profile-policy-grant-detail
                                  :member-name "createEnvironmentProfile")
                                 (delegate-create-environment-profile
                                  :target-type unit :member-name
                                  "delegateCreateEnvironmentProfile")
                                 (create-environment :target-type unit
                                  :member-name "createEnvironment")
                                 (create-environment-from-blueprint
                                  :target-type unit :member-name
                                  "createEnvironmentFromBlueprint")
                                 (create-project-from-project-profile
                                  :target-type
                                  create-project-from-project-profile-policy-grant-detail
                                  :member-name
                                  "createProjectFromProjectProfile")
                                 (use-asset-type :target-type
                                  use-asset-type-policy-grant-detail
                                  :member-name "useAssetType"))
                                (:shape-name "PolicyGrantDetail"))

(smithy/sdk/shapes:define-list policy-grant-list :member policy-grant-member)

(smithy/sdk/shapes:define-structure policy-grant-member common-lisp:nil
                                    ((principal :target-type
                                      policy-grant-principal :member-name
                                      "principal")
                                     (detail :target-type policy-grant-detail
                                      :member-name "detail")
                                     (created-at :target-type created-at
                                      :member-name "createdAt")
                                     (created-by :target-type created-by
                                      :member-name "createdBy"))
                                    (:shape-name "PolicyGrantMember"))

(smithy/sdk/shapes:define-union policy-grant-principal common-lisp:nil
                                ((user :target-type user-policy-grant-principal
                                  :member-name "user")
                                 (group :target-type
                                  group-policy-grant-principal :member-name
                                  "group")
                                 (project :target-type
                                  project-policy-grant-principal :member-name
                                  "project")
                                 (domain-unit :target-type
                                  domain-unit-policy-grant-principal
                                  :member-name "domainUnit"))
                                (:shape-name "PolicyGrantPrincipal"))

(smithy/sdk/shapes:define-input post-lineage-event-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (event :target-type lineage-event :required
                                  common-lisp:t :member-name "event"
                                  :http-payload common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-header
                                  "Client-Token"))
                                (:shape-name "PostLineageEventInput"))

(smithy/sdk/shapes:define-output post-lineage-event-output common-lisp:nil
                                 ((id :target-type lineage-event-identifier
                                   :member-name "id")
                                  (domain-id :target-type domain-id
                                   :member-name "domainId"))
                                 (:shape-name "PostLineageEventOutput"))

(smithy/sdk/shapes:define-input post-time-series-data-points-input
                                common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (entity-identifier :target-type
                                  entity-identifier :required common-lisp:t
                                  :member-name "entityIdentifier" :http-label
                                  common-lisp:t)
                                 (entity-type :target-type
                                  time-series-entity-type :required
                                  common-lisp:t :member-name "entityType"
                                  :http-label common-lisp:t)
                                 (forms :target-type
                                  time-series-data-point-form-input-list
                                  :required common-lisp:t :member-name "forms")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "PostTimeSeriesDataPointsInput"))

(smithy/sdk/shapes:define-output post-time-series-data-points-output
                                 common-lisp:nil
                                 ((domain-id :target-type domain-id
                                   :member-name "domainId")
                                  (entity-id :target-type entity-id
                                   :member-name "entityId")
                                  (entity-type :target-type
                                   time-series-entity-type :member-name
                                   "entityType")
                                  (forms :target-type
                                   time-series-data-point-form-output-list
                                   :member-name "forms"))
                                 (:shape-name "PostTimeSeriesDataPointsOutput"))

(smithy/sdk/shapes:define-list prediction-choices :member
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure prediction-configuration common-lisp:nil
                                    ((business-name-generation :target-type
                                      business-name-generation-configuration
                                      :member-name "businessNameGeneration"))
                                    (:shape-name "PredictionConfiguration"))

(smithy/sdk/shapes:define-structure project-deletion-error common-lisp:nil
                                    ((code :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "code")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "message"))
                                    (:shape-name "ProjectDeletionError"))

(smithy/sdk/shapes:define-enum project-designation
    common-lisp:nil
  (:owner "OWNER")
  (:contributor "CONTRIBUTOR")
  (:project-catalog-steward "PROJECT_CATALOG_STEWARD"))

(smithy/sdk/shapes:define-union project-grant-filter common-lisp:nil
                                ((domain-unit-filter :target-type
                                  domain-unit-filter-for-project :member-name
                                  "domainUnitFilter"))
                                (:shape-name "ProjectGrantFilter"))

(smithy/sdk/shapes:define-type project-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list project-ids :member project-id)

(smithy/sdk/shapes:define-structure project-member common-lisp:nil
                                    ((member-details :target-type
                                      member-details :required common-lisp:t
                                      :member-name "memberDetails")
                                     (designation :target-type user-designation
                                      :required common-lisp:t :member-name
                                      "designation"))
                                    (:shape-name "ProjectMember"))

(smithy/sdk/shapes:define-list project-members :member project-member)

(smithy/sdk/shapes:define-type project-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure project-policy-grant-principal
                                    common-lisp:nil
                                    ((project-designation :target-type
                                      project-designation :required
                                      common-lisp:t :member-name
                                      "projectDesignation")
                                     (project-identifier :target-type
                                      project-id :member-name
                                      "projectIdentifier")
                                     (project-grant-filter :target-type
                                      project-grant-filter :member-name
                                      "projectGrantFilter"))
                                    (:shape-name "ProjectPolicyGrantPrincipal"))

(smithy/sdk/shapes:define-type project-profile-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list project-profile-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type project-profile-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list project-profile-summaries :member
                               project-profile-summary)

(smithy/sdk/shapes:define-structure project-profile-summary common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "domainId")
                                     (id :target-type project-profile-id
                                      :required common-lisp:t :member-name
                                      "id")
                                     (name :target-type project-profile-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (status :target-type status :member-name
                                      "status")
                                     (created-by :target-type created-by
                                      :required common-lisp:t :member-name
                                      "createdBy")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt"
                                      :timestamp-format "date-time")
                                     (last-updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "lastUpdatedAt"
                                      :timestamp-format "date-time")
                                     (domain-unit-id :target-type
                                      domain-unit-id :member-name
                                      "domainUnitId"))
                                    (:shape-name "ProjectProfileSummary"))

(smithy/sdk/shapes:define-enum project-status
    common-lisp:nil
  (:active "ACTIVE")
  (:deleting "DELETING")
  (:delete-failed "DELETE_FAILED")
  (:updating "UPDATING")
  (:update-failed "UPDATE_FAILED"))

(smithy/sdk/shapes:define-list project-summaries :member project-summary)

(smithy/sdk/shapes:define-structure project-summary common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "domainId")
                                     (id :target-type project-id :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type project-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (project-status :target-type
                                      project-status :member-name
                                      "projectStatus")
                                     (failure-reasons :target-type
                                      failure-reasons :member-name
                                      "failureReasons")
                                     (created-by :target-type created-by
                                      :required common-lisp:t :member-name
                                      "createdBy")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt"
                                      :timestamp-format "date-time")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "updatedAt"
                                      :timestamp-format "date-time")
                                     (domain-unit-id :target-type
                                      domain-unit-id :member-name
                                      "domainUnitId"))
                                    (:shape-name "ProjectSummary"))

(smithy/sdk/shapes:define-structure projects-for-rule common-lisp:nil
                                    ((selection-mode :target-type
                                      rule-scope-selection-mode :required
                                      common-lisp:t :member-name
                                      "selectionMode")
                                     (specific-projects :target-type
                                      rule-project-identifier-list :member-name
                                      "specificProjects"))
                                    (:shape-name "ProjectsForRule"))

(smithy/sdk/shapes:define-map property-map :key smithy/sdk/smithy-types:string
                              :value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum protocol
    common-lisp:nil
  (:athena "ATHENA")
  (:glue-interactive-session "GLUE_INTERACTIVE_SESSION")
  (:https "HTTPS")
  (:jdbc "JDBC")
  (:livy "LIVY")
  (:odbc "ODBC")
  (:prism "PRISM"))

(smithy/sdk/shapes:define-union provisioning-configuration common-lisp:nil
                                ((lake-formation-configuration :target-type
                                  lake-formation-configuration :member-name
                                  "lakeFormationConfiguration"))
                                (:shape-name "ProvisioningConfiguration"))

(smithy/sdk/shapes:define-list provisioning-configuration-list :member
                               provisioning-configuration)

(smithy/sdk/shapes:define-union provisioning-properties common-lisp:nil
                                ((cloud-formation :target-type
                                  cloud-formation-properties :member-name
                                  "cloudFormation"))
                                (:shape-name "ProvisioningProperties"))

(smithy/sdk/shapes:define-input put-environment-blueprint-configuration-input
                                common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (environment-blueprint-identifier :target-type
                                  environment-blueprint-id :required
                                  common-lisp:t :member-name
                                  "environmentBlueprintIdentifier" :http-label
                                  common-lisp:t)
                                 (provisioning-role-arn :target-type role-arn
                                  :member-name "provisioningRoleArn")
                                 (manage-access-role-arn :target-type role-arn
                                  :member-name "manageAccessRoleArn")
                                 (environment-role-permission-boundary
                                  :target-type policy-arn :member-name
                                  "environmentRolePermissionBoundary")
                                 (enabled-regions :target-type
                                  enabled-region-list :required common-lisp:t
                                  :member-name "enabledRegions")
                                 (regional-parameters :target-type
                                  regional-parameter-map :member-name
                                  "regionalParameters")
                                 (provisioning-configurations :target-type
                                  provisioning-configuration-list :member-name
                                  "provisioningConfigurations"))
                                (:shape-name
                                 "PutEnvironmentBlueprintConfigurationInput"))

(smithy/sdk/shapes:define-output put-environment-blueprint-configuration-output
                                 common-lisp:nil
                                 ((domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (environment-blueprint-id :target-type
                                   environment-blueprint-id :required
                                   common-lisp:t :member-name
                                   "environmentBlueprintId")
                                  (provisioning-role-arn :target-type role-arn
                                   :member-name "provisioningRoleArn")
                                  (environment-role-permission-boundary
                                   :target-type policy-arn :member-name
                                   "environmentRolePermissionBoundary")
                                  (manage-access-role-arn :target-type role-arn
                                   :member-name "manageAccessRoleArn")
                                  (enabled-regions :target-type
                                   enabled-region-list :member-name
                                   "enabledRegions")
                                  (regional-parameters :target-type
                                   regional-parameter-map :member-name
                                   "regionalParameters")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "createdAt" :timestamp-format
                                   "date-time")
                                  (updated-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "updatedAt" :timestamp-format
                                   "date-time")
                                  (provisioning-configurations :target-type
                                   provisioning-configuration-list :member-name
                                   "provisioningConfigurations"))
                                 (:shape-name
                                  "PutEnvironmentBlueprintConfigurationOutput"))

(smithy/sdk/shapes:define-structure recommendation-configuration
                                    common-lisp:nil
                                    ((enable-business-name-generation
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "enableBusinessNameGeneration"))
                                    (:shape-name "RecommendationConfiguration"))

(smithy/sdk/shapes:define-structure redshift-cluster-storage common-lisp:nil
                                    ((cluster-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "clusterName"))
                                    (:shape-name "RedshiftClusterStorage"))

(smithy/sdk/shapes:define-structure redshift-credential-configuration
                                    common-lisp:nil
                                    ((secret-manager-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "secretManagerArn"))
                                    (:shape-name
                                     "RedshiftCredentialConfiguration"))

(smithy/sdk/shapes:define-union redshift-credentials common-lisp:nil
                                ((secret-arn :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "secretArn")
                                 (username-password :target-type
                                  username-password :member-name
                                  "usernamePassword"))
                                (:shape-name "RedshiftCredentials"))

(smithy/sdk/shapes:define-structure redshift-lineage-sync-configuration-input
                                    common-lisp:nil
                                    ((enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "enabled")
                                     (schedule :target-type
                                      lineage-sync-schedule :member-name
                                      "schedule"))
                                    (:shape-name
                                     "RedshiftLineageSyncConfigurationInput"))

(smithy/sdk/shapes:define-structure redshift-lineage-sync-configuration-output
                                    common-lisp:nil
                                    ((lineage-job-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "lineageJobId")
                                     (enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "enabled")
                                     (schedule :target-type
                                      lineage-sync-schedule :member-name
                                      "schedule"))
                                    (:shape-name
                                     "RedshiftLineageSyncConfigurationOutput"))

(smithy/sdk/shapes:define-structure redshift-properties-input common-lisp:nil
                                    ((storage :target-type
                                      redshift-storage-properties :member-name
                                      "storage")
                                     (database-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "databaseName")
                                     (host :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "host")
                                     (port :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "port")
                                     (credentials :target-type
                                      redshift-credentials :member-name
                                      "credentials")
                                     (lineage-sync :target-type
                                      redshift-lineage-sync-configuration-input
                                      :member-name "lineageSync"))
                                    (:shape-name "RedshiftPropertiesInput"))

(smithy/sdk/shapes:define-structure redshift-properties-output common-lisp:nil
                                    ((storage :target-type
                                      redshift-storage-properties :member-name
                                      "storage")
                                     (credentials :target-type
                                      redshift-credentials :member-name
                                      "credentials")
                                     (is-provisioned-secret :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isProvisionedSecret")
                                     (jdbc-iam-url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "jdbcIamUrl")
                                     (jdbc-url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "jdbcUrl")
                                     (redshift-temp-dir :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "redshiftTempDir")
                                     (lineage-sync :target-type
                                      redshift-lineage-sync-configuration-output
                                      :member-name "lineageSync")
                                     (status :target-type connection-status
                                      :member-name "status")
                                     (database-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "databaseName"))
                                    (:shape-name "RedshiftPropertiesOutput"))

(smithy/sdk/shapes:define-structure redshift-properties-patch common-lisp:nil
                                    ((storage :target-type
                                      redshift-storage-properties :member-name
                                      "storage")
                                     (database-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "databaseName")
                                     (host :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "host")
                                     (port :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "port")
                                     (credentials :target-type
                                      redshift-credentials :member-name
                                      "credentials")
                                     (lineage-sync :target-type
                                      redshift-lineage-sync-configuration-input
                                      :member-name "lineageSync"))
                                    (:shape-name "RedshiftPropertiesPatch"))

(smithy/sdk/shapes:define-structure redshift-run-configuration-input
                                    common-lisp:nil
                                    ((data-access-role :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "dataAccessRole")
                                     (relational-filter-configurations
                                      :target-type
                                      relational-filter-configurations
                                      :required common-lisp:t :member-name
                                      "relationalFilterConfigurations")
                                     (redshift-credential-configuration
                                      :target-type
                                      redshift-credential-configuration
                                      :member-name
                                      "redshiftCredentialConfiguration")
                                     (redshift-storage :target-type
                                      redshift-storage :member-name
                                      "redshiftStorage"))
                                    (:shape-name
                                     "RedshiftRunConfigurationInput"))

(smithy/sdk/shapes:define-structure redshift-run-configuration-output
                                    common-lisp:nil
                                    ((account-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "accountId")
                                     (region :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "region")
                                     (data-access-role :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "dataAccessRole")
                                     (relational-filter-configurations
                                      :target-type
                                      relational-filter-configurations
                                      :required common-lisp:t :member-name
                                      "relationalFilterConfigurations")
                                     (redshift-credential-configuration
                                      :target-type
                                      redshift-credential-configuration
                                      :member-name
                                      "redshiftCredentialConfiguration")
                                     (redshift-storage :target-type
                                      redshift-storage :required common-lisp:t
                                      :member-name "redshiftStorage"))
                                    (:shape-name
                                     "RedshiftRunConfigurationOutput"))

(smithy/sdk/shapes:define-structure redshift-self-grant-status-output
                                    common-lisp:nil
                                    ((self-grant-status-details :target-type
                                      self-grant-status-details :required
                                      common-lisp:t :member-name
                                      "selfGrantStatusDetails"))
                                    (:shape-name
                                     "RedshiftSelfGrantStatusOutput"))

(smithy/sdk/shapes:define-structure redshift-serverless-storage common-lisp:nil
                                    ((workgroup-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "workgroupName"))
                                    (:shape-name "RedshiftServerlessStorage"))

(smithy/sdk/shapes:define-union redshift-storage common-lisp:nil
                                ((redshift-cluster-source :target-type
                                  redshift-cluster-storage :member-name
                                  "redshiftClusterSource")
                                 (redshift-serverless-source :target-type
                                  redshift-serverless-storage :member-name
                                  "redshiftServerlessSource"))
                                (:shape-name "RedshiftStorage"))

(smithy/sdk/shapes:define-union redshift-storage-properties common-lisp:nil
                                ((cluster-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "clusterName")
                                 (workgroup-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "workgroupName"))
                                (:shape-name "RedshiftStorageProperties"))

(smithy/sdk/shapes:define-union region common-lisp:nil
                                ((region-name :target-type region-name
                                  :member-name "regionName")
                                 (region-name-path :target-type
                                  parameter-store-path :member-name
                                  "regionNamePath"))
                                (:shape-name "Region"))

(smithy/sdk/shapes:define-type region-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map regional-parameter :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map regional-parameter-map :key region-name :value
                              regional-parameter)

(smithy/sdk/shapes:define-structure reject-choice common-lisp:nil
                                    ((prediction-target :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "predictionTarget")
                                     (prediction-choices :target-type
                                      prediction-choices :member-name
                                      "predictionChoices"))
                                    (:shape-name "RejectChoice"))

(smithy/sdk/shapes:define-list reject-choices :member reject-choice)

(smithy/sdk/shapes:define-input reject-predictions-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type asset-identifier
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t)
                                 (revision :target-type revision :member-name
                                  "revision" :http-query "revision")
                                 (reject-rule :target-type reject-rule
                                  :member-name "rejectRule")
                                 (reject-choices :target-type reject-choices
                                  :member-name "rejectChoices")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "RejectPredictionsInput"))

(smithy/sdk/shapes:define-output reject-predictions-output common-lisp:nil
                                 ((domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (asset-id :target-type asset-id :required
                                   common-lisp:t :member-name "assetId")
                                  (asset-revision :target-type revision
                                   :required common-lisp:t :member-name
                                   "assetRevision"))
                                 (:shape-name "RejectPredictionsOutput"))

(smithy/sdk/shapes:define-structure reject-rule common-lisp:nil
                                    ((rule :target-type reject-rule-behavior
                                      :member-name "rule")
                                     (threshold :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "threshold"))
                                    (:shape-name "RejectRule"))

(smithy/sdk/shapes:define-enum reject-rule-behavior
    common-lisp:nil
  (:all "ALL")
  (:none "NONE"))

(smithy/sdk/shapes:define-input reject-subscription-request-input
                                common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type
                                  subscription-request-id :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t)
                                 (decision-comment :target-type
                                  decision-comment :member-name
                                  "decisionComment"))
                                (:shape-name "RejectSubscriptionRequestInput"))

(smithy/sdk/shapes:define-output reject-subscription-request-output
                                 common-lisp:nil
                                 ((id :target-type subscription-request-id
                                   :required common-lisp:t :member-name "id")
                                  (created-by :target-type created-by :required
                                   common-lisp:t :member-name "createdBy")
                                  (updated-by :target-type updated-by
                                   :member-name "updatedBy")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (status :target-type
                                   subscription-request-status :required
                                   common-lisp:t :member-name "status")
                                  (created-at :target-type created-at :required
                                   common-lisp:t :member-name "createdAt")
                                  (updated-at :target-type updated-at :required
                                   common-lisp:t :member-name "updatedAt")
                                  (request-reason :target-type request-reason
                                   :required common-lisp:t :member-name
                                   "requestReason")
                                  (subscribed-principals :target-type
                                   subscribed-principals :required
                                   common-lisp:t :member-name
                                   "subscribedPrincipals")
                                  (subscribed-listings :target-type
                                   subscribed-listings :required common-lisp:t
                                   :member-name "subscribedListings")
                                  (reviewer-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "reviewerId")
                                  (decision-comment :target-type
                                   decision-comment :member-name
                                   "decisionComment")
                                  (existing-subscription-id :target-type
                                   subscription-id :member-name
                                   "existingSubscriptionId")
                                  (metadata-forms :target-type metadata-forms
                                   :member-name "metadataForms"))
                                 (:shape-name
                                  "RejectSubscriptionRequestOutput"))

(smithy/sdk/shapes:define-structure relational-filter-configuration
                                    common-lisp:nil
                                    ((database-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "databaseName")
                                     (schema-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "schemaName")
                                     (filter-expressions :target-type
                                      filter-expressions :member-name
                                      "filterExpressions"))
                                    (:shape-name
                                     "RelationalFilterConfiguration"))

(smithy/sdk/shapes:define-list relational-filter-configurations :member
                               relational-filter-configuration)

(smithy/sdk/shapes:define-input remove-entity-owner-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (entity-type :target-type
                                  data-zone-entity-type :required common-lisp:t
                                  :member-name "entityType" :http-label
                                  common-lisp:t)
                                 (entity-identifier :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "entityIdentifier"
                                  :http-label common-lisp:t)
                                 (owner :target-type owner-properties :required
                                  common-lisp:t :member-name "owner")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "RemoveEntityOwnerInput"))

(smithy/sdk/shapes:define-output remove-entity-owner-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "RemoveEntityOwnerOutput"))

(smithy/sdk/shapes:define-input remove-policy-grant-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (entity-type :target-type target-entity-type
                                  :required common-lisp:t :member-name
                                  "entityType" :http-label common-lisp:t)
                                 (entity-identifier :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "entityIdentifier"
                                  :http-label common-lisp:t)
                                 (policy-type :target-type managed-policy-type
                                  :required common-lisp:t :member-name
                                  "policyType")
                                 (principal :target-type policy-grant-principal
                                  :required common-lisp:t :member-name
                                  "principal")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "RemovePolicyGrantInput"))

(smithy/sdk/shapes:define-output remove-policy-grant-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "RemovePolicyGrantOutput"))

(smithy/sdk/shapes:define-type request-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list required-metadata-form-list :member
                               metadata-form-reference)

(smithy/sdk/shapes:define-structure resource common-lisp:nil
                                    ((provider :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "provider")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "value")
                                     (type :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "type"))
                                    (:shape-name "Resource"))

(smithy/sdk/shapes:define-list resource-list :member resource)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type revision smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type revision-input smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input revoke-subscription-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type subscription-id
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t)
                                 (retain-permissions :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "retainPermissions"))
                                (:shape-name "RevokeSubscriptionInput"))

(smithy/sdk/shapes:define-output revoke-subscription-output common-lisp:nil
                                 ((id :target-type subscription-id :required
                                   common-lisp:t :member-name "id")
                                  (created-by :target-type created-by :required
                                   common-lisp:t :member-name "createdBy")
                                  (updated-by :target-type updated-by
                                   :member-name "updatedBy")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (status :target-type subscription-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (created-at :target-type created-at :required
                                   common-lisp:t :member-name "createdAt")
                                  (updated-at :target-type updated-at :required
                                   common-lisp:t :member-name "updatedAt")
                                  (subscribed-principal :target-type
                                   subscribed-principal :required common-lisp:t
                                   :member-name "subscribedPrincipal")
                                  (subscribed-listing :target-type
                                   subscribed-listing :required common-lisp:t
                                   :member-name "subscribedListing")
                                  (subscription-request-id :target-type
                                   subscription-request-id :member-name
                                   "subscriptionRequestId")
                                  (retain-permissions :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "retainPermissions"))
                                 (:shape-name "RevokeSubscriptionOutput"))

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union row-filter common-lisp:nil
                                ((expression :target-type row-filter-expression
                                  :member-name "expression")
                                 (and :target-type row-filter-list :member-name
                                  "and")
                                 (or :target-type row-filter-list :member-name
                                  "or"))
                                (:shape-name "RowFilter"))

(smithy/sdk/shapes:define-structure row-filter-configuration common-lisp:nil
                                    ((row-filter :target-type row-filter
                                      :required common-lisp:t :member-name
                                      "rowFilter")
                                     (sensitive :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "sensitive"))
                                    (:shape-name "RowFilterConfiguration"))

(smithy/sdk/shapes:define-union row-filter-expression common-lisp:nil
                                ((equal-to :target-type equal-to-expression
                                  :member-name "equalTo")
                                 (not-equal-to :target-type
                                  not-equal-to-expression :member-name
                                  "notEqualTo")
                                 (greater-than :target-type
                                  greater-than-expression :member-name
                                  "greaterThan")
                                 (less-than :target-type less-than-expression
                                  :member-name "lessThan")
                                 (greater-than-or-equal-to :target-type
                                  greater-than-or-equal-to-expression
                                  :member-name "greaterThanOrEqualTo")
                                 (less-than-or-equal-to :target-type
                                  less-than-or-equal-to-expression :member-name
                                  "lessThanOrEqualTo")
                                 (is-null :target-type is-null-expression
                                  :member-name "isNull")
                                 (is-not-null :target-type
                                  is-not-null-expression :member-name
                                  "isNotNull")
                                 (in :target-type in-expression :member-name
                                  "in")
                                 (not-in :target-type not-in-expression
                                  :member-name "notIn")
                                 (like :target-type like-expression
                                  :member-name "like")
                                 (not-like :target-type not-like-expression
                                  :member-name "notLike"))
                                (:shape-name "RowFilterExpression"))

(smithy/sdk/shapes:define-list row-filter-list :member row-filter)

common-lisp:nil

(smithy/sdk/shapes:define-enum rule-action
    common-lisp:nil
  (:create-listing-change-set "CREATE_LISTING_CHANGE_SET")
  (:create-subscription-request "CREATE_SUBSCRIPTION_REQUEST"))

(smithy/sdk/shapes:define-list rule-asset-type-list :member
                               asset-type-identifier)

(smithy/sdk/shapes:define-union rule-detail common-lisp:nil
                                ((metadata-form-enforcement-detail :target-type
                                  metadata-form-enforcement-detail :member-name
                                  "metadataFormEnforcementDetail"))
                                (:shape-name "RuleDetail"))

(smithy/sdk/shapes:define-type rule-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rule-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list rule-project-identifier-list :member project-id)

(smithy/sdk/shapes:define-structure rule-scope common-lisp:nil
                                    ((asset-type :target-type
                                      asset-types-for-rule :member-name
                                      "assetType")
                                     (data-product :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "dataProduct")
                                     (project :target-type projects-for-rule
                                      :member-name "project"))
                                    (:shape-name "RuleScope"))

(smithy/sdk/shapes:define-enum rule-scope-selection-mode
    common-lisp:nil
  (:all "ALL")
  (:specific "SPECIFIC"))

(smithy/sdk/shapes:define-list rule-summaries :member rule-summary)

(smithy/sdk/shapes:define-structure rule-summary common-lisp:nil
                                    ((identifier :target-type rule-id
                                      :member-name "identifier")
                                     (revision :target-type revision
                                      :member-name "revision")
                                     (rule-type :target-type rule-type
                                      :member-name "ruleType")
                                     (name :target-type rule-name :member-name
                                      "name")
                                     (target-type :target-type rule-target-type
                                      :member-name "targetType")
                                     (target :target-type rule-target
                                      :member-name "target")
                                     (action :target-type rule-action
                                      :member-name "action")
                                     (scope :target-type rule-scope
                                      :member-name "scope")
                                     (updated-at :target-type updated-at
                                      :member-name "updatedAt")
                                     (last-updated-by :target-type updated-by
                                      :member-name "lastUpdatedBy"))
                                    (:shape-name "RuleSummary"))

(smithy/sdk/shapes:define-union rule-target common-lisp:nil
                                ((domain-unit-target :target-type
                                  domain-unit-target :member-name
                                  "domainUnitTarget"))
                                (:shape-name "RuleTarget"))

(smithy/sdk/shapes:define-enum rule-target-type
    common-lisp:nil
  (:domain-unit "DOMAIN_UNIT"))

(smithy/sdk/shapes:define-enum rule-type
    common-lisp:nil
  (:metadata-form-enforcement "METADATA_FORM_ENFORCEMENT"))

(smithy/sdk/shapes:define-type run-identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure run-statistics-for-assets common-lisp:nil
                                    ((added :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "added")
                                     (updated :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "updated")
                                     (unchanged :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "unchanged")
                                     (skipped :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "skipped")
                                     (failed :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "failed"))
                                    (:shape-name "RunStatisticsForAssets"))

(smithy/sdk/shapes:define-type s3access-grant-location-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3location smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list s3location-list :member s3location)

(smithy/sdk/shapes:define-structure s3properties-input common-lisp:nil
                                    ((s3uri :target-type s3uri :required
                                      common-lisp:t :member-name "s3Uri")
                                     (s3access-grant-location-id :target-type
                                      s3access-grant-location-id :member-name
                                      "s3AccessGrantLocationId"))
                                    (:shape-name "S3PropertiesInput"))

(smithy/sdk/shapes:define-structure s3properties-output common-lisp:nil
                                    ((s3uri :target-type s3uri :required
                                      common-lisp:t :member-name "s3Uri")
                                     (s3access-grant-location-id :target-type
                                      s3access-grant-location-id :member-name
                                      "s3AccessGrantLocationId")
                                     (status :target-type connection-status
                                      :member-name "status")
                                     (error-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "errorMessage"))
                                    (:shape-name "S3PropertiesOutput"))

(smithy/sdk/shapes:define-structure s3properties-patch common-lisp:nil
                                    ((s3uri :target-type s3uri :required
                                      common-lisp:t :member-name "s3Uri")
                                     (s3access-grant-location-id :target-type
                                      s3access-grant-location-id :member-name
                                      "s3AccessGrantLocationId"))
                                    (:shape-name "S3PropertiesPatch"))

(smithy/sdk/shapes:define-type s3uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sage-maker-asset-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sage-maker-resource-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sage-maker-run-configuration-input
                                    common-lisp:nil
                                    ((tracking-assets :target-type
                                      tracking-assets :required common-lisp:t
                                      :member-name "trackingAssets"))
                                    (:shape-name
                                     "SageMakerRunConfigurationInput"))

(smithy/sdk/shapes:define-structure sage-maker-run-configuration-output
                                    common-lisp:nil
                                    ((account-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "accountId")
                                     (region :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "region")
                                     (tracking-assets :target-type
                                      tracking-assets :required common-lisp:t
                                      :member-name "trackingAssets"))
                                    (:shape-name
                                     "SageMakerRunConfigurationOutput"))

(smithy/sdk/shapes:define-structure schedule-configuration common-lisp:nil
                                    ((timezone :target-type timezone
                                      :member-name "timezone")
                                     (schedule :target-type cron-string
                                      :member-name "schedule"))
                                    (:shape-name "ScheduleConfiguration"))

(smithy/sdk/shapes:define-input search-group-profiles-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (group-type :target-type group-search-type
                                  :required common-lisp:t :member-name
                                  "groupType")
                                 (search-text :target-type group-search-text
                                  :member-name "searchText")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "SearchGroupProfilesInput"))

(smithy/sdk/shapes:define-output search-group-profiles-output common-lisp:nil
                                 ((items :target-type group-profile-summaries
                                   :member-name "items")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "SearchGroupProfilesOutput"))

(smithy/sdk/shapes:define-structure search-in-item common-lisp:nil
                                    ((attribute :target-type attribute
                                      :required common-lisp:t :member-name
                                      "attribute"))
                                    (:shape-name "SearchInItem"))

(smithy/sdk/shapes:define-list search-in-list :member search-in-item)

(smithy/sdk/shapes:define-input search-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (owning-project-identifier :target-type
                                  project-id :member-name
                                  "owningProjectIdentifier")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (search-scope :target-type
                                  inventory-search-scope :required
                                  common-lisp:t :member-name "searchScope")
                                 (search-text :target-type search-text
                                  :member-name "searchText")
                                 (search-in :target-type search-in-list
                                  :member-name "searchIn")
                                 (filters :target-type filter-clause
                                  :member-name "filters")
                                 (sort :target-type search-sort :member-name
                                  "sort")
                                 (additional-attributes :target-type
                                  search-output-additional-attributes
                                  :member-name "additionalAttributes"))
                                (:shape-name "SearchInput"))

(smithy/sdk/shapes:define-union search-inventory-result-item common-lisp:nil
                                ((glossary-item :target-type glossary-item
                                  :member-name "glossaryItem")
                                 (glossary-term-item :target-type
                                  glossary-term-item :member-name
                                  "glossaryTermItem")
                                 (asset-item :target-type asset-item
                                  :member-name "assetItem")
                                 (data-product-item :target-type
                                  data-product-result-item :member-name
                                  "dataProductItem"))
                                (:shape-name "SearchInventoryResultItem"))

(smithy/sdk/shapes:define-list search-inventory-result-items :member
                               search-inventory-result-item)

(smithy/sdk/shapes:define-input search-listings-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (search-text :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "searchText")
                                 (search-in :target-type search-in-list
                                  :member-name "searchIn")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (filters :target-type filter-clause
                                  :member-name "filters")
                                 (aggregations :target-type aggregation-list
                                  :member-name "aggregations")
                                 (sort :target-type search-sort :member-name
                                  "sort")
                                 (additional-attributes :target-type
                                  search-output-additional-attributes
                                  :member-name "additionalAttributes"))
                                (:shape-name "SearchListingsInput"))

(smithy/sdk/shapes:define-output search-listings-output common-lisp:nil
                                 ((items :target-type search-result-items
                                   :member-name "items")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken")
                                  (total-match-count :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "totalMatchCount")
                                  (aggregates :target-type
                                   aggregation-output-list :member-name
                                   "aggregates"))
                                 (:shape-name "SearchListingsOutput"))

(smithy/sdk/shapes:define-output search-output common-lisp:nil
                                 ((items :target-type
                                   search-inventory-result-items :member-name
                                   "items")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken")
                                  (total-match-count :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "totalMatchCount"))
                                 (:shape-name "SearchOutput"))

(smithy/sdk/shapes:define-enum search-output-additional-attribute
    common-lisp:nil
  (:forms "FORMS")
  (:time-series-data-point-forms "TIME_SERIES_DATA_POINT_FORMS")
  (:text-match-rationale "TEXT_MATCH_RATIONALE"))

(smithy/sdk/shapes:define-list search-output-additional-attributes :member
                               search-output-additional-attribute)

(smithy/sdk/shapes:define-union search-result-item common-lisp:nil
                                ((asset-listing :target-type asset-listing-item
                                  :member-name "assetListing")
                                 (data-product-listing :target-type
                                  data-product-listing-item :member-name
                                  "dataProductListing"))
                                (:shape-name "SearchResultItem"))

(smithy/sdk/shapes:define-list search-result-items :member search-result-item)

(smithy/sdk/shapes:define-structure search-sort common-lisp:nil
                                    ((attribute :target-type attribute
                                      :required common-lisp:t :member-name
                                      "attribute")
                                     (order :target-type sort-order
                                      :member-name "order"))
                                    (:shape-name "SearchSort"))

(smithy/sdk/shapes:define-type search-text smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input search-types-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (search-scope :target-type types-search-scope
                                  :required common-lisp:t :member-name
                                  "searchScope")
                                 (search-text :target-type search-text
                                  :member-name "searchText")
                                 (search-in :target-type search-in-list
                                  :member-name "searchIn")
                                 (filters :target-type filter-clause
                                  :member-name "filters")
                                 (sort :target-type search-sort :member-name
                                  "sort")
                                 (managed :target-type
                                  smithy/sdk/smithy-types:boolean :required
                                  common-lisp:t :member-name "managed"))
                                (:shape-name "SearchTypesInput"))

(smithy/sdk/shapes:define-output search-types-output common-lisp:nil
                                 ((items :target-type search-types-result-items
                                   :member-name "items")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken")
                                  (total-match-count :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "totalMatchCount"))
                                 (:shape-name "SearchTypesOutput"))

(smithy/sdk/shapes:define-union search-types-result-item common-lisp:nil
                                ((asset-type-item :target-type asset-type-item
                                  :member-name "assetTypeItem")
                                 (form-type-item :target-type form-type-data
                                  :member-name "formTypeItem")
                                 (lineage-node-type-item :target-type
                                  lineage-node-type-item :member-name
                                  "lineageNodeTypeItem"))
                                (:shape-name "SearchTypesResultItem"))

(smithy/sdk/shapes:define-list search-types-result-items :member
                               search-types-result-item)

(smithy/sdk/shapes:define-input search-user-profiles-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (user-type :target-type user-search-type
                                  :required common-lisp:t :member-name
                                  "userType")
                                 (search-text :target-type user-search-text
                                  :member-name "searchText")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "SearchUserProfilesInput"))

(smithy/sdk/shapes:define-output search-user-profiles-output common-lisp:nil
                                 ((items :target-type user-profile-summaries
                                   :member-name "items")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "SearchUserProfilesOutput"))

(smithy/sdk/shapes:define-list security-group-id-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum self-grant-status
    common-lisp:nil
  (:grant-pending "GRANT_PENDING")
  (:revoke-pending "REVOKE_PENDING")
  (:grant-in-progress "GRANT_IN_PROGRESS")
  (:revoke-in-progress "REVOKE_IN_PROGRESS")
  (:granted "GRANTED")
  (:grant-failed "GRANT_FAILED")
  (:revoke-failed "REVOKE_FAILED"))

(smithy/sdk/shapes:define-structure self-grant-status-detail common-lisp:nil
                                    ((database-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "databaseName")
                                     (schema-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "schemaName")
                                     (status :target-type self-grant-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (failure-cause :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "failureCause"))
                                    (:shape-name "SelfGrantStatusDetail"))

(smithy/sdk/shapes:define-list self-grant-status-details :member
                               self-grant-status-detail)

(smithy/sdk/shapes:define-union self-grant-status-output common-lisp:nil
                                ((glue-self-grant-status :target-type
                                  glue-self-grant-status-output :member-name
                                  "glueSelfGrantStatus")
                                 (redshift-self-grant-status :target-type
                                  redshift-self-grant-status-output
                                  :member-name "redshiftSelfGrantStatus"))
                                (:shape-name "SelfGrantStatusOutput"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type short-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure single-sign-on common-lisp:nil
                                    ((type :target-type auth-type :member-name
                                      "type")
                                     (user-assignment :target-type
                                      user-assignment :member-name
                                      "userAssignment")
                                     (idc-instance-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "idcInstanceArn"))
                                    (:shape-name "SingleSignOn"))

(smithy/sdk/shapes:define-type smithy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum sort-field-connection
    common-lisp:nil
  (:name "NAME"))

(smithy/sdk/shapes:define-enum sort-field-project
    common-lisp:nil
  (:name "NAME"))

(smithy/sdk/shapes:define-enum sort-key
    common-lisp:nil
  (:created-at "CREATED_AT")
  (:updated-at "UPDATED_AT"))

(smithy/sdk/shapes:define-enum sort-order
    common-lisp:nil
  (:ascending "ASCENDING")
  (:descending "DESCENDING"))

(smithy/sdk/shapes:define-structure spark-emr-properties-input common-lisp:nil
                                    ((compute-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "computeArn")
                                     (instance-profile-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "instanceProfileArn")
                                     (java-virtual-env :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "javaVirtualEnv")
                                     (log-uri :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "logUri")
                                     (python-virtual-env :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "pythonVirtualEnv")
                                     (runtime-role :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "runtimeRole")
                                     (trusted-certificates-s3uri :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "trustedCertificatesS3Uri"))
                                    (:shape-name "SparkEmrPropertiesInput"))

(smithy/sdk/shapes:define-structure spark-emr-properties-output common-lisp:nil
                                    ((compute-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "computeArn")
                                     (credentials :target-type
                                      username-password :member-name
                                      "credentials")
                                     (credentials-expiration :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "credentialsExpiration"
                                      :timestamp-format "date-time")
                                     (governance-type :target-type
                                      governance-type :member-name
                                      "governanceType")
                                     (instance-profile-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "instanceProfileArn")
                                     (java-virtual-env :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "javaVirtualEnv")
                                     (livy-endpoint :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "livyEndpoint")
                                     (log-uri :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "logUri")
                                     (python-virtual-env :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "pythonVirtualEnv")
                                     (runtime-role :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "runtimeRole")
                                     (trusted-certificates-s3uri :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "trustedCertificatesS3Uri"))
                                    (:shape-name "SparkEmrPropertiesOutput"))

(smithy/sdk/shapes:define-structure spark-emr-properties-patch common-lisp:nil
                                    ((compute-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "computeArn")
                                     (instance-profile-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "instanceProfileArn")
                                     (java-virtual-env :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "javaVirtualEnv")
                                     (log-uri :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "logUri")
                                     (python-virtual-env :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "pythonVirtualEnv")
                                     (runtime-role :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "runtimeRole")
                                     (trusted-certificates-s3uri :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "trustedCertificatesS3Uri"))
                                    (:shape-name "SparkEmrPropertiesPatch"))

(smithy/sdk/shapes:define-structure spark-glue-args common-lisp:nil
                                    ((connection :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "connection"))
                                    (:shape-name "SparkGlueArgs"))

(smithy/sdk/shapes:define-structure spark-glue-properties-input common-lisp:nil
                                    ((additional-args :target-type
                                      spark-glue-args :member-name
                                      "additionalArgs")
                                     (glue-connection-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "glueConnectionName")
                                     (glue-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "glueVersion")
                                     (idle-timeout :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "idleTimeout")
                                     (java-virtual-env :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "javaVirtualEnv")
                                     (number-of-workers :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "numberOfWorkers")
                                     (python-virtual-env :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "pythonVirtualEnv")
                                     (worker-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "workerType"))
                                    (:shape-name "SparkGluePropertiesInput"))

(smithy/sdk/shapes:define-structure spark-glue-properties-output
                                    common-lisp:nil
                                    ((additional-args :target-type
                                      spark-glue-args :member-name
                                      "additionalArgs")
                                     (glue-connection-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "glueConnectionName")
                                     (glue-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "glueVersion")
                                     (idle-timeout :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "idleTimeout")
                                     (java-virtual-env :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "javaVirtualEnv")
                                     (number-of-workers :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "numberOfWorkers")
                                     (python-virtual-env :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "pythonVirtualEnv")
                                     (worker-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "workerType"))
                                    (:shape-name "SparkGluePropertiesOutput"))

(smithy/sdk/shapes:define-structure sso-user-profile-details common-lisp:nil
                                    ((username :target-type user-profile-name
                                      :member-name "username")
                                     (first-name :target-type first-name
                                      :member-name "firstName")
                                     (last-name :target-type last-name
                                      :member-name "lastName"))
                                    (:shape-name "SsoUserProfileDetails"))

(smithy/sdk/shapes:define-input start-data-source-run-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (data-source-identifier :target-type
                                  data-source-id :required common-lisp:t
                                  :member-name "dataSourceIdentifier"
                                  :http-label common-lisp:t)
                                 (client-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "clientToken"))
                                (:shape-name "StartDataSourceRunInput"))

(smithy/sdk/shapes:define-output start-data-source-run-output common-lisp:nil
                                 ((domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (data-source-id :target-type data-source-id
                                   :required common-lisp:t :member-name
                                   "dataSourceId")
                                  (id :target-type data-source-run-id :required
                                   common-lisp:t :member-name "id")
                                  (project-id :target-type project-id :required
                                   common-lisp:t :member-name "projectId")
                                  (status :target-type data-source-run-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (type :target-type data-source-run-type
                                   :required common-lisp:t :member-name "type")
                                  (data-source-configuration-snapshot
                                   :target-type smithy/sdk/smithy-types:string
                                   :member-name
                                   "dataSourceConfigurationSnapshot")
                                  (run-statistics-for-assets :target-type
                                   run-statistics-for-assets :member-name
                                   "runStatisticsForAssets")
                                  (error-message :target-type
                                   data-source-error-message :member-name
                                   "errorMessage")
                                  (created-at :target-type date-time :required
                                   common-lisp:t :member-name "createdAt")
                                  (updated-at :target-type date-time :required
                                   common-lisp:t :member-name "updatedAt")
                                  (started-at :target-type date-time
                                   :member-name "startedAt")
                                  (stopped-at :target-type date-time
                                   :member-name "stoppedAt"))
                                 (:shape-name "StartDataSourceRunOutput"))

(smithy/sdk/shapes:define-input start-metadata-generation-run-input
                                common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (type :target-type
                                  metadata-generation-run-type :required
                                  common-lisp:t :member-name "type")
                                 (target :target-type
                                  metadata-generation-run-target :required
                                  common-lisp:t :member-name "target")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (owning-project-identifier :target-type
                                  project-id :required common-lisp:t
                                  :member-name "owningProjectIdentifier"))
                                (:shape-name "StartMetadataGenerationRunInput"))

(smithy/sdk/shapes:define-output start-metadata-generation-run-output
                                 common-lisp:nil
                                 ((domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (id :target-type
                                   metadata-generation-run-identifier :required
                                   common-lisp:t :member-name "id")
                                  (status :target-type
                                   metadata-generation-run-status :member-name
                                   "status")
                                  (type :target-type
                                   metadata-generation-run-type :member-name
                                   "type")
                                  (created-at :target-type created-at
                                   :member-name "createdAt")
                                  (created-by :target-type created-by
                                   :member-name "createdBy")
                                  (owning-project-id :target-type project-id
                                   :member-name "owningProjectId"))
                                 (:shape-name
                                  "StartMetadataGenerationRunOutput"))

(smithy/sdk/shapes:define-enum status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-list string-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnet-id-list :member subnet-id)

(smithy/sdk/shapes:define-structure subscribed-asset common-lisp:nil
                                    ((asset-id :target-type asset-id :required
                                      common-lisp:t :member-name "assetId")
                                     (asset-revision :target-type revision
                                      :required common-lisp:t :member-name
                                      "assetRevision")
                                     (status :target-type
                                      subscription-grant-status :required
                                      common-lisp:t :member-name "status")
                                     (target-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "targetName")
                                     (failure-cause :target-type failure-cause
                                      :member-name "failureCause")
                                     (granted-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "grantedTimestamp")
                                     (failure-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "failureTimestamp")
                                     (asset-scope :target-type asset-scope
                                      :member-name "assetScope"))
                                    (:shape-name "SubscribedAsset"))

(smithy/sdk/shapes:define-structure subscribed-asset-listing common-lisp:nil
                                    ((entity-id :target-type asset-id
                                      :member-name "entityId")
                                     (entity-revision :target-type revision
                                      :member-name "entityRevision")
                                     (entity-type :target-type type-name
                                      :member-name "entityType")
                                     (forms :target-type forms :member-name
                                      "forms")
                                     (glossary-terms :target-type
                                      detailed-glossary-terms :member-name
                                      "glossaryTerms")
                                     (asset-scope :target-type asset-scope
                                      :member-name "assetScope"))
                                    (:shape-name "SubscribedAssetListing"))

(smithy/sdk/shapes:define-list subscribed-assets :member subscribed-asset)

(smithy/sdk/shapes:define-structure subscribed-listing common-lisp:nil
                                    ((id :target-type listing-id :required
                                      common-lisp:t :member-name "id")
                                     (revision :target-type revision
                                      :member-name "revision")
                                     (name :target-type listing-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :required common-lisp:t :member-name
                                      "description")
                                     (item :target-type subscribed-listing-item
                                      :required common-lisp:t :member-name
                                      "item")
                                     (owner-project-id :target-type project-id
                                      :required common-lisp:t :member-name
                                      "ownerProjectId")
                                     (owner-project-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ownerProjectName"))
                                    (:shape-name "SubscribedListing"))

(smithy/sdk/shapes:define-structure subscribed-listing-input common-lisp:nil
                                    ((identifier :target-type listing-id
                                      :required common-lisp:t :member-name
                                      "identifier"))
                                    (:shape-name "SubscribedListingInput"))

(smithy/sdk/shapes:define-list subscribed-listing-inputs :member
                               subscribed-listing-input)

(smithy/sdk/shapes:define-union subscribed-listing-item common-lisp:nil
                                ((asset-listing :target-type
                                  subscribed-asset-listing :member-name
                                  "assetListing")
                                 (product-listing :target-type
                                  subscribed-product-listing :member-name
                                  "productListing"))
                                (:shape-name "SubscribedListingItem"))

(smithy/sdk/shapes:define-list subscribed-listings :member subscribed-listing)

(smithy/sdk/shapes:define-union subscribed-principal common-lisp:nil
                                ((project :target-type subscribed-project
                                  :member-name "project"))
                                (:shape-name "SubscribedPrincipal"))

(smithy/sdk/shapes:define-union subscribed-principal-input common-lisp:nil
                                ((project :target-type subscribed-project-input
                                  :member-name "project"))
                                (:shape-name "SubscribedPrincipalInput"))

(smithy/sdk/shapes:define-list subscribed-principal-inputs :member
                               subscribed-principal-input)

(smithy/sdk/shapes:define-list subscribed-principals :member
                               subscribed-principal)

(smithy/sdk/shapes:define-structure subscribed-product-listing common-lisp:nil
                                    ((entity-id :target-type asset-id
                                      :member-name "entityId")
                                     (entity-revision :target-type revision
                                      :member-name "entityRevision")
                                     (glossary-terms :target-type
                                      detailed-glossary-terms :member-name
                                      "glossaryTerms")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (asset-listings :target-type
                                      asset-in-data-product-listing-items
                                      :member-name "assetListings"))
                                    (:shape-name "SubscribedProductListing"))

(smithy/sdk/shapes:define-structure subscribed-project common-lisp:nil
                                    ((id :target-type project-id :member-name
                                      "id")
                                     (name :target-type project-name
                                      :member-name "name"))
                                    (:shape-name "SubscribedProject"))

(smithy/sdk/shapes:define-structure subscribed-project-input common-lisp:nil
                                    ((identifier :target-type project-id
                                      :member-name "identifier"))
                                    (:shape-name "SubscribedProjectInput"))

(smithy/sdk/shapes:define-type subscription-grant-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum subscription-grant-overall-status
    common-lisp:nil
  (:pending "PENDING")
  (:in-progress "IN_PROGRESS")
  (:grant-failed "GRANT_FAILED")
  (:revoke-failed "REVOKE_FAILED")
  (:grant-and-revoke-failed "GRANT_AND_REVOKE_FAILED")
  (:completed "COMPLETED")
  (:inaccessible "INACCESSIBLE"))

(smithy/sdk/shapes:define-enum subscription-grant-status
    common-lisp:nil
  (:grant-pending "GRANT_PENDING")
  (:revoke-pending "REVOKE_PENDING")
  (:grant-in-progress "GRANT_IN_PROGRESS")
  (:revoke-in-progress "REVOKE_IN_PROGRESS")
  (:granted "GRANTED")
  (:revoked "REVOKED")
  (:grant-failed "GRANT_FAILED")
  (:revoke-failed "REVOKE_FAILED"))

(smithy/sdk/shapes:define-structure subscription-grant-summary common-lisp:nil
                                    ((id :target-type subscription-grant-id
                                      :required common-lisp:t :member-name
                                      "id")
                                     (created-by :target-type created-by
                                      :required common-lisp:t :member-name
                                      "createdBy")
                                     (updated-by :target-type updated-by
                                      :member-name "updatedBy")
                                     (domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "domainId")
                                     (created-at :target-type created-at
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (updated-at :target-type updated-at
                                      :required common-lisp:t :member-name
                                      "updatedAt")
                                     (subscription-target-id :target-type
                                      subscription-target-id :required
                                      common-lisp:t :member-name
                                      "subscriptionTargetId")
                                     (granted-entity :target-type
                                      granted-entity :required common-lisp:t
                                      :member-name "grantedEntity")
                                     (status :target-type
                                      subscription-grant-overall-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (assets :target-type subscribed-assets
                                      :member-name "assets")
                                     (subscription-id :target-type
                                      subscription-id :member-name
                                      "subscriptionId"))
                                    (:shape-name "SubscriptionGrantSummary"))

(smithy/sdk/shapes:define-list subscription-grants :member
                               subscription-grant-summary)

(smithy/sdk/shapes:define-type subscription-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type subscription-request-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum subscription-request-status
    common-lisp:nil
  (:pending "PENDING")
  (:accepted "ACCEPTED")
  (:rejected "REJECTED"))

(smithy/sdk/shapes:define-structure subscription-request-summary
                                    common-lisp:nil
                                    ((id :target-type subscription-request-id
                                      :required common-lisp:t :member-name
                                      "id")
                                     (created-by :target-type created-by
                                      :required common-lisp:t :member-name
                                      "createdBy")
                                     (updated-by :target-type updated-by
                                      :member-name "updatedBy")
                                     (domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "domainId")
                                     (status :target-type
                                      subscription-request-status :required
                                      common-lisp:t :member-name "status")
                                     (created-at :target-type created-at
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (updated-at :target-type updated-at
                                      :required common-lisp:t :member-name
                                      "updatedAt")
                                     (request-reason :target-type
                                      request-reason :required common-lisp:t
                                      :member-name "requestReason")
                                     (subscribed-principals :target-type
                                      subscribed-principals :required
                                      common-lisp:t :member-name
                                      "subscribedPrincipals")
                                     (subscribed-listings :target-type
                                      subscribed-listings :required
                                      common-lisp:t :member-name
                                      "subscribedListings")
                                     (reviewer-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "reviewerId")
                                     (decision-comment :target-type
                                      decision-comment :member-name
                                      "decisionComment")
                                     (existing-subscription-id :target-type
                                      subscription-id :member-name
                                      "existingSubscriptionId")
                                     (metadata-forms-summary :target-type
                                      metadata-forms-summary :member-name
                                      "metadataFormsSummary"))
                                    (:shape-name "SubscriptionRequestSummary"))

(smithy/sdk/shapes:define-list subscription-requests :member
                               subscription-request-summary)

(smithy/sdk/shapes:define-enum subscription-status
    common-lisp:nil
  (:approved "APPROVED")
  (:revoked "REVOKED")
  (:cancelled "CANCELLED"))

(smithy/sdk/shapes:define-structure subscription-summary common-lisp:nil
                                    ((id :target-type subscription-id :required
                                      common-lisp:t :member-name "id")
                                     (created-by :target-type created-by
                                      :required common-lisp:t :member-name
                                      "createdBy")
                                     (updated-by :target-type updated-by
                                      :member-name "updatedBy")
                                     (domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "domainId")
                                     (status :target-type subscription-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (created-at :target-type created-at
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (updated-at :target-type updated-at
                                      :required common-lisp:t :member-name
                                      "updatedAt")
                                     (subscribed-principal :target-type
                                      subscribed-principal :required
                                      common-lisp:t :member-name
                                      "subscribedPrincipal")
                                     (subscribed-listing :target-type
                                      subscribed-listing :required
                                      common-lisp:t :member-name
                                      "subscribedListing")
                                     (subscription-request-id :target-type
                                      subscription-request-id :member-name
                                      "subscriptionRequestId")
                                     (retain-permissions :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "retainPermissions"))
                                    (:shape-name "SubscriptionSummary"))

(smithy/sdk/shapes:define-structure subscription-target-form common-lisp:nil
                                    ((form-name :target-type form-name
                                      :required common-lisp:t :member-name
                                      "formName")
                                     (content :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "content"))
                                    (:shape-name "SubscriptionTargetForm"))

(smithy/sdk/shapes:define-list subscription-target-forms :member
                               subscription-target-form)

(smithy/sdk/shapes:define-type subscription-target-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type subscription-target-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure subscription-target-summary common-lisp:nil
                                    ((id :target-type subscription-target-id
                                      :required common-lisp:t :member-name
                                      "id")
                                     (authorized-principals :target-type
                                      authorized-principal-identifiers
                                      :required common-lisp:t :member-name
                                      "authorizedPrincipals")
                                     (domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "domainId")
                                     (project-id :target-type project-id
                                      :required common-lisp:t :member-name
                                      "projectId")
                                     (environment-id :target-type
                                      environment-id :required common-lisp:t
                                      :member-name "environmentId")
                                     (name :target-type
                                      subscription-target-name :required
                                      common-lisp:t :member-name "name")
                                     (type :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "type")
                                     (created-by :target-type created-by
                                      :required common-lisp:t :member-name
                                      "createdBy")
                                     (updated-by :target-type updated-by
                                      :member-name "updatedBy")
                                     (created-at :target-type created-at
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (updated-at :target-type updated-at
                                      :member-name "updatedAt")
                                     (manage-access-role :target-type
                                      iam-role-arn :member-name
                                      "manageAccessRole")
                                     (applicable-asset-types :target-type
                                      applicable-asset-types :required
                                      common-lisp:t :member-name
                                      "applicableAssetTypes")
                                     (subscription-target-config :target-type
                                      subscription-target-forms :required
                                      common-lisp:t :member-name
                                      "subscriptionTargetConfig")
                                     (provider :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "provider"))
                                    (:shape-name "SubscriptionTargetSummary"))

(smithy/sdk/shapes:define-list subscription-targets :member
                               subscription-target-summary)

(smithy/sdk/shapes:define-list subscriptions :member subscription-summary)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map tags :key tag-key :value tag-value)

(smithy/sdk/shapes:define-enum target-entity-type
    common-lisp:nil
  (:domain-unit "DOMAIN_UNIT")
  (:environment-blueprint-configuration "ENVIRONMENT_BLUEPRINT_CONFIGURATION")
  (:environment-profile "ENVIRONMENT_PROFILE")
  (:asset-type "ASSET_TYPE"))

(smithy/sdk/shapes:define-type task-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum task-status
    common-lisp:nil
  (:active "ACTIVE")
  (:inactive "INACTIVE"))

(smithy/sdk/shapes:define-structure term-relations common-lisp:nil
                                    ((is-a :target-type glossary-terms
                                      :member-name "isA")
                                     (classifies :target-type glossary-terms
                                      :member-name "classifies"))
                                    (:shape-name "TermRelations"))

(smithy/sdk/shapes:define-structure text-match-item common-lisp:nil
                                    ((attribute :target-type attribute
                                      :member-name "attribute")
                                     (text :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "text")
                                     (match-offsets :target-type match-offsets
                                      :member-name "matchOffsets"))
                                    (:shape-name "TextMatchItem"))

(smithy/sdk/shapes:define-list text-matches :member text-match-item)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure time-series-data-point-form-input
                                    common-lisp:nil
                                    ((form-name :target-type
                                      time-series-form-name :required
                                      common-lisp:t :member-name "formName")
                                     (type-identifier :target-type
                                      form-type-identifier :required
                                      common-lisp:t :member-name
                                      "typeIdentifier")
                                     (type-revision :target-type revision
                                      :member-name "typeRevision")
                                     (timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "timestamp")
                                     (content :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "content"))
                                    (:shape-name
                                     "TimeSeriesDataPointFormInput"))

(smithy/sdk/shapes:define-list time-series-data-point-form-input-list :member
                               time-series-data-point-form-input)

(smithy/sdk/shapes:define-structure time-series-data-point-form-output
                                    common-lisp:nil
                                    ((form-name :target-type
                                      time-series-form-name :required
                                      common-lisp:t :member-name "formName")
                                     (type-identifier :target-type
                                      form-type-identifier :required
                                      common-lisp:t :member-name
                                      "typeIdentifier")
                                     (type-revision :target-type revision
                                      :member-name "typeRevision")
                                     (timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "timestamp")
                                     (content :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "content")
                                     (id :target-type data-point-identifier
                                      :member-name "id"))
                                    (:shape-name
                                     "TimeSeriesDataPointFormOutput"))

(smithy/sdk/shapes:define-list time-series-data-point-form-output-list :member
                               time-series-data-point-form-output)

(smithy/sdk/shapes:define-type time-series-data-point-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure time-series-data-point-summary-form-output
                                    common-lisp:nil
                                    ((form-name :target-type
                                      time-series-form-name :required
                                      common-lisp:t :member-name "formName")
                                     (type-identifier :target-type
                                      form-type-identifier :required
                                      common-lisp:t :member-name
                                      "typeIdentifier")
                                     (type-revision :target-type revision
                                      :member-name "typeRevision")
                                     (timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "timestamp")
                                     (content-summary :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "contentSummary")
                                     (id :target-type data-point-identifier
                                      :member-name "id"))
                                    (:shape-name
                                     "TimeSeriesDataPointSummaryFormOutput"))

(smithy/sdk/shapes:define-list time-series-data-point-summary-form-output-list
                               :member
                               time-series-data-point-summary-form-output)

(smithy/sdk/shapes:define-enum time-series-entity-type
    common-lisp:nil
  (:asset "ASSET")
  (:listing "LISTING"))

(smithy/sdk/shapes:define-type time-series-form-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum timezone
    common-lisp:nil
  (:utc "UTC")
  (:africa-johannesburg "AFRICA_JOHANNESBURG")
  (:america-montreal "AMERICA_MONTREAL")
  (:america-sao-paulo "AMERICA_SAO_PAULO")
  (:asia-bahrain "ASIA_BAHRAIN")
  (:asia-bangkok "ASIA_BANGKOK")
  (:asia-calcutta "ASIA_CALCUTTA")
  (:asia-dubai "ASIA_DUBAI")
  (:asia-hong-kong "ASIA_HONG_KONG")
  (:asia-jakarta "ASIA_JAKARTA")
  (:asia-kuala-lumpur "ASIA_KUALA_LUMPUR")
  (:asia-seoul "ASIA_SEOUL")
  (:asia-shanghai "ASIA_SHANGHAI")
  (:asia-singapore "ASIA_SINGAPORE")
  (:asia-taipei "ASIA_TAIPEI")
  (:asia-tokyo "ASIA_TOKYO")
  (:australia-melbourne "AUSTRALIA_MELBOURNE")
  (:australia-sydney "AUSTRALIA_SYDNEY")
  (:canada-central "CANADA_CENTRAL")
  (:cet "CET")
  (:cst6cdt "CST6CDT")
  (:etc-gmt "ETC_GMT")
  (:etc-gmt0 "ETC_GMT0")
  (:etc-gmt-add-0 "ETC_GMT_ADD_0")
  (:etc-gmt-add-1 "ETC_GMT_ADD_1")
  (:etc-gmt-add-10 "ETC_GMT_ADD_10")
  (:etc-gmt-add-11 "ETC_GMT_ADD_11")
  (:etc-gmt-add-12 "ETC_GMT_ADD_12")
  (:etc-gmt-add-2 "ETC_GMT_ADD_2")
  (:etc-gmt-add-3 "ETC_GMT_ADD_3")
  (:etc-gmt-add-4 "ETC_GMT_ADD_4")
  (:etc-gmt-add-5 "ETC_GMT_ADD_5")
  (:etc-gmt-add-6 "ETC_GMT_ADD_6")
  (:etc-gmt-add-7 "ETC_GMT_ADD_7")
  (:etc-gmt-add-8 "ETC_GMT_ADD_8")
  (:etc-gmt-add-9 "ETC_GMT_ADD_9")
  (:etc-gmt-neg-0 "ETC_GMT_NEG_0")
  (:etc-gmt-neg-1 "ETC_GMT_NEG_1")
  (:etc-gmt-neg-10 "ETC_GMT_NEG_10")
  (:etc-gmt-neg-11 "ETC_GMT_NEG_11")
  (:etc-gmt-neg-12 "ETC_GMT_NEG_12")
  (:etc-gmt-neg-13 "ETC_GMT_NEG_13")
  (:etc-gmt-neg-14 "ETC_GMT_NEG_14")
  (:etc-gmt-neg-2 "ETC_GMT_NEG_2")
  (:etc-gmt-neg-3 "ETC_GMT_NEG_3")
  (:etc-gmt-neg-4 "ETC_GMT_NEG_4")
  (:etc-gmt-neg-5 "ETC_GMT_NEG_5")
  (:etc-gmt-neg-6 "ETC_GMT_NEG_6")
  (:etc-gmt-neg-7 "ETC_GMT_NEG_7")
  (:etc-gmt-neg-8 "ETC_GMT_NEG_8")
  (:etc-gmt-neg-9 "ETC_GMT_NEG_9")
  (:europe-dublin "EUROPE_DUBLIN")
  (:europe-london "EUROPE_LONDON")
  (:europe-paris "EUROPE_PARIS")
  (:europe-stockholm "EUROPE_STOCKHOLM")
  (:europe-zurich "EUROPE_ZURICH")
  (:israel "ISRAEL")
  (:mexico-general "MEXICO_GENERAL")
  (:mst7mdt "MST7MDT")
  (:pacific-auckland "PACIFIC_AUCKLAND")
  (:us-central "US_CENTRAL")
  (:us-eastern "US_EASTERN")
  (:us-mountain "US_MOUNTAIN")
  (:us-pacific "US_PACIFIC"))

(smithy/sdk/shapes:define-type title smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map token-url-parameters-map :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure topic common-lisp:nil
                                    ((subject :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "subject")
                                     (resource :target-type
                                      notification-resource :required
                                      common-lisp:t :member-name "resource")
                                     (role :target-type notification-role
                                      :required common-lisp:t :member-name
                                      "role"))
                                    (:shape-name "Topic"))

(smithy/sdk/shapes:define-list tracking-asset-arns :member
                               sage-maker-resource-arn)

(smithy/sdk/shapes:define-map tracking-assets :key sage-maker-asset-type :value
                              tracking-asset-arns)

(smithy/sdk/shapes:define-type type-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum types-search-scope
    common-lisp:nil
  (:asset-type "ASSET_TYPE")
  (:form-type "FORM_TYPE")
  (:lineage-node-type "LINEAGE_NODE_TYPE"))

(smithy/sdk/shapes:define-error unauthorized-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "UnauthorizedException")
                                (:error-code 401))

(smithy/sdk/shapes:define-structure unit common-lisp:nil common-lisp:nil
                                    (:shape-name "Unit"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-asset-filter-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (asset-identifier :target-type asset-id
                                  :required common-lisp:t :member-name
                                  "assetIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type filter-id :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t)
                                 (name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (configuration :target-type
                                  asset-filter-configuration :member-name
                                  "configuration"))
                                (:shape-name "UpdateAssetFilterInput"))

(smithy/sdk/shapes:define-output update-asset-filter-output common-lisp:nil
                                 ((id :target-type filter-id :required
                                   common-lisp:t :member-name "id")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (asset-id :target-type asset-id :required
                                   common-lisp:t :member-name "assetId")
                                  (name :target-type filter-name :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (status :target-type filter-status
                                   :member-name "status")
                                  (configuration :target-type
                                   asset-filter-configuration :required
                                   common-lisp:t :member-name "configuration")
                                  (created-at :target-type created-at
                                   :member-name "createdAt")
                                  (error-message :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "errorMessage")
                                  (effective-column-names :target-type
                                   column-name-list :member-name
                                   "effectiveColumnNames")
                                  (effective-row-filter :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "effectiveRowFilter"))
                                 (:shape-name "UpdateAssetFilterOutput"))

(smithy/sdk/shapes:define-input update-connection-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type connection-id
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t)
                                 (description :target-type description
                                  :member-name "description")
                                 (aws-location :target-type aws-location
                                  :member-name "awsLocation")
                                 (props :target-type
                                  connection-properties-patch :member-name
                                  "props"))
                                (:shape-name "UpdateConnectionInput"))

(smithy/sdk/shapes:define-output update-connection-output common-lisp:nil
                                 ((connection-id :target-type connection-id
                                   :required common-lisp:t :member-name
                                   "connectionId")
                                  (description :target-type description
                                   :member-name "description")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (domain-unit-id :target-type domain-unit-id
                                   :required common-lisp:t :member-name
                                   "domainUnitId")
                                  (environment-id :target-type environment-id
                                   :member-name "environmentId")
                                  (name :target-type connection-name :required
                                   common-lisp:t :member-name "name")
                                  (physical-endpoints :target-type
                                   physical-endpoints :required common-lisp:t
                                   :member-name "physicalEndpoints")
                                  (project-id :target-type project-id
                                   :member-name "projectId")
                                  (props :target-type
                                   connection-properties-output :member-name
                                   "props")
                                  (type :target-type connection-type :required
                                   common-lisp:t :member-name "type"))
                                 (:shape-name "UpdateConnectionOutput"))

(smithy/sdk/shapes:define-input update-data-source-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type data-source-id
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t)
                                 (name :target-type name :member-name "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (enable-setting :target-type enable-setting
                                  :member-name "enableSetting")
                                 (publish-on-import :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "publishOnImport")
                                 (asset-forms-input :target-type
                                  form-input-list :member-name
                                  "assetFormsInput")
                                 (schedule :target-type schedule-configuration
                                  :member-name "schedule")
                                 (configuration :target-type
                                  data-source-configuration-input :member-name
                                  "configuration")
                                 (recommendation :target-type
                                  recommendation-configuration :member-name
                                  "recommendation")
                                 (retain-permissions-on-revoke-failure
                                  :target-type smithy/sdk/smithy-types:boolean
                                  :member-name
                                  "retainPermissionsOnRevokeFailure"))
                                (:shape-name "UpdateDataSourceInput"))

(smithy/sdk/shapes:define-output update-data-source-output common-lisp:nil
                                 ((id :target-type data-source-id :required
                                   common-lisp:t :member-name "id")
                                  (status :target-type data-source-status
                                   :member-name "status")
                                  (type :target-type data-source-type
                                   :member-name "type")
                                  (name :target-type name :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (project-id :target-type project-id :required
                                   common-lisp:t :member-name "projectId")
                                  (environment-id :target-type environment-id
                                   :member-name "environmentId")
                                  (connection-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "connectionId")
                                  (configuration :target-type
                                   data-source-configuration-output
                                   :member-name "configuration")
                                  (recommendation :target-type
                                   recommendation-configuration :member-name
                                   "recommendation")
                                  (enable-setting :target-type enable-setting
                                   :member-name "enableSetting")
                                  (publish-on-import :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "publishOnImport")
                                  (asset-forms-output :target-type
                                   form-output-list :member-name
                                   "assetFormsOutput")
                                  (schedule :target-type schedule-configuration
                                   :member-name "schedule")
                                  (last-run-status :target-type
                                   data-source-run-status :member-name
                                   "lastRunStatus")
                                  (last-run-at :target-type date-time
                                   :member-name "lastRunAt")
                                  (last-run-error-message :target-type
                                   data-source-error-message :member-name
                                   "lastRunErrorMessage")
                                  (error-message :target-type
                                   data-source-error-message :member-name
                                   "errorMessage")
                                  (created-at :target-type date-time
                                   :member-name "createdAt")
                                  (updated-at :target-type date-time
                                   :member-name "updatedAt")
                                  (self-grant-status :target-type
                                   self-grant-status-output :member-name
                                   "selfGrantStatus")
                                  (retain-permissions-on-revoke-failure
                                   :target-type smithy/sdk/smithy-types:boolean
                                   :member-name
                                   "retainPermissionsOnRevokeFailure"))
                                 (:shape-name "UpdateDataSourceOutput"))

(smithy/sdk/shapes:define-input update-domain-input common-lisp:nil
                                ((identifier :target-type domain-id :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t)
                                 (description :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "description")
                                 (single-sign-on :target-type single-sign-on
                                  :member-name "singleSignOn")
                                 (domain-execution-role :target-type role-arn
                                  :member-name "domainExecutionRole")
                                 (service-role :target-type role-arn
                                  :member-name "serviceRole")
                                 (name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "name")
                                 (client-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "clientToken" :http-query "clientToken"))
                                (:shape-name "UpdateDomainInput"))

(smithy/sdk/shapes:define-output update-domain-output common-lisp:nil
                                 ((id :target-type domain-id :required
                                   common-lisp:t :member-name "id")
                                  (root-domain-unit-id :target-type
                                   domain-unit-id :member-name
                                   "rootDomainUnitId")
                                  (description :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "description")
                                  (single-sign-on :target-type single-sign-on
                                   :member-name "singleSignOn")
                                  (domain-execution-role :target-type role-arn
                                   :member-name "domainExecutionRole")
                                  (service-role :target-type role-arn
                                   :member-name "serviceRole")
                                  (name :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "name")
                                  (last-updated-at :target-type updated-at
                                   :member-name "lastUpdatedAt"))
                                 (:shape-name "UpdateDomainOutput"))

(smithy/sdk/shapes:define-input update-domain-unit-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type domain-unit-id
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t)
                                 (description :target-type
                                  domain-unit-description :member-name
                                  "description")
                                 (name :target-type domain-unit-name
                                  :member-name "name"))
                                (:shape-name "UpdateDomainUnitInput"))

(smithy/sdk/shapes:define-output update-domain-unit-output common-lisp:nil
                                 ((id :target-type domain-unit-id :required
                                   common-lisp:t :member-name "id")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (name :target-type domain-unit-name :required
                                   common-lisp:t :member-name "name")
                                  (owners :target-type domain-unit-owners
                                   :required common-lisp:t :member-name
                                   "owners")
                                  (description :target-type
                                   domain-unit-description :member-name
                                   "description")
                                  (parent-domain-unit-id :target-type
                                   domain-unit-id :member-name
                                   "parentDomainUnitId")
                                  (created-at :target-type created-at
                                   :member-name "createdAt")
                                  (last-updated-at :target-type updated-at
                                   :member-name "lastUpdatedAt")
                                  (created-by :target-type created-by
                                   :member-name "createdBy")
                                  (last-updated-by :target-type updated-by
                                   :member-name "lastUpdatedBy"))
                                 (:shape-name "UpdateDomainUnitOutput"))

(smithy/sdk/shapes:define-input update-environment-action-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (environment-identifier :target-type
                                  environment-id :required common-lisp:t
                                  :member-name "environmentIdentifier"
                                  :http-label common-lisp:t)
                                 (identifier :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t)
                                 (parameters :target-type action-parameters
                                  :member-name "parameters")
                                 (name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "name")
                                 (description :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "description"))
                                (:shape-name "UpdateEnvironmentActionInput"))

(smithy/sdk/shapes:define-output update-environment-action-output
                                 common-lisp:nil
                                 ((domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (environment-id :target-type environment-id
                                   :required common-lisp:t :member-name
                                   "environmentId")
                                  (id :target-type environment-action-id
                                   :required common-lisp:t :member-name "id")
                                  (name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "name")
                                  (parameters :target-type action-parameters
                                   :required common-lisp:t :member-name
                                   "parameters")
                                  (description :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "description"))
                                 (:shape-name "UpdateEnvironmentActionOutput"))

(smithy/sdk/shapes:define-input update-environment-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type environment-id
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t)
                                 (name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "name")
                                 (description :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "description")
                                 (glossary-terms :target-type glossary-terms
                                  :member-name "glossaryTerms")
                                 (blueprint-version :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "blueprintVersion")
                                 (user-parameters :target-type
                                  environment-parameters-list :member-name
                                  "userParameters"))
                                (:shape-name "UpdateEnvironmentInput"))

(smithy/sdk/shapes:define-output update-environment-output common-lisp:nil
                                 ((project-id :target-type project-id :required
                                   common-lisp:t :member-name "projectId")
                                  (id :target-type environment-id :member-name
                                   "id")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (created-by :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "createdBy")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "createdAt" :timestamp-format
                                   "date-time")
                                  (updated-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "updatedAt" :timestamp-format
                                   "date-time")
                                  (name :target-type environment-name :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (environment-profile-id :target-type
                                   environment-profile-id :member-name
                                   "environmentProfileId")
                                  (aws-account-id :target-type aws-account-id
                                   :member-name "awsAccountId")
                                  (aws-account-region :target-type aws-region
                                   :member-name "awsAccountRegion")
                                  (provider :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "provider")
                                  (provisioned-resources :target-type
                                   resource-list :member-name
                                   "provisionedResources")
                                  (status :target-type environment-status
                                   :member-name "status")
                                  (environment-actions :target-type
                                   environment-action-list :member-name
                                   "environmentActions")
                                  (glossary-terms :target-type glossary-terms
                                   :member-name "glossaryTerms")
                                  (user-parameters :target-type
                                   custom-parameter-list :member-name
                                   "userParameters")
                                  (last-deployment :target-type deployment
                                   :member-name "lastDeployment")
                                  (provisioning-properties :target-type
                                   provisioning-properties :member-name
                                   "provisioningProperties")
                                  (deployment-properties :target-type
                                   deployment-properties :member-name
                                   "deploymentProperties")
                                  (environment-blueprint-id :target-type
                                   environment-blueprint-id :member-name
                                   "environmentBlueprintId")
                                  (environment-configuration-id :target-type
                                   environment-configuration-id :member-name
                                   "environmentConfigurationId"))
                                 (:shape-name "UpdateEnvironmentOutput"))

(smithy/sdk/shapes:define-input update-environment-profile-input
                                common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type
                                  environment-profile-id :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t)
                                 (name :target-type environment-profile-name
                                  :member-name "name")
                                 (description :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "description")
                                 (user-parameters :target-type
                                  environment-parameters-list :member-name
                                  "userParameters")
                                 (aws-account-id :target-type aws-account-id
                                  :member-name "awsAccountId")
                                 (aws-account-region :target-type aws-region
                                  :member-name "awsAccountRegion"))
                                (:shape-name "UpdateEnvironmentProfileInput"))

(smithy/sdk/shapes:define-output update-environment-profile-output
                                 common-lisp:nil
                                 ((id :target-type environment-profile-id
                                   :required common-lisp:t :member-name "id")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (aws-account-id :target-type aws-account-id
                                   :member-name "awsAccountId")
                                  (aws-account-region :target-type aws-region
                                   :member-name "awsAccountRegion")
                                  (created-by :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "createdBy")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "createdAt" :timestamp-format
                                   "date-time")
                                  (updated-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "updatedAt" :timestamp-format
                                   "date-time")
                                  (name :target-type environment-profile-name
                                   :required common-lisp:t :member-name "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (environment-blueprint-id :target-type
                                   environment-blueprint-id :required
                                   common-lisp:t :member-name
                                   "environmentBlueprintId")
                                  (project-id :target-type project-id
                                   :member-name "projectId")
                                  (user-parameters :target-type
                                   custom-parameter-list :member-name
                                   "userParameters"))
                                 (:shape-name "UpdateEnvironmentProfileOutput"))

(smithy/sdk/shapes:define-input update-glossary-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type glossary-id :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t)
                                 (name :target-type glossary-name :member-name
                                  "name")
                                 (description :target-type glossary-description
                                  :member-name "description")
                                 (status :target-type glossary-status
                                  :member-name "status")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "UpdateGlossaryInput"))

(smithy/sdk/shapes:define-output update-glossary-output common-lisp:nil
                                 ((domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (id :target-type glossary-id :required
                                   common-lisp:t :member-name "id")
                                  (name :target-type glossary-name :required
                                   common-lisp:t :member-name "name")
                                  (owning-project-id :target-type project-id
                                   :required common-lisp:t :member-name
                                   "owningProjectId")
                                  (description :target-type
                                   glossary-description :member-name
                                   "description")
                                  (status :target-type glossary-status
                                   :member-name "status"))
                                 (:shape-name "UpdateGlossaryOutput"))

(smithy/sdk/shapes:define-input update-glossary-term-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (glossary-identifier :target-type
                                  glossary-term-id :member-name
                                  "glossaryIdentifier")
                                 (identifier :target-type glossary-term-id
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t)
                                 (name :target-type glossary-term-name
                                  :member-name "name")
                                 (short-description :target-type
                                  short-description :member-name
                                  "shortDescription")
                                 (long-description :target-type
                                  long-description :member-name
                                  "longDescription")
                                 (term-relations :target-type term-relations
                                  :member-name "termRelations")
                                 (status :target-type glossary-term-status
                                  :member-name "status"))
                                (:shape-name "UpdateGlossaryTermInput"))

(smithy/sdk/shapes:define-output update-glossary-term-output common-lisp:nil
                                 ((id :target-type glossary-term-id :required
                                   common-lisp:t :member-name "id")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (glossary-id :target-type glossary-id
                                   :required common-lisp:t :member-name
                                   "glossaryId")
                                  (name :target-type glossary-term-name
                                   :required common-lisp:t :member-name "name")
                                  (status :target-type glossary-term-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (short-description :target-type
                                   short-description :member-name
                                   "shortDescription")
                                  (long-description :target-type
                                   long-description :member-name
                                   "longDescription")
                                  (term-relations :target-type term-relations
                                   :member-name "termRelations"))
                                 (:shape-name "UpdateGlossaryTermOutput"))

(smithy/sdk/shapes:define-input update-group-profile-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (group-identifier :target-type
                                  group-identifier :required common-lisp:t
                                  :member-name "groupIdentifier" :http-label
                                  common-lisp:t)
                                 (status :target-type group-profile-status
                                  :required common-lisp:t :member-name
                                  "status"))
                                (:shape-name "UpdateGroupProfileInput"))

(smithy/sdk/shapes:define-output update-group-profile-output common-lisp:nil
                                 ((domain-id :target-type domain-id
                                   :member-name "domainId")
                                  (id :target-type group-profile-id
                                   :member-name "id")
                                  (status :target-type group-profile-status
                                   :member-name "status")
                                  (group-name :target-type group-profile-name
                                   :member-name "groupName"))
                                 (:shape-name "UpdateGroupProfileOutput"))

(smithy/sdk/shapes:define-input update-project-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type project-id :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t)
                                 (name :target-type project-name :member-name
                                  "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (glossary-terms :target-type glossary-terms
                                  :member-name "glossaryTerms")
                                 (domain-unit-id :target-type domain-unit-id
                                  :member-name "domainUnitId")
                                 (environment-deployment-details :target-type
                                  environment-deployment-details :member-name
                                  "environmentDeploymentDetails")
                                 (user-parameters :target-type
                                  environment-configuration-user-parameters-list
                                  :member-name "userParameters")
                                 (project-profile-version :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "projectProfileVersion"))
                                (:shape-name "UpdateProjectInput"))

(smithy/sdk/shapes:define-output update-project-output common-lisp:nil
                                 ((domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (id :target-type project-id :required
                                   common-lisp:t :member-name "id")
                                  (name :target-type project-name :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (project-status :target-type project-status
                                   :member-name "projectStatus")
                                  (failure-reasons :target-type failure-reasons
                                   :member-name "failureReasons")
                                  (created-by :target-type created-by :required
                                   common-lisp:t :member-name "createdBy")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "createdAt" :timestamp-format
                                   "date-time")
                                  (last-updated-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "lastUpdatedAt"
                                   :timestamp-format "date-time")
                                  (glossary-terms :target-type glossary-terms
                                   :member-name "glossaryTerms")
                                  (domain-unit-id :target-type domain-unit-id
                                   :member-name "domainUnitId")
                                  (project-profile-id :target-type
                                   project-profile-id :member-name
                                   "projectProfileId")
                                  (user-parameters :target-type
                                   environment-configuration-user-parameters-list
                                   :member-name "userParameters")
                                  (environment-deployment-details :target-type
                                   environment-deployment-details :member-name
                                   "environmentDeploymentDetails"))
                                 (:shape-name "UpdateProjectOutput"))

(smithy/sdk/shapes:define-input update-project-profile-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type project-profile-id
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t)
                                 (name :target-type project-profile-name
                                  :member-name "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (status :target-type status :member-name
                                  "status")
                                 (environment-configurations :target-type
                                  environment-configurations-list :member-name
                                  "environmentConfigurations")
                                 (domain-unit-identifier :target-type
                                  domain-unit-id :member-name
                                  "domainUnitIdentifier"))
                                (:shape-name "UpdateProjectProfileInput"))

(smithy/sdk/shapes:define-output update-project-profile-output common-lisp:nil
                                 ((domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (id :target-type project-profile-id :required
                                   common-lisp:t :member-name "id")
                                  (name :target-type project-profile-name
                                   :required common-lisp:t :member-name "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (status :target-type status :member-name
                                   "status")
                                  (environment-configurations :target-type
                                   environment-configurations-list :member-name
                                   "environmentConfigurations")
                                  (created-by :target-type created-by :required
                                   common-lisp:t :member-name "createdBy")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "createdAt" :timestamp-format
                                   "date-time")
                                  (last-updated-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "lastUpdatedAt"
                                   :timestamp-format "date-time")
                                  (domain-unit-id :target-type domain-unit-id
                                   :member-name "domainUnitId"))
                                 (:shape-name "UpdateProjectProfileOutput"))

(smithy/sdk/shapes:define-input update-rule-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type rule-id :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t)
                                 (name :target-type rule-name :member-name
                                  "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (scope :target-type rule-scope :member-name
                                  "scope")
                                 (detail :target-type rule-detail :member-name
                                  "detail")
                                 (include-child-domain-units :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "includeChildDomainUnits"))
                                (:shape-name "UpdateRuleInput"))

(smithy/sdk/shapes:define-output update-rule-output common-lisp:nil
                                 ((identifier :target-type rule-id :required
                                   common-lisp:t :member-name "identifier")
                                  (revision :target-type revision :required
                                   common-lisp:t :member-name "revision")
                                  (name :target-type rule-name :required
                                   common-lisp:t :member-name "name")
                                  (rule-type :target-type rule-type :required
                                   common-lisp:t :member-name "ruleType")
                                  (target :target-type rule-target :required
                                   common-lisp:t :member-name "target")
                                  (action :target-type rule-action :required
                                   common-lisp:t :member-name "action")
                                  (scope :target-type rule-scope :required
                                   common-lisp:t :member-name "scope")
                                  (detail :target-type rule-detail :required
                                   common-lisp:t :member-name "detail")
                                  (description :target-type description
                                   :member-name "description")
                                  (created-at :target-type created-at :required
                                   common-lisp:t :member-name "createdAt")
                                  (updated-at :target-type updated-at :required
                                   common-lisp:t :member-name "updatedAt")
                                  (created-by :target-type created-by :required
                                   common-lisp:t :member-name "createdBy")
                                  (last-updated-by :target-type updated-by
                                   :required common-lisp:t :member-name
                                   "lastUpdatedBy"))
                                 (:shape-name "UpdateRuleOutput"))

(smithy/sdk/shapes:define-input update-subscription-grant-status-input
                                common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type subscription-grant-id
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t)
                                 (asset-identifier :target-type asset-id
                                  :required common-lisp:t :member-name
                                  "assetIdentifier" :http-label common-lisp:t)
                                 (status :target-type subscription-grant-status
                                  :required common-lisp:t :member-name
                                  "status")
                                 (failure-cause :target-type failure-cause
                                  :member-name "failureCause")
                                 (target-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "targetName"))
                                (:shape-name
                                 "UpdateSubscriptionGrantStatusInput"))

(smithy/sdk/shapes:define-output update-subscription-grant-status-output
                                 common-lisp:nil
                                 ((id :target-type subscription-grant-id
                                   :required common-lisp:t :member-name "id")
                                  (created-by :target-type created-by :required
                                   common-lisp:t :member-name "createdBy")
                                  (updated-by :target-type updated-by
                                   :member-name "updatedBy")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (created-at :target-type created-at :required
                                   common-lisp:t :member-name "createdAt")
                                  (updated-at :target-type updated-at :required
                                   common-lisp:t :member-name "updatedAt")
                                  (subscription-target-id :target-type
                                   subscription-target-id :required
                                   common-lisp:t :member-name
                                   "subscriptionTargetId")
                                  (granted-entity :target-type granted-entity
                                   :required common-lisp:t :member-name
                                   "grantedEntity")
                                  (status :target-type
                                   subscription-grant-overall-status :required
                                   common-lisp:t :member-name "status")
                                  (assets :target-type subscribed-assets
                                   :member-name "assets")
                                  (subscription-id :target-type subscription-id
                                   :member-name "subscriptionId"))
                                 (:shape-name
                                  "UpdateSubscriptionGrantStatusOutput"))

(smithy/sdk/shapes:define-input update-subscription-request-input
                                common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (identifier :target-type
                                  subscription-request-id :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t)
                                 (request-reason :target-type request-reason
                                  :required common-lisp:t :member-name
                                  "requestReason"))
                                (:shape-name "UpdateSubscriptionRequestInput"))

(smithy/sdk/shapes:define-output update-subscription-request-output
                                 common-lisp:nil
                                 ((id :target-type subscription-request-id
                                   :required common-lisp:t :member-name "id")
                                  (created-by :target-type created-by :required
                                   common-lisp:t :member-name "createdBy")
                                  (updated-by :target-type updated-by
                                   :member-name "updatedBy")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (status :target-type
                                   subscription-request-status :required
                                   common-lisp:t :member-name "status")
                                  (created-at :target-type created-at :required
                                   common-lisp:t :member-name "createdAt")
                                  (updated-at :target-type updated-at :required
                                   common-lisp:t :member-name "updatedAt")
                                  (request-reason :target-type request-reason
                                   :required common-lisp:t :member-name
                                   "requestReason")
                                  (subscribed-principals :target-type
                                   subscribed-principals :required
                                   common-lisp:t :member-name
                                   "subscribedPrincipals")
                                  (subscribed-listings :target-type
                                   subscribed-listings :required common-lisp:t
                                   :member-name "subscribedListings")
                                  (reviewer-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "reviewerId")
                                  (decision-comment :target-type
                                   decision-comment :member-name
                                   "decisionComment")
                                  (existing-subscription-id :target-type
                                   subscription-id :member-name
                                   "existingSubscriptionId")
                                  (metadata-forms :target-type metadata-forms
                                   :member-name "metadataForms"))
                                 (:shape-name
                                  "UpdateSubscriptionRequestOutput"))

(smithy/sdk/shapes:define-input update-subscription-target-input
                                common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (environment-identifier :target-type
                                  environment-id :required common-lisp:t
                                  :member-name "environmentIdentifier"
                                  :http-label common-lisp:t)
                                 (identifier :target-type
                                  subscription-target-id :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t)
                                 (name :target-type subscription-target-name
                                  :member-name "name")
                                 (authorized-principals :target-type
                                  authorized-principal-identifiers :member-name
                                  "authorizedPrincipals")
                                 (applicable-asset-types :target-type
                                  applicable-asset-types :member-name
                                  "applicableAssetTypes")
                                 (subscription-target-config :target-type
                                  subscription-target-forms :member-name
                                  "subscriptionTargetConfig")
                                 (manage-access-role :target-type iam-role-arn
                                  :member-name "manageAccessRole")
                                 (provider :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "provider"))
                                (:shape-name "UpdateSubscriptionTargetInput"))

(smithy/sdk/shapes:define-output update-subscription-target-output
                                 common-lisp:nil
                                 ((id :target-type subscription-target-id
                                   :required common-lisp:t :member-name "id")
                                  (authorized-principals :target-type
                                   authorized-principal-identifiers :required
                                   common-lisp:t :member-name
                                   "authorizedPrincipals")
                                  (domain-id :target-type domain-id :required
                                   common-lisp:t :member-name "domainId")
                                  (project-id :target-type project-id :required
                                   common-lisp:t :member-name "projectId")
                                  (environment-id :target-type environment-id
                                   :required common-lisp:t :member-name
                                   "environmentId")
                                  (name :target-type subscription-target-name
                                   :required common-lisp:t :member-name "name")
                                  (type :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "type")
                                  (created-by :target-type created-by :required
                                   common-lisp:t :member-name "createdBy")
                                  (updated-by :target-type updated-by
                                   :member-name "updatedBy")
                                  (created-at :target-type created-at :required
                                   common-lisp:t :member-name "createdAt")
                                  (updated-at :target-type updated-at
                                   :member-name "updatedAt")
                                  (manage-access-role :target-type iam-role-arn
                                   :member-name "manageAccessRole")
                                  (applicable-asset-types :target-type
                                   applicable-asset-types :required
                                   common-lisp:t :member-name
                                   "applicableAssetTypes")
                                  (subscription-target-config :target-type
                                   subscription-target-forms :required
                                   common-lisp:t :member-name
                                   "subscriptionTargetConfig")
                                  (provider :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "provider"))
                                 (:shape-name "UpdateSubscriptionTargetOutput"))

(smithy/sdk/shapes:define-input update-user-profile-input common-lisp:nil
                                ((domain-identifier :target-type domain-id
                                  :required common-lisp:t :member-name
                                  "domainIdentifier" :http-label common-lisp:t)
                                 (user-identifier :target-type user-identifier
                                  :required common-lisp:t :member-name
                                  "userIdentifier" :http-label common-lisp:t)
                                 (type :target-type user-profile-type
                                  :member-name "type")
                                 (status :target-type user-profile-status
                                  :required common-lisp:t :member-name
                                  "status"))
                                (:shape-name "UpdateUserProfileInput"))

(smithy/sdk/shapes:define-output update-user-profile-output common-lisp:nil
                                 ((domain-id :target-type domain-id
                                   :member-name "domainId")
                                  (id :target-type user-profile-id :member-name
                                   "id")
                                  (type :target-type user-profile-type
                                   :member-name "type")
                                  (status :target-type user-profile-status
                                   :member-name "status")
                                  (details :target-type user-profile-details
                                   :member-name "details"))
                                 (:shape-name "UpdateUserProfileOutput"))

(smithy/sdk/shapes:define-type updated-at smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type updated-by smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure use-asset-type-policy-grant-detail
                                    common-lisp:nil
                                    ((domain-unit-id :target-type
                                      domain-unit-id :member-name
                                      "domainUnitId"))
                                    (:shape-name
                                     "UseAssetTypePolicyGrantDetail"))

(smithy/sdk/shapes:define-enum user-assignment
    common-lisp:nil
  (:automatic "AUTOMATIC")
  (:manual "MANUAL"))

(smithy/sdk/shapes:define-enum user-designation
    common-lisp:nil
  (:project-owner "PROJECT_OWNER")
  (:project-contributor "PROJECT_CONTRIBUTOR")
  (:project-catalog-viewer "PROJECT_CATALOG_VIEWER")
  (:project-catalog-consumer "PROJECT_CATALOG_CONSUMER")
  (:project-catalog-steward "PROJECT_CATALOG_STEWARD"))

(smithy/sdk/shapes:define-structure user-details common-lisp:nil
                                    ((user-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "userId"))
                                    (:shape-name "UserDetails"))

(smithy/sdk/shapes:define-type user-identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union user-policy-grant-principal common-lisp:nil
                                ((user-identifier :target-type user-identifier
                                  :member-name "userIdentifier")
                                 (all-users-grant-filter :target-type
                                  all-users-grant-filter :member-name
                                  "allUsersGrantFilter"))
                                (:shape-name "UserPolicyGrantPrincipal"))

(smithy/sdk/shapes:define-union user-profile-details common-lisp:nil
                                ((iam :target-type iam-user-profile-details
                                  :member-name "iam")
                                 (sso :target-type sso-user-profile-details
                                  :member-name "sso"))
                                (:shape-name "UserProfileDetails"))

(smithy/sdk/shapes:define-type user-profile-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type user-profile-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum user-profile-status
    common-lisp:nil
  (:assigned "ASSIGNED")
  (:not-assigned "NOT_ASSIGNED")
  (:activated "ACTIVATED")
  (:deactivated "DEACTIVATED"))

(smithy/sdk/shapes:define-list user-profile-summaries :member
                               user-profile-summary)

(smithy/sdk/shapes:define-structure user-profile-summary common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :member-name "domainId")
                                     (id :target-type user-profile-id
                                      :member-name "id")
                                     (type :target-type user-profile-type
                                      :member-name "type")
                                     (status :target-type user-profile-status
                                      :member-name "status")
                                     (details :target-type user-profile-details
                                      :member-name "details"))
                                    (:shape-name "UserProfileSummary"))

(smithy/sdk/shapes:define-enum user-profile-type
    common-lisp:nil
  (:iam "IAM")
  (:sso "SSO"))

(smithy/sdk/shapes:define-type user-search-text smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum user-search-type
    common-lisp:nil
  (:sso-user "SSO_USER")
  (:datazone-user "DATAZONE_USER")
  (:datazone-sso-user "DATAZONE_SSO_USER")
  (:datazone-iam-user "DATAZONE_IAM_USER"))

(smithy/sdk/shapes:define-enum user-type
    common-lisp:nil
  (:iam-user "IAM_USER")
  (:iam-role "IAM_ROLE")
  (:sso-user "SSO_USER"))

(smithy/sdk/shapes:define-type username smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure username-password common-lisp:nil
                                    ((password :target-type password :required
                                      common-lisp:t :member-name "password")
                                     (username :target-type username :required
                                      common-lisp:t :member-name "username"))
                                    (:shape-name "UsernamePassword"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation accept-predictions :shape-name
                                       "AcceptPredictions" :input
                                       accept-predictions-input :output
                                       accept-predictions-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/v2/domains/{domainIdentifier}/assets/{identifier}/accept-predictions"
                                       :code 200)

(smithy/sdk/operation:define-operation accept-subscription-request :shape-name
                                       "AcceptSubscriptionRequest" :input
                                       accept-subscription-request-input
                                       :output
                                       accept-subscription-request-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/v2/domains/{domainIdentifier}/subscription-requests/{identifier}/accept"
                                       :code 200)

(smithy/sdk/operation:define-operation add-entity-owner :shape-name
                                       "AddEntityOwner" :input
                                       add-entity-owner-input :output
                                       add-entity-owner-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/entities/{entityType}/{entityIdentifier}/addOwner"
                                       :code 201)

(smithy/sdk/operation:define-operation add-policy-grant :shape-name
                                       "AddPolicyGrant" :input
                                       add-policy-grant-input :output
                                       add-policy-grant-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/policies/managed/{entityType}/{entityIdentifier}/addGrant"
                                       :code 201)

(smithy/sdk/operation:define-operation associate-environment-role :shape-name
                                       "AssociateEnvironmentRole" :input
                                       associate-environment-role-input :output
                                       associate-environment-role-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/roles/{environmentRoleArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation cancel-metadata-generation-run
                                       :shape-name
                                       "CancelMetadataGenerationRun" :input
                                       cancel-metadata-generation-run-input
                                       :output
                                       cancel-metadata-generation-run-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/metadata-generation-runs/{identifier}/cancel"
                                       :code 200)

(smithy/sdk/operation:define-operation cancel-subscription :shape-name
                                       "CancelSubscription" :input
                                       cancel-subscription-input :output
                                       cancel-subscription-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/v2/domains/{domainIdentifier}/subscriptions/{identifier}/cancel"
                                       :code 200)

(smithy/sdk/operation:define-operation create-asset :shape-name "CreateAsset"
                                       :input create-asset-input :output
                                       create-asset-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/assets"
                                       :code 201)

(smithy/sdk/operation:define-operation create-asset-filter :shape-name
                                       "CreateAssetFilter" :input
                                       create-asset-filter-input :output
                                       create-asset-filter-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/assets/{assetIdentifier}/filters"
                                       :code 201)

(smithy/sdk/operation:define-operation create-asset-revision :shape-name
                                       "CreateAssetRevision" :input
                                       create-asset-revision-input :output
                                       create-asset-revision-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/assets/{identifier}/revisions"
                                       :code 200)

(smithy/sdk/operation:define-operation create-asset-type :shape-name
                                       "CreateAssetType" :input
                                       create-asset-type-input :output
                                       create-asset-type-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/asset-types"
                                       :code 201)

(smithy/sdk/operation:define-operation create-connection :shape-name
                                       "CreateConnection" :input
                                       create-connection-input :output
                                       create-connection-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/connections"
                                       :code 201)

(smithy/sdk/operation:define-operation create-data-product :shape-name
                                       "CreateDataProduct" :input
                                       create-data-product-input :output
                                       create-data-product-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/data-products"
                                       :code 201)

(smithy/sdk/operation:define-operation create-data-product-revision :shape-name
                                       "CreateDataProductRevision" :input
                                       create-data-product-revision-input
                                       :output
                                       create-data-product-revision-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/data-products/{identifier}/revisions"
                                       :code 201)

(smithy/sdk/operation:define-operation create-data-source :shape-name
                                       "CreateDataSource" :input
                                       create-data-source-input :output
                                       create-data-source-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/data-sources"
                                       :code 201)

(smithy/sdk/operation:define-operation create-domain :shape-name "CreateDomain"
                                       :input create-domain-input :output
                                       create-domain-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/v2/domains" :code
                                       201)

(smithy/sdk/operation:define-operation create-domain-unit :shape-name
                                       "CreateDomainUnit" :input
                                       create-domain-unit-input :output
                                       create-domain-unit-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/domain-units"
                                       :code 201)

(smithy/sdk/operation:define-operation create-environment :shape-name
                                       "CreateEnvironment" :input
                                       create-environment-input :output
                                       create-environment-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/environments"
                                       :code 201)

(smithy/sdk/operation:define-operation create-environment-action :shape-name
                                       "CreateEnvironmentAction" :input
                                       create-environment-action-input :output
                                       create-environment-action-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/actions"
                                       :code 201)

(smithy/sdk/operation:define-operation create-environment-profile :shape-name
                                       "CreateEnvironmentProfile" :input
                                       create-environment-profile-input :output
                                       create-environment-profile-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/environment-profiles"
                                       :code 201)

(smithy/sdk/operation:define-operation create-form-type :shape-name
                                       "CreateFormType" :input
                                       create-form-type-input :output
                                       create-form-type-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/form-types"
                                       :code 201)

(smithy/sdk/operation:define-operation create-glossary :shape-name
                                       "CreateGlossary" :input
                                       create-glossary-input :output
                                       create-glossary-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/glossaries"
                                       :code 201)

(smithy/sdk/operation:define-operation create-glossary-term :shape-name
                                       "CreateGlossaryTerm" :input
                                       create-glossary-term-input :output
                                       create-glossary-term-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/glossary-terms"
                                       :code 201)

(smithy/sdk/operation:define-operation create-group-profile :shape-name
                                       "CreateGroupProfile" :input
                                       create-group-profile-input :output
                                       create-group-profile-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/group-profiles"
                                       :code 201)

(smithy/sdk/operation:define-operation create-listing-change-set :shape-name
                                       "CreateListingChangeSet" :input
                                       create-listing-change-set-input :output
                                       create-listing-change-set-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/listings/change-set"
                                       :code 200)

(smithy/sdk/operation:define-operation create-project :shape-name
                                       "CreateProject" :input
                                       create-project-input :output
                                       create-project-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/projects"
                                       :code 201)

(smithy/sdk/operation:define-operation create-project-membership :shape-name
                                       "CreateProjectMembership" :input
                                       create-project-membership-input :output
                                       create-project-membership-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/projects/{projectIdentifier}/createMembership"
                                       :code 201)

(smithy/sdk/operation:define-operation create-project-profile :shape-name
                                       "CreateProjectProfile" :input
                                       create-project-profile-input :output
                                       create-project-profile-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/project-profiles"
                                       :code 201)

(smithy/sdk/operation:define-operation create-rule :shape-name "CreateRule"
                                       :input create-rule-input :output
                                       create-rule-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/rules"
                                       :code 201)

(smithy/sdk/operation:define-operation create-subscription-grant :shape-name
                                       "CreateSubscriptionGrant" :input
                                       create-subscription-grant-input :output
                                       create-subscription-grant-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/subscription-grants"
                                       :code 200)

(smithy/sdk/operation:define-operation create-subscription-request :shape-name
                                       "CreateSubscriptionRequest" :input
                                       create-subscription-request-input
                                       :output
                                       create-subscription-request-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/subscription-requests"
                                       :code 200)

(smithy/sdk/operation:define-operation create-subscription-target :shape-name
                                       "CreateSubscriptionTarget" :input
                                       create-subscription-target-input :output
                                       create-subscription-target-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/subscription-targets"
                                       :code 200)

(smithy/sdk/operation:define-operation create-user-profile :shape-name
                                       "CreateUserProfile" :input
                                       create-user-profile-input :output
                                       create-user-profile-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/user-profiles"
                                       :code 201)

(smithy/sdk/operation:define-operation delete-asset :shape-name "DeleteAsset"
                                       :input delete-asset-input :output
                                       delete-asset-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v2/domains/{domainIdentifier}/assets/{identifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-asset-filter :shape-name
                                       "DeleteAssetFilter" :input
                                       delete-asset-filter-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v2/domains/{domainIdentifier}/assets/{assetIdentifier}/filters/{identifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-asset-type :shape-name
                                       "DeleteAssetType" :input
                                       delete-asset-type-input :output
                                       delete-asset-type-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v2/domains/{domainIdentifier}/asset-types/{identifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-connection :shape-name
                                       "DeleteConnection" :input
                                       delete-connection-input :output
                                       delete-connection-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v2/domains/{domainIdentifier}/connections/{identifier}"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-data-product :shape-name
                                       "DeleteDataProduct" :input
                                       delete-data-product-input :output
                                       delete-data-product-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v2/domains/{domainIdentifier}/data-products/{identifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-data-source :shape-name
                                       "DeleteDataSource" :input
                                       delete-data-source-input :output
                                       delete-data-source-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v2/domains/{domainIdentifier}/data-sources/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-domain :shape-name "DeleteDomain"
                                       :input delete-domain-input :output
                                       delete-domain-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v2/domains/{identifier}" :code 202)

(smithy/sdk/operation:define-operation delete-domain-unit :shape-name
                                       "DeleteDomainUnit" :input
                                       delete-domain-unit-input :output
                                       delete-domain-unit-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v2/domains/{domainIdentifier}/domain-units/{identifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-environment :shape-name
                                       "DeleteEnvironment" :input
                                       delete-environment-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v2/domains/{domainIdentifier}/environments/{identifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-environment-action :shape-name
                                       "DeleteEnvironmentAction" :input
                                       delete-environment-action-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/actions/{identifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation
 delete-environment-blueprint-configuration :shape-name
 "DeleteEnvironmentBlueprintConfiguration" :input
 delete-environment-blueprint-configuration-input :output
 delete-environment-blueprint-configuration-output :errors
 (access-denied-exception internal-server-exception validation-exception)
 :method "DELETE" :uri
 "/v2/domains/{domainIdentifier}/environment-blueprint-configurations/{environmentBlueprintIdentifier}"
 :code 204)

(smithy/sdk/operation:define-operation delete-environment-profile :shape-name
                                       "DeleteEnvironmentProfile" :input
                                       delete-environment-profile-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v2/domains/{domainIdentifier}/environment-profiles/{identifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-form-type :shape-name
                                       "DeleteFormType" :input
                                       delete-form-type-input :output
                                       delete-form-type-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v2/domains/{domainIdentifier}/form-types/{formTypeIdentifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-glossary :shape-name
                                       "DeleteGlossary" :input
                                       delete-glossary-input :output
                                       delete-glossary-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v2/domains/{domainIdentifier}/glossaries/{identifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-glossary-term :shape-name
                                       "DeleteGlossaryTerm" :input
                                       delete-glossary-term-input :output
                                       delete-glossary-term-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v2/domains/{domainIdentifier}/glossary-terms/{identifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-listing :shape-name
                                       "DeleteListing" :input
                                       delete-listing-input :output
                                       delete-listing-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v2/domains/{domainIdentifier}/listings/{identifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-project :shape-name
                                       "DeleteProject" :input
                                       delete-project-input :output
                                       delete-project-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v2/domains/{domainIdentifier}/projects/{identifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-project-membership :shape-name
                                       "DeleteProjectMembership" :input
                                       delete-project-membership-input :output
                                       delete-project-membership-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/projects/{projectIdentifier}/deleteMembership"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-project-profile :shape-name
                                       "DeleteProjectProfile" :input
                                       delete-project-profile-input :output
                                       delete-project-profile-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v2/domains/{domainIdentifier}/project-profiles/{identifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-rule :shape-name "DeleteRule"
                                       :input delete-rule-input :output
                                       delete-rule-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v2/domains/{domainIdentifier}/rules/{identifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-subscription-grant :shape-name
                                       "DeleteSubscriptionGrant" :input
                                       delete-subscription-grant-input :output
                                       delete-subscription-grant-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v2/domains/{domainIdentifier}/subscription-grants/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-subscription-request :shape-name
                                       "DeleteSubscriptionRequest" :input
                                       delete-subscription-request-input
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v2/domains/{domainIdentifier}/subscription-requests/{identifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-subscription-target :shape-name
                                       "DeleteSubscriptionTarget" :input
                                       delete-subscription-target-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/subscription-targets/{identifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-time-series-data-points
                                       :shape-name "DeleteTimeSeriesDataPoints"
                                       :input
                                       delete-time-series-data-points-input
                                       :output
                                       delete-time-series-data-points-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v2/domains/{domainIdentifier}/entities/{entityType}/{entityIdentifier}/time-series-data-points"
                                       :code 204)

(smithy/sdk/operation:define-operation disassociate-environment-role
                                       :shape-name
                                       "DisassociateEnvironmentRole" :input
                                       disassociate-environment-role-input
                                       :output
                                       disassociate-environment-role-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/roles/{environmentRoleArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-asset :shape-name "GetAsset" :input
                                       get-asset-input :output get-asset-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/assets/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-asset-filter :shape-name
                                       "GetAssetFilter" :input
                                       get-asset-filter-input :output
                                       get-asset-filter-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/assets/{assetIdentifier}/filters/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-asset-type :shape-name
                                       "GetAssetType" :input
                                       get-asset-type-input :output
                                       get-asset-type-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/asset-types/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-connection :shape-name
                                       "GetConnection" :input
                                       get-connection-input :output
                                       get-connection-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/connections/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-data-product :shape-name
                                       "GetDataProduct" :input
                                       get-data-product-input :output
                                       get-data-product-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/data-products/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-data-source :shape-name
                                       "GetDataSource" :input
                                       get-data-source-input :output
                                       get-data-source-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/data-sources/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-data-source-run :shape-name
                                       "GetDataSourceRun" :input
                                       get-data-source-run-input :output
                                       get-data-source-run-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/data-source-runs/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-domain :shape-name "GetDomain"
                                       :input get-domain-input :output
                                       get-domain-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{identifier}" :code 200)

(smithy/sdk/operation:define-operation get-domain-unit :shape-name
                                       "GetDomainUnit" :input
                                       get-domain-unit-input :output
                                       get-domain-unit-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/domain-units/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-environment :shape-name
                                       "GetEnvironment" :input
                                       get-environment-input :output
                                       get-environment-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/environments/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-environment-action :shape-name
                                       "GetEnvironmentAction" :input
                                       get-environment-action-input :output
                                       get-environment-action-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/actions/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-environment-blueprint :shape-name
                                       "GetEnvironmentBlueprint" :input
                                       get-environment-blueprint-input :output
                                       get-environment-blueprint-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/environment-blueprints/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-environment-blueprint-configuration
                                       :shape-name
                                       "GetEnvironmentBlueprintConfiguration"
                                       :input
                                       get-environment-blueprint-configuration-input
                                       :output
                                       get-environment-blueprint-configuration-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/environment-blueprint-configurations/{environmentBlueprintIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-environment-credentials :shape-name
                                       "GetEnvironmentCredentials" :input
                                       get-environment-credentials-input
                                       :output
                                       get-environment-credentials-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/credentials"
                                       :code 200)

(smithy/sdk/operation:define-operation get-environment-profile :shape-name
                                       "GetEnvironmentProfile" :input
                                       get-environment-profile-input :output
                                       get-environment-profile-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/environment-profiles/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-form-type :shape-name "GetFormType"
                                       :input get-form-type-input :output
                                       get-form-type-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/form-types/{formTypeIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-glossary :shape-name "GetGlossary"
                                       :input get-glossary-input :output
                                       get-glossary-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/glossaries/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-glossary-term :shape-name
                                       "GetGlossaryTerm" :input
                                       get-glossary-term-input :output
                                       get-glossary-term-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/glossary-terms/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-group-profile :shape-name
                                       "GetGroupProfile" :input
                                       get-group-profile-input :output
                                       get-group-profile-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/group-profiles/{groupIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-iam-portal-login-url :shape-name
                                       "GetIamPortalLoginUrl" :input
                                       get-iam-portal-login-url-input :output
                                       get-iam-portal-login-url-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/get-portal-login-url"
                                       :code 200)

(smithy/sdk/operation:define-operation get-job-run :shape-name "GetJobRun"
                                       :input get-job-run-input :output
                                       get-job-run-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/jobRuns/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-lineage-event :shape-name
                                       "GetLineageEvent" :input
                                       get-lineage-event-input :output
                                       get-lineage-event-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/lineage/events/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-lineage-node :shape-name
                                       "GetLineageNode" :input
                                       get-lineage-node-input :output
                                       get-lineage-node-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/lineage/nodes/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-listing :shape-name "GetListing"
                                       :input get-listing-input :output
                                       get-listing-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/listings/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-metadata-generation-run :shape-name
                                       "GetMetadataGenerationRun" :input
                                       get-metadata-generation-run-input
                                       :output
                                       get-metadata-generation-run-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/metadata-generation-runs/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-project :shape-name "GetProject"
                                       :input get-project-input :output
                                       get-project-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/projects/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-project-profile :shape-name
                                       "GetProjectProfile" :input
                                       get-project-profile-input :output
                                       get-project-profile-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/project-profiles/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-rule :shape-name "GetRule" :input
                                       get-rule-input :output get-rule-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/rules/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-subscription :shape-name
                                       "GetSubscription" :input
                                       get-subscription-input :output
                                       get-subscription-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/subscriptions/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-subscription-grant :shape-name
                                       "GetSubscriptionGrant" :input
                                       get-subscription-grant-input :output
                                       get-subscription-grant-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/subscription-grants/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-subscription-request-details
                                       :shape-name
                                       "GetSubscriptionRequestDetails" :input
                                       get-subscription-request-details-input
                                       :output
                                       get-subscription-request-details-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/subscription-requests/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-subscription-target :shape-name
                                       "GetSubscriptionTarget" :input
                                       get-subscription-target-input :output
                                       get-subscription-target-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/subscription-targets/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-time-series-data-point :shape-name
                                       "GetTimeSeriesDataPoint" :input
                                       get-time-series-data-point-input :output
                                       get-time-series-data-point-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/entities/{entityType}/{entityIdentifier}/time-series-data-points/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-user-profile :shape-name
                                       "GetUserProfile" :input
                                       get-user-profile-input :output
                                       get-user-profile-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/user-profiles/{userIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-asset-filters :shape-name
                                       "ListAssetFilters" :input
                                       list-asset-filters-input :output
                                       list-asset-filters-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/assets/{assetIdentifier}/filters"
                                       :code 200)

(smithy/sdk/operation:define-operation list-asset-revisions :shape-name
                                       "ListAssetRevisions" :input
                                       list-asset-revisions-input :output
                                       list-asset-revisions-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/assets/{identifier}/revisions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-connections :shape-name
                                       "ListConnections" :input
                                       list-connections-input :output
                                       list-connections-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/connections"
                                       :code 200)

(smithy/sdk/operation:define-operation list-data-product-revisions :shape-name
                                       "ListDataProductRevisions" :input
                                       list-data-product-revisions-input
                                       :output
                                       list-data-product-revisions-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/data-products/{identifier}/revisions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-data-source-run-activities
                                       :shape-name
                                       "ListDataSourceRunActivities" :input
                                       list-data-source-run-activities-input
                                       :output
                                       list-data-source-run-activities-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/data-source-runs/{identifier}/activities"
                                       :code 200)

(smithy/sdk/operation:define-operation list-data-source-runs :shape-name
                                       "ListDataSourceRuns" :input
                                       list-data-source-runs-input :output
                                       list-data-source-runs-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/data-sources/{dataSourceIdentifier}/runs"
                                       :code 200)

(smithy/sdk/operation:define-operation list-data-sources :shape-name
                                       "ListDataSources" :input
                                       list-data-sources-input :output
                                       list-data-sources-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/data-sources"
                                       :code 200)

(smithy/sdk/operation:define-operation list-domain-units-for-parent :shape-name
                                       "ListDomainUnitsForParent" :input
                                       list-domain-units-for-parent-input
                                       :output
                                       list-domain-units-for-parent-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/domain-units"
                                       :code 200)

(smithy/sdk/operation:define-operation list-domains :shape-name "ListDomains"
                                       :input list-domains-input :output
                                       list-domains-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/v2/domains" :code
                                       200)

(smithy/sdk/operation:define-operation list-entity-owners :shape-name
                                       "ListEntityOwners" :input
                                       list-entity-owners-input :output
                                       list-entity-owners-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/entities/{entityType}/{entityIdentifier}/owners"
                                       :code 200)

(smithy/sdk/operation:define-operation list-environment-actions :shape-name
                                       "ListEnvironmentActions" :input
                                       list-environment-actions-input :output
                                       list-environment-actions-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/actions"
                                       :code 200)

(smithy/sdk/operation:define-operation
 list-environment-blueprint-configurations :shape-name
 "ListEnvironmentBlueprintConfigurations" :input
 list-environment-blueprint-configurations-input :output
 list-environment-blueprint-configurations-output :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception validation-exception)
 :method "GET" :uri
 "/v2/domains/{domainIdentifier}/environment-blueprint-configurations" :code
 200)

(smithy/sdk/operation:define-operation list-environment-blueprints :shape-name
                                       "ListEnvironmentBlueprints" :input
                                       list-environment-blueprints-input
                                       :output
                                       list-environment-blueprints-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/environment-blueprints"
                                       :code 200)

(smithy/sdk/operation:define-operation list-environment-profiles :shape-name
                                       "ListEnvironmentProfiles" :input
                                       list-environment-profiles-input :output
                                       list-environment-profiles-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/environment-profiles"
                                       :code 200)

(smithy/sdk/operation:define-operation list-environments :shape-name
                                       "ListEnvironments" :input
                                       list-environments-input :output
                                       list-environments-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/environments"
                                       :code 200)

(smithy/sdk/operation:define-operation list-job-runs :shape-name "ListJobRuns"
                                       :input list-job-runs-input :output
                                       list-job-runs-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/jobs/{jobIdentifier}/runs"
                                       :code 200)

(smithy/sdk/operation:define-operation list-lineage-events :shape-name
                                       "ListLineageEvents" :input
                                       list-lineage-events-input :output
                                       list-lineage-events-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/lineage/events"
                                       :code 200)

(smithy/sdk/operation:define-operation list-lineage-node-history :shape-name
                                       "ListLineageNodeHistory" :input
                                       list-lineage-node-history-input :output
                                       list-lineage-node-history-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/lineage/nodes/{identifier}/history"
                                       :code 200)

(smithy/sdk/operation:define-operation list-metadata-generation-runs
                                       :shape-name "ListMetadataGenerationRuns"
                                       :input
                                       list-metadata-generation-runs-input
                                       :output
                                       list-metadata-generation-runs-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/metadata-generation-runs"
                                       :code 200)

(smithy/sdk/operation:define-operation list-notifications :shape-name
                                       "ListNotifications" :input
                                       list-notifications-input :output
                                       list-notifications-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/notifications"
                                       :code 200)

(smithy/sdk/operation:define-operation list-policy-grants :shape-name
                                       "ListPolicyGrants" :input
                                       list-policy-grants-input :output
                                       list-policy-grants-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/policies/managed/{entityType}/{entityIdentifier}/grants"
                                       :code 200)

(smithy/sdk/operation:define-operation list-project-memberships :shape-name
                                       "ListProjectMemberships" :input
                                       list-project-memberships-input :output
                                       list-project-memberships-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/projects/{projectIdentifier}/memberships"
                                       :code 200)

(smithy/sdk/operation:define-operation list-project-profiles :shape-name
                                       "ListProjectProfiles" :input
                                       list-project-profiles-input :output
                                       list-project-profiles-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/project-profiles"
                                       :code 200)

(smithy/sdk/operation:define-operation list-projects :shape-name "ListProjects"
                                       :input list-projects-input :output
                                       list-projects-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/projects"
                                       :code 200)

(smithy/sdk/operation:define-operation list-rules :shape-name "ListRules"
                                       :input list-rules-input :output
                                       list-rules-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/list-rules/{targetType}/{targetIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-subscription-grants :shape-name
                                       "ListSubscriptionGrants" :input
                                       list-subscription-grants-input :output
                                       list-subscription-grants-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/subscription-grants"
                                       :code 200)

(smithy/sdk/operation:define-operation list-subscription-requests :shape-name
                                       "ListSubscriptionRequests" :input
                                       list-subscription-requests-input :output
                                       list-subscription-requests-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/subscription-requests"
                                       :code 200)

(smithy/sdk/operation:define-operation list-subscription-targets :shape-name
                                       "ListSubscriptionTargets" :input
                                       list-subscription-targets-input :output
                                       list-subscription-targets-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/subscription-targets"
                                       :code 200)

(smithy/sdk/operation:define-operation list-subscriptions :shape-name
                                       "ListSubscriptions" :input
                                       list-subscriptions-input :output
                                       list-subscriptions-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/subscriptions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation list-time-series-data-points :shape-name
                                       "ListTimeSeriesDataPoints" :input
                                       list-time-series-data-points-input
                                       :output
                                       list-time-series-data-points-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/domains/{domainIdentifier}/entities/{entityType}/{entityIdentifier}/time-series-data-points"
                                       :code 200)

(smithy/sdk/operation:define-operation post-lineage-event :shape-name
                                       "PostLineageEvent" :input
                                       post-lineage-event-input :output
                                       post-lineage-event-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/lineage/events"
                                       :code 200)

(smithy/sdk/operation:define-operation post-time-series-data-points :shape-name
                                       "PostTimeSeriesDataPoints" :input
                                       post-time-series-data-points-input
                                       :output
                                       post-time-series-data-points-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/entities/{entityType}/{entityIdentifier}/time-series-data-points"
                                       :code 201)

(smithy/sdk/operation:define-operation put-environment-blueprint-configuration
                                       :shape-name
                                       "PutEnvironmentBlueprintConfiguration"
                                       :input
                                       put-environment-blueprint-configuration-input
                                       :output
                                       put-environment-blueprint-configuration-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/v2/domains/{domainIdentifier}/environment-blueprint-configurations/{environmentBlueprintIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation reject-predictions :shape-name
                                       "RejectPredictions" :input
                                       reject-predictions-input :output
                                       reject-predictions-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/v2/domains/{domainIdentifier}/assets/{identifier}/reject-predictions"
                                       :code 200)

(smithy/sdk/operation:define-operation reject-subscription-request :shape-name
                                       "RejectSubscriptionRequest" :input
                                       reject-subscription-request-input
                                       :output
                                       reject-subscription-request-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/v2/domains/{domainIdentifier}/subscription-requests/{identifier}/reject"
                                       :code 200)

(smithy/sdk/operation:define-operation remove-entity-owner :shape-name
                                       "RemoveEntityOwner" :input
                                       remove-entity-owner-input :output
                                       remove-entity-owner-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/entities/{entityType}/{entityIdentifier}/removeOwner"
                                       :code 204)

(smithy/sdk/operation:define-operation remove-policy-grant :shape-name
                                       "RemovePolicyGrant" :input
                                       remove-policy-grant-input :output
                                       remove-policy-grant-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/policies/managed/{entityType}/{entityIdentifier}/removeGrant"
                                       :code 204)

(smithy/sdk/operation:define-operation revoke-subscription :shape-name
                                       "RevokeSubscription" :input
                                       revoke-subscription-input :output
                                       revoke-subscription-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/v2/domains/{domainIdentifier}/subscriptions/{identifier}/revoke"
                                       :code 200)

(smithy/sdk/operation:define-operation search :shape-name "Search" :input
                                       search-input :output search-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/search"
                                       :code 200)

(smithy/sdk/operation:define-operation search-group-profiles :shape-name
                                       "SearchGroupProfiles" :input
                                       search-group-profiles-input :output
                                       search-group-profiles-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/search-group-profiles"
                                       :code 200)

(smithy/sdk/operation:define-operation search-listings :shape-name
                                       "SearchListings" :input
                                       search-listings-input :output
                                       search-listings-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/listings/search"
                                       :code 200)

(smithy/sdk/operation:define-operation search-types :shape-name "SearchTypes"
                                       :input search-types-input :output
                                       search-types-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/types-search"
                                       :code 200)

(smithy/sdk/operation:define-operation search-user-profiles :shape-name
                                       "SearchUserProfiles" :input
                                       search-user-profiles-input :output
                                       search-user-profiles-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/search-user-profiles"
                                       :code 200)

(smithy/sdk/operation:define-operation start-data-source-run :shape-name
                                       "StartDataSourceRun" :input
                                       start-data-source-run-input :output
                                       start-data-source-run-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/data-sources/{dataSourceIdentifier}/runs"
                                       :code 200)

(smithy/sdk/operation:define-operation start-metadata-generation-run
                                       :shape-name "StartMetadataGenerationRun"
                                       :input
                                       start-metadata-generation-run-input
                                       :output
                                       start-metadata-generation-run-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/domains/{domainIdentifier}/metadata-generation-runs"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation update-asset-filter :shape-name
                                       "UpdateAssetFilter" :input
                                       update-asset-filter-input :output
                                       update-asset-filter-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/v2/domains/{domainIdentifier}/assets/{assetIdentifier}/filters/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-connection :shape-name
                                       "UpdateConnection" :input
                                       update-connection-input :output
                                       update-connection-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/v2/domains/{domainIdentifier}/connections/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-data-source :shape-name
                                       "UpdateDataSource" :input
                                       update-data-source-input :output
                                       update-data-source-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/v2/domains/{domainIdentifier}/data-sources/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-domain :shape-name "UpdateDomain"
                                       :input update-domain-input :output
                                       update-domain-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/v2/domains/{identifier}" :code 200)

(smithy/sdk/operation:define-operation update-domain-unit :shape-name
                                       "UpdateDomainUnit" :input
                                       update-domain-unit-input :output
                                       update-domain-unit-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/v2/domains/{domainIdentifier}/domain-units/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-environment :shape-name
                                       "UpdateEnvironment" :input
                                       update-environment-input :output
                                       update-environment-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/v2/domains/{domainIdentifier}/environments/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-environment-action :shape-name
                                       "UpdateEnvironmentAction" :input
                                       update-environment-action-input :output
                                       update-environment-action-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/actions/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-environment-profile :shape-name
                                       "UpdateEnvironmentProfile" :input
                                       update-environment-profile-input :output
                                       update-environment-profile-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/v2/domains/{domainIdentifier}/environment-profiles/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-glossary :shape-name
                                       "UpdateGlossary" :input
                                       update-glossary-input :output
                                       update-glossary-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/v2/domains/{domainIdentifier}/glossaries/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-glossary-term :shape-name
                                       "UpdateGlossaryTerm" :input
                                       update-glossary-term-input :output
                                       update-glossary-term-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/v2/domains/{domainIdentifier}/glossary-terms/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-group-profile :shape-name
                                       "UpdateGroupProfile" :input
                                       update-group-profile-input :output
                                       update-group-profile-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/v2/domains/{domainIdentifier}/group-profiles/{groupIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-project :shape-name
                                       "UpdateProject" :input
                                       update-project-input :output
                                       update-project-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/v2/domains/{domainIdentifier}/projects/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-project-profile :shape-name
                                       "UpdateProjectProfile" :input
                                       update-project-profile-input :output
                                       update-project-profile-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/v2/domains/{domainIdentifier}/project-profiles/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-rule :shape-name "UpdateRule"
                                       :input update-rule-input :output
                                       update-rule-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/v2/domains/{domainIdentifier}/rules/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-subscription-grant-status
                                       :shape-name
                                       "UpdateSubscriptionGrantStatus" :input
                                       update-subscription-grant-status-input
                                       :output
                                       update-subscription-grant-status-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/v2/domains/{domainIdentifier}/subscription-grants/{identifier}/status/{assetIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-subscription-request :shape-name
                                       "UpdateSubscriptionRequest" :input
                                       update-subscription-request-input
                                       :output
                                       update-subscription-request-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/v2/domains/{domainIdentifier}/subscription-requests/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-subscription-target :shape-name
                                       "UpdateSubscriptionTarget" :input
                                       update-subscription-target-input :output
                                       update-subscription-target-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/subscription-targets/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-user-profile :shape-name
                                       "UpdateUserProfile" :input
                                       update-user-profile-input :output
                                       update-user-profile-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/v2/domains/{domainIdentifier}/user-profiles/{userIdentifier}"
                                       :code 200)
