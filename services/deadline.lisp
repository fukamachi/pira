(uiop/package:define-package #:pira/deadline (:use)
                             (:export #:structure-id-list
                              #:accelerator-capabilities
                              #:accelerator-count-range #:accelerator-name
                              #:accelerator-runtime #:accelerator-selection
                              #:accelerator-selections
                              #:accelerator-total-memory-mi-brange
                              #:accelerator-type #:accelerator-types
                              #:access-key-id #:acquired-limit
                              #:acquired-limits #:aggregation-id
                              #:allowed-storage-profile-ids
                              #:amount-capability-name
                              #:amount-requirement-name
                              #:assigned-environment-enter-session-action-definition
                              #:assigned-environment-exit-session-action-definition
                              #:assigned-session #:assigned-session-action
                              #:assigned-session-action-definition
                              #:assigned-session-actions #:assigned-sessions
                              #:assigned-sync-input-job-attachments-session-action-definition
                              #:assigned-task-run-session-action-definition
                              #:associate-member-to-farm
                              #:associate-member-to-fleet
                              #:associate-member-to-job
                              #:associate-member-to-queue
                              #:assume-fleet-role-for-read
                              #:assume-fleet-role-for-worker
                              #:assume-queue-role-for-read
                              #:assume-queue-role-for-user
                              #:assume-queue-role-for-worker #:attachments
                              #:attribute-capability-name
                              #:attribute-capability-value
                              #:attribute-capability-values-list
                              #:auto-scaling-mode #:auto-scaling-status
                              #:aws-credentials #:batch-get-job-entity
                              #:batch-get-job-entity-errors
                              #:batch-get-job-entity-list #:bounded-string
                              #:budget-action-to-add #:budget-action-to-remove
                              #:budget-action-type #:budget-actions-to-add
                              #:budget-actions-to-remove #:budget-id
                              #:budget-resource #:budget-schedule
                              #:budget-status #:budget-summaries
                              #:budget-summary #:cancel-session-actions
                              #:client-token #:combination-expression
                              #:comparison-operator #:completed-status
                              #:conflict-exception-reason
                              #:consumed-usage-limit #:consumed-usages
                              #:copy-job-template #:cpu-architecture-type
                              #:create-budget #:create-farm #:create-fleet
                              #:create-job #:create-job-target-task-run-status
                              #:create-license-endpoint #:create-limit
                              #:create-monitor #:create-queue
                              #:create-queue-environment
                              #:create-queue-fleet-association
                              #:create-queue-limit-association
                              #:create-storage-profile #:create-worker
                              #:created-at #:created-by
                              #:custom-fleet-amount-capabilities
                              #:custom-fleet-attribute-capabilities
                              #:customer-managed-fleet-configuration
                              #:customer-managed-fleet-operating-system-family
                              #:customer-managed-worker-capabilities
                              #:date-time-filter-expression #:deadline
                              #:deadline-principal-type
                              #:default-queue-budget-action #:delete-budget
                              #:delete-farm #:delete-fleet
                              #:delete-license-endpoint #:delete-limit
                              #:delete-metered-product #:delete-monitor
                              #:delete-queue #:delete-queue-environment
                              #:delete-queue-fleet-association
                              #:delete-queue-limit-association
                              #:delete-storage-profile #:delete-worker
                              #:dependencies-list
                              #:dependency-consumer-resolution-status
                              #:dependency-counts #:description
                              #:desired-worker-status
                              #:disassociate-member-from-farm
                              #:disassociate-member-from-fleet
                              #:disassociate-member-from-job
                              #:disassociate-member-from-queue #:dns-name
                              #:document #:double #:ebs-iops
                              #:ebs-throughput-mi-b #:ec2ebs-volume
                              #:ec2market-type #:ended-at #:ends-at
                              #:environment-details-entity
                              #:environment-details-error
                              #:environment-details-identifiers
                              #:environment-enter-session-action-definition
                              #:environment-enter-session-action-definition-summary
                              #:environment-exit-session-action-definition
                              #:environment-exit-session-action-definition-summary
                              #:environment-id #:environment-name
                              #:environment-template
                              #:environment-template-type #:exception-context
                              #:farm-id #:farm-member #:farm-members
                              #:farm-resource #:farm-summaries #:farm-summary
                              #:field-sort-expression #:file-system-location
                              #:file-system-location-name
                              #:file-system-location-type
                              #:file-system-locations-list
                              #:fixed-budget-schedule
                              #:fleet-amount-capabilities
                              #:fleet-amount-capability
                              #:fleet-attribute-capabilities
                              #:fleet-attribute-capability #:fleet-capabilities
                              #:fleet-configuration #:fleet-id #:fleet-ids
                              #:fleet-member #:fleet-members #:fleet-resource
                              #:fleet-status #:fleet-summaries #:fleet-summary
                              #:float-string #:get-budget #:get-farm
                              #:get-fleet #:get-job #:get-job-entity-error
                              #:get-license-endpoint #:get-limit #:get-monitor
                              #:get-queue #:get-queue-environment
                              #:get-queue-fleet-association
                              #:get-queue-limit-association #:get-session
                              #:get-session-action
                              #:get-sessions-statistics-aggregation #:get-step
                              #:get-storage-profile
                              #:get-storage-profile-for-queue #:get-task
                              #:get-worker #:host-configuration
                              #:host-configuration-script
                              #:host-configuration-script-timeout-seconds
                              #:host-name #:host-properties-request
                              #:host-properties-response #:iam-role-arn
                              #:identity-center-application-arn
                              #:identity-center-instance-arn
                              #:identity-center-principal-id
                              #:identity-store-id #:instance-type
                              #:instance-types #:int-string #:integer
                              #:ip-addresses #:ip-v4address #:ip-v4addresses
                              #:ip-v6address #:ip-v6addresses
                              #:job-attachment-details-entity
                              #:job-attachment-details-error
                              #:job-attachment-details-identifiers
                              #:job-attachment-settings
                              #:job-attachments-file-system #:job-description
                              #:job-details-entity #:job-details-error
                              #:job-details-identifiers #:job-entity
                              #:job-entity-error-code #:job-entity-identifiers
                              #:job-entity-identifiers-union #:job-id
                              #:job-lifecycle-status #:job-member #:job-members
                              #:job-name #:job-parameter
                              #:job-parameter-definition
                              #:job-parameter-definitions #:job-parameters
                              #:job-priority #:job-resource #:job-run-as-user
                              #:job-search-summaries #:job-search-summary
                              #:job-summaries #:job-summary
                              #:job-target-task-run-status #:job-template
                              #:job-template-type #:kms-key-arn
                              #:license-endpoint-id #:license-endpoint-resource
                              #:license-endpoint-status
                              #:license-endpoint-summaries
                              #:license-endpoint-summary #:license-product
                              #:limit-id #:limit-summaries #:limit-summary
                              #:list-attribute-capability-value
                              #:list-available-metered-products #:list-budgets
                              #:list-farm-members #:list-farms
                              #:list-fleet-members #:list-fleets
                              #:list-job-members
                              #:list-job-parameter-definitions #:list-jobs
                              #:list-license-endpoints #:list-limits
                              #:list-metered-products #:list-monitors
                              #:list-queue-environments
                              #:list-queue-fleet-associations
                              #:list-queue-limit-associations
                              #:list-queue-members #:list-queues
                              #:list-session-actions #:list-sessions
                              #:list-sessions-for-worker
                              #:list-sessions-for-worker-summaries
                              #:list-step-consumers #:list-step-dependencies
                              #:list-steps #:list-storage-profiles
                              #:list-storage-profiles-for-queue
                              #:list-tags-for-resource #:list-tasks
                              #:list-workers #:log-configuration #:log-driver
                              #:log-error #:log-options #:log-parameters
                              #:logical-operator #:manifest-properties
                              #:manifest-properties-list #:max-count
                              #:max-failed-tasks-count #:max-results
                              #:max-retries-per-task #:max-worker-count
                              #:membership-level #:memory-amount-mi-b
                              #:memory-mi-brange #:metered-product-id
                              #:metered-product-resource
                              #:metered-product-summary
                              #:metered-product-summary-list
                              #:min-one-max-integer #:min-one-max-ten-thousand
                              #:min-zero-max-integer #:monitor-id
                              #:monitor-resource #:monitor-summaries
                              #:monitor-summary #:next-item-offset
                              #:output-relative-directories-list
                              #:parameter-filter-expression
                              #:parameter-sort-expression #:parameter-space
                              #:parameter-string #:parameter-value
                              #:path-format #:path-mapping-rule
                              #:path-mapping-rules #:path-string #:period
                              #:port-number #:posix-user #:priority
                              #:process-exit-code #:put-metered-product
                              #:queue-blocked-reason #:queue-environment-id
                              #:queue-environment-summaries
                              #:queue-environment-summary
                              #:queue-fleet-association-status
                              #:queue-fleet-association-summaries
                              #:queue-fleet-association-summary #:queue-id
                              #:queue-ids #:queue-limit-association-status
                              #:queue-limit-association-summaries
                              #:queue-limit-association-summary #:queue-member
                              #:queue-member-list #:queue-resource
                              #:queue-status #:queue-summaries #:queue-summary
                              #:required-file-system-location-names
                              #:resource-name #:response-budget-action
                              #:response-budget-action-list #:run-as
                              #:s3bucket-name #:s3key #:s3location #:s3prefix
                              #:search-filter-expression
                              #:search-filter-expressions
                              #:search-grouped-filter-expressions #:search-jobs
                              #:search-sort-expression
                              #:search-sort-expressions #:search-steps
                              #:search-tasks #:search-term
                              #:search-term-filter-expression
                              #:search-term-matching-type #:search-workers
                              #:secret-access-key #:security-group-id
                              #:security-group-id-list
                              #:service-managed-ec2fleet-configuration
                              #:service-managed-ec2instance-capabilities
                              #:service-managed-ec2instance-market-options
                              #:service-managed-fleet-operating-system-family
                              #:service-quota-exceeded-exception-reason
                              #:session-action-definition
                              #:session-action-definition-summary
                              #:session-action-id #:session-action-id-list
                              #:session-action-progress-message
                              #:session-action-progress-percent
                              #:session-action-status
                              #:session-action-summaries
                              #:session-action-summary #:session-id
                              #:session-lifecycle-status
                              #:session-lifecycle-target-status
                              #:session-summaries #:session-summary
                              #:session-token
                              #:sessions-statistics-aggregation-status
                              #:sessions-statistics-resources #:sort-order
                              #:start-sessions-statistics-aggregation
                              #:started-at #:starts-at #:statistics
                              #:statistics-list #:stats #:status-message
                              #:step-amount-capabilities
                              #:step-amount-capability
                              #:step-attribute-capabilities
                              #:step-attribute-capability #:step-consumer
                              #:step-consumers #:step-dependencies
                              #:step-dependency #:step-description
                              #:step-details-entity #:step-details-error
                              #:step-details-identifiers #:step-id
                              #:step-lifecycle-status #:step-name
                              #:step-parameter #:step-parameter-list
                              #:step-parameter-name #:step-parameter-type
                              #:step-required-capabilities
                              #:step-search-summaries #:step-search-summary
                              #:step-summaries #:step-summary
                              #:step-target-task-run-status
                              #:storage-profile-id
                              #:storage-profile-operating-system-family
                              #:storage-profile-summaries
                              #:storage-profile-summary #:string
                              #:string-filter #:string-filter-expression
                              #:string-list #:subdomain #:subnet-id
                              #:subnet-id-list
                              #:sync-input-job-attachments-session-action-definition
                              #:sync-input-job-attachments-session-action-definition-summary
                              #:tag-propagation-mode #:tag-resource #:tags
                              #:task-failure-retry-count #:task-id
                              #:task-parameter-value #:task-parameters
                              #:task-retry-count
                              #:task-run-manifest-properties-list-request
                              #:task-run-manifest-properties-list-response
                              #:task-run-manifest-properties-request
                              #:task-run-manifest-properties-response
                              #:task-run-session-action-definition
                              #:task-run-session-action-definition-summary
                              #:task-run-status #:task-run-status-counts
                              #:task-search-summaries #:task-search-summary
                              #:task-summaries #:task-summary
                              #:task-target-run-status #:threshold-percentage
                              #:timestamp #:timezone #:total-results
                              #:untag-resource #:update-budget #:update-farm
                              #:update-fleet #:update-job
                              #:update-job-lifecycle-status #:update-limit
                              #:update-monitor #:update-queue
                              #:update-queue-environment
                              #:update-queue-fleet-association
                              #:update-queue-fleet-association-status
                              #:update-queue-limit-association
                              #:update-queue-limit-association-status
                              #:update-session #:update-step
                              #:update-storage-profile #:update-task
                              #:update-worker #:update-worker-schedule
                              #:update-worker-schedule-interval #:updated-at
                              #:updated-by #:updated-session-action-info
                              #:updated-session-actions #:updated-worker-status
                              #:url #:usage-group-by #:usage-group-by-field
                              #:usage-statistic #:usage-statistics
                              #:usage-tracking-resource #:usage-type #:user-id
                              #:user-jobs-first #:vcpu-count-range
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason #:vpc-configuration
                              #:vpc-id #:vpc-resource-configuration-arn
                              #:vpc-resource-configuration-arns #:windows-user
                              #:worker-amount-capability
                              #:worker-amount-capability-list
                              #:worker-attribute-capability
                              #:worker-attribute-capability-list
                              #:worker-capabilities #:worker-id
                              #:worker-resource #:worker-search-summaries
                              #:worker-search-summary #:worker-session-summary
                              #:worker-status #:worker-summaries
                              #:worker-summary))
(common-lisp:in-package #:pira/deadline)

(smithy/sdk/service:define-service deadline :shape-name "Deadline" :version
                                   "2023-10-12" :title "AWSDeadlineCloud"
                                   :operations
                                   '(create-queue-fleet-association
                                     create-queue-limit-association
                                     delete-queue-fleet-association
                                     delete-queue-limit-association
                                     get-queue-fleet-association
                                     get-queue-limit-association
                                     get-sessions-statistics-aggregation
                                     list-available-metered-products
                                     list-queue-fleet-associations
                                     list-queue-limit-associations
                                     list-tags-for-resource search-jobs
                                     search-steps search-tasks search-workers
                                     start-sessions-statistics-aggregation
                                     tag-resource untag-resource
                                     update-queue-fleet-association
                                     update-queue-limit-association)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "deadline")
                                      ("arnNamespace" . "deadline"))
                                     ("aws.auth#sigv4" ("name" . "deadline"))
                                     ("aws.iam#defineConditionKeys"
                                      ("aws:ResourceTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by the tags associated with the resource")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"))
                                      ("aws:RequestTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by the tags that are passed in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"))
                                      ("aws:TagKeys" ("type" . "ArrayOfString")
                                       ("documentation"
                                        . "Filters access by the tag keys that are passed in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"))
                                      ("deadline:FarmMembershipLevels"
                                       ("type" . "ArrayOfString")
                                       ("documentation"
                                        . "Filters access by membership levels on the farm")
                                       ("externalDocumentation"
                                        . "${ContextKeysDocRoot}"))
                                      ("deadline:FleetMembershipLevels"
                                       ("type" . "ArrayOfString")
                                       ("documentation"
                                        . "Filters access by membership levels on the fleet")
                                       ("externalDocumentation"
                                        . "${ContextKeysDocRoot}"))
                                      ("deadline:QueueMembershipLevels"
                                       ("type" . "ArrayOfString")
                                       ("documentation"
                                        . "Filters access by membership levels on the queue")
                                       ("externalDocumentation"
                                        . "${ContextKeysDocRoot}"))
                                      ("deadline:JobMembershipLevels"
                                       ("type" . "ArrayOfString")
                                       ("documentation"
                                        . "Filters access by membership levels on the job")
                                       ("externalDocumentation"
                                        . "${ContextKeysDocRoot}"))
                                      ("deadline:RequesterPrincipalId"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by the user calling the Deadline Cloud API")
                                       ("externalDocumentation"
                                        . "${ContextKeysDocRoot}"))
                                      ("deadline:PrincipalId"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by the principle ID provided in the request")
                                       ("externalDocumentation"
                                        . "${ContextKeysDocRoot}"))
                                      ("deadline:AssociatedMembershipLevel"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by the associated membership level of the principal provided in the request")
                                       ("externalDocumentation"
                                        . "${ContextKeysDocRoot}"))
                                      ("deadline:MembershipLevel"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by the membership level passed in the request")
                                       ("externalDocumentation"
                                        . "${ContextKeysDocRoot}"))
                                      ("deadline:CalledAction"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by the allowed action in the request")
                                       ("externalDocumentation"
                                        . "${ContextKeysDocRoot}")))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-list structure-id-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure accelerator-capabilities common-lisp:nil
                                    ((selections :target-type
                                      accelerator-selections :required
                                      common-lisp:t :member-name "selections")
                                     (count :target-type
                                      accelerator-count-range :member-name
                                      "count"))
                                    (:shape-name "AcceleratorCapabilities"))

(smithy/sdk/shapes:define-structure accelerator-count-range common-lisp:nil
                                    ((min :target-type min-zero-max-integer
                                      :required common-lisp:t :member-name
                                      "min")
                                     (max :target-type min-zero-max-integer
                                      :member-name "max"))
                                    (:shape-name "AcceleratorCountRange"))

(smithy/sdk/shapes:define-enum accelerator-name
    common-lisp:nil
  (:t4 "t4")
  (:a10g "a10g")
  (:l4 "l4")
  (:l40s "l40s"))

(smithy/sdk/shapes:define-type accelerator-runtime
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure accelerator-selection common-lisp:nil
                                    ((name :target-type accelerator-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (runtime :target-type accelerator-runtime
                                      :member-name "runtime"))
                                    (:shape-name "AcceleratorSelection"))

(smithy/sdk/shapes:define-list accelerator-selections :member
                               accelerator-selection)

(smithy/sdk/shapes:define-structure accelerator-total-memory-mi-brange
                                    common-lisp:nil
                                    ((min :target-type min-zero-max-integer
                                      :required common-lisp:t :member-name
                                      "min")
                                     (max :target-type min-zero-max-integer
                                      :member-name "max"))
                                    (:shape-name
                                     "AcceleratorTotalMemoryMiBRange"))

(smithy/sdk/shapes:define-enum accelerator-type
    common-lisp:nil
  (:gpu "gpu"))

(smithy/sdk/shapes:define-list accelerator-types :member accelerator-type)

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message")
                                 (context :target-type exception-context
                                  :member-name "context"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type access-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure acquired-limit common-lisp:nil
                                    ((limit-id :target-type limit-id :required
                                      common-lisp:t :member-name "limitId")
                                     (count :target-type min-one-max-integer
                                      :required common-lisp:t :member-name
                                      "count"))
                                    (:shape-name "AcquiredLimit"))

(smithy/sdk/shapes:define-list acquired-limits :member acquired-limit)

(smithy/sdk/shapes:define-type aggregation-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list allowed-storage-profile-ids :member
                               storage-profile-id)

(smithy/sdk/shapes:define-type amount-capability-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type amount-requirement-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 assigned-environment-enter-session-action-definition common-lisp:nil
 ((environment-id :target-type environment-id :required common-lisp:t
   :member-name "environmentId"))
 (:shape-name "AssignedEnvironmentEnterSessionActionDefinition"))

(smithy/sdk/shapes:define-structure
 assigned-environment-exit-session-action-definition common-lisp:nil
 ((environment-id :target-type environment-id :required common-lisp:t
   :member-name "environmentId"))
 (:shape-name "AssignedEnvironmentExitSessionActionDefinition"))

(smithy/sdk/shapes:define-structure assigned-session common-lisp:nil
                                    ((queue-id :target-type queue-id :required
                                      common-lisp:t :member-name "queueId")
                                     (job-id :target-type job-id :required
                                      common-lisp:t :member-name "jobId")
                                     (session-actions :target-type
                                      assigned-session-actions :required
                                      common-lisp:t :member-name
                                      "sessionActions")
                                     (log-configuration :target-type
                                      log-configuration :required common-lisp:t
                                      :member-name "logConfiguration"))
                                    (:shape-name "AssignedSession"))

(smithy/sdk/shapes:define-structure assigned-session-action common-lisp:nil
                                    ((session-action-id :target-type
                                      session-action-id :required common-lisp:t
                                      :member-name "sessionActionId")
                                     (definition :target-type
                                      assigned-session-action-definition
                                      :required common-lisp:t :member-name
                                      "definition"))
                                    (:shape-name "AssignedSessionAction"))

(smithy/sdk/shapes:define-union assigned-session-action-definition
                                common-lisp:nil
                                ((env-enter :target-type
                                  assigned-environment-enter-session-action-definition
                                  :member-name "envEnter")
                                 (env-exit :target-type
                                  assigned-environment-exit-session-action-definition
                                  :member-name "envExit")
                                 (task-run :target-type
                                  assigned-task-run-session-action-definition
                                  :member-name "taskRun")
                                 (sync-input-job-attachments :target-type
                                  assigned-sync-input-job-attachments-session-action-definition
                                  :member-name "syncInputJobAttachments"))
                                (:shape-name "AssignedSessionActionDefinition"))

(smithy/sdk/shapes:define-list assigned-session-actions :member
                               assigned-session-action)

(smithy/sdk/shapes:define-map assigned-sessions :key session-id :value
                              assigned-session)

(smithy/sdk/shapes:define-structure
 assigned-sync-input-job-attachments-session-action-definition common-lisp:nil
 ((step-id :target-type step-id :member-name "stepId"))
 (:shape-name "AssignedSyncInputJobAttachmentsSessionActionDefinition"))

(smithy/sdk/shapes:define-structure assigned-task-run-session-action-definition
                                    common-lisp:nil
                                    ((task-id :target-type task-id :member-name
                                      "taskId")
                                     (step-id :target-type step-id :required
                                      common-lisp:t :member-name "stepId")
                                     (parameters :target-type task-parameters
                                      :required common-lisp:t :member-name
                                      "parameters"))
                                    (:shape-name
                                     "AssignedTaskRunSessionActionDefinition"))

(smithy/sdk/shapes:define-input associate-member-to-farm-request
                                common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (principal-id :target-type
                                  identity-center-principal-id :required
                                  common-lisp:t :member-name "principalId"
                                  :http-label common-lisp:t)
                                 (principal-type :target-type
                                  deadline-principal-type :required
                                  common-lisp:t :member-name "principalType")
                                 (identity-store-id :target-type
                                  identity-store-id :required common-lisp:t
                                  :member-name "identityStoreId")
                                 (membership-level :target-type
                                  membership-level :required common-lisp:t
                                  :member-name "membershipLevel"))
                                (:shape-name "AssociateMemberToFarmRequest"))

(smithy/sdk/shapes:define-output associate-member-to-farm-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "AssociateMemberToFarmResponse"))

(smithy/sdk/shapes:define-input associate-member-to-fleet-request
                                common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (fleet-id :target-type fleet-id :required
                                  common-lisp:t :member-name "fleetId"
                                  :http-label common-lisp:t)
                                 (principal-id :target-type
                                  identity-center-principal-id :required
                                  common-lisp:t :member-name "principalId"
                                  :http-label common-lisp:t)
                                 (principal-type :target-type
                                  deadline-principal-type :required
                                  common-lisp:t :member-name "principalType")
                                 (identity-store-id :target-type
                                  identity-store-id :required common-lisp:t
                                  :member-name "identityStoreId")
                                 (membership-level :target-type
                                  membership-level :required common-lisp:t
                                  :member-name "membershipLevel"))
                                (:shape-name "AssociateMemberToFleetRequest"))

(smithy/sdk/shapes:define-output associate-member-to-fleet-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "AssociateMemberToFleetResponse"))

(smithy/sdk/shapes:define-input associate-member-to-job-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t)
                                 (principal-id :target-type
                                  identity-center-principal-id :required
                                  common-lisp:t :member-name "principalId"
                                  :http-label common-lisp:t)
                                 (principal-type :target-type
                                  deadline-principal-type :required
                                  common-lisp:t :member-name "principalType")
                                 (identity-store-id :target-type
                                  identity-store-id :required common-lisp:t
                                  :member-name "identityStoreId")
                                 (membership-level :target-type
                                  membership-level :required common-lisp:t
                                  :member-name "membershipLevel"))
                                (:shape-name "AssociateMemberToJobRequest"))

(smithy/sdk/shapes:define-output associate-member-to-job-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "AssociateMemberToJobResponse"))

(smithy/sdk/shapes:define-input associate-member-to-queue-request
                                common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (principal-id :target-type
                                  identity-center-principal-id :required
                                  common-lisp:t :member-name "principalId"
                                  :http-label common-lisp:t)
                                 (principal-type :target-type
                                  deadline-principal-type :required
                                  common-lisp:t :member-name "principalType")
                                 (identity-store-id :target-type
                                  identity-store-id :required common-lisp:t
                                  :member-name "identityStoreId")
                                 (membership-level :target-type
                                  membership-level :required common-lisp:t
                                  :member-name "membershipLevel"))
                                (:shape-name "AssociateMemberToQueueRequest"))

(smithy/sdk/shapes:define-output associate-member-to-queue-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "AssociateMemberToQueueResponse"))

(smithy/sdk/shapes:define-input assume-fleet-role-for-read-request
                                common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (fleet-id :target-type fleet-id :required
                                  common-lisp:t :member-name "fleetId"
                                  :http-label common-lisp:t))
                                (:shape-name "AssumeFleetRoleForReadRequest"))

(smithy/sdk/shapes:define-output assume-fleet-role-for-read-response
                                 common-lisp:nil
                                 ((credentials :target-type aws-credentials
                                   :required common-lisp:t :member-name
                                   "credentials"))
                                 (:shape-name "AssumeFleetRoleForReadResponse"))

(smithy/sdk/shapes:define-input assume-fleet-role-for-worker-request
                                common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (fleet-id :target-type fleet-id :required
                                  common-lisp:t :member-name "fleetId"
                                  :http-label common-lisp:t)
                                 (worker-id :target-type worker-id :required
                                  common-lisp:t :member-name "workerId"
                                  :http-label common-lisp:t))
                                (:shape-name "AssumeFleetRoleForWorkerRequest"))

(smithy/sdk/shapes:define-output assume-fleet-role-for-worker-response
                                 common-lisp:nil
                                 ((credentials :target-type aws-credentials
                                   :required common-lisp:t :member-name
                                   "credentials"))
                                 (:shape-name
                                  "AssumeFleetRoleForWorkerResponse"))

(smithy/sdk/shapes:define-input assume-queue-role-for-read-request
                                common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t))
                                (:shape-name "AssumeQueueRoleForReadRequest"))

(smithy/sdk/shapes:define-output assume-queue-role-for-read-response
                                 common-lisp:nil
                                 ((credentials :target-type aws-credentials
                                   :required common-lisp:t :member-name
                                   "credentials"))
                                 (:shape-name "AssumeQueueRoleForReadResponse"))

