(uiop/package:define-package #:pira/cloudformation (:use)
                             (:export #:accept-terms-and-conditions #:account
                              #:account-filter-type #:account-gate-result
                              #:account-gate-status
                              #:account-gate-status-reason #:account-limit
                              #:account-limit-list #:account-list
                              #:accounts-url #:activate-organizations-access
                              #:activate-type #:after-context #:after-value
                              #:allowed-value #:allowed-values #:arn
                              #:attribute-change-type #:auto-deployment
                              #:auto-deployment-nullable #:auto-update
                              #:batch-describe-type-configurations
                              #:batch-describe-type-configurations-error
                              #:batch-describe-type-configurations-errors
                              #:before-context #:before-value #:boxed-integer
                              #:boxed-max-results #:call-as
                              #:cancel-update-stack #:capabilities
                              #:capabilities-reason #:capability #:category
                              #:causing-entity #:change #:change-action
                              #:change-set-hook
                              #:change-set-hook-resource-target-details
                              #:change-set-hook-target-details
                              #:change-set-hooks #:change-set-hooks-status
                              #:change-set-id #:change-set-name
                              #:change-set-name-or-id #:change-set-status
                              #:change-set-status-reason #:change-set-summaries
                              #:change-set-summary #:change-set-type
                              #:change-source #:change-type #:changes
                              #:client-request-token #:client-token
                              #:cloud-formation #:concurrency-mode
                              #:configuration-schema #:connection-arn
                              #:continue-update-rollback #:create-change-set
                              #:create-generated-template #:create-stack
                              #:create-stack-instances #:create-stack-refactor
                              #:create-stack-set #:creation-time
                              #:deactivate-organizations-access
                              #:deactivate-type #:delete-change-set
                              #:delete-generated-template #:delete-stack
                              #:delete-stack-instances #:delete-stack-set
                              #:deletion-mode #:deletion-time
                              #:deployment-targets #:deprecated-status
                              #:deregister-type #:describe-account-limits
                              #:describe-change-set #:describe-change-set-hooks
                              #:describe-generated-template
                              #:describe-organizations-access
                              #:describe-publisher #:describe-resource-scan
                              #:describe-stack-drift-detection-status
                              #:describe-stack-events #:describe-stack-instance
                              #:describe-stack-refactor
                              #:describe-stack-resource
                              #:describe-stack-resource-drifts
                              #:describe-stack-resources #:describe-stack-set
                              #:describe-stack-set-operation #:describe-stacks
                              #:describe-type #:describe-type-registration
                              #:description #:detailed-status
                              #:detect-stack-drift
                              #:detect-stack-resource-drift
                              #:detect-stack-set-drift #:detection-reason
                              #:difference-type #:disable-rollback
                              #:drifted-stack-instances-count
                              #:enable-stack-creation
                              #:enable-termination-protection #:error-code
                              #:error-message #:estimate-template-cost
                              #:evaluation-type #:event-id #:execute-change-set
                              #:execute-stack-refactor #:execution-role-name
                              #:execution-status #:execution-status-reason
                              #:export #:export-name #:export-value #:exports
                              #:failed-stack-instances-count
                              #:failure-tolerance-count
                              #:failure-tolerance-percentage
                              #:generated-template-deletion-policy
                              #:generated-template-id #:generated-template-name
                              #:generated-template-resource-status
                              #:generated-template-status
                              #:generated-template-update-replace-policy
                              #:get-generated-template #:get-stack-policy
                              #:get-template #:get-template-summary
                              #:handler-error-code #:hook-failure-mode
                              #:hook-invocation-count #:hook-invocation-point
                              #:hook-result-id #:hook-result-summaries
                              #:hook-result-summary #:hook-status
                              #:hook-status-reason #:hook-target-type
                              #:hook-target-type-name #:hook-type
                              #:hook-type-configuration-version-id
                              #:hook-type-name #:hook-type-version-id
                              #:identity-provider #:import-existing-resources
                              #:import-stacks-to-stack-set #:imports
                              #:in-progress-stack-instances-count
                              #:in-sync-stack-instances-count
                              #:include-nested-stacks #:include-property-values
                              #:is-activated #:is-default-configuration
                              #:is-default-version #:jazz-logical-resource-ids
                              #:jazz-resource-identifier-properties
                              #:jazz-resource-identifier-property-key
                              #:jazz-resource-identifier-property-value #:key
                              #:last-updated-time #:limit-name #:limit-value
                              #:list-change-sets #:list-exports
                              #:list-generated-templates #:list-hook-results
                              #:list-hook-results-target-type #:list-imports
                              #:list-resource-scan-related-resources
                              #:list-resource-scan-resources
                              #:list-resource-scans
                              #:list-stack-instance-resource-drifts
                              #:list-stack-instances
                              #:list-stack-refactor-actions
                              #:list-stack-refactors #:list-stack-resources
                              #:list-stack-set-auto-deployment-targets
                              #:list-stack-set-operation-results
                              #:list-stack-set-operations #:list-stack-sets
                              #:list-stacks #:list-type-registrations
                              #:list-type-versions #:list-types
                              #:log-group-name #:logging-config
                              #:logical-id-hierarchy #:logical-resource-id
                              #:logical-resource-ids #:major-version
                              #:managed-by-stack #:managed-execution
                              #:managed-execution-nullable
                              #:max-concurrent-count
                              #:max-concurrent-percentage #:max-results
                              #:metadata #:module-info
                              #:monitoring-time-in-minutes #:next-token
                              #:no-echo #:notification-arn #:notification-arns
                              #:number-of-resources #:on-failure
                              #:on-stack-failure #:operation-result-filter
                              #:operation-result-filter-name
                              #:operation-result-filter-values
                              #:operation-result-filters #:operation-status
                              #:optional-secure-url #:organization-status
                              #:organizational-unit-id
                              #:organizational-unit-id-list #:output
                              #:output-key #:output-value #:outputs #:parameter
                              #:parameter-constraints #:parameter-declaration
                              #:parameter-declarations #:parameter-key
                              #:parameter-type #:parameter-value #:parameters
                              #:percentage-completed #:permission-models
                              #:physical-resource-id
                              #:physical-resource-id-context
                              #:physical-resource-id-context-key-value-pair
                              #:policy-action #:private-type-arn #:properties
                              #:property-description #:property-difference
                              #:property-differences #:property-name
                              #:property-path #:property-value
                              #:provisioning-type #:public-version-number
                              #:publish-type #:publisher-id #:publisher-name
                              #:publisher-profile #:publisher-status #:reason
                              #:record-handler-progress #:refresh-all-resources
                              #:region #:region-concurrency-type #:region-list
                              #:register-publisher #:register-type
                              #:registration-status #:registration-token
                              #:registration-token-list #:registry-type
                              #:related-resources #:replacement #:request-token
                              #:required-activated-type
                              #:required-activated-types #:required-property
                              #:requires-recreation #:resource-attribute
                              #:resource-change #:resource-change-detail
                              #:resource-change-details #:resource-definition
                              #:resource-definitions #:resource-detail
                              #:resource-details #:resource-identifier
                              #:resource-identifier-properties
                              #:resource-identifier-property-key
                              #:resource-identifier-property-value
                              #:resource-identifier-summaries
                              #:resource-identifier-summary
                              #:resource-identifiers #:resource-location
                              #:resource-mapping #:resource-mappings
                              #:resource-model #:resource-properties
                              #:resource-property-path #:resource-scan-id
                              #:resource-scan-status
                              #:resource-scan-status-reason
                              #:resource-scan-summaries #:resource-scan-summary
                              #:resource-scanner-max-results
                              #:resource-signal-status
                              #:resource-signal-unique-id #:resource-status
                              #:resource-status-reason
                              #:resource-target-definition #:resource-to-import
                              #:resource-to-skip #:resource-type
                              #:resource-type-filter #:resource-type-filters
                              #:resource-type-prefix #:resource-types
                              #:resources-failed #:resources-pending
                              #:resources-processing #:resources-read
                              #:resources-scanned #:resources-succeeded
                              #:resources-to-import #:resources-to-skip
                              #:retain-except-on-create #:retain-resources
                              #:retain-stacks #:retain-stacks-nullable
                              #:retain-stacks-on-account-removal-nullable
                              #:role-arn #:role-arn2 #:rollback-configuration
                              #:rollback-stack #:rollback-trigger
                              #:rollback-triggers #:s3bucket #:s3url
                              #:scan-filter #:scan-filters #:scan-type
                              #:scanned-resource #:scanned-resource-identifier
                              #:scanned-resource-identifiers
                              #:scanned-resources #:scope #:set-stack-policy
                              #:set-type-configuration
                              #:set-type-default-version #:signal-resource
                              #:stack #:stack-definition #:stack-definitions
                              #:stack-drift-detection-id
                              #:stack-drift-detection-status
                              #:stack-drift-detection-status-reason
                              #:stack-drift-information
                              #:stack-drift-information-summary
                              #:stack-drift-status #:stack-event #:stack-events
                              #:stack-id #:stack-id-list #:stack-ids
                              #:stack-ids-url #:stack-instance
                              #:stack-instance-comprehensive-status
                              #:stack-instance-detailed-status
                              #:stack-instance-filter
                              #:stack-instance-filter-name
                              #:stack-instance-filter-values
                              #:stack-instance-filters
                              #:stack-instance-resource-drifts-summaries
                              #:stack-instance-resource-drifts-summary
                              #:stack-instance-status
                              #:stack-instance-summaries
                              #:stack-instance-summary #:stack-name
                              #:stack-name-or-id #:stack-policy-body
                              #:stack-policy-during-update-body
                              #:stack-policy-during-update-url
                              #:stack-policy-url #:stack-refactor-action
                              #:stack-refactor-action-entity
                              #:stack-refactor-action-type
                              #:stack-refactor-actions
                              #:stack-refactor-detection
                              #:stack-refactor-execution-status
                              #:stack-refactor-execution-status-filter
                              #:stack-refactor-id
                              #:stack-refactor-resource-identifier
                              #:stack-refactor-status
                              #:stack-refactor-status-reason
                              #:stack-refactor-summaries
                              #:stack-refactor-summary
                              #:stack-refactor-tag-resources
                              #:stack-refactor-untag-resources #:stack-resource
                              #:stack-resource-detail #:stack-resource-drift
                              #:stack-resource-drift-information
                              #:stack-resource-drift-information-summary
                              #:stack-resource-drift-status
                              #:stack-resource-drift-status-filters
                              #:stack-resource-drift-status-reason
                              #:stack-resource-drifts
                              #:stack-resource-summaries
                              #:stack-resource-summary #:stack-resources
                              #:stack-set #:stack-set-arn
                              #:stack-set-auto-deployment-target-summaries
                              #:stack-set-auto-deployment-target-summary
                              #:stack-set-drift-detection-details
                              #:stack-set-drift-detection-status
                              #:stack-set-drift-status #:stack-set-id
                              #:stack-set-name #:stack-set-name-or-id
                              #:stack-set-operation
                              #:stack-set-operation-action
                              #:stack-set-operation-preferences
                              #:stack-set-operation-result-status
                              #:stack-set-operation-result-summaries
                              #:stack-set-operation-result-summary
                              #:stack-set-operation-status
                              #:stack-set-operation-status-details
                              #:stack-set-operation-status-reason
                              #:stack-set-operation-summaries
                              #:stack-set-operation-summary #:stack-set-status
                              #:stack-set-summaries #:stack-set-summary
                              #:stack-status #:stack-status-filter
                              #:stack-status-reason #:stack-summaries
                              #:stack-summary #:stacks #:stage-list
                              #:start-resource-scan #:status-message
                              #:stop-stack-set-operation
                              #:supported-major-version
                              #:supported-major-versions #:tag #:tag-key
                              #:tag-value #:tags #:template-body
                              #:template-configuration #:template-description
                              #:template-format #:template-parameter
                              #:template-parameters #:template-progress
                              #:template-stage #:template-status-reason
                              #:template-summaries #:template-summary
                              #:template-summary-config #:template-url
                              #:test-type #:third-party-type
                              #:third-party-type-arn #:timeout-minutes
                              #:timestamp #:total-stack-instances-count
                              #:total-warnings #:transform-name
                              #:transforms-list
                              #:treat-unrecognized-resource-types-as-warnings
                              #:type #:type-arn #:type-configuration
                              #:type-configuration-alias
                              #:type-configuration-arn
                              #:type-configuration-details
                              #:type-configuration-details-list
                              #:type-configuration-identifier
                              #:type-configuration-identifiers #:type-filters
                              #:type-hierarchy #:type-name #:type-name-prefix
                              #:type-schema #:type-summaries #:type-summary
                              #:type-tests-status
                              #:type-tests-status-description #:type-version-id
                              #:type-version-summaries #:type-version-summary
                              #:unprocessed-type-configurations
                              #:update-generated-template #:update-stack
                              #:update-stack-instances #:update-stack-set
                              #:update-termination-protection #:url
                              #:use-previous-template #:use-previous-value
                              #:validate-template #:value #:version
                              #:version-bump #:visibility #:warning-detail
                              #:warning-details #:warning-properties
                              #:warning-property #:warning-type #:warnings))
(common-lisp:in-package #:pira/cloudformation)

(smithy/sdk/service:define-service cloud-formation :shape-name "CloudFormation"
                                   :version "2010-05-15" :title
                                   "AWS CloudFormation" :operations
                                   '(activate-organizations-access
                                     activate-type
                                     batch-describe-type-configurations
                                     cancel-update-stack
                                     continue-update-rollback create-change-set
                                     create-generated-template create-stack
                                     create-stack-instances
                                     create-stack-refactor create-stack-set
                                     deactivate-organizations-access
                                     deactivate-type delete-change-set
                                     delete-generated-template delete-stack
                                     delete-stack-instances delete-stack-set
                                     deregister-type describe-account-limits
                                     describe-change-set
                                     describe-change-set-hooks
                                     describe-generated-template
                                     describe-organizations-access
                                     describe-publisher describe-resource-scan
                                     describe-stack-drift-detection-status
                                     describe-stack-events
                                     describe-stack-instance
                                     describe-stack-refactor
                                     describe-stack-resource
                                     describe-stack-resource-drifts
                                     describe-stack-resources describe-stacks
                                     describe-stack-set
                                     describe-stack-set-operation describe-type
                                     describe-type-registration
                                     detect-stack-drift
                                     detect-stack-resource-drift
                                     detect-stack-set-drift
                                     estimate-template-cost execute-change-set
                                     execute-stack-refactor
                                     get-generated-template get-stack-policy
                                     get-template get-template-summary
                                     import-stacks-to-stack-set
                                     list-change-sets list-exports
                                     list-generated-templates list-hook-results
                                     list-imports
                                     list-resource-scan-related-resources
                                     list-resource-scan-resources
                                     list-resource-scans
                                     list-stack-instance-resource-drifts
                                     list-stack-instances
                                     list-stack-refactor-actions
                                     list-stack-refactors list-stack-resources
                                     list-stacks
                                     list-stack-set-auto-deployment-targets
                                     list-stack-set-operation-results
                                     list-stack-set-operations list-stack-sets
                                     list-type-registrations list-types
                                     list-type-versions publish-type
                                     record-handler-progress register-publisher
                                     register-type rollback-stack
                                     set-stack-policy set-type-configuration
                                     set-type-default-version signal-resource
                                     start-resource-scan
                                     stop-stack-set-operation test-type
                                     update-generated-template update-stack
                                     update-stack-instances update-stack-set
                                     update-termination-protection
                                     validate-template)
                                   :xml-namespace
                                   (:uri
                                    "http://cloudformation.amazonaws.com/doc/2010-05-15/"
                                    :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "CloudFormation")
                                      ("arnNamespace" . "cloudformation")
                                      ("cloudFormationName" . "CloudFormation")
                                      ("cloudTrailEventSource"
                                       . "cloudformation.amazonaws.com")
                                      ("endpointPrefix" . "cloudformation"))
                                     ("aws.auth#sigv4"
                                      ("name" . "cloudformation"))
                                     ("aws.protocols#awsQuery")))

(smithy/sdk/shapes:define-type accept-terms-and-conditions
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type account smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum account-filter-type
    common-lisp:nil
  (:none "NONE")
  (:intersection "INTERSECTION")
  (:difference "DIFFERENCE")
  (:union "UNION"))

(smithy/sdk/shapes:define-structure account-gate-result common-lisp:nil
                                    ((status :target-type account-gate-status
                                      :member-name "Status")
                                     (status-reason :target-type
                                      account-gate-status-reason :member-name
                                      "StatusReason"))
                                    (:shape-name "AccountGateResult"))

(smithy/sdk/shapes:define-enum account-gate-status
    common-lisp:nil
  (:succeeded "SUCCEEDED")
  (:failed "FAILED")
  (:skipped "SKIPPED"))

(smithy/sdk/shapes:define-type account-gate-status-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure account-limit common-lisp:nil
                                    ((name :target-type limit-name :member-name
                                      "Name")
                                     (value :target-type limit-value
                                      :member-name "Value"))
                                    (:shape-name "AccountLimit"))

(smithy/sdk/shapes:define-list account-limit-list :member account-limit)

(smithy/sdk/shapes:define-list account-list :member account)

(smithy/sdk/shapes:define-type accounts-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input activate-organizations-access-input
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "ActivateOrganizationsAccessInput"))

(smithy/sdk/shapes:define-output activate-organizations-access-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "ActivateOrganizationsAccessOutput"))

(smithy/sdk/shapes:define-input activate-type-input common-lisp:nil
                                ((type :target-type third-party-type
                                  :member-name "Type")
                                 (public-type-arn :target-type
                                  third-party-type-arn :member-name
                                  "PublicTypeArn")
                                 (publisher-id :target-type publisher-id
                                  :member-name "PublisherId")
                                 (type-name :target-type type-name :member-name
                                  "TypeName")
                                 (type-name-alias :target-type type-name
                                  :member-name "TypeNameAlias")
                                 (auto-update :target-type auto-update
                                  :member-name "AutoUpdate")
                                 (logging-config :target-type logging-config
                                  :member-name "LoggingConfig")
                                 (execution-role-arn :target-type role-arn2
                                  :member-name "ExecutionRoleArn")
                                 (version-bump :target-type version-bump
                                  :member-name "VersionBump")
                                 (major-version :target-type major-version
                                  :member-name "MajorVersion"))
                                (:shape-name "ActivateTypeInput"))

(smithy/sdk/shapes:define-output activate-type-output common-lisp:nil
                                 ((arn :target-type private-type-arn
                                   :member-name "Arn"))
                                 (:shape-name "ActivateTypeOutput"))

(smithy/sdk/shapes:define-type after-context smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type after-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type allowed-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list allowed-values :member allowed-value)

(smithy/sdk/shapes:define-error already-exists-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "AlreadyExistsException")
                                (:error-name "AlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum attribute-change-type
    common-lisp:nil
  (:add "Add")
  (:remove "Remove")
  (:modify "Modify"))

(smithy/sdk/shapes:define-structure auto-deployment common-lisp:nil
                                    ((enabled :target-type
                                      auto-deployment-nullable :member-name
                                      "Enabled")
                                     (retain-stacks-on-account-removal
                                      :target-type
                                      retain-stacks-on-account-removal-nullable
                                      :member-name
                                      "RetainStacksOnAccountRemoval"))
                                    (:shape-name "AutoDeployment"))

(smithy/sdk/shapes:define-type auto-deployment-nullable
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type auto-update smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure batch-describe-type-configurations-error
                                    common-lisp:nil
                                    ((error-code :target-type error-code
                                      :member-name "ErrorCode")
                                     (error-message :target-type error-message
                                      :member-name "ErrorMessage")
                                     (type-configuration-identifier
                                      :target-type
                                      type-configuration-identifier
                                      :member-name
                                      "TypeConfigurationIdentifier"))
                                    (:shape-name
                                     "BatchDescribeTypeConfigurationsError"))

(smithy/sdk/shapes:define-list batch-describe-type-configurations-errors
                               :member batch-describe-type-configurations-error)

(smithy/sdk/shapes:define-input batch-describe-type-configurations-input
                                common-lisp:nil
                                ((type-configuration-identifiers :target-type
                                  type-configuration-identifiers :required
                                  common-lisp:t :member-name
                                  "TypeConfigurationIdentifiers"))
                                (:shape-name
                                 "BatchDescribeTypeConfigurationsInput"))

(smithy/sdk/shapes:define-output batch-describe-type-configurations-output
                                 common-lisp:nil
                                 ((errors :target-type
                                   batch-describe-type-configurations-errors
                                   :member-name "Errors")
                                  (unprocessed-type-configurations :target-type
                                   unprocessed-type-configurations :member-name
                                   "UnprocessedTypeConfigurations")
                                  (type-configurations :target-type
                                   type-configuration-details-list :member-name
                                   "TypeConfigurations"))
                                 (:shape-name
                                  "BatchDescribeTypeConfigurationsOutput"))

(smithy/sdk/shapes:define-type before-context smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type before-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type boxed-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type boxed-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error cfnregistry-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "CFNRegistryException")
                                (:error-name "CFNRegistryException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum call-as
    common-lisp:nil
  (:self "SELF")
  (:delegated-admin "DELEGATED_ADMIN"))

