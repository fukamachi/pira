(uiop/package:define-package #:pira/migration-hub (:use)
                             (:export #:awsmigration-hub #:application-id
                              #:application-ids #:application-state
                              #:application-state-list #:application-status
                              #:associate-created-artifact
                              #:associate-discovered-resource
                              #:associate-source-resource #:configuration-id
                              #:create-progress-update-stream
                              #:created-artifact #:created-artifact-description
                              #:created-artifact-list #:created-artifact-name
                              #:delete-progress-update-stream
                              #:describe-application-state
                              #:describe-migration-task
                              #:disassociate-created-artifact
                              #:disassociate-discovered-resource
                              #:disassociate-source-resource
                              #:discovered-resource
                              #:discovered-resource-description
                              #:discovered-resource-list #:dry-run
                              #:error-message #:import-migration-task
                              #:latest-resource-attribute-list
                              #:list-application-states
                              #:list-created-artifacts
                              #:list-discovered-resources
                              #:list-migration-task-updates
                              #:list-migration-tasks
                              #:list-progress-update-streams
                              #:list-source-resources #:max-results
                              #:max-results-created-artifacts
                              #:max-results-resources
                              #:max-results-source-resources #:migration-task
                              #:migration-task-name #:migration-task-summary
                              #:migration-task-summary-list
                              #:migration-task-update
                              #:migration-task-update-list
                              #:next-update-seconds #:notify-application-state
                              #:notify-migration-task-state #:progress-percent
                              #:progress-update-stream
                              #:progress-update-stream-summary
                              #:progress-update-stream-summary-list
                              #:put-resource-attributes #:resource-attribute
                              #:resource-attribute-list
                              #:resource-attribute-type
                              #:resource-attribute-value #:resource-name
                              #:retry-after-seconds #:source-resource
                              #:source-resource-description
                              #:source-resource-list #:source-resource-name
                              #:status #:status-detail #:task #:token
                              #:update-date-time #:update-type))
(common-lisp:in-package #:pira/migration-hub)

(smithy/sdk/service:define-service awsmigration-hub :shape-name
                                   "AWSMigrationHub" :version "2017-05-31"
                                   :title "AWS Migration Hub" :operations
                                   '(associate-created-artifact
                                     associate-discovered-resource
                                     associate-source-resource
                                     create-progress-update-stream
                                     delete-progress-update-stream
                                     describe-application-state
                                     describe-migration-task
                                     disassociate-created-artifact
                                     disassociate-discovered-resource
                                     disassociate-source-resource
                                     import-migration-task
                                     list-application-states
                                     list-created-artifacts
                                     list-discovered-resources
                                     list-migration-tasks
                                     list-migration-task-updates
                                     list-progress-update-streams
                                     list-source-resources
                                     notify-application-state
                                     notify-migration-task-state
                                     put-resource-attributes)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Migration Hub")
                                      ("arnNamespace" . "mgh")
                                      ("cloudFormationName" . "MigrationHub")
                                      ("cloudTrailEventSource"
                                       . "migrationhub.amazonaws.com")
                                      ("docId" . "AWSMigrationHub-2017-05-31")
                                      ("endpointPrefix" . "mgh"))
                                     ("aws.auth#sigv4" ("name" . "mgh"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type application-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list application-ids :member application-id)

(smithy/sdk/shapes:define-structure application-state common-lisp:nil
                                    ((application-id :target-type
                                      application-id :member-name
                                      "ApplicationId")
                                     (application-status :target-type
                                      application-status :member-name
                                      "ApplicationStatus")
                                     (last-updated-time :target-type
                                      update-date-time :member-name
                                      "LastUpdatedTime"))
                                    (:shape-name "ApplicationState"))

(smithy/sdk/shapes:define-list application-state-list :member application-state)

(smithy/sdk/shapes:define-enum application-status
    common-lisp:nil
  (:not-started "NOT_STARTED")
  (:in-progress "IN_PROGRESS")
  (:completed "COMPLETED"))

(smithy/sdk/shapes:define-input associate-created-artifact-request
                                common-lisp:nil
                                ((progress-update-stream :target-type
                                  progress-update-stream :required
                                  common-lisp:t :member-name
                                  "ProgressUpdateStream")
                                 (migration-task-name :target-type
                                  migration-task-name :required common-lisp:t
                                  :member-name "MigrationTaskName")
                                 (created-artifact :target-type
                                  created-artifact :required common-lisp:t
                                  :member-name "CreatedArtifact")
                                 (dry-run :target-type dry-run :member-name
                                  "DryRun"))
                                (:shape-name "AssociateCreatedArtifactRequest"))

(smithy/sdk/shapes:define-output associate-created-artifact-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "AssociateCreatedArtifactResult"))

(smithy/sdk/shapes:define-input associate-discovered-resource-request
                                common-lisp:nil
                                ((progress-update-stream :target-type
                                  progress-update-stream :required
                                  common-lisp:t :member-name
                                  "ProgressUpdateStream")
                                 (migration-task-name :target-type
                                  migration-task-name :required common-lisp:t
                                  :member-name "MigrationTaskName")
                                 (discovered-resource :target-type
                                  discovered-resource :required common-lisp:t
                                  :member-name "DiscoveredResource")
                                 (dry-run :target-type dry-run :member-name
                                  "DryRun"))
                                (:shape-name
                                 "AssociateDiscoveredResourceRequest"))

(smithy/sdk/shapes:define-output associate-discovered-resource-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "AssociateDiscoveredResourceResult"))

(smithy/sdk/shapes:define-input associate-source-resource-request
                                common-lisp:nil
                                ((progress-update-stream :target-type
                                  progress-update-stream :required
                                  common-lisp:t :member-name
                                  "ProgressUpdateStream")
                                 (migration-task-name :target-type
                                  migration-task-name :required common-lisp:t
                                  :member-name "MigrationTaskName")
                                 (source-resource :target-type source-resource
                                  :required common-lisp:t :member-name
                                  "SourceResource")
                                 (dry-run :target-type dry-run :member-name
                                  "DryRun"))
                                (:shape-name "AssociateSourceResourceRequest"))

(smithy/sdk/shapes:define-output associate-source-resource-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "AssociateSourceResourceResult"))