(smithy/sdk/shapes:define-input assume-queue-role-for-user-request
                                common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t))
                                (:shape-name "AssumeQueueRoleForUserRequest"))

(smithy/sdk/shapes:define-output assume-queue-role-for-user-response
                                 common-lisp:nil
                                 ((credentials :target-type aws-credentials
                                   :required common-lisp:t :member-name
                                   "credentials"))
                                 (:shape-name "AssumeQueueRoleForUserResponse"))

(smithy/sdk/shapes:define-input assume-queue-role-for-worker-request
                                common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (fleet-id :target-type fleet-id :required
                                  common-lisp:t :member-name "fleetId"
                                  :http-label common-lisp:t)
                                 (worker-id :target-type worker-id :required
                                  common-lisp:t :member-name "workerId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-query "queueId"))
                                (:shape-name "AssumeQueueRoleForWorkerRequest"))

(smithy/sdk/shapes:define-output assume-queue-role-for-worker-response
                                 common-lisp:nil
                                 ((credentials :target-type aws-credentials
                                   :member-name "credentials"))
                                 (:shape-name
                                  "AssumeQueueRoleForWorkerResponse"))

(smithy/sdk/shapes:define-structure attachments common-lisp:nil
                                    ((manifests :target-type
                                      manifest-properties-list :required
                                      common-lisp:t :member-name "manifests")
                                     (file-system :target-type
                                      job-attachments-file-system :member-name
                                      "fileSystem"))
                                    (:shape-name "Attachments"))

(smithy/sdk/shapes:define-type attribute-capability-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attribute-capability-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list attribute-capability-values-list :member
                               attribute-capability-value)

(smithy/sdk/shapes:define-enum auto-scaling-mode
    common-lisp:nil
  (:no-scaling "NO_SCALING")
  (:event-based-auto-scaling "EVENT_BASED_AUTO_SCALING"))

(smithy/sdk/shapes:define-enum auto-scaling-status
    common-lisp:nil
  (:growing "GROWING")
  (:steady "STEADY")
  (:shrinking "SHRINKING"))

(smithy/sdk/shapes:define-structure aws-credentials common-lisp:nil
                                    ((access-key-id :target-type access-key-id
                                      :required common-lisp:t :member-name
                                      "accessKeyId")
                                     (secret-access-key :target-type
                                      secret-access-key :required common-lisp:t
                                      :member-name "secretAccessKey")
                                     (session-token :target-type session-token
                                      :required common-lisp:t :member-name
                                      "sessionToken")
                                     (expiration :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "expiration" :timestamp-format
                                      "date-time"))
                                    (:shape-name "AwsCredentials"))

(smithy/sdk/shapes:define-list batch-get-job-entity-errors :member
                               get-job-entity-error)

(smithy/sdk/shapes:define-list batch-get-job-entity-list :member job-entity)

(smithy/sdk/shapes:define-input batch-get-job-entity-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (fleet-id :target-type fleet-id :required
                                  common-lisp:t :member-name "fleetId"
                                  :http-label common-lisp:t)
                                 (worker-id :target-type worker-id :required
                                  common-lisp:t :member-name "workerId"
                                  :http-label common-lisp:t)
                                 (identifiers :target-type
                                  job-entity-identifiers :required
                                  common-lisp:t :member-name "identifiers"))
                                (:shape-name "BatchGetJobEntityRequest"))

(smithy/sdk/shapes:define-output batch-get-job-entity-response common-lisp:nil
                                 ((entities :target-type
                                   batch-get-job-entity-list :required
                                   common-lisp:t :member-name "entities")
                                  (errors :target-type
                                   batch-get-job-entity-errors :required
                                   common-lisp:t :member-name "errors"))
                                 (:shape-name "BatchGetJobEntityResponse"))

(smithy/sdk/shapes:define-type bounded-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure budget-action-to-add common-lisp:nil
                                    ((type :target-type budget-action-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (threshold-percentage :target-type
                                      threshold-percentage :required
                                      common-lisp:t :member-name
                                      "thresholdPercentage")
                                     (description :target-type description
                                      :member-name "description"))
                                    (:shape-name "BudgetActionToAdd"))

(smithy/sdk/shapes:define-structure budget-action-to-remove common-lisp:nil
                                    ((type :target-type budget-action-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (threshold-percentage :target-type
                                      threshold-percentage :required
                                      common-lisp:t :member-name
                                      "thresholdPercentage"))
                                    (:shape-name "BudgetActionToRemove"))

(smithy/sdk/shapes:define-enum budget-action-type
    common-lisp:nil
  (:stop-scheduling-and-complete-tasks "STOP_SCHEDULING_AND_COMPLETE_TASKS")
  (:stop-scheduling-and-cancel-tasks "STOP_SCHEDULING_AND_CANCEL_TASKS"))

(smithy/sdk/shapes:define-list budget-actions-to-add :member
                               budget-action-to-add)

(smithy/sdk/shapes:define-list budget-actions-to-remove :member
                               budget-action-to-remove)

(smithy/sdk/shapes:define-type budget-id smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-union budget-schedule common-lisp:nil
                                ((fixed :target-type fixed-budget-schedule
                                  :member-name "fixed"))
                                (:shape-name "BudgetSchedule"))

(smithy/sdk/shapes:define-enum budget-status
    common-lisp:nil
  (:active "ACTIVE")
  (:inactive "INACTIVE"))

(smithy/sdk/shapes:define-list budget-summaries :member budget-summary)

(smithy/sdk/shapes:define-structure budget-summary common-lisp:nil
                                    ((budget-id :target-type budget-id
                                      :required common-lisp:t :member-name
                                      "budgetId")
                                     (usage-tracking-resource :target-type
                                      usage-tracking-resource :required
                                      common-lisp:t :member-name
                                      "usageTrackingResource")
                                     (status :target-type budget-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (display-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "displayName")
                                     (description :target-type description
                                      :member-name "description")
                                     (approximate-dollar-limit :target-type
                                      consumed-usage-limit :required
                                      common-lisp:t :member-name
                                      "approximateDollarLimit")
                                     (usages :target-type consumed-usages
                                      :required common-lisp:t :member-name
                                      "usages")
                                     (created-by :target-type created-by
                                      :required common-lisp:t :member-name
                                      "createdBy")
                                     (created-at :target-type created-at
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (updated-by :target-type updated-by
                                      :member-name "updatedBy")
                                     (updated-at :target-type updated-at
                                      :member-name "updatedAt"))
                                    (:shape-name "BudgetSummary"))

(smithy/sdk/shapes:define-map cancel-session-actions :key session-id :value
                              session-action-id-list)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type combination-expression
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum comparison-operator
    common-lisp:nil
  (:equal "EQUAL")
  (:not-equal "NOT_EQUAL")
  (:greater-than-equal-to "GREATER_THAN_EQUAL_TO")
  (:greater-than "GREATER_THAN")
  (:less-than-equal-to "LESS_THAN_EQUAL_TO")
  (:less-than "LESS_THAN"))

(smithy/sdk/shapes:define-enum completed-status
    common-lisp:nil
  (:succeeded "SUCCEEDED")
  (:failed "FAILED")
  (:interrupted "INTERRUPTED")
  (:canceled "CANCELED")
  (:never-attempted "NEVER_ATTEMPTED"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message")
                                 (reason :target-type conflict-exception-reason
                                  :required common-lisp:t :member-name
                                  "reason")
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type string :required
                                  common-lisp:t :member-name "resourceType")
                                 (context :target-type exception-context
                                  :member-name "context"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-enum conflict-exception-reason
    common-lisp:nil
  (:conflict-exception "CONFLICT_EXCEPTION")
  (:concurrent-modification "CONCURRENT_MODIFICATION")
  (:resource-already-exists "RESOURCE_ALREADY_EXISTS")
  (:resource-in-use "RESOURCE_IN_USE")
  (:status-conflict "STATUS_CONFLICT"))

(smithy/sdk/shapes:define-type consumed-usage-limit
                               smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-structure consumed-usages common-lisp:nil
                                    ((approximate-dollar-usage :target-type
                                      smithy/sdk/smithy-types:float :required
                                      common-lisp:t :member-name
                                      "approximateDollarUsage"))
                                    (:shape-name "ConsumedUsages"))

(smithy/sdk/shapes:define-input copy-job-template-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (target-s3location :target-type s3location
                                  :required common-lisp:t :member-name
                                  "targetS3Location"))
                                (:shape-name "CopyJobTemplateRequest"))

(smithy/sdk/shapes:define-output copy-job-template-response common-lisp:nil
                                 ((template-type :target-type job-template-type
                                   :required common-lisp:t :member-name
                                   "templateType"))
                                 (:shape-name "CopyJobTemplateResponse"))

(smithy/sdk/shapes:define-enum cpu-architecture-type
    common-lisp:nil
  (:x86-64 "x86_64")
  (:arm64 "arm64"))

(smithy/sdk/shapes:define-input create-budget-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken" :http-header
                                  "X-Amz-Client-Token")
                                 (farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (usage-tracking-resource :target-type
                                  usage-tracking-resource :required
                                  common-lisp:t :member-name
                                  "usageTrackingResource")
                                 (display-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "displayName")
                                 (description :target-type description
                                  :member-name "description")
                                 (approximate-dollar-limit :target-type
                                  consumed-usage-limit :required common-lisp:t
                                  :member-name "approximateDollarLimit")
                                 (actions :target-type budget-actions-to-add
                                  :required common-lisp:t :member-name
                                  "actions")
                                 (schedule :target-type budget-schedule
                                  :required common-lisp:t :member-name
                                  "schedule"))
                                (:shape-name "CreateBudgetRequest"))

(smithy/sdk/shapes:define-output create-budget-response common-lisp:nil
                                 ((budget-id :target-type budget-id :required
                                   common-lisp:t :member-name "budgetId"))
                                 (:shape-name "CreateBudgetResponse"))

(smithy/sdk/shapes:define-input create-farm-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken" :http-header
                                  "X-Amz-Client-Token")
                                 (display-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "displayName")
                                 (description :target-type description
                                  :member-name "description")
                                 (kms-key-arn :target-type kms-key-arn
                                  :member-name "kmsKeyArn")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateFarmRequest"))

(smithy/sdk/shapes:define-output create-farm-response common-lisp:nil
                                 ((farm-id :target-type farm-id :required
                                   common-lisp:t :member-name "farmId"))
                                 (:shape-name "CreateFarmResponse"))

(smithy/sdk/shapes:define-input create-fleet-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken" :http-header
                                  "X-Amz-Client-Token")
                                 (farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (display-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "displayName")
                                 (description :target-type description
                                  :member-name "description")
                                 (role-arn :target-type iam-role-arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (min-worker-count :target-type
                                  min-zero-max-integer :member-name
                                  "minWorkerCount")
                                 (max-worker-count :target-type
                                  min-zero-max-integer :required common-lisp:t
                                  :member-name "maxWorkerCount")
                                 (configuration :target-type
                                  fleet-configuration :required common-lisp:t
                                  :member-name "configuration")
                                 (tags :target-type tags :member-name "tags")
                                 (host-configuration :target-type
                                  host-configuration :member-name
                                  "hostConfiguration"))
                                (:shape-name "CreateFleetRequest"))

(smithy/sdk/shapes:define-output create-fleet-response common-lisp:nil
                                 ((fleet-id :target-type fleet-id :required
                                   common-lisp:t :member-name "fleetId"))
                                 (:shape-name "CreateFleetResponse"))

(smithy/sdk/shapes:define-input create-job-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-header
                                  "X-Amz-Client-Token")
                                 (template :target-type job-template
                                  :member-name "template")
                                 (template-type :target-type job-template-type
                                  :member-name "templateType")
                                 (priority :target-type job-priority :required
                                  common-lisp:t :member-name "priority")
                                 (parameters :target-type job-parameters
                                  :member-name "parameters")
                                 (attachments :target-type attachments
                                  :member-name "attachments")
                                 (storage-profile-id :target-type
                                  storage-profile-id :member-name
                                  "storageProfileId")
                                 (target-task-run-status :target-type
                                  create-job-target-task-run-status
                                  :member-name "targetTaskRunStatus")
                                 (max-failed-tasks-count :target-type
                                  max-failed-tasks-count :member-name
                                  "maxFailedTasksCount")
                                 (max-retries-per-task :target-type
                                  max-retries-per-task :member-name
                                  "maxRetriesPerTask")
                                 (max-worker-count :target-type
                                  max-worker-count :member-name
                                  "maxWorkerCount")
                                 (source-job-id :target-type job-id
                                  :member-name "sourceJobId"))
                                (:shape-name "CreateJobRequest"))

(smithy/sdk/shapes:define-output create-job-response common-lisp:nil
                                 ((job-id :target-type job-id :required
                                   common-lisp:t :member-name "jobId"))
                                 (:shape-name "CreateJobResponse"))

(smithy/sdk/shapes:define-enum create-job-target-task-run-status
    common-lisp:nil
  (:ready "READY")
  (:suspended "SUSPENDED"))

(smithy/sdk/shapes:define-input create-license-endpoint-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken" :http-header
                                  "X-Amz-Client-Token")
                                 (vpc-id :target-type vpc-id :required
                                  common-lisp:t :member-name "vpcId")
                                 (subnet-ids :target-type subnet-id-list
                                  :required common-lisp:t :member-name
                                  "subnetIds")
                                 (security-group-ids :target-type
                                  security-group-id-list :required
                                  common-lisp:t :member-name
                                  "securityGroupIds")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateLicenseEndpointRequest"))

(smithy/sdk/shapes:define-output create-license-endpoint-response
                                 common-lisp:nil
                                 ((license-endpoint-id :target-type
                                   license-endpoint-id :required common-lisp:t
                                   :member-name "licenseEndpointId"))
                                 (:shape-name "CreateLicenseEndpointResponse"))

(smithy/sdk/shapes:define-input create-limit-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken" :http-header
                                  "X-Amz-Client-Token")
                                 (display-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "displayName")
                                 (amount-requirement-name :target-type
                                  amount-requirement-name :required
                                  common-lisp:t :member-name
                                  "amountRequirementName")
                                 (max-count :target-type max-count :required
                                  common-lisp:t :member-name "maxCount")
                                 (farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (description :target-type description
                                  :member-name "description"))
                                (:shape-name "CreateLimitRequest"))

(smithy/sdk/shapes:define-output create-limit-response common-lisp:nil
                                 ((limit-id :target-type limit-id :required
                                   common-lisp:t :member-name "limitId"))
                                 (:shape-name "CreateLimitResponse"))

(smithy/sdk/shapes:define-input create-monitor-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken" :http-header
                                  "X-Amz-Client-Token")
                                 (display-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "displayName")
                                 (identity-center-instance-arn :target-type
                                  identity-center-instance-arn :required
                                  common-lisp:t :member-name
                                  "identityCenterInstanceArn")
                                 (subdomain :target-type subdomain :required
                                  common-lisp:t :member-name "subdomain")
                                 (role-arn :target-type iam-role-arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateMonitorRequest"))

(smithy/sdk/shapes:define-output create-monitor-response common-lisp:nil
                                 ((monitor-id :target-type monitor-id :required
                                   common-lisp:t :member-name "monitorId")
                                  (identity-center-application-arn :target-type
                                   identity-center-application-arn :required
                                   common-lisp:t :member-name
                                   "identityCenterApplicationArn"))
                                 (:shape-name "CreateMonitorResponse"))

(smithy/sdk/shapes:define-input create-queue-environment-request
                                common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken" :http-header
                                  "X-Amz-Client-Token")
                                 (farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (priority :target-type priority :required
                                  common-lisp:t :member-name "priority")
                                 (template-type :target-type
                                  environment-template-type :required
                                  common-lisp:t :member-name "templateType")
                                 (template :target-type environment-template
                                  :required common-lisp:t :member-name
                                  "template"))
                                (:shape-name "CreateQueueEnvironmentRequest"))

(smithy/sdk/shapes:define-output create-queue-environment-response
                                 common-lisp:nil
                                 ((queue-environment-id :target-type
                                   queue-environment-id :required common-lisp:t
                                   :member-name "queueEnvironmentId"))
                                 (:shape-name "CreateQueueEnvironmentResponse"))

(smithy/sdk/shapes:define-input create-queue-fleet-association-request
                                common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId")
                                 (fleet-id :target-type fleet-id :required
                                  common-lisp:t :member-name "fleetId"))
                                (:shape-name
                                 "CreateQueueFleetAssociationRequest"))

(smithy/sdk/shapes:define-output create-queue-fleet-association-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "CreateQueueFleetAssociationResponse"))

(smithy/sdk/shapes:define-input create-queue-limit-association-request
                                common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId")
                                 (limit-id :target-type limit-id :required
                                  common-lisp:t :member-name "limitId"))
                                (:shape-name
                                 "CreateQueueLimitAssociationRequest"))

(smithy/sdk/shapes:define-output create-queue-limit-association-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "CreateQueueLimitAssociationResponse"))

(smithy/sdk/shapes:define-input create-queue-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken" :http-header
                                  "X-Amz-Client-Token")
                                 (farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (display-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "displayName")
                                 (description :target-type description
                                  :member-name "description")
                                 (default-budget-action :target-type
                                  default-queue-budget-action :member-name
                                  "defaultBudgetAction")
                                 (job-attachment-settings :target-type
                                  job-attachment-settings :member-name
                                  "jobAttachmentSettings")
                                 (role-arn :target-type iam-role-arn
                                  :member-name "roleArn")
                                 (job-run-as-user :target-type job-run-as-user
                                  :member-name "jobRunAsUser")
                                 (required-file-system-location-names
                                  :target-type
                                  required-file-system-location-names
                                  :member-name
                                  "requiredFileSystemLocationNames")
                                 (allowed-storage-profile-ids :target-type
                                  allowed-storage-profile-ids :member-name
                                  "allowedStorageProfileIds")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateQueueRequest"))

(smithy/sdk/shapes:define-output create-queue-response common-lisp:nil
                                 ((queue-id :target-type queue-id :required
                                   common-lisp:t :member-name "queueId"))
                                 (:shape-name "CreateQueueResponse"))

(smithy/sdk/shapes:define-input create-storage-profile-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken" :http-header
                                  "X-Amz-Client-Token")
                                 (farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (display-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "displayName")
                                 (os-family :target-type
                                  storage-profile-operating-system-family
                                  :required common-lisp:t :member-name
                                  "osFamily")
                                 (file-system-locations :target-type
                                  file-system-locations-list :member-name
                                  "fileSystemLocations"))
                                (:shape-name "CreateStorageProfileRequest"))

(smithy/sdk/shapes:define-output create-storage-profile-response
                                 common-lisp:nil
                                 ((storage-profile-id :target-type
                                   storage-profile-id :required common-lisp:t
                                   :member-name "storageProfileId"))
                                 (:shape-name "CreateStorageProfileResponse"))

(smithy/sdk/shapes:define-input create-worker-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (fleet-id :target-type fleet-id :required
                                  common-lisp:t :member-name "fleetId"
                                  :http-label common-lisp:t)
                                 (host-properties :target-type
                                  host-properties-request :member-name
                                  "hostProperties")
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-header
                                  "X-Amz-Client-Token")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateWorkerRequest"))

(smithy/sdk/shapes:define-output create-worker-response common-lisp:nil
                                 ((worker-id :target-type worker-id :required
                                   common-lisp:t :member-name "workerId"))
                                 (:shape-name "CreateWorkerResponse"))

(smithy/sdk/shapes:define-type created-at smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type created-by smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list custom-fleet-amount-capabilities :member
                               fleet-amount-capability)

(smithy/sdk/shapes:define-list custom-fleet-attribute-capabilities :member
                               fleet-attribute-capability)

(smithy/sdk/shapes:define-structure customer-managed-fleet-configuration
                                    common-lisp:nil
                                    ((mode :target-type auto-scaling-mode
                                      :required common-lisp:t :member-name
                                      "mode")
                                     (worker-capabilities :target-type
                                      customer-managed-worker-capabilities
                                      :required common-lisp:t :member-name
                                      "workerCapabilities")
                                     (storage-profile-id :target-type
                                      storage-profile-id :member-name
                                      "storageProfileId")
                                     (tag-propagation-mode :target-type
                                      tag-propagation-mode :member-name
                                      "tagPropagationMode"))
                                    (:shape-name
                                     "CustomerManagedFleetConfiguration"))

(smithy/sdk/shapes:define-enum customer-managed-fleet-operating-system-family
    common-lisp:nil
  (:windows "WINDOWS")
  (:linux "LINUX")
  (:macos "MACOS"))

(smithy/sdk/shapes:define-structure customer-managed-worker-capabilities
                                    common-lisp:nil
                                    ((v-cpu-count :target-type vcpu-count-range
                                      :required common-lisp:t :member-name
                                      "vCpuCount")
                                     (memory-mi-b :target-type memory-mi-brange
                                      :required common-lisp:t :member-name
                                      "memoryMiB")
                                     (accelerator-types :target-type
                                      accelerator-types :member-name
                                      "acceleratorTypes")
                                     (accelerator-count :target-type
                                      accelerator-count-range :member-name
                                      "acceleratorCount")
                                     (accelerator-total-memory-mi-b
                                      :target-type
                                      accelerator-total-memory-mi-brange
                                      :member-name "acceleratorTotalMemoryMiB")
                                     (os-family :target-type
                                      customer-managed-fleet-operating-system-family
                                      :required common-lisp:t :member-name
                                      "osFamily")
                                     (cpu-architecture-type :target-type
                                      cpu-architecture-type :required
                                      common-lisp:t :member-name
                                      "cpuArchitectureType")
                                     (custom-amounts :target-type
                                      custom-fleet-amount-capabilities
                                      :member-name "customAmounts")
                                     (custom-attributes :target-type
                                      custom-fleet-attribute-capabilities
                                      :member-name "customAttributes"))
                                    (:shape-name
                                     "CustomerManagedWorkerCapabilities"))

(smithy/sdk/shapes:define-structure date-time-filter-expression common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "name")
                                     (operator :target-type comparison-operator
                                      :required common-lisp:t :member-name
                                      "operator")
                                     (date-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "dateTime" :timestamp-format
                                      "date-time"))
                                    (:shape-name "DateTimeFilterExpression"))

(smithy/sdk/shapes:define-enum deadline-principal-type
    common-lisp:nil
  (:user "USER")
  (:group "GROUP"))

(smithy/sdk/shapes:define-enum default-queue-budget-action
    common-lisp:nil
  (:none "NONE")
  (:stop-scheduling-and-complete-tasks "STOP_SCHEDULING_AND_COMPLETE_TASKS")
  (:stop-scheduling-and-cancel-tasks "STOP_SCHEDULING_AND_CANCEL_TASKS"))

(smithy/sdk/shapes:define-input delete-budget-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (budget-id :target-type budget-id :required
                                  common-lisp:t :member-name "budgetId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteBudgetRequest"))