(smithy/sdk/shapes:define-input cancel-update-stack-input common-lisp:nil
                                ((stack-name :target-type stack-name :required
                                  common-lisp:t :member-name "StackName")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken"))
                                (:shape-name "CancelUpdateStackInput"))

(smithy/sdk/shapes:define-list capabilities :member capability)

(smithy/sdk/shapes:define-type capabilities-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum capability
    common-lisp:nil
  (:capability-iam "CAPABILITY_IAM")
  (:capability-named-iam "CAPABILITY_NAMED_IAM")
  (:capability-auto-expand "CAPABILITY_AUTO_EXPAND"))

(smithy/sdk/shapes:define-enum category
    common-lisp:nil
  (:registered "REGISTERED")
  (:activated "ACTIVATED")
  (:third-party "THIRD_PARTY")
  (:aws-types "AWS_TYPES"))

(smithy/sdk/shapes:define-type causing-entity smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure change common-lisp:nil
                                    ((type :target-type change-type
                                      :member-name "Type")
                                     (hook-invocation-count :target-type
                                      hook-invocation-count :member-name
                                      "HookInvocationCount")
                                     (resource-change :target-type
                                      resource-change :member-name
                                      "ResourceChange"))
                                    (:shape-name "Change"))

(smithy/sdk/shapes:define-enum change-action
    common-lisp:nil
  (:add "Add")
  (:modify "Modify")
  (:remove "Remove")
  (:import "Import")
  (:dynamic "Dynamic"))

(smithy/sdk/shapes:define-structure change-set-hook common-lisp:nil
                                    ((invocation-point :target-type
                                      hook-invocation-point :member-name
                                      "InvocationPoint")
                                     (failure-mode :target-type
                                      hook-failure-mode :member-name
                                      "FailureMode")
                                     (type-name :target-type hook-type-name
                                      :member-name "TypeName")
                                     (type-version-id :target-type
                                      hook-type-version-id :member-name
                                      "TypeVersionId")
                                     (type-configuration-version-id
                                      :target-type
                                      hook-type-configuration-version-id
                                      :member-name
                                      "TypeConfigurationVersionId")
                                     (target-details :target-type
                                      change-set-hook-target-details
                                      :member-name "TargetDetails"))
                                    (:shape-name "ChangeSetHook"))

(smithy/sdk/shapes:define-structure change-set-hook-resource-target-details
                                    common-lisp:nil
                                    ((logical-resource-id :target-type
                                      logical-resource-id :member-name
                                      "LogicalResourceId")
                                     (resource-type :target-type
                                      hook-target-type-name :member-name
                                      "ResourceType")
                                     (resource-action :target-type
                                      change-action :member-name
                                      "ResourceAction"))
                                    (:shape-name
                                     "ChangeSetHookResourceTargetDetails"))

(smithy/sdk/shapes:define-structure change-set-hook-target-details
                                    common-lisp:nil
                                    ((target-type :target-type hook-target-type
                                      :member-name "TargetType")
                                     (resource-target-details :target-type
                                      change-set-hook-resource-target-details
                                      :member-name "ResourceTargetDetails"))
                                    (:shape-name "ChangeSetHookTargetDetails"))

(smithy/sdk/shapes:define-list change-set-hooks :member change-set-hook)

(smithy/sdk/shapes:define-enum change-set-hooks-status
    common-lisp:nil
  (:planning "PLANNING")
  (:planned "PLANNED")
  (:unavailable "UNAVAILABLE"))

(smithy/sdk/shapes:define-type change-set-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type change-set-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type change-set-name-or-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error change-set-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ChangeSetNotFoundException")
                                (:error-name "ChangeSetNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum change-set-status
    common-lisp:nil
  (:create-pending "CREATE_PENDING")
  (:create-in-progress "CREATE_IN_PROGRESS")
  (:create-complete "CREATE_COMPLETE")
  (:delete-pending "DELETE_PENDING")
  (:delete-in-progress "DELETE_IN_PROGRESS")
  (:delete-complete "DELETE_COMPLETE")
  (:delete-failed "DELETE_FAILED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-type change-set-status-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list change-set-summaries :member change-set-summary)

(smithy/sdk/shapes:define-structure change-set-summary common-lisp:nil
                                    ((stack-id :target-type stack-id
                                      :member-name "StackId")
                                     (stack-name :target-type stack-name
                                      :member-name "StackName")
                                     (change-set-id :target-type change-set-id
                                      :member-name "ChangeSetId")
                                     (change-set-name :target-type
                                      change-set-name :member-name
                                      "ChangeSetName")
                                     (execution-status :target-type
                                      execution-status :member-name
                                      "ExecutionStatus")
                                     (status :target-type change-set-status
                                      :member-name "Status")
                                     (status-reason :target-type
                                      change-set-status-reason :member-name
                                      "StatusReason")
                                     (creation-time :target-type creation-time
                                      :member-name "CreationTime")
                                     (description :target-type description
                                      :member-name "Description")
                                     (include-nested-stacks :target-type
                                      include-nested-stacks :member-name
                                      "IncludeNestedStacks")
                                     (parent-change-set-id :target-type
                                      change-set-id :member-name
                                      "ParentChangeSetId")
                                     (root-change-set-id :target-type
                                      change-set-id :member-name
                                      "RootChangeSetId")
                                     (import-existing-resources :target-type
                                      import-existing-resources :member-name
                                      "ImportExistingResources"))
                                    (:shape-name "ChangeSetSummary"))

(smithy/sdk/shapes:define-enum change-set-type
    common-lisp:nil
  (:create "CREATE")
  (:update "UPDATE")
  (:import "IMPORT"))

(smithy/sdk/shapes:define-enum change-source
    common-lisp:nil
  (:resource-reference "ResourceReference")
  (:parameter-reference "ParameterReference")
  (:resource-attribute "ResourceAttribute")
  (:direct-modification "DirectModification")
  (:automatic "Automatic"))

(smithy/sdk/shapes:define-enum change-type
    common-lisp:nil
  (:resource "Resource"))

(smithy/sdk/shapes:define-list changes :member change)

(smithy/sdk/shapes:define-type client-request-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum concurrency-mode
    common-lisp:nil
  (:strict-failure-tolerance "STRICT_FAILURE_TOLERANCE")
  (:soft-failure-tolerance "SOFT_FAILURE_TOLERANCE"))

(smithy/sdk/shapes:define-error concurrent-resources-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "ConcurrentResourcesLimitExceededException")
                                (:error-name
                                 "ConcurrentResourcesLimitExceeded")
                                (:error-code 429))

(smithy/sdk/shapes:define-type configuration-schema
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type connection-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input continue-update-rollback-input common-lisp:nil
                                ((stack-name :target-type stack-name-or-id
                                  :required common-lisp:t :member-name
                                  "StackName")
                                 (role-arn :target-type role-arn :member-name
                                  "RoleARN")
                                 (resources-to-skip :target-type
                                  resources-to-skip :member-name
                                  "ResourcesToSkip")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken"))
                                (:shape-name "ContinueUpdateRollbackInput"))

(smithy/sdk/shapes:define-output continue-update-rollback-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "ContinueUpdateRollbackOutput"))

(smithy/sdk/shapes:define-input create-change-set-input common-lisp:nil
                                ((stack-name :target-type stack-name-or-id
                                  :required common-lisp:t :member-name
                                  "StackName")
                                 (template-body :target-type template-body
                                  :member-name "TemplateBody")
                                 (template-url :target-type template-url
                                  :member-name "TemplateURL")
                                 (use-previous-template :target-type
                                  use-previous-template :member-name
                                  "UsePreviousTemplate")
                                 (parameters :target-type parameters
                                  :member-name "Parameters")
                                 (capabilities :target-type capabilities
                                  :member-name "Capabilities")
                                 (resource-types :target-type resource-types
                                  :member-name "ResourceTypes")
                                 (role-arn :target-type role-arn :member-name
                                  "RoleARN")
                                 (rollback-configuration :target-type
                                  rollback-configuration :member-name
                                  "RollbackConfiguration")
                                 (notification-arns :target-type
                                  notification-arns :member-name
                                  "NotificationARNs")
                                 (tags :target-type tags :member-name "Tags")
                                 (change-set-name :target-type change-set-name
                                  :required common-lisp:t :member-name
                                  "ChangeSetName")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken")
                                 (description :target-type description
                                  :member-name "Description")
                                 (change-set-type :target-type change-set-type
                                  :member-name "ChangeSetType")
                                 (resources-to-import :target-type
                                  resources-to-import :member-name
                                  "ResourcesToImport")
                                 (include-nested-stacks :target-type
                                  include-nested-stacks :member-name
                                  "IncludeNestedStacks")
                                 (on-stack-failure :target-type
                                  on-stack-failure :member-name
                                  "OnStackFailure")
                                 (import-existing-resources :target-type
                                  import-existing-resources :member-name
                                  "ImportExistingResources"))
                                (:shape-name "CreateChangeSetInput"))

(smithy/sdk/shapes:define-output create-change-set-output common-lisp:nil
                                 ((id :target-type change-set-id :member-name
                                   "Id")
                                  (stack-id :target-type stack-id :member-name
                                   "StackId"))
                                 (:shape-name "CreateChangeSetOutput"))

(smithy/sdk/shapes:define-input create-generated-template-input common-lisp:nil
                                ((resources :target-type resource-definitions
                                  :member-name "Resources")
                                 (generated-template-name :target-type
                                  generated-template-name :required
                                  common-lisp:t :member-name
                                  "GeneratedTemplateName")
                                 (stack-name :target-type stack-name
                                  :member-name "StackName")
                                 (template-configuration :target-type
                                  template-configuration :member-name
                                  "TemplateConfiguration"))
                                (:shape-name "CreateGeneratedTemplateInput"))

(smithy/sdk/shapes:define-output create-generated-template-output
                                 common-lisp:nil
                                 ((generated-template-id :target-type
                                   generated-template-id :member-name
                                   "GeneratedTemplateId"))
                                 (:shape-name "CreateGeneratedTemplateOutput"))

(smithy/sdk/shapes:define-input create-stack-input common-lisp:nil
                                ((stack-name :target-type stack-name :required
                                  common-lisp:t :member-name "StackName")
                                 (template-body :target-type template-body
                                  :member-name "TemplateBody")
                                 (template-url :target-type template-url
                                  :member-name "TemplateURL")
                                 (parameters :target-type parameters
                                  :member-name "Parameters")
                                 (disable-rollback :target-type
                                  disable-rollback :member-name
                                  "DisableRollback")
                                 (rollback-configuration :target-type
                                  rollback-configuration :member-name
                                  "RollbackConfiguration")
                                 (timeout-in-minutes :target-type
                                  timeout-minutes :member-name
                                  "TimeoutInMinutes")
                                 (notification-arns :target-type
                                  notification-arns :member-name
                                  "NotificationARNs")
                                 (capabilities :target-type capabilities
                                  :member-name "Capabilities")
                                 (resource-types :target-type resource-types
                                  :member-name "ResourceTypes")
                                 (role-arn :target-type role-arn :member-name
                                  "RoleARN")
                                 (on-failure :target-type on-failure
                                  :member-name "OnFailure")
                                 (stack-policy-body :target-type
                                  stack-policy-body :member-name
                                  "StackPolicyBody")
                                 (stack-policy-url :target-type
                                  stack-policy-url :member-name
                                  "StackPolicyURL")
                                 (tags :target-type tags :member-name "Tags")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (enable-termination-protection :target-type
                                  enable-termination-protection :member-name
                                  "EnableTerminationProtection")
                                 (retain-except-on-create :target-type
                                  retain-except-on-create :member-name
                                  "RetainExceptOnCreate"))
                                (:shape-name "CreateStackInput"))

(smithy/sdk/shapes:define-input create-stack-instances-input common-lisp:nil
                                ((stack-set-name :target-type stack-set-name
                                  :required common-lisp:t :member-name
                                  "StackSetName")
                                 (accounts :target-type account-list
                                  :member-name "Accounts")
                                 (deployment-targets :target-type
                                  deployment-targets :member-name
                                  "DeploymentTargets")
                                 (regions :target-type region-list :required
                                  common-lisp:t :member-name "Regions")
                                 (parameter-overrides :target-type parameters
                                  :member-name "ParameterOverrides")
                                 (operation-preferences :target-type
                                  stack-set-operation-preferences :member-name
                                  "OperationPreferences")
                                 (operation-id :target-type
                                  client-request-token :member-name
                                  "OperationId")
                                 (call-as :target-type call-as :member-name
                                  "CallAs"))
                                (:shape-name "CreateStackInstancesInput"))

(smithy/sdk/shapes:define-output create-stack-instances-output common-lisp:nil
                                 ((operation-id :target-type
                                   client-request-token :member-name
                                   "OperationId"))
                                 (:shape-name "CreateStackInstancesOutput"))

(smithy/sdk/shapes:define-output create-stack-output common-lisp:nil
                                 ((stack-id :target-type stack-id :member-name
                                   "StackId"))
                                 (:shape-name "CreateStackOutput"))

(smithy/sdk/shapes:define-input create-stack-refactor-input common-lisp:nil
                                ((description :target-type description
                                  :member-name "Description")
                                 (enable-stack-creation :target-type
                                  enable-stack-creation :member-name
                                  "EnableStackCreation")
                                 (resource-mappings :target-type
                                  resource-mappings :member-name
                                  "ResourceMappings")
                                 (stack-definitions :target-type
                                  stack-definitions :required common-lisp:t
                                  :member-name "StackDefinitions"))
                                (:shape-name "CreateStackRefactorInput"))

(smithy/sdk/shapes:define-output create-stack-refactor-output common-lisp:nil
                                 ((stack-refactor-id :target-type
                                   stack-refactor-id :required common-lisp:t
                                   :member-name "StackRefactorId"))
                                 (:shape-name "CreateStackRefactorOutput"))

(smithy/sdk/shapes:define-input create-stack-set-input common-lisp:nil
                                ((stack-set-name :target-type stack-set-name
                                  :required common-lisp:t :member-name
                                  "StackSetName")
                                 (description :target-type description
                                  :member-name "Description")
                                 (template-body :target-type template-body
                                  :member-name "TemplateBody")
                                 (template-url :target-type template-url
                                  :member-name "TemplateURL")
                                 (stack-id :target-type stack-id :member-name
                                  "StackId")
                                 (parameters :target-type parameters
                                  :member-name "Parameters")
                                 (capabilities :target-type capabilities
                                  :member-name "Capabilities")
                                 (tags :target-type tags :member-name "Tags")
                                 (administration-role-arn :target-type role-arn
                                  :member-name "AdministrationRoleARN")
                                 (execution-role-name :target-type
                                  execution-role-name :member-name
                                  "ExecutionRoleName")
                                 (permission-model :target-type
                                  permission-models :member-name
                                  "PermissionModel")
                                 (auto-deployment :target-type auto-deployment
                                  :member-name "AutoDeployment")
                                 (call-as :target-type call-as :member-name
                                  "CallAs")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (managed-execution :target-type
                                  managed-execution :member-name
                                  "ManagedExecution"))
                                (:shape-name "CreateStackSetInput"))

(smithy/sdk/shapes:define-output create-stack-set-output common-lisp:nil
                                 ((stack-set-id :target-type stack-set-id
                                   :member-name "StackSetId"))
                                 (:shape-name "CreateStackSetOutput"))

(smithy/sdk/shapes:define-error created-but-modified-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "CreatedButModifiedException")
                                (:error-name "CreatedButModifiedException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type creation-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input deactivate-organizations-access-input
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "DeactivateOrganizationsAccessInput"))

(smithy/sdk/shapes:define-output deactivate-organizations-access-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeactivateOrganizationsAccessOutput"))

(smithy/sdk/shapes:define-input deactivate-type-input common-lisp:nil
                                ((type-name :target-type type-name :member-name
                                  "TypeName")
                                 (type :target-type third-party-type
                                  :member-name "Type")
                                 (arn :target-type private-type-arn
                                  :member-name "Arn"))
                                (:shape-name "DeactivateTypeInput"))

(smithy/sdk/shapes:define-output deactivate-type-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeactivateTypeOutput"))

(smithy/sdk/shapes:define-input delete-change-set-input common-lisp:nil
                                ((change-set-name :target-type
                                  change-set-name-or-id :required common-lisp:t
                                  :member-name "ChangeSetName")
                                 (stack-name :target-type stack-name-or-id
                                  :member-name "StackName"))
                                (:shape-name "DeleteChangeSetInput"))

(smithy/sdk/shapes:define-output delete-change-set-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteChangeSetOutput"))

(smithy/sdk/shapes:define-input delete-generated-template-input common-lisp:nil
                                ((generated-template-name :target-type
                                  generated-template-name :required
                                  common-lisp:t :member-name
                                  "GeneratedTemplateName"))
                                (:shape-name "DeleteGeneratedTemplateInput"))

(smithy/sdk/shapes:define-input delete-stack-input common-lisp:nil
                                ((stack-name :target-type stack-name :required
                                  common-lisp:t :member-name "StackName")
                                 (retain-resources :target-type
                                  retain-resources :member-name
                                  "RetainResources")
                                 (role-arn :target-type role-arn :member-name
                                  "RoleARN")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (deletion-mode :target-type deletion-mode
                                  :member-name "DeletionMode"))
                                (:shape-name "DeleteStackInput"))

(smithy/sdk/shapes:define-input delete-stack-instances-input common-lisp:nil
                                ((stack-set-name :target-type stack-set-name
                                  :required common-lisp:t :member-name
                                  "StackSetName")
                                 (accounts :target-type account-list
                                  :member-name "Accounts")
                                 (deployment-targets :target-type
                                  deployment-targets :member-name
                                  "DeploymentTargets")
                                 (regions :target-type region-list :required
                                  common-lisp:t :member-name "Regions")
                                 (operation-preferences :target-type
                                  stack-set-operation-preferences :member-name
                                  "OperationPreferences")
                                 (retain-stacks :target-type retain-stacks
                                  :required common-lisp:t :member-name
                                  "RetainStacks")
                                 (operation-id :target-type
                                  client-request-token :member-name
                                  "OperationId")
                                 (call-as :target-type call-as :member-name
                                  "CallAs"))
                                (:shape-name "DeleteStackInstancesInput"))

(smithy/sdk/shapes:define-output delete-stack-instances-output common-lisp:nil
                                 ((operation-id :target-type
                                   client-request-token :member-name
                                   "OperationId"))
                                 (:shape-name "DeleteStackInstancesOutput"))

(smithy/sdk/shapes:define-input delete-stack-set-input common-lisp:nil
                                ((stack-set-name :target-type stack-set-name
                                  :required common-lisp:t :member-name
                                  "StackSetName")
                                 (call-as :target-type call-as :member-name
                                  "CallAs"))
                                (:shape-name "DeleteStackSetInput"))

(smithy/sdk/shapes:define-output delete-stack-set-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteStackSetOutput"))

(smithy/sdk/shapes:define-enum deletion-mode
    common-lisp:nil
  (:standard "STANDARD")
  (:force-delete-stack "FORCE_DELETE_STACK"))

(smithy/sdk/shapes:define-type deletion-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure deployment-targets common-lisp:nil
                                    ((accounts :target-type account-list
                                      :member-name "Accounts")
                                     (accounts-url :target-type accounts-url
                                      :member-name "AccountsUrl")
                                     (organizational-unit-ids :target-type
                                      organizational-unit-id-list :member-name
                                      "OrganizationalUnitIds")
                                     (account-filter-type :target-type
                                      account-filter-type :member-name
                                      "AccountFilterType"))
                                    (:shape-name "DeploymentTargets"))

(smithy/sdk/shapes:define-enum deprecated-status
    common-lisp:nil
  (:live "LIVE")
  (:deprecated "DEPRECATED"))

(smithy/sdk/shapes:define-input deregister-type-input common-lisp:nil
                                ((arn :target-type private-type-arn
                                  :member-name "Arn")
                                 (type :target-type registry-type :member-name
                                  "Type")
                                 (type-name :target-type type-name :member-name
                                  "TypeName")
                                 (version-id :target-type type-version-id
                                  :member-name "VersionId"))
                                (:shape-name "DeregisterTypeInput"))

(smithy/sdk/shapes:define-output deregister-type-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeregisterTypeOutput"))

(smithy/sdk/shapes:define-input describe-account-limits-input common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "DescribeAccountLimitsInput"))

(smithy/sdk/shapes:define-output describe-account-limits-output common-lisp:nil
                                 ((account-limits :target-type
                                   account-limit-list :member-name
                                   "AccountLimits")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeAccountLimitsOutput"))

(smithy/sdk/shapes:define-input describe-change-set-hooks-input common-lisp:nil
                                ((change-set-name :target-type
                                  change-set-name-or-id :required common-lisp:t
                                  :member-name "ChangeSetName")
                                 (stack-name :target-type stack-name-or-id
                                  :member-name "StackName")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (logical-resource-id :target-type
                                  logical-resource-id :member-name
                                  "LogicalResourceId"))
                                (:shape-name "DescribeChangeSetHooksInput"))

(smithy/sdk/shapes:define-output describe-change-set-hooks-output
                                 common-lisp:nil
                                 ((change-set-id :target-type change-set-id
                                   :member-name "ChangeSetId")
                                  (change-set-name :target-type change-set-name
                                   :member-name "ChangeSetName")
                                  (hooks :target-type change-set-hooks
                                   :member-name "Hooks")
                                  (status :target-type change-set-hooks-status
                                   :member-name "Status")
                                  (next-token :target-type next-token
                                   :member-name "NextToken")
                                  (stack-id :target-type stack-id :member-name
                                   "StackId")
                                  (stack-name :target-type stack-name
                                   :member-name "StackName"))
                                 (:shape-name "DescribeChangeSetHooksOutput"))

(smithy/sdk/shapes:define-input describe-change-set-input common-lisp:nil
                                ((change-set-name :target-type
                                  change-set-name-or-id :required common-lisp:t
                                  :member-name "ChangeSetName")
                                 (stack-name :target-type stack-name-or-id
                                  :member-name "StackName")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (include-property-values :target-type
                                  include-property-values :member-name
                                  "IncludePropertyValues"))
                                (:shape-name "DescribeChangeSetInput"))

(smithy/sdk/shapes:define-output describe-change-set-output common-lisp:nil
                                 ((change-set-name :target-type change-set-name
                                   :member-name "ChangeSetName")
                                  (change-set-id :target-type change-set-id
                                   :member-name "ChangeSetId")
                                  (stack-id :target-type stack-id :member-name
                                   "StackId")
                                  (stack-name :target-type stack-name
                                   :member-name "StackName")
                                  (description :target-type description
                                   :member-name "Description")
                                  (parameters :target-type parameters
                                   :member-name "Parameters")
                                  (creation-time :target-type creation-time
                                   :member-name "CreationTime")
                                  (execution-status :target-type
                                   execution-status :member-name
                                   "ExecutionStatus")
                                  (status :target-type change-set-status
                                   :member-name "Status")
                                  (status-reason :target-type
                                   change-set-status-reason :member-name
                                   "StatusReason")
                                  (notification-arns :target-type
                                   notification-arns :member-name
                                   "NotificationARNs")
                                  (rollback-configuration :target-type
                                   rollback-configuration :member-name
                                   "RollbackConfiguration")
                                  (capabilities :target-type capabilities
                                   :member-name "Capabilities")
                                  (tags :target-type tags :member-name "Tags")
                                  (changes :target-type changes :member-name
                                   "Changes")
                                  (next-token :target-type next-token
                                   :member-name "NextToken")
                                  (include-nested-stacks :target-type
                                   include-nested-stacks :member-name
                                   "IncludeNestedStacks")
                                  (parent-change-set-id :target-type
                                   change-set-id :member-name
                                   "ParentChangeSetId")
                                  (root-change-set-id :target-type
                                   change-set-id :member-name
                                   "RootChangeSetId")
                                  (on-stack-failure :target-type
                                   on-stack-failure :member-name
                                   "OnStackFailure")
                                  (import-existing-resources :target-type
                                   import-existing-resources :member-name
                                   "ImportExistingResources"))
                                 (:shape-name "DescribeChangeSetOutput"))

(smithy/sdk/shapes:define-input describe-generated-template-input
                                common-lisp:nil
                                ((generated-template-name :target-type
                                  generated-template-name :required
                                  common-lisp:t :member-name
                                  "GeneratedTemplateName"))
                                (:shape-name "DescribeGeneratedTemplateInput"))

(smithy/sdk/shapes:define-output describe-generated-template-output
                                 common-lisp:nil
                                 ((generated-template-id :target-type
                                   generated-template-id :member-name
                                   "GeneratedTemplateId")
                                  (generated-template-name :target-type
                                   generated-template-name :member-name
                                   "GeneratedTemplateName")
                                  (resources :target-type resource-details
                                   :member-name "Resources")
                                  (status :target-type
                                   generated-template-status :member-name
                                   "Status")
                                  (status-reason :target-type
                                   template-status-reason :member-name
                                   "StatusReason")
                                  (creation-time :target-type creation-time
                                   :member-name "CreationTime")
                                  (last-updated-time :target-type
                                   last-updated-time :member-name
                                   "LastUpdatedTime")
                                  (progress :target-type template-progress
                                   :member-name "Progress")
                                  (stack-id :target-type stack-id :member-name
                                   "StackId")
                                  (template-configuration :target-type
                                   template-configuration :member-name
                                   "TemplateConfiguration")
                                  (total-warnings :target-type total-warnings
                                   :member-name "TotalWarnings"))
                                 (:shape-name
                                  "DescribeGeneratedTemplateOutput"))

(smithy/sdk/shapes:define-input describe-organizations-access-input
                                common-lisp:nil
                                ((call-as :target-type call-as :member-name
                                  "CallAs"))
                                (:shape-name
                                 "DescribeOrganizationsAccessInput"))

(smithy/sdk/shapes:define-output describe-organizations-access-output
                                 common-lisp:nil
                                 ((status :target-type organization-status
                                   :member-name "Status"))
                                 (:shape-name
                                  "DescribeOrganizationsAccessOutput"))

(smithy/sdk/shapes:define-input describe-publisher-input common-lisp:nil
                                ((publisher-id :target-type publisher-id
                                  :member-name "PublisherId"))
                                (:shape-name "DescribePublisherInput"))

(smithy/sdk/shapes:define-output describe-publisher-output common-lisp:nil
                                 ((publisher-id :target-type publisher-id
                                   :member-name "PublisherId")
                                  (publisher-status :target-type
                                   publisher-status :member-name
                                   "PublisherStatus")
                                  (identity-provider :target-type
                                   identity-provider :member-name
                                   "IdentityProvider")
                                  (publisher-profile :target-type
                                   publisher-profile :member-name
                                   "PublisherProfile"))
                                 (:shape-name "DescribePublisherOutput"))

(smithy/sdk/shapes:define-input describe-resource-scan-input common-lisp:nil
                                ((resource-scan-id :target-type
                                  resource-scan-id :required common-lisp:t
                                  :member-name "ResourceScanId"))
                                (:shape-name "DescribeResourceScanInput"))

(smithy/sdk/shapes:define-output describe-resource-scan-output common-lisp:nil
                                 ((resource-scan-id :target-type
                                   resource-scan-id :member-name
                                   "ResourceScanId")
                                  (status :target-type resource-scan-status
                                   :member-name "Status")
                                  (status-reason :target-type
                                   resource-scan-status-reason :member-name
                                   "StatusReason")
                                  (start-time :target-type timestamp
                                   :member-name "StartTime")
                                  (end-time :target-type timestamp :member-name
                                   "EndTime")
                                  (percentage-completed :target-type
                                   percentage-completed :member-name
                                   "PercentageCompleted")
                                  (resource-types :target-type resource-types
                                   :member-name "ResourceTypes")
                                  (resources-scanned :target-type
                                   resources-scanned :member-name
                                   "ResourcesScanned")
                                  (resources-read :target-type resources-read
                                   :member-name "ResourcesRead")
                                  (scan-filters :target-type scan-filters
                                   :member-name "ScanFilters"))
                                 (:shape-name "DescribeResourceScanOutput"))

(smithy/sdk/shapes:define-input describe-stack-drift-detection-status-input
                                common-lisp:nil
                                ((stack-drift-detection-id :target-type
                                  stack-drift-detection-id :required
                                  common-lisp:t :member-name
                                  "StackDriftDetectionId"))
                                (:shape-name
                                 "DescribeStackDriftDetectionStatusInput"))

(smithy/sdk/shapes:define-output describe-stack-drift-detection-status-output
                                 common-lisp:nil
                                 ((stack-id :target-type stack-id :required
                                   common-lisp:t :member-name "StackId")
                                  (stack-drift-detection-id :target-type
                                   stack-drift-detection-id :required
                                   common-lisp:t :member-name
                                   "StackDriftDetectionId")
                                  (stack-drift-status :target-type
                                   stack-drift-status :member-name
                                   "StackDriftStatus")
                                  (detection-status :target-type
                                   stack-drift-detection-status :required
                                   common-lisp:t :member-name
                                   "DetectionStatus")
                                  (detection-status-reason :target-type
                                   stack-drift-detection-status-reason
                                   :member-name "DetectionStatusReason")
                                  (drifted-stack-resource-count :target-type
                                   boxed-integer :member-name
                                   "DriftedStackResourceCount")
                                  (timestamp :target-type timestamp :required
                                   common-lisp:t :member-name "Timestamp"))
                                 (:shape-name
                                  "DescribeStackDriftDetectionStatusOutput"))

(smithy/sdk/shapes:define-input describe-stack-events-input common-lisp:nil
                                ((stack-name :target-type stack-name
                                  :member-name "StackName")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "DescribeStackEventsInput"))

(smithy/sdk/shapes:define-output describe-stack-events-output common-lisp:nil
                                 ((stack-events :target-type stack-events
                                   :member-name "StackEvents")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeStackEventsOutput"))

(smithy/sdk/shapes:define-input describe-stack-instance-input common-lisp:nil
                                ((stack-set-name :target-type stack-set-name
                                  :required common-lisp:t :member-name
                                  "StackSetName")
                                 (stack-instance-account :target-type account
                                  :required common-lisp:t :member-name
                                  "StackInstanceAccount")
                                 (stack-instance-region :target-type region
                                  :required common-lisp:t :member-name
                                  "StackInstanceRegion")
                                 (call-as :target-type call-as :member-name
                                  "CallAs"))
                                (:shape-name "DescribeStackInstanceInput"))

(smithy/sdk/shapes:define-output describe-stack-instance-output common-lisp:nil
                                 ((stack-instance :target-type stack-instance
                                   :member-name "StackInstance"))
                                 (:shape-name "DescribeStackInstanceOutput"))

(smithy/sdk/shapes:define-input describe-stack-refactor-input common-lisp:nil
                                ((stack-refactor-id :target-type
                                  stack-refactor-id :required common-lisp:t
                                  :member-name "StackRefactorId"))
                                (:shape-name "DescribeStackRefactorInput"))

(smithy/sdk/shapes:define-output describe-stack-refactor-output common-lisp:nil
                                 ((description :target-type description
                                   :member-name "Description")
                                  (stack-refactor-id :target-type
                                   stack-refactor-id :member-name
                                   "StackRefactorId")
                                  (stack-ids :target-type stack-ids
                                   :member-name "StackIds")
                                  (execution-status :target-type
                                   stack-refactor-execution-status :member-name
                                   "ExecutionStatus")
                                  (execution-status-reason :target-type
                                   execution-status-reason :member-name
                                   "ExecutionStatusReason")
                                  (status :target-type stack-refactor-status
                                   :member-name "Status")
                                  (status-reason :target-type
                                   stack-refactor-status-reason :member-name
                                   "StatusReason"))
                                 (:shape-name "DescribeStackRefactorOutput"))

(smithy/sdk/shapes:define-input describe-stack-resource-drifts-input
                                common-lisp:nil
                                ((stack-name :target-type stack-name-or-id
                                  :required common-lisp:t :member-name
                                  "StackName")
                                 (stack-resource-drift-status-filters
                                  :target-type
                                  stack-resource-drift-status-filters
                                  :member-name
                                  "StackResourceDriftStatusFilters")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type boxed-max-results
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "DescribeStackResourceDriftsInput"))

(smithy/sdk/shapes:define-output describe-stack-resource-drifts-output
                                 common-lisp:nil
                                 ((stack-resource-drifts :target-type
                                   stack-resource-drifts :required
                                   common-lisp:t :member-name
                                   "StackResourceDrifts")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeStackResourceDriftsOutput"))

(smithy/sdk/shapes:define-input describe-stack-resource-input common-lisp:nil
                                ((stack-name :target-type stack-name :required
                                  common-lisp:t :member-name "StackName")
                                 (logical-resource-id :target-type
                                  logical-resource-id :required common-lisp:t
                                  :member-name "LogicalResourceId"))
                                (:shape-name "DescribeStackResourceInput"))

(smithy/sdk/shapes:define-output describe-stack-resource-output common-lisp:nil
                                 ((stack-resource-detail :target-type
                                   stack-resource-detail :member-name
                                   "StackResourceDetail"))
                                 (:shape-name "DescribeStackResourceOutput"))

(smithy/sdk/shapes:define-input describe-stack-resources-input common-lisp:nil
                                ((stack-name :target-type stack-name
                                  :member-name "StackName")
                                 (logical-resource-id :target-type
                                  logical-resource-id :member-name
                                  "LogicalResourceId")
                                 (physical-resource-id :target-type
                                  physical-resource-id :member-name
                                  "PhysicalResourceId"))
                                (:shape-name "DescribeStackResourcesInput"))

(smithy/sdk/shapes:define-output describe-stack-resources-output
                                 common-lisp:nil
                                 ((stack-resources :target-type stack-resources
                                   :member-name "StackResources"))
                                 (:shape-name "DescribeStackResourcesOutput"))

(smithy/sdk/shapes:define-input describe-stack-set-input common-lisp:nil
                                ((stack-set-name :target-type stack-set-name
                                  :required common-lisp:t :member-name
                                  "StackSetName")
                                 (call-as :target-type call-as :member-name
                                  "CallAs"))
                                (:shape-name "DescribeStackSetInput"))

(smithy/sdk/shapes:define-input describe-stack-set-operation-input
                                common-lisp:nil
                                ((stack-set-name :target-type stack-set-name
                                  :required common-lisp:t :member-name
                                  "StackSetName")
                                 (operation-id :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "OperationId")
                                 (call-as :target-type call-as :member-name
                                  "CallAs"))
                                (:shape-name "DescribeStackSetOperationInput"))

(smithy/sdk/shapes:define-output describe-stack-set-operation-output
                                 common-lisp:nil
                                 ((stack-set-operation :target-type
                                   stack-set-operation :member-name
                                   "StackSetOperation"))
                                 (:shape-name
                                  "DescribeStackSetOperationOutput"))

(smithy/sdk/shapes:define-output describe-stack-set-output common-lisp:nil
                                 ((stack-set :target-type stack-set
                                   :member-name "StackSet"))
                                 (:shape-name "DescribeStackSetOutput"))

(smithy/sdk/shapes:define-input describe-stacks-input common-lisp:nil
                                ((stack-name :target-type stack-name
                                  :member-name "StackName")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "DescribeStacksInput"))

(smithy/sdk/shapes:define-output describe-stacks-output common-lisp:nil
                                 ((stacks :target-type stacks :member-name
                                   "Stacks")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeStacksOutput"))

(smithy/sdk/shapes:define-input describe-type-input common-lisp:nil
                                ((type :target-type registry-type :member-name
                                  "Type")
                                 (type-name :target-type type-name :member-name
                                  "TypeName")
                                 (arn :target-type type-arn :member-name "Arn")
                                 (version-id :target-type type-version-id
                                  :member-name "VersionId")
                                 (publisher-id :target-type publisher-id
                                  :member-name "PublisherId")
                                 (public-version-number :target-type
                                  public-version-number :member-name
                                  "PublicVersionNumber"))
                                (:shape-name "DescribeTypeInput"))

(smithy/sdk/shapes:define-output describe-type-output common-lisp:nil
                                 ((arn :target-type type-arn :member-name
                                   "Arn")
                                  (type :target-type registry-type :member-name
                                   "Type")
                                  (type-name :target-type type-name
                                   :member-name "TypeName")
                                  (default-version-id :target-type
                                   type-version-id :member-name
                                   "DefaultVersionId")
                                  (is-default-version :target-type
                                   is-default-version :member-name
                                   "IsDefaultVersion")
                                  (type-tests-status :target-type
                                   type-tests-status :member-name
                                   "TypeTestsStatus")
                                  (type-tests-status-description :target-type
                                   type-tests-status-description :member-name
                                   "TypeTestsStatusDescription")
                                  (description :target-type description
                                   :member-name "Description")
                                  (schema :target-type type-schema :member-name
                                   "Schema")
                                  (provisioning-type :target-type
                                   provisioning-type :member-name
                                   "ProvisioningType")
                                  (deprecated-status :target-type
                                   deprecated-status :member-name
                                   "DeprecatedStatus")
                                  (logging-config :target-type logging-config
                                   :member-name "LoggingConfig")
                                  (required-activated-types :target-type
                                   required-activated-types :member-name
                                   "RequiredActivatedTypes")
                                  (execution-role-arn :target-type role-arn2
                                   :member-name "ExecutionRoleArn")
                                  (visibility :target-type visibility
                                   :member-name "Visibility")
                                  (source-url :target-type optional-secure-url
                                   :member-name "SourceUrl")
                                  (documentation-url :target-type
                                   optional-secure-url :member-name
                                   "DocumentationUrl")
                                  (last-updated :target-type timestamp
                                   :member-name "LastUpdated")
                                  (time-created :target-type timestamp
                                   :member-name "TimeCreated")
                                  (configuration-schema :target-type
                                   configuration-schema :member-name
                                   "ConfigurationSchema")
                                  (publisher-id :target-type publisher-id
                                   :member-name "PublisherId")
                                  (original-type-name :target-type type-name
                                   :member-name "OriginalTypeName")
                                  (original-type-arn :target-type type-arn
                                   :member-name "OriginalTypeArn")
                                  (public-version-number :target-type
                                   public-version-number :member-name
                                   "PublicVersionNumber")
                                  (latest-public-version :target-type
                                   public-version-number :member-name
                                   "LatestPublicVersion")
                                  (is-activated :target-type is-activated
                                   :member-name "IsActivated")
                                  (auto-update :target-type auto-update
                                   :member-name "AutoUpdate"))
                                 (:shape-name "DescribeTypeOutput"))

(smithy/sdk/shapes:define-input describe-type-registration-input
                                common-lisp:nil
                                ((registration-token :target-type
                                  registration-token :required common-lisp:t
                                  :member-name "RegistrationToken"))
                                (:shape-name "DescribeTypeRegistrationInput"))

(smithy/sdk/shapes:define-output describe-type-registration-output
                                 common-lisp:nil
                                 ((progress-status :target-type
                                   registration-status :member-name
                                   "ProgressStatus")
                                  (description :target-type description
                                   :member-name "Description")
                                  (type-arn :target-type type-arn :member-name
                                   "TypeArn")
                                  (type-version-arn :target-type type-arn
                                   :member-name "TypeVersionArn"))
                                 (:shape-name "DescribeTypeRegistrationOutput"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum detailed-status
    common-lisp:nil
  (:configuration-complete "CONFIGURATION_COMPLETE")
  (:validation-failed "VALIDATION_FAILED"))

(smithy/sdk/shapes:define-input detect-stack-drift-input common-lisp:nil
                                ((stack-name :target-type stack-name-or-id
                                  :required common-lisp:t :member-name
                                  "StackName")
                                 (logical-resource-ids :target-type
                                  logical-resource-ids :member-name
                                  "LogicalResourceIds"))
                                (:shape-name "DetectStackDriftInput"))

(smithy/sdk/shapes:define-output detect-stack-drift-output common-lisp:nil
                                 ((stack-drift-detection-id :target-type
                                   stack-drift-detection-id :required
                                   common-lisp:t :member-name
                                   "StackDriftDetectionId"))
                                 (:shape-name "DetectStackDriftOutput"))

(smithy/sdk/shapes:define-input detect-stack-resource-drift-input
                                common-lisp:nil
                                ((stack-name :target-type stack-name-or-id
                                  :required common-lisp:t :member-name
                                  "StackName")
                                 (logical-resource-id :target-type
                                  logical-resource-id :required common-lisp:t
                                  :member-name "LogicalResourceId"))
                                (:shape-name "DetectStackResourceDriftInput"))

(smithy/sdk/shapes:define-output detect-stack-resource-drift-output
                                 common-lisp:nil
                                 ((stack-resource-drift :target-type
                                   stack-resource-drift :required common-lisp:t
                                   :member-name "StackResourceDrift"))
                                 (:shape-name "DetectStackResourceDriftOutput"))

(smithy/sdk/shapes:define-input detect-stack-set-drift-input common-lisp:nil
                                ((stack-set-name :target-type
                                  stack-set-name-or-id :required common-lisp:t
                                  :member-name "StackSetName")
                                 (operation-preferences :target-type
                                  stack-set-operation-preferences :member-name
                                  "OperationPreferences")
                                 (operation-id :target-type
                                  client-request-token :member-name
                                  "OperationId")
                                 (call-as :target-type call-as :member-name
                                  "CallAs"))
                                (:shape-name "DetectStackSetDriftInput"))

(smithy/sdk/shapes:define-output detect-stack-set-drift-output common-lisp:nil
                                 ((operation-id :target-type
                                   client-request-token :member-name
                                   "OperationId"))
                                 (:shape-name "DetectStackSetDriftOutput"))

(smithy/sdk/shapes:define-type detection-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum difference-type
    common-lisp:nil
  (:add "ADD")
  (:remove "REMOVE")
  (:not-equal "NOT_EQUAL"))

(smithy/sdk/shapes:define-type disable-rollback smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type drifted-stack-instances-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type enable-stack-creation
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type enable-termination-protection
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type error-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input estimate-template-cost-input common-lisp:nil
                                ((template-body :target-type template-body
                                  :member-name "TemplateBody")
                                 (template-url :target-type template-url
                                  :member-name "TemplateURL")
                                 (parameters :target-type parameters
                                  :member-name "Parameters"))
                                (:shape-name "EstimateTemplateCostInput"))

(smithy/sdk/shapes:define-output estimate-template-cost-output common-lisp:nil
                                 ((url :target-type url :member-name "Url"))
                                 (:shape-name "EstimateTemplateCostOutput"))

(smithy/sdk/shapes:define-enum evaluation-type
    common-lisp:nil
  (:static "Static")
  (:dynamic "Dynamic"))

(smithy/sdk/shapes:define-type event-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input execute-change-set-input common-lisp:nil
                                ((change-set-name :target-type
                                  change-set-name-or-id :required common-lisp:t
                                  :member-name "ChangeSetName")
                                 (stack-name :target-type stack-name-or-id
                                  :member-name "StackName")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (disable-rollback :target-type
                                  disable-rollback :member-name
                                  "DisableRollback")
                                 (retain-except-on-create :target-type
                                  retain-except-on-create :member-name
                                  "RetainExceptOnCreate"))
                                (:shape-name "ExecuteChangeSetInput"))

(smithy/sdk/shapes:define-output execute-change-set-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "ExecuteChangeSetOutput"))

(smithy/sdk/shapes:define-input execute-stack-refactor-input common-lisp:nil
                                ((stack-refactor-id :target-type
                                  stack-refactor-id :required common-lisp:t
                                  :member-name "StackRefactorId"))
                                (:shape-name "ExecuteStackRefactorInput"))

(smithy/sdk/shapes:define-type execution-role-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum execution-status
    common-lisp:nil
  (:unavailable "UNAVAILABLE")
  (:available "AVAILABLE")
  (:execute-in-progress "EXECUTE_IN_PROGRESS")
  (:execute-complete "EXECUTE_COMPLETE")
  (:execute-failed "EXECUTE_FAILED")
  (:obsolete "OBSOLETE"))

(smithy/sdk/shapes:define-type execution-status-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure export common-lisp:nil
                                    ((exporting-stack-id :target-type stack-id
                                      :member-name "ExportingStackId")
                                     (name :target-type export-name
                                      :member-name "Name")
                                     (value :target-type export-value
                                      :member-name "Value"))
                                    (:shape-name "Export"))

(smithy/sdk/shapes:define-type export-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type export-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list exports :member export)

(smithy/sdk/shapes:define-type failed-stack-instances-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type failure-tolerance-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type failure-tolerance-percentage
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum generated-template-deletion-policy
    common-lisp:nil
  (:delete "DELETE")
  (:retain "RETAIN"))

(smithy/sdk/shapes:define-type generated-template-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type generated-template-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error generated-template-not-found-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "GeneratedTemplateNotFoundException")
                                (:error-name "GeneratedTemplateNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum generated-template-resource-status
    common-lisp:nil
  (:pending "PENDING")
  (:in-progress "IN_PROGRESS")
  (:failed "FAILED")
  (:complete "COMPLETE"))

(smithy/sdk/shapes:define-enum generated-template-status
    common-lisp:nil
  (:create-pending "CREATE_PENDING")
  (:update-pending "UPDATE_PENDING")
  (:delete-pending "DELETE_PENDING")
  (:create-in-progress "CREATE_IN_PROGRESS")
  (:update-in-progress "UPDATE_IN_PROGRESS")
  (:delete-in-progress "DELETE_IN_PROGRESS")
  (:failed "FAILED")
  (:complete "COMPLETE"))

(smithy/sdk/shapes:define-enum generated-template-update-replace-policy
    common-lisp:nil
  (:delete "DELETE")
  (:retain "RETAIN"))

(smithy/sdk/shapes:define-input get-generated-template-input common-lisp:nil
                                ((format :target-type template-format
                                  :member-name "Format")
                                 (generated-template-name :target-type
                                  generated-template-name :required
                                  common-lisp:t :member-name
                                  "GeneratedTemplateName"))
                                (:shape-name "GetGeneratedTemplateInput"))

(smithy/sdk/shapes:define-output get-generated-template-output common-lisp:nil
                                 ((status :target-type
                                   generated-template-status :member-name
                                   "Status")
                                  (template-body :target-type template-body
                                   :member-name "TemplateBody"))
                                 (:shape-name "GetGeneratedTemplateOutput"))

(smithy/sdk/shapes:define-input get-stack-policy-input common-lisp:nil
                                ((stack-name :target-type stack-name :required
                                  common-lisp:t :member-name "StackName"))
                                (:shape-name "GetStackPolicyInput"))

(smithy/sdk/shapes:define-output get-stack-policy-output common-lisp:nil
                                 ((stack-policy-body :target-type
                                   stack-policy-body :member-name
                                   "StackPolicyBody"))
                                 (:shape-name "GetStackPolicyOutput"))

(smithy/sdk/shapes:define-input get-template-input common-lisp:nil
                                ((stack-name :target-type stack-name
                                  :member-name "StackName")
                                 (change-set-name :target-type
                                  change-set-name-or-id :member-name
                                  "ChangeSetName")
                                 (template-stage :target-type template-stage
                                  :member-name "TemplateStage"))
                                (:shape-name "GetTemplateInput"))

(smithy/sdk/shapes:define-output get-template-output common-lisp:nil
                                 ((template-body :target-type template-body
                                   :member-name "TemplateBody")
                                  (stages-available :target-type stage-list
                                   :member-name "StagesAvailable"))
                                 (:shape-name "GetTemplateOutput"))

(smithy/sdk/shapes:define-input get-template-summary-input common-lisp:nil
                                ((template-body :target-type template-body
                                  :member-name "TemplateBody")
                                 (template-url :target-type template-url
                                  :member-name "TemplateURL")
                                 (stack-name :target-type stack-name-or-id
                                  :member-name "StackName")
                                 (stack-set-name :target-type
                                  stack-set-name-or-id :member-name
                                  "StackSetName")
                                 (call-as :target-type call-as :member-name
                                  "CallAs")
                                 (template-summary-config :target-type
                                  template-summary-config :member-name
                                  "TemplateSummaryConfig"))
                                (:shape-name "GetTemplateSummaryInput"))

(smithy/sdk/shapes:define-output get-template-summary-output common-lisp:nil
                                 ((parameters :target-type
                                   parameter-declarations :member-name
                                   "Parameters")
                                  (description :target-type description
                                   :member-name "Description")
                                  (capabilities :target-type capabilities
                                   :member-name "Capabilities")
                                  (capabilities-reason :target-type
                                   capabilities-reason :member-name
                                   "CapabilitiesReason")
                                  (resource-types :target-type resource-types
                                   :member-name "ResourceTypes")
                                  (version :target-type version :member-name
                                   "Version")
                                  (metadata :target-type metadata :member-name
                                   "Metadata")
                                  (declared-transforms :target-type
                                   transforms-list :member-name
                                   "DeclaredTransforms")
                                  (resource-identifier-summaries :target-type
                                   resource-identifier-summaries :member-name
                                   "ResourceIdentifierSummaries")
                                  (warnings :target-type warnings :member-name
                                   "Warnings"))
                                 (:shape-name "GetTemplateSummaryOutput"))

(smithy/sdk/shapes:define-enum handler-error-code
    common-lisp:nil
  (:not-updatable "NotUpdatable")
  (:invalid-request "InvalidRequest")
  (:access-denied "AccessDenied")
  (:invalid-credentials "InvalidCredentials")
  (:already-exists "AlreadyExists")
  (:not-found "NotFound")
  (:resource-conflict "ResourceConflict")
  (:throttling "Throttling")
  (:service-limit-exceeded "ServiceLimitExceeded")
  (:service-timeout "NotStabilized")
  (:general-service-exception "GeneralServiceException")
  (:service-internal-error "ServiceInternalError")
  (:network-failure "NetworkFailure")
  (:internal-failure "InternalFailure")
  (:invalid-type-configuration "InvalidTypeConfiguration")
  (:handler-internal-failure "HandlerInternalFailure")
  (:non-compliant "NonCompliant")
  (:unknown "Unknown")
  (:unsupported-target "UnsupportedTarget"))

(smithy/sdk/shapes:define-enum hook-failure-mode
    common-lisp:nil
  (:fail "FAIL")
  (:warn "WARN"))

(smithy/sdk/shapes:define-type hook-invocation-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum hook-invocation-point
    common-lisp:nil
  (:pre-provision "PRE_PROVISION"))

(smithy/sdk/shapes:define-type hook-result-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error hook-result-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "HookResultNotFoundException")
                                (:error-name "HookResultNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-list hook-result-summaries :member
                               hook-result-summary)

(smithy/sdk/shapes:define-structure hook-result-summary common-lisp:nil
                                    ((invocation-point :target-type
                                      hook-invocation-point :member-name
                                      "InvocationPoint")
                                     (failure-mode :target-type
                                      hook-failure-mode :member-name
                                      "FailureMode")
                                     (type-name :target-type hook-type-name
                                      :member-name "TypeName")
                                     (type-version-id :target-type
                                      hook-type-version-id :member-name
                                      "TypeVersionId")
                                     (type-configuration-version-id
                                      :target-type
                                      hook-type-configuration-version-id
                                      :member-name
                                      "TypeConfigurationVersionId")
                                     (status :target-type hook-status
                                      :member-name "Status")
                                     (hook-status-reason :target-type
                                      hook-status-reason :member-name
                                      "HookStatusReason"))
                                    (:shape-name "HookResultSummary"))

(smithy/sdk/shapes:define-enum hook-status
    common-lisp:nil
  (:hook-in-progress "HOOK_IN_PROGRESS")
  (:hook-complete-succeeded "HOOK_COMPLETE_SUCCEEDED")
  (:hook-complete-failed "HOOK_COMPLETE_FAILED")
  (:hook-failed "HOOK_FAILED"))

(smithy/sdk/shapes:define-type hook-status-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum hook-target-type
    common-lisp:nil
  (:resource "RESOURCE"))

(smithy/sdk/shapes:define-type hook-target-type-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type hook-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type hook-type-configuration-version-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type hook-type-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type hook-type-version-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum identity-provider
    common-lisp:nil
  (:aws-marketplace "AWS_Marketplace")
  (:git-hub "GitHub")
  (:bitbucket "Bitbucket"))

(smithy/sdk/shapes:define-type import-existing-resources
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input import-stacks-to-stack-set-input
                                common-lisp:nil
                                ((stack-set-name :target-type
                                  stack-set-name-or-id :required common-lisp:t
                                  :member-name "StackSetName")
                                 (stack-ids :target-type stack-id-list
                                  :member-name "StackIds")
                                 (stack-ids-url :target-type stack-ids-url
                                  :member-name "StackIdsUrl")
                                 (organizational-unit-ids :target-type
                                  organizational-unit-id-list :member-name
                                  "OrganizationalUnitIds")
                                 (operation-preferences :target-type
                                  stack-set-operation-preferences :member-name
                                  "OperationPreferences")
                                 (operation-id :target-type
                                  client-request-token :member-name
                                  "OperationId")
                                 (call-as :target-type call-as :member-name
                                  "CallAs"))
                                (:shape-name "ImportStacksToStackSetInput"))

(smithy/sdk/shapes:define-output import-stacks-to-stack-set-output
                                 common-lisp:nil
                                 ((operation-id :target-type
                                   client-request-token :member-name
                                   "OperationId"))
                                 (:shape-name "ImportStacksToStackSetOutput"))

(smithy/sdk/shapes:define-list imports :member stack-name)

(smithy/sdk/shapes:define-type in-progress-stack-instances-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type in-sync-stack-instances-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type include-nested-stacks
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type include-property-values
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error insufficient-capabilities-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "InsufficientCapabilitiesException")
                                (:error-name
                                 "InsufficientCapabilitiesException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-change-set-status-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidChangeSetStatusException")
                                (:error-name "InvalidChangeSetStatus")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-operation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidOperationException")
                                (:error-name "InvalidOperationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-state-transition-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidStateTransitionException")
                                (:error-name "InvalidStateTransition")
                                (:error-code 400))

(smithy/sdk/shapes:define-type is-activated smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type is-default-configuration
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type is-default-version
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-list jazz-logical-resource-ids :member
                               logical-resource-id)

(smithy/sdk/shapes:define-map jazz-resource-identifier-properties :key
                              jazz-resource-identifier-property-key :value
                              jazz-resource-identifier-property-value)

(smithy/sdk/shapes:define-type jazz-resource-identifier-property-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type jazz-resource-identifier-property-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type last-updated-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "LimitExceededException")
                                (:error-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type limit-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type limit-value smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-change-sets-input common-lisp:nil
                                ((stack-name :target-type stack-name-or-id
                                  :required common-lisp:t :member-name
                                  "StackName")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListChangeSetsInput"))

(smithy/sdk/shapes:define-output list-change-sets-output common-lisp:nil
                                 ((summaries :target-type change-set-summaries
                                   :member-name "Summaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListChangeSetsOutput"))

(smithy/sdk/shapes:define-input list-exports-input common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListExportsInput"))

(smithy/sdk/shapes:define-output list-exports-output common-lisp:nil
                                 ((exports :target-type exports :member-name
                                   "Exports")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListExportsOutput"))

(smithy/sdk/shapes:define-input list-generated-templates-input common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListGeneratedTemplatesInput"))

(smithy/sdk/shapes:define-output list-generated-templates-output
                                 common-lisp:nil
                                 ((summaries :target-type template-summaries
                                   :member-name "Summaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListGeneratedTemplatesOutput"))

(smithy/sdk/shapes:define-input list-hook-results-input common-lisp:nil
                                ((target-type :target-type
                                  list-hook-results-target-type :required
                                  common-lisp:t :member-name "TargetType")
                                 (target-id :target-type hook-result-id
                                  :required common-lisp:t :member-name
                                  "TargetId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListHookResultsInput"))

(smithy/sdk/shapes:define-output list-hook-results-output common-lisp:nil
                                 ((target-type :target-type
                                   list-hook-results-target-type :member-name
                                   "TargetType")
                                  (target-id :target-type hook-result-id
                                   :member-name "TargetId")
                                  (hook-results :target-type
                                   hook-result-summaries :member-name
                                   "HookResults")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListHookResultsOutput"))

(smithy/sdk/shapes:define-enum list-hook-results-target-type
    common-lisp:nil
  (:change-set "CHANGE_SET")
  (:stack "STACK")
  (:resource "RESOURCE")
  (:cloud-control "CLOUD_CONTROL"))

(smithy/sdk/shapes:define-input list-imports-input common-lisp:nil
                                ((export-name :target-type export-name
                                  :required common-lisp:t :member-name
                                  "ExportName")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListImportsInput"))

(smithy/sdk/shapes:define-output list-imports-output common-lisp:nil
                                 ((imports :target-type imports :member-name
                                   "Imports")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListImportsOutput"))

(smithy/sdk/shapes:define-input list-resource-scan-related-resources-input
                                common-lisp:nil
                                ((resource-scan-id :target-type
                                  resource-scan-id :required common-lisp:t
                                  :member-name "ResourceScanId")
                                 (resources :target-type
                                  scanned-resource-identifiers :required
                                  common-lisp:t :member-name "Resources")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type boxed-max-results
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListResourceScanRelatedResourcesInput"))

(smithy/sdk/shapes:define-output list-resource-scan-related-resources-output
                                 common-lisp:nil
                                 ((related-resources :target-type
                                   related-resources :member-name
                                   "RelatedResources")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListResourceScanRelatedResourcesOutput"))

(smithy/sdk/shapes:define-input list-resource-scan-resources-input
                                common-lisp:nil
                                ((resource-scan-id :target-type
                                  resource-scan-id :required common-lisp:t
                                  :member-name "ResourceScanId")
                                 (resource-identifier :target-type
                                  resource-identifier :member-name
                                  "ResourceIdentifier")
                                 (resource-type-prefix :target-type
                                  resource-type-prefix :member-name
                                  "ResourceTypePrefix")
                                 (tag-key :target-type tag-key :member-name
                                  "TagKey")
                                 (tag-value :target-type tag-value :member-name
                                  "TagValue")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  resource-scanner-max-results :member-name
                                  "MaxResults"))
                                (:shape-name "ListResourceScanResourcesInput"))

(smithy/sdk/shapes:define-output list-resource-scan-resources-output
                                 common-lisp:nil
                                 ((resources :target-type scanned-resources
                                   :member-name "Resources")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListResourceScanResourcesOutput"))

(smithy/sdk/shapes:define-input list-resource-scans-input common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  resource-scanner-max-results :member-name
                                  "MaxResults")
                                 (scan-type-filter :target-type scan-type
                                  :member-name "ScanTypeFilter"))
                                (:shape-name "ListResourceScansInput"))

(smithy/sdk/shapes:define-output list-resource-scans-output common-lisp:nil
                                 ((resource-scan-summaries :target-type
                                   resource-scan-summaries :member-name
                                   "ResourceScanSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListResourceScansOutput"))

(smithy/sdk/shapes:define-input list-stack-instance-resource-drifts-input
                                common-lisp:nil
                                ((stack-set-name :target-type
                                  stack-set-name-or-id :required common-lisp:t
                                  :member-name "StackSetName")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (stack-instance-resource-drift-statuses
                                  :target-type
                                  stack-resource-drift-status-filters
                                  :member-name
                                  "StackInstanceResourceDriftStatuses")
                                 (stack-instance-account :target-type account
                                  :required common-lisp:t :member-name
                                  "StackInstanceAccount")
                                 (stack-instance-region :target-type region
                                  :required common-lisp:t :member-name
                                  "StackInstanceRegion")
                                 (operation-id :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "OperationId")
                                 (call-as :target-type call-as :member-name
                                  "CallAs"))
                                (:shape-name
                                 "ListStackInstanceResourceDriftsInput"))

(smithy/sdk/shapes:define-output list-stack-instance-resource-drifts-output
                                 common-lisp:nil
                                 ((summaries :target-type
                                   stack-instance-resource-drifts-summaries
                                   :member-name "Summaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListStackInstanceResourceDriftsOutput"))

(smithy/sdk/shapes:define-input list-stack-instances-input common-lisp:nil
                                ((stack-set-name :target-type stack-set-name
                                  :required common-lisp:t :member-name
                                  "StackSetName")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (filters :target-type stack-instance-filters
                                  :member-name "Filters")
                                 (stack-instance-account :target-type account
                                  :member-name "StackInstanceAccount")
                                 (stack-instance-region :target-type region
                                  :member-name "StackInstanceRegion")
                                 (call-as :target-type call-as :member-name
                                  "CallAs"))
                                (:shape-name "ListStackInstancesInput"))

(smithy/sdk/shapes:define-output list-stack-instances-output common-lisp:nil
                                 ((summaries :target-type
                                   stack-instance-summaries :member-name
                                   "Summaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListStackInstancesOutput"))

(smithy/sdk/shapes:define-input list-stack-refactor-actions-input
                                common-lisp:nil
                                ((stack-refactor-id :target-type
                                  stack-refactor-id :required common-lisp:t
                                  :member-name "StackRefactorId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListStackRefactorActionsInput"))

(smithy/sdk/shapes:define-output list-stack-refactor-actions-output
                                 common-lisp:nil
                                 ((stack-refactor-actions :target-type
                                   stack-refactor-actions :required
                                   common-lisp:t :member-name
                                   "StackRefactorActions")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListStackRefactorActionsOutput"))

(smithy/sdk/shapes:define-input list-stack-refactors-input common-lisp:nil
                                ((execution-status-filter :target-type
                                  stack-refactor-execution-status-filter
                                  :member-name "ExecutionStatusFilter")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListStackRefactorsInput"))

(smithy/sdk/shapes:define-output list-stack-refactors-output common-lisp:nil
                                 ((stack-refactor-summaries :target-type
                                   stack-refactor-summaries :required
                                   common-lisp:t :member-name
                                   "StackRefactorSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListStackRefactorsOutput"))

(smithy/sdk/shapes:define-input list-stack-resources-input common-lisp:nil
                                ((stack-name :target-type stack-name :required
                                  common-lisp:t :member-name "StackName")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListStackResourcesInput"))

(smithy/sdk/shapes:define-output list-stack-resources-output common-lisp:nil
                                 ((stack-resource-summaries :target-type
                                   stack-resource-summaries :member-name
                                   "StackResourceSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListStackResourcesOutput"))

(smithy/sdk/shapes:define-input list-stack-set-auto-deployment-targets-input
                                common-lisp:nil
                                ((stack-set-name :target-type
                                  stack-set-name-or-id :required common-lisp:t
                                  :member-name "StackSetName")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (call-as :target-type call-as :member-name
                                  "CallAs"))
                                (:shape-name
                                 "ListStackSetAutoDeploymentTargetsInput"))

(smithy/sdk/shapes:define-output list-stack-set-auto-deployment-targets-output
                                 common-lisp:nil
                                 ((summaries :target-type
                                   stack-set-auto-deployment-target-summaries
                                   :member-name "Summaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListStackSetAutoDeploymentTargetsOutput"))

(smithy/sdk/shapes:define-input list-stack-set-operation-results-input
                                common-lisp:nil
                                ((stack-set-name :target-type stack-set-name
                                  :required common-lisp:t :member-name
                                  "StackSetName")
                                 (operation-id :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "OperationId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (call-as :target-type call-as :member-name
                                  "CallAs")
                                 (filters :target-type operation-result-filters
                                  :member-name "Filters"))
                                (:shape-name
                                 "ListStackSetOperationResultsInput"))

(smithy/sdk/shapes:define-output list-stack-set-operation-results-output
                                 common-lisp:nil
                                 ((summaries :target-type
                                   stack-set-operation-result-summaries
                                   :member-name "Summaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListStackSetOperationResultsOutput"))

(smithy/sdk/shapes:define-input list-stack-set-operations-input common-lisp:nil
                                ((stack-set-name :target-type stack-set-name
                                  :required common-lisp:t :member-name
                                  "StackSetName")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (call-as :target-type call-as :member-name
                                  "CallAs"))
                                (:shape-name "ListStackSetOperationsInput"))

(smithy/sdk/shapes:define-output list-stack-set-operations-output
                                 common-lisp:nil
                                 ((summaries :target-type
                                   stack-set-operation-summaries :member-name
                                   "Summaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListStackSetOperationsOutput"))

(smithy/sdk/shapes:define-input list-stack-sets-input common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (status :target-type stack-set-status
                                  :member-name "Status")
                                 (call-as :target-type call-as :member-name
                                  "CallAs"))
                                (:shape-name "ListStackSetsInput"))

(smithy/sdk/shapes:define-output list-stack-sets-output common-lisp:nil
                                 ((summaries :target-type stack-set-summaries
                                   :member-name "Summaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListStackSetsOutput"))

(smithy/sdk/shapes:define-input list-stacks-input common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (stack-status-filter :target-type
                                  stack-status-filter :member-name
                                  "StackStatusFilter"))
                                (:shape-name "ListStacksInput"))

(smithy/sdk/shapes:define-output list-stacks-output common-lisp:nil
                                 ((stack-summaries :target-type stack-summaries
                                   :member-name "StackSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListStacksOutput"))

(smithy/sdk/shapes:define-input list-type-registrations-input common-lisp:nil
                                ((type :target-type registry-type :member-name
                                  "Type")
                                 (type-name :target-type type-name :member-name
                                  "TypeName")
                                 (type-arn :target-type type-arn :member-name
                                  "TypeArn")
                                 (registration-status-filter :target-type
                                  registration-status :member-name
                                  "RegistrationStatusFilter")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListTypeRegistrationsInput"))

(smithy/sdk/shapes:define-output list-type-registrations-output common-lisp:nil
                                 ((registration-token-list :target-type
                                   registration-token-list :member-name
                                   "RegistrationTokenList")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListTypeRegistrationsOutput"))

(smithy/sdk/shapes:define-input list-type-versions-input common-lisp:nil
                                ((type :target-type registry-type :member-name
                                  "Type")
                                 (type-name :target-type type-name :member-name
                                  "TypeName")
                                 (arn :target-type type-arn :member-name "Arn")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (deprecated-status :target-type
                                  deprecated-status :member-name
                                  "DeprecatedStatus")
                                 (publisher-id :target-type publisher-id
                                  :member-name "PublisherId"))
                                (:shape-name "ListTypeVersionsInput"))

(smithy/sdk/shapes:define-output list-type-versions-output common-lisp:nil
                                 ((type-version-summaries :target-type
                                   type-version-summaries :member-name
                                   "TypeVersionSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListTypeVersionsOutput"))

(smithy/sdk/shapes:define-input list-types-input common-lisp:nil
                                ((visibility :target-type visibility
                                  :member-name "Visibility")
                                 (provisioning-type :target-type
                                  provisioning-type :member-name
                                  "ProvisioningType")
                                 (deprecated-status :target-type
                                  deprecated-status :member-name
                                  "DeprecatedStatus")
                                 (type :target-type registry-type :member-name
                                  "Type")
                                 (filters :target-type type-filters
                                  :member-name "Filters")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListTypesInput"))

(smithy/sdk/shapes:define-output list-types-output common-lisp:nil
                                 ((type-summaries :target-type type-summaries
                                   :member-name "TypeSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListTypesOutput"))

(smithy/sdk/shapes:define-type log-group-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure logging-config common-lisp:nil
                                    ((log-role-arn :target-type role-arn2
                                      :required common-lisp:t :member-name
                                      "LogRoleArn")
                                     (log-group-name :target-type
                                      log-group-name :required common-lisp:t
                                      :member-name "LogGroupName"))
                                    (:shape-name "LoggingConfig"))

(smithy/sdk/shapes:define-type logical-id-hierarchy
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type logical-resource-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list logical-resource-ids :member logical-resource-id)

(smithy/sdk/shapes:define-type major-version smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type managed-by-stack smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure managed-execution common-lisp:nil
                                    ((active :target-type
                                      managed-execution-nullable :member-name
                                      "Active"))
                                    (:shape-name "ManagedExecution"))

(smithy/sdk/shapes:define-type managed-execution-nullable
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type max-concurrent-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-concurrent-percentage
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type metadata smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure module-info common-lisp:nil
                                    ((type-hierarchy :target-type
                                      type-hierarchy :member-name
                                      "TypeHierarchy")
                                     (logical-id-hierarchy :target-type
                                      logical-id-hierarchy :member-name
                                      "LogicalIdHierarchy"))
                                    (:shape-name "ModuleInfo"))

(smithy/sdk/shapes:define-type monitoring-time-in-minutes
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error name-already-exists-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "NameAlreadyExistsException")
                                (:error-name "NameAlreadyExistsException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type no-echo smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type notification-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list notification-arns :member notification-arn)

(smithy/sdk/shapes:define-type number-of-resources
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum on-failure
    common-lisp:nil
  (:do-nothing "DO_NOTHING")
  (:rollback "ROLLBACK")
  (:delete "DELETE"))

(smithy/sdk/shapes:define-enum on-stack-failure
    common-lisp:nil
  (:do-nothing "DO_NOTHING")
  (:rollback "ROLLBACK")
  (:delete "DELETE"))

(smithy/sdk/shapes:define-error operation-id-already-exists-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "OperationIdAlreadyExistsException")
                                (:error-name
                                 "OperationIdAlreadyExistsException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error operation-in-progress-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "OperationInProgressException")
                                (:error-name "OperationInProgressException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error operation-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "OperationNotFoundException")
                                (:error-name "OperationNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure operation-result-filter common-lisp:nil
                                    ((name :target-type
                                      operation-result-filter-name :member-name
                                      "Name")
                                     (values :target-type
                                      operation-result-filter-values
                                      :member-name "Values"))
                                    (:shape-name "OperationResultFilter"))

(smithy/sdk/shapes:define-enum operation-result-filter-name
    common-lisp:nil
  (:operation-result-status "OPERATION_RESULT_STATUS"))

(smithy/sdk/shapes:define-type operation-result-filter-values
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list operation-result-filters :member
                               operation-result-filter)

(smithy/sdk/shapes:define-enum operation-status
    common-lisp:nil
  (:pending "PENDING")
  (:in-progress "IN_PROGRESS")
  (:success "SUCCESS")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-error operation-status-check-failed-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "OperationStatusCheckFailedException")
                                (:error-name "ConditionalCheckFailed")
                                (:error-code 400))

(smithy/sdk/shapes:define-type optional-secure-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum organization-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED")
  (:disabled-permanently "DISABLED_PERMANENTLY"))

(smithy/sdk/shapes:define-type organizational-unit-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list organizational-unit-id-list :member
                               organizational-unit-id)

(smithy/sdk/shapes:define-structure output common-lisp:nil
                                    ((output-key :target-type output-key
                                      :member-name "OutputKey")
                                     (output-value :target-type output-value
                                      :member-name "OutputValue")
                                     (description :target-type description
                                      :member-name "Description")
                                     (export-name :target-type export-name
                                      :member-name "ExportName"))
                                    (:shape-name "Output"))

(smithy/sdk/shapes:define-type output-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type output-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list outputs :member output)

(smithy/sdk/shapes:define-structure parameter common-lisp:nil
                                    ((parameter-key :target-type parameter-key
                                      :member-name "ParameterKey")
                                     (parameter-value :target-type
                                      parameter-value :member-name
                                      "ParameterValue")
                                     (use-previous-value :target-type
                                      use-previous-value :member-name
                                      "UsePreviousValue")
                                     (resolved-value :target-type
                                      parameter-value :member-name
                                      "ResolvedValue"))
                                    (:shape-name "Parameter"))

(smithy/sdk/shapes:define-structure parameter-constraints common-lisp:nil
                                    ((allowed-values :target-type
                                      allowed-values :member-name
                                      "AllowedValues"))
                                    (:shape-name "ParameterConstraints"))

(smithy/sdk/shapes:define-structure parameter-declaration common-lisp:nil
                                    ((parameter-key :target-type parameter-key
                                      :member-name "ParameterKey")
                                     (default-value :target-type
                                      parameter-value :member-name
                                      "DefaultValue")
                                     (parameter-type :target-type
                                      parameter-type :member-name
                                      "ParameterType")
                                     (no-echo :target-type no-echo :member-name
                                      "NoEcho")
                                     (description :target-type description
                                      :member-name "Description")
                                     (parameter-constraints :target-type
                                      parameter-constraints :member-name
                                      "ParameterConstraints"))
                                    (:shape-name "ParameterDeclaration"))

(smithy/sdk/shapes:define-list parameter-declarations :member
                               parameter-declaration)

(smithy/sdk/shapes:define-type parameter-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type parameter-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type parameter-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list parameters :member parameter)

(smithy/sdk/shapes:define-type percentage-completed
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-enum permission-models
    common-lisp:nil
  (:service-managed "SERVICE_MANAGED")
  (:self-managed "SELF_MANAGED"))

(smithy/sdk/shapes:define-type physical-resource-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list physical-resource-id-context :member
                               physical-resource-id-context-key-value-pair)

(smithy/sdk/shapes:define-structure physical-resource-id-context-key-value-pair
                                    common-lisp:nil
                                    ((key :target-type key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name
                                     "PhysicalResourceIdContextKeyValuePair"))

(smithy/sdk/shapes:define-enum policy-action
    common-lisp:nil
  (:delete "Delete")
  (:retain "Retain")
  (:snapshot "Snapshot")
  (:replace-and-delete "ReplaceAndDelete")
  (:replace-and-retain "ReplaceAndRetain")
  (:replace-and-snapshot "ReplaceAndSnapshot"))

(smithy/sdk/shapes:define-type private-type-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type properties smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type property-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure property-difference common-lisp:nil
                                    ((property-path :target-type property-path
                                      :required common-lisp:t :member-name
                                      "PropertyPath")
                                     (expected-value :target-type
                                      property-value :required common-lisp:t
                                      :member-name "ExpectedValue")
                                     (actual-value :target-type property-value
                                      :required common-lisp:t :member-name
                                      "ActualValue")
                                     (difference-type :target-type
                                      difference-type :required common-lisp:t
                                      :member-name "DifferenceType"))
                                    (:shape-name "PropertyDifference"))

(smithy/sdk/shapes:define-list property-differences :member property-difference)

(smithy/sdk/shapes:define-type property-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type property-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type property-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum provisioning-type
    common-lisp:nil
  (:non-provisionable "NON_PROVISIONABLE")
  (:immutable "IMMUTABLE")
  (:fully-mutable "FULLY_MUTABLE"))

(smithy/sdk/shapes:define-type public-version-number
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input publish-type-input common-lisp:nil
                                ((type :target-type third-party-type
                                  :member-name "Type")
                                 (arn :target-type private-type-arn
                                  :member-name "Arn")
                                 (type-name :target-type type-name :member-name
                                  "TypeName")
                                 (public-version-number :target-type
                                  public-version-number :member-name
                                  "PublicVersionNumber"))
                                (:shape-name "PublishTypeInput"))

(smithy/sdk/shapes:define-output publish-type-output common-lisp:nil
                                 ((public-type-arn :target-type type-arn
                                   :member-name "PublicTypeArn"))
                                 (:shape-name "PublishTypeOutput"))

(smithy/sdk/shapes:define-type publisher-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type publisher-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type publisher-profile smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum publisher-status
    common-lisp:nil
  (:verified "VERIFIED")
  (:unverified "UNVERIFIED"))

(smithy/sdk/shapes:define-type reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input record-handler-progress-input common-lisp:nil
                                ((bearer-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "BearerToken")
                                 (operation-status :target-type
                                  operation-status :required common-lisp:t
                                  :member-name "OperationStatus")
                                 (current-operation-status :target-type
                                  operation-status :member-name
                                  "CurrentOperationStatus")
                                 (status-message :target-type status-message
                                  :member-name "StatusMessage")
                                 (error-code :target-type handler-error-code
                                  :member-name "ErrorCode")
                                 (resource-model :target-type resource-model
                                  :member-name "ResourceModel")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken"))
                                (:shape-name "RecordHandlerProgressInput"))

(smithy/sdk/shapes:define-output record-handler-progress-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "RecordHandlerProgressOutput"))

(smithy/sdk/shapes:define-type refresh-all-resources
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum region-concurrency-type
    common-lisp:nil
  (:sequential "SEQUENTIAL")
  (:parallel "PARALLEL"))

(smithy/sdk/shapes:define-list region-list :member region)

(smithy/sdk/shapes:define-input register-publisher-input common-lisp:nil
                                ((accept-terms-and-conditions :target-type
                                  accept-terms-and-conditions :member-name
                                  "AcceptTermsAndConditions")
                                 (connection-arn :target-type connection-arn
                                  :member-name "ConnectionArn"))
                                (:shape-name "RegisterPublisherInput"))

(smithy/sdk/shapes:define-output register-publisher-output common-lisp:nil
                                 ((publisher-id :target-type publisher-id
                                   :member-name "PublisherId"))
                                 (:shape-name "RegisterPublisherOutput"))

(smithy/sdk/shapes:define-input register-type-input common-lisp:nil
                                ((type :target-type registry-type :member-name
                                  "Type")
                                 (type-name :target-type type-name :required
                                  common-lisp:t :member-name "TypeName")
                                 (schema-handler-package :target-type s3url
                                  :required common-lisp:t :member-name
                                  "SchemaHandlerPackage")
                                 (logging-config :target-type logging-config
                                  :member-name "LoggingConfig")
                                 (execution-role-arn :target-type role-arn2
                                  :member-name "ExecutionRoleArn")
                                 (client-request-token :target-type
                                  request-token :member-name
                                  "ClientRequestToken"))
                                (:shape-name "RegisterTypeInput"))

(smithy/sdk/shapes:define-output register-type-output common-lisp:nil
                                 ((registration-token :target-type
                                   registration-token :member-name
                                   "RegistrationToken"))
                                 (:shape-name "RegisterTypeOutput"))

(smithy/sdk/shapes:define-enum registration-status
    common-lisp:nil
  (:complete "COMPLETE")
  (:in-progress "IN_PROGRESS")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-type registration-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list registration-token-list :member
                               registration-token)

(smithy/sdk/shapes:define-enum registry-type
    common-lisp:nil
  (:resource "RESOURCE")
  (:module "MODULE")
  (:hook "HOOK"))

(smithy/sdk/shapes:define-list related-resources :member scanned-resource)

(smithy/sdk/shapes:define-enum replacement
    common-lisp:nil
  (:true "True")
  (:false "False")
  (:conditional "Conditional"))

(smithy/sdk/shapes:define-type request-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure required-activated-type common-lisp:nil
                                    ((type-name-alias :target-type type-name
                                      :member-name "TypeNameAlias")
                                     (original-type-name :target-type type-name
                                      :member-name "OriginalTypeName")
                                     (publisher-id :target-type publisher-id
                                      :member-name "PublisherId")
                                     (supported-major-versions :target-type
                                      supported-major-versions :member-name
                                      "SupportedMajorVersions"))
                                    (:shape-name "RequiredActivatedType"))

(smithy/sdk/shapes:define-list required-activated-types :member
                               required-activated-type)

(smithy/sdk/shapes:define-type required-property
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum requires-recreation
    common-lisp:nil
  (:never "Never")
  (:conditionally "Conditionally")
  (:always "Always"))

(smithy/sdk/shapes:define-enum resource-attribute
    common-lisp:nil
  (:properties "Properties")
  (:metadata "Metadata")
  (:creation-policy "CreationPolicy")
  (:update-policy "UpdatePolicy")
  (:deletion-policy "DeletionPolicy")
  (:update-replace-policy "UpdateReplacePolicy")
  (:tags "Tags"))

(smithy/sdk/shapes:define-structure resource-change common-lisp:nil
                                    ((policy-action :target-type policy-action
                                      :member-name "PolicyAction")
                                     (action :target-type change-action
                                      :member-name "Action")
                                     (logical-resource-id :target-type
                                      logical-resource-id :member-name
                                      "LogicalResourceId")
                                     (physical-resource-id :target-type
                                      physical-resource-id :member-name
                                      "PhysicalResourceId")
                                     (resource-type :target-type resource-type
                                      :member-name "ResourceType")
                                     (replacement :target-type replacement
                                      :member-name "Replacement")
                                     (scope :target-type scope :member-name
                                      "Scope")
                                     (details :target-type
                                      resource-change-details :member-name
                                      "Details")
                                     (change-set-id :target-type change-set-id
                                      :member-name "ChangeSetId")
                                     (module-info :target-type module-info
                                      :member-name "ModuleInfo")
                                     (before-context :target-type
                                      before-context :member-name
                                      "BeforeContext")
                                     (after-context :target-type after-context
                                      :member-name "AfterContext"))
                                    (:shape-name "ResourceChange"))

(smithy/sdk/shapes:define-structure resource-change-detail common-lisp:nil
                                    ((target :target-type
                                      resource-target-definition :member-name
                                      "Target")
                                     (evaluation :target-type evaluation-type
                                      :member-name "Evaluation")
                                     (change-source :target-type change-source
                                      :member-name "ChangeSource")
                                     (causing-entity :target-type
                                      causing-entity :member-name
                                      "CausingEntity"))
                                    (:shape-name "ResourceChangeDetail"))

(smithy/sdk/shapes:define-list resource-change-details :member
                               resource-change-detail)

(smithy/sdk/shapes:define-structure resource-definition common-lisp:nil
                                    ((resource-type :target-type resource-type
                                      :required common-lisp:t :member-name
                                      "ResourceType")
                                     (logical-resource-id :target-type
                                      logical-resource-id :member-name
                                      "LogicalResourceId")
                                     (resource-identifier :target-type
                                      resource-identifier-properties :required
                                      common-lisp:t :member-name
                                      "ResourceIdentifier"))
                                    (:shape-name "ResourceDefinition"))

(smithy/sdk/shapes:define-list resource-definitions :member resource-definition)

(smithy/sdk/shapes:define-structure resource-detail common-lisp:nil
                                    ((resource-type :target-type resource-type
                                      :member-name "ResourceType")
                                     (logical-resource-id :target-type
                                      logical-resource-id :member-name
                                      "LogicalResourceId")
                                     (resource-identifier :target-type
                                      resource-identifier-properties
                                      :member-name "ResourceIdentifier")
                                     (resource-status :target-type
                                      generated-template-resource-status
                                      :member-name "ResourceStatus")
                                     (resource-status-reason :target-type
                                      resource-status-reason :member-name
                                      "ResourceStatusReason")
                                     (warnings :target-type warning-details
                                      :member-name "Warnings"))
                                    (:shape-name "ResourceDetail"))

(smithy/sdk/shapes:define-list resource-details :member resource-detail)

(smithy/sdk/shapes:define-type resource-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map resource-identifier-properties :key
                              resource-identifier-property-key :value
                              resource-identifier-property-value)

(smithy/sdk/shapes:define-type resource-identifier-property-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-identifier-property-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-identifier-summaries :member
                               resource-identifier-summary)

(smithy/sdk/shapes:define-structure resource-identifier-summary common-lisp:nil
                                    ((resource-type :target-type resource-type
                                      :member-name "ResourceType")
                                     (logical-resource-ids :target-type
                                      logical-resource-ids :member-name
                                      "LogicalResourceIds")
                                     (resource-identifiers :target-type
                                      resource-identifiers :member-name
                                      "ResourceIdentifiers"))
                                    (:shape-name "ResourceIdentifierSummary"))

(smithy/sdk/shapes:define-list resource-identifiers :member
                               resource-identifier-property-key)

(smithy/sdk/shapes:define-structure resource-location common-lisp:nil
                                    ((stack-name :target-type stack-name
                                      :required common-lisp:t :member-name
                                      "StackName")
                                     (logical-resource-id :target-type
                                      logical-resource-id :required
                                      common-lisp:t :member-name
                                      "LogicalResourceId"))
                                    (:shape-name "ResourceLocation"))

(smithy/sdk/shapes:define-structure resource-mapping common-lisp:nil
                                    ((source :target-type resource-location
                                      :required common-lisp:t :member-name
                                      "Source")
                                     (destination :target-type
                                      resource-location :required common-lisp:t
                                      :member-name "Destination"))
                                    (:shape-name "ResourceMapping"))

(smithy/sdk/shapes:define-list resource-mappings :member resource-mapping)

(smithy/sdk/shapes:define-type resource-model smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-properties
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-property-path
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-scan-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-scan-in-progress-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceScanInProgressException")
                                (:error-name "ResourceScanInProgress")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-scan-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "ResourceScanLimitExceededException")
                                (:error-name "ResourceScanLimitExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-scan-not-found-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceScanNotFoundException")
                                (:error-name "ResourceScanNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum resource-scan-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:failed "FAILED")
  (:complete "COMPLETE")
  (:expired "EXPIRED"))

(smithy/sdk/shapes:define-type resource-scan-status-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-scan-summaries :member
                               resource-scan-summary)

(smithy/sdk/shapes:define-structure resource-scan-summary common-lisp:nil
                                    ((resource-scan-id :target-type
                                      resource-scan-id :member-name
                                      "ResourceScanId")
                                     (status :target-type resource-scan-status
                                      :member-name "Status")
                                     (status-reason :target-type
                                      resource-scan-status-reason :member-name
                                      "StatusReason")
                                     (start-time :target-type timestamp
                                      :member-name "StartTime")
                                     (end-time :target-type timestamp
                                      :member-name "EndTime")
                                     (percentage-completed :target-type
                                      percentage-completed :member-name
                                      "PercentageCompleted")
                                     (scan-type :target-type scan-type
                                      :member-name "ScanType"))
                                    (:shape-name "ResourceScanSummary"))

(smithy/sdk/shapes:define-type resource-scanner-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum resource-signal-status
    common-lisp:nil
  (:success "SUCCESS")
  (:failure "FAILURE"))

(smithy/sdk/shapes:define-type resource-signal-unique-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum resource-status
    common-lisp:nil
  (:create-in-progress "CREATE_IN_PROGRESS")
  (:create-failed "CREATE_FAILED")
  (:create-complete "CREATE_COMPLETE")
  (:delete-in-progress "DELETE_IN_PROGRESS")
  (:delete-failed "DELETE_FAILED")
  (:delete-complete "DELETE_COMPLETE")
  (:delete-skipped "DELETE_SKIPPED")
  (:update-in-progress "UPDATE_IN_PROGRESS")
  (:update-failed "UPDATE_FAILED")
  (:update-complete "UPDATE_COMPLETE")
  (:import-failed "IMPORT_FAILED")
  (:import-complete "IMPORT_COMPLETE")
  (:import-in-progress "IMPORT_IN_PROGRESS")
  (:import-rollback-in-progress "IMPORT_ROLLBACK_IN_PROGRESS")
  (:import-rollback-failed "IMPORT_ROLLBACK_FAILED")
  (:import-rollback-complete "IMPORT_ROLLBACK_COMPLETE")
  (:export-failed "EXPORT_FAILED")
  (:export-complete "EXPORT_COMPLETE")
  (:export-in-progress "EXPORT_IN_PROGRESS")
  (:export-rollback-in-progress "EXPORT_ROLLBACK_IN_PROGRESS")
  (:export-rollback-failed "EXPORT_ROLLBACK_FAILED")
  (:export-rollback-complete "EXPORT_ROLLBACK_COMPLETE")
  (:update-rollback-in-progress "UPDATE_ROLLBACK_IN_PROGRESS")
  (:update-rollback-complete "UPDATE_ROLLBACK_COMPLETE")
  (:update-rollback-failed "UPDATE_ROLLBACK_FAILED")
  (:rollback-in-progress "ROLLBACK_IN_PROGRESS")
  (:rollback-complete "ROLLBACK_COMPLETE")
  (:rollback-failed "ROLLBACK_FAILED"))

(smithy/sdk/shapes:define-type resource-status-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resource-target-definition common-lisp:nil
                                    ((attribute :target-type resource-attribute
                                      :member-name "Attribute")
                                     (name :target-type property-name
                                      :member-name "Name")
                                     (requires-recreation :target-type
                                      requires-recreation :member-name
                                      "RequiresRecreation")
                                     (path :target-type resource-property-path
                                      :member-name "Path")
                                     (before-value :target-type before-value
                                      :member-name "BeforeValue")
                                     (after-value :target-type after-value
                                      :member-name "AfterValue")
                                     (attribute-change-type :target-type
                                      attribute-change-type :member-name
                                      "AttributeChangeType"))
                                    (:shape-name "ResourceTargetDefinition"))

(smithy/sdk/shapes:define-structure resource-to-import common-lisp:nil
                                    ((resource-type :target-type resource-type
                                      :required common-lisp:t :member-name
                                      "ResourceType")
                                     (logical-resource-id :target-type
                                      logical-resource-id :required
                                      common-lisp:t :member-name
                                      "LogicalResourceId")
                                     (resource-identifier :target-type
                                      resource-identifier-properties :required
                                      common-lisp:t :member-name
                                      "ResourceIdentifier"))
                                    (:shape-name "ResourceToImport"))

(smithy/sdk/shapes:define-type resource-to-skip smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-type-filter
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-type-filters :member
                               resource-type-filter)

(smithy/sdk/shapes:define-type resource-type-prefix
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-types :member resource-type)

(smithy/sdk/shapes:define-type resources-failed smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type resources-pending
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type resources-processing
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type resources-read smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type resources-scanned
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type resources-succeeded
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list resources-to-import :member resource-to-import)

(smithy/sdk/shapes:define-list resources-to-skip :member resource-to-skip)

(smithy/sdk/shapes:define-type retain-except-on-create
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-list retain-resources :member logical-resource-id)

(smithy/sdk/shapes:define-type retain-stacks smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type retain-stacks-nullable
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type retain-stacks-on-account-removal-nullable
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type role-arn2 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure rollback-configuration common-lisp:nil
                                    ((rollback-triggers :target-type
                                      rollback-triggers :member-name
                                      "RollbackTriggers")
                                     (monitoring-time-in-minutes :target-type
                                      monitoring-time-in-minutes :member-name
                                      "MonitoringTimeInMinutes"))
                                    (:shape-name "RollbackConfiguration"))

(smithy/sdk/shapes:define-input rollback-stack-input common-lisp:nil
                                ((stack-name :target-type stack-name-or-id
                                  :required common-lisp:t :member-name
                                  "StackName")
                                 (role-arn :target-type role-arn :member-name
                                  "RoleARN")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (retain-except-on-create :target-type
                                  retain-except-on-create :member-name
                                  "RetainExceptOnCreate"))
                                (:shape-name "RollbackStackInput"))

(smithy/sdk/shapes:define-output rollback-stack-output common-lisp:nil
                                 ((stack-id :target-type stack-id :member-name
                                   "StackId"))
                                 (:shape-name "RollbackStackOutput"))

(smithy/sdk/shapes:define-structure rollback-trigger common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "Arn")
                                     (type :target-type type :required
                                      common-lisp:t :member-name "Type"))
                                    (:shape-name "RollbackTrigger"))

(smithy/sdk/shapes:define-list rollback-triggers :member rollback-trigger)

(smithy/sdk/shapes:define-type s3bucket smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure scan-filter common-lisp:nil
                                    ((types :target-type resource-type-filters
                                      :member-name "Types"))
                                    (:shape-name "ScanFilter"))

(smithy/sdk/shapes:define-list scan-filters :member scan-filter)

(smithy/sdk/shapes:define-enum scan-type
    common-lisp:nil
  (:full "FULL")
  (:partial "PARTIAL"))

(smithy/sdk/shapes:define-structure scanned-resource common-lisp:nil
                                    ((resource-type :target-type resource-type
                                      :member-name "ResourceType")
                                     (resource-identifier :target-type
                                      jazz-resource-identifier-properties
                                      :member-name "ResourceIdentifier")
                                     (managed-by-stack :target-type
                                      managed-by-stack :member-name
                                      "ManagedByStack"))
                                    (:shape-name "ScannedResource"))

(smithy/sdk/shapes:define-structure scanned-resource-identifier common-lisp:nil
                                    ((resource-type :target-type resource-type
                                      :required common-lisp:t :member-name
                                      "ResourceType")
                                     (resource-identifier :target-type
                                      jazz-resource-identifier-properties
                                      :required common-lisp:t :member-name
                                      "ResourceIdentifier"))
                                    (:shape-name "ScannedResourceIdentifier"))

(smithy/sdk/shapes:define-list scanned-resource-identifiers :member
                               scanned-resource-identifier)

(smithy/sdk/shapes:define-list scanned-resources :member scanned-resource)

(smithy/sdk/shapes:define-list scope :member resource-attribute)

(smithy/sdk/shapes:define-input set-stack-policy-input common-lisp:nil
                                ((stack-name :target-type stack-name :required
                                  common-lisp:t :member-name "StackName")
                                 (stack-policy-body :target-type
                                  stack-policy-body :member-name
                                  "StackPolicyBody")
                                 (stack-policy-url :target-type
                                  stack-policy-url :member-name
                                  "StackPolicyURL"))
                                (:shape-name "SetStackPolicyInput"))

(smithy/sdk/shapes:define-input set-type-configuration-input common-lisp:nil
                                ((type-arn :target-type type-arn :member-name
                                  "TypeArn")
                                 (configuration :target-type type-configuration
                                  :required common-lisp:t :member-name
                                  "Configuration")
                                 (configuration-alias :target-type
                                  type-configuration-alias :member-name
                                  "ConfigurationAlias")
                                 (type-name :target-type type-name :member-name
                                  "TypeName")
                                 (type :target-type third-party-type
                                  :member-name "Type"))
                                (:shape-name "SetTypeConfigurationInput"))

(smithy/sdk/shapes:define-output set-type-configuration-output common-lisp:nil
                                 ((configuration-arn :target-type
                                   type-configuration-arn :member-name
                                   "ConfigurationArn"))
                                 (:shape-name "SetTypeConfigurationOutput"))

(smithy/sdk/shapes:define-input set-type-default-version-input common-lisp:nil
                                ((arn :target-type private-type-arn
                                  :member-name "Arn")
                                 (type :target-type registry-type :member-name
                                  "Type")
                                 (type-name :target-type type-name :member-name
                                  "TypeName")
                                 (version-id :target-type type-version-id
                                  :member-name "VersionId"))
                                (:shape-name "SetTypeDefaultVersionInput"))

(smithy/sdk/shapes:define-output set-type-default-version-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "SetTypeDefaultVersionOutput"))

(smithy/sdk/shapes:define-input signal-resource-input common-lisp:nil
                                ((stack-name :target-type stack-name-or-id
                                  :required common-lisp:t :member-name
                                  "StackName")
                                 (logical-resource-id :target-type
                                  logical-resource-id :required common-lisp:t
                                  :member-name "LogicalResourceId")
                                 (unique-id :target-type
                                  resource-signal-unique-id :required
                                  common-lisp:t :member-name "UniqueId")
                                 (status :target-type resource-signal-status
                                  :required common-lisp:t :member-name
                                  "Status"))
                                (:shape-name "SignalResourceInput"))

(smithy/sdk/shapes:define-structure stack common-lisp:nil
                                    ((stack-id :target-type stack-id
                                      :member-name "StackId")
                                     (stack-name :target-type stack-name
                                      :required common-lisp:t :member-name
                                      "StackName")
                                     (change-set-id :target-type change-set-id
                                      :member-name "ChangeSetId")
                                     (description :target-type description
                                      :member-name "Description")
                                     (parameters :target-type parameters
                                      :member-name "Parameters")
                                     (creation-time :target-type creation-time
                                      :required common-lisp:t :member-name
                                      "CreationTime")
                                     (deletion-time :target-type deletion-time
                                      :member-name "DeletionTime")
                                     (last-updated-time :target-type
                                      last-updated-time :member-name
                                      "LastUpdatedTime")
                                     (rollback-configuration :target-type
                                      rollback-configuration :member-name
                                      "RollbackConfiguration")
                                     (stack-status :target-type stack-status
                                      :required common-lisp:t :member-name
                                      "StackStatus")
                                     (stack-status-reason :target-type
                                      stack-status-reason :member-name
                                      "StackStatusReason")
                                     (disable-rollback :target-type
                                      disable-rollback :member-name
                                      "DisableRollback")
                                     (notification-arns :target-type
                                      notification-arns :member-name
                                      "NotificationARNs")
                                     (timeout-in-minutes :target-type
                                      timeout-minutes :member-name
                                      "TimeoutInMinutes")
                                     (capabilities :target-type capabilities
                                      :member-name "Capabilities")
                                     (outputs :target-type outputs :member-name
                                      "Outputs")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleARN")
                                     (tags :target-type tags :member-name
                                      "Tags")
                                     (enable-termination-protection
                                      :target-type
                                      enable-termination-protection
                                      :member-name
                                      "EnableTerminationProtection")
                                     (parent-id :target-type stack-id
                                      :member-name "ParentId")
                                     (root-id :target-type stack-id
                                      :member-name "RootId")
                                     (drift-information :target-type
                                      stack-drift-information :member-name
                                      "DriftInformation")
                                     (retain-except-on-create :target-type
                                      retain-except-on-create :member-name
                                      "RetainExceptOnCreate")
                                     (deletion-mode :target-type deletion-mode
                                      :member-name "DeletionMode")
                                     (detailed-status :target-type
                                      detailed-status :member-name
                                      "DetailedStatus"))
                                    (:shape-name "Stack"))

(smithy/sdk/shapes:define-structure stack-definition common-lisp:nil
                                    ((stack-name :target-type stack-name
                                      :member-name "StackName")
                                     (template-body :target-type template-body
                                      :member-name "TemplateBody")
                                     (template-url :target-type template-url
                                      :member-name "TemplateURL"))
                                    (:shape-name "StackDefinition"))

(smithy/sdk/shapes:define-list stack-definitions :member stack-definition)

(smithy/sdk/shapes:define-type stack-drift-detection-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum stack-drift-detection-status
    common-lisp:nil
  (:detection-in-progress "DETECTION_IN_PROGRESS")
  (:detection-failed "DETECTION_FAILED")
  (:detection-complete "DETECTION_COMPLETE"))

(smithy/sdk/shapes:define-type stack-drift-detection-status-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure stack-drift-information common-lisp:nil
                                    ((stack-drift-status :target-type
                                      stack-drift-status :required
                                      common-lisp:t :member-name
                                      "StackDriftStatus")
                                     (last-check-timestamp :target-type
                                      timestamp :member-name
                                      "LastCheckTimestamp"))
                                    (:shape-name "StackDriftInformation"))

(smithy/sdk/shapes:define-structure stack-drift-information-summary
                                    common-lisp:nil
                                    ((stack-drift-status :target-type
                                      stack-drift-status :required
                                      common-lisp:t :member-name
                                      "StackDriftStatus")
                                     (last-check-timestamp :target-type
                                      timestamp :member-name
                                      "LastCheckTimestamp"))
                                    (:shape-name
                                     "StackDriftInformationSummary"))

(smithy/sdk/shapes:define-enum stack-drift-status
    common-lisp:nil
  (:drifted "DRIFTED")
  (:in-sync "IN_SYNC")
  (:unknown "UNKNOWN")
  (:not-checked "NOT_CHECKED"))

(smithy/sdk/shapes:define-structure stack-event common-lisp:nil
                                    ((stack-id :target-type stack-id :required
                                      common-lisp:t :member-name "StackId")
                                     (event-id :target-type event-id :required
                                      common-lisp:t :member-name "EventId")
                                     (stack-name :target-type stack-name
                                      :required common-lisp:t :member-name
                                      "StackName")
                                     (logical-resource-id :target-type
                                      logical-resource-id :member-name
                                      "LogicalResourceId")
                                     (physical-resource-id :target-type
                                      physical-resource-id :member-name
                                      "PhysicalResourceId")
                                     (resource-type :target-type resource-type
                                      :member-name "ResourceType")
                                     (timestamp :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "Timestamp")
                                     (resource-status :target-type
                                      resource-status :member-name
                                      "ResourceStatus")
                                     (resource-status-reason :target-type
                                      resource-status-reason :member-name
                                      "ResourceStatusReason")
                                     (resource-properties :target-type
                                      resource-properties :member-name
                                      "ResourceProperties")
                                     (client-request-token :target-type
                                      client-request-token :member-name
                                      "ClientRequestToken")
                                     (hook-type :target-type hook-type
                                      :member-name "HookType")
                                     (hook-status :target-type hook-status
                                      :member-name "HookStatus")
                                     (hook-status-reason :target-type
                                      hook-status-reason :member-name
                                      "HookStatusReason")
                                     (hook-invocation-point :target-type
                                      hook-invocation-point :member-name
                                      "HookInvocationPoint")
                                     (hook-failure-mode :target-type
                                      hook-failure-mode :member-name
                                      "HookFailureMode")
                                     (detailed-status :target-type
                                      detailed-status :member-name
                                      "DetailedStatus"))
                                    (:shape-name "StackEvent"))

(smithy/sdk/shapes:define-list stack-events :member stack-event)

(smithy/sdk/shapes:define-type stack-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list stack-id-list :member stack-id)

(smithy/sdk/shapes:define-list stack-ids :member stack-id)

(smithy/sdk/shapes:define-type stack-ids-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure stack-instance common-lisp:nil
                                    ((stack-set-id :target-type stack-set-id
                                      :member-name "StackSetId")
                                     (region :target-type region :member-name
                                      "Region")
                                     (account :target-type account :member-name
                                      "Account")
                                     (stack-id :target-type stack-id
                                      :member-name "StackId")
                                     (parameter-overrides :target-type
                                      parameters :member-name
                                      "ParameterOverrides")
                                     (status :target-type stack-instance-status
                                      :member-name "Status")
                                     (stack-instance-status :target-type
                                      stack-instance-comprehensive-status
                                      :member-name "StackInstanceStatus")
                                     (status-reason :target-type reason
                                      :member-name "StatusReason")
                                     (organizational-unit-id :target-type
                                      organizational-unit-id :member-name
                                      "OrganizationalUnitId")
                                     (drift-status :target-type
                                      stack-drift-status :member-name
                                      "DriftStatus")
                                     (last-drift-check-timestamp :target-type
                                      timestamp :member-name
                                      "LastDriftCheckTimestamp")
                                     (last-operation-id :target-type
                                      client-request-token :member-name
                                      "LastOperationId"))
                                    (:shape-name "StackInstance"))

(smithy/sdk/shapes:define-structure stack-instance-comprehensive-status
                                    common-lisp:nil
                                    ((detailed-status :target-type
                                      stack-instance-detailed-status
                                      :member-name "DetailedStatus"))
                                    (:shape-name
                                     "StackInstanceComprehensiveStatus"))

(smithy/sdk/shapes:define-enum stack-instance-detailed-status
    common-lisp:nil
  (:pending "PENDING")
  (:running "RUNNING")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED")
  (:cancelled "CANCELLED")
  (:inoperable "INOPERABLE")
  (:skipped-suspended-account "SKIPPED_SUSPENDED_ACCOUNT")
  (:failed-import "FAILED_IMPORT"))

(smithy/sdk/shapes:define-structure stack-instance-filter common-lisp:nil
                                    ((name :target-type
                                      stack-instance-filter-name :member-name
                                      "Name")
                                     (values :target-type
                                      stack-instance-filter-values :member-name
                                      "Values"))
                                    (:shape-name "StackInstanceFilter"))

(smithy/sdk/shapes:define-enum stack-instance-filter-name
    common-lisp:nil
  (:detailed-status "DETAILED_STATUS")
  (:last-operation-id "LAST_OPERATION_ID")
  (:drift-status "DRIFT_STATUS"))

(smithy/sdk/shapes:define-type stack-instance-filter-values
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list stack-instance-filters :member
                               stack-instance-filter)

(smithy/sdk/shapes:define-error stack-instance-not-found-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "StackInstanceNotFoundException")
                                (:error-name "StackInstanceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-list stack-instance-resource-drifts-summaries :member
                               stack-instance-resource-drifts-summary)

(smithy/sdk/shapes:define-structure stack-instance-resource-drifts-summary
                                    common-lisp:nil
                                    ((stack-id :target-type stack-id :required
                                      common-lisp:t :member-name "StackId")
                                     (logical-resource-id :target-type
                                      logical-resource-id :required
                                      common-lisp:t :member-name
                                      "LogicalResourceId")
                                     (physical-resource-id :target-type
                                      physical-resource-id :member-name
                                      "PhysicalResourceId")
                                     (physical-resource-id-context :target-type
                                      physical-resource-id-context :member-name
                                      "PhysicalResourceIdContext")
                                     (resource-type :target-type resource-type
                                      :required common-lisp:t :member-name
                                      "ResourceType")
                                     (property-differences :target-type
                                      property-differences :member-name
                                      "PropertyDifferences")
                                     (stack-resource-drift-status :target-type
                                      stack-resource-drift-status :required
                                      common-lisp:t :member-name
                                      "StackResourceDriftStatus")
                                     (timestamp :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "Timestamp"))
                                    (:shape-name
                                     "StackInstanceResourceDriftsSummary"))

(smithy/sdk/shapes:define-enum stack-instance-status
    common-lisp:nil
  (:current "CURRENT")
  (:outdated "OUTDATED")
  (:inoperable "INOPERABLE"))

(smithy/sdk/shapes:define-list stack-instance-summaries :member
                               stack-instance-summary)

(smithy/sdk/shapes:define-structure stack-instance-summary common-lisp:nil
                                    ((stack-set-id :target-type stack-set-id
                                      :member-name "StackSetId")
                                     (region :target-type region :member-name
                                      "Region")
                                     (account :target-type account :member-name
                                      "Account")
                                     (stack-id :target-type stack-id
                                      :member-name "StackId")
                                     (status :target-type stack-instance-status
                                      :member-name "Status")
                                     (status-reason :target-type reason
                                      :member-name "StatusReason")
                                     (stack-instance-status :target-type
                                      stack-instance-comprehensive-status
                                      :member-name "StackInstanceStatus")
                                     (organizational-unit-id :target-type
                                      organizational-unit-id :member-name
                                      "OrganizationalUnitId")
                                     (drift-status :target-type
                                      stack-drift-status :member-name
                                      "DriftStatus")
                                     (last-drift-check-timestamp :target-type
                                      timestamp :member-name
                                      "LastDriftCheckTimestamp")
                                     (last-operation-id :target-type
                                      client-request-token :member-name
                                      "LastOperationId"))
                                    (:shape-name "StackInstanceSummary"))

(smithy/sdk/shapes:define-type stack-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type stack-name-or-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error stack-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "StackNotFoundException")
                                (:error-name "StackNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type stack-policy-body smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type stack-policy-during-update-body
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type stack-policy-during-update-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type stack-policy-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure stack-refactor-action common-lisp:nil
                                    ((action :target-type
                                      stack-refactor-action-type :member-name
                                      "Action")
                                     (entity :target-type
                                      stack-refactor-action-entity :member-name
                                      "Entity")
                                     (physical-resource-id :target-type
                                      physical-resource-id :member-name
                                      "PhysicalResourceId")
                                     (resource-identifier :target-type
                                      stack-refactor-resource-identifier
                                      :member-name "ResourceIdentifier")
                                     (description :target-type description
                                      :member-name "Description")
                                     (detection :target-type
                                      stack-refactor-detection :member-name
                                      "Detection")
                                     (detection-reason :target-type
                                      detection-reason :member-name
                                      "DetectionReason")
                                     (tag-resources :target-type
                                      stack-refactor-tag-resources :member-name
                                      "TagResources")
                                     (untag-resources :target-type
                                      stack-refactor-untag-resources
                                      :member-name "UntagResources")
                                     (resource-mapping :target-type
                                      resource-mapping :member-name
                                      "ResourceMapping"))
                                    (:shape-name "StackRefactorAction"))

(smithy/sdk/shapes:define-enum stack-refactor-action-entity
    common-lisp:nil
  (:resource "RESOURCE")
  (:stack "STACK"))

(smithy/sdk/shapes:define-enum stack-refactor-action-type
    common-lisp:nil
  (:move "MOVE")
  (:create "CREATE"))

(smithy/sdk/shapes:define-list stack-refactor-actions :member
                               stack-refactor-action)

(smithy/sdk/shapes:define-enum stack-refactor-detection
    common-lisp:nil
  (:auto "AUTO")
  (:manual "MANUAL"))

(smithy/sdk/shapes:define-enum stack-refactor-execution-status
    common-lisp:nil
  (:unavailable "UNAVAILABLE")
  (:available "AVAILABLE")
  (:obsolete "OBSOLETE")
  (:execute-in-progress "EXECUTE_IN_PROGRESS")
  (:execute-complete "EXECUTE_COMPLETE")
  (:execute-failed "EXECUTE_FAILED")
  (:rollback-in-progress "ROLLBACK_IN_PROGRESS")
  (:rollback-complete "ROLLBACK_COMPLETE")
  (:rollback-failed "ROLLBACK_FAILED"))

(smithy/sdk/shapes:define-list stack-refactor-execution-status-filter :member
                               stack-refactor-execution-status)

(smithy/sdk/shapes:define-type stack-refactor-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error stack-refactor-not-found-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "StackRefactorNotFoundException")
                                (:error-name "StackRefactorNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type stack-refactor-resource-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum stack-refactor-status
    common-lisp:nil
  (:create-in-progress "CREATE_IN_PROGRESS")
  (:create-complete "CREATE_COMPLETE")
  (:create-failed "CREATE_FAILED")
  (:delete-in-progress "DELETE_IN_PROGRESS")
  (:delete-complete "DELETE_COMPLETE")
  (:delete-failed "DELETE_FAILED"))

(smithy/sdk/shapes:define-type stack-refactor-status-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list stack-refactor-summaries :member
                               stack-refactor-summary)

(smithy/sdk/shapes:define-structure stack-refactor-summary common-lisp:nil
                                    ((stack-refactor-id :target-type
                                      stack-refactor-id :member-name
                                      "StackRefactorId")
                                     (description :target-type description
                                      :member-name "Description")
                                     (execution-status :target-type
                                      stack-refactor-execution-status
                                      :member-name "ExecutionStatus")
                                     (execution-status-reason :target-type
                                      execution-status-reason :member-name
                                      "ExecutionStatusReason")
                                     (status :target-type stack-refactor-status
                                      :member-name "Status")
                                     (status-reason :target-type
                                      stack-refactor-status-reason :member-name
                                      "StatusReason"))
                                    (:shape-name "StackRefactorSummary"))

(smithy/sdk/shapes:define-list stack-refactor-tag-resources :member tag)

(smithy/sdk/shapes:define-list stack-refactor-untag-resources :member tag-key)

(smithy/sdk/shapes:define-structure stack-resource common-lisp:nil
                                    ((stack-name :target-type stack-name
                                      :member-name "StackName")
                                     (stack-id :target-type stack-id
                                      :member-name "StackId")
                                     (logical-resource-id :target-type
                                      logical-resource-id :required
                                      common-lisp:t :member-name
                                      "LogicalResourceId")
                                     (physical-resource-id :target-type
                                      physical-resource-id :member-name
                                      "PhysicalResourceId")
                                     (resource-type :target-type resource-type
                                      :required common-lisp:t :member-name
                                      "ResourceType")
                                     (timestamp :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "Timestamp")
                                     (resource-status :target-type
                                      resource-status :required common-lisp:t
                                      :member-name "ResourceStatus")
                                     (resource-status-reason :target-type
                                      resource-status-reason :member-name
                                      "ResourceStatusReason")
                                     (description :target-type description
                                      :member-name "Description")
                                     (drift-information :target-type
                                      stack-resource-drift-information
                                      :member-name "DriftInformation")
                                     (module-info :target-type module-info
                                      :member-name "ModuleInfo"))
                                    (:shape-name "StackResource"))

(smithy/sdk/shapes:define-structure stack-resource-detail common-lisp:nil
                                    ((stack-name :target-type stack-name
                                      :member-name "StackName")
                                     (stack-id :target-type stack-id
                                      :member-name "StackId")
                                     (logical-resource-id :target-type
                                      logical-resource-id :required
                                      common-lisp:t :member-name
                                      "LogicalResourceId")
                                     (physical-resource-id :target-type
                                      physical-resource-id :member-name
                                      "PhysicalResourceId")
                                     (resource-type :target-type resource-type
                                      :required common-lisp:t :member-name
                                      "ResourceType")
                                     (last-updated-timestamp :target-type
                                      timestamp :required common-lisp:t
                                      :member-name "LastUpdatedTimestamp")
                                     (resource-status :target-type
                                      resource-status :required common-lisp:t
                                      :member-name "ResourceStatus")
                                     (resource-status-reason :target-type
                                      resource-status-reason :member-name
                                      "ResourceStatusReason")
                                     (description :target-type description
                                      :member-name "Description")
                                     (metadata :target-type metadata
                                      :member-name "Metadata")
                                     (drift-information :target-type
                                      stack-resource-drift-information
                                      :member-name "DriftInformation")
                                     (module-info :target-type module-info
                                      :member-name "ModuleInfo"))
                                    (:shape-name "StackResourceDetail"))

(smithy/sdk/shapes:define-structure stack-resource-drift common-lisp:nil
                                    ((stack-id :target-type stack-id :required
                                      common-lisp:t :member-name "StackId")
                                     (logical-resource-id :target-type
                                      logical-resource-id :required
                                      common-lisp:t :member-name
                                      "LogicalResourceId")
                                     (physical-resource-id :target-type
                                      physical-resource-id :member-name
                                      "PhysicalResourceId")
                                     (physical-resource-id-context :target-type
                                      physical-resource-id-context :member-name
                                      "PhysicalResourceIdContext")
                                     (resource-type :target-type resource-type
                                      :required common-lisp:t :member-name
                                      "ResourceType")
                                     (expected-properties :target-type
                                      properties :member-name
                                      "ExpectedProperties")
                                     (actual-properties :target-type properties
                                      :member-name "ActualProperties")
                                     (property-differences :target-type
                                      property-differences :member-name
                                      "PropertyDifferences")
                                     (stack-resource-drift-status :target-type
                                      stack-resource-drift-status :required
                                      common-lisp:t :member-name
                                      "StackResourceDriftStatus")
                                     (timestamp :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "Timestamp")
                                     (module-info :target-type module-info
                                      :member-name "ModuleInfo")
                                     (drift-status-reason :target-type
                                      stack-resource-drift-status-reason
                                      :member-name "DriftStatusReason"))
                                    (:shape-name "StackResourceDrift"))

(smithy/sdk/shapes:define-structure stack-resource-drift-information
                                    common-lisp:nil
                                    ((stack-resource-drift-status :target-type
                                      stack-resource-drift-status :required
                                      common-lisp:t :member-name
                                      "StackResourceDriftStatus")
                                     (last-check-timestamp :target-type
                                      timestamp :member-name
                                      "LastCheckTimestamp"))
                                    (:shape-name
                                     "StackResourceDriftInformation"))

(smithy/sdk/shapes:define-structure stack-resource-drift-information-summary
                                    common-lisp:nil
                                    ((stack-resource-drift-status :target-type
                                      stack-resource-drift-status :required
                                      common-lisp:t :member-name
                                      "StackResourceDriftStatus")
                                     (last-check-timestamp :target-type
                                      timestamp :member-name
                                      "LastCheckTimestamp"))
                                    (:shape-name
                                     "StackResourceDriftInformationSummary"))

(smithy/sdk/shapes:define-enum stack-resource-drift-status
    common-lisp:nil
  (:in-sync "IN_SYNC")
  (:modified "MODIFIED")
  (:deleted "DELETED")
  (:not-checked "NOT_CHECKED")
  (:unknown "UNKNOWN"))

(smithy/sdk/shapes:define-list stack-resource-drift-status-filters :member
                               stack-resource-drift-status)

(smithy/sdk/shapes:define-type stack-resource-drift-status-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list stack-resource-drifts :member
                               stack-resource-drift)

(smithy/sdk/shapes:define-list stack-resource-summaries :member
                               stack-resource-summary)

(smithy/sdk/shapes:define-structure stack-resource-summary common-lisp:nil
                                    ((logical-resource-id :target-type
                                      logical-resource-id :required
                                      common-lisp:t :member-name
                                      "LogicalResourceId")
                                     (physical-resource-id :target-type
                                      physical-resource-id :member-name
                                      "PhysicalResourceId")
                                     (resource-type :target-type resource-type
                                      :required common-lisp:t :member-name
                                      "ResourceType")
                                     (last-updated-timestamp :target-type
                                      timestamp :required common-lisp:t
                                      :member-name "LastUpdatedTimestamp")
                                     (resource-status :target-type
                                      resource-status :required common-lisp:t
                                      :member-name "ResourceStatus")
                                     (resource-status-reason :target-type
                                      resource-status-reason :member-name
                                      "ResourceStatusReason")
                                     (drift-information :target-type
                                      stack-resource-drift-information-summary
                                      :member-name "DriftInformation")
                                     (module-info :target-type module-info
                                      :member-name "ModuleInfo"))
                                    (:shape-name "StackResourceSummary"))

(smithy/sdk/shapes:define-list stack-resources :member stack-resource)

(smithy/sdk/shapes:define-structure stack-set common-lisp:nil
                                    ((stack-set-name :target-type
                                      stack-set-name :member-name
                                      "StackSetName")
                                     (stack-set-id :target-type stack-set-id
                                      :member-name "StackSetId")
                                     (description :target-type description
                                      :member-name "Description")
                                     (status :target-type stack-set-status
                                      :member-name "Status")
                                     (template-body :target-type template-body
                                      :member-name "TemplateBody")
                                     (parameters :target-type parameters
                                      :member-name "Parameters")
                                     (capabilities :target-type capabilities
                                      :member-name "Capabilities")
                                     (tags :target-type tags :member-name
                                      "Tags")
                                     (stack-set-arn :target-type stack-set-arn
                                      :member-name "StackSetARN")
                                     (administration-role-arn :target-type
                                      role-arn :member-name
                                      "AdministrationRoleARN")
                                     (execution-role-name :target-type
                                      execution-role-name :member-name
                                      "ExecutionRoleName")
                                     (stack-set-drift-detection-details
                                      :target-type
                                      stack-set-drift-detection-details
                                      :member-name
                                      "StackSetDriftDetectionDetails")
                                     (auto-deployment :target-type
                                      auto-deployment :member-name
                                      "AutoDeployment")
                                     (permission-model :target-type
                                      permission-models :member-name
                                      "PermissionModel")
                                     (organizational-unit-ids :target-type
                                      organizational-unit-id-list :member-name
                                      "OrganizationalUnitIds")
                                     (managed-execution :target-type
                                      managed-execution :member-name
                                      "ManagedExecution")
                                     (regions :target-type region-list
                                      :member-name "Regions"))
                                    (:shape-name "StackSet"))

(smithy/sdk/shapes:define-type stack-set-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list stack-set-auto-deployment-target-summaries
                               :member stack-set-auto-deployment-target-summary)

(smithy/sdk/shapes:define-structure stack-set-auto-deployment-target-summary
                                    common-lisp:nil
                                    ((organizational-unit-id :target-type
                                      organizational-unit-id :member-name
                                      "OrganizationalUnitId")
                                     (regions :target-type region-list
                                      :member-name "Regions"))
                                    (:shape-name
                                     "StackSetAutoDeploymentTargetSummary"))

(smithy/sdk/shapes:define-structure stack-set-drift-detection-details
                                    common-lisp:nil
                                    ((drift-status :target-type
                                      stack-set-drift-status :member-name
                                      "DriftStatus")
                                     (drift-detection-status :target-type
                                      stack-set-drift-detection-status
                                      :member-name "DriftDetectionStatus")
                                     (last-drift-check-timestamp :target-type
                                      timestamp :member-name
                                      "LastDriftCheckTimestamp")
                                     (total-stack-instances-count :target-type
                                      total-stack-instances-count :member-name
                                      "TotalStackInstancesCount")
                                     (drifted-stack-instances-count
                                      :target-type
                                      drifted-stack-instances-count
                                      :member-name
                                      "DriftedStackInstancesCount")
                                     (in-sync-stack-instances-count
                                      :target-type
                                      in-sync-stack-instances-count
                                      :member-name "InSyncStackInstancesCount")
                                     (in-progress-stack-instances-count
                                      :target-type
                                      in-progress-stack-instances-count
                                      :member-name
                                      "InProgressStackInstancesCount")
                                     (failed-stack-instances-count :target-type
                                      failed-stack-instances-count :member-name
                                      "FailedStackInstancesCount"))
                                    (:shape-name
                                     "StackSetDriftDetectionDetails"))

(smithy/sdk/shapes:define-enum stack-set-drift-detection-status
    common-lisp:nil
  (:completed "COMPLETED")
  (:failed "FAILED")
  (:partial-success "PARTIAL_SUCCESS")
  (:in-progress "IN_PROGRESS")
  (:stopped "STOPPED"))

(smithy/sdk/shapes:define-enum stack-set-drift-status
    common-lisp:nil
  (:drifted "DRIFTED")
  (:in-sync "IN_SYNC")
  (:not-checked "NOT_CHECKED"))

(smithy/sdk/shapes:define-type stack-set-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type stack-set-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type stack-set-name-or-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error stack-set-not-empty-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "StackSetNotEmptyException")
                                (:error-name "StackSetNotEmptyException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error stack-set-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "StackSetNotFoundException")
                                (:error-name "StackSetNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure stack-set-operation common-lisp:nil
                                    ((operation-id :target-type
                                      client-request-token :member-name
                                      "OperationId")
                                     (stack-set-id :target-type stack-set-id
                                      :member-name "StackSetId")
                                     (action :target-type
                                      stack-set-operation-action :member-name
                                      "Action")
                                     (status :target-type
                                      stack-set-operation-status :member-name
                                      "Status")
                                     (operation-preferences :target-type
                                      stack-set-operation-preferences
                                      :member-name "OperationPreferences")
                                     (retain-stacks :target-type
                                      retain-stacks-nullable :member-name
                                      "RetainStacks")
                                     (administration-role-arn :target-type
                                      role-arn :member-name
                                      "AdministrationRoleARN")
                                     (execution-role-name :target-type
                                      execution-role-name :member-name
                                      "ExecutionRoleName")
                                     (creation-timestamp :target-type timestamp
                                      :member-name "CreationTimestamp")
                                     (end-timestamp :target-type timestamp
                                      :member-name "EndTimestamp")
                                     (deployment-targets :target-type
                                      deployment-targets :member-name
                                      "DeploymentTargets")
                                     (stack-set-drift-detection-details
                                      :target-type
                                      stack-set-drift-detection-details
                                      :member-name
                                      "StackSetDriftDetectionDetails")
                                     (status-reason :target-type
                                      stack-set-operation-status-reason
                                      :member-name "StatusReason")
                                     (status-details :target-type
                                      stack-set-operation-status-details
                                      :member-name "StatusDetails"))
                                    (:shape-name "StackSetOperation"))

(smithy/sdk/shapes:define-enum stack-set-operation-action
    common-lisp:nil
  (:create "CREATE")
  (:update "UPDATE")
  (:delete "DELETE")
  (:detect-drift "DETECT_DRIFT"))

(smithy/sdk/shapes:define-structure stack-set-operation-preferences
                                    common-lisp:nil
                                    ((region-concurrency-type :target-type
                                      region-concurrency-type :member-name
                                      "RegionConcurrencyType")
                                     (region-order :target-type region-list
                                      :member-name "RegionOrder")
                                     (failure-tolerance-count :target-type
                                      failure-tolerance-count :member-name
                                      "FailureToleranceCount")
                                     (failure-tolerance-percentage :target-type
                                      failure-tolerance-percentage :member-name
                                      "FailureTolerancePercentage")
                                     (max-concurrent-count :target-type
                                      max-concurrent-count :member-name
                                      "MaxConcurrentCount")
                                     (max-concurrent-percentage :target-type
                                      max-concurrent-percentage :member-name
                                      "MaxConcurrentPercentage")
                                     (concurrency-mode :target-type
                                      concurrency-mode :member-name
                                      "ConcurrencyMode"))
                                    (:shape-name
                                     "StackSetOperationPreferences"))

(smithy/sdk/shapes:define-enum stack-set-operation-result-status
    common-lisp:nil
  (:pending "PENDING")
  (:running "RUNNING")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED")
  (:cancelled "CANCELLED"))

(smithy/sdk/shapes:define-list stack-set-operation-result-summaries :member
                               stack-set-operation-result-summary)

(smithy/sdk/shapes:define-structure stack-set-operation-result-summary
                                    common-lisp:nil
                                    ((account :target-type account :member-name
                                      "Account")
                                     (region :target-type region :member-name
                                      "Region")
                                     (status :target-type
                                      stack-set-operation-result-status
                                      :member-name "Status")
                                     (status-reason :target-type reason
                                      :member-name "StatusReason")
                                     (account-gate-result :target-type
                                      account-gate-result :member-name
                                      "AccountGateResult")
                                     (organizational-unit-id :target-type
                                      organizational-unit-id :member-name
                                      "OrganizationalUnitId"))
                                    (:shape-name
                                     "StackSetOperationResultSummary"))

(smithy/sdk/shapes:define-enum stack-set-operation-status
    common-lisp:nil
  (:running "RUNNING")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED")
  (:stopping "STOPPING")
  (:stopped "STOPPED")
  (:queued "QUEUED"))

(smithy/sdk/shapes:define-structure stack-set-operation-status-details
                                    common-lisp:nil
                                    ((failed-stack-instances-count :target-type
                                      failed-stack-instances-count :member-name
                                      "FailedStackInstancesCount"))
                                    (:shape-name
                                     "StackSetOperationStatusDetails"))

(smithy/sdk/shapes:define-type stack-set-operation-status-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list stack-set-operation-summaries :member
                               stack-set-operation-summary)

(smithy/sdk/shapes:define-structure stack-set-operation-summary common-lisp:nil
                                    ((operation-id :target-type
                                      client-request-token :member-name
                                      "OperationId")
                                     (action :target-type
                                      stack-set-operation-action :member-name
                                      "Action")
                                     (status :target-type
                                      stack-set-operation-status :member-name
                                      "Status")
                                     (creation-timestamp :target-type timestamp
                                      :member-name "CreationTimestamp")
                                     (end-timestamp :target-type timestamp
                                      :member-name "EndTimestamp")
                                     (status-reason :target-type
                                      stack-set-operation-status-reason
                                      :member-name "StatusReason")
                                     (status-details :target-type
                                      stack-set-operation-status-details
                                      :member-name "StatusDetails")
                                     (operation-preferences :target-type
                                      stack-set-operation-preferences
                                      :member-name "OperationPreferences"))
                                    (:shape-name "StackSetOperationSummary"))

(smithy/sdk/shapes:define-enum stack-set-status
    common-lisp:nil
  (:active "ACTIVE")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-list stack-set-summaries :member stack-set-summary)

(smithy/sdk/shapes:define-structure stack-set-summary common-lisp:nil
                                    ((stack-set-name :target-type
                                      stack-set-name :member-name
                                      "StackSetName")
                                     (stack-set-id :target-type stack-set-id
                                      :member-name "StackSetId")
                                     (description :target-type description
                                      :member-name "Description")
                                     (status :target-type stack-set-status
                                      :member-name "Status")
                                     (auto-deployment :target-type
                                      auto-deployment :member-name
                                      "AutoDeployment")
                                     (permission-model :target-type
                                      permission-models :member-name
                                      "PermissionModel")
                                     (drift-status :target-type
                                      stack-drift-status :member-name
                                      "DriftStatus")
                                     (last-drift-check-timestamp :target-type
                                      timestamp :member-name
                                      "LastDriftCheckTimestamp")
                                     (managed-execution :target-type
                                      managed-execution :member-name
                                      "ManagedExecution"))
                                    (:shape-name "StackSetSummary"))

(smithy/sdk/shapes:define-enum stack-status
    common-lisp:nil
  (:create-in-progress "CREATE_IN_PROGRESS")
  (:create-failed "CREATE_FAILED")
  (:create-complete "CREATE_COMPLETE")
  (:rollback-in-progress "ROLLBACK_IN_PROGRESS")
  (:rollback-failed "ROLLBACK_FAILED")
  (:rollback-complete "ROLLBACK_COMPLETE")
  (:delete-in-progress "DELETE_IN_PROGRESS")
  (:delete-failed "DELETE_FAILED")
  (:delete-complete "DELETE_COMPLETE")
  (:update-in-progress "UPDATE_IN_PROGRESS")
  (:update-complete-cleanup-in-progress "UPDATE_COMPLETE_CLEANUP_IN_PROGRESS")
  (:update-complete "UPDATE_COMPLETE")
  (:update-failed "UPDATE_FAILED")
  (:update-rollback-in-progress "UPDATE_ROLLBACK_IN_PROGRESS")
  (:update-rollback-failed "UPDATE_ROLLBACK_FAILED")
  (:update-rollback-complete-cleanup-in-progress
   "UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS")
  (:update-rollback-complete "UPDATE_ROLLBACK_COMPLETE")
  (:review-in-progress "REVIEW_IN_PROGRESS")
  (:import-in-progress "IMPORT_IN_PROGRESS")
  (:import-complete "IMPORT_COMPLETE")
  (:import-rollback-in-progress "IMPORT_ROLLBACK_IN_PROGRESS")
  (:import-rollback-failed "IMPORT_ROLLBACK_FAILED")
  (:import-rollback-complete "IMPORT_ROLLBACK_COMPLETE"))

(smithy/sdk/shapes:define-list stack-status-filter :member stack-status)

(smithy/sdk/shapes:define-type stack-status-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list stack-summaries :member stack-summary)

(smithy/sdk/shapes:define-structure stack-summary common-lisp:nil
                                    ((stack-id :target-type stack-id
                                      :member-name "StackId")
                                     (stack-name :target-type stack-name
                                      :required common-lisp:t :member-name
                                      "StackName")
                                     (template-description :target-type
                                      template-description :member-name
                                      "TemplateDescription")
                                     (creation-time :target-type creation-time
                                      :required common-lisp:t :member-name
                                      "CreationTime")
                                     (last-updated-time :target-type
                                      last-updated-time :member-name
                                      "LastUpdatedTime")
                                     (deletion-time :target-type deletion-time
                                      :member-name "DeletionTime")
                                     (stack-status :target-type stack-status
                                      :required common-lisp:t :member-name
                                      "StackStatus")
                                     (stack-status-reason :target-type
                                      stack-status-reason :member-name
                                      "StackStatusReason")
                                     (parent-id :target-type stack-id
                                      :member-name "ParentId")
                                     (root-id :target-type stack-id
                                      :member-name "RootId")
                                     (drift-information :target-type
                                      stack-drift-information-summary
                                      :member-name "DriftInformation"))
                                    (:shape-name "StackSummary"))

(smithy/sdk/shapes:define-list stacks :member stack)

(smithy/sdk/shapes:define-list stage-list :member template-stage)

(smithy/sdk/shapes:define-error stale-request-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "StaleRequestException")
                                (:error-name "StaleRequestException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input start-resource-scan-input common-lisp:nil
                                ((client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (scan-filters :target-type scan-filters
                                  :member-name "ScanFilters"))
                                (:shape-name "StartResourceScanInput"))

(smithy/sdk/shapes:define-output start-resource-scan-output common-lisp:nil
                                 ((resource-scan-id :target-type
                                   resource-scan-id :member-name
                                   "ResourceScanId"))
                                 (:shape-name "StartResourceScanOutput"))

(smithy/sdk/shapes:define-type status-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input stop-stack-set-operation-input common-lisp:nil
                                ((stack-set-name :target-type stack-set-name
                                  :required common-lisp:t :member-name
                                  "StackSetName")
                                 (operation-id :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "OperationId")
                                 (call-as :target-type call-as :member-name
                                  "CallAs"))
                                (:shape-name "StopStackSetOperationInput"))

(smithy/sdk/shapes:define-output stop-stack-set-operation-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "StopStackSetOperationOutput"))

(smithy/sdk/shapes:define-type supported-major-version
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list supported-major-versions :member
                               supported-major-version)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tags :member tag)

(smithy/sdk/shapes:define-type template-body smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure template-configuration common-lisp:nil
                                    ((deletion-policy :target-type
                                      generated-template-deletion-policy
                                      :member-name "DeletionPolicy")
                                     (update-replace-policy :target-type
                                      generated-template-update-replace-policy
                                      :member-name "UpdateReplacePolicy"))
                                    (:shape-name "TemplateConfiguration"))

(smithy/sdk/shapes:define-type template-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum template-format
    common-lisp:nil
  (:json "JSON")
  (:yaml "YAML"))

(smithy/sdk/shapes:define-structure template-parameter common-lisp:nil
                                    ((parameter-key :target-type parameter-key
                                      :member-name "ParameterKey")
                                     (default-value :target-type
                                      parameter-value :member-name
                                      "DefaultValue")
                                     (no-echo :target-type no-echo :member-name
                                      "NoEcho")
                                     (description :target-type description
                                      :member-name "Description"))
                                    (:shape-name "TemplateParameter"))

(smithy/sdk/shapes:define-list template-parameters :member template-parameter)

(smithy/sdk/shapes:define-structure template-progress common-lisp:nil
                                    ((resources-succeeded :target-type
                                      resources-succeeded :member-name
                                      "ResourcesSucceeded")
                                     (resources-failed :target-type
                                      resources-failed :member-name
                                      "ResourcesFailed")
                                     (resources-processing :target-type
                                      resources-processing :member-name
                                      "ResourcesProcessing")
                                     (resources-pending :target-type
                                      resources-pending :member-name
                                      "ResourcesPending"))
                                    (:shape-name "TemplateProgress"))

(smithy/sdk/shapes:define-enum template-stage
    common-lisp:nil
  (:original "Original")
  (:processed "Processed"))

(smithy/sdk/shapes:define-type template-status-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list template-summaries :member template-summary)

(smithy/sdk/shapes:define-structure template-summary common-lisp:nil
                                    ((generated-template-id :target-type
                                      generated-template-id :member-name
                                      "GeneratedTemplateId")
                                     (generated-template-name :target-type
                                      generated-template-name :member-name
                                      "GeneratedTemplateName")
                                     (status :target-type
                                      generated-template-status :member-name
                                      "Status")
                                     (status-reason :target-type
                                      template-status-reason :member-name
                                      "StatusReason")
                                     (creation-time :target-type creation-time
                                      :member-name "CreationTime")
                                     (last-updated-time :target-type
                                      last-updated-time :member-name
                                      "LastUpdatedTime")
                                     (number-of-resources :target-type
                                      number-of-resources :member-name
                                      "NumberOfResources"))
                                    (:shape-name "TemplateSummary"))

(smithy/sdk/shapes:define-structure template-summary-config common-lisp:nil
                                    ((treat-unrecognized-resource-types-as-warnings
                                      :target-type
                                      treat-unrecognized-resource-types-as-warnings
                                      :member-name
                                      "TreatUnrecognizedResourceTypesAsWarnings"))
                                    (:shape-name "TemplateSummaryConfig"))

(smithy/sdk/shapes:define-type template-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input test-type-input common-lisp:nil
                                ((arn :target-type type-arn :member-name "Arn")
                                 (type :target-type third-party-type
                                  :member-name "Type")
                                 (type-name :target-type type-name :member-name
                                  "TypeName")
                                 (version-id :target-type type-version-id
                                  :member-name "VersionId")
                                 (log-delivery-bucket :target-type s3bucket
                                  :member-name "LogDeliveryBucket"))
                                (:shape-name "TestTypeInput"))

(smithy/sdk/shapes:define-output test-type-output common-lisp:nil
                                 ((type-version-arn :target-type type-arn
                                   :member-name "TypeVersionArn"))
                                 (:shape-name "TestTypeOutput"))

(smithy/sdk/shapes:define-enum third-party-type
    common-lisp:nil
  (:resource "RESOURCE")
  (:module "MODULE")
  (:hook "HOOK"))

(smithy/sdk/shapes:define-type third-party-type-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timeout-minutes smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error token-already-exists-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "TokenAlreadyExistsException")
                                (:error-name "TokenAlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type total-stack-instances-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type total-warnings smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type transform-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list transforms-list :member transform-name)

(smithy/sdk/shapes:define-type treat-unrecognized-resource-types-as-warnings
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type type-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type type-configuration
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type type-configuration-alias
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type type-configuration-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure type-configuration-details common-lisp:nil
                                    ((arn :target-type type-configuration-arn
                                      :member-name "Arn")
                                     (alias :target-type
                                      type-configuration-alias :member-name
                                      "Alias")
                                     (configuration :target-type
                                      type-configuration :member-name
                                      "Configuration")
                                     (last-updated :target-type timestamp
                                      :member-name "LastUpdated")
                                     (type-arn :target-type type-arn
                                      :member-name "TypeArn")
                                     (type-name :target-type type-name
                                      :member-name "TypeName")
                                     (is-default-configuration :target-type
                                      is-default-configuration :member-name
                                      "IsDefaultConfiguration"))
                                    (:shape-name "TypeConfigurationDetails"))

(smithy/sdk/shapes:define-list type-configuration-details-list :member
                               type-configuration-details)

(smithy/sdk/shapes:define-structure type-configuration-identifier
                                    common-lisp:nil
                                    ((type-arn :target-type type-arn
                                      :member-name "TypeArn")
                                     (type-configuration-alias :target-type
                                      type-configuration-alias :member-name
                                      "TypeConfigurationAlias")
                                     (type-configuration-arn :target-type
                                      type-configuration-arn :member-name
                                      "TypeConfigurationArn")
                                     (type :target-type third-party-type
                                      :member-name "Type")
                                     (type-name :target-type type-name
                                      :member-name "TypeName"))
                                    (:shape-name "TypeConfigurationIdentifier"))

(smithy/sdk/shapes:define-list type-configuration-identifiers :member
                               type-configuration-identifier)

(smithy/sdk/shapes:define-error type-configuration-not-found-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "TypeConfigurationNotFoundException")
                                (:error-name
                                 "TypeConfigurationNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure type-filters common-lisp:nil
                                    ((category :target-type category
                                      :member-name "Category")
                                     (publisher-id :target-type publisher-id
                                      :member-name "PublisherId")
                                     (type-name-prefix :target-type
                                      type-name-prefix :member-name
                                      "TypeNamePrefix"))
                                    (:shape-name "TypeFilters"))

(smithy/sdk/shapes:define-type type-hierarchy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type type-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type type-name-prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error type-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "TypeNotFoundException")
                                (:error-name "TypeNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type type-schema smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list type-summaries :member type-summary)

(smithy/sdk/shapes:define-structure type-summary common-lisp:nil
                                    ((type :target-type registry-type
                                      :member-name "Type")
                                     (type-name :target-type type-name
                                      :member-name "TypeName")
                                     (default-version-id :target-type
                                      type-version-id :member-name
                                      "DefaultVersionId")
                                     (type-arn :target-type type-arn
                                      :member-name "TypeArn")
                                     (last-updated :target-type timestamp
                                      :member-name "LastUpdated")
                                     (description :target-type description
                                      :member-name "Description")
                                     (publisher-id :target-type publisher-id
                                      :member-name "PublisherId")
                                     (original-type-name :target-type type-name
                                      :member-name "OriginalTypeName")
                                     (public-version-number :target-type
                                      public-version-number :member-name
                                      "PublicVersionNumber")
                                     (latest-public-version :target-type
                                      public-version-number :member-name
                                      "LatestPublicVersion")
                                     (publisher-identity :target-type
                                      identity-provider :member-name
                                      "PublisherIdentity")
                                     (publisher-name :target-type
                                      publisher-name :member-name
                                      "PublisherName")
                                     (is-activated :target-type is-activated
                                      :member-name "IsActivated"))
                                    (:shape-name "TypeSummary"))

(smithy/sdk/shapes:define-enum type-tests-status
    common-lisp:nil
  (:passed "PASSED")
  (:failed "FAILED")
  (:in-progress "IN_PROGRESS")
  (:not-tested "NOT_TESTED"))

(smithy/sdk/shapes:define-type type-tests-status-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type type-version-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list type-version-summaries :member
                               type-version-summary)

(smithy/sdk/shapes:define-structure type-version-summary common-lisp:nil
                                    ((type :target-type registry-type
                                      :member-name "Type")
                                     (type-name :target-type type-name
                                      :member-name "TypeName")
                                     (version-id :target-type type-version-id
                                      :member-name "VersionId")
                                     (is-default-version :target-type
                                      is-default-version :member-name
                                      "IsDefaultVersion")
                                     (arn :target-type type-arn :member-name
                                      "Arn")
                                     (time-created :target-type timestamp
                                      :member-name "TimeCreated")
                                     (description :target-type description
                                      :member-name "Description")
                                     (public-version-number :target-type
                                      public-version-number :member-name
                                      "PublicVersionNumber"))
                                    (:shape-name "TypeVersionSummary"))

(smithy/sdk/shapes:define-list unprocessed-type-configurations :member
                               type-configuration-identifier)

(smithy/sdk/shapes:define-input update-generated-template-input common-lisp:nil
                                ((generated-template-name :target-type
                                  generated-template-name :required
                                  common-lisp:t :member-name
                                  "GeneratedTemplateName")
                                 (new-generated-template-name :target-type
                                  generated-template-name :member-name
                                  "NewGeneratedTemplateName")
                                 (add-resources :target-type
                                  resource-definitions :member-name
                                  "AddResources")
                                 (remove-resources :target-type
                                  jazz-logical-resource-ids :member-name
                                  "RemoveResources")
                                 (refresh-all-resources :target-type
                                  refresh-all-resources :member-name
                                  "RefreshAllResources")
                                 (template-configuration :target-type
                                  template-configuration :member-name
                                  "TemplateConfiguration"))
                                (:shape-name "UpdateGeneratedTemplateInput"))

(smithy/sdk/shapes:define-output update-generated-template-output
                                 common-lisp:nil
                                 ((generated-template-id :target-type
                                   generated-template-id :member-name
                                   "GeneratedTemplateId"))
                                 (:shape-name "UpdateGeneratedTemplateOutput"))

(smithy/sdk/shapes:define-input update-stack-input common-lisp:nil
                                ((stack-name :target-type stack-name :required
                                  common-lisp:t :member-name "StackName")
                                 (template-body :target-type template-body
                                  :member-name "TemplateBody")
                                 (template-url :target-type template-url
                                  :member-name "TemplateURL")
                                 (use-previous-template :target-type
                                  use-previous-template :member-name
                                  "UsePreviousTemplate")
                                 (stack-policy-during-update-body :target-type
                                  stack-policy-during-update-body :member-name
                                  "StackPolicyDuringUpdateBody")
                                 (stack-policy-during-update-url :target-type
                                  stack-policy-during-update-url :member-name
                                  "StackPolicyDuringUpdateURL")
                                 (parameters :target-type parameters
                                  :member-name "Parameters")
                                 (capabilities :target-type capabilities
                                  :member-name "Capabilities")
                                 (resource-types :target-type resource-types
                                  :member-name "ResourceTypes")
                                 (role-arn :target-type role-arn :member-name
                                  "RoleARN")
                                 (rollback-configuration :target-type
                                  rollback-configuration :member-name
                                  "RollbackConfiguration")
                                 (stack-policy-body :target-type
                                  stack-policy-body :member-name
                                  "StackPolicyBody")
                                 (stack-policy-url :target-type
                                  stack-policy-url :member-name
                                  "StackPolicyURL")
                                 (notification-arns :target-type
                                  notification-arns :member-name
                                  "NotificationARNs")
                                 (tags :target-type tags :member-name "Tags")
                                 (disable-rollback :target-type
                                  disable-rollback :member-name
                                  "DisableRollback")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (retain-except-on-create :target-type
                                  retain-except-on-create :member-name
                                  "RetainExceptOnCreate"))
                                (:shape-name "UpdateStackInput"))

(smithy/sdk/shapes:define-input update-stack-instances-input common-lisp:nil
                                ((stack-set-name :target-type
                                  stack-set-name-or-id :required common-lisp:t
                                  :member-name "StackSetName")
                                 (accounts :target-type account-list
                                  :member-name "Accounts")
                                 (deployment-targets :target-type
                                  deployment-targets :member-name
                                  "DeploymentTargets")
                                 (regions :target-type region-list :required
                                  common-lisp:t :member-name "Regions")
                                 (parameter-overrides :target-type parameters
                                  :member-name "ParameterOverrides")
                                 (operation-preferences :target-type
                                  stack-set-operation-preferences :member-name
                                  "OperationPreferences")
                                 (operation-id :target-type
                                  client-request-token :member-name
                                  "OperationId")
                                 (call-as :target-type call-as :member-name
                                  "CallAs"))
                                (:shape-name "UpdateStackInstancesInput"))

(smithy/sdk/shapes:define-output update-stack-instances-output common-lisp:nil
                                 ((operation-id :target-type
                                   client-request-token :member-name
                                   "OperationId"))
                                 (:shape-name "UpdateStackInstancesOutput"))

(smithy/sdk/shapes:define-output update-stack-output common-lisp:nil
                                 ((stack-id :target-type stack-id :member-name
                                   "StackId"))
                                 (:shape-name "UpdateStackOutput"))

(smithy/sdk/shapes:define-input update-stack-set-input common-lisp:nil
                                ((stack-set-name :target-type stack-set-name
                                  :required common-lisp:t :member-name
                                  "StackSetName")
                                 (description :target-type description
                                  :member-name "Description")
                                 (template-body :target-type template-body
                                  :member-name "TemplateBody")
                                 (template-url :target-type template-url
                                  :member-name "TemplateURL")
                                 (use-previous-template :target-type
                                  use-previous-template :member-name
                                  "UsePreviousTemplate")
                                 (parameters :target-type parameters
                                  :member-name "Parameters")
                                 (capabilities :target-type capabilities
                                  :member-name "Capabilities")
                                 (tags :target-type tags :member-name "Tags")
                                 (operation-preferences :target-type
                                  stack-set-operation-preferences :member-name
                                  "OperationPreferences")
                                 (administration-role-arn :target-type role-arn
                                  :member-name "AdministrationRoleARN")
                                 (execution-role-name :target-type
                                  execution-role-name :member-name
                                  "ExecutionRoleName")
                                 (deployment-targets :target-type
                                  deployment-targets :member-name
                                  "DeploymentTargets")
                                 (permission-model :target-type
                                  permission-models :member-name
                                  "PermissionModel")
                                 (auto-deployment :target-type auto-deployment
                                  :member-name "AutoDeployment")
                                 (operation-id :target-type
                                  client-request-token :member-name
                                  "OperationId")
                                 (accounts :target-type account-list
                                  :member-name "Accounts")
                                 (regions :target-type region-list :member-name
                                  "Regions")
                                 (call-as :target-type call-as :member-name
                                  "CallAs")
                                 (managed-execution :target-type
                                  managed-execution :member-name
                                  "ManagedExecution"))
                                (:shape-name "UpdateStackSetInput"))

(smithy/sdk/shapes:define-output update-stack-set-output common-lisp:nil
                                 ((operation-id :target-type
                                   client-request-token :member-name
                                   "OperationId"))
                                 (:shape-name "UpdateStackSetOutput"))

(smithy/sdk/shapes:define-input update-termination-protection-input
                                common-lisp:nil
                                ((enable-termination-protection :target-type
                                  enable-termination-protection :required
                                  common-lisp:t :member-name
                                  "EnableTerminationProtection")
                                 (stack-name :target-type stack-name-or-id
                                  :required common-lisp:t :member-name
                                  "StackName"))
                                (:shape-name
                                 "UpdateTerminationProtectionInput"))

(smithy/sdk/shapes:define-output update-termination-protection-output
                                 common-lisp:nil
                                 ((stack-id :target-type stack-id :member-name
                                   "StackId"))
                                 (:shape-name
                                  "UpdateTerminationProtectionOutput"))

(smithy/sdk/shapes:define-type url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type use-previous-template
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type use-previous-value
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input validate-template-input common-lisp:nil
                                ((template-body :target-type template-body
                                  :member-name "TemplateBody")
                                 (template-url :target-type template-url
                                  :member-name "TemplateURL"))
                                (:shape-name "ValidateTemplateInput"))

(smithy/sdk/shapes:define-output validate-template-output common-lisp:nil
                                 ((parameters :target-type template-parameters
                                   :member-name "Parameters")
                                  (description :target-type description
                                   :member-name "Description")
                                  (capabilities :target-type capabilities
                                   :member-name "Capabilities")
                                  (capabilities-reason :target-type
                                   capabilities-reason :member-name
                                   "CapabilitiesReason")
                                  (declared-transforms :target-type
                                   transforms-list :member-name
                                   "DeclaredTransforms"))
                                 (:shape-name "ValidateTemplateOutput"))

(smithy/sdk/shapes:define-type value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum version-bump
    common-lisp:nil
  (:major "MAJOR")
  (:minor "MINOR"))

(smithy/sdk/shapes:define-enum visibility
    common-lisp:nil
  (:public "PUBLIC")
  (:private "PRIVATE"))

(smithy/sdk/shapes:define-structure warning-detail common-lisp:nil
                                    ((type :target-type warning-type
                                      :member-name "Type")
                                     (properties :target-type
                                      warning-properties :member-name
                                      "Properties"))
                                    (:shape-name "WarningDetail"))

(smithy/sdk/shapes:define-list warning-details :member warning-detail)

(smithy/sdk/shapes:define-list warning-properties :member warning-property)

(smithy/sdk/shapes:define-structure warning-property common-lisp:nil
                                    ((property-path :target-type property-path
                                      :member-name "PropertyPath")
                                     (required :target-type required-property
                                      :member-name "Required")
                                     (description :target-type
                                      property-description :member-name
                                      "Description"))
                                    (:shape-name "WarningProperty"))

(smithy/sdk/shapes:define-enum warning-type
    common-lisp:nil
  (:mutually-exclusive-properties "MUTUALLY_EXCLUSIVE_PROPERTIES")
  (:unsupported-properties "UNSUPPORTED_PROPERTIES")
  (:mutually-exclusive-types "MUTUALLY_EXCLUSIVE_TYPES")
  (:excluded-properties "EXCLUDED_PROPERTIES"))

(smithy/sdk/shapes:define-structure warnings common-lisp:nil
                                    ((unrecognized-resource-types :target-type
                                      resource-types :member-name
                                      "UnrecognizedResourceTypes"))
                                    (:shape-name "Warnings"))

(smithy/sdk/operation:define-operation activate-organizations-access
                                       :shape-name
                                       "ActivateOrganizationsAccess" :input
                                       activate-organizations-access-input
                                       :output
                                       activate-organizations-access-output
                                       :errors
                                       (invalid-operation-exception
                                        operation-not-found-exception))

(smithy/sdk/operation:define-operation activate-type :shape-name "ActivateType"
                                       :input activate-type-input :output
                                       activate-type-output :errors
                                       (cfnregistry-exception
                                        type-not-found-exception))

(smithy/sdk/operation:define-operation batch-describe-type-configurations
                                       :shape-name
                                       "BatchDescribeTypeConfigurations" :input
                                       batch-describe-type-configurations-input
                                       :output
                                       batch-describe-type-configurations-output
                                       :errors
                                       (cfnregistry-exception
                                        type-configuration-not-found-exception))

(smithy/sdk/operation:define-operation cancel-update-stack :shape-name
                                       "CancelUpdateStack" :input
                                       cancel-update-stack-input :output
                                       common-lisp:null :errors
                                       (token-already-exists-exception))

(smithy/sdk/operation:define-operation continue-update-rollback :shape-name
                                       "ContinueUpdateRollback" :input
                                       continue-update-rollback-input :output
                                       continue-update-rollback-output :errors
                                       (token-already-exists-exception))

(smithy/sdk/operation:define-operation create-change-set :shape-name
                                       "CreateChangeSet" :input
                                       create-change-set-input :output
                                       create-change-set-output :errors
                                       (already-exists-exception
                                        insufficient-capabilities-exception
                                        limit-exceeded-exception))

(smithy/sdk/operation:define-operation create-generated-template :shape-name
                                       "CreateGeneratedTemplate" :input
                                       create-generated-template-input :output
                                       create-generated-template-output :errors
                                       (already-exists-exception
                                        concurrent-resources-limit-exceeded-exception
                                        limit-exceeded-exception))

(smithy/sdk/operation:define-operation create-stack :shape-name "CreateStack"
                                       :input create-stack-input :output
                                       create-stack-output :errors
                                       (already-exists-exception
                                        insufficient-capabilities-exception
                                        limit-exceeded-exception
                                        token-already-exists-exception))

(smithy/sdk/operation:define-operation create-stack-instances :shape-name
                                       "CreateStackInstances" :input
                                       create-stack-instances-input :output
                                       create-stack-instances-output :errors
                                       (invalid-operation-exception
                                        limit-exceeded-exception
                                        operation-id-already-exists-exception
                                        operation-in-progress-exception
                                        stack-set-not-found-exception
                                        stale-request-exception))

(smithy/sdk/operation:define-operation create-stack-refactor :shape-name
                                       "CreateStackRefactor" :input
                                       create-stack-refactor-input :output
                                       create-stack-refactor-output :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation create-stack-set :shape-name
                                       "CreateStackSet" :input
                                       create-stack-set-input :output
                                       create-stack-set-output :errors
                                       (created-but-modified-exception
                                        limit-exceeded-exception
                                        name-already-exists-exception))

(smithy/sdk/operation:define-operation deactivate-organizations-access
                                       :shape-name
                                       "DeactivateOrganizationsAccess" :input
                                       deactivate-organizations-access-input
                                       :output
                                       deactivate-organizations-access-output
                                       :errors
                                       (invalid-operation-exception
                                        operation-not-found-exception))

(smithy/sdk/operation:define-operation deactivate-type :shape-name
                                       "DeactivateType" :input
                                       deactivate-type-input :output
                                       deactivate-type-output :errors
                                       (cfnregistry-exception
                                        type-not-found-exception))

(smithy/sdk/operation:define-operation delete-change-set :shape-name
                                       "DeleteChangeSet" :input
                                       delete-change-set-input :output
                                       delete-change-set-output :errors
                                       (invalid-change-set-status-exception))

(smithy/sdk/operation:define-operation delete-generated-template :shape-name
                                       "DeleteGeneratedTemplate" :input
                                       delete-generated-template-input :output
                                       common-lisp:null :errors
                                       (concurrent-resources-limit-exceeded-exception
                                        generated-template-not-found-exception))

(smithy/sdk/operation:define-operation delete-stack :shape-name "DeleteStack"
                                       :input delete-stack-input :output
                                       common-lisp:null :errors
                                       (token-already-exists-exception))

(smithy/sdk/operation:define-operation delete-stack-instances :shape-name
                                       "DeleteStackInstances" :input
                                       delete-stack-instances-input :output
                                       delete-stack-instances-output :errors
                                       (invalid-operation-exception
                                        operation-id-already-exists-exception
                                        operation-in-progress-exception
                                        stack-set-not-found-exception
                                        stale-request-exception))

(smithy/sdk/operation:define-operation delete-stack-set :shape-name
                                       "DeleteStackSet" :input
                                       delete-stack-set-input :output
                                       delete-stack-set-output :errors
                                       (operation-in-progress-exception
                                        stack-set-not-empty-exception))

(smithy/sdk/operation:define-operation deregister-type :shape-name
                                       "DeregisterType" :input
                                       deregister-type-input :output
                                       deregister-type-output :errors
                                       (cfnregistry-exception
                                        type-not-found-exception))

(smithy/sdk/operation:define-operation describe-account-limits :shape-name
                                       "DescribeAccountLimits" :input
                                       describe-account-limits-input :output
                                       describe-account-limits-output :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation describe-change-set :shape-name
                                       "DescribeChangeSet" :input
                                       describe-change-set-input :output
                                       describe-change-set-output :errors
                                       (change-set-not-found-exception))

(smithy/sdk/operation:define-operation describe-change-set-hooks :shape-name
                                       "DescribeChangeSetHooks" :input
                                       describe-change-set-hooks-input :output
                                       describe-change-set-hooks-output :errors
                                       (change-set-not-found-exception))

(smithy/sdk/operation:define-operation describe-generated-template :shape-name
                                       "DescribeGeneratedTemplate" :input
                                       describe-generated-template-input
                                       :output
                                       describe-generated-template-output
                                       :errors
                                       (generated-template-not-found-exception))

(smithy/sdk/operation:define-operation describe-organizations-access
                                       :shape-name
                                       "DescribeOrganizationsAccess" :input
                                       describe-organizations-access-input
                                       :output
                                       describe-organizations-access-output
                                       :errors
                                       (invalid-operation-exception
                                        operation-not-found-exception))

(smithy/sdk/operation:define-operation describe-publisher :shape-name
                                       "DescribePublisher" :input
                                       describe-publisher-input :output
                                       describe-publisher-output :errors
                                       (cfnregistry-exception))

(smithy/sdk/operation:define-operation describe-resource-scan :shape-name
                                       "DescribeResourceScan" :input
                                       describe-resource-scan-input :output
                                       describe-resource-scan-output :errors
                                       (resource-scan-not-found-exception))

(smithy/sdk/operation:define-operation describe-stack-drift-detection-status
                                       :shape-name
                                       "DescribeStackDriftDetectionStatus"
                                       :input
                                       describe-stack-drift-detection-status-input
                                       :output
                                       describe-stack-drift-detection-status-output
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation describe-stack-events :shape-name
                                       "DescribeStackEvents" :input
                                       describe-stack-events-input :output
                                       describe-stack-events-output :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation describe-stack-instance :shape-name
                                       "DescribeStackInstance" :input
                                       describe-stack-instance-input :output
                                       describe-stack-instance-output :errors
                                       (stack-instance-not-found-exception
                                        stack-set-not-found-exception))

(smithy/sdk/operation:define-operation describe-stack-refactor :shape-name
                                       "DescribeStackRefactor" :input
                                       describe-stack-refactor-input :output
                                       describe-stack-refactor-output :errors
                                       (stack-refactor-not-found-exception))

(smithy/sdk/operation:define-operation describe-stack-resource :shape-name
                                       "DescribeStackResource" :input
                                       describe-stack-resource-input :output
                                       describe-stack-resource-output :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation describe-stack-resource-drifts
                                       :shape-name
                                       "DescribeStackResourceDrifts" :input
                                       describe-stack-resource-drifts-input
                                       :output
                                       describe-stack-resource-drifts-output
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation describe-stack-resources :shape-name
                                       "DescribeStackResources" :input
                                       describe-stack-resources-input :output
                                       describe-stack-resources-output :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation describe-stack-set :shape-name
                                       "DescribeStackSet" :input
                                       describe-stack-set-input :output
                                       describe-stack-set-output :errors
                                       (stack-set-not-found-exception))

(smithy/sdk/operation:define-operation describe-stack-set-operation :shape-name
                                       "DescribeStackSetOperation" :input
                                       describe-stack-set-operation-input
                                       :output
                                       describe-stack-set-operation-output
                                       :errors
                                       (operation-not-found-exception
                                        stack-set-not-found-exception))

(smithy/sdk/operation:define-operation describe-stacks :shape-name
                                       "DescribeStacks" :input
                                       describe-stacks-input :output
                                       describe-stacks-output :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation describe-type :shape-name "DescribeType"
                                       :input describe-type-input :output
                                       describe-type-output :errors
                                       (cfnregistry-exception
                                        type-not-found-exception))

(smithy/sdk/operation:define-operation describe-type-registration :shape-name
                                       "DescribeTypeRegistration" :input
                                       describe-type-registration-input :output
                                       describe-type-registration-output
                                       :errors (cfnregistry-exception))

(smithy/sdk/operation:define-operation detect-stack-drift :shape-name
                                       "DetectStackDrift" :input
                                       detect-stack-drift-input :output
                                       detect-stack-drift-output :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation detect-stack-resource-drift :shape-name
                                       "DetectStackResourceDrift" :input
                                       detect-stack-resource-drift-input
                                       :output
                                       detect-stack-resource-drift-output
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation detect-stack-set-drift :shape-name
                                       "DetectStackSetDrift" :input
                                       detect-stack-set-drift-input :output
                                       detect-stack-set-drift-output :errors
                                       (invalid-operation-exception
                                        operation-in-progress-exception
                                        stack-set-not-found-exception))

(smithy/sdk/operation:define-operation estimate-template-cost :shape-name
                                       "EstimateTemplateCost" :input
                                       estimate-template-cost-input :output
                                       estimate-template-cost-output :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation execute-change-set :shape-name
                                       "ExecuteChangeSet" :input
                                       execute-change-set-input :output
                                       execute-change-set-output :errors
                                       (change-set-not-found-exception
                                        insufficient-capabilities-exception
                                        invalid-change-set-status-exception
                                        token-already-exists-exception))

(smithy/sdk/operation:define-operation execute-stack-refactor :shape-name
                                       "ExecuteStackRefactor" :input
                                       execute-stack-refactor-input :output
                                       common-lisp:null :errors common-lisp:nil)

(smithy/sdk/operation:define-operation get-generated-template :shape-name
                                       "GetGeneratedTemplate" :input
                                       get-generated-template-input :output
                                       get-generated-template-output :errors
                                       (generated-template-not-found-exception))

(smithy/sdk/operation:define-operation get-stack-policy :shape-name
                                       "GetStackPolicy" :input
                                       get-stack-policy-input :output
                                       get-stack-policy-output :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation get-template :shape-name "GetTemplate"
                                       :input get-template-input :output
                                       get-template-output :errors
                                       (change-set-not-found-exception))

(smithy/sdk/operation:define-operation get-template-summary :shape-name
                                       "GetTemplateSummary" :input
                                       get-template-summary-input :output
                                       get-template-summary-output :errors
                                       (stack-set-not-found-exception))

(smithy/sdk/operation:define-operation import-stacks-to-stack-set :shape-name
                                       "ImportStacksToStackSet" :input
                                       import-stacks-to-stack-set-input :output
                                       import-stacks-to-stack-set-output
                                       :errors
                                       (invalid-operation-exception
                                        limit-exceeded-exception
                                        operation-id-already-exists-exception
                                        operation-in-progress-exception
                                        stack-not-found-exception
                                        stack-set-not-found-exception
                                        stale-request-exception))

(smithy/sdk/operation:define-operation list-change-sets :shape-name
                                       "ListChangeSets" :input
                                       list-change-sets-input :output
                                       list-change-sets-output :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation list-exports :shape-name "ListExports"
                                       :input list-exports-input :output
                                       list-exports-output :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation list-generated-templates :shape-name
                                       "ListGeneratedTemplates" :input
                                       list-generated-templates-input :output
                                       list-generated-templates-output :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation list-hook-results :shape-name
                                       "ListHookResults" :input
                                       list-hook-results-input :output
                                       list-hook-results-output :errors
                                       (hook-result-not-found-exception))

(smithy/sdk/operation:define-operation list-imports :shape-name "ListImports"
                                       :input list-imports-input :output
                                       list-imports-output :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation list-resource-scan-related-resources
                                       :shape-name
                                       "ListResourceScanRelatedResources"
                                       :input
                                       list-resource-scan-related-resources-input
                                       :output
                                       list-resource-scan-related-resources-output
                                       :errors
                                       (resource-scan-in-progress-exception
                                        resource-scan-not-found-exception))

(smithy/sdk/operation:define-operation list-resource-scan-resources :shape-name
                                       "ListResourceScanResources" :input
                                       list-resource-scan-resources-input
                                       :output
                                       list-resource-scan-resources-output
                                       :errors
                                       (resource-scan-in-progress-exception
                                        resource-scan-not-found-exception))

(smithy/sdk/operation:define-operation list-resource-scans :shape-name
                                       "ListResourceScans" :input
                                       list-resource-scans-input :output
                                       list-resource-scans-output :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation list-stack-instance-resource-drifts
                                       :shape-name
                                       "ListStackInstanceResourceDrifts" :input
                                       list-stack-instance-resource-drifts-input
                                       :output
                                       list-stack-instance-resource-drifts-output
                                       :errors
                                       (operation-not-found-exception
                                        stack-instance-not-found-exception
                                        stack-set-not-found-exception))

(smithy/sdk/operation:define-operation list-stack-instances :shape-name
                                       "ListStackInstances" :input
                                       list-stack-instances-input :output
                                       list-stack-instances-output :errors
                                       (stack-set-not-found-exception))

(smithy/sdk/operation:define-operation list-stack-refactor-actions :shape-name
                                       "ListStackRefactorActions" :input
                                       list-stack-refactor-actions-input
                                       :output
                                       list-stack-refactor-actions-output
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation list-stack-refactors :shape-name
                                       "ListStackRefactors" :input
                                       list-stack-refactors-input :output
                                       list-stack-refactors-output :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation list-stack-resources :shape-name
                                       "ListStackResources" :input
                                       list-stack-resources-input :output
                                       list-stack-resources-output :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation list-stack-set-auto-deployment-targets
                                       :shape-name
                                       "ListStackSetAutoDeploymentTargets"
                                       :input
                                       list-stack-set-auto-deployment-targets-input
                                       :output
                                       list-stack-set-auto-deployment-targets-output
                                       :errors (stack-set-not-found-exception))

(smithy/sdk/operation:define-operation list-stack-set-operation-results
                                       :shape-name
                                       "ListStackSetOperationResults" :input
                                       list-stack-set-operation-results-input
                                       :output
                                       list-stack-set-operation-results-output
                                       :errors
                                       (operation-not-found-exception
                                        stack-set-not-found-exception))

(smithy/sdk/operation:define-operation list-stack-set-operations :shape-name
                                       "ListStackSetOperations" :input
                                       list-stack-set-operations-input :output
                                       list-stack-set-operations-output :errors
                                       (stack-set-not-found-exception))

(smithy/sdk/operation:define-operation list-stack-sets :shape-name
                                       "ListStackSets" :input
                                       list-stack-sets-input :output
                                       list-stack-sets-output :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation list-stacks :shape-name "ListStacks"
                                       :input list-stacks-input :output
                                       list-stacks-output :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation list-type-registrations :shape-name
                                       "ListTypeRegistrations" :input
                                       list-type-registrations-input :output
                                       list-type-registrations-output :errors
                                       (cfnregistry-exception))

(smithy/sdk/operation:define-operation list-type-versions :shape-name
                                       "ListTypeVersions" :input
                                       list-type-versions-input :output
                                       list-type-versions-output :errors
                                       (cfnregistry-exception))

(smithy/sdk/operation:define-operation list-types :shape-name "ListTypes"
                                       :input list-types-input :output
                                       list-types-output :errors
                                       (cfnregistry-exception))

(smithy/sdk/operation:define-operation publish-type :shape-name "PublishType"
                                       :input publish-type-input :output
                                       publish-type-output :errors
                                       (cfnregistry-exception
                                        type-not-found-exception))

(smithy/sdk/operation:define-operation record-handler-progress :shape-name
                                       "RecordHandlerProgress" :input
                                       record-handler-progress-input :output
                                       record-handler-progress-output :errors
                                       (invalid-state-transition-exception
                                        operation-status-check-failed-exception))

(smithy/sdk/operation:define-operation register-publisher :shape-name
                                       "RegisterPublisher" :input
                                       register-publisher-input :output
                                       register-publisher-output :errors
                                       (cfnregistry-exception))

(smithy/sdk/operation:define-operation register-type :shape-name "RegisterType"
                                       :input register-type-input :output
                                       register-type-output :errors
                                       (cfnregistry-exception))

(smithy/sdk/operation:define-operation rollback-stack :shape-name
                                       "RollbackStack" :input
                                       rollback-stack-input :output
                                       rollback-stack-output :errors
                                       (token-already-exists-exception))

(smithy/sdk/operation:define-operation set-stack-policy :shape-name
                                       "SetStackPolicy" :input
                                       set-stack-policy-input :output
                                       common-lisp:null :errors common-lisp:nil)

(smithy/sdk/operation:define-operation set-type-configuration :shape-name
                                       "SetTypeConfiguration" :input
                                       set-type-configuration-input :output
                                       set-type-configuration-output :errors
                                       (cfnregistry-exception
                                        type-not-found-exception))

(smithy/sdk/operation:define-operation set-type-default-version :shape-name
                                       "SetTypeDefaultVersion" :input
                                       set-type-default-version-input :output
                                       set-type-default-version-output :errors
                                       (cfnregistry-exception
                                        type-not-found-exception))

(smithy/sdk/operation:define-operation signal-resource :shape-name
                                       "SignalResource" :input
                                       signal-resource-input :output
                                       common-lisp:null :errors common-lisp:nil)

(smithy/sdk/operation:define-operation start-resource-scan :shape-name
                                       "StartResourceScan" :input
                                       start-resource-scan-input :output
                                       start-resource-scan-output :errors
                                       (resource-scan-in-progress-exception
                                        resource-scan-limit-exceeded-exception))

(smithy/sdk/operation:define-operation stop-stack-set-operation :shape-name
                                       "StopStackSetOperation" :input
                                       stop-stack-set-operation-input :output
                                       stop-stack-set-operation-output :errors
                                       (invalid-operation-exception
                                        operation-not-found-exception
                                        stack-set-not-found-exception))

(smithy/sdk/operation:define-operation test-type :shape-name "TestType" :input
                                       test-type-input :output test-type-output
                                       :errors
                                       (cfnregistry-exception
                                        type-not-found-exception))

(smithy/sdk/operation:define-operation update-generated-template :shape-name
                                       "UpdateGeneratedTemplate" :input
                                       update-generated-template-input :output
                                       update-generated-template-output :errors
                                       (already-exists-exception
                                        generated-template-not-found-exception
                                        limit-exceeded-exception))

(smithy/sdk/operation:define-operation update-stack :shape-name "UpdateStack"
                                       :input update-stack-input :output
                                       update-stack-output :errors
                                       (insufficient-capabilities-exception
                                        token-already-exists-exception))

(smithy/sdk/operation:define-operation update-stack-instances :shape-name
                                       "UpdateStackInstances" :input
                                       update-stack-instances-input :output
                                       update-stack-instances-output :errors
                                       (invalid-operation-exception
                                        operation-id-already-exists-exception
                                        operation-in-progress-exception
                                        stack-instance-not-found-exception
                                        stack-set-not-found-exception
                                        stale-request-exception))

(smithy/sdk/operation:define-operation update-stack-set :shape-name
                                       "UpdateStackSet" :input
                                       update-stack-set-input :output
                                       update-stack-set-output :errors
                                       (invalid-operation-exception
                                        operation-id-already-exists-exception
                                        operation-in-progress-exception
                                        stack-instance-not-found-exception
                                        stack-set-not-found-exception
                                        stale-request-exception))

(smithy/sdk/operation:define-operation update-termination-protection
                                       :shape-name
                                       "UpdateTerminationProtection" :input
                                       update-termination-protection-input
                                       :output
                                       update-termination-protection-output
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation validate-template :shape-name
                                       "ValidateTemplate" :input
                                       validate-template-input :output
                                       validate-template-output :errors
                                       common-lisp:nil)