(smithy/sdk/shapes:define-type configuration-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-progress-update-stream-request
                                common-lisp:nil
                                ((progress-update-stream-name :target-type
                                  progress-update-stream :required
                                  common-lisp:t :member-name
                                  "ProgressUpdateStreamName")
                                 (dry-run :target-type dry-run :member-name
                                  "DryRun"))
                                (:shape-name
                                 "CreateProgressUpdateStreamRequest"))

(smithy/sdk/shapes:define-output create-progress-update-stream-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "CreateProgressUpdateStreamResult"))

(smithy/sdk/shapes:define-structure created-artifact common-lisp:nil
                                    ((name :target-type created-artifact-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (description :target-type
                                      created-artifact-description :member-name
                                      "Description"))
                                    (:shape-name "CreatedArtifact"))

(smithy/sdk/shapes:define-type created-artifact-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list created-artifact-list :member created-artifact)

(smithy/sdk/shapes:define-type created-artifact-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-progress-update-stream-request
                                common-lisp:nil
                                ((progress-update-stream-name :target-type
                                  progress-update-stream :required
                                  common-lisp:t :member-name
                                  "ProgressUpdateStreamName")
                                 (dry-run :target-type dry-run :member-name
                                  "DryRun"))
                                (:shape-name
                                 "DeleteProgressUpdateStreamRequest"))

(smithy/sdk/shapes:define-output delete-progress-update-stream-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteProgressUpdateStreamResult"))

(smithy/sdk/shapes:define-input describe-application-state-request
                                common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "ApplicationId"))
                                (:shape-name "DescribeApplicationStateRequest"))

(smithy/sdk/shapes:define-output describe-application-state-result
                                 common-lisp:nil
                                 ((application-status :target-type
                                   application-status :member-name
                                   "ApplicationStatus")
                                  (last-updated-time :target-type
                                   update-date-time :member-name
                                   "LastUpdatedTime"))
                                 (:shape-name "DescribeApplicationStateResult"))