(smithy/sdk/shapes:define-output delete-budget-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteBudgetResponse"))

(smithy/sdk/shapes:define-input delete-farm-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteFarmRequest"))

(smithy/sdk/shapes:define-output delete-farm-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteFarmResponse"))

(smithy/sdk/shapes:define-input delete-fleet-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken" :http-header
                                  "X-Amz-Client-Token")
                                 (farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (fleet-id :target-type fleet-id :required
                                  common-lisp:t :member-name "fleetId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteFleetRequest"))

(smithy/sdk/shapes:define-output delete-fleet-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteFleetResponse"))

(smithy/sdk/shapes:define-input delete-license-endpoint-request common-lisp:nil
                                ((license-endpoint-id :target-type
                                  license-endpoint-id :required common-lisp:t
                                  :member-name "licenseEndpointId" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteLicenseEndpointRequest"))

(smithy/sdk/shapes:define-output delete-license-endpoint-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteLicenseEndpointResponse"))

(smithy/sdk/shapes:define-input delete-limit-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (limit-id :target-type limit-id :required
                                  common-lisp:t :member-name "limitId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteLimitRequest"))

(smithy/sdk/shapes:define-output delete-limit-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteLimitResponse"))

(smithy/sdk/shapes:define-input delete-metered-product-request common-lisp:nil
                                ((license-endpoint-id :target-type
                                  license-endpoint-id :required common-lisp:t
                                  :member-name "licenseEndpointId" :http-label
                                  common-lisp:t)
                                 (product-id :target-type metered-product-id
                                  :required common-lisp:t :member-name
                                  "productId" :http-label common-lisp:t))
                                (:shape-name "DeleteMeteredProductRequest"))

(smithy/sdk/shapes:define-output delete-metered-product-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteMeteredProductResponse"))

(smithy/sdk/shapes:define-input delete-monitor-request common-lisp:nil
                                ((monitor-id :target-type monitor-id :required
                                  common-lisp:t :member-name "monitorId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteMonitorRequest"))

(smithy/sdk/shapes:define-output delete-monitor-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteMonitorResponse"))

(smithy/sdk/shapes:define-input delete-queue-environment-request
                                common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (queue-environment-id :target-type
                                  queue-environment-id :required common-lisp:t
                                  :member-name "queueEnvironmentId" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteQueueEnvironmentRequest"))

(smithy/sdk/shapes:define-output delete-queue-environment-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteQueueEnvironmentResponse"))

(smithy/sdk/shapes:define-input delete-queue-fleet-association-request
                                common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (fleet-id :target-type fleet-id :required
                                  common-lisp:t :member-name "fleetId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteQueueFleetAssociationRequest"))

(smithy/sdk/shapes:define-output delete-queue-fleet-association-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteQueueFleetAssociationResponse"))

(smithy/sdk/shapes:define-input delete-queue-limit-association-request
                                common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (limit-id :target-type limit-id :required
                                  common-lisp:t :member-name "limitId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteQueueLimitAssociationRequest"))

(smithy/sdk/shapes:define-output delete-queue-limit-association-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteQueueLimitAssociationResponse"))

(smithy/sdk/shapes:define-input delete-queue-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteQueueRequest"))

(smithy/sdk/shapes:define-output delete-queue-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteQueueResponse"))

(smithy/sdk/shapes:define-input delete-storage-profile-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (storage-profile-id :target-type
                                  storage-profile-id :required common-lisp:t
                                  :member-name "storageProfileId" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteStorageProfileRequest"))

(smithy/sdk/shapes:define-output delete-storage-profile-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteStorageProfileResponse"))

(smithy/sdk/shapes:define-input delete-worker-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (fleet-id :target-type fleet-id :required
                                  common-lisp:t :member-name "fleetId"
                                  :http-label common-lisp:t)
                                 (worker-id :target-type worker-id :required
                                  common-lisp:t :member-name "workerId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteWorkerRequest"))

(smithy/sdk/shapes:define-output delete-worker-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteWorkerResponse"))

(smithy/sdk/shapes:define-list dependencies-list :member step-id)

(smithy/sdk/shapes:define-enum dependency-consumer-resolution-status
    common-lisp:nil
  (:resolved "RESOLVED")
  (:unresolved "UNRESOLVED"))

(smithy/sdk/shapes:define-structure dependency-counts common-lisp:nil
                                    ((dependencies-resolved :target-type
                                      integer :required common-lisp:t
                                      :member-name "dependenciesResolved")
                                     (dependencies-unresolved :target-type
                                      integer :required common-lisp:t
                                      :member-name "dependenciesUnresolved")
                                     (consumers-resolved :target-type integer
                                      :required common-lisp:t :member-name
                                      "consumersResolved")
                                     (consumers-unresolved :target-type integer
                                      :required common-lisp:t :member-name
                                      "consumersUnresolved"))
                                    (:shape-name "DependencyCounts"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum desired-worker-status
    common-lisp:nil
  (:stopped "STOPPED"))

(smithy/sdk/shapes:define-input disassociate-member-from-farm-request
                                common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (principal-id :target-type
                                  identity-center-principal-id :required
                                  common-lisp:t :member-name "principalId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DisassociateMemberFromFarmRequest"))

(smithy/sdk/shapes:define-output disassociate-member-from-farm-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisassociateMemberFromFarmResponse"))

(smithy/sdk/shapes:define-input disassociate-member-from-fleet-request
                                common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (fleet-id :target-type fleet-id :required
                                  common-lisp:t :member-name "fleetId"
                                  :http-label common-lisp:t)
                                 (principal-id :target-type
                                  identity-center-principal-id :required
                                  common-lisp:t :member-name "principalId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DisassociateMemberFromFleetRequest"))

(smithy/sdk/shapes:define-output disassociate-member-from-fleet-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisassociateMemberFromFleetResponse"))

(smithy/sdk/shapes:define-input disassociate-member-from-job-request
                                common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t)
                                 (principal-id :target-type
                                  identity-center-principal-id :required
                                  common-lisp:t :member-name "principalId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DisassociateMemberFromJobRequest"))

(smithy/sdk/shapes:define-output disassociate-member-from-job-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisassociateMemberFromJobResponse"))

(smithy/sdk/shapes:define-input disassociate-member-from-queue-request
                                common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (principal-id :target-type
                                  identity-center-principal-id :required
                                  common-lisp:t :member-name "principalId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DisassociateMemberFromQueueRequest"))

(smithy/sdk/shapes:define-output disassociate-member-from-queue-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisassociateMemberFromQueueResponse"))

(smithy/sdk/shapes:define-type dns-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type document smithy/sdk/smithy-types:document)

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type ebs-iops smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type ebs-throughput-mi-b
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure ec2ebs-volume common-lisp:nil
                                    ((size-gi-b :target-type integer
                                      :member-name "sizeGiB")
                                     (iops :target-type ebs-iops :member-name
                                      "iops")
                                     (throughput-mi-b :target-type
                                      ebs-throughput-mi-b :member-name
                                      "throughputMiB"))
                                    (:shape-name "Ec2EbsVolume"))

(smithy/sdk/shapes:define-enum ec2market-type
    common-lisp:nil
  (:on-demand "on-demand")
  (:spot "spot"))

(smithy/sdk/shapes:define-type ended-at smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type ends-at smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure environment-details-entity common-lisp:nil
                                    ((job-id :target-type job-id :required
                                      common-lisp:t :member-name "jobId")
                                     (environment-id :target-type
                                      environment-id :required common-lisp:t
                                      :member-name "environmentId")
                                     (schema-version :target-type string
                                      :required common-lisp:t :member-name
                                      "schemaVersion")
                                     (template :target-type document :required
                                      common-lisp:t :member-name "template"))
                                    (:shape-name "EnvironmentDetailsEntity"))

(smithy/sdk/shapes:define-structure environment-details-error common-lisp:nil
                                    ((job-id :target-type job-id :required
                                      common-lisp:t :member-name "jobId")
                                     (environment-id :target-type
                                      environment-id :required common-lisp:t
                                      :member-name "environmentId")
                                     (code :target-type job-entity-error-code
                                      :required common-lisp:t :member-name
                                      "code")
                                     (message :target-type string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "EnvironmentDetailsError"))

(smithy/sdk/shapes:define-structure environment-details-identifiers
                                    common-lisp:nil
                                    ((job-id :target-type job-id :required
                                      common-lisp:t :member-name "jobId")
                                     (environment-id :target-type
                                      environment-id :required common-lisp:t
                                      :member-name "environmentId"))
                                    (:shape-name
                                     "EnvironmentDetailsIdentifiers"))

(smithy/sdk/shapes:define-structure environment-enter-session-action-definition
                                    common-lisp:nil
                                    ((environment-id :target-type
                                      environment-id :required common-lisp:t
                                      :member-name "environmentId"))
                                    (:shape-name
                                     "EnvironmentEnterSessionActionDefinition"))

(smithy/sdk/shapes:define-structure
 environment-enter-session-action-definition-summary common-lisp:nil
 ((environment-id :target-type environment-id :required common-lisp:t
   :member-name "environmentId"))
 (:shape-name "EnvironmentEnterSessionActionDefinitionSummary"))

(smithy/sdk/shapes:define-structure environment-exit-session-action-definition
                                    common-lisp:nil
                                    ((environment-id :target-type
                                      environment-id :required common-lisp:t
                                      :member-name "environmentId"))
                                    (:shape-name
                                     "EnvironmentExitSessionActionDefinition"))

(smithy/sdk/shapes:define-structure
 environment-exit-session-action-definition-summary common-lisp:nil
 ((environment-id :target-type environment-id :required common-lisp:t
   :member-name "environmentId"))
 (:shape-name "EnvironmentExitSessionActionDefinitionSummary"))

(smithy/sdk/shapes:define-type environment-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type environment-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type environment-template
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum environment-template-type
    common-lisp:nil
  (:json "JSON")
  (:yaml "YAML"))

(smithy/sdk/shapes:define-map exception-context :key string :value string)

(smithy/sdk/shapes:define-type farm-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure farm-member common-lisp:nil
                                    ((farm-id :target-type farm-id :required
                                      common-lisp:t :member-name "farmId")
                                     (principal-id :target-type
                                      identity-center-principal-id :required
                                      common-lisp:t :member-name "principalId")
                                     (principal-type :target-type
                                      deadline-principal-type :required
                                      common-lisp:t :member-name
                                      "principalType")
                                     (identity-store-id :target-type
                                      identity-store-id :required common-lisp:t
                                      :member-name "identityStoreId")
                                     (membership-level :target-type
                                      membership-level :required common-lisp:t
                                      :member-name "membershipLevel"))
                                    (:shape-name "FarmMember"))

(smithy/sdk/shapes:define-list farm-members :member farm-member)

common-lisp:nil

(smithy/sdk/shapes:define-list farm-summaries :member farm-summary)

(smithy/sdk/shapes:define-structure farm-summary common-lisp:nil
                                    ((farm-id :target-type farm-id :required
                                      common-lisp:t :member-name "farmId")
                                     (display-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "displayName")
                                     (kms-key-arn :target-type kms-key-arn
                                      :member-name "kmsKeyArn")
                                     (created-at :target-type created-at
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (created-by :target-type created-by
                                      :required common-lisp:t :member-name
                                      "createdBy")
                                     (updated-at :target-type updated-at
                                      :member-name "updatedAt")
                                     (updated-by :target-type updated-by
                                      :member-name "updatedBy"))
                                    (:shape-name "FarmSummary"))

(smithy/sdk/shapes:define-structure field-sort-expression common-lisp:nil
                                    ((sort-order :target-type sort-order
                                      :required common-lisp:t :member-name
                                      "sortOrder")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "FieldSortExpression"))

(smithy/sdk/shapes:define-structure file-system-location common-lisp:nil
                                    ((name :target-type
                                      file-system-location-name :required
                                      common-lisp:t :member-name "name")
                                     (path :target-type path-string :required
                                      common-lisp:t :member-name "path")
                                     (type :target-type
                                      file-system-location-type :required
                                      common-lisp:t :member-name "type"))
                                    (:shape-name "FileSystemLocation"))

(smithy/sdk/shapes:define-type file-system-location-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum file-system-location-type
    common-lisp:nil
  (:shared "SHARED")
  (:local "LOCAL"))

(smithy/sdk/shapes:define-list file-system-locations-list :member
                               file-system-location)

(smithy/sdk/shapes:define-structure fixed-budget-schedule common-lisp:nil
                                    ((start-time :target-type starts-at
                                      :required common-lisp:t :member-name
                                      "startTime")
                                     (end-time :target-type ends-at :required
                                      common-lisp:t :member-name "endTime"))
                                    (:shape-name "FixedBudgetSchedule"))

(smithy/sdk/shapes:define-list fleet-amount-capabilities :member
                               fleet-amount-capability)

(smithy/sdk/shapes:define-structure fleet-amount-capability common-lisp:nil
                                    ((name :target-type amount-capability-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (min :target-type
                                      smithy/sdk/smithy-types:float :required
                                      common-lisp:t :member-name "min")
                                     (max :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "max"))
                                    (:shape-name "FleetAmountCapability"))

(smithy/sdk/shapes:define-list fleet-attribute-capabilities :member
                               fleet-attribute-capability)

(smithy/sdk/shapes:define-structure fleet-attribute-capability common-lisp:nil
                                    ((name :target-type
                                      attribute-capability-name :required
                                      common-lisp:t :member-name "name")
                                     (values :target-type
                                      attribute-capability-values-list
                                      :required common-lisp:t :member-name
                                      "values"))
                                    (:shape-name "FleetAttributeCapability"))

(smithy/sdk/shapes:define-structure fleet-capabilities common-lisp:nil
                                    ((amounts :target-type
                                      fleet-amount-capabilities :member-name
                                      "amounts")
                                     (attributes :target-type
                                      fleet-attribute-capabilities :member-name
                                      "attributes"))
                                    (:shape-name "FleetCapabilities"))

(smithy/sdk/shapes:define-union fleet-configuration common-lisp:nil
                                ((customer-managed :target-type
                                  customer-managed-fleet-configuration
                                  :member-name "customerManaged")
                                 (service-managed-ec2 :target-type
                                  service-managed-ec2fleet-configuration
                                  :member-name "serviceManagedEc2"))
                                (:shape-name "FleetConfiguration"))

(smithy/sdk/shapes:define-type fleet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list fleet-ids :member fleet-id)

(smithy/sdk/shapes:define-structure fleet-member common-lisp:nil
                                    ((farm-id :target-type farm-id :required
                                      common-lisp:t :member-name "farmId")
                                     (fleet-id :target-type fleet-id :required
                                      common-lisp:t :member-name "fleetId")
                                     (principal-id :target-type
                                      identity-center-principal-id :required
                                      common-lisp:t :member-name "principalId")
                                     (principal-type :target-type
                                      deadline-principal-type :required
                                      common-lisp:t :member-name
                                      "principalType")
                                     (identity-store-id :target-type
                                      identity-store-id :required common-lisp:t
                                      :member-name "identityStoreId")
                                     (membership-level :target-type
                                      membership-level :required common-lisp:t
                                      :member-name "membershipLevel"))
                                    (:shape-name "FleetMember"))

(smithy/sdk/shapes:define-list fleet-members :member fleet-member)

common-lisp:nil

(smithy/sdk/shapes:define-enum fleet-status
    common-lisp:nil
  (:active "ACTIVE")
  (:create-in-progress "CREATE_IN_PROGRESS")
  (:update-in-progress "UPDATE_IN_PROGRESS")
  (:create-failed "CREATE_FAILED")
  (:update-failed "UPDATE_FAILED"))

(smithy/sdk/shapes:define-list fleet-summaries :member fleet-summary)

(smithy/sdk/shapes:define-structure fleet-summary common-lisp:nil
                                    ((fleet-id :target-type fleet-id :required
                                      common-lisp:t :member-name "fleetId")
                                     (farm-id :target-type farm-id :required
                                      common-lisp:t :member-name "farmId")
                                     (display-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "displayName")
                                     (status :target-type fleet-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (auto-scaling-status :target-type
                                      auto-scaling-status :member-name
                                      "autoScalingStatus")
                                     (target-worker-count :target-type integer
                                      :member-name "targetWorkerCount")
                                     (worker-count :target-type integer
                                      :required common-lisp:t :member-name
                                      "workerCount")
                                     (min-worker-count :target-type
                                      min-zero-max-integer :required
                                      common-lisp:t :member-name
                                      "minWorkerCount")
                                     (max-worker-count :target-type
                                      min-zero-max-integer :required
                                      common-lisp:t :member-name
                                      "maxWorkerCount")
                                     (configuration :target-type
                                      fleet-configuration :required
                                      common-lisp:t :member-name
                                      "configuration")
                                     (created-at :target-type created-at
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (created-by :target-type created-by
                                      :required common-lisp:t :member-name
                                      "createdBy")
                                     (updated-at :target-type updated-at
                                      :member-name "updatedAt")
                                     (updated-by :target-type updated-by
                                      :member-name "updatedBy"))
                                    (:shape-name "FleetSummary"))

(smithy/sdk/shapes:define-type float-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-budget-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (budget-id :target-type budget-id :required
                                  common-lisp:t :member-name "budgetId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetBudgetRequest"))

(smithy/sdk/shapes:define-output get-budget-response common-lisp:nil
                                 ((budget-id :target-type budget-id :required
                                   common-lisp:t :member-name "budgetId")
                                  (usage-tracking-resource :target-type
                                   usage-tracking-resource :required
                                   common-lisp:t :member-name
                                   "usageTrackingResource")
                                  (status :target-type budget-status :required
                                   common-lisp:t :member-name "status")
                                  (display-name :target-type resource-name
                                   :required common-lisp:t :member-name
                                   "displayName")
                                  (description :target-type description
                                   :member-name "description")
                                  (approximate-dollar-limit :target-type
                                   consumed-usage-limit :required common-lisp:t
                                   :member-name "approximateDollarLimit")
                                  (usages :target-type consumed-usages
                                   :required common-lisp:t :member-name
                                   "usages")
                                  (actions :target-type
                                   response-budget-action-list :required
                                   common-lisp:t :member-name "actions")
                                  (schedule :target-type budget-schedule
                                   :required common-lisp:t :member-name
                                   "schedule")
                                  (created-by :target-type created-by :required
                                   common-lisp:t :member-name "createdBy")
                                  (created-at :target-type created-at :required
                                   common-lisp:t :member-name "createdAt")
                                  (updated-by :target-type updated-by
                                   :member-name "updatedBy")
                                  (updated-at :target-type updated-at
                                   :member-name "updatedAt")
                                  (queue-stopped-at :target-type updated-at
                                   :member-name "queueStoppedAt"))
                                 (:shape-name "GetBudgetResponse"))

(smithy/sdk/shapes:define-input get-farm-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetFarmRequest"))

(smithy/sdk/shapes:define-output get-farm-response common-lisp:nil
                                 ((farm-id :target-type farm-id :required
                                   common-lisp:t :member-name "farmId")
                                  (display-name :target-type resource-name
                                   :required common-lisp:t :member-name
                                   "displayName")
                                  (description :target-type description
                                   :member-name "description")
                                  (kms-key-arn :target-type kms-key-arn
                                   :required common-lisp:t :member-name
                                   "kmsKeyArn")
                                  (created-at :target-type created-at :required
                                   common-lisp:t :member-name "createdAt")
                                  (created-by :target-type created-by :required
                                   common-lisp:t :member-name "createdBy")
                                  (updated-at :target-type updated-at
                                   :member-name "updatedAt")
                                  (updated-by :target-type updated-by
                                   :member-name "updatedBy"))
                                 (:shape-name "GetFarmResponse"))

(smithy/sdk/shapes:define-input get-fleet-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (fleet-id :target-type fleet-id :required
                                  common-lisp:t :member-name "fleetId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetFleetRequest"))

(smithy/sdk/shapes:define-output get-fleet-response common-lisp:nil
                                 ((fleet-id :target-type fleet-id :required
                                   common-lisp:t :member-name "fleetId")
                                  (farm-id :target-type farm-id :required
                                   common-lisp:t :member-name "farmId")
                                  (display-name :target-type resource-name
                                   :required common-lisp:t :member-name
                                   "displayName")
                                  (description :target-type description
                                   :member-name "description")
                                  (status :target-type fleet-status :required
                                   common-lisp:t :member-name "status")
                                  (auto-scaling-status :target-type
                                   auto-scaling-status :member-name
                                   "autoScalingStatus")
                                  (target-worker-count :target-type integer
                                   :member-name "targetWorkerCount")
                                  (worker-count :target-type integer :required
                                   common-lisp:t :member-name "workerCount")
                                  (min-worker-count :target-type
                                   min-zero-max-integer :required common-lisp:t
                                   :member-name "minWorkerCount")
                                  (max-worker-count :target-type
                                   min-zero-max-integer :required common-lisp:t
                                   :member-name "maxWorkerCount")
                                  (configuration :target-type
                                   fleet-configuration :required common-lisp:t
                                   :member-name "configuration")
                                  (host-configuration :target-type
                                   host-configuration :member-name
                                   "hostConfiguration")
                                  (capabilities :target-type fleet-capabilities
                                   :member-name "capabilities")
                                  (role-arn :target-type iam-role-arn :required
                                   common-lisp:t :member-name "roleArn")
                                  (created-at :target-type created-at :required
                                   common-lisp:t :member-name "createdAt")
                                  (created-by :target-type created-by :required
                                   common-lisp:t :member-name "createdBy")
                                  (updated-at :target-type updated-at
                                   :member-name "updatedAt")
                                  (updated-by :target-type updated-by
                                   :member-name "updatedBy"))
                                 (:shape-name "GetFleetResponse"))

(smithy/sdk/shapes:define-union get-job-entity-error common-lisp:nil
                                ((job-details :target-type job-details-error
                                  :member-name "jobDetails")
                                 (job-attachment-details :target-type
                                  job-attachment-details-error :member-name
                                  "jobAttachmentDetails")
                                 (step-details :target-type step-details-error
                                  :member-name "stepDetails")
                                 (environment-details :target-type
                                  environment-details-error :member-name
                                  "environmentDetails"))
                                (:shape-name "GetJobEntityError"))

(smithy/sdk/shapes:define-input get-job-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetJobRequest"))

(smithy/sdk/shapes:define-output get-job-response common-lisp:nil
                                 ((job-id :target-type job-id :required
                                   common-lisp:t :member-name "jobId")
                                  (name :target-type job-name :required
                                   common-lisp:t :member-name "name")
                                  (lifecycle-status :target-type
                                   job-lifecycle-status :required common-lisp:t
                                   :member-name "lifecycleStatus")
                                  (lifecycle-status-message :target-type string
                                   :required common-lisp:t :member-name
                                   "lifecycleStatusMessage")
                                  (priority :target-type job-priority :required
                                   common-lisp:t :member-name "priority")
                                  (created-at :target-type created-at :required
                                   common-lisp:t :member-name "createdAt")
                                  (created-by :target-type created-by :required
                                   common-lisp:t :member-name "createdBy")
                                  (updated-at :target-type updated-at
                                   :member-name "updatedAt")
                                  (updated-by :target-type updated-by
                                   :member-name "updatedBy")
                                  (started-at :target-type started-at
                                   :member-name "startedAt")
                                  (ended-at :target-type ended-at :member-name
                                   "endedAt")
                                  (task-run-status :target-type task-run-status
                                   :member-name "taskRunStatus")
                                  (target-task-run-status :target-type
                                   job-target-task-run-status :member-name
                                   "targetTaskRunStatus")
                                  (task-run-status-counts :target-type
                                   task-run-status-counts :member-name
                                   "taskRunStatusCounts")
                                  (task-failure-retry-count :target-type
                                   task-failure-retry-count :member-name
                                   "taskFailureRetryCount")
                                  (storage-profile-id :target-type
                                   storage-profile-id :member-name
                                   "storageProfileId")
                                  (max-failed-tasks-count :target-type
                                   max-failed-tasks-count :member-name
                                   "maxFailedTasksCount")
                                  (max-retries-per-task :target-type
                                   max-retries-per-task :member-name
                                   "maxRetriesPerTask")
                                  (parameters :target-type job-parameters
                                   :member-name "parameters")
                                  (attachments :target-type attachments
                                   :member-name "attachments")
                                  (description :target-type job-description
                                   :member-name "description")
                                  (max-worker-count :target-type
                                   max-worker-count :member-name
                                   "maxWorkerCount")
                                  (source-job-id :target-type job-id
                                   :member-name "sourceJobId"))
                                 (:shape-name "GetJobResponse"))

(smithy/sdk/shapes:define-input get-license-endpoint-request common-lisp:nil
                                ((license-endpoint-id :target-type
                                  license-endpoint-id :required common-lisp:t
                                  :member-name "licenseEndpointId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetLicenseEndpointRequest"))

(smithy/sdk/shapes:define-output get-license-endpoint-response common-lisp:nil
                                 ((license-endpoint-id :target-type
                                   license-endpoint-id :required common-lisp:t
                                   :member-name "licenseEndpointId")
                                  (status :target-type license-endpoint-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (status-message :target-type status-message
                                   :required common-lisp:t :member-name
                                   "statusMessage")
                                  (vpc-id :target-type vpc-id :member-name
                                   "vpcId")
                                  (dns-name :target-type dns-name :member-name
                                   "dnsName")
                                  (subnet-ids :target-type subnet-id-list
                                   :member-name "subnetIds")
                                  (security-group-ids :target-type
                                   security-group-id-list :member-name
                                   "securityGroupIds"))
                                 (:shape-name "GetLicenseEndpointResponse"))

(smithy/sdk/shapes:define-input get-limit-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (limit-id :target-type limit-id :required
                                  common-lisp:t :member-name "limitId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetLimitRequest"))

(smithy/sdk/shapes:define-output get-limit-response common-lisp:nil
                                 ((display-name :target-type resource-name
                                   :required common-lisp:t :member-name
                                   "displayName")
                                  (amount-requirement-name :target-type
                                   amount-requirement-name :required
                                   common-lisp:t :member-name
                                   "amountRequirementName")
                                  (max-count :target-type max-count :required
                                   common-lisp:t :member-name "maxCount")
                                  (created-at :target-type created-at :required
                                   common-lisp:t :member-name "createdAt")
                                  (created-by :target-type created-by :required
                                   common-lisp:t :member-name "createdBy")
                                  (updated-at :target-type updated-at
                                   :member-name "updatedAt")
                                  (updated-by :target-type updated-by
                                   :member-name "updatedBy")
                                  (farm-id :target-type farm-id :required
                                   common-lisp:t :member-name "farmId")
                                  (limit-id :target-type limit-id :required
                                   common-lisp:t :member-name "limitId")
                                  (current-count :target-type
                                   min-zero-max-integer :required common-lisp:t
                                   :member-name "currentCount")
                                  (description :target-type description
                                   :member-name "description"))
                                 (:shape-name "GetLimitResponse"))

(smithy/sdk/shapes:define-input get-monitor-request common-lisp:nil
                                ((monitor-id :target-type monitor-id :required
                                  common-lisp:t :member-name "monitorId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetMonitorRequest"))

(smithy/sdk/shapes:define-output get-monitor-response common-lisp:nil
                                 ((monitor-id :target-type monitor-id :required
                                   common-lisp:t :member-name "monitorId")
                                  (display-name :target-type resource-name
                                   :required common-lisp:t :member-name
                                   "displayName")
                                  (subdomain :target-type subdomain :required
                                   common-lisp:t :member-name "subdomain")
                                  (url :target-type url :required common-lisp:t
                                   :member-name "url")
                                  (role-arn :target-type iam-role-arn :required
                                   common-lisp:t :member-name "roleArn")
                                  (identity-center-instance-arn :target-type
                                   identity-center-instance-arn :required
                                   common-lisp:t :member-name
                                   "identityCenterInstanceArn")
                                  (identity-center-application-arn :target-type
                                   identity-center-application-arn :required
                                   common-lisp:t :member-name
                                   "identityCenterApplicationArn")
                                  (created-at :target-type created-at :required
                                   common-lisp:t :member-name "createdAt")
                                  (created-by :target-type created-by :required
                                   common-lisp:t :member-name "createdBy")
                                  (updated-at :target-type updated-at
                                   :member-name "updatedAt")
                                  (updated-by :target-type updated-by
                                   :member-name "updatedBy"))
                                 (:shape-name "GetMonitorResponse"))

(smithy/sdk/shapes:define-input get-queue-environment-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (queue-environment-id :target-type
                                  queue-environment-id :required common-lisp:t
                                  :member-name "queueEnvironmentId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetQueueEnvironmentRequest"))

(smithy/sdk/shapes:define-output get-queue-environment-response common-lisp:nil
                                 ((queue-environment-id :target-type
                                   queue-environment-id :required common-lisp:t
                                   :member-name "queueEnvironmentId")
                                  (name :target-type environment-name :required
                                   common-lisp:t :member-name "name")
                                  (priority :target-type priority :required
                                   common-lisp:t :member-name "priority")
                                  (template-type :target-type
                                   environment-template-type :required
                                   common-lisp:t :member-name "templateType")
                                  (template :target-type environment-template
                                   :required common-lisp:t :member-name
                                   "template")
                                  (created-at :target-type created-at :required
                                   common-lisp:t :member-name "createdAt")
                                  (created-by :target-type created-by :required
                                   common-lisp:t :member-name "createdBy")
                                  (updated-at :target-type updated-at
                                   :member-name "updatedAt")
                                  (updated-by :target-type updated-by
                                   :member-name "updatedBy"))
                                 (:shape-name "GetQueueEnvironmentResponse"))

(smithy/sdk/shapes:define-input get-queue-fleet-association-request
                                common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (fleet-id :target-type fleet-id :required
                                  common-lisp:t :member-name "fleetId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetQueueFleetAssociationRequest"))

(smithy/sdk/shapes:define-output get-queue-fleet-association-response
                                 common-lisp:nil
                                 ((queue-id :target-type queue-id :required
                                   common-lisp:t :member-name "queueId")
                                  (fleet-id :target-type fleet-id :required
                                   common-lisp:t :member-name "fleetId")
                                  (status :target-type
                                   queue-fleet-association-status :required
                                   common-lisp:t :member-name "status")
                                  (created-at :target-type created-at :required
                                   common-lisp:t :member-name "createdAt")
                                  (created-by :target-type created-by :required
                                   common-lisp:t :member-name "createdBy")
                                  (updated-at :target-type updated-at
                                   :member-name "updatedAt")
                                  (updated-by :target-type updated-by
                                   :member-name "updatedBy"))
                                 (:shape-name
                                  "GetQueueFleetAssociationResponse"))

(smithy/sdk/shapes:define-input get-queue-limit-association-request
                                common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (limit-id :target-type limit-id :required
                                  common-lisp:t :member-name "limitId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetQueueLimitAssociationRequest"))

(smithy/sdk/shapes:define-output get-queue-limit-association-response
                                 common-lisp:nil
                                 ((created-at :target-type created-at :required
                                   common-lisp:t :member-name "createdAt")
                                  (created-by :target-type created-by :required
                                   common-lisp:t :member-name "createdBy")
                                  (updated-at :target-type updated-at
                                   :member-name "updatedAt")
                                  (updated-by :target-type updated-by
                                   :member-name "updatedBy")
                                  (queue-id :target-type queue-id :required
                                   common-lisp:t :member-name "queueId")
                                  (limit-id :target-type limit-id :required
                                   common-lisp:t :member-name "limitId")
                                  (status :target-type
                                   queue-limit-association-status :required
                                   common-lisp:t :member-name "status"))
                                 (:shape-name
                                  "GetQueueLimitAssociationResponse"))

(smithy/sdk/shapes:define-input get-queue-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetQueueRequest"))

(smithy/sdk/shapes:define-output get-queue-response common-lisp:nil
                                 ((queue-id :target-type queue-id :required
                                   common-lisp:t :member-name "queueId")
                                  (display-name :target-type resource-name
                                   :required common-lisp:t :member-name
                                   "displayName")
                                  (description :target-type description
                                   :member-name "description")
                                  (farm-id :target-type farm-id :required
                                   common-lisp:t :member-name "farmId")
                                  (status :target-type queue-status :required
                                   common-lisp:t :member-name "status")
                                  (default-budget-action :target-type
                                   default-queue-budget-action :required
                                   common-lisp:t :member-name
                                   "defaultBudgetAction")
                                  (blocked-reason :target-type
                                   queue-blocked-reason :member-name
                                   "blockedReason")
                                  (job-attachment-settings :target-type
                                   job-attachment-settings :member-name
                                   "jobAttachmentSettings")
                                  (role-arn :target-type iam-role-arn
                                   :member-name "roleArn")
                                  (required-file-system-location-names
                                   :target-type
                                   required-file-system-location-names
                                   :member-name
                                   "requiredFileSystemLocationNames")
                                  (allowed-storage-profile-ids :target-type
                                   allowed-storage-profile-ids :member-name
                                   "allowedStorageProfileIds")
                                  (job-run-as-user :target-type job-run-as-user
                                   :member-name "jobRunAsUser")
                                  (created-at :target-type created-at :required
                                   common-lisp:t :member-name "createdAt")
                                  (created-by :target-type created-by :required
                                   common-lisp:t :member-name "createdBy")
                                  (updated-at :target-type updated-at
                                   :member-name "updatedAt")
                                  (updated-by :target-type updated-by
                                   :member-name "updatedBy"))
                                 (:shape-name "GetQueueResponse"))

(smithy/sdk/shapes:define-input get-session-action-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t)
                                 (session-action-id :target-type
                                  session-action-id :required common-lisp:t
                                  :member-name "sessionActionId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetSessionActionRequest"))

(smithy/sdk/shapes:define-output get-session-action-response common-lisp:nil
                                 ((session-action-id :target-type
                                   session-action-id :required common-lisp:t
                                   :member-name "sessionActionId")
                                  (status :target-type session-action-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (started-at :target-type started-at
                                   :member-name "startedAt")
                                  (ended-at :target-type ended-at :member-name
                                   "endedAt")
                                  (worker-updated-at :target-type timestamp
                                   :member-name "workerUpdatedAt")
                                  (progress-percent :target-type
                                   session-action-progress-percent :member-name
                                   "progressPercent")
                                  (session-id :target-type session-id :required
                                   common-lisp:t :member-name "sessionId")
                                  (process-exit-code :target-type
                                   process-exit-code :member-name
                                   "processExitCode")
                                  (progress-message :target-type
                                   session-action-progress-message :member-name
                                   "progressMessage")
                                  (definition :target-type
                                   session-action-definition :required
                                   common-lisp:t :member-name "definition")
                                  (acquired-limits :target-type acquired-limits
                                   :member-name "acquiredLimits")
                                  (manifests :target-type
                                   task-run-manifest-properties-list-response
                                   :member-name "manifests"))
                                 (:shape-name "GetSessionActionResponse"))

(smithy/sdk/shapes:define-input get-session-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t)
                                 (session-id :target-type session-id :required
                                  common-lisp:t :member-name "sessionId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetSessionRequest"))

(smithy/sdk/shapes:define-output get-session-response common-lisp:nil
                                 ((session-id :target-type session-id :required
                                   common-lisp:t :member-name "sessionId")
                                  (fleet-id :target-type fleet-id :required
                                   common-lisp:t :member-name "fleetId")
                                  (worker-id :target-type worker-id :required
                                   common-lisp:t :member-name "workerId")
                                  (started-at :target-type started-at :required
                                   common-lisp:t :member-name "startedAt")
                                  (log :target-type log-configuration :required
                                   common-lisp:t :member-name "log")
                                  (lifecycle-status :target-type
                                   session-lifecycle-status :required
                                   common-lisp:t :member-name
                                   "lifecycleStatus")
                                  (ended-at :target-type ended-at :member-name
                                   "endedAt")
                                  (updated-at :target-type updated-at
                                   :member-name "updatedAt")
                                  (updated-by :target-type updated-by
                                   :member-name "updatedBy")
                                  (target-lifecycle-status :target-type
                                   session-lifecycle-target-status :member-name
                                   "targetLifecycleStatus")
                                  (host-properties :target-type
                                   host-properties-response :member-name
                                   "hostProperties")
                                  (worker-log :target-type log-configuration
                                   :member-name "workerLog"))
                                 (:shape-name "GetSessionResponse"))

(smithy/sdk/shapes:define-input get-sessions-statistics-aggregation-request
                                common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (aggregation-id :target-type aggregation-id
                                  :required common-lisp:t :member-name
                                  "aggregationId" :http-query "aggregationId")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken"))
                                (:shape-name
                                 "GetSessionsStatisticsAggregationRequest"))

(smithy/sdk/shapes:define-output get-sessions-statistics-aggregation-response
                                 common-lisp:nil
                                 ((statistics :target-type statistics-list
                                   :member-name "statistics")
                                  (next-token :target-type string :member-name
                                   "nextToken")
                                  (status :target-type
                                   sessions-statistics-aggregation-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (status-message :target-type string
                                   :member-name "statusMessage"))
                                 (:shape-name
                                  "GetSessionsStatisticsAggregationResponse"))

(smithy/sdk/shapes:define-input get-step-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t)
                                 (step-id :target-type step-id :required
                                  common-lisp:t :member-name "stepId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetStepRequest"))

(smithy/sdk/shapes:define-output get-step-response common-lisp:nil
                                 ((step-id :target-type step-id :required
                                   common-lisp:t :member-name "stepId")
                                  (name :target-type step-name :required
                                   common-lisp:t :member-name "name")
                                  (lifecycle-status :target-type
                                   step-lifecycle-status :required
                                   common-lisp:t :member-name
                                   "lifecycleStatus")
                                  (lifecycle-status-message :target-type string
                                   :member-name "lifecycleStatusMessage")
                                  (task-run-status :target-type task-run-status
                                   :required common-lisp:t :member-name
                                   "taskRunStatus")
                                  (task-run-status-counts :target-type
                                   task-run-status-counts :required
                                   common-lisp:t :member-name
                                   "taskRunStatusCounts")
                                  (task-failure-retry-count :target-type
                                   task-failure-retry-count :member-name
                                   "taskFailureRetryCount")
                                  (target-task-run-status :target-type
                                   step-target-task-run-status :member-name
                                   "targetTaskRunStatus")
                                  (created-at :target-type created-at :required
                                   common-lisp:t :member-name "createdAt")
                                  (created-by :target-type created-by :required
                                   common-lisp:t :member-name "createdBy")
                                  (updated-at :target-type updated-at
                                   :member-name "updatedAt")
                                  (updated-by :target-type updated-by
                                   :member-name "updatedBy")
                                  (started-at :target-type started-at
                                   :member-name "startedAt")
                                  (ended-at :target-type ended-at :member-name
                                   "endedAt")
                                  (dependency-counts :target-type
                                   dependency-counts :member-name
                                   "dependencyCounts")
                                  (required-capabilities :target-type
                                   step-required-capabilities :member-name
                                   "requiredCapabilities")
                                  (parameter-space :target-type parameter-space
                                   :member-name "parameterSpace")
                                  (description :target-type step-description
                                   :member-name "description"))
                                 (:shape-name "GetStepResponse"))

(smithy/sdk/shapes:define-input get-storage-profile-for-queue-request
                                common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (storage-profile-id :target-type
                                  storage-profile-id :required common-lisp:t
                                  :member-name "storageProfileId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetStorageProfileForQueueRequest"))

(smithy/sdk/shapes:define-output get-storage-profile-for-queue-response
                                 common-lisp:nil
                                 ((storage-profile-id :target-type
                                   storage-profile-id :required common-lisp:t
                                   :member-name "storageProfileId")
                                  (display-name :target-type resource-name
                                   :required common-lisp:t :member-name
                                   "displayName")
                                  (os-family :target-type
                                   storage-profile-operating-system-family
                                   :required common-lisp:t :member-name
                                   "osFamily")
                                  (file-system-locations :target-type
                                   file-system-locations-list :member-name
                                   "fileSystemLocations"))
                                 (:shape-name
                                  "GetStorageProfileForQueueResponse"))

(smithy/sdk/shapes:define-input get-storage-profile-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (storage-profile-id :target-type
                                  storage-profile-id :required common-lisp:t
                                  :member-name "storageProfileId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetStorageProfileRequest"))

(smithy/sdk/shapes:define-output get-storage-profile-response common-lisp:nil
                                 ((storage-profile-id :target-type
                                   storage-profile-id :required common-lisp:t
                                   :member-name "storageProfileId")
                                  (display-name :target-type resource-name
                                   :required common-lisp:t :member-name
                                   "displayName")
                                  (os-family :target-type
                                   storage-profile-operating-system-family
                                   :required common-lisp:t :member-name
                                   "osFamily")
                                  (created-at :target-type created-at :required
                                   common-lisp:t :member-name "createdAt")
                                  (created-by :target-type created-by :required
                                   common-lisp:t :member-name "createdBy")
                                  (updated-at :target-type updated-at
                                   :member-name "updatedAt")
                                  (updated-by :target-type updated-by
                                   :member-name "updatedBy")
                                  (file-system-locations :target-type
                                   file-system-locations-list :member-name
                                   "fileSystemLocations"))
                                 (:shape-name "GetStorageProfileResponse"))

(smithy/sdk/shapes:define-input get-task-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t)
                                 (step-id :target-type step-id :required
                                  common-lisp:t :member-name "stepId"
                                  :http-label common-lisp:t)
                                 (task-id :target-type task-id :required
                                  common-lisp:t :member-name "taskId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetTaskRequest"))

(smithy/sdk/shapes:define-output get-task-response common-lisp:nil
                                 ((task-id :target-type task-id :required
                                   common-lisp:t :member-name "taskId")
                                  (created-at :target-type created-at :required
                                   common-lisp:t :member-name "createdAt")
                                  (created-by :target-type created-by :required
                                   common-lisp:t :member-name "createdBy")
                                  (run-status :target-type task-run-status
                                   :required common-lisp:t :member-name
                                   "runStatus")
                                  (target-run-status :target-type
                                   task-target-run-status :member-name
                                   "targetRunStatus")
                                  (failure-retry-count :target-type
                                   task-retry-count :member-name
                                   "failureRetryCount")
                                  (parameters :target-type task-parameters
                                   :member-name "parameters")
                                  (started-at :target-type started-at
                                   :member-name "startedAt")
                                  (ended-at :target-type ended-at :member-name
                                   "endedAt")
                                  (updated-at :target-type updated-at
                                   :member-name "updatedAt")
                                  (updated-by :target-type updated-by
                                   :member-name "updatedBy")
                                  (latest-session-action-id :target-type
                                   session-action-id :member-name
                                   "latestSessionActionId"))
                                 (:shape-name "GetTaskResponse"))

(smithy/sdk/shapes:define-input get-worker-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (fleet-id :target-type fleet-id :required
                                  common-lisp:t :member-name "fleetId"
                                  :http-label common-lisp:t)
                                 (worker-id :target-type worker-id :required
                                  common-lisp:t :member-name "workerId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetWorkerRequest"))

(smithy/sdk/shapes:define-output get-worker-response common-lisp:nil
                                 ((farm-id :target-type farm-id :required
                                   common-lisp:t :member-name "farmId")
                                  (fleet-id :target-type fleet-id :required
                                   common-lisp:t :member-name "fleetId")
                                  (worker-id :target-type worker-id :required
                                   common-lisp:t :member-name "workerId")
                                  (host-properties :target-type
                                   host-properties-response :member-name
                                   "hostProperties")
                                  (status :target-type worker-status :required
                                   common-lisp:t :member-name "status")
                                  (log :target-type log-configuration
                                   :member-name "log")
                                  (created-at :target-type created-at :required
                                   common-lisp:t :member-name "createdAt")
                                  (created-by :target-type created-by :required
                                   common-lisp:t :member-name "createdBy")
                                  (updated-at :target-type updated-at
                                   :member-name "updatedAt")
                                  (updated-by :target-type updated-by
                                   :member-name "updatedBy"))
                                 (:shape-name "GetWorkerResponse"))

(smithy/sdk/shapes:define-structure host-configuration common-lisp:nil
                                    ((script-body :target-type
                                      host-configuration-script :required
                                      common-lisp:t :member-name "scriptBody")
                                     (script-timeout-seconds :target-type
                                      host-configuration-script-timeout-seconds
                                      :member-name "scriptTimeoutSeconds"))
                                    (:shape-name "HostConfiguration"))

(smithy/sdk/shapes:define-type host-configuration-script
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type host-configuration-script-timeout-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type host-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure host-properties-request common-lisp:nil
                                    ((ip-addresses :target-type ip-addresses
                                      :member-name "ipAddresses")
                                     (host-name :target-type host-name
                                      :member-name "hostName"))
                                    (:shape-name "HostPropertiesRequest"))

(smithy/sdk/shapes:define-structure host-properties-response common-lisp:nil
                                    ((ip-addresses :target-type ip-addresses
                                      :member-name "ipAddresses")
                                     (host-name :target-type host-name
                                      :member-name "hostName")
                                     (ec2instance-arn :target-type string
                                      :member-name "ec2InstanceArn")
                                     (ec2instance-type :target-type
                                      instance-type :member-name
                                      "ec2InstanceType"))
                                    (:shape-name "HostPropertiesResponse"))

(smithy/sdk/shapes:define-type iam-role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type identity-center-application-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type identity-center-instance-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type identity-center-principal-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type identity-store-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type instance-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list instance-types :member instance-type)

(smithy/sdk/shapes:define-type int-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-error-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message")
                                 (retry-after-seconds :target-type integer
                                  :member-name "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "InternalServerErrorException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure ip-addresses common-lisp:nil
                                    ((ip-v4addresses :target-type
                                      ip-v4addresses :member-name
                                      "ipV4Addresses")
                                     (ip-v6addresses :target-type
                                      ip-v6addresses :member-name
                                      "ipV6Addresses"))
                                    (:shape-name "IpAddresses"))

(smithy/sdk/shapes:define-type ip-v4address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ip-v4addresses :member ip-v4address)

(smithy/sdk/shapes:define-type ip-v6address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ip-v6addresses :member ip-v6address)

(smithy/sdk/shapes:define-structure job-attachment-details-entity
                                    common-lisp:nil
                                    ((job-id :target-type job-id :required
                                      common-lisp:t :member-name "jobId")
                                     (attachments :target-type attachments
                                      :required common-lisp:t :member-name
                                      "attachments"))
                                    (:shape-name "JobAttachmentDetailsEntity"))

(smithy/sdk/shapes:define-structure job-attachment-details-error
                                    common-lisp:nil
                                    ((job-id :target-type job-id :required
                                      common-lisp:t :member-name "jobId")
                                     (code :target-type job-entity-error-code
                                      :required common-lisp:t :member-name
                                      "code")
                                     (message :target-type string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "JobAttachmentDetailsError"))

(smithy/sdk/shapes:define-structure job-attachment-details-identifiers
                                    common-lisp:nil
                                    ((job-id :target-type job-id :required
                                      common-lisp:t :member-name "jobId"))
                                    (:shape-name
                                     "JobAttachmentDetailsIdentifiers"))

(smithy/sdk/shapes:define-structure job-attachment-settings common-lisp:nil
                                    ((s3bucket-name :target-type s3bucket-name
                                      :required common-lisp:t :member-name
                                      "s3BucketName")
                                     (root-prefix :target-type s3prefix
                                      :required common-lisp:t :member-name
                                      "rootPrefix"))
                                    (:shape-name "JobAttachmentSettings"))

(smithy/sdk/shapes:define-enum job-attachments-file-system
    common-lisp:nil
  (:copied "COPIED")
  (:virtual "VIRTUAL"))

(smithy/sdk/shapes:define-type job-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure job-details-entity common-lisp:nil
                                    ((job-id :target-type job-id :required
                                      common-lisp:t :member-name "jobId")
                                     (job-attachment-settings :target-type
                                      job-attachment-settings :member-name
                                      "jobAttachmentSettings")
                                     (job-run-as-user :target-type
                                      job-run-as-user :member-name
                                      "jobRunAsUser")
                                     (log-group-name :target-type string
                                      :required common-lisp:t :member-name
                                      "logGroupName")
                                     (queue-role-arn :target-type iam-role-arn
                                      :member-name "queueRoleArn")
                                     (parameters :target-type job-parameters
                                      :member-name "parameters")
                                     (schema-version :target-type string
                                      :required common-lisp:t :member-name
                                      "schemaVersion")
                                     (path-mapping-rules :target-type
                                      path-mapping-rules :member-name
                                      "pathMappingRules"))
                                    (:shape-name "JobDetailsEntity"))

(smithy/sdk/shapes:define-structure job-details-error common-lisp:nil
                                    ((job-id :target-type job-id :required
                                      common-lisp:t :member-name "jobId")
                                     (code :target-type job-entity-error-code
                                      :required common-lisp:t :member-name
                                      "code")
                                     (message :target-type string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "JobDetailsError"))

(smithy/sdk/shapes:define-structure job-details-identifiers common-lisp:nil
                                    ((job-id :target-type job-id :required
                                      common-lisp:t :member-name "jobId"))
                                    (:shape-name "JobDetailsIdentifiers"))

(smithy/sdk/shapes:define-union job-entity common-lisp:nil
                                ((job-details :target-type job-details-entity
                                  :member-name "jobDetails")
                                 (job-attachment-details :target-type
                                  job-attachment-details-entity :member-name
                                  "jobAttachmentDetails")
                                 (step-details :target-type step-details-entity
                                  :member-name "stepDetails")
                                 (environment-details :target-type
                                  environment-details-entity :member-name
                                  "environmentDetails"))
                                (:shape-name "JobEntity"))

(smithy/sdk/shapes:define-enum job-entity-error-code
    common-lisp:nil
  (:access-denied-exception "AccessDeniedException")
  (:internal-server-exception "InternalServerException")
  (:validation-exception "ValidationException")
  (:resource-not-found-exception "ResourceNotFoundException")
  (:max-payload-size-exceeded "MaxPayloadSizeExceeded")
  (:conflict-exception "ConflictException"))

(smithy/sdk/shapes:define-list job-entity-identifiers :member
                               job-entity-identifiers-union)

(smithy/sdk/shapes:define-union job-entity-identifiers-union common-lisp:nil
                                ((job-details :target-type
                                  job-details-identifiers :member-name
                                  "jobDetails")
                                 (job-attachment-details :target-type
                                  job-attachment-details-identifiers
                                  :member-name "jobAttachmentDetails")
                                 (step-details :target-type
                                  step-details-identifiers :member-name
                                  "stepDetails")
                                 (environment-details :target-type
                                  environment-details-identifiers :member-name
                                  "environmentDetails"))
                                (:shape-name "JobEntityIdentifiersUnion"))

(smithy/sdk/shapes:define-type job-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum job-lifecycle-status
    common-lisp:nil
  (:create-in-progress "CREATE_IN_PROGRESS")
  (:create-failed "CREATE_FAILED")
  (:create-complete "CREATE_COMPLETE")
  (:upload-in-progress "UPLOAD_IN_PROGRESS")
  (:upload-failed "UPLOAD_FAILED")
  (:update-in-progress "UPDATE_IN_PROGRESS")
  (:update-failed "UPDATE_FAILED")
  (:update-succeeded "UPDATE_SUCCEEDED")
  (:archived "ARCHIVED"))

(smithy/sdk/shapes:define-structure job-member common-lisp:nil
                                    ((farm-id :target-type farm-id :required
                                      common-lisp:t :member-name "farmId")
                                     (queue-id :target-type queue-id :required
                                      common-lisp:t :member-name "queueId")
                                     (job-id :target-type job-id :required
                                      common-lisp:t :member-name "jobId")
                                     (principal-id :target-type
                                      identity-center-principal-id :required
                                      common-lisp:t :member-name "principalId")
                                     (principal-type :target-type
                                      deadline-principal-type :required
                                      common-lisp:t :member-name
                                      "principalType")
                                     (identity-store-id :target-type
                                      identity-store-id :required common-lisp:t
                                      :member-name "identityStoreId")
                                     (membership-level :target-type
                                      membership-level :required common-lisp:t
                                      :member-name "membershipLevel"))
                                    (:shape-name "JobMember"))

(smithy/sdk/shapes:define-list job-members :member job-member)

(smithy/sdk/shapes:define-type job-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union job-parameter common-lisp:nil
                                ((int :target-type int-string :member-name
                                  "int")
                                 (float :target-type float-string :member-name
                                  "float")
                                 (string :target-type parameter-string
                                  :member-name "string")
                                 (path :target-type path-string :member-name
                                  "path"))
                                (:shape-name "JobParameter"))

(smithy/sdk/shapes:define-type job-parameter-definition
                               smithy/sdk/smithy-types:document)

(smithy/sdk/shapes:define-list job-parameter-definitions :member
                               job-parameter-definition)

(smithy/sdk/shapes:define-map job-parameters :key string :value job-parameter)

(smithy/sdk/shapes:define-type job-priority smithy/sdk/smithy-types:integer)

common-lisp:nil

(smithy/sdk/shapes:define-structure job-run-as-user common-lisp:nil
                                    ((posix :target-type posix-user
                                      :member-name "posix")
                                     (windows :target-type windows-user
                                      :member-name "windows")
                                     (run-as :target-type run-as :required
                                      common-lisp:t :member-name "runAs"))
                                    (:shape-name "JobRunAsUser"))

(smithy/sdk/shapes:define-list job-search-summaries :member job-search-summary)

(smithy/sdk/shapes:define-structure job-search-summary common-lisp:nil
                                    ((job-id :target-type job-id :member-name
                                      "jobId")
                                     (queue-id :target-type queue-id
                                      :member-name "queueId")
                                     (name :target-type job-name :member-name
                                      "name")
                                     (lifecycle-status :target-type
                                      job-lifecycle-status :member-name
                                      "lifecycleStatus")
                                     (lifecycle-status-message :target-type
                                      string :member-name
                                      "lifecycleStatusMessage")
                                     (task-run-status :target-type
                                      task-run-status :member-name
                                      "taskRunStatus")
                                     (target-task-run-status :target-type
                                      job-target-task-run-status :member-name
                                      "targetTaskRunStatus")
                                     (task-run-status-counts :target-type
                                      task-run-status-counts :member-name
                                      "taskRunStatusCounts")
                                     (task-failure-retry-count :target-type
                                      task-failure-retry-count :member-name
                                      "taskFailureRetryCount")
                                     (priority :target-type job-priority
                                      :member-name "priority")
                                     (max-failed-tasks-count :target-type
                                      max-failed-tasks-count :member-name
                                      "maxFailedTasksCount")
                                     (max-retries-per-task :target-type
                                      max-retries-per-task :member-name
                                      "maxRetriesPerTask")
                                     (created-by :target-type created-by
                                      :member-name "createdBy")
                                     (created-at :target-type created-at
                                      :member-name "createdAt")
                                     (ended-at :target-type ended-at
                                      :member-name "endedAt")
                                     (started-at :target-type started-at
                                      :member-name "startedAt")
                                     (updated-at :target-type updated-at
                                      :member-name "updatedAt")
                                     (updated-by :target-type updated-by
                                      :member-name "updatedBy")
                                     (job-parameters :target-type
                                      job-parameters :member-name
                                      "jobParameters")
                                     (max-worker-count :target-type
                                      max-worker-count :member-name
                                      "maxWorkerCount")
                                     (source-job-id :target-type job-id
                                      :member-name "sourceJobId"))
                                    (:shape-name "JobSearchSummary"))

(smithy/sdk/shapes:define-list job-summaries :member job-summary)

(smithy/sdk/shapes:define-structure job-summary common-lisp:nil
                                    ((job-id :target-type job-id :required
                                      common-lisp:t :member-name "jobId")
                                     (name :target-type job-name :required
                                      common-lisp:t :member-name "name")
                                     (lifecycle-status :target-type
                                      job-lifecycle-status :required
                                      common-lisp:t :member-name
                                      "lifecycleStatus")
                                     (lifecycle-status-message :target-type
                                      string :required common-lisp:t
                                      :member-name "lifecycleStatusMessage")
                                     (priority :target-type job-priority
                                      :required common-lisp:t :member-name
                                      "priority")
                                     (created-at :target-type created-at
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (created-by :target-type created-by
                                      :required common-lisp:t :member-name
                                      "createdBy")
                                     (updated-at :target-type updated-at
                                      :member-name "updatedAt")
                                     (updated-by :target-type updated-by
                                      :member-name "updatedBy")
                                     (started-at :target-type started-at
                                      :member-name "startedAt")
                                     (ended-at :target-type ended-at
                                      :member-name "endedAt")
                                     (task-run-status :target-type
                                      task-run-status :member-name
                                      "taskRunStatus")
                                     (target-task-run-status :target-type
                                      job-target-task-run-status :member-name
                                      "targetTaskRunStatus")
                                     (task-run-status-counts :target-type
                                      task-run-status-counts :member-name
                                      "taskRunStatusCounts")
                                     (task-failure-retry-count :target-type
                                      task-failure-retry-count :member-name
                                      "taskFailureRetryCount")
                                     (max-failed-tasks-count :target-type
                                      max-failed-tasks-count :member-name
                                      "maxFailedTasksCount")
                                     (max-retries-per-task :target-type
                                      max-retries-per-task :member-name
                                      "maxRetriesPerTask")
                                     (max-worker-count :target-type
                                      max-worker-count :member-name
                                      "maxWorkerCount")
                                     (source-job-id :target-type job-id
                                      :member-name "sourceJobId"))
                                    (:shape-name "JobSummary"))

(smithy/sdk/shapes:define-enum job-target-task-run-status
    common-lisp:nil
  (:ready "READY")
  (:failed "FAILED")
  (:succeeded "SUCCEEDED")
  (:canceled "CANCELED")
  (:suspended "SUSPENDED")
  (:pending "PENDING"))

(smithy/sdk/shapes:define-type job-template smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum job-template-type
    common-lisp:nil
  (:json "JSON")
  (:yaml "YAML"))

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type license-endpoint-id
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-enum license-endpoint-status
    common-lisp:nil
  (:create-in-progress "CREATE_IN_PROGRESS")
  (:delete-in-progress "DELETE_IN_PROGRESS")
  (:ready "READY")
  (:not-ready "NOT_READY"))

(smithy/sdk/shapes:define-list license-endpoint-summaries :member
                               license-endpoint-summary)

(smithy/sdk/shapes:define-structure license-endpoint-summary common-lisp:nil
                                    ((license-endpoint-id :target-type
                                      license-endpoint-id :member-name
                                      "licenseEndpointId")
                                     (status :target-type
                                      license-endpoint-status :member-name
                                      "status")
                                     (status-message :target-type
                                      status-message :member-name
                                      "statusMessage")
                                     (vpc-id :target-type vpc-id :member-name
                                      "vpcId"))
                                    (:shape-name "LicenseEndpointSummary"))

(smithy/sdk/shapes:define-type license-product smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type limit-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list limit-summaries :member limit-summary)

(smithy/sdk/shapes:define-structure limit-summary common-lisp:nil
                                    ((display-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "displayName")
                                     (amount-requirement-name :target-type
                                      amount-requirement-name :required
                                      common-lisp:t :member-name
                                      "amountRequirementName")
                                     (max-count :target-type max-count
                                      :required common-lisp:t :member-name
                                      "maxCount")
                                     (created-at :target-type created-at
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (created-by :target-type created-by
                                      :required common-lisp:t :member-name
                                      "createdBy")
                                     (updated-at :target-type updated-at
                                      :member-name "updatedAt")
                                     (updated-by :target-type updated-by
                                      :member-name "updatedBy")
                                     (farm-id :target-type farm-id :required
                                      common-lisp:t :member-name "farmId")
                                     (limit-id :target-type limit-id :required
                                      common-lisp:t :member-name "limitId")
                                     (current-count :target-type
                                      min-zero-max-integer :required
                                      common-lisp:t :member-name
                                      "currentCount"))
                                    (:shape-name "LimitSummary"))

(smithy/sdk/shapes:define-list list-attribute-capability-value :member
                               attribute-capability-value)

(smithy/sdk/shapes:define-input list-available-metered-products-request
                                common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListAvailableMeteredProductsRequest"))

(smithy/sdk/shapes:define-output list-available-metered-products-response
                                 common-lisp:nil
                                 ((metered-products :target-type
                                   metered-product-summary-list :required
                                   common-lisp:t :member-name
                                   "meteredProducts")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "ListAvailableMeteredProductsResponse"))

(smithy/sdk/shapes:define-input list-budgets-request common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (status :target-type budget-status
                                  :member-name "status" :http-query "status"))
                                (:shape-name "ListBudgetsRequest"))

(smithy/sdk/shapes:define-output list-budgets-response common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "nextToken")
                                  (budgets :target-type budget-summaries
                                   :required common-lisp:t :member-name
                                   "budgets"))
                                 (:shape-name "ListBudgetsResponse"))

(smithy/sdk/shapes:define-input list-farm-members-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListFarmMembersRequest"))

(smithy/sdk/shapes:define-output list-farm-members-response common-lisp:nil
                                 ((members :target-type farm-members :required
                                   common-lisp:t :member-name "members")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListFarmMembersResponse"))

(smithy/sdk/shapes:define-input list-farms-request common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (principal-id :target-type
                                  identity-center-principal-id :member-name
                                  "principalId" :http-query "principalId")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListFarmsRequest"))

(smithy/sdk/shapes:define-output list-farms-response common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "nextToken")
                                  (farms :target-type farm-summaries :required
                                   common-lisp:t :member-name "farms"))
                                 (:shape-name "ListFarmsResponse"))

(smithy/sdk/shapes:define-input list-fleet-members-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (fleet-id :target-type fleet-id :required
                                  common-lisp:t :member-name "fleetId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListFleetMembersRequest"))

(smithy/sdk/shapes:define-output list-fleet-members-response common-lisp:nil
                                 ((members :target-type fleet-members :required
                                   common-lisp:t :member-name "members")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListFleetMembersResponse"))

(smithy/sdk/shapes:define-input list-fleets-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (principal-id :target-type
                                  identity-center-principal-id :member-name
                                  "principalId" :http-query "principalId")
                                 (display-name :target-type resource-name
                                  :member-name "displayName" :http-query
                                  "displayName")
                                 (status :target-type fleet-status :member-name
                                  "status" :http-query "status")
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListFleetsRequest"))

(smithy/sdk/shapes:define-output list-fleets-response common-lisp:nil
                                 ((fleets :target-type fleet-summaries
                                   :required common-lisp:t :member-name
                                   "fleets")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListFleetsResponse"))

(smithy/sdk/shapes:define-input list-job-members-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListJobMembersRequest"))

(smithy/sdk/shapes:define-output list-job-members-response common-lisp:nil
                                 ((members :target-type job-members :required
                                   common-lisp:t :member-name "members")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListJobMembersResponse"))

(smithy/sdk/shapes:define-input list-job-parameter-definitions-request
                                common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListJobParameterDefinitionsRequest"))

(smithy/sdk/shapes:define-output list-job-parameter-definitions-response
                                 common-lisp:nil
                                 ((job-parameter-definitions :target-type
                                   job-parameter-definitions :required
                                   common-lisp:t :member-name
                                   "jobParameterDefinitions")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "ListJobParameterDefinitionsResponse"))

(smithy/sdk/shapes:define-input list-jobs-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (principal-id :target-type
                                  identity-center-principal-id :member-name
                                  "principalId" :http-query "principalId")
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListJobsRequest"))

(smithy/sdk/shapes:define-output list-jobs-response common-lisp:nil
                                 ((jobs :target-type job-summaries :required
                                   common-lisp:t :member-name "jobs")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListJobsResponse"))

(smithy/sdk/shapes:define-input list-license-endpoints-request common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListLicenseEndpointsRequest"))

(smithy/sdk/shapes:define-output list-license-endpoints-response
                                 common-lisp:nil
                                 ((license-endpoints :target-type
                                   license-endpoint-summaries :required
                                   common-lisp:t :member-name
                                   "licenseEndpoints")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListLicenseEndpointsResponse"))

(smithy/sdk/shapes:define-input list-limits-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListLimitsRequest"))

(smithy/sdk/shapes:define-output list-limits-response common-lisp:nil
                                 ((limits :target-type limit-summaries
                                   :required common-lisp:t :member-name
                                   "limits")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListLimitsResponse"))

(smithy/sdk/shapes:define-input list-metered-products-request common-lisp:nil
                                ((license-endpoint-id :target-type
                                  license-endpoint-id :required common-lisp:t
                                  :member-name "licenseEndpointId" :http-label
                                  common-lisp:t)
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListMeteredProductsRequest"))

(smithy/sdk/shapes:define-output list-metered-products-response common-lisp:nil
                                 ((metered-products :target-type
                                   metered-product-summary-list :required
                                   common-lisp:t :member-name
                                   "meteredProducts")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListMeteredProductsResponse"))

(smithy/sdk/shapes:define-input list-monitors-request common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListMonitorsRequest"))

(smithy/sdk/shapes:define-output list-monitors-response common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "nextToken")
                                  (monitors :target-type monitor-summaries
                                   :required common-lisp:t :member-name
                                   "monitors"))
                                 (:shape-name "ListMonitorsResponse"))

(smithy/sdk/shapes:define-input list-queue-environments-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListQueueEnvironmentsRequest"))

(smithy/sdk/shapes:define-output list-queue-environments-response
                                 common-lisp:nil
                                 ((environments :target-type
                                   queue-environment-summaries :required
                                   common-lisp:t :member-name "environments")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListQueueEnvironmentsResponse"))

(smithy/sdk/shapes:define-input list-queue-fleet-associations-request
                                common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :member-name
                                  "queueId" :http-query "queueId")
                                 (fleet-id :target-type fleet-id :member-name
                                  "fleetId" :http-query "fleetId")
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListQueueFleetAssociationsRequest"))

(smithy/sdk/shapes:define-output list-queue-fleet-associations-response
                                 common-lisp:nil
                                 ((queue-fleet-associations :target-type
                                   queue-fleet-association-summaries :required
                                   common-lisp:t :member-name
                                   "queueFleetAssociations")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "ListQueueFleetAssociationsResponse"))

(smithy/sdk/shapes:define-input list-queue-limit-associations-request
                                common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :member-name
                                  "queueId" :http-query "queueId")
                                 (limit-id :target-type limit-id :member-name
                                  "limitId" :http-query "limitId")
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListQueueLimitAssociationsRequest"))

(smithy/sdk/shapes:define-output list-queue-limit-associations-response
                                 common-lisp:nil
                                 ((queue-limit-associations :target-type
                                   queue-limit-association-summaries :required
                                   common-lisp:t :member-name
                                   "queueLimitAssociations")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "ListQueueLimitAssociationsResponse"))

(smithy/sdk/shapes:define-input list-queue-members-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListQueueMembersRequest"))

(smithy/sdk/shapes:define-output list-queue-members-response common-lisp:nil
                                 ((members :target-type queue-member-list
                                   :required common-lisp:t :member-name
                                   "members")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListQueueMembersResponse"))

(smithy/sdk/shapes:define-input list-queues-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (principal-id :target-type
                                  identity-center-principal-id :member-name
                                  "principalId" :http-query "principalId")
                                 (status :target-type queue-status :member-name
                                  "status" :http-query "status")
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListQueuesRequest"))

(smithy/sdk/shapes:define-output list-queues-response common-lisp:nil
                                 ((queues :target-type queue-summaries
                                   :required common-lisp:t :member-name
                                   "queues")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListQueuesResponse"))

(smithy/sdk/shapes:define-input list-session-actions-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t)
                                 (session-id :target-type session-id
                                  :member-name "sessionId" :http-query
                                  "sessionId")
                                 (task-id :target-type task-id :member-name
                                  "taskId" :http-query "taskId")
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListSessionActionsRequest"))

(smithy/sdk/shapes:define-output list-session-actions-response common-lisp:nil
                                 ((session-actions :target-type
                                   session-action-summaries :required
                                   common-lisp:t :member-name "sessionActions")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListSessionActionsResponse"))

(smithy/sdk/shapes:define-input list-sessions-for-worker-request
                                common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (fleet-id :target-type fleet-id :required
                                  common-lisp:t :member-name "fleetId"
                                  :http-label common-lisp:t)
                                 (worker-id :target-type worker-id :required
                                  common-lisp:t :member-name "workerId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListSessionsForWorkerRequest"))

(smithy/sdk/shapes:define-output list-sessions-for-worker-response
                                 common-lisp:nil
                                 ((sessions :target-type
                                   list-sessions-for-worker-summaries :required
                                   common-lisp:t :member-name "sessions")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListSessionsForWorkerResponse"))

(smithy/sdk/shapes:define-list list-sessions-for-worker-summaries :member
                               worker-session-summary)

(smithy/sdk/shapes:define-input list-sessions-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListSessionsRequest"))

(smithy/sdk/shapes:define-output list-sessions-response common-lisp:nil
                                 ((sessions :target-type session-summaries
                                   :required common-lisp:t :member-name
                                   "sessions")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListSessionsResponse"))

(smithy/sdk/shapes:define-input list-step-consumers-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t)
                                 (step-id :target-type step-id :required
                                  common-lisp:t :member-name "stepId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type integer :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name "ListStepConsumersRequest"))

(smithy/sdk/shapes:define-output list-step-consumers-response common-lisp:nil
                                 ((consumers :target-type step-consumers
                                   :required common-lisp:t :member-name
                                   "consumers")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListStepConsumersResponse"))

(smithy/sdk/shapes:define-input list-step-dependencies-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t)
                                 (step-id :target-type step-id :required
                                  common-lisp:t :member-name "stepId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type integer :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name "ListStepDependenciesRequest"))

(smithy/sdk/shapes:define-output list-step-dependencies-response
                                 common-lisp:nil
                                 ((dependencies :target-type step-dependencies
                                   :required common-lisp:t :member-name
                                   "dependencies")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListStepDependenciesResponse"))

(smithy/sdk/shapes:define-input list-steps-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListStepsRequest"))

(smithy/sdk/shapes:define-output list-steps-response common-lisp:nil
                                 ((steps :target-type step-summaries :required
                                   common-lisp:t :member-name "steps")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListStepsResponse"))

(smithy/sdk/shapes:define-input list-storage-profiles-for-queue-request
                                common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListStorageProfilesForQueueRequest"))

(smithy/sdk/shapes:define-output list-storage-profiles-for-queue-response
                                 common-lisp:nil
                                 ((storage-profiles :target-type
                                   storage-profile-summaries :required
                                   common-lisp:t :member-name
                                   "storageProfiles")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "ListStorageProfilesForQueueResponse"))

(smithy/sdk/shapes:define-input list-storage-profiles-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListStorageProfilesRequest"))

(smithy/sdk/shapes:define-output list-storage-profiles-response common-lisp:nil
                                 ((storage-profiles :target-type
                                   storage-profile-summaries :required
                                   common-lisp:t :member-name
                                   "storageProfiles")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListStorageProfilesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tags :member-name "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-tasks-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t)
                                 (step-id :target-type step-id :required
                                  common-lisp:t :member-name "stepId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListTasksRequest"))

(smithy/sdk/shapes:define-output list-tasks-response common-lisp:nil
                                 ((tasks :target-type task-summaries :required
                                   common-lisp:t :member-name "tasks")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListTasksResponse"))

(smithy/sdk/shapes:define-input list-workers-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (fleet-id :target-type fleet-id :required
                                  common-lisp:t :member-name "fleetId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListWorkersRequest"))

(smithy/sdk/shapes:define-output list-workers-response common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "nextToken")
                                  (workers :target-type worker-summaries
                                   :required common-lisp:t :member-name
                                   "workers"))
                                 (:shape-name "ListWorkersResponse"))

(smithy/sdk/shapes:define-structure log-configuration common-lisp:nil
                                    ((log-driver :target-type log-driver
                                      :required common-lisp:t :member-name
                                      "logDriver")
                                     (options :target-type log-options
                                      :member-name "options")
                                     (parameters :target-type log-parameters
                                      :member-name "parameters")
                                     (error :target-type log-error :member-name
                                      "error"))
                                    (:shape-name "LogConfiguration"))

(smithy/sdk/shapes:define-type log-driver smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type log-error smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map log-options :key string :value string)

(smithy/sdk/shapes:define-map log-parameters :key string :value string)

(smithy/sdk/shapes:define-enum logical-operator
    common-lisp:nil
  (:and "AND")
  (:or "OR"))

(smithy/sdk/shapes:define-structure manifest-properties common-lisp:nil
                                    ((file-system-location-name :target-type
                                      file-system-location-name :member-name
                                      "fileSystemLocationName")
                                     (root-path :target-type string :required
                                      common-lisp:t :member-name "rootPath")
                                     (root-path-format :target-type path-format
                                      :required common-lisp:t :member-name
                                      "rootPathFormat")
                                     (output-relative-directories :target-type
                                      output-relative-directories-list
                                      :member-name "outputRelativeDirectories")
                                     (input-manifest-path :target-type string
                                      :member-name "inputManifestPath")
                                     (input-manifest-hash :target-type string
                                      :member-name "inputManifestHash"))
                                    (:shape-name "ManifestProperties"))

(smithy/sdk/shapes:define-list manifest-properties-list :member
                               manifest-properties)

(smithy/sdk/shapes:define-type max-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-failed-tasks-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-retries-per-task
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-worker-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum membership-level
    common-lisp:nil
  (:viewer "VIEWER")
  (:contributor "CONTRIBUTOR")
  (:owner "OWNER")
  (:manager "MANAGER"))

(smithy/sdk/shapes:define-type memory-amount-mi-b
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure memory-mi-brange common-lisp:nil
                                    ((min :target-type memory-amount-mi-b
                                      :required common-lisp:t :member-name
                                      "min")
                                     (max :target-type memory-amount-mi-b
                                      :member-name "max"))
                                    (:shape-name "MemoryMiBRange"))

(smithy/sdk/shapes:define-type metered-product-id
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure metered-product-summary common-lisp:nil
                                    ((product-id :target-type
                                      metered-product-id :required
                                      common-lisp:t :member-name "productId")
                                     (family :target-type bounded-string
                                      :required common-lisp:t :member-name
                                      "family")
                                     (vendor :target-type bounded-string
                                      :required common-lisp:t :member-name
                                      "vendor")
                                     (port :target-type port-number :required
                                      common-lisp:t :member-name "port"))
                                    (:shape-name "MeteredProductSummary"))

(smithy/sdk/shapes:define-list metered-product-summary-list :member
                               metered-product-summary)

(smithy/sdk/shapes:define-type min-one-max-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type min-one-max-ten-thousand
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type min-zero-max-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type monitor-id smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-list monitor-summaries :member monitor-summary)

(smithy/sdk/shapes:define-structure monitor-summary common-lisp:nil
                                    ((monitor-id :target-type monitor-id
                                      :required common-lisp:t :member-name
                                      "monitorId")
                                     (display-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "displayName")
                                     (subdomain :target-type subdomain
                                      :required common-lisp:t :member-name
                                      "subdomain")
                                     (url :target-type url :required
                                      common-lisp:t :member-name "url")
                                     (role-arn :target-type iam-role-arn
                                      :required common-lisp:t :member-name
                                      "roleArn")
                                     (identity-center-instance-arn :target-type
                                      identity-center-instance-arn :required
                                      common-lisp:t :member-name
                                      "identityCenterInstanceArn")
                                     (identity-center-application-arn
                                      :target-type
                                      identity-center-application-arn :required
                                      common-lisp:t :member-name
                                      "identityCenterApplicationArn")
                                     (created-at :target-type created-at
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (created-by :target-type created-by
                                      :required common-lisp:t :member-name
                                      "createdBy")
                                     (updated-at :target-type updated-at
                                      :member-name "updatedAt")
                                     (updated-by :target-type updated-by
                                      :member-name "updatedBy"))
                                    (:shape-name "MonitorSummary"))

(smithy/sdk/shapes:define-type next-item-offset smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list output-relative-directories-list :member string)

(smithy/sdk/shapes:define-structure parameter-filter-expression common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "name")
                                     (operator :target-type comparison-operator
                                      :required common-lisp:t :member-name
                                      "operator")
                                     (value :target-type parameter-value
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name "ParameterFilterExpression"))

(smithy/sdk/shapes:define-structure parameter-sort-expression common-lisp:nil
                                    ((sort-order :target-type sort-order
                                      :required common-lisp:t :member-name
                                      "sortOrder")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "ParameterSortExpression"))

(smithy/sdk/shapes:define-structure parameter-space common-lisp:nil
                                    ((parameters :target-type
                                      step-parameter-list :required
                                      common-lisp:t :member-name "parameters")
                                     (combination :target-type
                                      combination-expression :member-name
                                      "combination"))
                                    (:shape-name "ParameterSpace"))

(smithy/sdk/shapes:define-type parameter-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type parameter-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum path-format
    common-lisp:nil
  (:windows "windows")
  (:posix "posix"))

(smithy/sdk/shapes:define-structure path-mapping-rule common-lisp:nil
                                    ((source-path-format :target-type
                                      path-format :required common-lisp:t
                                      :member-name "sourcePathFormat")
                                     (source-path :target-type string :required
                                      common-lisp:t :member-name "sourcePath")
                                     (destination-path :target-type string
                                      :required common-lisp:t :member-name
                                      "destinationPath"))
                                    (:shape-name "PathMappingRule"))

(smithy/sdk/shapes:define-list path-mapping-rules :member path-mapping-rule)

(smithy/sdk/shapes:define-type path-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum period
    common-lisp:nil
  (:hourly "HOURLY")
  (:daily "DAILY")
  (:weekly "WEEKLY")
  (:monthly "MONTHLY"))

(smithy/sdk/shapes:define-type port-number smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure posix-user common-lisp:nil
                                    ((user :target-type string :required
                                      common-lisp:t :member-name "user")
                                     (group :target-type string :required
                                      common-lisp:t :member-name "group"))
                                    (:shape-name "PosixUser"))

(smithy/sdk/shapes:define-type priority smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type process-exit-code
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input put-metered-product-request common-lisp:nil
                                ((license-endpoint-id :target-type
                                  license-endpoint-id :required common-lisp:t
                                  :member-name "licenseEndpointId" :http-label
                                  common-lisp:t)
                                 (product-id :target-type metered-product-id
                                  :required common-lisp:t :member-name
                                  "productId" :http-label common-lisp:t))
                                (:shape-name "PutMeteredProductRequest"))

(smithy/sdk/shapes:define-output put-metered-product-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "PutMeteredProductResponse"))

(smithy/sdk/shapes:define-enum queue-blocked-reason
    common-lisp:nil
  (:no-budget-configured "NO_BUDGET_CONFIGURED")
  (:budget-threshold-reached "BUDGET_THRESHOLD_REACHED"))

(smithy/sdk/shapes:define-type queue-environment-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list queue-environment-summaries :member
                               queue-environment-summary)

(smithy/sdk/shapes:define-structure queue-environment-summary common-lisp:nil
                                    ((queue-environment-id :target-type
                                      queue-environment-id :required
                                      common-lisp:t :member-name
                                      "queueEnvironmentId")
                                     (name :target-type environment-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (priority :target-type priority :required
                                      common-lisp:t :member-name "priority"))
                                    (:shape-name "QueueEnvironmentSummary"))

(smithy/sdk/shapes:define-enum queue-fleet-association-status
    common-lisp:nil
  (:active "ACTIVE")
  (:stop-scheduling-and-complete-tasks "STOP_SCHEDULING_AND_COMPLETE_TASKS")
  (:stop-scheduling-and-cancel-tasks "STOP_SCHEDULING_AND_CANCEL_TASKS")
  (:stopped "STOPPED"))

(smithy/sdk/shapes:define-list queue-fleet-association-summaries :member
                               queue-fleet-association-summary)

(smithy/sdk/shapes:define-structure queue-fleet-association-summary
                                    common-lisp:nil
                                    ((queue-id :target-type queue-id :required
                                      common-lisp:t :member-name "queueId")
                                     (fleet-id :target-type fleet-id :required
                                      common-lisp:t :member-name "fleetId")
                                     (status :target-type
                                      queue-fleet-association-status :required
                                      common-lisp:t :member-name "status")
                                     (created-at :target-type created-at
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (created-by :target-type created-by
                                      :required common-lisp:t :member-name
                                      "createdBy")
                                     (updated-at :target-type updated-at
                                      :member-name "updatedAt")
                                     (updated-by :target-type updated-by
                                      :member-name "updatedBy"))
                                    (:shape-name
                                     "QueueFleetAssociationSummary"))

(smithy/sdk/shapes:define-type queue-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list queue-ids :member queue-id)

(smithy/sdk/shapes:define-enum queue-limit-association-status
    common-lisp:nil
  (:active "ACTIVE")
  (:stop-limit-usage-and-complete-tasks "STOP_LIMIT_USAGE_AND_COMPLETE_TASKS")
  (:stop-limit-usage-and-cancel-tasks "STOP_LIMIT_USAGE_AND_CANCEL_TASKS")
  (:stopped "STOPPED"))

(smithy/sdk/shapes:define-list queue-limit-association-summaries :member
                               queue-limit-association-summary)

(smithy/sdk/shapes:define-structure queue-limit-association-summary
                                    common-lisp:nil
                                    ((created-at :target-type created-at
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (created-by :target-type created-by
                                      :required common-lisp:t :member-name
                                      "createdBy")
                                     (updated-at :target-type updated-at
                                      :member-name "updatedAt")
                                     (updated-by :target-type updated-by
                                      :member-name "updatedBy")
                                     (queue-id :target-type queue-id :required
                                      common-lisp:t :member-name "queueId")
                                     (limit-id :target-type limit-id :required
                                      common-lisp:t :member-name "limitId")
                                     (status :target-type
                                      queue-limit-association-status :required
                                      common-lisp:t :member-name "status"))
                                    (:shape-name
                                     "QueueLimitAssociationSummary"))

(smithy/sdk/shapes:define-structure queue-member common-lisp:nil
                                    ((farm-id :target-type farm-id :required
                                      common-lisp:t :member-name "farmId")
                                     (queue-id :target-type queue-id :required
                                      common-lisp:t :member-name "queueId")
                                     (principal-id :target-type
                                      identity-center-principal-id :required
                                      common-lisp:t :member-name "principalId")
                                     (principal-type :target-type
                                      deadline-principal-type :required
                                      common-lisp:t :member-name
                                      "principalType")
                                     (identity-store-id :target-type
                                      identity-store-id :required common-lisp:t
                                      :member-name "identityStoreId")
                                     (membership-level :target-type
                                      membership-level :required common-lisp:t
                                      :member-name "membershipLevel"))
                                    (:shape-name "QueueMember"))

(smithy/sdk/shapes:define-list queue-member-list :member queue-member)

common-lisp:nil

(smithy/sdk/shapes:define-enum queue-status
    common-lisp:nil
  (:idle "IDLE")
  (:scheduling "SCHEDULING")
  (:scheduling-blocked "SCHEDULING_BLOCKED"))

(smithy/sdk/shapes:define-list queue-summaries :member queue-summary)

(smithy/sdk/shapes:define-structure queue-summary common-lisp:nil
                                    ((farm-id :target-type farm-id :required
                                      common-lisp:t :member-name "farmId")
                                     (queue-id :target-type queue-id :required
                                      common-lisp:t :member-name "queueId")
                                     (display-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "displayName")
                                     (status :target-type queue-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (default-budget-action :target-type
                                      default-queue-budget-action :required
                                      common-lisp:t :member-name
                                      "defaultBudgetAction")
                                     (blocked-reason :target-type
                                      queue-blocked-reason :member-name
                                      "blockedReason")
                                     (created-at :target-type created-at
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (created-by :target-type created-by
                                      :required common-lisp:t :member-name
                                      "createdBy")
                                     (updated-at :target-type updated-at
                                      :member-name "updatedAt")
                                     (updated-by :target-type updated-by
                                      :member-name "updatedBy"))
                                    (:shape-name "QueueSummary"))

(smithy/sdk/shapes:define-list required-file-system-location-names :member
                               file-system-location-name)

(smithy/sdk/shapes:define-type resource-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type string :required
                                  common-lisp:t :member-name "resourceType")
                                 (context :target-type exception-context
                                  :member-name "context"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure response-budget-action common-lisp:nil
                                    ((type :target-type budget-action-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (threshold-percentage :target-type
                                      threshold-percentage :required
                                      common-lisp:t :member-name
                                      "thresholdPercentage")
                                     (description :target-type description
                                      :member-name "description"))
                                    (:shape-name "ResponseBudgetAction"))

(smithy/sdk/shapes:define-list response-budget-action-list :member
                               response-budget-action)

(smithy/sdk/shapes:define-enum run-as
    common-lisp:nil
  (:queue-configured-user "QUEUE_CONFIGURED_USER")
  (:worker-agent-user "WORKER_AGENT_USER"))

(smithy/sdk/shapes:define-type s3bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3location common-lisp:nil
                                    ((bucket-name :target-type s3bucket-name
                                      :required common-lisp:t :member-name
                                      "bucketName")
                                     (key :target-type s3key :required
                                      common-lisp:t :member-name "key"))
                                    (:shape-name "S3Location"))

(smithy/sdk/shapes:define-type s3prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union search-filter-expression common-lisp:nil
                                ((date-time-filter :target-type
                                  date-time-filter-expression :member-name
                                  "dateTimeFilter")
                                 (parameter-filter :target-type
                                  parameter-filter-expression :member-name
                                  "parameterFilter")
                                 (search-term-filter :target-type
                                  search-term-filter-expression :member-name
                                  "searchTermFilter")
                                 (string-filter :target-type
                                  string-filter-expression :member-name
                                  "stringFilter")
                                 (group-filter :target-type
                                  search-grouped-filter-expressions
                                  :member-name "groupFilter"))
                                (:shape-name "SearchFilterExpression"))

(smithy/sdk/shapes:define-list search-filter-expressions :member
                               search-filter-expression)

(smithy/sdk/shapes:define-structure search-grouped-filter-expressions
                                    common-lisp:nil
                                    ((filters :target-type
                                      search-filter-expressions :required
                                      common-lisp:t :member-name "filters")
                                     (operator :target-type logical-operator
                                      :required common-lisp:t :member-name
                                      "operator"))
                                    (:shape-name
                                     "SearchGroupedFilterExpressions"))

(smithy/sdk/shapes:define-input search-jobs-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-ids :target-type queue-ids :required
                                  common-lisp:t :member-name "queueIds")
                                 (filter-expressions :target-type
                                  search-grouped-filter-expressions
                                  :member-name "filterExpressions")
                                 (sort-expressions :target-type
                                  search-sort-expressions :member-name
                                  "sortExpressions")
                                 (item-offset :target-type integer :required
                                  common-lisp:t :member-name "itemOffset")
                                 (page-size :target-type integer :member-name
                                  "pageSize"))
                                (:shape-name "SearchJobsRequest"))

(smithy/sdk/shapes:define-output search-jobs-response common-lisp:nil
                                 ((jobs :target-type job-search-summaries
                                   :required common-lisp:t :member-name "jobs")
                                  (next-item-offset :target-type
                                   next-item-offset :member-name
                                   "nextItemOffset")
                                  (total-results :target-type total-results
                                   :required common-lisp:t :member-name
                                   "totalResults"))
                                 (:shape-name "SearchJobsResponse"))

(smithy/sdk/shapes:define-union search-sort-expression common-lisp:nil
                                ((user-jobs-first :target-type user-jobs-first
                                  :member-name "userJobsFirst")
                                 (field-sort :target-type field-sort-expression
                                  :member-name "fieldSort")
                                 (parameter-sort :target-type
                                  parameter-sort-expression :member-name
                                  "parameterSort"))
                                (:shape-name "SearchSortExpression"))

(smithy/sdk/shapes:define-list search-sort-expressions :member
                               search-sort-expression)

(smithy/sdk/shapes:define-input search-steps-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-ids :target-type queue-ids :required
                                  common-lisp:t :member-name "queueIds")
                                 (job-id :target-type job-id :member-name
                                  "jobId")
                                 (filter-expressions :target-type
                                  search-grouped-filter-expressions
                                  :member-name "filterExpressions")
                                 (sort-expressions :target-type
                                  search-sort-expressions :member-name
                                  "sortExpressions")
                                 (item-offset :target-type integer :required
                                  common-lisp:t :member-name "itemOffset")
                                 (page-size :target-type integer :member-name
                                  "pageSize"))
                                (:shape-name "SearchStepsRequest"))

(smithy/sdk/shapes:define-output search-steps-response common-lisp:nil
                                 ((steps :target-type step-search-summaries
                                   :required common-lisp:t :member-name
                                   "steps")
                                  (next-item-offset :target-type
                                   next-item-offset :member-name
                                   "nextItemOffset")
                                  (total-results :target-type total-results
                                   :required common-lisp:t :member-name
                                   "totalResults"))
                                 (:shape-name "SearchStepsResponse"))

(smithy/sdk/shapes:define-input search-tasks-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-ids :target-type queue-ids :required
                                  common-lisp:t :member-name "queueIds")
                                 (job-id :target-type job-id :member-name
                                  "jobId")
                                 (filter-expressions :target-type
                                  search-grouped-filter-expressions
                                  :member-name "filterExpressions")
                                 (sort-expressions :target-type
                                  search-sort-expressions :member-name
                                  "sortExpressions")
                                 (item-offset :target-type integer :required
                                  common-lisp:t :member-name "itemOffset")
                                 (page-size :target-type integer :member-name
                                  "pageSize"))
                                (:shape-name "SearchTasksRequest"))

(smithy/sdk/shapes:define-output search-tasks-response common-lisp:nil
                                 ((tasks :target-type task-search-summaries
                                   :required common-lisp:t :member-name
                                   "tasks")
                                  (next-item-offset :target-type
                                   next-item-offset :member-name
                                   "nextItemOffset")
                                  (total-results :target-type total-results
                                   :required common-lisp:t :member-name
                                   "totalResults"))
                                 (:shape-name "SearchTasksResponse"))

(smithy/sdk/shapes:define-type search-term smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure search-term-filter-expression
                                    common-lisp:nil
                                    ((search-term :target-type search-term
                                      :required common-lisp:t :member-name
                                      "searchTerm")
                                     (match-type :target-type
                                      search-term-matching-type :member-name
                                      "matchType"))
                                    (:shape-name "SearchTermFilterExpression"))

(smithy/sdk/shapes:define-enum search-term-matching-type
    common-lisp:nil
  (:fuzzy-match "FUZZY_MATCH")
  (:contains "CONTAINS"))

(smithy/sdk/shapes:define-input search-workers-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (fleet-ids :target-type fleet-ids :required
                                  common-lisp:t :member-name "fleetIds")
                                 (filter-expressions :target-type
                                  search-grouped-filter-expressions
                                  :member-name "filterExpressions")
                                 (sort-expressions :target-type
                                  search-sort-expressions :member-name
                                  "sortExpressions")
                                 (item-offset :target-type integer :required
                                  common-lisp:t :member-name "itemOffset")
                                 (page-size :target-type integer :member-name
                                  "pageSize"))
                                (:shape-name "SearchWorkersRequest"))

(smithy/sdk/shapes:define-output search-workers-response common-lisp:nil
                                 ((workers :target-type worker-search-summaries
                                   :required common-lisp:t :member-name
                                   "workers")
                                  (next-item-offset :target-type
                                   next-item-offset :member-name
                                   "nextItemOffset")
                                  (total-results :target-type total-results
                                   :required common-lisp:t :member-name
                                   "totalResults"))
                                 (:shape-name "SearchWorkersResponse"))

(smithy/sdk/shapes:define-type secret-access-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type security-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list security-group-id-list :member security-group-id)

(smithy/sdk/shapes:define-structure service-managed-ec2fleet-configuration
                                    common-lisp:nil
                                    ((instance-capabilities :target-type
                                      service-managed-ec2instance-capabilities
                                      :required common-lisp:t :member-name
                                      "instanceCapabilities")
                                     (instance-market-options :target-type
                                      service-managed-ec2instance-market-options
                                      :required common-lisp:t :member-name
                                      "instanceMarketOptions")
                                     (vpc-configuration :target-type
                                      vpc-configuration :member-name
                                      "vpcConfiguration")
                                     (storage-profile-id :target-type
                                      storage-profile-id :member-name
                                      "storageProfileId"))
                                    (:shape-name
                                     "ServiceManagedEc2FleetConfiguration"))

(smithy/sdk/shapes:define-structure service-managed-ec2instance-capabilities
                                    common-lisp:nil
                                    ((v-cpu-count :target-type vcpu-count-range
                                      :required common-lisp:t :member-name
                                      "vCpuCount")
                                     (memory-mi-b :target-type memory-mi-brange
                                      :required common-lisp:t :member-name
                                      "memoryMiB")
                                     (os-family :target-type
                                      service-managed-fleet-operating-system-family
                                      :required common-lisp:t :member-name
                                      "osFamily")
                                     (cpu-architecture-type :target-type
                                      cpu-architecture-type :required
                                      common-lisp:t :member-name
                                      "cpuArchitectureType")
                                     (root-ebs-volume :target-type
                                      ec2ebs-volume :member-name
                                      "rootEbsVolume")
                                     (accelerator-capabilities :target-type
                                      accelerator-capabilities :member-name
                                      "acceleratorCapabilities")
                                     (allowed-instance-types :target-type
                                      instance-types :member-name
                                      "allowedInstanceTypes")
                                     (excluded-instance-types :target-type
                                      instance-types :member-name
                                      "excludedInstanceTypes")
                                     (custom-amounts :target-type
                                      custom-fleet-amount-capabilities
                                      :member-name "customAmounts")
                                     (custom-attributes :target-type
                                      custom-fleet-attribute-capabilities
                                      :member-name "customAttributes"))
                                    (:shape-name
                                     "ServiceManagedEc2InstanceCapabilities"))

(smithy/sdk/shapes:define-structure service-managed-ec2instance-market-options
                                    common-lisp:nil
                                    ((type :target-type ec2market-type
                                      :required common-lisp:t :member-name
                                      "type"))
                                    (:shape-name
                                     "ServiceManagedEc2InstanceMarketOptions"))

(smithy/sdk/shapes:define-enum service-managed-fleet-operating-system-family
    common-lisp:nil
  (:windows "WINDOWS")
  (:linux "LINUX"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message")
                                 (reason :target-type
                                  service-quota-exceeded-exception-reason
                                  :required common-lisp:t :member-name
                                  "reason")
                                 (resource-type :target-type string :required
                                  common-lisp:t :member-name "resourceType")
                                 (service-code :target-type string :required
                                  common-lisp:t :member-name "serviceCode")
                                 (quota-code :target-type string :required
                                  common-lisp:t :member-name "quotaCode")
                                 (resource-id :target-type string :member-name
                                  "resourceId")
                                 (context :target-type exception-context
                                  :member-name "context"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-enum service-quota-exceeded-exception-reason
    common-lisp:nil
  (:service-quota-exceeded-exception "SERVICE_QUOTA_EXCEEDED_EXCEPTION")
  (:kms-key-limit-exceeded "KMS_KEY_LIMIT_EXCEEDED")
  (:dependency-limit-exceeded "DEPENDENCY_LIMIT_EXCEEDED"))

(smithy/sdk/shapes:define-union session-action-definition common-lisp:nil
                                ((env-enter :target-type
                                  environment-enter-session-action-definition
                                  :member-name "envEnter")
                                 (env-exit :target-type
                                  environment-exit-session-action-definition
                                  :member-name "envExit")
                                 (task-run :target-type
                                  task-run-session-action-definition
                                  :member-name "taskRun")
                                 (sync-input-job-attachments :target-type
                                  sync-input-job-attachments-session-action-definition
                                  :member-name "syncInputJobAttachments"))
                                (:shape-name "SessionActionDefinition"))

(smithy/sdk/shapes:define-union session-action-definition-summary
                                common-lisp:nil
                                ((env-enter :target-type
                                  environment-enter-session-action-definition-summary
                                  :member-name "envEnter")
                                 (env-exit :target-type
                                  environment-exit-session-action-definition-summary
                                  :member-name "envExit")
                                 (task-run :target-type
                                  task-run-session-action-definition-summary
                                  :member-name "taskRun")
                                 (sync-input-job-attachments :target-type
                                  sync-input-job-attachments-session-action-definition-summary
                                  :member-name "syncInputJobAttachments"))
                                (:shape-name "SessionActionDefinitionSummary"))

(smithy/sdk/shapes:define-type session-action-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list session-action-id-list :member session-action-id)

(smithy/sdk/shapes:define-type session-action-progress-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type session-action-progress-percent
                               smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-enum session-action-status
    common-lisp:nil
  (:assigned "ASSIGNED")
  (:running "RUNNING")
  (:canceling "CANCELING")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED")
  (:interrupted "INTERRUPTED")
  (:canceled "CANCELED")
  (:never-attempted "NEVER_ATTEMPTED")
  (:scheduled "SCHEDULED")
  (:reclaiming "RECLAIMING")
  (:reclaimed "RECLAIMED"))

(smithy/sdk/shapes:define-list session-action-summaries :member
                               session-action-summary)

(smithy/sdk/shapes:define-structure session-action-summary common-lisp:nil
                                    ((session-action-id :target-type
                                      session-action-id :required common-lisp:t
                                      :member-name "sessionActionId")
                                     (status :target-type session-action-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (started-at :target-type started-at
                                      :member-name "startedAt")
                                     (ended-at :target-type ended-at
                                      :member-name "endedAt")
                                     (worker-updated-at :target-type timestamp
                                      :member-name "workerUpdatedAt")
                                     (progress-percent :target-type
                                      session-action-progress-percent
                                      :member-name "progressPercent")
                                     (definition :target-type
                                      session-action-definition-summary
                                      :required common-lisp:t :member-name
                                      "definition")
                                     (manifests :target-type
                                      task-run-manifest-properties-list-response
                                      :member-name "manifests"))
                                    (:shape-name "SessionActionSummary"))

(smithy/sdk/shapes:define-type session-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum session-lifecycle-status
    common-lisp:nil
  (:started "STARTED")
  (:update-in-progress "UPDATE_IN_PROGRESS")
  (:update-succeeded "UPDATE_SUCCEEDED")
  (:update-failed "UPDATE_FAILED")
  (:ended "ENDED"))

(smithy/sdk/shapes:define-enum session-lifecycle-target-status
    common-lisp:nil
  (:ended "ENDED"))

(smithy/sdk/shapes:define-list session-summaries :member session-summary)

(smithy/sdk/shapes:define-structure session-summary common-lisp:nil
                                    ((session-id :target-type session-id
                                      :required common-lisp:t :member-name
                                      "sessionId")
                                     (fleet-id :target-type fleet-id :required
                                      common-lisp:t :member-name "fleetId")
                                     (worker-id :target-type worker-id
                                      :required common-lisp:t :member-name
                                      "workerId")
                                     (started-at :target-type started-at
                                      :required common-lisp:t :member-name
                                      "startedAt")
                                     (lifecycle-status :target-type
                                      session-lifecycle-status :required
                                      common-lisp:t :member-name
                                      "lifecycleStatus")
                                     (ended-at :target-type ended-at
                                      :member-name "endedAt")
                                     (updated-at :target-type updated-at
                                      :member-name "updatedAt")
                                     (updated-by :target-type updated-by
                                      :member-name "updatedBy")
                                     (target-lifecycle-status :target-type
                                      session-lifecycle-target-status
                                      :member-name "targetLifecycleStatus"))
                                    (:shape-name "SessionSummary"))

(smithy/sdk/shapes:define-type session-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum sessions-statistics-aggregation-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:timeout "TIMEOUT")
  (:failed "FAILED")
  (:completed "COMPLETED"))

(smithy/sdk/shapes:define-union sessions-statistics-resources common-lisp:nil
                                ((queue-ids :target-type queue-ids :member-name
                                  "queueIds")
                                 (fleet-ids :target-type fleet-ids :member-name
                                  "fleetIds"))
                                (:shape-name "SessionsStatisticsResources"))

(smithy/sdk/shapes:define-enum sort-order
    common-lisp:nil
  (:ascending "ASCENDING")
  (:descending "DESCENDING"))

(smithy/sdk/shapes:define-input start-sessions-statistics-aggregation-request
                                common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (resource-ids :target-type
                                  sessions-statistics-resources :required
                                  common-lisp:t :member-name "resourceIds")
                                 (start-time :target-type timestamp :required
                                  common-lisp:t :member-name "startTime"
                                  :timestamp-format "date-time")
                                 (end-time :target-type timestamp :required
                                  common-lisp:t :member-name "endTime"
                                  :timestamp-format "date-time")
                                 (timezone :target-type timezone :member-name
                                  "timezone")
                                 (period :target-type period :member-name
                                  "period")
                                 (group-by :target-type usage-group-by
                                  :required common-lisp:t :member-name
                                  "groupBy")
                                 (statistics :target-type usage-statistics
                                  :required common-lisp:t :member-name
                                  "statistics"))
                                (:shape-name
                                 "StartSessionsStatisticsAggregationRequest"))

(smithy/sdk/shapes:define-output start-sessions-statistics-aggregation-response
                                 common-lisp:nil
                                 ((aggregation-id :target-type aggregation-id
                                   :required common-lisp:t :member-name
                                   "aggregationId"))
                                 (:shape-name
                                  "StartSessionsStatisticsAggregationResponse"))

(smithy/sdk/shapes:define-type started-at smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type starts-at smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure statistics common-lisp:nil
                                    ((queue-id :target-type queue-id
                                      :member-name "queueId")
                                     (fleet-id :target-type fleet-id
                                      :member-name "fleetId")
                                     (job-id :target-type job-id :member-name
                                      "jobId")
                                     (job-name :target-type job-name
                                      :member-name "jobName")
                                     (user-id :target-type user-id :member-name
                                      "userId")
                                     (usage-type :target-type usage-type
                                      :member-name "usageType")
                                     (license-product :target-type
                                      license-product :member-name
                                      "licenseProduct")
                                     (instance-type :target-type instance-type
                                      :member-name "instanceType")
                                     (count :target-type integer :required
                                      common-lisp:t :member-name "count")
                                     (cost-in-usd :target-type stats :required
                                      common-lisp:t :member-name "costInUsd")
                                     (runtime-in-seconds :target-type stats
                                      :required common-lisp:t :member-name
                                      "runtimeInSeconds")
                                     (aggregation-start-time :target-type
                                      timestamp :member-name
                                      "aggregationStartTime" :timestamp-format
                                      "date-time")
                                     (aggregation-end-time :target-type
                                      timestamp :member-name
                                      "aggregationEndTime" :timestamp-format
                                      "date-time"))
                                    (:shape-name "Statistics"))

(smithy/sdk/shapes:define-list statistics-list :member statistics)

(smithy/sdk/shapes:define-structure stats common-lisp:nil
                                    ((min :target-type double :member-name
                                      "min")
                                     (max :target-type double :member-name
                                      "max")
                                     (avg :target-type double :member-name
                                      "avg")
                                     (sum :target-type double :member-name
                                      "sum"))
                                    (:shape-name "Stats"))

(smithy/sdk/shapes:define-type status-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list step-amount-capabilities :member
                               step-amount-capability)

(smithy/sdk/shapes:define-structure step-amount-capability common-lisp:nil
                                    ((name :target-type amount-capability-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (min :target-type double :member-name
                                      "min")
                                     (max :target-type double :member-name
                                      "max")
                                     (value :target-type double :member-name
                                      "value"))
                                    (:shape-name "StepAmountCapability"))

(smithy/sdk/shapes:define-list step-attribute-capabilities :member
                               step-attribute-capability)

(smithy/sdk/shapes:define-structure step-attribute-capability common-lisp:nil
                                    ((name :target-type
                                      attribute-capability-name :required
                                      common-lisp:t :member-name "name")
                                     (any-of :target-type
                                      list-attribute-capability-value
                                      :member-name "anyOf")
                                     (all-of :target-type
                                      list-attribute-capability-value
                                      :member-name "allOf"))
                                    (:shape-name "StepAttributeCapability"))

(smithy/sdk/shapes:define-structure step-consumer common-lisp:nil
                                    ((step-id :target-type step-id :required
                                      common-lisp:t :member-name "stepId")
                                     (status :target-type
                                      dependency-consumer-resolution-status
                                      :required common-lisp:t :member-name
                                      "status"))
                                    (:shape-name "StepConsumer"))

(smithy/sdk/shapes:define-list step-consumers :member step-consumer)

(smithy/sdk/shapes:define-list step-dependencies :member step-dependency)

(smithy/sdk/shapes:define-structure step-dependency common-lisp:nil
                                    ((step-id :target-type step-id :required
                                      common-lisp:t :member-name "stepId")
                                     (status :target-type
                                      dependency-consumer-resolution-status
                                      :required common-lisp:t :member-name
                                      "status"))
                                    (:shape-name "StepDependency"))

(smithy/sdk/shapes:define-type step-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure step-details-entity common-lisp:nil
                                    ((job-id :target-type job-id :required
                                      common-lisp:t :member-name "jobId")
                                     (step-id :target-type step-id :required
                                      common-lisp:t :member-name "stepId")
                                     (schema-version :target-type string
                                      :required common-lisp:t :member-name
                                      "schemaVersion")
                                     (template :target-type document :required
                                      common-lisp:t :member-name "template")
                                     (dependencies :target-type
                                      dependencies-list :required common-lisp:t
                                      :member-name "dependencies"))
                                    (:shape-name "StepDetailsEntity"))

(smithy/sdk/shapes:define-structure step-details-error common-lisp:nil
                                    ((job-id :target-type job-id :required
                                      common-lisp:t :member-name "jobId")
                                     (step-id :target-type step-id :required
                                      common-lisp:t :member-name "stepId")
                                     (code :target-type job-entity-error-code
                                      :required common-lisp:t :member-name
                                      "code")
                                     (message :target-type string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "StepDetailsError"))

(smithy/sdk/shapes:define-structure step-details-identifiers common-lisp:nil
                                    ((job-id :target-type job-id :required
                                      common-lisp:t :member-name "jobId")
                                     (step-id :target-type step-id :required
                                      common-lisp:t :member-name "stepId"))
                                    (:shape-name "StepDetailsIdentifiers"))

(smithy/sdk/shapes:define-type step-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum step-lifecycle-status
    common-lisp:nil
  (:create-complete "CREATE_COMPLETE")
  (:update-in-progress "UPDATE_IN_PROGRESS")
  (:update-failed "UPDATE_FAILED")
  (:update-succeeded "UPDATE_SUCCEEDED"))

(smithy/sdk/shapes:define-type step-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure step-parameter common-lisp:nil
                                    ((name :target-type step-parameter-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (type :target-type step-parameter-type
                                      :required common-lisp:t :member-name
                                      "type"))
                                    (:shape-name "StepParameter"))

(smithy/sdk/shapes:define-list step-parameter-list :member step-parameter)

(smithy/sdk/shapes:define-type step-parameter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum step-parameter-type
    common-lisp:nil
  (:int "INT")
  (:float "FLOAT")
  (:string "STRING")
  (:path "PATH")
  (:chunk-int "CHUNK_INT"))

(smithy/sdk/shapes:define-structure step-required-capabilities common-lisp:nil
                                    ((attributes :target-type
                                      step-attribute-capabilities :required
                                      common-lisp:t :member-name "attributes")
                                     (amounts :target-type
                                      step-amount-capabilities :required
                                      common-lisp:t :member-name "amounts"))
                                    (:shape-name "StepRequiredCapabilities"))

(smithy/sdk/shapes:define-list step-search-summaries :member
                               step-search-summary)

(smithy/sdk/shapes:define-structure step-search-summary common-lisp:nil
                                    ((step-id :target-type step-id :member-name
                                      "stepId")
                                     (job-id :target-type job-id :member-name
                                      "jobId")
                                     (queue-id :target-type queue-id
                                      :member-name "queueId")
                                     (name :target-type step-name :member-name
                                      "name")
                                     (lifecycle-status :target-type
                                      step-lifecycle-status :member-name
                                      "lifecycleStatus")
                                     (lifecycle-status-message :target-type
                                      string :member-name
                                      "lifecycleStatusMessage")
                                     (task-run-status :target-type
                                      task-run-status :member-name
                                      "taskRunStatus")
                                     (target-task-run-status :target-type
                                      step-target-task-run-status :member-name
                                      "targetTaskRunStatus")
                                     (task-run-status-counts :target-type
                                      task-run-status-counts :member-name
                                      "taskRunStatusCounts")
                                     (task-failure-retry-count :target-type
                                      task-failure-retry-count :member-name
                                      "taskFailureRetryCount")
                                     (created-at :target-type created-at
                                      :member-name "createdAt")
                                     (created-by :target-type created-by
                                      :member-name "createdBy")
                                     (started-at :target-type started-at
                                      :member-name "startedAt")
                                     (ended-at :target-type ended-at
                                      :member-name "endedAt")
                                     (updated-at :target-type updated-at
                                      :member-name "updatedAt")
                                     (updated-by :target-type updated-by
                                      :member-name "updatedBy")
                                     (parameter-space :target-type
                                      parameter-space :member-name
                                      "parameterSpace"))
                                    (:shape-name "StepSearchSummary"))

(smithy/sdk/shapes:define-list step-summaries :member step-summary)

(smithy/sdk/shapes:define-structure step-summary common-lisp:nil
                                    ((step-id :target-type step-id :required
                                      common-lisp:t :member-name "stepId")
                                     (name :target-type step-name :required
                                      common-lisp:t :member-name "name")
                                     (lifecycle-status :target-type
                                      step-lifecycle-status :required
                                      common-lisp:t :member-name
                                      "lifecycleStatus")
                                     (lifecycle-status-message :target-type
                                      string :member-name
                                      "lifecycleStatusMessage")
                                     (task-run-status :target-type
                                      task-run-status :required common-lisp:t
                                      :member-name "taskRunStatus")
                                     (task-run-status-counts :target-type
                                      task-run-status-counts :required
                                      common-lisp:t :member-name
                                      "taskRunStatusCounts")
                                     (task-failure-retry-count :target-type
                                      task-failure-retry-count :member-name
                                      "taskFailureRetryCount")
                                     (target-task-run-status :target-type
                                      step-target-task-run-status :member-name
                                      "targetTaskRunStatus")
                                     (created-at :target-type created-at
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (created-by :target-type created-by
                                      :required common-lisp:t :member-name
                                      "createdBy")
                                     (updated-at :target-type updated-at
                                      :member-name "updatedAt")
                                     (updated-by :target-type updated-by
                                      :member-name "updatedBy")
                                     (started-at :target-type started-at
                                      :member-name "startedAt")
                                     (ended-at :target-type ended-at
                                      :member-name "endedAt")
                                     (dependency-counts :target-type
                                      dependency-counts :member-name
                                      "dependencyCounts"))
                                    (:shape-name "StepSummary"))

(smithy/sdk/shapes:define-enum step-target-task-run-status
    common-lisp:nil
  (:ready "READY")
  (:failed "FAILED")
  (:succeeded "SUCCEEDED")
  (:canceled "CANCELED")
  (:suspended "SUSPENDED")
  (:pending "PENDING"))

(smithy/sdk/shapes:define-type storage-profile-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum storage-profile-operating-system-family
    common-lisp:nil
  (:windows "WINDOWS")
  (:linux "LINUX")
  (:macos "MACOS"))

(smithy/sdk/shapes:define-list storage-profile-summaries :member
                               storage-profile-summary)

(smithy/sdk/shapes:define-structure storage-profile-summary common-lisp:nil
                                    ((storage-profile-id :target-type
                                      storage-profile-id :required
                                      common-lisp:t :member-name
                                      "storageProfileId")
                                     (display-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "displayName")
                                     (os-family :target-type
                                      storage-profile-operating-system-family
                                      :required common-lisp:t :member-name
                                      "osFamily"))
                                    (:shape-name "StorageProfileSummary"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-filter smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure string-filter-expression common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "name")
                                     (operator :target-type comparison-operator
                                      :required common-lisp:t :member-name
                                      "operator")
                                     (value :target-type string-filter
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name "StringFilterExpression"))

(smithy/sdk/shapes:define-list string-list :member string)

(smithy/sdk/shapes:define-type subdomain smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnet-id-list :member subnet-id)

(smithy/sdk/shapes:define-structure
 sync-input-job-attachments-session-action-definition common-lisp:nil
 ((step-id :target-type step-id :member-name "stepId"))
 (:shape-name "SyncInputJobAttachmentsSessionActionDefinition"))

(smithy/sdk/shapes:define-structure
 sync-input-job-attachments-session-action-definition-summary common-lisp:nil
 ((step-id :target-type step-id :member-name "stepId"))
 (:shape-name "SyncInputJobAttachmentsSessionActionDefinitionSummary"))

(smithy/sdk/shapes:define-enum tag-propagation-mode
    common-lisp:nil
  (:no-propagation "NO_PROPAGATION")
  (:propagate-tags-to-workers-at-launch "PROPAGATE_TAGS_TO_WORKERS_AT_LAUNCH"))

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-map tags :key string :value string)

(smithy/sdk/shapes:define-type task-failure-retry-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type task-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union task-parameter-value common-lisp:nil
                                ((int :target-type int-string :member-name
                                  "int")
                                 (float :target-type float-string :member-name
                                  "float")
                                 (string :target-type parameter-string
                                  :member-name "string")
                                 (path :target-type path-string :member-name
                                  "path")
                                 (chunk-int :target-type string :member-name
                                  "chunkInt"))
                                (:shape-name "TaskParameterValue"))

(smithy/sdk/shapes:define-map task-parameters :key string :value
                              task-parameter-value)

(smithy/sdk/shapes:define-type task-retry-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list task-run-manifest-properties-list-request
                               :member task-run-manifest-properties-request)

(smithy/sdk/shapes:define-list task-run-manifest-properties-list-response
                               :member task-run-manifest-properties-response)

(smithy/sdk/shapes:define-structure task-run-manifest-properties-request
                                    common-lisp:nil
                                    ((output-manifest-path :target-type string
                                      :member-name "outputManifestPath")
                                     (output-manifest-hash :target-type string
                                      :member-name "outputManifestHash"))
                                    (:shape-name
                                     "TaskRunManifestPropertiesRequest"))

(smithy/sdk/shapes:define-structure task-run-manifest-properties-response
                                    common-lisp:nil
                                    ((output-manifest-path :target-type string
                                      :member-name "outputManifestPath")
                                     (output-manifest-hash :target-type string
                                      :member-name "outputManifestHash"))
                                    (:shape-name
                                     "TaskRunManifestPropertiesResponse"))

(smithy/sdk/shapes:define-structure task-run-session-action-definition
                                    common-lisp:nil
                                    ((task-id :target-type task-id :member-name
                                      "taskId")
                                     (step-id :target-type step-id :required
                                      common-lisp:t :member-name "stepId")
                                     (parameters :target-type task-parameters
                                      :required common-lisp:t :member-name
                                      "parameters"))
                                    (:shape-name
                                     "TaskRunSessionActionDefinition"))

(smithy/sdk/shapes:define-structure task-run-session-action-definition-summary
                                    common-lisp:nil
                                    ((task-id :target-type task-id :member-name
                                      "taskId")
                                     (step-id :target-type step-id :required
                                      common-lisp:t :member-name "stepId")
                                     (parameters :target-type task-parameters
                                      :member-name "parameters"))
                                    (:shape-name
                                     "TaskRunSessionActionDefinitionSummary"))

(smithy/sdk/shapes:define-enum task-run-status
    common-lisp:nil
  (:pending "PENDING")
  (:ready "READY")
  (:assigned "ASSIGNED")
  (:starting "STARTING")
  (:scheduled "SCHEDULED")
  (:interrupting "INTERRUPTING")
  (:running "RUNNING")
  (:suspended "SUSPENDED")
  (:canceled "CANCELED")
  (:failed "FAILED")
  (:succeeded "SUCCEEDED")
  (:not-compatible "NOT_COMPATIBLE"))

(smithy/sdk/shapes:define-map task-run-status-counts :key task-run-status
                              :value integer)

(smithy/sdk/shapes:define-list task-search-summaries :member
                               task-search-summary)

(smithy/sdk/shapes:define-structure task-search-summary common-lisp:nil
                                    ((task-id :target-type task-id :member-name
                                      "taskId")
                                     (step-id :target-type step-id :member-name
                                      "stepId")
                                     (job-id :target-type job-id :member-name
                                      "jobId")
                                     (queue-id :target-type queue-id
                                      :member-name "queueId")
                                     (run-status :target-type task-run-status
                                      :member-name "runStatus")
                                     (target-run-status :target-type
                                      task-target-run-status :member-name
                                      "targetRunStatus")
                                     (parameters :target-type task-parameters
                                      :member-name "parameters")
                                     (failure-retry-count :target-type
                                      task-retry-count :member-name
                                      "failureRetryCount")
                                     (started-at :target-type started-at
                                      :member-name "startedAt")
                                     (ended-at :target-type ended-at
                                      :member-name "endedAt")
                                     (updated-at :target-type updated-at
                                      :member-name "updatedAt")
                                     (updated-by :target-type updated-by
                                      :member-name "updatedBy"))
                                    (:shape-name "TaskSearchSummary"))

(smithy/sdk/shapes:define-list task-summaries :member task-summary)

(smithy/sdk/shapes:define-structure task-summary common-lisp:nil
                                    ((task-id :target-type task-id :required
                                      common-lisp:t :member-name "taskId")
                                     (created-at :target-type created-at
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (created-by :target-type created-by
                                      :required common-lisp:t :member-name
                                      "createdBy")
                                     (run-status :target-type task-run-status
                                      :required common-lisp:t :member-name
                                      "runStatus")
                                     (target-run-status :target-type
                                      task-target-run-status :member-name
                                      "targetRunStatus")
                                     (failure-retry-count :target-type
                                      task-retry-count :member-name
                                      "failureRetryCount")
                                     (parameters :target-type task-parameters
                                      :member-name "parameters")
                                     (started-at :target-type started-at
                                      :member-name "startedAt")
                                     (ended-at :target-type ended-at
                                      :member-name "endedAt")
                                     (updated-at :target-type updated-at
                                      :member-name "updatedAt")
                                     (updated-by :target-type updated-by
                                      :member-name "updatedBy")
                                     (latest-session-action-id :target-type
                                      session-action-id :member-name
                                      "latestSessionActionId"))
                                    (:shape-name "TaskSummary"))

(smithy/sdk/shapes:define-enum task-target-run-status
    common-lisp:nil
  (:ready "READY")
  (:failed "FAILED")
  (:succeeded "SUCCEEDED")
  (:canceled "CANCELED")
  (:suspended "SUSPENDED")
  (:pending "PENDING"))

(smithy/sdk/shapes:define-type threshold-percentage
                               smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message")
                                 (service-code :target-type string :member-name
                                  "serviceCode")
                                 (quota-code :target-type string :member-name
                                  "quotaCode")
                                 (retry-after-seconds :target-type integer
                                  :member-name "retryAfterSeconds" :http-header
                                  "Retry-After")
                                 (context :target-type exception-context
                                  :member-name "context"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type timezone smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type total-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type string-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-budget-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken" :http-header
                                  "X-Amz-Client-Token")
                                 (farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (budget-id :target-type budget-id :required
                                  common-lisp:t :member-name "budgetId"
                                  :http-label common-lisp:t)
                                 (display-name :target-type resource-name
                                  :member-name "displayName")
                                 (description :target-type description
                                  :member-name "description")
                                 (status :target-type budget-status
                                  :member-name "status")
                                 (approximate-dollar-limit :target-type
                                  consumed-usage-limit :member-name
                                  "approximateDollarLimit")
                                 (actions-to-add :target-type
                                  budget-actions-to-add :member-name
                                  "actionsToAdd")
                                 (actions-to-remove :target-type
                                  budget-actions-to-remove :member-name
                                  "actionsToRemove")
                                 (schedule :target-type budget-schedule
                                  :member-name "schedule"))
                                (:shape-name "UpdateBudgetRequest"))

(smithy/sdk/shapes:define-output update-budget-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateBudgetResponse"))

(smithy/sdk/shapes:define-input update-farm-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (display-name :target-type resource-name
                                  :member-name "displayName")
                                 (description :target-type description
                                  :member-name "description"))
                                (:shape-name "UpdateFarmRequest"))

(smithy/sdk/shapes:define-output update-farm-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateFarmResponse"))

(smithy/sdk/shapes:define-input update-fleet-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken" :http-header
                                  "X-Amz-Client-Token")
                                 (farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (fleet-id :target-type fleet-id :required
                                  common-lisp:t :member-name "fleetId"
                                  :http-label common-lisp:t)
                                 (display-name :target-type resource-name
                                  :member-name "displayName")
                                 (description :target-type description
                                  :member-name "description")
                                 (role-arn :target-type iam-role-arn
                                  :member-name "roleArn")
                                 (min-worker-count :target-type
                                  min-zero-max-integer :member-name
                                  "minWorkerCount")
                                 (max-worker-count :target-type
                                  min-zero-max-integer :member-name
                                  "maxWorkerCount")
                                 (configuration :target-type
                                  fleet-configuration :member-name
                                  "configuration")
                                 (host-configuration :target-type
                                  host-configuration :member-name
                                  "hostConfiguration"))
                                (:shape-name "UpdateFleetRequest"))

(smithy/sdk/shapes:define-output update-fleet-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateFleetResponse"))

(smithy/sdk/shapes:define-enum update-job-lifecycle-status
    common-lisp:nil
  (:archived "ARCHIVED"))

(smithy/sdk/shapes:define-input update-job-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken" :http-header
                                  "X-Amz-Client-Token")
                                 (target-task-run-status :target-type
                                  job-target-task-run-status :member-name
                                  "targetTaskRunStatus")
                                 (priority :target-type job-priority
                                  :member-name "priority")
                                 (max-failed-tasks-count :target-type
                                  max-failed-tasks-count :member-name
                                  "maxFailedTasksCount")
                                 (max-retries-per-task :target-type
                                  max-retries-per-task :member-name
                                  "maxRetriesPerTask")
                                 (lifecycle-status :target-type
                                  update-job-lifecycle-status :member-name
                                  "lifecycleStatus")
                                 (max-worker-count :target-type
                                  max-worker-count :member-name
                                  "maxWorkerCount")
                                 (farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t))
                                (:shape-name "UpdateJobRequest"))

(smithy/sdk/shapes:define-output update-job-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateJobResponse"))

(smithy/sdk/shapes:define-input update-limit-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (limit-id :target-type limit-id :required
                                  common-lisp:t :member-name "limitId"
                                  :http-label common-lisp:t)
                                 (display-name :target-type resource-name
                                  :member-name "displayName")
                                 (description :target-type description
                                  :member-name "description")
                                 (max-count :target-type max-count :member-name
                                  "maxCount"))
                                (:shape-name "UpdateLimitRequest"))

(smithy/sdk/shapes:define-output update-limit-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateLimitResponse"))

(smithy/sdk/shapes:define-input update-monitor-request common-lisp:nil
                                ((monitor-id :target-type monitor-id :required
                                  common-lisp:t :member-name "monitorId"
                                  :http-label common-lisp:t)
                                 (subdomain :target-type subdomain :member-name
                                  "subdomain")
                                 (display-name :target-type resource-name
                                  :member-name "displayName")
                                 (role-arn :target-type iam-role-arn
                                  :member-name "roleArn"))
                                (:shape-name "UpdateMonitorRequest"))

(smithy/sdk/shapes:define-output update-monitor-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateMonitorResponse"))

(smithy/sdk/shapes:define-input update-queue-environment-request
                                common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken" :http-header
                                  "X-Amz-Client-Token")
                                 (farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (queue-environment-id :target-type
                                  queue-environment-id :required common-lisp:t
                                  :member-name "queueEnvironmentId" :http-label
                                  common-lisp:t)
                                 (priority :target-type priority :member-name
                                  "priority")
                                 (template-type :target-type
                                  environment-template-type :member-name
                                  "templateType")
                                 (template :target-type environment-template
                                  :member-name "template"))
                                (:shape-name "UpdateQueueEnvironmentRequest"))

(smithy/sdk/shapes:define-output update-queue-environment-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateQueueEnvironmentResponse"))

(smithy/sdk/shapes:define-input update-queue-fleet-association-request
                                common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (fleet-id :target-type fleet-id :required
                                  common-lisp:t :member-name "fleetId"
                                  :http-label common-lisp:t)
                                 (status :target-type
                                  update-queue-fleet-association-status
                                  :required common-lisp:t :member-name
                                  "status"))
                                (:shape-name
                                 "UpdateQueueFleetAssociationRequest"))

(smithy/sdk/shapes:define-output update-queue-fleet-association-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateQueueFleetAssociationResponse"))

(smithy/sdk/shapes:define-enum update-queue-fleet-association-status
    common-lisp:nil
  (:active "ACTIVE")
  (:stop-scheduling-and-complete-tasks "STOP_SCHEDULING_AND_COMPLETE_TASKS")
  (:stop-scheduling-and-cancel-tasks "STOP_SCHEDULING_AND_CANCEL_TASKS"))

(smithy/sdk/shapes:define-input update-queue-limit-association-request
                                common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (limit-id :target-type limit-id :required
                                  common-lisp:t :member-name "limitId"
                                  :http-label common-lisp:t)
                                 (status :target-type
                                  update-queue-limit-association-status
                                  :required common-lisp:t :member-name
                                  "status"))
                                (:shape-name
                                 "UpdateQueueLimitAssociationRequest"))

(smithy/sdk/shapes:define-output update-queue-limit-association-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateQueueLimitAssociationResponse"))

(smithy/sdk/shapes:define-enum update-queue-limit-association-status
    common-lisp:nil
  (:active "ACTIVE")
  (:stop-limit-usage-and-complete-tasks "STOP_LIMIT_USAGE_AND_COMPLETE_TASKS")
  (:stop-limit-usage-and-cancel-tasks "STOP_LIMIT_USAGE_AND_CANCEL_TASKS"))

(smithy/sdk/shapes:define-input update-queue-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken" :http-header
                                  "X-Amz-Client-Token")
                                 (farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (display-name :target-type resource-name
                                  :member-name "displayName")
                                 (description :target-type description
                                  :member-name "description")
                                 (default-budget-action :target-type
                                  default-queue-budget-action :member-name
                                  "defaultBudgetAction")
                                 (job-attachment-settings :target-type
                                  job-attachment-settings :member-name
                                  "jobAttachmentSettings")
                                 (role-arn :target-type iam-role-arn
                                  :member-name "roleArn")
                                 (job-run-as-user :target-type job-run-as-user
                                  :member-name "jobRunAsUser")
                                 (required-file-system-location-names-to-add
                                  :target-type
                                  required-file-system-location-names
                                  :member-name
                                  "requiredFileSystemLocationNamesToAdd")
                                 (required-file-system-location-names-to-remove
                                  :target-type
                                  required-file-system-location-names
                                  :member-name
                                  "requiredFileSystemLocationNamesToRemove")
                                 (allowed-storage-profile-ids-to-add
                                  :target-type allowed-storage-profile-ids
                                  :member-name "allowedStorageProfileIdsToAdd")
                                 (allowed-storage-profile-ids-to-remove
                                  :target-type allowed-storage-profile-ids
                                  :member-name
                                  "allowedStorageProfileIdsToRemove"))
                                (:shape-name "UpdateQueueRequest"))

(smithy/sdk/shapes:define-output update-queue-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateQueueResponse"))

(smithy/sdk/shapes:define-input update-session-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken" :http-header
                                  "X-Amz-Client-Token")
                                 (target-lifecycle-status :target-type
                                  session-lifecycle-target-status :required
                                  common-lisp:t :member-name
                                  "targetLifecycleStatus")
                                 (farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t)
                                 (session-id :target-type session-id :required
                                  common-lisp:t :member-name "sessionId"
                                  :http-label common-lisp:t))
                                (:shape-name "UpdateSessionRequest"))

(smithy/sdk/shapes:define-output update-session-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateSessionResponse"))

(smithy/sdk/shapes:define-input update-step-request common-lisp:nil
                                ((target-task-run-status :target-type
                                  step-target-task-run-status :required
                                  common-lisp:t :member-name
                                  "targetTaskRunStatus")
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-header
                                  "X-Amz-Client-Token")
                                 (farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t)
                                 (step-id :target-type step-id :required
                                  common-lisp:t :member-name "stepId"
                                  :http-label common-lisp:t))
                                (:shape-name "UpdateStepRequest"))

(smithy/sdk/shapes:define-output update-step-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateStepResponse"))

(smithy/sdk/shapes:define-input update-storage-profile-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken" :http-header
                                  "X-Amz-Client-Token")
                                 (farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (storage-profile-id :target-type
                                  storage-profile-id :required common-lisp:t
                                  :member-name "storageProfileId" :http-label
                                  common-lisp:t)
                                 (display-name :target-type resource-name
                                  :member-name "displayName")
                                 (os-family :target-type
                                  storage-profile-operating-system-family
                                  :member-name "osFamily")
                                 (file-system-locations-to-add :target-type
                                  file-system-locations-list :member-name
                                  "fileSystemLocationsToAdd")
                                 (file-system-locations-to-remove :target-type
                                  file-system-locations-list :member-name
                                  "fileSystemLocationsToRemove"))
                                (:shape-name "UpdateStorageProfileRequest"))

(smithy/sdk/shapes:define-output update-storage-profile-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateStorageProfileResponse"))

(smithy/sdk/shapes:define-input update-task-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken" :http-header
                                  "X-Amz-Client-Token")
                                 (target-run-status :target-type
                                  task-target-run-status :required
                                  common-lisp:t :member-name "targetRunStatus")
                                 (farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (queue-id :target-type queue-id :required
                                  common-lisp:t :member-name "queueId"
                                  :http-label common-lisp:t)
                                 (job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t)
                                 (step-id :target-type step-id :required
                                  common-lisp:t :member-name "stepId"
                                  :http-label common-lisp:t)
                                 (task-id :target-type task-id :required
                                  common-lisp:t :member-name "taskId"
                                  :http-label common-lisp:t))
                                (:shape-name "UpdateTaskRequest"))

(smithy/sdk/shapes:define-output update-task-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateTaskResponse"))

(smithy/sdk/shapes:define-input update-worker-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (fleet-id :target-type fleet-id :required
                                  common-lisp:t :member-name "fleetId"
                                  :http-label common-lisp:t)
                                 (worker-id :target-type worker-id :required
                                  common-lisp:t :member-name "workerId"
                                  :http-label common-lisp:t)
                                 (status :target-type updated-worker-status
                                  :member-name "status")
                                 (capabilities :target-type worker-capabilities
                                  :member-name "capabilities")
                                 (host-properties :target-type
                                  host-properties-request :member-name
                                  "hostProperties"))
                                (:shape-name "UpdateWorkerRequest"))

(smithy/sdk/shapes:define-output update-worker-response common-lisp:nil
                                 ((log :target-type log-configuration
                                   :member-name "log")
                                  (host-configuration :target-type
                                   host-configuration :member-name
                                   "hostConfiguration"))
                                 (:shape-name "UpdateWorkerResponse"))

(smithy/sdk/shapes:define-type update-worker-schedule-interval
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input update-worker-schedule-request common-lisp:nil
                                ((farm-id :target-type farm-id :required
                                  common-lisp:t :member-name "farmId"
                                  :http-label common-lisp:t)
                                 (fleet-id :target-type fleet-id :required
                                  common-lisp:t :member-name "fleetId"
                                  :http-label common-lisp:t)
                                 (worker-id :target-type worker-id :required
                                  common-lisp:t :member-name "workerId"
                                  :http-label common-lisp:t)
                                 (updated-session-actions :target-type
                                  updated-session-actions :member-name
                                  "updatedSessionActions"))
                                (:shape-name "UpdateWorkerScheduleRequest"))

(smithy/sdk/shapes:define-output update-worker-schedule-response
                                 common-lisp:nil
                                 ((assigned-sessions :target-type
                                   assigned-sessions :required common-lisp:t
                                   :member-name "assignedSessions")
                                  (cancel-session-actions :target-type
                                   cancel-session-actions :required
                                   common-lisp:t :member-name
                                   "cancelSessionActions")
                                  (desired-worker-status :target-type
                                   desired-worker-status :member-name
                                   "desiredWorkerStatus")
                                  (update-interval-seconds :target-type
                                   update-worker-schedule-interval :required
                                   common-lisp:t :member-name
                                   "updateIntervalSeconds"))
                                 (:shape-name "UpdateWorkerScheduleResponse"))

(smithy/sdk/shapes:define-type updated-at smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type updated-by smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure updated-session-action-info common-lisp:nil
                                    ((completed-status :target-type
                                      completed-status :member-name
                                      "completedStatus")
                                     (process-exit-code :target-type
                                      process-exit-code :member-name
                                      "processExitCode")
                                     (progress-message :target-type
                                      session-action-progress-message
                                      :member-name "progressMessage")
                                     (started-at :target-type timestamp
                                      :member-name "startedAt"
                                      :timestamp-format "date-time")
                                     (ended-at :target-type timestamp
                                      :member-name "endedAt" :timestamp-format
                                      "date-time")
                                     (updated-at :target-type timestamp
                                      :member-name "updatedAt"
                                      :timestamp-format "date-time")
                                     (progress-percent :target-type
                                      session-action-progress-percent
                                      :member-name "progressPercent")
                                     (manifests :target-type
                                      task-run-manifest-properties-list-request
                                      :member-name "manifests"))
                                    (:shape-name "UpdatedSessionActionInfo"))

(smithy/sdk/shapes:define-map updated-session-actions :key session-action-id
                              :value updated-session-action-info)

(smithy/sdk/shapes:define-enum updated-worker-status
    common-lisp:nil
  (:started "STARTED")
  (:stopping "STOPPING")
  (:stopped "STOPPED"))

(smithy/sdk/shapes:define-type url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list usage-group-by :member usage-group-by-field)

(smithy/sdk/shapes:define-enum usage-group-by-field
    common-lisp:nil
  (:queue-id "QUEUE_ID")
  (:fleet-id "FLEET_ID")
  (:job-id "JOB_ID")
  (:user-id "USER_ID")
  (:usage-type "USAGE_TYPE")
  (:instance-type "INSTANCE_TYPE")
  (:license-product "LICENSE_PRODUCT"))

(smithy/sdk/shapes:define-enum usage-statistic
    common-lisp:nil
  (:sum "SUM")
  (:min "MIN")
  (:max "MAX")
  (:avg "AVG"))

(smithy/sdk/shapes:define-list usage-statistics :member usage-statistic)

(smithy/sdk/shapes:define-union usage-tracking-resource common-lisp:nil
                                ((queue-id :target-type queue-id :member-name
                                  "queueId"))
                                (:shape-name "UsageTrackingResource"))

(smithy/sdk/shapes:define-enum usage-type
    common-lisp:nil
  (:compute "COMPUTE")
  (:license "LICENSE"))

(smithy/sdk/shapes:define-type user-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure user-jobs-first common-lisp:nil
                                    ((user-identity-id :target-type string
                                      :required common-lisp:t :member-name
                                      "userIdentityId"))
                                    (:shape-name "UserJobsFirst"))

(smithy/sdk/shapes:define-structure vcpu-count-range common-lisp:nil
                                    ((min :target-type min-one-max-ten-thousand
                                      :required common-lisp:t :member-name
                                      "min")
                                     (max :target-type min-one-max-ten-thousand
                                      :member-name "max"))
                                    (:shape-name "VCpuCountRange"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message")
                                 (reason :target-type
                                  validation-exception-reason :required
                                  common-lisp:t :member-name "reason")
                                 (field-list :target-type
                                  validation-exception-field-list :member-name
                                  "fieldList")
                                 (context :target-type exception-context
                                  :member-name "context"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "name")
                                     (message :target-type string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-enum validation-exception-reason
    common-lisp:nil
  (:unknown-operation "UNKNOWN_OPERATION")
  (:cannot-parse "CANNOT_PARSE")
  (:field-validation-failed "FIELD_VALIDATION_FAILED")
  (:other "OTHER"))

(smithy/sdk/shapes:define-structure vpc-configuration common-lisp:nil
                                    ((resource-configuration-arns :target-type
                                      vpc-resource-configuration-arns
                                      :member-name
                                      "resourceConfigurationArns"))
                                    (:shape-name "VpcConfiguration"))

(smithy/sdk/shapes:define-type vpc-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vpc-resource-configuration-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list vpc-resource-configuration-arns :member
                               vpc-resource-configuration-arn)

(smithy/sdk/shapes:define-structure windows-user common-lisp:nil
                                    ((user :target-type string :required
                                      common-lisp:t :member-name "user")
                                     (password-arn :target-type string
                                      :required common-lisp:t :member-name
                                      "passwordArn"))
                                    (:shape-name "WindowsUser"))

(smithy/sdk/shapes:define-structure worker-amount-capability common-lisp:nil
                                    ((name :target-type amount-capability-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (value :target-type
                                      smithy/sdk/smithy-types:float :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "WorkerAmountCapability"))

(smithy/sdk/shapes:define-list worker-amount-capability-list :member
                               worker-amount-capability)

(smithy/sdk/shapes:define-structure worker-attribute-capability common-lisp:nil
                                    ((name :target-type
                                      attribute-capability-name :required
                                      common-lisp:t :member-name "name")
                                     (values :target-type
                                      attribute-capability-values-list
                                      :required common-lisp:t :member-name
                                      "values"))
                                    (:shape-name "WorkerAttributeCapability"))

(smithy/sdk/shapes:define-list worker-attribute-capability-list :member
                               worker-attribute-capability)

(smithy/sdk/shapes:define-structure worker-capabilities common-lisp:nil
                                    ((amounts :target-type
                                      worker-amount-capability-list :required
                                      common-lisp:t :member-name "amounts")
                                     (attributes :target-type
                                      worker-attribute-capability-list
                                      :required common-lisp:t :member-name
                                      "attributes"))
                                    (:shape-name "WorkerCapabilities"))

(smithy/sdk/shapes:define-type worker-id smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-list worker-search-summaries :member
                               worker-search-summary)

(smithy/sdk/shapes:define-structure worker-search-summary common-lisp:nil
                                    ((fleet-id :target-type fleet-id
                                      :member-name "fleetId")
                                     (worker-id :target-type worker-id
                                      :member-name "workerId")
                                     (status :target-type worker-status
                                      :member-name "status")
                                     (host-properties :target-type
                                      host-properties-response :member-name
                                      "hostProperties")
                                     (created-by :target-type created-by
                                      :member-name "createdBy")
                                     (created-at :target-type created-at
                                      :member-name "createdAt")
                                     (updated-by :target-type updated-by
                                      :member-name "updatedBy")
                                     (updated-at :target-type updated-at
                                      :member-name "updatedAt"))
                                    (:shape-name "WorkerSearchSummary"))

(smithy/sdk/shapes:define-structure worker-session-summary common-lisp:nil
                                    ((session-id :target-type session-id
                                      :required common-lisp:t :member-name
                                      "sessionId")
                                     (queue-id :target-type queue-id :required
                                      common-lisp:t :member-name "queueId")
                                     (job-id :target-type job-id :required
                                      common-lisp:t :member-name "jobId")
                                     (started-at :target-type started-at
                                      :required common-lisp:t :member-name
                                      "startedAt")
                                     (lifecycle-status :target-type
                                      session-lifecycle-status :required
                                      common-lisp:t :member-name
                                      "lifecycleStatus")
                                     (ended-at :target-type ended-at
                                      :member-name "endedAt")
                                     (target-lifecycle-status :target-type
                                      session-lifecycle-target-status
                                      :member-name "targetLifecycleStatus"))
                                    (:shape-name "WorkerSessionSummary"))

(smithy/sdk/shapes:define-enum worker-status
    common-lisp:nil
  (:created "CREATED")
  (:started "STARTED")
  (:stopping "STOPPING")
  (:stopped "STOPPED")
  (:not-responding "NOT_RESPONDING")
  (:not-compatible "NOT_COMPATIBLE")
  (:running "RUNNING")
  (:idle "IDLE"))

(smithy/sdk/shapes:define-list worker-summaries :member worker-summary)

(smithy/sdk/shapes:define-structure worker-summary common-lisp:nil
                                    ((worker-id :target-type worker-id
                                      :required common-lisp:t :member-name
                                      "workerId")
                                     (farm-id :target-type farm-id :required
                                      common-lisp:t :member-name "farmId")
                                     (fleet-id :target-type fleet-id :required
                                      common-lisp:t :member-name "fleetId")
                                     (status :target-type worker-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (host-properties :target-type
                                      host-properties-response :member-name
                                      "hostProperties")
                                     (log :target-type log-configuration
                                      :member-name "log")
                                     (created-at :target-type created-at
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (created-by :target-type created-by
                                      :required common-lisp:t :member-name
                                      "createdBy")
                                     (updated-at :target-type updated-at
                                      :member-name "updatedAt")
                                     (updated-by :target-type updated-by
                                      :member-name "updatedBy"))
                                    (:shape-name "WorkerSummary"))

(smithy/sdk/operation:define-operation associate-member-to-farm :shape-name
                                       "AssociateMemberToFarm" :input
                                       associate-member-to-farm-request :output
                                       associate-member-to-farm-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/2023-10-12/farms/{farmId}/members/{principalId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation associate-member-to-fleet :shape-name
                                       "AssociateMemberToFleet" :input
                                       associate-member-to-fleet-request
                                       :output
                                       associate-member-to-fleet-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/2023-10-12/farms/{farmId}/fleets/{fleetId}/members/{principalId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation associate-member-to-job :shape-name
                                       "AssociateMemberToJob" :input
                                       associate-member-to-job-request :output
                                       associate-member-to-job-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/members/{principalId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation associate-member-to-queue :shape-name
                                       "AssociateMemberToQueue" :input
                                       associate-member-to-queue-request
                                       :output
                                       associate-member-to-queue-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/2023-10-12/farms/{farmId}/queues/{queueId}/members/{principalId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation assume-fleet-role-for-read :shape-name
                                       "AssumeFleetRoleForRead" :input
                                       assume-fleet-role-for-read-request
                                       :output
                                       assume-fleet-role-for-read-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/fleets/{fleetId}/read-roles"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation assume-fleet-role-for-worker :shape-name
                                       "AssumeFleetRoleForWorker" :input
                                       assume-fleet-role-for-worker-request
                                       :output
                                       assume-fleet-role-for-worker-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}/fleet-roles"
                                       :code 200 :endpoint-host-prefix
                                       "scheduling.")

(smithy/sdk/operation:define-operation assume-queue-role-for-read :shape-name
                                       "AssumeQueueRoleForRead" :input
                                       assume-queue-role-for-read-request
                                       :output
                                       assume-queue-role-for-read-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/queues/{queueId}/read-roles"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation assume-queue-role-for-user :shape-name
                                       "AssumeQueueRoleForUser" :input
                                       assume-queue-role-for-user-request
                                       :output
                                       assume-queue-role-for-user-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/queues/{queueId}/user-roles"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation assume-queue-role-for-worker :shape-name
                                       "AssumeQueueRoleForWorker" :input
                                       assume-queue-role-for-worker-request
                                       :output
                                       assume-queue-role-for-worker-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}/queue-roles"
                                       :code 200 :endpoint-host-prefix
                                       "scheduling.")

(smithy/sdk/operation:define-operation batch-get-job-entity :shape-name
                                       "BatchGetJobEntity" :input
                                       batch-get-job-entity-request :output
                                       batch-get-job-entity-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}/batchGetJobEntity"
                                       :code 200 :endpoint-host-prefix
                                       "scheduling.")

(smithy/sdk/operation:define-operation copy-job-template :shape-name
                                       "CopyJobTemplate" :input
                                       copy-job-template-request :output
                                       copy-job-template-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/template"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation create-budget :shape-name "CreateBudget"
                                       :input create-budget-request :output
                                       create-budget-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2023-10-12/farms/{farmId}/budgets"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation create-farm :shape-name "CreateFarm"
                                       :input create-farm-request :output
                                       create-farm-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/2023-10-12/farms"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation create-fleet :shape-name "CreateFleet"
                                       :input create-fleet-request :output
                                       create-fleet-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2023-10-12/farms/{farmId}/fleets"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation create-job :shape-name "CreateJob"
                                       :input create-job-request :output
                                       create-job-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs"
                                       :code 201 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation create-license-endpoint :shape-name
                                       "CreateLicenseEndpoint" :input
                                       create-license-endpoint-request :output
                                       create-license-endpoint-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-error-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2023-10-12/license-endpoints" :code
                                       200 :endpoint-host-prefix "management.")

(smithy/sdk/operation:define-operation create-limit :shape-name "CreateLimit"
                                       :input create-limit-request :output
                                       create-limit-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2023-10-12/farms/{farmId}/limits"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation create-monitor :shape-name
                                       "CreateMonitor" :input
                                       create-monitor-request :output
                                       create-monitor-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2023-10-12/monitors" :code 200
                                       :endpoint-host-prefix "management.")

(smithy/sdk/operation:define-operation create-queue :shape-name "CreateQueue"
                                       :input create-queue-request :output
                                       create-queue-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2023-10-12/farms/{farmId}/queues"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation create-queue-environment :shape-name
                                       "CreateQueueEnvironment" :input
                                       create-queue-environment-request :output
                                       create-queue-environment-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2023-10-12/farms/{farmId}/queues/{queueId}/environments"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation create-queue-fleet-association
                                       :shape-name
                                       "CreateQueueFleetAssociation" :input
                                       create-queue-fleet-association-request
                                       :output
                                       create-queue-fleet-association-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/2023-10-12/farms/{farmId}/queue-fleet-associations"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation create-queue-limit-association
                                       :shape-name
                                       "CreateQueueLimitAssociation" :input
                                       create-queue-limit-association-request
                                       :output
                                       create-queue-limit-association-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/2023-10-12/farms/{farmId}/queue-limit-associations"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation create-storage-profile :shape-name
                                       "CreateStorageProfile" :input
                                       create-storage-profile-request :output
                                       create-storage-profile-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2023-10-12/farms/{farmId}/storage-profiles"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation create-worker :shape-name "CreateWorker"
                                       :input create-worker-request :output
                                       create-worker-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers"
                                       :code 200 :endpoint-host-prefix
                                       "scheduling.")

(smithy/sdk/operation:define-operation delete-budget :shape-name "DeleteBudget"
                                       :input delete-budget-request :output
                                       delete-budget-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/2023-10-12/farms/{farmId}/budgets/{budgetId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation delete-farm :shape-name "DeleteFarm"
                                       :input delete-farm-request :output
                                       delete-farm-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/2023-10-12/farms/{farmId}" :code 200
                                       :endpoint-host-prefix "management.")

(smithy/sdk/operation:define-operation delete-fleet :shape-name "DeleteFleet"
                                       :input delete-fleet-request :output
                                       delete-fleet-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/2023-10-12/farms/{farmId}/fleets/{fleetId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation delete-license-endpoint :shape-name
                                       "DeleteLicenseEndpoint" :input
                                       delete-license-endpoint-request :output
                                       delete-license-endpoint-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/2023-10-12/license-endpoints/{licenseEndpointId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation delete-limit :shape-name "DeleteLimit"
                                       :input delete-limit-request :output
                                       delete-limit-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/2023-10-12/farms/{farmId}/limits/{limitId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation delete-metered-product :shape-name
                                       "DeleteMeteredProduct" :input
                                       delete-metered-product-request :output
                                       delete-metered-product-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/2023-10-12/license-endpoints/{licenseEndpointId}/metered-products/{productId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation delete-monitor :shape-name
                                       "DeleteMonitor" :input
                                       delete-monitor-request :output
                                       delete-monitor-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/2023-10-12/monitors/{monitorId}" :code
                                       200 :endpoint-host-prefix "management.")

(smithy/sdk/operation:define-operation delete-queue :shape-name "DeleteQueue"
                                       :input delete-queue-request :output
                                       delete-queue-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/2023-10-12/farms/{farmId}/queues/{queueId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation delete-queue-environment :shape-name
                                       "DeleteQueueEnvironment" :input
                                       delete-queue-environment-request :output
                                       delete-queue-environment-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/2023-10-12/farms/{farmId}/queues/{queueId}/environments/{queueEnvironmentId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation delete-queue-fleet-association
                                       :shape-name
                                       "DeleteQueueFleetAssociation" :input
                                       delete-queue-fleet-association-request
                                       :output
                                       delete-queue-fleet-association-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/2023-10-12/farms/{farmId}/queue-fleet-associations/{queueId}/{fleetId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation delete-queue-limit-association
                                       :shape-name
                                       "DeleteQueueLimitAssociation" :input
                                       delete-queue-limit-association-request
                                       :output
                                       delete-queue-limit-association-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/2023-10-12/farms/{farmId}/queue-limit-associations/{queueId}/{limitId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation delete-storage-profile :shape-name
                                       "DeleteStorageProfile" :input
                                       delete-storage-profile-request :output
                                       delete-storage-profile-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/2023-10-12/farms/{farmId}/storage-profiles/{storageProfileId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation delete-worker :shape-name "DeleteWorker"
                                       :input delete-worker-request :output
                                       delete-worker-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation disassociate-member-from-farm
                                       :shape-name "DisassociateMemberFromFarm"
                                       :input
                                       disassociate-member-from-farm-request
                                       :output
                                       disassociate-member-from-farm-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/2023-10-12/farms/{farmId}/members/{principalId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation disassociate-member-from-fleet
                                       :shape-name
                                       "DisassociateMemberFromFleet" :input
                                       disassociate-member-from-fleet-request
                                       :output
                                       disassociate-member-from-fleet-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/2023-10-12/farms/{farmId}/fleets/{fleetId}/members/{principalId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation disassociate-member-from-job :shape-name
                                       "DisassociateMemberFromJob" :input
                                       disassociate-member-from-job-request
                                       :output
                                       disassociate-member-from-job-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/members/{principalId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation disassociate-member-from-queue
                                       :shape-name
                                       "DisassociateMemberFromQueue" :input
                                       disassociate-member-from-queue-request
                                       :output
                                       disassociate-member-from-queue-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/2023-10-12/farms/{farmId}/queues/{queueId}/members/{principalId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation get-budget :shape-name "GetBudget"
                                       :input get-budget-request :output
                                       get-budget-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/budgets/{budgetId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation get-farm :shape-name "GetFarm" :input
                                       get-farm-request :output
                                       get-farm-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}" :code 200
                                       :endpoint-host-prefix "management.")

(smithy/sdk/operation:define-operation get-fleet :shape-name "GetFleet" :input
                                       get-fleet-request :output
                                       get-fleet-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/fleets/{fleetId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation get-job :shape-name "GetJob" :input
                                       get-job-request :output get-job-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation get-license-endpoint :shape-name
                                       "GetLicenseEndpoint" :input
                                       get-license-endpoint-request :output
                                       get-license-endpoint-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/license-endpoints/{licenseEndpointId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation get-limit :shape-name "GetLimit" :input
                                       get-limit-request :output
                                       get-limit-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/limits/{limitId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation get-monitor :shape-name "GetMonitor"
                                       :input get-monitor-request :output
                                       get-monitor-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/monitors/{monitorId}" :code
                                       200 :endpoint-host-prefix "management.")

(smithy/sdk/operation:define-operation get-queue :shape-name "GetQueue" :input
                                       get-queue-request :output
                                       get-queue-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/queues/{queueId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation get-queue-environment :shape-name
                                       "GetQueueEnvironment" :input
                                       get-queue-environment-request :output
                                       get-queue-environment-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/queues/{queueId}/environments/{queueEnvironmentId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation get-queue-fleet-association :shape-name
                                       "GetQueueFleetAssociation" :input
                                       get-queue-fleet-association-request
                                       :output
                                       get-queue-fleet-association-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/queue-fleet-associations/{queueId}/{fleetId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation get-queue-limit-association :shape-name
                                       "GetQueueLimitAssociation" :input
                                       get-queue-limit-association-request
                                       :output
                                       get-queue-limit-association-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/queue-limit-associations/{queueId}/{limitId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation get-session :shape-name "GetSession"
                                       :input get-session-request :output
                                       get-session-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/sessions/{sessionId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation get-session-action :shape-name
                                       "GetSessionAction" :input
                                       get-session-action-request :output
                                       get-session-action-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/session-actions/{sessionActionId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation get-sessions-statistics-aggregation
                                       :shape-name
                                       "GetSessionsStatisticsAggregation"
                                       :input
                                       get-sessions-statistics-aggregation-request
                                       :output
                                       get-sessions-statistics-aggregation-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/sessions-statistics-aggregation"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation get-step :shape-name "GetStep" :input
                                       get-step-request :output
                                       get-step-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps/{stepId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation get-storage-profile :shape-name
                                       "GetStorageProfile" :input
                                       get-storage-profile-request :output
                                       get-storage-profile-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/storage-profiles/{storageProfileId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation get-storage-profile-for-queue
                                       :shape-name "GetStorageProfileForQueue"
                                       :input
                                       get-storage-profile-for-queue-request
                                       :output
                                       get-storage-profile-for-queue-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/queues/{queueId}/storage-profiles/{storageProfileId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation get-task :shape-name "GetTask" :input
                                       get-task-request :output
                                       get-task-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps/{stepId}/tasks/{taskId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation get-worker :shape-name "GetWorker"
                                       :input get-worker-request :output
                                       get-worker-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation list-available-metered-products
                                       :shape-name
                                       "ListAvailableMeteredProducts" :input
                                       list-available-metered-products-request
                                       :output
                                       list-available-metered-products-response
                                       :errors
                                       (internal-server-error-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/metered-products" :code 200
                                       :endpoint-host-prefix "management.")

(smithy/sdk/operation:define-operation list-budgets :shape-name "ListBudgets"
                                       :input list-budgets-request :output
                                       list-budgets-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/budgets"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation list-farm-members :shape-name
                                       "ListFarmMembers" :input
                                       list-farm-members-request :output
                                       list-farm-members-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/members"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation list-farms :shape-name "ListFarms"
                                       :input list-farms-request :output
                                       list-farms-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/2023-10-12/farms"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation list-fleet-members :shape-name
                                       "ListFleetMembers" :input
                                       list-fleet-members-request :output
                                       list-fleet-members-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/fleets/{fleetId}/members"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation list-fleets :shape-name "ListFleets"
                                       :input list-fleets-request :output
                                       list-fleets-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/fleets"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation list-job-members :shape-name
                                       "ListJobMembers" :input
                                       list-job-members-request :output
                                       list-job-members-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/members"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation list-job-parameter-definitions
                                       :shape-name
                                       "ListJobParameterDefinitions" :input
                                       list-job-parameter-definitions-request
                                       :output
                                       list-job-parameter-definitions-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/parameter-definitions"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation list-jobs :shape-name "ListJobs" :input
                                       list-jobs-request :output
                                       list-jobs-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs"
                                       :endpoint-host-prefix "management.")

(smithy/sdk/operation:define-operation list-license-endpoints :shape-name
                                       "ListLicenseEndpoints" :input
                                       list-license-endpoints-request :output
                                       list-license-endpoints-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/license-endpoints" :code
                                       200 :endpoint-host-prefix "management.")

(smithy/sdk/operation:define-operation list-limits :shape-name "ListLimits"
                                       :input list-limits-request :output
                                       list-limits-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/limits"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation list-metered-products :shape-name
                                       "ListMeteredProducts" :input
                                       list-metered-products-request :output
                                       list-metered-products-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/license-endpoints/{licenseEndpointId}/metered-products"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation list-monitors :shape-name "ListMonitors"
                                       :input list-monitors-request :output
                                       list-monitors-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/monitors" :code 200
                                       :endpoint-host-prefix "management.")

(smithy/sdk/operation:define-operation list-queue-environments :shape-name
                                       "ListQueueEnvironments" :input
                                       list-queue-environments-request :output
                                       list-queue-environments-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/queues/{queueId}/environments"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation list-queue-fleet-associations
                                       :shape-name "ListQueueFleetAssociations"
                                       :input
                                       list-queue-fleet-associations-request
                                       :output
                                       list-queue-fleet-associations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/queue-fleet-associations"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation list-queue-limit-associations
                                       :shape-name "ListQueueLimitAssociations"
                                       :input
                                       list-queue-limit-associations-request
                                       :output
                                       list-queue-limit-associations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/queue-limit-associations"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation list-queue-members :shape-name
                                       "ListQueueMembers" :input
                                       list-queue-members-request :output
                                       list-queue-members-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/queues/{queueId}/members"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation list-queues :shape-name "ListQueues"
                                       :input list-queues-request :output
                                       list-queues-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/queues"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation list-session-actions :shape-name
                                       "ListSessionActions" :input
                                       list-session-actions-request :output
                                       list-session-actions-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/session-actions"
                                       :endpoint-host-prefix "management.")

(smithy/sdk/operation:define-operation list-sessions :shape-name "ListSessions"
                                       :input list-sessions-request :output
                                       list-sessions-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/sessions"
                                       :endpoint-host-prefix "management.")

(smithy/sdk/operation:define-operation list-sessions-for-worker :shape-name
                                       "ListSessionsForWorker" :input
                                       list-sessions-for-worker-request :output
                                       list-sessions-for-worker-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}/sessions"
                                       :endpoint-host-prefix "management.")

(smithy/sdk/operation:define-operation list-step-consumers :shape-name
                                       "ListStepConsumers" :input
                                       list-step-consumers-request :output
                                       list-step-consumers-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps/{stepId}/consumers"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation list-step-dependencies :shape-name
                                       "ListStepDependencies" :input
                                       list-step-dependencies-request :output
                                       list-step-dependencies-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps/{stepId}/dependencies"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation list-steps :shape-name "ListSteps"
                                       :input list-steps-request :output
                                       list-steps-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation list-storage-profiles :shape-name
                                       "ListStorageProfiles" :input
                                       list-storage-profiles-request :output
                                       list-storage-profiles-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/storage-profiles"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation list-storage-profiles-for-queue
                                       :shape-name
                                       "ListStorageProfilesForQueue" :input
                                       list-storage-profiles-for-queue-request
                                       :output
                                       list-storage-profiles-for-queue-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/queues/{queueId}/storage-profiles"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/tags/{resourceArn}" :code
                                       200 :endpoint-host-prefix "management.")

(smithy/sdk/operation:define-operation list-tasks :shape-name "ListTasks"
                                       :input list-tasks-request :output
                                       list-tasks-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps/{stepId}/tasks"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation list-workers :shape-name "ListWorkers"
                                       :input list-workers-request :output
                                       list-workers-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation put-metered-product :shape-name
                                       "PutMeteredProduct" :input
                                       put-metered-product-request :output
                                       put-metered-product-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/2023-10-12/license-endpoints/{licenseEndpointId}/metered-products/{productId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation search-jobs :shape-name "SearchJobs"
                                       :input search-jobs-request :output
                                       search-jobs-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2023-10-12/farms/{farmId}/search/jobs"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation search-steps :shape-name "SearchSteps"
                                       :input search-steps-request :output
                                       search-steps-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2023-10-12/farms/{farmId}/search/steps"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation search-tasks :shape-name "SearchTasks"
                                       :input search-tasks-request :output
                                       search-tasks-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2023-10-12/farms/{farmId}/search/tasks"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation search-workers :shape-name
                                       "SearchWorkers" :input
                                       search-workers-request :output
                                       search-workers-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2023-10-12/farms/{farmId}/search/workers"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation start-sessions-statistics-aggregation
                                       :shape-name
                                       "StartSessionsStatisticsAggregation"
                                       :input
                                       start-sessions-statistics-aggregation-request
                                       :output
                                       start-sessions-statistics-aggregation-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2023-10-12/farms/{farmId}/sessions-statistics-aggregation"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2023-10-12/tags/{resourceArn}" :code
                                       204 :endpoint-host-prefix "management.")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/2023-10-12/tags/{resourceArn}" :code
                                       204 :endpoint-host-prefix "management.")

(smithy/sdk/operation:define-operation update-budget :shape-name "UpdateBudget"
                                       :input update-budget-request :output
                                       update-budget-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/2023-10-12/farms/{farmId}/budgets/{budgetId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation update-farm :shape-name "UpdateFarm"
                                       :input update-farm-request :output
                                       update-farm-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/2023-10-12/farms/{farmId}" :code 200
                                       :endpoint-host-prefix "management.")

(smithy/sdk/operation:define-operation update-fleet :shape-name "UpdateFleet"
                                       :input update-fleet-request :output
                                       update-fleet-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/2023-10-12/farms/{farmId}/fleets/{fleetId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation update-job :shape-name "UpdateJob"
                                       :input update-job-request :output
                                       update-job-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation update-limit :shape-name "UpdateLimit"
                                       :input update-limit-request :output
                                       update-limit-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/2023-10-12/farms/{farmId}/limits/{limitId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation update-monitor :shape-name
                                       "UpdateMonitor" :input
                                       update-monitor-request :output
                                       update-monitor-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/2023-10-12/monitors/{monitorId}" :code
                                       200 :endpoint-host-prefix "management.")

(smithy/sdk/operation:define-operation update-queue :shape-name "UpdateQueue"
                                       :input update-queue-request :output
                                       update-queue-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/2023-10-12/farms/{farmId}/queues/{queueId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation update-queue-environment :shape-name
                                       "UpdateQueueEnvironment" :input
                                       update-queue-environment-request :output
                                       update-queue-environment-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/2023-10-12/farms/{farmId}/queues/{queueId}/environments/{queueEnvironmentId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation update-queue-fleet-association
                                       :shape-name
                                       "UpdateQueueFleetAssociation" :input
                                       update-queue-fleet-association-request
                                       :output
                                       update-queue-fleet-association-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/2023-10-12/farms/{farmId}/queue-fleet-associations/{queueId}/{fleetId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation update-queue-limit-association
                                       :shape-name
                                       "UpdateQueueLimitAssociation" :input
                                       update-queue-limit-association-request
                                       :output
                                       update-queue-limit-association-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/2023-10-12/farms/{farmId}/queue-limit-associations/{queueId}/{limitId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation update-session :shape-name
                                       "UpdateSession" :input
                                       update-session-request :output
                                       update-session-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/sessions/{sessionId}"
                                       :endpoint-host-prefix "management.")

(smithy/sdk/operation:define-operation update-step :shape-name "UpdateStep"
                                       :input update-step-request :output
                                       update-step-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps/{stepId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation update-storage-profile :shape-name
                                       "UpdateStorageProfile" :input
                                       update-storage-profile-request :output
                                       update-storage-profile-response :errors
                                       (access-denied-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/2023-10-12/farms/{farmId}/storage-profiles/{storageProfileId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation update-task :shape-name "UpdateTask"
                                       :input update-task-request :output
                                       update-task-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps/{stepId}/tasks/{taskId}"
                                       :code 200 :endpoint-host-prefix
                                       "management.")

(smithy/sdk/operation:define-operation update-worker :shape-name "UpdateWorker"
                                       :input update-worker-request :output
                                       update-worker-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}"
                                       :code 200 :endpoint-host-prefix
                                       "scheduling.")

(smithy/sdk/operation:define-operation update-worker-schedule :shape-name
                                       "UpdateWorkerSchedule" :input
                                       update-worker-schedule-request :output
                                       update-worker-schedule-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}/schedule"
                                       :code 200 :endpoint-host-prefix
                                       "scheduling.")
