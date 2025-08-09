(uiop/package:define-package #:pira/mgn (:use)
                             (:export #:arn #:account-id #:account-resource
                              #:action-category #:action-description
                              #:action-id #:action-ids #:action-name
                              #:appliance-id #:appliance-resource #:application
                              #:application-aggregated-status
                              #:application-description
                              #:application-health-status #:application-id
                              #:application-ids #:application-ids-filter
                              #:application-migration-service
                              #:application-name #:application-progress-status
                              #:application-resource #:applications-list
                              #:archive-application
                              #:archive-application-request #:archive-wave
                              #:archive-wave-request #:associate-applications
                              #:associate-applications-request
                              #:associate-applications-response
                              #:associate-source-servers
                              #:associate-source-servers-request
                              #:associate-source-servers-request-source-server-ids
                              #:associate-source-servers-response
                              #:bandwidth-throttling #:boot-mode
                              #:bounded-string #:cpu
                              #:change-server-life-cycle-state
                              #:change-server-life-cycle-state-request
                              #:change-server-life-cycle-state-source-server-lifecycle
                              #:change-server-life-cycle-state-source-server-lifecycle-state
                              #:client-idempotency-token
                              #:cloud-watch-log-group-name
                              #:conflict-exception-errors #:connector
                              #:connector-arn #:connector-id
                              #:connector-ids-filter #:connector-name
                              #:connector-resource
                              #:connector-ssm-command-config #:connectors-list
                              #:cpus #:create-application
                              #:create-application-request #:create-connector
                              #:create-launch-configuration-template
                              #:create-launch-configuration-template-request
                              #:create-replication-configuration-template
                              #:create-replication-configuration-template-request
                              #:create-wave #:create-wave-request
                              #:data-replication-error
                              #:data-replication-error-string
                              #:data-replication-info
                              #:data-replication-info-replicated-disk
                              #:data-replication-info-replicated-disks
                              #:data-replication-initiation
                              #:data-replication-initiation-step
                              #:data-replication-initiation-step-name
                              #:data-replication-initiation-step-status
                              #:data-replication-initiation-steps
                              #:data-replication-state #:delete-application
                              #:delete-application-request
                              #:delete-application-response #:delete-connector
                              #:delete-job #:delete-job-request
                              #:delete-job-response
                              #:delete-launch-configuration-template
                              #:delete-launch-configuration-template-request
                              #:delete-launch-configuration-template-response
                              #:delete-replication-configuration-template
                              #:delete-replication-configuration-template-request
                              #:delete-replication-configuration-template-response
                              #:delete-source-server
                              #:delete-source-server-request
                              #:delete-source-server-response
                              #:delete-vcenter-client
                              #:delete-vcenter-client-request #:delete-wave
                              #:delete-wave-request #:delete-wave-response
                              #:describe-job-log-items
                              #:describe-job-log-items-request
                              #:describe-job-log-items-response #:describe-jobs
                              #:describe-jobs-request
                              #:describe-jobs-request-filters
                              #:describe-jobs-request-filters-job-ids
                              #:describe-jobs-response
                              #:describe-launch-configuration-templates
                              #:describe-launch-configuration-templates-request
                              #:describe-launch-configuration-templates-response
                              #:describe-replication-configuration-templates
                              #:describe-replication-configuration-templates-request
                              #:describe-replication-configuration-templates-response
                              #:describe-source-servers
                              #:describe-source-servers-request
                              #:describe-source-servers-request-application-ids
                              #:describe-source-servers-request-filters
                              #:describe-source-servers-request-filters-ids
                              #:describe-source-servers-response
                              #:describe-vcenter-clients
                              #:describe-vcenter-clients-request
                              #:describe-vcenter-clients-response
                              #:disassociate-applications
                              #:disassociate-applications-request
                              #:disassociate-applications-response
                              #:disassociate-source-servers
                              #:disassociate-source-servers-request
                              #:disassociate-source-servers-request-source-server-ids
                              #:disassociate-source-servers-response
                              #:disconnect-from-service
                              #:disconnect-from-service-request #:disk #:disks
                              #:document-version #:ec2instance-id
                              #:ec2instance-type
                              #:ec2launch-configuration-template-id
                              #:error-details #:export-error-data
                              #:export-errors #:export-id #:export-resource
                              #:export-status #:export-task #:export-task-error
                              #:export-task-summary #:exports-list
                              #:finalize-cutover #:finalize-cutover-request
                              #:first-boot #:get-launch-configuration
                              #:get-launch-configuration-request
                              #:get-replication-configuration
                              #:get-replication-configuration-request
                              #:ips-list #:iso8601datetime-string
                              #:iso8601duration-string #:identification-hints
                              #:import-error-data #:import-error-type
                              #:import-errors #:import-id #:import-ids-filter
                              #:import-list #:import-resource #:import-status
                              #:import-task #:import-task-error
                              #:import-task-summary
                              #:import-task-summary-applications
                              #:import-task-summary-servers
                              #:import-task-summary-waves #:initialize-service
                              #:initialize-service-request
                              #:initialize-service-response #:initiated-by
                              #:iops #:jmes-path-string #:job #:job-id
                              #:job-log #:job-log-event #:job-log-event-data
                              #:job-logs
                              #:job-post-launch-actions-launch-status
                              #:job-resource #:job-status #:job-type
                              #:jobs-list #:large-bounded-string
                              #:launch-configuration
                              #:launch-configuration-template
                              #:launch-configuration-template-id
                              #:launch-configuration-template-ids
                              #:launch-configuration-template-resource
                              #:launch-configuration-templates
                              #:launch-disposition #:launch-status
                              #:launch-template-disk-conf #:launched-instance
                              #:licensing #:life-cycle
                              #:life-cycle-last-cutover
                              #:life-cycle-last-cutover-finalized
                              #:life-cycle-last-cutover-initiated
                              #:life-cycle-last-cutover-reverted
                              #:life-cycle-last-test
                              #:life-cycle-last-test-finalized
                              #:life-cycle-last-test-initiated
                              #:life-cycle-last-test-reverted
                              #:life-cycle-state #:life-cycle-states
                              #:list-applications #:list-applications-request
                              #:list-applications-request-filters
                              #:list-applications-response #:list-connectors
                              #:list-connectors-request-filters
                              #:list-export-errors #:list-export-errors-request
                              #:list-export-errors-response #:list-exports
                              #:list-exports-request
                              #:list-exports-request-filters
                              #:list-exports-request-filters-export-ids
                              #:list-exports-response #:list-import-errors
                              #:list-import-errors-request
                              #:list-import-errors-response #:list-imports
                              #:list-imports-request
                              #:list-imports-request-filters
                              #:list-imports-response #:list-managed-accounts
                              #:list-source-server-actions
                              #:list-source-server-actions-request
                              #:list-source-server-actions-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:list-template-actions
                              #:list-template-actions-request
                              #:list-template-actions-response #:list-waves
                              #:list-waves-request #:list-waves-request-filters
                              #:list-waves-response #:managed-account
                              #:managed-accounts #:mark-as-archived
                              #:mark-as-archived-request #:max-results-type
                              #:network-interface #:network-interfaces #:os
                              #:operating-system-string #:order-type
                              #:pagination-token #:participating-server
                              #:participating-servers #:pause-replication
                              #:positive-integer
                              #:post-launch-action-execution-status
                              #:post-launch-actions
                              #:post-launch-actions-deployment-type
                              #:post-launch-actions-launch-status-list
                              #:post-launch-actions-status
                              #:put-source-server-action
                              #:put-source-server-action-request
                              #:put-template-action
                              #:put-template-action-request
                              #:remove-source-server-action
                              #:remove-source-server-action-request
                              #:remove-source-server-action-response
                              #:remove-template-action
                              #:remove-template-action-request
                              #:remove-template-action-response
                              #:replication-configuration
                              #:replication-configuration-data-plane-routing
                              #:replication-configuration-default-large-staging-disk-type
                              #:replication-configuration-ebs-encryption
                              #:replication-configuration-replicated-disk
                              #:replication-configuration-replicated-disk-staging-disk-type
                              #:replication-configuration-replicated-disks
                              #:replication-configuration-template
                              #:replication-configuration-template-id
                              #:replication-configuration-template-ids
                              #:replication-configuration-template-resource
                              #:replication-configuration-templates
                              #:replication-servers-security-groups-ids
                              #:replication-type #:replication-types
                              #:resume-replication #:retry-data-replication
                              #:retry-data-replication-request #:s3bucket-name
                              #:s3bucket-source #:s3key #:s3log-bucket-name
                              #:secret-arn #:security-group-id
                              #:small-bounded-string #:source-properties
                              #:source-server #:source-server-action-document
                              #:source-server-action-documents
                              #:source-server-actions-request-filters
                              #:source-server-connector-action
                              #:source-server-id #:source-server-resource
                              #:source-servers-list #:ssm-document
                              #:ssm-document-external-parameters
                              #:ssm-document-name #:ssm-document-parameter-name
                              #:ssm-document-parameters #:ssm-document-type
                              #:ssm-documents #:ssm-external-parameter
                              #:ssm-instance-id #:ssm-parameter-store-parameter
                              #:ssm-parameter-store-parameter-name
                              #:ssm-parameter-store-parameter-type
                              #:ssm-parameter-store-parameters #:start-cutover
                              #:start-cutover-request
                              #:start-cutover-request-source-server-ids
                              #:start-cutover-response #:start-export
                              #:start-export-request #:start-export-response
                              #:start-import #:start-import-request
                              #:start-import-response #:start-replication
                              #:start-replication-request #:start-test
                              #:start-test-request
                              #:start-test-request-source-server-ids
                              #:start-test-response #:stop-replication
                              #:strictly-positive-integer #:subnet-id #:tag-key
                              #:tag-keys #:tag-resource #:tag-resource-request
                              #:tag-value #:tags-map
                              #:target-instance-type-right-sizing-method
                              #:template-action-document
                              #:template-action-documents
                              #:template-actions-request-filters
                              #:terminate-target-instances
                              #:terminate-target-instances-request
                              #:terminate-target-instances-request-source-server-ids
                              #:terminate-target-instances-response
                              #:throughput #:unarchive-application
                              #:unarchive-application-request #:unarchive-wave
                              #:unarchive-wave-request #:untag-resource
                              #:untag-resource-request #:update-application
                              #:update-application-request #:update-connector
                              #:update-launch-configuration
                              #:update-launch-configuration-request
                              #:update-launch-configuration-template
                              #:update-launch-configuration-template-request
                              #:update-replication-configuration
                              #:update-replication-configuration-request
                              #:update-replication-configuration-template
                              #:update-replication-configuration-template-request
                              #:update-source-server
                              #:update-source-server-replication-type
                              #:update-source-server-replication-type-request
                              #:update-wave #:update-wave-request
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason #:vcenter-client
                              #:vcenter-client-id #:vcenter-client-list
                              #:vcenter-client-resource #:volume-type #:wave
                              #:wave-aggregated-status #:wave-description
                              #:wave-health-status #:wave-id #:wave-ids-filter
                              #:wave-name #:wave-progress-status
                              #:wave-resource #:waves-list))
(common-lisp:in-package #:pira/mgn)

(smithy/sdk/service:define-service application-migration-service :shape-name
                                   "ApplicationMigrationService" :version
                                   "2020-02-26" :title
                                   "Application Migration Service" :traits
                                   '(("aws.api#service" ("sdkId" . "mgn")
                                      ("arnNamespace" . "mgn")
                                      ("awsProductName" . "mgn")
                                      ("cloudTrailEventSource"
                                       . "mgn.amazonaws.com"))
                                     ("aws.auth#sigv4" ("name" . "mgn"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type large-bounded-string
                                  :member-name "message")
                                 (code :target-type large-bounded-string
                                  :member-name "code"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type action-category smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type action-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type action-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list action-ids :member action-id)

(smithy/sdk/shapes:define-type action-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type appliance-id smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure application common-lisp:nil
                                    ((application-id :target-type
                                      application-id :member-name
                                      "applicationID")
                                     (arn :target-type arn :member-name "arn")
                                     (name :target-type application-name
                                      :member-name "name")
                                     (description :target-type
                                      application-description :member-name
                                      "description")
                                     (is-archived :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isArchived")
                                     (application-aggregated-status
                                      :target-type
                                      application-aggregated-status
                                      :member-name
                                      "applicationAggregatedStatus")
                                     (creation-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "creationDateTime")
                                     (last-modified-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "lastModifiedDateTime")
                                     (tags :target-type tags-map :member-name
                                      "tags")
                                     (wave-id :target-type wave-id :member-name
                                      "waveID"))
                                    (:shape-name "Application"))

(smithy/sdk/shapes:define-structure application-aggregated-status
                                    common-lisp:nil
                                    ((last-update-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "lastUpdateDateTime")
                                     (health-status :target-type
                                      application-health-status :member-name
                                      "healthStatus")
                                     (progress-status :target-type
                                      application-progress-status :member-name
                                      "progressStatus")
                                     (total-source-servers :target-type
                                      positive-integer :member-name
                                      "totalSourceServers"))
                                    (:shape-name "ApplicationAggregatedStatus"))

(smithy/sdk/shapes:define-type application-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type application-health-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type application-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list application-ids :member application-id)

(smithy/sdk/shapes:define-list application-ids-filter :member application-id)

(smithy/sdk/shapes:define-type application-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type application-progress-status
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-list applications-list :member application)

(smithy/sdk/shapes:define-structure archive-application-request common-lisp:nil
                                    ((application-id :target-type
                                      application-id :required common-lisp:t
                                      :member-name "applicationID")
                                     (account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name "ArchiveApplicationRequest"))

(smithy/sdk/shapes:define-structure archive-wave-request common-lisp:nil
                                    ((wave-id :target-type wave-id :required
                                      common-lisp:t :member-name "waveID")
                                     (account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name "ArchiveWaveRequest"))

(smithy/sdk/shapes:define-structure associate-applications-request
                                    common-lisp:nil
                                    ((wave-id :target-type wave-id :required
                                      common-lisp:t :member-name "waveID")
                                     (application-ids :target-type
                                      application-ids :required common-lisp:t
                                      :member-name "applicationIDs")
                                     (account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name
                                     "AssociateApplicationsRequest"))

(smithy/sdk/shapes:define-structure associate-applications-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "AssociateApplicationsResponse"))

(smithy/sdk/shapes:define-structure associate-source-servers-request
                                    common-lisp:nil
                                    ((application-id :target-type
                                      application-id :required common-lisp:t
                                      :member-name "applicationID")
                                     (source-server-ids :target-type
                                      associate-source-servers-request-source-server-ids
                                      :required common-lisp:t :member-name
                                      "sourceServerIDs")
                                     (account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name
                                     "AssociateSourceServersRequest"))

(smithy/sdk/shapes:define-list
 associate-source-servers-request-source-server-ids :member source-server-id)

(smithy/sdk/shapes:define-structure associate-source-servers-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "AssociateSourceServersResponse"))

(smithy/sdk/shapes:define-type bandwidth-throttling
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type boot-mode smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type bounded-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cpu common-lisp:nil
                                    ((cores :target-type positive-integer
                                      :member-name "cores")
                                     (model-name :target-type bounded-string
                                      :member-name "modelName"))
                                    (:shape-name "CPU"))

(smithy/sdk/shapes:define-structure change-server-life-cycle-state-request
                                    common-lisp:nil
                                    ((source-server-id :target-type
                                      source-server-id :required common-lisp:t
                                      :member-name "sourceServerID")
                                     (life-cycle :target-type
                                      change-server-life-cycle-state-source-server-lifecycle
                                      :required common-lisp:t :member-name
                                      "lifeCycle")
                                     (account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name
                                     "ChangeServerLifeCycleStateRequest"))

(smithy/sdk/shapes:define-structure
 change-server-life-cycle-state-source-server-lifecycle common-lisp:nil
 ((state :target-type
   change-server-life-cycle-state-source-server-lifecycle-state :required
   common-lisp:t :member-name "state"))
 (:shape-name "ChangeServerLifeCycleStateSourceServerLifecycle"))

(smithy/sdk/shapes:define-type
 change-server-life-cycle-state-source-server-lifecycle-state
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-idempotency-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type cloud-watch-log-group-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type large-bounded-string
                                  :member-name "message")
                                 (code :target-type large-bounded-string
                                  :member-name "code")
                                 (resource-id :target-type large-bounded-string
                                  :member-name "resourceId")
                                 (resource-type :target-type
                                  large-bounded-string :member-name
                                  "resourceType")
                                 (errors :target-type conflict-exception-errors
                                  :member-name "errors"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-list conflict-exception-errors :member error-details)

(smithy/sdk/shapes:define-structure connector common-lisp:nil
                                    ((connector-id :target-type connector-id
                                      :member-name "connectorID")
                                     (name :target-type connector-name
                                      :member-name "name")
                                     (ssm-instance-id :target-type
                                      ssm-instance-id :member-name
                                      "ssmInstanceID")
                                     (arn :target-type arn :member-name "arn")
                                     (tags :target-type tags-map :member-name
                                      "tags")
                                     (ssm-command-config :target-type
                                      connector-ssm-command-config :member-name
                                      "ssmCommandConfig"))
                                    (:shape-name "Connector"))

(smithy/sdk/shapes:define-type connector-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type connector-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list connector-ids-filter :member connector-id)

(smithy/sdk/shapes:define-type connector-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure connector-ssm-command-config
                                    common-lisp:nil
                                    ((s3output-enabled :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name
                                      "s3OutputEnabled")
                                     (output-s3bucket-name :target-type
                                      s3bucket-name :member-name
                                      "outputS3BucketName")
                                     (cloud-watch-output-enabled :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name
                                      "cloudWatchOutputEnabled")
                                     (cloud-watch-log-group-name :target-type
                                      cloud-watch-log-group-name :member-name
                                      "cloudWatchLogGroupName"))
                                    (:shape-name "ConnectorSsmCommandConfig"))

(smithy/sdk/shapes:define-list connectors-list :member connector)

(smithy/sdk/shapes:define-list cpus :member cpu)

(smithy/sdk/shapes:define-structure create-application-request common-lisp:nil
                                    ((name :target-type application-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (description :target-type
                                      application-description :member-name
                                      "description")
                                     (tags :target-type tags-map :member-name
                                      "tags")
                                     (account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name "CreateApplicationRequest"))

(smithy/sdk/shapes:define-input create-connector-request common-lisp:nil
                                ((name :target-type connector-name :required
                                  common-lisp:t :member-name "name")
                                 (ssm-instance-id :target-type ssm-instance-id
                                  :required common-lisp:t :member-name
                                  "ssmInstanceID")
                                 (tags :target-type tags-map :member-name
                                  "tags")
                                 (ssm-command-config :target-type
                                  connector-ssm-command-config :member-name
                                  "ssmCommandConfig"))
                                (:shape-name "CreateConnectorRequest"))

(smithy/sdk/shapes:define-structure
 create-launch-configuration-template-request common-lisp:nil
 ((post-launch-actions :target-type post-launch-actions :member-name
   "postLaunchActions")
  (enable-map-auto-tagging :target-type smithy/sdk/smithy-types:boolean
   :member-name "enableMapAutoTagging")
  (map-auto-tagging-mpe-id :target-type tag-value :member-name
   "mapAutoTaggingMpeID")
  (tags :target-type tags-map :member-name "tags")
  (launch-disposition :target-type launch-disposition :member-name
   "launchDisposition")
  (target-instance-type-right-sizing-method :target-type
   target-instance-type-right-sizing-method :member-name
   "targetInstanceTypeRightSizingMethod")
  (copy-private-ip :target-type smithy/sdk/smithy-types:boolean :member-name
   "copyPrivateIp")
  (associate-public-ip-address :target-type smithy/sdk/smithy-types:boolean
   :member-name "associatePublicIpAddress")
  (copy-tags :target-type smithy/sdk/smithy-types:boolean :member-name
   "copyTags")
  (licensing :target-type licensing :member-name "licensing")
  (boot-mode :target-type boot-mode :member-name "bootMode")
  (small-volume-max-size :target-type positive-integer :member-name
   "smallVolumeMaxSize")
  (small-volume-conf :target-type launch-template-disk-conf :member-name
   "smallVolumeConf")
  (large-volume-conf :target-type launch-template-disk-conf :member-name
   "largeVolumeConf"))
 (:shape-name "CreateLaunchConfigurationTemplateRequest"))

(smithy/sdk/shapes:define-structure
 create-replication-configuration-template-request common-lisp:nil
 ((staging-area-subnet-id :target-type subnet-id :required common-lisp:t
   :member-name "stagingAreaSubnetId")
  (associate-default-security-group :target-type
   smithy/sdk/smithy-types:boolean :required common-lisp:t :member-name
   "associateDefaultSecurityGroup")
  (replication-servers-security-groups-ids :target-type
   replication-servers-security-groups-ids :required common-lisp:t :member-name
   "replicationServersSecurityGroupsIDs")
  (replication-server-instance-type :target-type ec2instance-type :required
   common-lisp:t :member-name "replicationServerInstanceType")
  (use-dedicated-replication-server :target-type
   smithy/sdk/smithy-types:boolean :required common-lisp:t :member-name
   "useDedicatedReplicationServer")
  (default-large-staging-disk-type :target-type
   replication-configuration-default-large-staging-disk-type :required
   common-lisp:t :member-name "defaultLargeStagingDiskType")
  (ebs-encryption :target-type replication-configuration-ebs-encryption
   :required common-lisp:t :member-name "ebsEncryption")
  (ebs-encryption-key-arn :target-type arn :member-name "ebsEncryptionKeyArn")
  (bandwidth-throttling :target-type bandwidth-throttling :required
   common-lisp:t :member-name "bandwidthThrottling")
  (data-plane-routing :target-type replication-configuration-data-plane-routing
   :required common-lisp:t :member-name "dataPlaneRouting")
  (create-public-ip :target-type smithy/sdk/smithy-types:boolean :required
   common-lisp:t :member-name "createPublicIP")
  (staging-area-tags :target-type tags-map :required common-lisp:t :member-name
   "stagingAreaTags")
  (use-fips-endpoint :target-type smithy/sdk/smithy-types:boolean :member-name
   "useFipsEndpoint")
  (tags :target-type tags-map :member-name "tags"))
 (:shape-name "CreateReplicationConfigurationTemplateRequest"))

(smithy/sdk/shapes:define-structure create-wave-request common-lisp:nil
                                    ((name :target-type wave-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type wave-description
                                      :member-name "description")
                                     (tags :target-type tags-map :member-name
                                      "tags")
                                     (account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name "CreateWaveRequest"))

(smithy/sdk/shapes:define-structure data-replication-error common-lisp:nil
                                    ((error :target-type
                                      data-replication-error-string
                                      :member-name "error")
                                     (raw-error :target-type
                                      large-bounded-string :member-name
                                      "rawError"))
                                    (:shape-name "DataReplicationError"))

(smithy/sdk/shapes:define-type data-replication-error-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure data-replication-info common-lisp:nil
                                    ((lag-duration :target-type
                                      iso8601duration-string :member-name
                                      "lagDuration")
                                     (eta-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "etaDateTime")
                                     (replicated-disks :target-type
                                      data-replication-info-replicated-disks
                                      :member-name "replicatedDisks")
                                     (data-replication-state :target-type
                                      data-replication-state :member-name
                                      "dataReplicationState")
                                     (data-replication-initiation :target-type
                                      data-replication-initiation :member-name
                                      "dataReplicationInitiation")
                                     (data-replication-error :target-type
                                      data-replication-error :member-name
                                      "dataReplicationError")
                                     (last-snapshot-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "lastSnapshotDateTime"))
                                    (:shape-name "DataReplicationInfo"))

(smithy/sdk/shapes:define-structure data-replication-info-replicated-disk
                                    common-lisp:nil
                                    ((device-name :target-type bounded-string
                                      :member-name "deviceName")
                                     (total-storage-bytes :target-type
                                      positive-integer :member-name
                                      "totalStorageBytes")
                                     (replicated-storage-bytes :target-type
                                      positive-integer :member-name
                                      "replicatedStorageBytes")
                                     (rescanned-storage-bytes :target-type
                                      positive-integer :member-name
                                      "rescannedStorageBytes")
                                     (backlogged-storage-bytes :target-type
                                      positive-integer :member-name
                                      "backloggedStorageBytes"))
                                    (:shape-name
                                     "DataReplicationInfoReplicatedDisk"))

(smithy/sdk/shapes:define-list data-replication-info-replicated-disks :member
                               data-replication-info-replicated-disk)

(smithy/sdk/shapes:define-structure data-replication-initiation common-lisp:nil
                                    ((start-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "startDateTime")
                                     (next-attempt-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "nextAttemptDateTime")
                                     (steps :target-type
                                      data-replication-initiation-steps
                                      :member-name "steps"))
                                    (:shape-name "DataReplicationInitiation"))

(smithy/sdk/shapes:define-structure data-replication-initiation-step
                                    common-lisp:nil
                                    ((name :target-type
                                      data-replication-initiation-step-name
                                      :member-name "name")
                                     (status :target-type
                                      data-replication-initiation-step-status
                                      :member-name "status"))
                                    (:shape-name
                                     "DataReplicationInitiationStep"))

(smithy/sdk/shapes:define-type data-replication-initiation-step-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type data-replication-initiation-step-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list data-replication-initiation-steps :member
                               data-replication-initiation-step)

(smithy/sdk/shapes:define-type data-replication-state
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure delete-application-request common-lisp:nil
                                    ((application-id :target-type
                                      application-id :required common-lisp:t
                                      :member-name "applicationID")
                                     (account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name "DeleteApplicationRequest"))

(smithy/sdk/shapes:define-structure delete-application-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteApplicationResponse"))

(smithy/sdk/shapes:define-input delete-connector-request common-lisp:nil
                                ((connector-id :target-type connector-id
                                  :required common-lisp:t :member-name
                                  "connectorID"))
                                (:shape-name "DeleteConnectorRequest"))

(smithy/sdk/shapes:define-structure delete-job-request common-lisp:nil
                                    ((job-id :target-type job-id :required
                                      common-lisp:t :member-name "jobID")
                                     (account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name "DeleteJobRequest"))

(smithy/sdk/shapes:define-structure delete-job-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteJobResponse"))

(smithy/sdk/shapes:define-structure
 delete-launch-configuration-template-request common-lisp:nil
 ((launch-configuration-template-id :target-type
   launch-configuration-template-id :required common-lisp:t :member-name
   "launchConfigurationTemplateID"))
 (:shape-name "DeleteLaunchConfigurationTemplateRequest"))

(smithy/sdk/shapes:define-structure
 delete-launch-configuration-template-response common-lisp:nil common-lisp:nil
 (:shape-name "DeleteLaunchConfigurationTemplateResponse"))

(smithy/sdk/shapes:define-structure
 delete-replication-configuration-template-request common-lisp:nil
 ((replication-configuration-template-id :target-type
   replication-configuration-template-id :required common-lisp:t :member-name
   "replicationConfigurationTemplateID"))
 (:shape-name "DeleteReplicationConfigurationTemplateRequest"))

(smithy/sdk/shapes:define-structure
 delete-replication-configuration-template-response common-lisp:nil
 common-lisp:nil (:shape-name "DeleteReplicationConfigurationTemplateResponse"))

(smithy/sdk/shapes:define-structure delete-source-server-request
                                    common-lisp:nil
                                    ((source-server-id :target-type
                                      source-server-id :required common-lisp:t
                                      :member-name "sourceServerID")
                                     (account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name "DeleteSourceServerRequest"))

(smithy/sdk/shapes:define-structure delete-source-server-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "DeleteSourceServerResponse"))

(smithy/sdk/shapes:define-structure delete-vcenter-client-request
                                    common-lisp:nil
                                    ((vcenter-client-id :target-type
                                      vcenter-client-id :required common-lisp:t
                                      :member-name "vcenterClientID"))
                                    (:shape-name "DeleteVcenterClientRequest"))

(smithy/sdk/shapes:define-structure delete-wave-request common-lisp:nil
                                    ((wave-id :target-type wave-id :required
                                      common-lisp:t :member-name "waveID")
                                     (account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name "DeleteWaveRequest"))

(smithy/sdk/shapes:define-structure delete-wave-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteWaveResponse"))

(smithy/sdk/shapes:define-structure describe-job-log-items-request
                                    common-lisp:nil
                                    ((job-id :target-type job-id :required
                                      common-lisp:t :member-name "jobID")
                                     (max-results :target-type max-results-type
                                      :member-name "maxResults")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken")
                                     (account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name "DescribeJobLogItemsRequest"))

(smithy/sdk/shapes:define-structure describe-job-log-items-response
                                    common-lisp:nil
                                    ((items :target-type job-logs :member-name
                                      "items")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name "DescribeJobLogItemsResponse"))

(smithy/sdk/shapes:define-structure describe-jobs-request common-lisp:nil
                                    ((filters :target-type
                                      describe-jobs-request-filters
                                      :member-name "filters")
                                     (max-results :target-type max-results-type
                                      :member-name "maxResults")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken")
                                     (account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name "DescribeJobsRequest"))

(smithy/sdk/shapes:define-structure describe-jobs-request-filters
                                    common-lisp:nil
                                    ((job-ids :target-type
                                      describe-jobs-request-filters-job-ids
                                      :member-name "jobIDs")
                                     (from-date :target-type
                                      iso8601datetime-string :member-name
                                      "fromDate")
                                     (to-date :target-type
                                      iso8601datetime-string :member-name
                                      "toDate"))
                                    (:shape-name "DescribeJobsRequestFilters"))

(smithy/sdk/shapes:define-list describe-jobs-request-filters-job-ids :member
                               job-id)

(smithy/sdk/shapes:define-structure describe-jobs-response common-lisp:nil
                                    ((items :target-type jobs-list :member-name
                                      "items")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name "DescribeJobsResponse"))

(smithy/sdk/shapes:define-structure
 describe-launch-configuration-templates-request common-lisp:nil
 ((launch-configuration-template-ids :target-type
   launch-configuration-template-ids :member-name
   "launchConfigurationTemplateIDs")
  (max-results :target-type max-results-type :member-name "maxResults")
  (next-token :target-type pagination-token :member-name "nextToken"))
 (:shape-name "DescribeLaunchConfigurationTemplatesRequest"))

(smithy/sdk/shapes:define-structure
 describe-launch-configuration-templates-response common-lisp:nil
 ((items :target-type launch-configuration-templates :member-name "items")
  (next-token :target-type pagination-token :member-name "nextToken"))
 (:shape-name "DescribeLaunchConfigurationTemplatesResponse"))

(smithy/sdk/shapes:define-structure
 describe-replication-configuration-templates-request common-lisp:nil
 ((replication-configuration-template-ids :target-type
   replication-configuration-template-ids :member-name
   "replicationConfigurationTemplateIDs")
  (max-results :target-type max-results-type :member-name "maxResults")
  (next-token :target-type pagination-token :member-name "nextToken"))
 (:shape-name "DescribeReplicationConfigurationTemplatesRequest"))

(smithy/sdk/shapes:define-structure
 describe-replication-configuration-templates-response common-lisp:nil
 ((items :target-type replication-configuration-templates :member-name "items")
  (next-token :target-type pagination-token :member-name "nextToken"))
 (:shape-name "DescribeReplicationConfigurationTemplatesResponse"))

(smithy/sdk/shapes:define-structure describe-source-servers-request
                                    common-lisp:nil
                                    ((filters :target-type
                                      describe-source-servers-request-filters
                                      :member-name "filters")
                                     (max-results :target-type max-results-type
                                      :member-name "maxResults")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken")
                                     (account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name
                                     "DescribeSourceServersRequest"))

(smithy/sdk/shapes:define-list describe-source-servers-request-application-ids
                               :member application-id)

(smithy/sdk/shapes:define-structure describe-source-servers-request-filters
                                    common-lisp:nil
                                    ((source-server-ids :target-type
                                      describe-source-servers-request-filters-ids
                                      :member-name "sourceServerIDs")
                                     (is-archived :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isArchived")
                                     (replication-types :target-type
                                      replication-types :member-name
                                      "replicationTypes")
                                     (life-cycle-states :target-type
                                      life-cycle-states :member-name
                                      "lifeCycleStates")
                                     (application-ids :target-type
                                      describe-source-servers-request-application-ids
                                      :member-name "applicationIDs"))
                                    (:shape-name
                                     "DescribeSourceServersRequestFilters"))

(smithy/sdk/shapes:define-list describe-source-servers-request-filters-ids
                               :member source-server-id)

(smithy/sdk/shapes:define-structure describe-source-servers-response
                                    common-lisp:nil
                                    ((items :target-type source-servers-list
                                      :member-name "items")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "DescribeSourceServersResponse"))

(smithy/sdk/shapes:define-structure describe-vcenter-clients-request
                                    common-lisp:nil
                                    ((max-results :target-type max-results-type
                                      :member-name "maxResults" :http-query
                                      "maxResults")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken" :http-query
                                      "nextToken"))
                                    (:shape-name
                                     "DescribeVcenterClientsRequest"))

(smithy/sdk/shapes:define-structure describe-vcenter-clients-response
                                    common-lisp:nil
                                    ((items :target-type vcenter-client-list
                                      :member-name "items")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "DescribeVcenterClientsResponse"))

(smithy/sdk/shapes:define-structure disassociate-applications-request
                                    common-lisp:nil
                                    ((wave-id :target-type wave-id :required
                                      common-lisp:t :member-name "waveID")
                                     (application-ids :target-type
                                      application-ids :required common-lisp:t
                                      :member-name "applicationIDs")
                                     (account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name
                                     "DisassociateApplicationsRequest"))

(smithy/sdk/shapes:define-structure disassociate-applications-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "DisassociateApplicationsResponse"))

(smithy/sdk/shapes:define-structure disassociate-source-servers-request
                                    common-lisp:nil
                                    ((application-id :target-type
                                      application-id :required common-lisp:t
                                      :member-name "applicationID")
                                     (source-server-ids :target-type
                                      disassociate-source-servers-request-source-server-ids
                                      :required common-lisp:t :member-name
                                      "sourceServerIDs")
                                     (account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name
                                     "DisassociateSourceServersRequest"))

(smithy/sdk/shapes:define-list
 disassociate-source-servers-request-source-server-ids :member source-server-id)

(smithy/sdk/shapes:define-structure disassociate-source-servers-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "DisassociateSourceServersResponse"))

(smithy/sdk/shapes:define-structure disconnect-from-service-request
                                    common-lisp:nil
                                    ((source-server-id :target-type
                                      source-server-id :required common-lisp:t
                                      :member-name "sourceServerID")
                                     (account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name
                                     "DisconnectFromServiceRequest"))

(smithy/sdk/shapes:define-structure disk common-lisp:nil
                                    ((device-name :target-type bounded-string
                                      :member-name "deviceName")
                                     (bytes :target-type positive-integer
                                      :member-name "bytes"))
                                    (:shape-name "Disk"))

(smithy/sdk/shapes:define-list disks :member disk)

(smithy/sdk/shapes:define-type document-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ec2instance-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ec2instance-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ec2launch-configuration-template-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure error-details common-lisp:nil
                                    ((message :target-type large-bounded-string
                                      :member-name "message")
                                     (code :target-type bounded-string
                                      :member-name "code")
                                     (resource-id :target-type
                                      large-bounded-string :member-name
                                      "resourceId")
                                     (resource-type :target-type
                                      large-bounded-string :member-name
                                      "resourceType"))
                                    (:shape-name "ErrorDetails"))

(smithy/sdk/shapes:define-structure export-error-data common-lisp:nil
                                    ((raw-error :target-type
                                      large-bounded-string :member-name
                                      "rawError"))
                                    (:shape-name "ExportErrorData"))

(smithy/sdk/shapes:define-list export-errors :member export-task-error)

(smithy/sdk/shapes:define-type export-id smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type export-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure export-task common-lisp:nil
                                    ((export-id :target-type export-id
                                      :member-name "exportID")
                                     (s3bucket :target-type s3bucket-name
                                      :member-name "s3Bucket")
                                     (s3key :target-type s3key :member-name
                                      "s3Key")
                                     (s3bucket-owner :target-type account-id
                                      :member-name "s3BucketOwner")
                                     (creation-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "creationDateTime")
                                     (end-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "endDateTime")
                                     (status :target-type export-status
                                      :member-name "status")
                                     (progress-percentage :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "progressPercentage")
                                     (summary :target-type export-task-summary
                                      :member-name "summary"))
                                    (:shape-name "ExportTask"))

(smithy/sdk/shapes:define-structure export-task-error common-lisp:nil
                                    ((error-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "errorDateTime")
                                     (error-data :target-type export-error-data
                                      :member-name "errorData"))
                                    (:shape-name "ExportTaskError"))

(smithy/sdk/shapes:define-structure export-task-summary common-lisp:nil
                                    ((servers-count :target-type
                                      positive-integer :member-name
                                      "serversCount")
                                     (applications-count :target-type
                                      positive-integer :member-name
                                      "applicationsCount")
                                     (waves-count :target-type positive-integer
                                      :member-name "wavesCount"))
                                    (:shape-name "ExportTaskSummary"))

(smithy/sdk/shapes:define-list exports-list :member export-task)

(smithy/sdk/shapes:define-structure finalize-cutover-request common-lisp:nil
                                    ((source-server-id :target-type
                                      source-server-id :required common-lisp:t
                                      :member-name "sourceServerID")
                                     (account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name "FinalizeCutoverRequest"))

(smithy/sdk/shapes:define-type first-boot smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure get-launch-configuration-request
                                    common-lisp:nil
                                    ((source-server-id :target-type
                                      source-server-id :required common-lisp:t
                                      :member-name "sourceServerID")
                                     (account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name
                                     "GetLaunchConfigurationRequest"))

(smithy/sdk/shapes:define-structure get-replication-configuration-request
                                    common-lisp:nil
                                    ((source-server-id :target-type
                                      source-server-id :required common-lisp:t
                                      :member-name "sourceServerID")
                                     (account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name
                                     "GetReplicationConfigurationRequest"))

(smithy/sdk/shapes:define-list ips-list :member bounded-string)

(smithy/sdk/shapes:define-type iso8601datetime-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type iso8601duration-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure identification-hints common-lisp:nil
                                    ((fqdn :target-type bounded-string
                                      :member-name "fqdn")
                                     (hostname :target-type bounded-string
                                      :member-name "hostname")
                                     (vm-ware-uuid :target-type bounded-string
                                      :member-name "vmWareUuid")
                                     (aws-instance-id :target-type
                                      ec2instance-id :member-name
                                      "awsInstanceID")
                                     (vm-path :target-type bounded-string
                                      :member-name "vmPath"))
                                    (:shape-name "IdentificationHints"))

(smithy/sdk/shapes:define-structure import-error-data common-lisp:nil
                                    ((source-server-id :target-type
                                      source-server-id :member-name
                                      "sourceServerID")
                                     (application-id :target-type
                                      application-id :member-name
                                      "applicationID")
                                     (wave-id :target-type wave-id :member-name
                                      "waveID")
                                     (ec2launch-template-id :target-type
                                      bounded-string :member-name
                                      "ec2LaunchTemplateID")
                                     (row-number :target-type positive-integer
                                      :member-name "rowNumber")
                                     (raw-error :target-type
                                      large-bounded-string :member-name
                                      "rawError")
                                     (account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name "ImportErrorData"))

(smithy/sdk/shapes:define-type import-error-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list import-errors :member import-task-error)

(smithy/sdk/shapes:define-type import-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list import-ids-filter :member import-id)

(smithy/sdk/shapes:define-list import-list :member import-task)

common-lisp:nil

(smithy/sdk/shapes:define-type import-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure import-task common-lisp:nil
                                    ((import-id :target-type import-id
                                      :member-name "importID")
                                     (s3bucket-source :target-type
                                      s3bucket-source :member-name
                                      "s3BucketSource")
                                     (creation-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "creationDateTime")
                                     (end-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "endDateTime")
                                     (status :target-type import-status
                                      :member-name "status")
                                     (progress-percentage :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "progressPercentage")
                                     (summary :target-type import-task-summary
                                      :member-name "summary"))
                                    (:shape-name "ImportTask"))

(smithy/sdk/shapes:define-structure import-task-error common-lisp:nil
                                    ((error-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "errorDateTime")
                                     (error-type :target-type import-error-type
                                      :member-name "errorType")
                                     (error-data :target-type import-error-data
                                      :member-name "errorData"))
                                    (:shape-name "ImportTaskError"))

(smithy/sdk/shapes:define-structure import-task-summary common-lisp:nil
                                    ((waves :target-type
                                      import-task-summary-waves :member-name
                                      "waves")
                                     (applications :target-type
                                      import-task-summary-applications
                                      :member-name "applications")
                                     (servers :target-type
                                      import-task-summary-servers :member-name
                                      "servers"))
                                    (:shape-name "ImportTaskSummary"))

(smithy/sdk/shapes:define-structure import-task-summary-applications
                                    common-lisp:nil
                                    ((created-count :target-type
                                      positive-integer :member-name
                                      "createdCount")
                                     (modified-count :target-type
                                      positive-integer :member-name
                                      "modifiedCount"))
                                    (:shape-name
                                     "ImportTaskSummaryApplications"))

(smithy/sdk/shapes:define-structure import-task-summary-servers common-lisp:nil
                                    ((created-count :target-type
                                      positive-integer :member-name
                                      "createdCount")
                                     (modified-count :target-type
                                      positive-integer :member-name
                                      "modifiedCount"))
                                    (:shape-name "ImportTaskSummaryServers"))

(smithy/sdk/shapes:define-structure import-task-summary-waves common-lisp:nil
                                    ((created-count :target-type
                                      positive-integer :member-name
                                      "createdCount")
                                     (modified-count :target-type
                                      positive-integer :member-name
                                      "modifiedCount"))
                                    (:shape-name "ImportTaskSummaryWaves"))

(smithy/sdk/shapes:define-structure initialize-service-request common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "InitializeServiceRequest"))

(smithy/sdk/shapes:define-structure initialize-service-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "InitializeServiceResponse"))

(smithy/sdk/shapes:define-type initiated-by smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type large-bounded-string
                                  :required common-lisp:t :member-name
                                  "message")
                                 (retry-after-seconds :target-type
                                  positive-integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type iops smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type jmes-path-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure job common-lisp:nil
                                    ((job-id :target-type job-id :required
                                      common-lisp:t :member-name "jobID")
                                     (arn :target-type arn :member-name "arn")
                                     (type :target-type job-type :member-name
                                      "type")
                                     (initiated-by :target-type initiated-by
                                      :member-name "initiatedBy")
                                     (creation-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "creationDateTime")
                                     (end-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "endDateTime")
                                     (status :target-type job-status
                                      :member-name "status")
                                     (participating-servers :target-type
                                      participating-servers :member-name
                                      "participatingServers")
                                     (tags :target-type tags-map :member-name
                                      "tags"))
                                    (:shape-name "Job"))

(smithy/sdk/shapes:define-type job-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure job-log common-lisp:nil
                                    ((log-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "logDateTime")
                                     (event :target-type job-log-event
                                      :member-name "event")
                                     (event-data :target-type
                                      job-log-event-data :member-name
                                      "eventData"))
                                    (:shape-name "JobLog"))

(smithy/sdk/shapes:define-type job-log-event smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure job-log-event-data common-lisp:nil
                                    ((source-server-id :target-type
                                      source-server-id :member-name
                                      "sourceServerID")
                                     (conversion-server-id :target-type
                                      ec2instance-id :member-name
                                      "conversionServerID")
                                     (target-instance-id :target-type
                                      ec2instance-id :member-name
                                      "targetInstanceID")
                                     (raw-error :target-type
                                      large-bounded-string :member-name
                                      "rawError"))
                                    (:shape-name "JobLogEventData"))

(smithy/sdk/shapes:define-list job-logs :member job-log)

(smithy/sdk/shapes:define-structure job-post-launch-actions-launch-status
                                    common-lisp:nil
                                    ((ssm-document :target-type ssm-document
                                      :member-name "ssmDocument")
                                     (ssm-document-type :target-type
                                      ssm-document-type :member-name
                                      "ssmDocumentType")
                                     (execution-id :target-type bounded-string
                                      :member-name "executionID")
                                     (execution-status :target-type
                                      post-launch-action-execution-status
                                      :member-name "executionStatus")
                                     (failure-reason :target-type
                                      bounded-string :member-name
                                      "failureReason"))
                                    (:shape-name
                                     "JobPostLaunchActionsLaunchStatus"))

common-lisp:nil

(smithy/sdk/shapes:define-type job-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type job-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list jobs-list :member job)

(smithy/sdk/shapes:define-type large-bounded-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure launch-configuration common-lisp:nil
                                    ((source-server-id :target-type
                                      source-server-id :member-name
                                      "sourceServerID")
                                     (name :target-type small-bounded-string
                                      :member-name "name")
                                     (ec2launch-template-id :target-type
                                      bounded-string :member-name
                                      "ec2LaunchTemplateID")
                                     (launch-disposition :target-type
                                      launch-disposition :member-name
                                      "launchDisposition")
                                     (target-instance-type-right-sizing-method
                                      :target-type
                                      target-instance-type-right-sizing-method
                                      :member-name
                                      "targetInstanceTypeRightSizingMethod")
                                     (copy-private-ip :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "copyPrivateIp")
                                     (copy-tags :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "copyTags")
                                     (licensing :target-type licensing
                                      :member-name "licensing")
                                     (boot-mode :target-type boot-mode
                                      :member-name "bootMode")
                                     (post-launch-actions :target-type
                                      post-launch-actions :member-name
                                      "postLaunchActions")
                                     (enable-map-auto-tagging :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "enableMapAutoTagging")
                                     (map-auto-tagging-mpe-id :target-type
                                      tag-value :member-name
                                      "mapAutoTaggingMpeID"))
                                    (:shape-name "LaunchConfiguration"))

(smithy/sdk/shapes:define-structure launch-configuration-template
                                    common-lisp:nil
                                    ((launch-configuration-template-id
                                      :target-type
                                      launch-configuration-template-id
                                      :required common-lisp:t :member-name
                                      "launchConfigurationTemplateID")
                                     (arn :target-type arn :member-name "arn")
                                     (post-launch-actions :target-type
                                      post-launch-actions :member-name
                                      "postLaunchActions")
                                     (enable-map-auto-tagging :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "enableMapAutoTagging")
                                     (map-auto-tagging-mpe-id :target-type
                                      tag-value :member-name
                                      "mapAutoTaggingMpeID")
                                     (tags :target-type tags-map :member-name
                                      "tags")
                                     (ec2launch-template-id :target-type
                                      ec2launch-configuration-template-id
                                      :member-name "ec2LaunchTemplateID")
                                     (launch-disposition :target-type
                                      launch-disposition :member-name
                                      "launchDisposition")
                                     (target-instance-type-right-sizing-method
                                      :target-type
                                      target-instance-type-right-sizing-method
                                      :member-name
                                      "targetInstanceTypeRightSizingMethod")
                                     (copy-private-ip :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "copyPrivateIp")
                                     (associate-public-ip-address :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "associatePublicIpAddress")
                                     (copy-tags :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "copyTags")
                                     (licensing :target-type licensing
                                      :member-name "licensing")
                                     (boot-mode :target-type boot-mode
                                      :member-name "bootMode")
                                     (small-volume-max-size :target-type
                                      positive-integer :member-name
                                      "smallVolumeMaxSize")
                                     (small-volume-conf :target-type
                                      launch-template-disk-conf :member-name
                                      "smallVolumeConf")
                                     (large-volume-conf :target-type
                                      launch-template-disk-conf :member-name
                                      "largeVolumeConf"))
                                    (:shape-name "LaunchConfigurationTemplate"))

(smithy/sdk/shapes:define-type launch-configuration-template-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list launch-configuration-template-ids :member
                               launch-configuration-template-id)

common-lisp:nil

(smithy/sdk/shapes:define-list launch-configuration-templates :member
                               launch-configuration-template)

(smithy/sdk/shapes:define-type launch-disposition
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type launch-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure launch-template-disk-conf common-lisp:nil
                                    ((volume-type :target-type volume-type
                                      :member-name "volumeType")
                                     (iops :target-type iops :member-name
                                      "iops")
                                     (throughput :target-type throughput
                                      :member-name "throughput"))
                                    (:shape-name "LaunchTemplateDiskConf"))

(smithy/sdk/shapes:define-structure launched-instance common-lisp:nil
                                    ((ec2instance-id :target-type
                                      ec2instance-id :member-name
                                      "ec2InstanceID")
                                     (job-id :target-type job-id :member-name
                                      "jobID")
                                     (first-boot :target-type first-boot
                                      :member-name "firstBoot"))
                                    (:shape-name "LaunchedInstance"))

(smithy/sdk/shapes:define-structure licensing common-lisp:nil
                                    ((os-byol :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "osByol"))
                                    (:shape-name "Licensing"))

(smithy/sdk/shapes:define-structure life-cycle common-lisp:nil
                                    ((added-to-service-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "addedToServiceDateTime")
                                     (first-byte-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "firstByteDateTime")
                                     (elapsed-replication-duration :target-type
                                      iso8601duration-string :member-name
                                      "elapsedReplicationDuration")
                                     (last-seen-by-service-date-time
                                      :target-type iso8601datetime-string
                                      :member-name "lastSeenByServiceDateTime")
                                     (last-test :target-type
                                      life-cycle-last-test :member-name
                                      "lastTest")
                                     (last-cutover :target-type
                                      life-cycle-last-cutover :member-name
                                      "lastCutover")
                                     (state :target-type life-cycle-state
                                      :member-name "state"))
                                    (:shape-name "LifeCycle"))

(smithy/sdk/shapes:define-structure life-cycle-last-cutover common-lisp:nil
                                    ((initiated :target-type
                                      life-cycle-last-cutover-initiated
                                      :member-name "initiated")
                                     (reverted :target-type
                                      life-cycle-last-cutover-reverted
                                      :member-name "reverted")
                                     (finalized :target-type
                                      life-cycle-last-cutover-finalized
                                      :member-name "finalized"))
                                    (:shape-name "LifeCycleLastCutover"))

(smithy/sdk/shapes:define-structure life-cycle-last-cutover-finalized
                                    common-lisp:nil
                                    ((api-call-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "apiCallDateTime"))
                                    (:shape-name
                                     "LifeCycleLastCutoverFinalized"))

(smithy/sdk/shapes:define-structure life-cycle-last-cutover-initiated
                                    common-lisp:nil
                                    ((api-call-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "apiCallDateTime")
                                     (job-id :target-type job-id :member-name
                                      "jobID"))
                                    (:shape-name
                                     "LifeCycleLastCutoverInitiated"))

(smithy/sdk/shapes:define-structure life-cycle-last-cutover-reverted
                                    common-lisp:nil
                                    ((api-call-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "apiCallDateTime"))
                                    (:shape-name
                                     "LifeCycleLastCutoverReverted"))

(smithy/sdk/shapes:define-structure life-cycle-last-test common-lisp:nil
                                    ((initiated :target-type
                                      life-cycle-last-test-initiated
                                      :member-name "initiated")
                                     (reverted :target-type
                                      life-cycle-last-test-reverted
                                      :member-name "reverted")
                                     (finalized :target-type
                                      life-cycle-last-test-finalized
                                      :member-name "finalized"))
                                    (:shape-name "LifeCycleLastTest"))

(smithy/sdk/shapes:define-structure life-cycle-last-test-finalized
                                    common-lisp:nil
                                    ((api-call-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "apiCallDateTime"))
                                    (:shape-name "LifeCycleLastTestFinalized"))

(smithy/sdk/shapes:define-structure life-cycle-last-test-initiated
                                    common-lisp:nil
                                    ((api-call-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "apiCallDateTime")
                                     (job-id :target-type job-id :member-name
                                      "jobID"))
                                    (:shape-name "LifeCycleLastTestInitiated"))

(smithy/sdk/shapes:define-structure life-cycle-last-test-reverted
                                    common-lisp:nil
                                    ((api-call-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "apiCallDateTime"))
                                    (:shape-name "LifeCycleLastTestReverted"))

(smithy/sdk/shapes:define-type life-cycle-state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list life-cycle-states :member life-cycle-state)

(smithy/sdk/shapes:define-structure list-applications-request common-lisp:nil
                                    ((filters :target-type
                                      list-applications-request-filters
                                      :member-name "filters")
                                     (max-results :target-type max-results-type
                                      :member-name "maxResults")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken")
                                     (account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name "ListApplicationsRequest"))

(smithy/sdk/shapes:define-structure list-applications-request-filters
                                    common-lisp:nil
                                    ((application-ids :target-type
                                      application-ids-filter :member-name
                                      "applicationIDs")
                                     (is-archived :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isArchived")
                                     (wave-ids :target-type wave-ids-filter
                                      :member-name "waveIDs"))
                                    (:shape-name
                                     "ListApplicationsRequestFilters"))

(smithy/sdk/shapes:define-structure list-applications-response common-lisp:nil
                                    ((items :target-type applications-list
                                      :member-name "items")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListApplicationsResponse"))

(smithy/sdk/shapes:define-input list-connectors-request common-lisp:nil
                                ((filters :target-type
                                  list-connectors-request-filters :member-name
                                  "filters")
                                 (max-results :target-type max-results-type
                                  :member-name "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "ListConnectorsRequest"))

(smithy/sdk/shapes:define-structure list-connectors-request-filters
                                    common-lisp:nil
                                    ((connector-ids :target-type
                                      connector-ids-filter :member-name
                                      "connectorIDs"))
                                    (:shape-name
                                     "ListConnectorsRequestFilters"))

(smithy/sdk/shapes:define-output list-connectors-response common-lisp:nil
                                 ((items :target-type connectors-list
                                   :member-name "items")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListConnectorsResponse"))

(smithy/sdk/shapes:define-structure list-export-errors-request common-lisp:nil
                                    ((export-id :target-type export-id
                                      :required common-lisp:t :member-name
                                      "exportID")
                                     (max-results :target-type max-results-type
                                      :member-name "maxResults")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListExportErrorsRequest"))

(smithy/sdk/shapes:define-structure list-export-errors-response common-lisp:nil
                                    ((items :target-type export-errors
                                      :member-name "items")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListExportErrorsResponse"))

(smithy/sdk/shapes:define-structure list-exports-request common-lisp:nil
                                    ((filters :target-type
                                      list-exports-request-filters :member-name
                                      "filters")
                                     (max-results :target-type max-results-type
                                      :member-name "maxResults")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListExportsRequest"))

(smithy/sdk/shapes:define-structure list-exports-request-filters
                                    common-lisp:nil
                                    ((export-ids :target-type
                                      list-exports-request-filters-export-ids
                                      :member-name "exportIDs"))
                                    (:shape-name "ListExportsRequestFilters"))

(smithy/sdk/shapes:define-list list-exports-request-filters-export-ids :member
                               export-id)

(smithy/sdk/shapes:define-structure list-exports-response common-lisp:nil
                                    ((items :target-type exports-list
                                      :member-name "items")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListExportsResponse"))

(smithy/sdk/shapes:define-structure list-import-errors-request common-lisp:nil
                                    ((import-id :target-type import-id
                                      :required common-lisp:t :member-name
                                      "importID")
                                     (max-results :target-type max-results-type
                                      :member-name "maxResults")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListImportErrorsRequest"))

(smithy/sdk/shapes:define-structure list-import-errors-response common-lisp:nil
                                    ((items :target-type import-errors
                                      :member-name "items")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListImportErrorsResponse"))

(smithy/sdk/shapes:define-structure list-imports-request common-lisp:nil
                                    ((filters :target-type
                                      list-imports-request-filters :member-name
                                      "filters")
                                     (max-results :target-type max-results-type
                                      :member-name "maxResults")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListImportsRequest"))

(smithy/sdk/shapes:define-structure list-imports-request-filters
                                    common-lisp:nil
                                    ((import-ids :target-type import-ids-filter
                                      :member-name "importIDs"))
                                    (:shape-name "ListImportsRequestFilters"))

(smithy/sdk/shapes:define-structure list-imports-response common-lisp:nil
                                    ((items :target-type import-list
                                      :member-name "items")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListImportsResponse"))

(smithy/sdk/shapes:define-input list-managed-accounts-request common-lisp:nil
                                ((max-results :target-type max-results-type
                                  :member-name "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "ListManagedAccountsRequest"))

(smithy/sdk/shapes:define-output list-managed-accounts-response common-lisp:nil
                                 ((items :target-type managed-accounts
                                   :required common-lisp:t :member-name
                                   "items")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListManagedAccountsResponse"))

(smithy/sdk/shapes:define-structure list-source-server-actions-request
                                    common-lisp:nil
                                    ((source-server-id :target-type
                                      source-server-id :required common-lisp:t
                                      :member-name "sourceServerID")
                                     (filters :target-type
                                      source-server-actions-request-filters
                                      :member-name "filters")
                                     (max-results :target-type max-results-type
                                      :member-name "maxResults")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken")
                                     (account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name
                                     "ListSourceServerActionsRequest"))

(smithy/sdk/shapes:define-structure list-source-server-actions-response
                                    common-lisp:nil
                                    ((items :target-type
                                      source-server-action-documents
                                      :member-name "items")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListSourceServerActionsResponse"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-request
                                    common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "resourceArn"))
                                    (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((tags :target-type tags-map :member-name
                                      "tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-structure list-template-actions-request
                                    common-lisp:nil
                                    ((launch-configuration-template-id
                                      :target-type
                                      launch-configuration-template-id
                                      :required common-lisp:t :member-name
                                      "launchConfigurationTemplateID")
                                     (filters :target-type
                                      template-actions-request-filters
                                      :member-name "filters")
                                     (max-results :target-type max-results-type
                                      :member-name "maxResults")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListTemplateActionsRequest"))

(smithy/sdk/shapes:define-structure list-template-actions-response
                                    common-lisp:nil
                                    ((items :target-type
                                      template-action-documents :member-name
                                      "items")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListTemplateActionsResponse"))

(smithy/sdk/shapes:define-structure list-waves-request common-lisp:nil
                                    ((filters :target-type
                                      list-waves-request-filters :member-name
                                      "filters")
                                     (max-results :target-type max-results-type
                                      :member-name "maxResults")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken")
                                     (account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name "ListWavesRequest"))

(smithy/sdk/shapes:define-structure list-waves-request-filters common-lisp:nil
                                    ((wave-ids :target-type wave-ids-filter
                                      :member-name "waveIDs")
                                     (is-archived :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isArchived"))
                                    (:shape-name "ListWavesRequestFilters"))

(smithy/sdk/shapes:define-structure list-waves-response common-lisp:nil
                                    ((items :target-type waves-list
                                      :member-name "items")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListWavesResponse"))

(smithy/sdk/shapes:define-structure managed-account common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "accountId"))
                                    (:shape-name "ManagedAccount"))

(smithy/sdk/shapes:define-list managed-accounts :member managed-account)

(smithy/sdk/shapes:define-structure mark-as-archived-request common-lisp:nil
                                    ((source-server-id :target-type
                                      source-server-id :required common-lisp:t
                                      :member-name "sourceServerID")
                                     (account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name "MarkAsArchivedRequest"))

(smithy/sdk/shapes:define-type max-results-type smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure network-interface common-lisp:nil
                                    ((mac-address :target-type bounded-string
                                      :member-name "macAddress")
                                     (ips :target-type ips-list :member-name
                                      "ips")
                                     (is-primary :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isPrimary"))
                                    (:shape-name "NetworkInterface"))

(smithy/sdk/shapes:define-list network-interfaces :member network-interface)

(smithy/sdk/shapes:define-structure os common-lisp:nil
                                    ((full-string :target-type bounded-string
                                      :member-name "fullString"))
                                    (:shape-name "OS"))

(smithy/sdk/shapes:define-type operating-system-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type order-type smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure participating-server common-lisp:nil
                                    ((source-server-id :target-type
                                      source-server-id :required common-lisp:t
                                      :member-name "sourceServerID")
                                     (launch-status :target-type launch-status
                                      :member-name "launchStatus")
                                     (launched-ec2instance-id :target-type
                                      ec2instance-id :member-name
                                      "launchedEc2InstanceID")
                                     (post-launch-actions-status :target-type
                                      post-launch-actions-status :member-name
                                      "postLaunchActionsStatus"))
                                    (:shape-name "ParticipatingServer"))

(smithy/sdk/shapes:define-list participating-servers :member
                               participating-server)

(smithy/sdk/shapes:define-input pause-replication-request common-lisp:nil
                                ((source-server-id :target-type
                                  source-server-id :required common-lisp:t
                                  :member-name "sourceServerID")
                                 (account-id :target-type account-id
                                  :member-name "accountID"))
                                (:shape-name "PauseReplicationRequest"))

(smithy/sdk/shapes:define-type positive-integer smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type post-launch-action-execution-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure post-launch-actions common-lisp:nil
                                    ((deployment :target-type
                                      post-launch-actions-deployment-type
                                      :member-name "deployment")
                                     (s3log-bucket :target-type
                                      s3log-bucket-name :member-name
                                      "s3LogBucket")
                                     (s3output-key-prefix :target-type
                                      bounded-string :member-name
                                      "s3OutputKeyPrefix")
                                     (cloud-watch-log-group-name :target-type
                                      cloud-watch-log-group-name :member-name
                                      "cloudWatchLogGroupName")
                                     (ssm-documents :target-type ssm-documents
                                      :member-name "ssmDocuments"))
                                    (:shape-name "PostLaunchActions"))

(smithy/sdk/shapes:define-type post-launch-actions-deployment-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list post-launch-actions-launch-status-list :member
                               job-post-launch-actions-launch-status)

(smithy/sdk/shapes:define-structure post-launch-actions-status common-lisp:nil
                                    ((ssm-agent-discovery-datetime :target-type
                                      iso8601datetime-string :member-name
                                      "ssmAgentDiscoveryDatetime")
                                     (post-launch-actions-launch-status-list
                                      :target-type
                                      post-launch-actions-launch-status-list
                                      :member-name
                                      "postLaunchActionsLaunchStatusList"))
                                    (:shape-name "PostLaunchActionsStatus"))

(smithy/sdk/shapes:define-structure put-source-server-action-request
                                    common-lisp:nil
                                    ((source-server-id :target-type
                                      source-server-id :required common-lisp:t
                                      :member-name "sourceServerID")
                                     (action-name :target-type action-name
                                      :required common-lisp:t :member-name
                                      "actionName")
                                     (document-identifier :target-type
                                      bounded-string :required common-lisp:t
                                      :member-name "documentIdentifier")
                                     (order :target-type order-type :required
                                      common-lisp:t :member-name "order")
                                     (action-id :target-type action-id
                                      :required common-lisp:t :member-name
                                      "actionID")
                                     (document-version :target-type
                                      document-version :member-name
                                      "documentVersion")
                                     (active :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "active")
                                     (timeout-seconds :target-type
                                      strictly-positive-integer :member-name
                                      "timeoutSeconds")
                                     (must-succeed-for-cutover :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "mustSucceedForCutover")
                                     (parameters :target-type
                                      ssm-document-parameters :member-name
                                      "parameters")
                                     (external-parameters :target-type
                                      ssm-document-external-parameters
                                      :member-name "externalParameters")
                                     (description :target-type
                                      action-description :member-name
                                      "description")
                                     (category :target-type action-category
                                      :member-name "category")
                                     (account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name
                                     "PutSourceServerActionRequest"))

(smithy/sdk/shapes:define-structure put-template-action-request common-lisp:nil
                                    ((launch-configuration-template-id
                                      :target-type
                                      launch-configuration-template-id
                                      :required common-lisp:t :member-name
                                      "launchConfigurationTemplateID")
                                     (action-name :target-type bounded-string
                                      :required common-lisp:t :member-name
                                      "actionName")
                                     (document-identifier :target-type
                                      bounded-string :required common-lisp:t
                                      :member-name "documentIdentifier")
                                     (order :target-type order-type :required
                                      common-lisp:t :member-name "order")
                                     (action-id :target-type action-id
                                      :required common-lisp:t :member-name
                                      "actionID")
                                     (document-version :target-type
                                      document-version :member-name
                                      "documentVersion")
                                     (active :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "active")
                                     (timeout-seconds :target-type
                                      strictly-positive-integer :member-name
                                      "timeoutSeconds")
                                     (must-succeed-for-cutover :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "mustSucceedForCutover")
                                     (parameters :target-type
                                      ssm-document-parameters :member-name
                                      "parameters")
                                     (operating-system :target-type
                                      operating-system-string :member-name
                                      "operatingSystem")
                                     (external-parameters :target-type
                                      ssm-document-external-parameters
                                      :member-name "externalParameters")
                                     (description :target-type
                                      action-description :member-name
                                      "description")
                                     (category :target-type action-category
                                      :member-name "category"))
                                    (:shape-name "PutTemplateActionRequest"))

(smithy/sdk/shapes:define-structure remove-source-server-action-request
                                    common-lisp:nil
                                    ((source-server-id :target-type
                                      source-server-id :required common-lisp:t
                                      :member-name "sourceServerID")
                                     (action-id :target-type action-id
                                      :required common-lisp:t :member-name
                                      "actionID")
                                     (account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name
                                     "RemoveSourceServerActionRequest"))

(smithy/sdk/shapes:define-structure remove-source-server-action-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "RemoveSourceServerActionResponse"))

(smithy/sdk/shapes:define-structure remove-template-action-request
                                    common-lisp:nil
                                    ((launch-configuration-template-id
                                      :target-type
                                      launch-configuration-template-id
                                      :required common-lisp:t :member-name
                                      "launchConfigurationTemplateID")
                                     (action-id :target-type action-id
                                      :required common-lisp:t :member-name
                                      "actionID"))
                                    (:shape-name "RemoveTemplateActionRequest"))

(smithy/sdk/shapes:define-structure remove-template-action-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "RemoveTemplateActionResponse"))

(smithy/sdk/shapes:define-structure replication-configuration common-lisp:nil
                                    ((source-server-id :target-type
                                      source-server-id :member-name
                                      "sourceServerID")
                                     (name :target-type small-bounded-string
                                      :member-name "name")
                                     (staging-area-subnet-id :target-type
                                      subnet-id :member-name
                                      "stagingAreaSubnetId")
                                     (associate-default-security-group
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "associateDefaultSecurityGroup")
                                     (replication-servers-security-groups-ids
                                      :target-type
                                      replication-servers-security-groups-ids
                                      :member-name
                                      "replicationServersSecurityGroupsIDs")
                                     (replication-server-instance-type
                                      :target-type ec2instance-type
                                      :member-name
                                      "replicationServerInstanceType")
                                     (use-dedicated-replication-server
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "useDedicatedReplicationServer")
                                     (default-large-staging-disk-type
                                      :target-type
                                      replication-configuration-default-large-staging-disk-type
                                      :member-name
                                      "defaultLargeStagingDiskType")
                                     (replicated-disks :target-type
                                      replication-configuration-replicated-disks
                                      :member-name "replicatedDisks")
                                     (ebs-encryption :target-type
                                      replication-configuration-ebs-encryption
                                      :member-name "ebsEncryption")
                                     (ebs-encryption-key-arn :target-type arn
                                      :member-name "ebsEncryptionKeyArn")
                                     (bandwidth-throttling :target-type
                                      bandwidth-throttling :member-name
                                      "bandwidthThrottling")
                                     (data-plane-routing :target-type
                                      replication-configuration-data-plane-routing
                                      :member-name "dataPlaneRouting")
                                     (create-public-ip :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "createPublicIP")
                                     (staging-area-tags :target-type tags-map
                                      :member-name "stagingAreaTags")
                                     (use-fips-endpoint :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "useFipsEndpoint"))
                                    (:shape-name "ReplicationConfiguration"))

(smithy/sdk/shapes:define-type replication-configuration-data-plane-routing
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 replication-configuration-default-large-staging-disk-type
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type replication-configuration-ebs-encryption
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure replication-configuration-replicated-disk
                                    common-lisp:nil
                                    ((device-name :target-type bounded-string
                                      :member-name "deviceName")
                                     (is-boot-disk :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isBootDisk")
                                     (staging-disk-type :target-type
                                      replication-configuration-replicated-disk-staging-disk-type
                                      :member-name "stagingDiskType")
                                     (iops :target-type positive-integer
                                      :member-name "iops")
                                     (throughput :target-type positive-integer
                                      :member-name "throughput"))
                                    (:shape-name
                                     "ReplicationConfigurationReplicatedDisk"))

(smithy/sdk/shapes:define-type
 replication-configuration-replicated-disk-staging-disk-type
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list replication-configuration-replicated-disks
                               :member
                               replication-configuration-replicated-disk)

(smithy/sdk/shapes:define-structure replication-configuration-template
                                    common-lisp:nil
                                    ((replication-configuration-template-id
                                      :target-type
                                      replication-configuration-template-id
                                      :required common-lisp:t :member-name
                                      "replicationConfigurationTemplateID")
                                     (arn :target-type arn :member-name "arn")
                                     (staging-area-subnet-id :target-type
                                      subnet-id :member-name
                                      "stagingAreaSubnetId")
                                     (associate-default-security-group
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "associateDefaultSecurityGroup")
                                     (replication-servers-security-groups-ids
                                      :target-type
                                      replication-servers-security-groups-ids
                                      :member-name
                                      "replicationServersSecurityGroupsIDs")
                                     (replication-server-instance-type
                                      :target-type ec2instance-type
                                      :member-name
                                      "replicationServerInstanceType")
                                     (use-dedicated-replication-server
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "useDedicatedReplicationServer")
                                     (default-large-staging-disk-type
                                      :target-type
                                      replication-configuration-default-large-staging-disk-type
                                      :member-name
                                      "defaultLargeStagingDiskType")
                                     (ebs-encryption :target-type
                                      replication-configuration-ebs-encryption
                                      :member-name "ebsEncryption")
                                     (ebs-encryption-key-arn :target-type arn
                                      :member-name "ebsEncryptionKeyArn")
                                     (bandwidth-throttling :target-type
                                      bandwidth-throttling :member-name
                                      "bandwidthThrottling")
                                     (data-plane-routing :target-type
                                      replication-configuration-data-plane-routing
                                      :member-name "dataPlaneRouting")
                                     (create-public-ip :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "createPublicIP")
                                     (staging-area-tags :target-type tags-map
                                      :member-name "stagingAreaTags")
                                     (use-fips-endpoint :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "useFipsEndpoint")
                                     (tags :target-type tags-map :member-name
                                      "tags"))
                                    (:shape-name
                                     "ReplicationConfigurationTemplate"))

(smithy/sdk/shapes:define-type replication-configuration-template-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list replication-configuration-template-ids :member
                               replication-configuration-template-id)

common-lisp:nil

(smithy/sdk/shapes:define-list replication-configuration-templates :member
                               replication-configuration-template)

(smithy/sdk/shapes:define-list replication-servers-security-groups-ids :member
                               security-group-id)

(smithy/sdk/shapes:define-type replication-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list replication-types :member replication-type)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type large-bounded-string
                                  :member-name "message")
                                 (code :target-type large-bounded-string
                                  :member-name "code")
                                 (resource-id :target-type large-bounded-string
                                  :member-name "resourceId")
                                 (resource-type :target-type
                                  large-bounded-string :member-name
                                  "resourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-input resume-replication-request common-lisp:nil
                                ((source-server-id :target-type
                                  source-server-id :required common-lisp:t
                                  :member-name "sourceServerID")
                                 (account-id :target-type account-id
                                  :member-name "accountID"))
                                (:shape-name "ResumeReplicationRequest"))

(smithy/sdk/shapes:define-structure retry-data-replication-request
                                    common-lisp:nil
                                    ((source-server-id :target-type
                                      source-server-id :required common-lisp:t
                                      :member-name "sourceServerID")
                                     (account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name "RetryDataReplicationRequest"))

(smithy/sdk/shapes:define-type s3bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3bucket-source common-lisp:nil
                                    ((s3bucket :target-type s3bucket-name
                                      :required common-lisp:t :member-name
                                      "s3Bucket")
                                     (s3key :target-type s3key :required
                                      common-lisp:t :member-name "s3Key")
                                     (s3bucket-owner :target-type account-id
                                      :member-name "s3BucketOwner"))
                                    (:shape-name "S3BucketSource"))

(smithy/sdk/shapes:define-type s3key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3log-bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type secret-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type security-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type large-bounded-string
                                  :member-name "message")
                                 (code :target-type large-bounded-string
                                  :member-name "code")
                                 (resource-id :target-type large-bounded-string
                                  :member-name "resourceId")
                                 (resource-type :target-type
                                  large-bounded-string :member-name
                                  "resourceType")
                                 (service-code :target-type
                                  large-bounded-string :member-name
                                  "serviceCode")
                                 (quota-code :target-type large-bounded-string
                                  :member-name "quotaCode")
                                 (quota-value :target-type
                                  strictly-positive-integer :member-name
                                  "quotaValue"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type small-bounded-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure source-properties common-lisp:nil
                                    ((last-updated-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "lastUpdatedDateTime")
                                     (recommended-instance-type :target-type
                                      ec2instance-type :member-name
                                      "recommendedInstanceType")
                                     (identification-hints :target-type
                                      identification-hints :member-name
                                      "identificationHints")
                                     (network-interfaces :target-type
                                      network-interfaces :member-name
                                      "networkInterfaces")
                                     (disks :target-type disks :member-name
                                      "disks")
                                     (cpus :target-type cpus :member-name
                                      "cpus")
                                     (ram-bytes :target-type positive-integer
                                      :member-name "ramBytes")
                                     (os :target-type os :member-name "os"))
                                    (:shape-name "SourceProperties"))

(smithy/sdk/shapes:define-structure source-server common-lisp:nil
                                    ((source-server-id :target-type
                                      source-server-id :member-name
                                      "sourceServerID")
                                     (arn :target-type arn :member-name "arn")
                                     (is-archived :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isArchived")
                                     (tags :target-type tags-map :member-name
                                      "tags")
                                     (launched-instance :target-type
                                      launched-instance :member-name
                                      "launchedInstance")
                                     (data-replication-info :target-type
                                      data-replication-info :member-name
                                      "dataReplicationInfo")
                                     (life-cycle :target-type life-cycle
                                      :member-name "lifeCycle")
                                     (source-properties :target-type
                                      source-properties :member-name
                                      "sourceProperties")
                                     (replication-type :target-type
                                      replication-type :member-name
                                      "replicationType")
                                     (vcenter-client-id :target-type
                                      vcenter-client-id :member-name
                                      "vcenterClientID")
                                     (application-id :target-type
                                      application-id :member-name
                                      "applicationID")
                                     (user-provided-id :target-type
                                      bounded-string :member-name
                                      "userProvidedID")
                                     (fqdn-for-action-framework :target-type
                                      bounded-string :member-name
                                      "fqdnForActionFramework")
                                     (connector-action :target-type
                                      source-server-connector-action
                                      :member-name "connectorAction"))
                                    (:shape-name "SourceServer"))

(smithy/sdk/shapes:define-structure source-server-action-document
                                    common-lisp:nil
                                    ((action-id :target-type action-id
                                      :member-name "actionID")
                                     (action-name :target-type action-name
                                      :member-name "actionName")
                                     (document-identifier :target-type
                                      bounded-string :member-name
                                      "documentIdentifier")
                                     (order :target-type order-type
                                      :member-name "order")
                                     (document-version :target-type
                                      document-version :member-name
                                      "documentVersion")
                                     (active :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "active")
                                     (timeout-seconds :target-type
                                      strictly-positive-integer :member-name
                                      "timeoutSeconds")
                                     (must-succeed-for-cutover :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "mustSucceedForCutover")
                                     (parameters :target-type
                                      ssm-document-parameters :member-name
                                      "parameters")
                                     (external-parameters :target-type
                                      ssm-document-external-parameters
                                      :member-name "externalParameters")
                                     (description :target-type
                                      action-description :member-name
                                      "description")
                                     (category :target-type action-category
                                      :member-name "category"))
                                    (:shape-name "SourceServerActionDocument"))

(smithy/sdk/shapes:define-list source-server-action-documents :member
                               source-server-action-document)

(smithy/sdk/shapes:define-structure source-server-actions-request-filters
                                    common-lisp:nil
                                    ((action-ids :target-type action-ids
                                      :member-name "actionIDs"))
                                    (:shape-name
                                     "SourceServerActionsRequestFilters"))

(smithy/sdk/shapes:define-structure source-server-connector-action
                                    common-lisp:nil
                                    ((credentials-secret-arn :target-type
                                      secret-arn :member-name
                                      "credentialsSecretArn")
                                     (connector-arn :target-type connector-arn
                                      :member-name "connectorArn"))
                                    (:shape-name "SourceServerConnectorAction"))

(smithy/sdk/shapes:define-type source-server-id smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-list source-servers-list :member source-server)

(smithy/sdk/shapes:define-structure ssm-document common-lisp:nil
                                    ((action-name :target-type bounded-string
                                      :required common-lisp:t :member-name
                                      "actionName")
                                     (ssm-document-name :target-type
                                      ssm-document-name :required common-lisp:t
                                      :member-name "ssmDocumentName")
                                     (timeout-seconds :target-type
                                      strictly-positive-integer :member-name
                                      "timeoutSeconds")
                                     (must-succeed-for-cutover :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "mustSucceedForCutover")
                                     (parameters :target-type
                                      ssm-document-parameters :member-name
                                      "parameters")
                                     (external-parameters :target-type
                                      ssm-document-external-parameters
                                      :member-name "externalParameters"))
                                    (:shape-name "SsmDocument"))

(smithy/sdk/shapes:define-map ssm-document-external-parameters :key
                              ssm-document-parameter-name :value
                              ssm-external-parameter)

(smithy/sdk/shapes:define-type ssm-document-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ssm-document-parameter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map ssm-document-parameters :key
                              ssm-document-parameter-name :value
                              ssm-parameter-store-parameters)

(smithy/sdk/shapes:define-type ssm-document-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ssm-documents :member ssm-document)

(smithy/sdk/shapes:define-union ssm-external-parameter common-lisp:nil
                                ((dynamic-path :target-type jmes-path-string
                                  :member-name "dynamicPath"))
                                (:shape-name "SsmExternalParameter"))

(smithy/sdk/shapes:define-type ssm-instance-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ssm-parameter-store-parameter
                                    common-lisp:nil
                                    ((parameter-type :target-type
                                      ssm-parameter-store-parameter-type
                                      :required common-lisp:t :member-name
                                      "parameterType")
                                     (parameter-name :target-type
                                      ssm-parameter-store-parameter-name
                                      :required common-lisp:t :member-name
                                      "parameterName"))
                                    (:shape-name "SsmParameterStoreParameter"))

(smithy/sdk/shapes:define-type ssm-parameter-store-parameter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ssm-parameter-store-parameter-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ssm-parameter-store-parameters :member
                               ssm-parameter-store-parameter)

(smithy/sdk/shapes:define-structure start-cutover-request common-lisp:nil
                                    ((source-server-ids :target-type
                                      start-cutover-request-source-server-ids
                                      :required common-lisp:t :member-name
                                      "sourceServerIDs")
                                     (tags :target-type tags-map :member-name
                                      "tags")
                                     (account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name "StartCutoverRequest"))

(smithy/sdk/shapes:define-list start-cutover-request-source-server-ids :member
                               source-server-id)

(smithy/sdk/shapes:define-structure start-cutover-response common-lisp:nil
                                    ((job :target-type job :member-name "job"))
                                    (:shape-name "StartCutoverResponse"))

(smithy/sdk/shapes:define-structure start-export-request common-lisp:nil
                                    ((s3bucket :target-type s3bucket-name
                                      :required common-lisp:t :member-name
                                      "s3Bucket")
                                     (s3key :target-type s3key :required
                                      common-lisp:t :member-name "s3Key")
                                     (s3bucket-owner :target-type account-id
                                      :member-name "s3BucketOwner"))
                                    (:shape-name "StartExportRequest"))

(smithy/sdk/shapes:define-structure start-export-response common-lisp:nil
                                    ((export-task :target-type export-task
                                      :member-name "exportTask"))
                                    (:shape-name "StartExportResponse"))

(smithy/sdk/shapes:define-structure start-import-request common-lisp:nil
                                    ((client-token :target-type
                                      client-idempotency-token :member-name
                                      "clientToken")
                                     (s3bucket-source :target-type
                                      s3bucket-source :required common-lisp:t
                                      :member-name "s3BucketSource"))
                                    (:shape-name "StartImportRequest"))

(smithy/sdk/shapes:define-structure start-import-response common-lisp:nil
                                    ((import-task :target-type import-task
                                      :member-name "importTask"))
                                    (:shape-name "StartImportResponse"))

(smithy/sdk/shapes:define-structure start-replication-request common-lisp:nil
                                    ((source-server-id :target-type
                                      source-server-id :required common-lisp:t
                                      :member-name "sourceServerID")
                                     (account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name "StartReplicationRequest"))

(smithy/sdk/shapes:define-structure start-test-request common-lisp:nil
                                    ((source-server-ids :target-type
                                      start-test-request-source-server-ids
                                      :required common-lisp:t :member-name
                                      "sourceServerIDs")
                                     (tags :target-type tags-map :member-name
                                      "tags")
                                     (account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name "StartTestRequest"))

(smithy/sdk/shapes:define-list start-test-request-source-server-ids :member
                               source-server-id)

(smithy/sdk/shapes:define-structure start-test-response common-lisp:nil
                                    ((job :target-type job :member-name "job"))
                                    (:shape-name "StartTestResponse"))

(smithy/sdk/shapes:define-input stop-replication-request common-lisp:nil
                                ((source-server-id :target-type
                                  source-server-id :required common-lisp:t
                                  :member-name "sourceServerID")
                                 (account-id :target-type account-id
                                  :member-name "accountID"))
                                (:shape-name "StopReplicationRequest"))

(smithy/sdk/shapes:define-type strictly-positive-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-structure tag-resource-request common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name "resourceArn")
                                     (tags :target-type tags-map :required
                                      common-lisp:t :member-name "tags"))
                                    (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map tags-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-type target-instance-type-right-sizing-method
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure template-action-document common-lisp:nil
                                    ((action-id :target-type action-id
                                      :member-name "actionID")
                                     (action-name :target-type bounded-string
                                      :member-name "actionName")
                                     (document-identifier :target-type
                                      bounded-string :member-name
                                      "documentIdentifier")
                                     (order :target-type order-type
                                      :member-name "order")
                                     (document-version :target-type
                                      document-version :member-name
                                      "documentVersion")
                                     (active :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "active")
                                     (timeout-seconds :target-type
                                      strictly-positive-integer :member-name
                                      "timeoutSeconds")
                                     (must-succeed-for-cutover :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "mustSucceedForCutover")
                                     (parameters :target-type
                                      ssm-document-parameters :member-name
                                      "parameters")
                                     (operating-system :target-type
                                      operating-system-string :member-name
                                      "operatingSystem")
                                     (external-parameters :target-type
                                      ssm-document-external-parameters
                                      :member-name "externalParameters")
                                     (description :target-type
                                      action-description :member-name
                                      "description")
                                     (category :target-type action-category
                                      :member-name "category"))
                                    (:shape-name "TemplateActionDocument"))

(smithy/sdk/shapes:define-list template-action-documents :member
                               template-action-document)

(smithy/sdk/shapes:define-structure template-actions-request-filters
                                    common-lisp:nil
                                    ((action-ids :target-type action-ids
                                      :member-name "actionIDs"))
                                    (:shape-name
                                     "TemplateActionsRequestFilters"))

(smithy/sdk/shapes:define-structure terminate-target-instances-request
                                    common-lisp:nil
                                    ((source-server-ids :target-type
                                      terminate-target-instances-request-source-server-ids
                                      :required common-lisp:t :member-name
                                      "sourceServerIDs")
                                     (tags :target-type tags-map :member-name
                                      "tags")
                                     (account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name
                                     "TerminateTargetInstancesRequest"))

(smithy/sdk/shapes:define-list
 terminate-target-instances-request-source-server-ids :member source-server-id)

(smithy/sdk/shapes:define-structure terminate-target-instances-response
                                    common-lisp:nil
                                    ((job :target-type job :member-name "job"))
                                    (:shape-name
                                     "TerminateTargetInstancesResponse"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type large-bounded-string
                                  :required common-lisp:t :member-name
                                  "message")
                                 (service-code :target-type
                                  large-bounded-string :member-name
                                  "serviceCode")
                                 (quota-code :target-type large-bounded-string
                                  :member-name "quotaCode")
                                 (retry-after-seconds :target-type
                                  large-bounded-string :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type throughput smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure unarchive-application-request
                                    common-lisp:nil
                                    ((application-id :target-type
                                      application-id :required common-lisp:t
                                      :member-name "applicationID")
                                     (account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name "UnarchiveApplicationRequest"))

(smithy/sdk/shapes:define-structure unarchive-wave-request common-lisp:nil
                                    ((wave-id :target-type wave-id :required
                                      common-lisp:t :member-name "waveID")
                                     (account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name "UnarchiveWaveRequest"))

(smithy/sdk/shapes:define-error uninitialized-account-exception common-lisp:nil
                                ((message :target-type large-bounded-string
                                  :member-name "message")
                                 (code :target-type large-bounded-string
                                  :member-name "code"))
                                (:shape-name "UninitializedAccountException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure untag-resource-request common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name "resourceArn")
                                     (tag-keys :target-type tag-keys :required
                                      common-lisp:t :member-name "tagKeys"
                                      :http-query "tagKeys"))
                                    (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-structure update-application-request common-lisp:nil
                                    ((application-id :target-type
                                      application-id :required common-lisp:t
                                      :member-name "applicationID")
                                     (name :target-type application-name
                                      :member-name "name")
                                     (description :target-type
                                      application-description :member-name
                                      "description")
                                     (account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name "UpdateApplicationRequest"))

(smithy/sdk/shapes:define-input update-connector-request common-lisp:nil
                                ((connector-id :target-type connector-id
                                  :required common-lisp:t :member-name
                                  "connectorID")
                                 (name :target-type connector-name :member-name
                                  "name")
                                 (ssm-command-config :target-type
                                  connector-ssm-command-config :member-name
                                  "ssmCommandConfig"))
                                (:shape-name "UpdateConnectorRequest"))

(smithy/sdk/shapes:define-structure update-launch-configuration-request
                                    common-lisp:nil
                                    ((source-server-id :target-type
                                      source-server-id :required common-lisp:t
                                      :member-name "sourceServerID")
                                     (name :target-type small-bounded-string
                                      :member-name "name")
                                     (launch-disposition :target-type
                                      launch-disposition :member-name
                                      "launchDisposition")
                                     (target-instance-type-right-sizing-method
                                      :target-type
                                      target-instance-type-right-sizing-method
                                      :member-name
                                      "targetInstanceTypeRightSizingMethod")
                                     (copy-private-ip :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "copyPrivateIp")
                                     (copy-tags :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "copyTags")
                                     (licensing :target-type licensing
                                      :member-name "licensing")
                                     (boot-mode :target-type boot-mode
                                      :member-name "bootMode")
                                     (post-launch-actions :target-type
                                      post-launch-actions :member-name
                                      "postLaunchActions")
                                     (enable-map-auto-tagging :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "enableMapAutoTagging")
                                     (map-auto-tagging-mpe-id :target-type
                                      tag-value :member-name
                                      "mapAutoTaggingMpeID")
                                     (account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name
                                     "UpdateLaunchConfigurationRequest"))

(smithy/sdk/shapes:define-structure
 update-launch-configuration-template-request common-lisp:nil
 ((launch-configuration-template-id :target-type
   launch-configuration-template-id :required common-lisp:t :member-name
   "launchConfigurationTemplateID")
  (post-launch-actions :target-type post-launch-actions :member-name
   "postLaunchActions")
  (enable-map-auto-tagging :target-type smithy/sdk/smithy-types:boolean
   :member-name "enableMapAutoTagging")
  (map-auto-tagging-mpe-id :target-type tag-value :member-name
   "mapAutoTaggingMpeID")
  (launch-disposition :target-type launch-disposition :member-name
   "launchDisposition")
  (target-instance-type-right-sizing-method :target-type
   target-instance-type-right-sizing-method :member-name
   "targetInstanceTypeRightSizingMethod")
  (copy-private-ip :target-type smithy/sdk/smithy-types:boolean :member-name
   "copyPrivateIp")
  (associate-public-ip-address :target-type smithy/sdk/smithy-types:boolean
   :member-name "associatePublicIpAddress")
  (copy-tags :target-type smithy/sdk/smithy-types:boolean :member-name
   "copyTags")
  (licensing :target-type licensing :member-name "licensing")
  (boot-mode :target-type boot-mode :member-name "bootMode")
  (small-volume-max-size :target-type positive-integer :member-name
   "smallVolumeMaxSize")
  (small-volume-conf :target-type launch-template-disk-conf :member-name
   "smallVolumeConf")
  (large-volume-conf :target-type launch-template-disk-conf :member-name
   "largeVolumeConf"))
 (:shape-name "UpdateLaunchConfigurationTemplateRequest"))

(smithy/sdk/shapes:define-structure update-replication-configuration-request
                                    common-lisp:nil
                                    ((source-server-id :target-type
                                      source-server-id :required common-lisp:t
                                      :member-name "sourceServerID")
                                     (name :target-type small-bounded-string
                                      :member-name "name")
                                     (staging-area-subnet-id :target-type
                                      subnet-id :member-name
                                      "stagingAreaSubnetId")
                                     (associate-default-security-group
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "associateDefaultSecurityGroup")
                                     (replication-servers-security-groups-ids
                                      :target-type
                                      replication-servers-security-groups-ids
                                      :member-name
                                      "replicationServersSecurityGroupsIDs")
                                     (replication-server-instance-type
                                      :target-type ec2instance-type
                                      :member-name
                                      "replicationServerInstanceType")
                                     (use-dedicated-replication-server
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "useDedicatedReplicationServer")
                                     (default-large-staging-disk-type
                                      :target-type
                                      replication-configuration-default-large-staging-disk-type
                                      :member-name
                                      "defaultLargeStagingDiskType")
                                     (replicated-disks :target-type
                                      replication-configuration-replicated-disks
                                      :member-name "replicatedDisks")
                                     (ebs-encryption :target-type
                                      replication-configuration-ebs-encryption
                                      :member-name "ebsEncryption")
                                     (ebs-encryption-key-arn :target-type arn
                                      :member-name "ebsEncryptionKeyArn")
                                     (bandwidth-throttling :target-type
                                      bandwidth-throttling :member-name
                                      "bandwidthThrottling")
                                     (data-plane-routing :target-type
                                      replication-configuration-data-plane-routing
                                      :member-name "dataPlaneRouting")
                                     (create-public-ip :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "createPublicIP")
                                     (staging-area-tags :target-type tags-map
                                      :member-name "stagingAreaTags")
                                     (use-fips-endpoint :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "useFipsEndpoint")
                                     (account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name
                                     "UpdateReplicationConfigurationRequest"))

(smithy/sdk/shapes:define-structure
 update-replication-configuration-template-request common-lisp:nil
 ((replication-configuration-template-id :target-type
   replication-configuration-template-id :required common-lisp:t :member-name
   "replicationConfigurationTemplateID")
  (arn :target-type arn :member-name "arn")
  (staging-area-subnet-id :target-type subnet-id :member-name
   "stagingAreaSubnetId")
  (associate-default-security-group :target-type
   smithy/sdk/smithy-types:boolean :member-name
   "associateDefaultSecurityGroup")
  (replication-servers-security-groups-ids :target-type
   replication-servers-security-groups-ids :member-name
   "replicationServersSecurityGroupsIDs")
  (replication-server-instance-type :target-type ec2instance-type :member-name
   "replicationServerInstanceType")
  (use-dedicated-replication-server :target-type
   smithy/sdk/smithy-types:boolean :member-name
   "useDedicatedReplicationServer")
  (default-large-staging-disk-type :target-type
   replication-configuration-default-large-staging-disk-type :member-name
   "defaultLargeStagingDiskType")
  (ebs-encryption :target-type replication-configuration-ebs-encryption
   :member-name "ebsEncryption")
  (ebs-encryption-key-arn :target-type arn :member-name "ebsEncryptionKeyArn")
  (bandwidth-throttling :target-type bandwidth-throttling :member-name
   "bandwidthThrottling")
  (data-plane-routing :target-type replication-configuration-data-plane-routing
   :member-name "dataPlaneRouting")
  (create-public-ip :target-type smithy/sdk/smithy-types:boolean :member-name
   "createPublicIP")
  (staging-area-tags :target-type tags-map :member-name "stagingAreaTags")
  (use-fips-endpoint :target-type smithy/sdk/smithy-types:boolean :member-name
   "useFipsEndpoint"))
 (:shape-name "UpdateReplicationConfigurationTemplateRequest"))

(smithy/sdk/shapes:define-structure
 update-source-server-replication-type-request common-lisp:nil
 ((source-server-id :target-type source-server-id :required common-lisp:t
   :member-name "sourceServerID")
  (replication-type :target-type replication-type :required common-lisp:t
   :member-name "replicationType")
  (account-id :target-type account-id :member-name "accountID"))
 (:shape-name "UpdateSourceServerReplicationTypeRequest"))

(smithy/sdk/shapes:define-input update-source-server-request common-lisp:nil
                                ((account-id :target-type account-id
                                  :member-name "accountID")
                                 (source-server-id :target-type
                                  source-server-id :required common-lisp:t
                                  :member-name "sourceServerID")
                                 (connector-action :target-type
                                  source-server-connector-action :member-name
                                  "connectorAction"))
                                (:shape-name "UpdateSourceServerRequest"))

(smithy/sdk/shapes:define-structure update-wave-request common-lisp:nil
                                    ((wave-id :target-type wave-id :required
                                      common-lisp:t :member-name "waveID")
                                     (name :target-type wave-name :member-name
                                      "name")
                                     (description :target-type wave-description
                                      :member-name "description")
                                     (account-id :target-type account-id
                                      :member-name "accountID"))
                                    (:shape-name "UpdateWaveRequest"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type large-bounded-string
                                  :member-name "message")
                                 (code :target-type large-bounded-string
                                  :member-name "code")
                                 (reason :target-type
                                  validation-exception-reason :member-name
                                  "reason")
                                 (field-list :target-type
                                  validation-exception-field-list :member-name
                                  "fieldList"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type large-bounded-string
                                      :member-name "name")
                                     (message :target-type large-bounded-string
                                      :member-name "message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-type validation-exception-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure vcenter-client common-lisp:nil
                                    ((vcenter-client-id :target-type
                                      vcenter-client-id :member-name
                                      "vcenterClientID")
                                     (arn :target-type arn :member-name "arn")
                                     (hostname :target-type bounded-string
                                      :member-name "hostname")
                                     (vcenter-uuid :target-type bounded-string
                                      :member-name "vcenterUUID")
                                     (datacenter-name :target-type
                                      bounded-string :member-name
                                      "datacenterName")
                                     (last-seen-datetime :target-type
                                      iso8601datetime-string :member-name
                                      "lastSeenDatetime")
                                     (source-server-tags :target-type tags-map
                                      :member-name "sourceServerTags")
                                     (tags :target-type tags-map :member-name
                                      "tags"))
                                    (:shape-name "VcenterClient"))

(smithy/sdk/shapes:define-type vcenter-client-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list vcenter-client-list :member vcenter-client)

common-lisp:nil

(smithy/sdk/shapes:define-type volume-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure wave common-lisp:nil
                                    ((wave-id :target-type wave-id :member-name
                                      "waveID")
                                     (arn :target-type arn :member-name "arn")
                                     (name :target-type wave-name :member-name
                                      "name")
                                     (description :target-type wave-description
                                      :member-name "description")
                                     (is-archived :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isArchived")
                                     (wave-aggregated-status :target-type
                                      wave-aggregated-status :member-name
                                      "waveAggregatedStatus")
                                     (creation-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "creationDateTime")
                                     (last-modified-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "lastModifiedDateTime")
                                     (tags :target-type tags-map :member-name
                                      "tags"))
                                    (:shape-name "Wave"))

(smithy/sdk/shapes:define-structure wave-aggregated-status common-lisp:nil
                                    ((last-update-date-time :target-type
                                      iso8601datetime-string :member-name
                                      "lastUpdateDateTime")
                                     (replication-started-date-time
                                      :target-type iso8601datetime-string
                                      :member-name
                                      "replicationStartedDateTime")
                                     (health-status :target-type
                                      wave-health-status :member-name
                                      "healthStatus")
                                     (progress-status :target-type
                                      wave-progress-status :member-name
                                      "progressStatus")
                                     (total-applications :target-type
                                      positive-integer :member-name
                                      "totalApplications"))
                                    (:shape-name "WaveAggregatedStatus"))

(smithy/sdk/shapes:define-type wave-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type wave-health-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type wave-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list wave-ids-filter :member wave-id)

(smithy/sdk/shapes:define-type wave-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type wave-progress-status
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-list waves-list :member wave)

(smithy/sdk/operation:define-operation archive-application :shape-name
                                       "ArchiveApplication" :input
                                       archive-application-request :output
                                       application :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri
                                       "/ArchiveApplication" :code 200)

(smithy/sdk/operation:define-operation archive-wave :shape-name "ArchiveWave"
                                       :input archive-wave-request :output wave
                                       :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri "/ArchiveWave" :code
                                       200)

(smithy/sdk/operation:define-operation associate-applications :shape-name
                                       "AssociateApplications" :input
                                       associate-applications-request :output
                                       associate-applications-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri
                                       "/AssociateApplications" :code 200)

(smithy/sdk/operation:define-operation associate-source-servers :shape-name
                                       "AssociateSourceServers" :input
                                       associate-source-servers-request :output
                                       associate-source-servers-response
                                       :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri
                                       "/AssociateSourceServers" :code 200)

(smithy/sdk/operation:define-operation change-server-life-cycle-state
                                       :shape-name "ChangeServerLifeCycleState"
                                       :input
                                       change-server-life-cycle-state-request
                                       :output source-server :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ChangeServerLifeCycleState" :code 200)

(smithy/sdk/operation:define-operation create-application :shape-name
                                       "CreateApplication" :input
                                       create-application-request :output
                                       application :errors
                                       (conflict-exception
                                        service-quota-exceeded-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri "/CreateApplication"
                                       :code 201)

(smithy/sdk/operation:define-operation create-connector :shape-name
                                       "CreateConnector" :input
                                       create-connector-request :output
                                       connector :errors
                                       (uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri "/CreateConnector"
                                       :code 201)

(smithy/sdk/operation:define-operation create-launch-configuration-template
                                       :shape-name
                                       "CreateLaunchConfigurationTemplate"
                                       :input
                                       create-launch-configuration-template-request
                                       :output launch-configuration-template
                                       :errors
                                       (access-denied-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/CreateLaunchConfigurationTemplate"
                                       :code 201)

(smithy/sdk/operation:define-operation
 create-replication-configuration-template :shape-name
 "CreateReplicationConfigurationTemplate" :input
 create-replication-configuration-template-request :output
 replication-configuration-template :errors
 (access-denied-exception uninitialized-account-exception validation-exception)
 :method "POST" :uri "/CreateReplicationConfigurationTemplate" :code 201)

(smithy/sdk/operation:define-operation create-wave :shape-name "CreateWave"
                                       :input create-wave-request :output wave
                                       :errors
                                       (conflict-exception
                                        service-quota-exceeded-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri "/CreateWave" :code
                                       201)

(smithy/sdk/operation:define-operation delete-application :shape-name
                                       "DeleteApplication" :input
                                       delete-application-request :output
                                       delete-application-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri "/DeleteApplication"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-connector :shape-name
                                       "DeleteConnector" :input
                                       delete-connector-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri "/DeleteConnector"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-job :shape-name "DeleteJob"
                                       :input delete-job-request :output
                                       delete-job-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri "/DeleteJob" :code
                                       204)

(smithy/sdk/operation:define-operation delete-launch-configuration-template
                                       :shape-name
                                       "DeleteLaunchConfigurationTemplate"
                                       :input
                                       delete-launch-configuration-template-request
                                       :output
                                       delete-launch-configuration-template-response
                                       :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri
                                       "/DeleteLaunchConfigurationTemplate"
                                       :code 204)

(smithy/sdk/operation:define-operation
 delete-replication-configuration-template :shape-name
 "DeleteReplicationConfigurationTemplate" :input
 delete-replication-configuration-template-request :output
 delete-replication-configuration-template-response :errors
 (conflict-exception resource-not-found-exception
  uninitialized-account-exception)
 :method "POST" :uri "/DeleteReplicationConfigurationTemplate" :code 204)

(smithy/sdk/operation:define-operation delete-source-server :shape-name
                                       "DeleteSourceServer" :input
                                       delete-source-server-request :output
                                       delete-source-server-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri
                                       "/DeleteSourceServer" :code 204)

(smithy/sdk/operation:define-operation delete-vcenter-client :shape-name
                                       "DeleteVcenterClient" :input
                                       delete-vcenter-client-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/DeleteVcenterClient" :code 204)

(smithy/sdk/operation:define-operation delete-wave :shape-name "DeleteWave"
                                       :input delete-wave-request :output
                                       delete-wave-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri "/DeleteWave" :code
                                       204)

(smithy/sdk/operation:define-operation describe-job-log-items :shape-name
                                       "DescribeJobLogItems" :input
                                       describe-job-log-items-request :output
                                       describe-job-log-items-response :errors
                                       (uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/DescribeJobLogItems" :code 200)

(smithy/sdk/operation:define-operation describe-jobs :shape-name "DescribeJobs"
                                       :input describe-jobs-request :output
                                       describe-jobs-response :errors
                                       (uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri "/DescribeJobs"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-launch-configuration-templates
                                       :shape-name
                                       "DescribeLaunchConfigurationTemplates"
                                       :input
                                       describe-launch-configuration-templates-request
                                       :output
                                       describe-launch-configuration-templates-response
                                       :errors
                                       (resource-not-found-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/DescribeLaunchConfigurationTemplates"
                                       :code 200)

(smithy/sdk/operation:define-operation
 describe-replication-configuration-templates :shape-name
 "DescribeReplicationConfigurationTemplates" :input
 describe-replication-configuration-templates-request :output
 describe-replication-configuration-templates-response :errors
 (resource-not-found-exception uninitialized-account-exception
  validation-exception)
 :method "POST" :uri "/DescribeReplicationConfigurationTemplates" :code 200)

(smithy/sdk/operation:define-operation describe-source-servers :shape-name
                                       "DescribeSourceServers" :input
                                       describe-source-servers-request :output
                                       describe-source-servers-response :errors
                                       (uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/DescribeSourceServers" :code 200)

(smithy/sdk/operation:define-operation describe-vcenter-clients :shape-name
                                       "DescribeVcenterClients" :input
                                       describe-vcenter-clients-request :output
                                       describe-vcenter-clients-response
                                       :errors
                                       (resource-not-found-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/DescribeVcenterClients" :code 200)

(smithy/sdk/operation:define-operation disassociate-applications :shape-name
                                       "DisassociateApplications" :input
                                       disassociate-applications-request
                                       :output
                                       disassociate-applications-response
                                       :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri
                                       "/DisassociateApplications" :code 200)

(smithy/sdk/operation:define-operation disassociate-source-servers :shape-name
                                       "DisassociateSourceServers" :input
                                       disassociate-source-servers-request
                                       :output
                                       disassociate-source-servers-response
                                       :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri
                                       "/DisassociateSourceServers" :code 200)

(smithy/sdk/operation:define-operation disconnect-from-service :shape-name
                                       "DisconnectFromService" :input
                                       disconnect-from-service-request :output
                                       source-server :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri
                                       "/DisconnectFromService" :code 200)

(smithy/sdk/operation:define-operation finalize-cutover :shape-name
                                       "FinalizeCutover" :input
                                       finalize-cutover-request :output
                                       source-server :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri "/FinalizeCutover"
                                       :code 200)

(smithy/sdk/operation:define-operation get-launch-configuration :shape-name
                                       "GetLaunchConfiguration" :input
                                       get-launch-configuration-request :output
                                       launch-configuration :errors
                                       (resource-not-found-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri
                                       "/GetLaunchConfiguration" :code 200)

(smithy/sdk/operation:define-operation get-replication-configuration
                                       :shape-name
                                       "GetReplicationConfiguration" :input
                                       get-replication-configuration-request
                                       :output replication-configuration
                                       :errors
                                       (resource-not-found-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri
                                       "/GetReplicationConfiguration" :code 200)

(smithy/sdk/operation:define-operation initialize-service :shape-name
                                       "InitializeService" :input
                                       initialize-service-request :output
                                       initialize-service-response :errors
                                       (access-denied-exception
                                        validation-exception)
                                       :method "POST" :uri "/InitializeService"
                                       :code 204)

(smithy/sdk/operation:define-operation list-applications :shape-name
                                       "ListApplications" :input
                                       list-applications-request :output
                                       list-applications-response :errors
                                       (uninitialized-account-exception)
                                       :method "POST" :uri "/ListApplications"
                                       :code 200)

(smithy/sdk/operation:define-operation list-connectors :shape-name
                                       "ListConnectors" :input
                                       list-connectors-request :output
                                       list-connectors-response :errors
                                       (uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri "/ListConnectors"
                                       :code 200)

(smithy/sdk/operation:define-operation list-export-errors :shape-name
                                       "ListExportErrors" :input
                                       list-export-errors-request :output
                                       list-export-errors-response :errors
                                       (uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri "/ListExportErrors"
                                       :code 200)

(smithy/sdk/operation:define-operation list-exports :shape-name "ListExports"
                                       :input list-exports-request :output
                                       list-exports-response :errors
                                       (uninitialized-account-exception)
                                       :method "POST" :uri "/ListExports" :code
                                       200)

(smithy/sdk/operation:define-operation list-import-errors :shape-name
                                       "ListImportErrors" :input
                                       list-import-errors-request :output
                                       list-import-errors-response :errors
                                       (uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri "/ListImportErrors"
                                       :code 200)

(smithy/sdk/operation:define-operation list-imports :shape-name "ListImports"
                                       :input list-imports-request :output
                                       list-imports-response :errors
                                       (uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri "/ListImports" :code
                                       200)

(smithy/sdk/operation:define-operation list-managed-accounts :shape-name
                                       "ListManagedAccounts" :input
                                       list-managed-accounts-request :output
                                       list-managed-accounts-response :errors
                                       (uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ListManagedAccounts" :code 200)

(smithy/sdk/operation:define-operation list-source-server-actions :shape-name
                                       "ListSourceServerActions" :input
                                       list-source-server-actions-request
                                       :output
                                       list-source-server-actions-response
                                       :errors
                                       (resource-not-found-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri
                                       "/ListSourceServerActions" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation list-template-actions :shape-name
                                       "ListTemplateActions" :input
                                       list-template-actions-request :output
                                       list-template-actions-response :errors
                                       (resource-not-found-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri
                                       "/ListTemplateActions" :code 200)

(smithy/sdk/operation:define-operation list-waves :shape-name "ListWaves"
                                       :input list-waves-request :output
                                       list-waves-response :errors
                                       (uninitialized-account-exception)
                                       :method "POST" :uri "/ListWaves" :code
                                       200)

(smithy/sdk/operation:define-operation mark-as-archived :shape-name
                                       "MarkAsArchived" :input
                                       mark-as-archived-request :output
                                       source-server :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri "/MarkAsArchived"
                                       :code 200)

(smithy/sdk/operation:define-operation pause-replication :shape-name
                                       "PauseReplication" :input
                                       pause-replication-request :output
                                       source-server :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri "/PauseReplication"
                                       :code 200)

(smithy/sdk/operation:define-operation put-source-server-action :shape-name
                                       "PutSourceServerAction" :input
                                       put-source-server-action-request :output
                                       source-server-action-document :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/PutSourceServerAction" :code 200)

(smithy/sdk/operation:define-operation put-template-action :shape-name
                                       "PutTemplateAction" :input
                                       put-template-action-request :output
                                       template-action-document :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri "/PutTemplateAction"
                                       :code 200)

(smithy/sdk/operation:define-operation remove-source-server-action :shape-name
                                       "RemoveSourceServerAction" :input
                                       remove-source-server-action-request
                                       :output
                                       remove-source-server-action-response
                                       :errors
                                       (resource-not-found-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/RemoveSourceServerAction" :code 204)

(smithy/sdk/operation:define-operation remove-template-action :shape-name
                                       "RemoveTemplateAction" :input
                                       remove-template-action-request :output
                                       remove-template-action-response :errors
                                       (resource-not-found-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/RemoveTemplateAction" :code 204)

(smithy/sdk/operation:define-operation resume-replication :shape-name
                                       "ResumeReplication" :input
                                       resume-replication-request :output
                                       source-server :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri "/ResumeReplication"
                                       :code 200)

(smithy/sdk/operation:define-operation retry-data-replication :shape-name
                                       "RetryDataReplication" :input
                                       retry-data-replication-request :output
                                       source-server :errors
                                       (resource-not-found-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/RetryDataReplication" :code 200)

(smithy/sdk/operation:define-operation start-cutover :shape-name "StartCutover"
                                       :input start-cutover-request :output
                                       start-cutover-response :errors
                                       (conflict-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri "/StartCutover"
                                       :code 202)

(smithy/sdk/operation:define-operation start-export :shape-name "StartExport"
                                       :input start-export-request :output
                                       start-export-response :errors
                                       (service-quota-exceeded-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri "/StartExport" :code
                                       202)

(smithy/sdk/operation:define-operation start-import :shape-name "StartImport"
                                       :input start-import-request :output
                                       start-import-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri "/StartImport" :code
                                       202)

(smithy/sdk/operation:define-operation start-replication :shape-name
                                       "StartReplication" :input
                                       start-replication-request :output
                                       source-server :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri "/StartReplication"
                                       :code 200)

(smithy/sdk/operation:define-operation start-test :shape-name "StartTest"
                                       :input start-test-request :output
                                       start-test-response :errors
                                       (conflict-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri "/StartTest" :code
                                       202)

(smithy/sdk/operation:define-operation stop-replication :shape-name
                                       "StopReplication" :input
                                       stop-replication-request :output
                                       source-server :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri "/StopReplication"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation terminate-target-instances :shape-name
                                       "TerminateTargetInstances" :input
                                       terminate-target-instances-request
                                       :output
                                       terminate-target-instances-response
                                       :errors
                                       (conflict-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/TerminateTargetInstances" :code 202)

(smithy/sdk/operation:define-operation unarchive-application :shape-name
                                       "UnarchiveApplication" :input
                                       unarchive-application-request :output
                                       application :errors
                                       (resource-not-found-exception
                                        service-quota-exceeded-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri
                                       "/UnarchiveApplication" :code 200)

(smithy/sdk/operation:define-operation unarchive-wave :shape-name
                                       "UnarchiveWave" :input
                                       unarchive-wave-request :output wave
                                       :errors
                                       (resource-not-found-exception
                                        service-quota-exceeded-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri "/UnarchiveWave"
                                       :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation update-application :shape-name
                                       "UpdateApplication" :input
                                       update-application-request :output
                                       application :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri "/UpdateApplication"
                                       :code 200)

(smithy/sdk/operation:define-operation update-connector :shape-name
                                       "UpdateConnector" :input
                                       update-connector-request :output
                                       connector :errors
                                       (resource-not-found-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri "/UpdateConnector"
                                       :code 200)

(smithy/sdk/operation:define-operation update-launch-configuration :shape-name
                                       "UpdateLaunchConfiguration" :input
                                       update-launch-configuration-request
                                       :output launch-configuration :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/UpdateLaunchConfiguration" :code 200)

(smithy/sdk/operation:define-operation update-launch-configuration-template
                                       :shape-name
                                       "UpdateLaunchConfigurationTemplate"
                                       :input
                                       update-launch-configuration-template-request
                                       :output launch-configuration-template
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/UpdateLaunchConfigurationTemplate"
                                       :code 200)

(smithy/sdk/operation:define-operation update-replication-configuration
                                       :shape-name
                                       "UpdateReplicationConfiguration" :input
                                       update-replication-configuration-request
                                       :output replication-configuration
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/UpdateReplicationConfiguration" :code
                                       200)

(smithy/sdk/operation:define-operation
 update-replication-configuration-template :shape-name
 "UpdateReplicationConfigurationTemplate" :input
 update-replication-configuration-template-request :output
 replication-configuration-template :errors
 (access-denied-exception resource-not-found-exception
  uninitialized-account-exception validation-exception)
 :method "POST" :uri "/UpdateReplicationConfigurationTemplate" :code 200)

(smithy/sdk/operation:define-operation update-source-server :shape-name
                                       "UpdateSourceServer" :input
                                       update-source-server-request :output
                                       source-server :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri
                                       "/UpdateSourceServer" :code 200)

(smithy/sdk/operation:define-operation update-source-server-replication-type
                                       :shape-name
                                       "UpdateSourceServerReplicationType"
                                       :input
                                       update-source-server-replication-type-request
                                       :output source-server :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        uninitialized-account-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/UpdateSourceServerReplicationType"
                                       :code 200)

(smithy/sdk/operation:define-operation update-wave :shape-name "UpdateWave"
                                       :input update-wave-request :output wave
                                       :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        uninitialized-account-exception)
                                       :method "POST" :uri "/UpdateWave" :code
                                       200)