(smithy/sdk/shapes:define-input describe-migration-task-request common-lisp:nil
                                ((progress-update-stream :target-type
                                  progress-update-stream :required
                                  common-lisp:t :member-name
                                  "ProgressUpdateStream")
                                 (migration-task-name :target-type
                                  migration-task-name :required common-lisp:t
                                  :member-name "MigrationTaskName"))
                                (:shape-name "DescribeMigrationTaskRequest"))

(smithy/sdk/shapes:define-output describe-migration-task-result common-lisp:nil
                                 ((migration-task :target-type migration-task
                                   :member-name "MigrationTask"))
                                 (:shape-name "DescribeMigrationTaskResult"))

(smithy/sdk/shapes:define-input disassociate-created-artifact-request
                                common-lisp:nil
                                ((progress-update-stream :target-type
                                  progress-update-stream :required
                                  common-lisp:t :member-name
                                  "ProgressUpdateStream")
                                 (migration-task-name :target-type
                                  migration-task-name :required common-lisp:t
                                  :member-name "MigrationTaskName")
                                 (created-artifact-name :target-type
                                  created-artifact-name :required common-lisp:t
                                  :member-name "CreatedArtifactName")
                                 (dry-run :target-type dry-run :member-name
                                  "DryRun"))
                                (:shape-name
                                 "DisassociateCreatedArtifactRequest"))

(smithy/sdk/shapes:define-output disassociate-created-artifact-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisassociateCreatedArtifactResult"))

(smithy/sdk/shapes:define-input disassociate-discovered-resource-request
                                common-lisp:nil
                                ((progress-update-stream :target-type
                                  progress-update-stream :required
                                  common-lisp:t :member-name
                                  "ProgressUpdateStream")
                                 (migration-task-name :target-type
                                  migration-task-name :required common-lisp:t
                                  :member-name "MigrationTaskName")
                                 (configuration-id :target-type
                                  configuration-id :required common-lisp:t
                                  :member-name "ConfigurationId")
                                 (dry-run :target-type dry-run :member-name
                                  "DryRun"))
                                (:shape-name
                                 "DisassociateDiscoveredResourceRequest"))

(smithy/sdk/shapes:define-output disassociate-discovered-resource-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisassociateDiscoveredResourceResult"))

(smithy/sdk/shapes:define-input disassociate-source-resource-request
                                common-lisp:nil
                                ((progress-update-stream :target-type
                                  progress-update-stream :required
                                  common-lisp:t :member-name
                                  "ProgressUpdateStream")
                                 (migration-task-name :target-type
                                  migration-task-name :required common-lisp:t
                                  :member-name "MigrationTaskName")
                                 (source-resource-name :target-type
                                  source-resource-name :required common-lisp:t
                                  :member-name "SourceResourceName")
                                 (dry-run :target-type dry-run :member-name
                                  "DryRun"))
                                (:shape-name
                                 "DisassociateSourceResourceRequest"))

(smithy/sdk/shapes:define-output disassociate-source-resource-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisassociateSourceResourceResult"))

(smithy/sdk/shapes:define-structure discovered-resource common-lisp:nil
                                    ((configuration-id :target-type
                                      configuration-id :required common-lisp:t
                                      :member-name "ConfigurationId")
                                     (description :target-type
                                      discovered-resource-description
                                      :member-name "Description"))
                                    (:shape-name "DiscoveredResource"))

(smithy/sdk/shapes:define-type discovered-resource-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list discovered-resource-list :member
                               discovered-resource)

(smithy/sdk/shapes:define-type dry-run smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error dry-run-operation common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "DryRunOperation")
                                (:error-code 400))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error home-region-not-set-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "HomeRegionNotSetException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input import-migration-task-request common-lisp:nil
                                ((progress-update-stream :target-type
                                  progress-update-stream :required
                                  common-lisp:t :member-name
                                  "ProgressUpdateStream")
                                 (migration-task-name :target-type
                                  migration-task-name :required common-lisp:t
                                  :member-name "MigrationTaskName")
                                 (dry-run :target-type dry-run :member-name
                                  "DryRun"))
                                (:shape-name "ImportMigrationTaskRequest"))

(smithy/sdk/shapes:define-output import-migration-task-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "ImportMigrationTaskResult"))

(smithy/sdk/shapes:define-error internal-server-error common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InternalServerError")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-input-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidInputException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list latest-resource-attribute-list :member
                               resource-attribute)

(smithy/sdk/shapes:define-input list-application-states-request common-lisp:nil
                                ((application-ids :target-type application-ids
                                  :member-name "ApplicationIds")
                                 (next-token :target-type token :member-name
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListApplicationStatesRequest"))

(smithy/sdk/shapes:define-output list-application-states-result common-lisp:nil
                                 ((application-state-list :target-type
                                   application-state-list :member-name
                                   "ApplicationStateList")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListApplicationStatesResult"))

(smithy/sdk/shapes:define-input list-created-artifacts-request common-lisp:nil
                                ((progress-update-stream :target-type
                                  progress-update-stream :required
                                  common-lisp:t :member-name
                                  "ProgressUpdateStream")
                                 (migration-task-name :target-type
                                  migration-task-name :required common-lisp:t
                                  :member-name "MigrationTaskName")
                                 (next-token :target-type token :member-name
                                  "NextToken")
                                 (max-results :target-type
                                  max-results-created-artifacts :member-name
                                  "MaxResults"))
                                (:shape-name "ListCreatedArtifactsRequest"))

(smithy/sdk/shapes:define-output list-created-artifacts-result common-lisp:nil
                                 ((next-token :target-type token :member-name
                                   "NextToken")
                                  (created-artifact-list :target-type
                                   created-artifact-list :member-name
                                   "CreatedArtifactList"))
                                 (:shape-name "ListCreatedArtifactsResult"))

(smithy/sdk/shapes:define-input list-discovered-resources-request
                                common-lisp:nil
                                ((progress-update-stream :target-type
                                  progress-update-stream :required
                                  common-lisp:t :member-name
                                  "ProgressUpdateStream")
                                 (migration-task-name :target-type
                                  migration-task-name :required common-lisp:t
                                  :member-name "MigrationTaskName")
                                 (next-token :target-type token :member-name
                                  "NextToken")
                                 (max-results :target-type
                                  max-results-resources :member-name
                                  "MaxResults"))
                                (:shape-name "ListDiscoveredResourcesRequest"))

(smithy/sdk/shapes:define-output list-discovered-resources-result
                                 common-lisp:nil
                                 ((next-token :target-type token :member-name
                                   "NextToken")
                                  (discovered-resource-list :target-type
                                   discovered-resource-list :member-name
                                   "DiscoveredResourceList"))
                                 (:shape-name "ListDiscoveredResourcesResult"))

(smithy/sdk/shapes:define-input list-migration-task-updates-request
                                common-lisp:nil
                                ((progress-update-stream :target-type
                                  progress-update-stream :required
                                  common-lisp:t :member-name
                                  "ProgressUpdateStream")
                                 (migration-task-name :target-type
                                  migration-task-name :required common-lisp:t
                                  :member-name "MigrationTaskName")
                                 (next-token :target-type token :member-name
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListMigrationTaskUpdatesRequest"))

(smithy/sdk/shapes:define-output list-migration-task-updates-result
                                 common-lisp:nil
                                 ((next-token :target-type token :member-name
                                   "NextToken")
                                  (migration-task-update-list :target-type
                                   migration-task-update-list :member-name
                                   "MigrationTaskUpdateList"))
                                 (:shape-name "ListMigrationTaskUpdatesResult"))

(smithy/sdk/shapes:define-input list-migration-tasks-request common-lisp:nil
                                ((next-token :target-type token :member-name
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (resource-name :target-type resource-name
                                  :member-name "ResourceName"))
                                (:shape-name "ListMigrationTasksRequest"))

(smithy/sdk/shapes:define-output list-migration-tasks-result common-lisp:nil
                                 ((next-token :target-type token :member-name
                                   "NextToken")
                                  (migration-task-summary-list :target-type
                                   migration-task-summary-list :member-name
                                   "MigrationTaskSummaryList"))
                                 (:shape-name "ListMigrationTasksResult"))

(smithy/sdk/shapes:define-input list-progress-update-streams-request
                                common-lisp:nil
                                ((next-token :target-type token :member-name
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListProgressUpdateStreamsRequest"))

(smithy/sdk/shapes:define-output list-progress-update-streams-result
                                 common-lisp:nil
                                 ((progress-update-stream-summary-list
                                   :target-type
                                   progress-update-stream-summary-list
                                   :member-name
                                   "ProgressUpdateStreamSummaryList")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListProgressUpdateStreamsResult"))

(smithy/sdk/shapes:define-input list-source-resources-request common-lisp:nil
                                ((progress-update-stream :target-type
                                  progress-update-stream :required
                                  common-lisp:t :member-name
                                  "ProgressUpdateStream")
                                 (migration-task-name :target-type
                                  migration-task-name :required common-lisp:t
                                  :member-name "MigrationTaskName")
                                 (next-token :target-type token :member-name
                                  "NextToken")
                                 (max-results :target-type
                                  max-results-source-resources :member-name
                                  "MaxResults"))
                                (:shape-name "ListSourceResourcesRequest"))

(smithy/sdk/shapes:define-output list-source-resources-result common-lisp:nil
                                 ((next-token :target-type token :member-name
                                   "NextToken")
                                  (source-resource-list :target-type
                                   source-resource-list :member-name
                                   "SourceResourceList"))
                                 (:shape-name "ListSourceResourcesResult"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results-created-artifacts
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results-resources
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results-source-resources
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure migration-task common-lisp:nil
                                    ((progress-update-stream :target-type
                                      progress-update-stream :member-name
                                      "ProgressUpdateStream")
                                     (migration-task-name :target-type
                                      migration-task-name :member-name
                                      "MigrationTaskName")
                                     (task :target-type task :member-name
                                      "Task")
                                     (update-date-time :target-type
                                      update-date-time :member-name
                                      "UpdateDateTime")
                                     (resource-attribute-list :target-type
                                      latest-resource-attribute-list
                                      :member-name "ResourceAttributeList"))
                                    (:shape-name "MigrationTask"))

(smithy/sdk/shapes:define-type migration-task-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure migration-task-summary common-lisp:nil
                                    ((progress-update-stream :target-type
                                      progress-update-stream :member-name
                                      "ProgressUpdateStream")
                                     (migration-task-name :target-type
                                      migration-task-name :member-name
                                      "MigrationTaskName")
                                     (status :target-type status :member-name
                                      "Status")
                                     (progress-percent :target-type
                                      progress-percent :member-name
                                      "ProgressPercent")
                                     (status-detail :target-type status-detail
                                      :member-name "StatusDetail")
                                     (update-date-time :target-type
                                      update-date-time :member-name
                                      "UpdateDateTime"))
                                    (:shape-name "MigrationTaskSummary"))

(smithy/sdk/shapes:define-list migration-task-summary-list :member
                               migration-task-summary)

(smithy/sdk/shapes:define-structure migration-task-update common-lisp:nil
                                    ((update-date-time :target-type
                                      update-date-time :member-name
                                      "UpdateDateTime")
                                     (update-type :target-type update-type
                                      :member-name "UpdateType")
                                     (migration-task-state :target-type task
                                      :member-name "MigrationTaskState"))
                                    (:shape-name "MigrationTaskUpdate"))

(smithy/sdk/shapes:define-list migration-task-update-list :member
                               migration-task-update)

(smithy/sdk/shapes:define-type next-update-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input notify-application-state-request
                                common-lisp:nil
                                ((application-id :target-type application-id
                                  :required common-lisp:t :member-name
                                  "ApplicationId")
                                 (status :target-type application-status
                                  :required common-lisp:t :member-name
                                  "Status")
                                 (update-date-time :target-type
                                  update-date-time :member-name
                                  "UpdateDateTime")
                                 (dry-run :target-type dry-run :member-name
                                  "DryRun"))
                                (:shape-name "NotifyApplicationStateRequest"))

(smithy/sdk/shapes:define-output notify-application-state-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "NotifyApplicationStateResult"))

(smithy/sdk/shapes:define-input notify-migration-task-state-request
                                common-lisp:nil
                                ((progress-update-stream :target-type
                                  progress-update-stream :required
                                  common-lisp:t :member-name
                                  "ProgressUpdateStream")
                                 (migration-task-name :target-type
                                  migration-task-name :required common-lisp:t
                                  :member-name "MigrationTaskName")
                                 (task :target-type task :required
                                  common-lisp:t :member-name "Task")
                                 (update-date-time :target-type
                                  update-date-time :required common-lisp:t
                                  :member-name "UpdateDateTime")
                                 (next-update-seconds :target-type
                                  next-update-seconds :required common-lisp:t
                                  :member-name "NextUpdateSeconds")
                                 (dry-run :target-type dry-run :member-name
                                  "DryRun"))
                                (:shape-name "NotifyMigrationTaskStateRequest"))

(smithy/sdk/shapes:define-output notify-migration-task-state-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "NotifyMigrationTaskStateResult"))

(smithy/sdk/shapes:define-error policy-error-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "PolicyErrorException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type progress-percent smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type progress-update-stream
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure progress-update-stream-summary
                                    common-lisp:nil
                                    ((progress-update-stream-name :target-type
                                      progress-update-stream :member-name
                                      "ProgressUpdateStreamName"))
                                    (:shape-name "ProgressUpdateStreamSummary"))

(smithy/sdk/shapes:define-list progress-update-stream-summary-list :member
                               progress-update-stream-summary)

(smithy/sdk/shapes:define-input put-resource-attributes-request common-lisp:nil
                                ((progress-update-stream :target-type
                                  progress-update-stream :required
                                  common-lisp:t :member-name
                                  "ProgressUpdateStream")
                                 (migration-task-name :target-type
                                  migration-task-name :required common-lisp:t
                                  :member-name "MigrationTaskName")
                                 (resource-attribute-list :target-type
                                  resource-attribute-list :required
                                  common-lisp:t :member-name
                                  "ResourceAttributeList")
                                 (dry-run :target-type dry-run :member-name
                                  "DryRun"))
                                (:shape-name "PutResourceAttributesRequest"))

(smithy/sdk/shapes:define-output put-resource-attributes-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "PutResourceAttributesResult"))

(smithy/sdk/shapes:define-structure resource-attribute common-lisp:nil
                                    ((type :target-type resource-attribute-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (value :target-type
                                      resource-attribute-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "ResourceAttribute"))

(smithy/sdk/shapes:define-list resource-attribute-list :member
                               resource-attribute)

(smithy/sdk/shapes:define-enum resource-attribute-type
    common-lisp:nil
  (:ipv4-address "IPV4_ADDRESS")
  (:ipv6-address "IPV6_ADDRESS")
  (:mac-address "MAC_ADDRESS")
  (:fqdn "FQDN")
  (:vm-manager-id "VM_MANAGER_ID")
  (:vm-managed-object-reference "VM_MANAGED_OBJECT_REFERENCE")
  (:vm-name "VM_NAME")
  (:vm-path "VM_PATH")
  (:bios-id "BIOS_ID")
  (:motherboard-serial-number "MOTHERBOARD_SERIAL_NUMBER"))

(smithy/sdk/shapes:define-type resource-attribute-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type retry-after-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure source-resource common-lisp:nil
                                    ((name :target-type source-resource-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (description :target-type
                                      source-resource-description :member-name
                                      "Description")
                                     (status-detail :target-type status-detail
                                      :member-name "StatusDetail"))
                                    (:shape-name "SourceResource"))

(smithy/sdk/shapes:define-type source-resource-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list source-resource-list :member source-resource)

(smithy/sdk/shapes:define-type source-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum status
    common-lisp:nil
  (:not-started "NOT_STARTED")
  (:in-progress "IN_PROGRESS")
  (:failed "FAILED")
  (:completed "COMPLETED"))

(smithy/sdk/shapes:define-type status-detail smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure task common-lisp:nil
                                    ((status :target-type status :required
                                      common-lisp:t :member-name "Status")
                                     (status-detail :target-type status-detail
                                      :member-name "StatusDetail")
                                     (progress-percent :target-type
                                      progress-percent :member-name
                                      "ProgressPercent"))
                                    (:shape-name "Task"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "Message")
                                 (retry-after-seconds :target-type
                                  retry-after-seconds :member-name
                                  "RetryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error unauthorized-operation common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "UnauthorizedOperation")
                                (:error-code 400))

(smithy/sdk/shapes:define-type update-date-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-enum update-type
    common-lisp:nil
  (:migration-task-state-updated "MIGRATION_TASK_STATE_UPDATED"))

(smithy/sdk/operation:define-operation associate-created-artifact :shape-name
                                       "AssociateCreatedArtifact" :input
                                       associate-created-artifact-request
                                       :output
                                       associate-created-artifact-result
                                       :errors
                                       (access-denied-exception
                                        dry-run-operation
                                        home-region-not-set-exception
                                        internal-server-error
                                        invalid-input-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-operation))

(smithy/sdk/operation:define-operation associate-discovered-resource
                                       :shape-name
                                       "AssociateDiscoveredResource" :input
                                       associate-discovered-resource-request
                                       :output
                                       associate-discovered-resource-result
                                       :errors
                                       (access-denied-exception
                                        dry-run-operation
                                        home-region-not-set-exception
                                        internal-server-error
                                        invalid-input-exception
                                        policy-error-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-operation))

(smithy/sdk/operation:define-operation associate-source-resource :shape-name
                                       "AssociateSourceResource" :input
                                       associate-source-resource-request
                                       :output associate-source-resource-result
                                       :errors
                                       (access-denied-exception
                                        dry-run-operation internal-server-error
                                        invalid-input-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-operation))

(smithy/sdk/operation:define-operation create-progress-update-stream
                                       :shape-name "CreateProgressUpdateStream"
                                       :input
                                       create-progress-update-stream-request
                                       :output
                                       create-progress-update-stream-result
                                       :errors
                                       (access-denied-exception
                                        dry-run-operation
                                        home-region-not-set-exception
                                        internal-server-error
                                        invalid-input-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-operation))

(smithy/sdk/operation:define-operation delete-progress-update-stream
                                       :shape-name "DeleteProgressUpdateStream"
                                       :input
                                       delete-progress-update-stream-request
                                       :output
                                       delete-progress-update-stream-result
                                       :errors
                                       (access-denied-exception
                                        dry-run-operation
                                        home-region-not-set-exception
                                        internal-server-error
                                        invalid-input-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-operation))

(smithy/sdk/operation:define-operation describe-application-state :shape-name
                                       "DescribeApplicationState" :input
                                       describe-application-state-request
                                       :output
                                       describe-application-state-result
                                       :errors
                                       (access-denied-exception
                                        home-region-not-set-exception
                                        internal-server-error
                                        invalid-input-exception
                                        policy-error-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation describe-migration-task :shape-name
                                       "DescribeMigrationTask" :input
                                       describe-migration-task-request :output
                                       describe-migration-task-result :errors
                                       (access-denied-exception
                                        home-region-not-set-exception
                                        internal-server-error
                                        invalid-input-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation disassociate-created-artifact
                                       :shape-name
                                       "DisassociateCreatedArtifact" :input
                                       disassociate-created-artifact-request
                                       :output
                                       disassociate-created-artifact-result
                                       :errors
                                       (access-denied-exception
                                        dry-run-operation
                                        home-region-not-set-exception
                                        internal-server-error
                                        invalid-input-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-operation))

(smithy/sdk/operation:define-operation disassociate-discovered-resource
                                       :shape-name
                                       "DisassociateDiscoveredResource" :input
                                       disassociate-discovered-resource-request
                                       :output
                                       disassociate-discovered-resource-result
                                       :errors
                                       (access-denied-exception
                                        dry-run-operation
                                        home-region-not-set-exception
                                        internal-server-error
                                        invalid-input-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-operation))

(smithy/sdk/operation:define-operation disassociate-source-resource :shape-name
                                       "DisassociateSourceResource" :input
                                       disassociate-source-resource-request
                                       :output
                                       disassociate-source-resource-result
                                       :errors
                                       (access-denied-exception
                                        dry-run-operation internal-server-error
                                        invalid-input-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-operation))

(smithy/sdk/operation:define-operation import-migration-task :shape-name
                                       "ImportMigrationTask" :input
                                       import-migration-task-request :output
                                       import-migration-task-result :errors
                                       (access-denied-exception
                                        dry-run-operation
                                        home-region-not-set-exception
                                        internal-server-error
                                        invalid-input-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-operation))

(smithy/sdk/operation:define-operation list-application-states :shape-name
                                       "ListApplicationStates" :input
                                       list-application-states-request :output
                                       list-application-states-result :errors
                                       (access-denied-exception
                                        home-region-not-set-exception
                                        internal-server-error
                                        invalid-input-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-created-artifacts :shape-name
                                       "ListCreatedArtifacts" :input
                                       list-created-artifacts-request :output
                                       list-created-artifacts-result :errors
                                       (access-denied-exception
                                        home-region-not-set-exception
                                        internal-server-error
                                        invalid-input-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-discovered-resources :shape-name
                                       "ListDiscoveredResources" :input
                                       list-discovered-resources-request
                                       :output list-discovered-resources-result
                                       :errors
                                       (access-denied-exception
                                        home-region-not-set-exception
                                        internal-server-error
                                        invalid-input-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-migration-task-updates :shape-name
                                       "ListMigrationTaskUpdates" :input
                                       list-migration-task-updates-request
                                       :output
                                       list-migration-task-updates-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-input-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-migration-tasks :shape-name
                                       "ListMigrationTasks" :input
                                       list-migration-tasks-request :output
                                       list-migration-tasks-result :errors
                                       (access-denied-exception
                                        home-region-not-set-exception
                                        internal-server-error
                                        invalid-input-exception
                                        policy-error-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-progress-update-streams :shape-name
                                       "ListProgressUpdateStreams" :input
                                       list-progress-update-streams-request
                                       :output
                                       list-progress-update-streams-result
                                       :errors
                                       (access-denied-exception
                                        home-region-not-set-exception
                                        internal-server-error
                                        invalid-input-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-source-resources :shape-name
                                       "ListSourceResources" :input
                                       list-source-resources-request :output
                                       list-source-resources-result :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-input-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation notify-application-state :shape-name
                                       "NotifyApplicationState" :input
                                       notify-application-state-request :output
                                       notify-application-state-result :errors
                                       (access-denied-exception
                                        dry-run-operation
                                        home-region-not-set-exception
                                        internal-server-error
                                        invalid-input-exception
                                        policy-error-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-operation))

(smithy/sdk/operation:define-operation notify-migration-task-state :shape-name
                                       "NotifyMigrationTaskState" :input
                                       notify-migration-task-state-request
                                       :output
                                       notify-migration-task-state-result
                                       :errors
                                       (access-denied-exception
                                        dry-run-operation
                                        home-region-not-set-exception
                                        internal-server-error
                                        invalid-input-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-operation))

(smithy/sdk/operation:define-operation put-resource-attributes :shape-name
                                       "PutResourceAttributes" :input
                                       put-resource-attributes-request :output
                                       put-resource-attributes-result :errors
                                       (access-denied-exception
                                        dry-run-operation
                                        home-region-not-set-exception
                                        internal-server-error
                                        invalid-input-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-operation))
