(uiop/package:define-package #:pira/codecatalyst (:use)
                             (:export #:access-token #:access-token-id
                              #:access-token-name #:access-token-secret
                              #:access-token-summaries #:access-token-summary
                              #:client-token #:code-catalyst
                              #:comparison-operator #:create-access-token
                              #:create-dev-environment #:create-project
                              #:create-source-repository
                              #:create-source-repository-branch
                              #:delete-access-token #:delete-dev-environment
                              #:delete-project #:delete-source-repository
                              #:delete-space #:dev-environment
                              #:dev-environment-access-details
                              #:dev-environment-repository-summaries
                              #:dev-environment-repository-summary
                              #:dev-environment-session-configuration
                              #:dev-environment-session-summary
                              #:dev-environment-session-type
                              #:dev-environment-sessions-summary-list
                              #:dev-environment-status
                              #:dev-environment-summary
                              #:dev-environment-summary-list #:email-address
                              #:event-log-entries #:event-log-entry
                              #:event-log-resource #:event-payload
                              #:execute-command-session-configuration
                              #:execute-command-session-configuration-arguments
                              #:filter #:filter-key #:filters
                              #:get-dev-environment #:get-project
                              #:get-source-repository
                              #:get-source-repository-clone-urls #:get-space
                              #:get-subscription #:get-user-details
                              #:get-workflow #:get-workflow-run #:ide
                              #:ide-configuration #:ide-configuration-list
                              #:ides #:inactivity-timeout-minutes
                              #:instance-type #:list-access-tokens
                              #:list-dev-environment-sessions
                              #:list-dev-environments #:list-event-logs
                              #:list-projects #:list-source-repositories
                              #:list-source-repositories-item
                              #:list-source-repositories-items
                              #:list-source-repository-branches
                              #:list-source-repository-branches-item
                              #:list-source-repository-branches-items
                              #:list-spaces #:list-workflow-runs
                              #:list-workflows #:name-string #:operation-type
                              #:persistent-storage
                              #:persistent-storage-configuration #:project
                              #:project-description #:project-display-name
                              #:project-information #:project-list-filter
                              #:project-list-filters #:project-summaries
                              #:project-summary #:region-string
                              #:repositories-input #:repository-input
                              #:sensitive-string #:source-repository
                              #:source-repository-branch
                              #:source-repository-branch-ref-string
                              #:source-repository-branch-string
                              #:source-repository-description-string
                              #:source-repository-id-string
                              #:source-repository-name-string #:space
                              #:space-description #:space-summaries
                              #:space-summary #:start-dev-environment
                              #:start-dev-environment-session
                              #:start-workflow-run #:status-reason
                              #:stop-dev-environment
                              #:stop-dev-environment-session #:string-list
                              #:subscription #:timestamp
                              #:update-dev-environment #:update-project
                              #:update-space #:user-identity #:user-type #:uuid
                              #:verify-session #:workflow #:workflow-definition
                              #:workflow-definition-summary #:workflow-run
                              #:workflow-run-mode #:workflow-run-sort-criteria
                              #:workflow-run-sort-criteria-list
                              #:workflow-run-status
                              #:workflow-run-status-reason
                              #:workflow-run-status-reasons
                              #:workflow-run-summaries #:workflow-run-summary
                              #:workflow-sort-criteria
                              #:workflow-sort-criteria-list #:workflow-status
                              #:workflow-summaries #:workflow-summary))
(common-lisp:in-package #:pira/codecatalyst)

(smithy/sdk/service:define-service code-catalyst :shape-name "CodeCatalyst"
                                   :version "2022-09-28" :title
                                   "Amazon CodeCatalyst" :errors
                                   '(access-denied-exception conflict-exception
                                     resource-not-found-exception
                                     service-quota-exceeded-exception
                                     throttling-exception validation-exception)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "CodeCatalyst")
                                      ("endpointPrefix" . "codecatalyst"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

common-lisp:nil

(smithy/sdk/shapes:define-type access-token-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type access-token-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type access-token-secret
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list access-token-summaries :member
                               access-token-summary)

(smithy/sdk/shapes:define-structure access-token-summary common-lisp:nil
                                    ((id :target-type access-token-id :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type access-token-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (expires-time :target-type timestamp
                                      :member-name "expiresTime"
                                      :timestamp-format "date-time"))
                                    (:shape-name "AccessTokenSummary"))

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type comparison-operator
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-access-token-request common-lisp:nil
                                ((name :target-type access-token-name :required
                                  common-lisp:t :member-name "name")
                                 (expires-time :target-type timestamp
                                  :member-name "expiresTime" :timestamp-format
                                  "date-time"))
                                (:shape-name "CreateAccessTokenRequest"))

(smithy/sdk/shapes:define-output create-access-token-response common-lisp:nil
                                 ((secret :target-type access-token-secret
                                   :required common-lisp:t :member-name
                                   "secret")
                                  (name :target-type access-token-name
                                   :required common-lisp:t :member-name "name")
                                  (expires-time :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "expiresTime" :timestamp-format "date-time")
                                  (access-token-id :target-type access-token-id
                                   :required common-lisp:t :member-name
                                   "accessTokenId"))
                                 (:shape-name "CreateAccessTokenResponse"))

(smithy/sdk/shapes:define-input create-dev-environment-request common-lisp:nil
                                ((space-name :target-type name-string :required
                                  common-lisp:t :member-name "spaceName"
                                  :http-label common-lisp:t)
                                 (project-name :target-type name-string
                                  :required common-lisp:t :member-name
                                  "projectName" :http-label common-lisp:t)
                                 (repositories :target-type repositories-input
                                  :member-name "repositories")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (alias :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "alias")
                                 (ides :target-type ide-configuration-list
                                  :member-name "ides")
                                 (instance-type :target-type instance-type
                                  :required common-lisp:t :member-name
                                  "instanceType")
                                 (inactivity-timeout-minutes :target-type
                                  inactivity-timeout-minutes :member-name
                                  "inactivityTimeoutMinutes")
                                 (persistent-storage :target-type
                                  persistent-storage-configuration :required
                                  common-lisp:t :member-name
                                  "persistentStorage")
                                 (vpc-connection-name :target-type name-string
                                  :member-name "vpcConnectionName"))
                                (:shape-name "CreateDevEnvironmentRequest"))

(smithy/sdk/shapes:define-output create-dev-environment-response
                                 common-lisp:nil
                                 ((space-name :target-type name-string
                                   :required common-lisp:t :member-name
                                   "spaceName")
                                  (project-name :target-type name-string
                                   :required common-lisp:t :member-name
                                   "projectName")
                                  (id :target-type uuid :required common-lisp:t
                                   :member-name "id")
                                  (vpc-connection-name :target-type name-string
                                   :member-name "vpcConnectionName"))
                                 (:shape-name "CreateDevEnvironmentResponse"))

(smithy/sdk/shapes:define-input create-project-request common-lisp:nil
                                ((space-name :target-type name-string :required
                                  common-lisp:t :member-name "spaceName"
                                  :http-label common-lisp:t)
                                 (display-name :target-type
                                  project-display-name :required common-lisp:t
                                  :member-name "displayName")
                                 (description :target-type project-description
                                  :member-name "description"))
                                (:shape-name "CreateProjectRequest"))

(smithy/sdk/shapes:define-output create-project-response common-lisp:nil
                                 ((space-name :target-type name-string
                                   :member-name "spaceName")
                                  (name :target-type name-string :required
                                   common-lisp:t :member-name "name")
                                  (display-name :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "displayName")
                                  (description :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "description"))
                                 (:shape-name "CreateProjectResponse"))

(smithy/sdk/shapes:define-input create-source-repository-branch-request
                                common-lisp:nil
                                ((space-name :target-type name-string :required
                                  common-lisp:t :member-name "spaceName"
                                  :http-label common-lisp:t)
                                 (project-name :target-type name-string
                                  :required common-lisp:t :member-name
                                  "projectName" :http-label common-lisp:t)
                                 (source-repository-name :target-type
                                  source-repository-name-string :required
                                  common-lisp:t :member-name
                                  "sourceRepositoryName" :http-label
                                  common-lisp:t)
                                 (name :target-type
                                  source-repository-branch-string :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (head-commit-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "headCommitId"))
                                (:shape-name
                                 "CreateSourceRepositoryBranchRequest"))

(smithy/sdk/shapes:define-output create-source-repository-branch-response
                                 common-lisp:nil
                                 ((ref :target-type
                                   source-repository-branch-ref-string
                                   :member-name "ref")
                                  (name :target-type
                                   source-repository-branch-string :member-name
                                   "name")
                                  (last-updated-time :target-type timestamp
                                   :member-name "lastUpdatedTime"
                                   :timestamp-format "date-time")
                                  (head-commit-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "headCommitId"))
                                 (:shape-name
                                  "CreateSourceRepositoryBranchResponse"))

(smithy/sdk/shapes:define-input create-source-repository-request
                                common-lisp:nil
                                ((space-name :target-type name-string :required
                                  common-lisp:t :member-name "spaceName"
                                  :http-label common-lisp:t)
                                 (project-name :target-type name-string
                                  :required common-lisp:t :member-name
                                  "projectName" :http-label common-lisp:t)
                                 (name :target-type
                                  source-repository-name-string :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (description :target-type
                                  source-repository-description-string
                                  :member-name "description"))
                                (:shape-name "CreateSourceRepositoryRequest"))

(smithy/sdk/shapes:define-output create-source-repository-response
                                 common-lisp:nil
                                 ((space-name :target-type name-string
                                   :required common-lisp:t :member-name
                                   "spaceName")
                                  (project-name :target-type name-string
                                   :required common-lisp:t :member-name
                                   "projectName")
                                  (name :target-type
                                   source-repository-name-string :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type
                                   source-repository-description-string
                                   :member-name "description"))
                                 (:shape-name "CreateSourceRepositoryResponse"))

(smithy/sdk/shapes:define-input delete-access-token-request common-lisp:nil
                                ((id :target-type access-token-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteAccessTokenRequest"))

(smithy/sdk/shapes:define-output delete-access-token-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteAccessTokenResponse"))

(smithy/sdk/shapes:define-input delete-dev-environment-request common-lisp:nil
                                ((space-name :target-type name-string :required
                                  common-lisp:t :member-name "spaceName"
                                  :http-label common-lisp:t)
                                 (project-name :target-type name-string
                                  :required common-lisp:t :member-name
                                  "projectName" :http-label common-lisp:t)
                                 (id :target-type uuid :required common-lisp:t
                                  :member-name "id" :http-label common-lisp:t))
                                (:shape-name "DeleteDevEnvironmentRequest"))

(smithy/sdk/shapes:define-output delete-dev-environment-response
                                 common-lisp:nil
                                 ((space-name :target-type name-string
                                   :required common-lisp:t :member-name
                                   "spaceName")
                                  (project-name :target-type name-string
                                   :required common-lisp:t :member-name
                                   "projectName")
                                  (id :target-type uuid :required common-lisp:t
                                   :member-name "id"))
                                 (:shape-name "DeleteDevEnvironmentResponse"))

(smithy/sdk/shapes:define-input delete-project-request common-lisp:nil
                                ((space-name :target-type name-string :required
                                  common-lisp:t :member-name "spaceName"
                                  :http-label common-lisp:t)
                                 (name :target-type name-string :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteProjectRequest"))

(smithy/sdk/shapes:define-output delete-project-response common-lisp:nil
                                 ((space-name :target-type name-string
                                   :required common-lisp:t :member-name
                                   "spaceName")
                                  (name :target-type name-string :required
                                   common-lisp:t :member-name "name")
                                  (display-name :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "displayName"))
                                 (:shape-name "DeleteProjectResponse"))

(smithy/sdk/shapes:define-input delete-source-repository-request
                                common-lisp:nil
                                ((space-name :target-type name-string :required
                                  common-lisp:t :member-name "spaceName"
                                  :http-label common-lisp:t)
                                 (project-name :target-type name-string
                                  :required common-lisp:t :member-name
                                  "projectName" :http-label common-lisp:t)
                                 (name :target-type
                                  source-repository-name-string :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteSourceRepositoryRequest"))

(smithy/sdk/shapes:define-output delete-source-repository-response
                                 common-lisp:nil
                                 ((space-name :target-type name-string
                                   :required common-lisp:t :member-name
                                   "spaceName")
                                  (project-name :target-type name-string
                                   :required common-lisp:t :member-name
                                   "projectName")
                                  (name :target-type
                                   source-repository-name-string :required
                                   common-lisp:t :member-name "name"))
                                 (:shape-name "DeleteSourceRepositoryResponse"))

(smithy/sdk/shapes:define-input delete-space-request common-lisp:nil
                                ((name :target-type name-string :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteSpaceRequest"))

(smithy/sdk/shapes:define-output delete-space-response common-lisp:nil
                                 ((name :target-type name-string :required
                                   common-lisp:t :member-name "name")
                                  (display-name :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "displayName"))
                                 (:shape-name "DeleteSpaceResponse"))

common-lisp:nil

(smithy/sdk/shapes:define-structure dev-environment-access-details
                                    common-lisp:nil
                                    ((stream-url :target-type sensitive-string
                                      :required common-lisp:t :member-name
                                      "streamUrl")
                                     (token-value :target-type sensitive-string
                                      :required common-lisp:t :member-name
                                      "tokenValue"))
                                    (:shape-name "DevEnvironmentAccessDetails"))

(smithy/sdk/shapes:define-list dev-environment-repository-summaries :member
                               dev-environment-repository-summary)

(smithy/sdk/shapes:define-structure dev-environment-repository-summary
                                    common-lisp:nil
                                    ((repository-name :target-type
                                      source-repository-name-string :required
                                      common-lisp:t :member-name
                                      "repositoryName")
                                     (branch-name :target-type
                                      source-repository-branch-string
                                      :member-name "branchName"))
                                    (:shape-name
                                     "DevEnvironmentRepositorySummary"))

(smithy/sdk/shapes:define-structure dev-environment-session-configuration
                                    common-lisp:nil
                                    ((session-type :target-type
                                      dev-environment-session-type :required
                                      common-lisp:t :member-name "sessionType")
                                     (execute-command-session-configuration
                                      :target-type
                                      execute-command-session-configuration
                                      :member-name
                                      "executeCommandSessionConfiguration"))
                                    (:shape-name
                                     "DevEnvironmentSessionConfiguration"))

(smithy/sdk/shapes:define-structure dev-environment-session-summary
                                    common-lisp:nil
                                    ((space-name :target-type name-string
                                      :required common-lisp:t :member-name
                                      "spaceName")
                                     (project-name :target-type name-string
                                      :required common-lisp:t :member-name
                                      "projectName")
                                     (dev-environment-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "devEnvironmentId")
                                     (started-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "startedTime" :timestamp-format
                                      "date-time")
                                     (id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "id"))
                                    (:shape-name
                                     "DevEnvironmentSessionSummary"))

(smithy/sdk/shapes:define-type dev-environment-session-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list dev-environment-sessions-summary-list :member
                               dev-environment-session-summary)

(smithy/sdk/shapes:define-type dev-environment-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure dev-environment-summary common-lisp:nil
                                    ((space-name :target-type name-string
                                      :member-name "spaceName")
                                     (project-name :target-type name-string
                                      :member-name "projectName")
                                     (id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (last-updated-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "lastUpdatedTime" :timestamp-format
                                      "date-time")
                                     (creator-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "creatorId")
                                     (status :target-type
                                      dev-environment-status :required
                                      common-lisp:t :member-name "status")
                                     (status-reason :target-type status-reason
                                      :member-name "statusReason")
                                     (repositories :target-type
                                      dev-environment-repository-summaries
                                      :required common-lisp:t :member-name
                                      "repositories")
                                     (alias :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "alias")
                                     (ides :target-type ides :member-name
                                      "ides")
                                     (instance-type :target-type instance-type
                                      :required common-lisp:t :member-name
                                      "instanceType")
                                     (inactivity-timeout-minutes :target-type
                                      inactivity-timeout-minutes :required
                                      common-lisp:t :member-name
                                      "inactivityTimeoutMinutes")
                                     (persistent-storage :target-type
                                      persistent-storage :required
                                      common-lisp:t :member-name
                                      "persistentStorage")
                                     (vpc-connection-name :target-type
                                      name-string :member-name
                                      "vpcConnectionName"))
                                    (:shape-name "DevEnvironmentSummary"))

(smithy/sdk/shapes:define-list dev-environment-summary-list :member
                               dev-environment-summary)

(smithy/sdk/shapes:define-structure email-address common-lisp:nil
                                    ((email :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "email")
                                     (verified :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "verified"))
                                    (:shape-name "EmailAddress"))

(smithy/sdk/shapes:define-list event-log-entries :member event-log-entry)

(smithy/sdk/shapes:define-structure event-log-entry common-lisp:nil
                                    ((id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "id")
                                     (event-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "eventName")
                                     (event-type :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "eventType")
                                     (event-category :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "eventCategory")
                                     (event-source :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "eventSource")
                                     (event-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "eventTime" :timestamp-format
                                      "date-time")
                                     (operation-type :target-type
                                      operation-type :required common-lisp:t
                                      :member-name "operationType")
                                     (user-identity :target-type user-identity
                                      :required common-lisp:t :member-name
                                      "userIdentity")
                                     (project-information :target-type
                                      project-information :member-name
                                      "projectInformation")
                                     (request-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "requestId")
                                     (request-payload :target-type
                                      event-payload :member-name
                                      "requestPayload")
                                     (response-payload :target-type
                                      event-payload :member-name
                                      "responsePayload")
                                     (error-code :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "errorCode")
                                     (source-ip-address :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "sourceIpAddress")
                                     (user-agent :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "userAgent"))
                                    (:shape-name "EventLogEntry"))

common-lisp:nil

(smithy/sdk/shapes:define-structure event-payload common-lisp:nil
                                    ((content-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "contentType")
                                     (data :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "data"))
                                    (:shape-name "EventPayload"))

(smithy/sdk/shapes:define-structure execute-command-session-configuration
                                    common-lisp:nil
                                    ((command :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "command")
                                     (arguments :target-type
                                      execute-command-session-configuration-arguments
                                      :member-name "arguments"))
                                    (:shape-name
                                     "ExecuteCommandSessionConfiguration"))

(smithy/sdk/shapes:define-list execute-command-session-configuration-arguments
                               :member smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure filter common-lisp:nil
                                    ((key :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "key")
                                     (values :target-type string-list :required
                                      common-lisp:t :member-name "values")
                                     (comparison-operator :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "comparisonOperator"))
                                    (:shape-name "Filter"))

(smithy/sdk/shapes:define-type filter-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list filters :member filter)

(smithy/sdk/shapes:define-input get-dev-environment-request common-lisp:nil
                                ((space-name :target-type name-string :required
                                  common-lisp:t :member-name "spaceName"
                                  :http-label common-lisp:t)
                                 (project-name :target-type name-string
                                  :required common-lisp:t :member-name
                                  "projectName" :http-label common-lisp:t)
                                 (id :target-type uuid :required common-lisp:t
                                  :member-name "id" :http-label common-lisp:t))
                                (:shape-name "GetDevEnvironmentRequest"))

(smithy/sdk/shapes:define-output get-dev-environment-response common-lisp:nil
                                 ((space-name :target-type name-string
                                   :required common-lisp:t :member-name
                                   "spaceName")
                                  (project-name :target-type name-string
                                   :required common-lisp:t :member-name
                                   "projectName")
                                  (id :target-type uuid :required common-lisp:t
                                   :member-name "id")
                                  (last-updated-time :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "lastUpdatedTime" :timestamp-format
                                   "date-time")
                                  (creator-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "creatorId")
                                  (status :target-type dev-environment-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (status-reason :target-type status-reason
                                   :member-name "statusReason")
                                  (repositories :target-type
                                   dev-environment-repository-summaries
                                   :required common-lisp:t :member-name
                                   "repositories")
                                  (alias :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "alias")
                                  (ides :target-type ides :member-name "ides")
                                  (instance-type :target-type instance-type
                                   :required common-lisp:t :member-name
                                   "instanceType")
                                  (inactivity-timeout-minutes :target-type
                                   inactivity-timeout-minutes :required
                                   common-lisp:t :member-name
                                   "inactivityTimeoutMinutes")
                                  (persistent-storage :target-type
                                   persistent-storage :required common-lisp:t
                                   :member-name "persistentStorage")
                                  (vpc-connection-name :target-type name-string
                                   :member-name "vpcConnectionName"))
                                 (:shape-name "GetDevEnvironmentResponse"))

(smithy/sdk/shapes:define-input get-project-request common-lisp:nil
                                ((space-name :target-type name-string :required
                                  common-lisp:t :member-name "spaceName"
                                  :http-label common-lisp:t)
                                 (name :target-type name-string :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t))
                                (:shape-name "GetProjectRequest"))

(smithy/sdk/shapes:define-output get-project-response common-lisp:nil
                                 ((space-name :target-type name-string
                                   :member-name "spaceName")
                                  (name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "name")
                                  (display-name :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "displayName")
                                  (description :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "description"))
                                 (:shape-name "GetProjectResponse"))

(smithy/sdk/shapes:define-input get-source-repository-clone-urls-request
                                common-lisp:nil
                                ((space-name :target-type name-string :required
                                  common-lisp:t :member-name "spaceName"
                                  :http-label common-lisp:t)
                                 (project-name :target-type name-string
                                  :required common-lisp:t :member-name
                                  "projectName" :http-label common-lisp:t)
                                 (source-repository-name :target-type
                                  source-repository-name-string :required
                                  common-lisp:t :member-name
                                  "sourceRepositoryName" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetSourceRepositoryCloneUrlsRequest"))

(smithy/sdk/shapes:define-output get-source-repository-clone-urls-response
                                 common-lisp:nil
                                 ((https :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "https"))
                                 (:shape-name
                                  "GetSourceRepositoryCloneUrlsResponse"))

(smithy/sdk/shapes:define-input get-source-repository-request common-lisp:nil
                                ((space-name :target-type name-string :required
                                  common-lisp:t :member-name "spaceName"
                                  :http-label common-lisp:t)
                                 (project-name :target-type name-string
                                  :required common-lisp:t :member-name
                                  "projectName" :http-label common-lisp:t)
                                 (name :target-type
                                  source-repository-name-string :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t))
                                (:shape-name "GetSourceRepositoryRequest"))

(smithy/sdk/shapes:define-output get-source-repository-response common-lisp:nil
                                 ((space-name :target-type name-string
                                   :required common-lisp:t :member-name
                                   "spaceName")
                                  (project-name :target-type name-string
                                   :required common-lisp:t :member-name
                                   "projectName")
                                  (name :target-type
                                   source-repository-name-string :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type
                                   source-repository-description-string
                                   :member-name "description")
                                  (last-updated-time :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "lastUpdatedTime")
                                  (created-time :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "createdTime"))
                                 (:shape-name "GetSourceRepositoryResponse"))

(smithy/sdk/shapes:define-input get-space-request common-lisp:nil
                                ((name :target-type name-string :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t))
                                (:shape-name "GetSpaceRequest"))

(smithy/sdk/shapes:define-output get-space-response common-lisp:nil
                                 ((name :target-type name-string :required
                                   common-lisp:t :member-name "name")
                                  (region-name :target-type region-string
                                   :required common-lisp:t :member-name
                                   "regionName")
                                  (display-name :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "displayName")
                                  (description :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "description"))
                                 (:shape-name "GetSpaceResponse"))

(smithy/sdk/shapes:define-input get-subscription-request common-lisp:nil
                                ((space-name :target-type name-string :required
                                  common-lisp:t :member-name "spaceName"
                                  :http-label common-lisp:t))
                                (:shape-name "GetSubscriptionRequest"))

(smithy/sdk/shapes:define-output get-subscription-response common-lisp:nil
                                 ((subscription-type :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "subscriptionType")
                                  (aws-account-name :target-type name-string
                                   :member-name "awsAccountName")
                                  (pending-subscription-type :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "pendingSubscriptionType")
                                  (pending-subscription-start-time :target-type
                                   timestamp :member-name
                                   "pendingSubscriptionStartTime"
                                   :timestamp-format "date-time"))
                                 (:shape-name "GetSubscriptionResponse"))

(smithy/sdk/shapes:define-input get-user-details-request common-lisp:nil
                                ((id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "id" :http-query "id")
                                 (user-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "userName" :http-query "userName"))
                                (:shape-name "GetUserDetailsRequest"))

(smithy/sdk/shapes:define-output get-user-details-response common-lisp:nil
                                 ((user-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "userId")
                                  (user-name :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "userName")
                                  (display-name :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "displayName")
                                  (primary-email :target-type email-address
                                   :member-name "primaryEmail")
                                  (version :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "version"))
                                 (:shape-name "GetUserDetailsResponse"))

(smithy/sdk/shapes:define-input get-workflow-request common-lisp:nil
                                ((space-name :target-type name-string :required
                                  common-lisp:t :member-name "spaceName"
                                  :http-label common-lisp:t)
                                 (id :target-type uuid :required common-lisp:t
                                  :member-name "id" :http-label common-lisp:t)
                                 (project-name :target-type name-string
                                  :required common-lisp:t :member-name
                                  "projectName" :http-label common-lisp:t))
                                (:shape-name "GetWorkflowRequest"))

(smithy/sdk/shapes:define-output get-workflow-response common-lisp:nil
                                 ((space-name :target-type name-string
                                   :required common-lisp:t :member-name
                                   "spaceName")
                                  (project-name :target-type name-string
                                   :required common-lisp:t :member-name
                                   "projectName")
                                  (id :target-type uuid :required common-lisp:t
                                   :member-name "id")
                                  (name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "name")
                                  (source-repository-name :target-type
                                   source-repository-name-string :member-name
                                   "sourceRepositoryName")
                                  (source-branch-name :target-type
                                   source-repository-branch-string :member-name
                                   "sourceBranchName")
                                  (definition :target-type workflow-definition
                                   :required common-lisp:t :member-name
                                   "definition")
                                  (created-time :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "createdTime" :timestamp-format "date-time")
                                  (last-updated-time :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "lastUpdatedTime" :timestamp-format
                                   "date-time")
                                  (run-mode :target-type workflow-run-mode
                                   :required common-lisp:t :member-name
                                   "runMode")
                                  (status :target-type workflow-status
                                   :required common-lisp:t :member-name
                                   "status"))
                                 (:shape-name "GetWorkflowResponse"))

(smithy/sdk/shapes:define-input get-workflow-run-request common-lisp:nil
                                ((space-name :target-type name-string :required
                                  common-lisp:t :member-name "spaceName"
                                  :http-label common-lisp:t)
                                 (id :target-type uuid :required common-lisp:t
                                  :member-name "id" :http-label common-lisp:t)
                                 (project-name :target-type name-string
                                  :required common-lisp:t :member-name
                                  "projectName" :http-label common-lisp:t))
                                (:shape-name "GetWorkflowRunRequest"))

(smithy/sdk/shapes:define-output get-workflow-run-response common-lisp:nil
                                 ((space-name :target-type name-string
                                   :required common-lisp:t :member-name
                                   "spaceName")
                                  (project-name :target-type name-string
                                   :required common-lisp:t :member-name
                                   "projectName")
                                  (id :target-type uuid :required common-lisp:t
                                   :member-name "id")
                                  (workflow-id :target-type uuid :required
                                   common-lisp:t :member-name "workflowId")
                                  (status :target-type workflow-run-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (status-reasons :target-type
                                   workflow-run-status-reasons :member-name
                                   "statusReasons")
                                  (start-time :target-type timestamp :required
                                   common-lisp:t :member-name "startTime"
                                   :timestamp-format "date-time")
                                  (end-time :target-type timestamp :member-name
                                   "endTime" :timestamp-format "date-time")
                                  (last-updated-time :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "lastUpdatedTime" :timestamp-format
                                   "date-time"))
                                 (:shape-name "GetWorkflowRunResponse"))

(smithy/sdk/shapes:define-structure ide common-lisp:nil
                                    ((runtime :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "runtime")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name"))
                                    (:shape-name "Ide"))

(smithy/sdk/shapes:define-structure ide-configuration common-lisp:nil
                                    ((runtime :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "runtime")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name"))
                                    (:shape-name "IdeConfiguration"))

(smithy/sdk/shapes:define-list ide-configuration-list :member ide-configuration)

(smithy/sdk/shapes:define-list ides :member ide)

(smithy/sdk/shapes:define-type inactivity-timeout-minutes
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type instance-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-access-tokens-request common-lisp:nil
                                ((max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken"))
                                (:shape-name "ListAccessTokensRequest"))

(smithy/sdk/shapes:define-output list-access-tokens-response common-lisp:nil
                                 ((items :target-type access-token-summaries
                                   :required common-lisp:t :member-name
                                   "items")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name "ListAccessTokensResponse"))

(smithy/sdk/shapes:define-input list-dev-environment-sessions-request
                                common-lisp:nil
                                ((space-name :target-type name-string :required
                                  common-lisp:t :member-name "spaceName"
                                  :http-label common-lisp:t)
                                 (project-name :target-type name-string
                                  :required common-lisp:t :member-name
                                  "projectName" :http-label common-lisp:t)
                                 (dev-environment-id :target-type uuid
                                  :required common-lisp:t :member-name
                                  "devEnvironmentId" :http-label common-lisp:t)
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults"))
                                (:shape-name
                                 "ListDevEnvironmentSessionsRequest"))

(smithy/sdk/shapes:define-output list-dev-environment-sessions-response
                                 common-lisp:nil
                                 ((items :target-type
                                   dev-environment-sessions-summary-list
                                   :required common-lisp:t :member-name
                                   "items")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "ListDevEnvironmentSessionsResponse"))

(smithy/sdk/shapes:define-input list-dev-environments-request common-lisp:nil
                                ((space-name :target-type name-string :required
                                  common-lisp:t :member-name "spaceName"
                                  :http-label common-lisp:t)
                                 (project-name :target-type name-string
                                  :member-name "projectName")
                                 (filters :target-type filters :member-name
                                  "filters")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults"))
                                (:shape-name "ListDevEnvironmentsRequest"))

(smithy/sdk/shapes:define-output list-dev-environments-response common-lisp:nil
                                 ((items :target-type
                                   dev-environment-summary-list :required
                                   common-lisp:t :member-name "items")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name "ListDevEnvironmentsResponse"))

(smithy/sdk/shapes:define-input list-event-logs-request common-lisp:nil
                                ((space-name :target-type name-string :required
                                  common-lisp:t :member-name "spaceName"
                                  :http-label common-lisp:t)
                                 (start-time :target-type timestamp :required
                                  common-lisp:t :member-name "startTime"
                                  :timestamp-format "date-time")
                                 (end-time :target-type timestamp :required
                                  common-lisp:t :member-name "endTime"
                                  :timestamp-format "date-time")
                                 (event-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "eventName")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults"))
                                (:shape-name "ListEventLogsRequest"))

(smithy/sdk/shapes:define-output list-event-logs-response common-lisp:nil
                                 ((next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken")
                                  (items :target-type event-log-entries
                                   :required common-lisp:t :member-name
                                   "items"))
                                 (:shape-name "ListEventLogsResponse"))

(smithy/sdk/shapes:define-input list-projects-request common-lisp:nil
                                ((space-name :target-type name-string :required
                                  common-lisp:t :member-name "spaceName"
                                  :http-label common-lisp:t)
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults")
                                 (filters :target-type project-list-filters
                                  :member-name "filters"))
                                (:shape-name "ListProjectsRequest"))

(smithy/sdk/shapes:define-output list-projects-response common-lisp:nil
                                 ((next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken")
                                  (items :target-type project-summaries
                                   :member-name "items"))
                                 (:shape-name "ListProjectsResponse"))

(smithy/sdk/shapes:define-structure list-source-repositories-item
                                    common-lisp:nil
                                    ((id :target-type
                                      source-repository-id-string :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type
                                      source-repository-name-string :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      source-repository-description-string
                                      :member-name "description")
                                     (last-updated-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "lastUpdatedTime")
                                     (created-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "createdTime"))
                                    (:shape-name "ListSourceRepositoriesItem"))

(smithy/sdk/shapes:define-list list-source-repositories-items :member
                               list-source-repositories-item)

(smithy/sdk/shapes:define-input list-source-repositories-request
                                common-lisp:nil
                                ((space-name :target-type name-string :required
                                  common-lisp:t :member-name "spaceName"
                                  :http-label common-lisp:t)
                                 (project-name :target-type name-string
                                  :required common-lisp:t :member-name
                                  "projectName" :http-label common-lisp:t)
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults"))
                                (:shape-name "ListSourceRepositoriesRequest"))

(smithy/sdk/shapes:define-output list-source-repositories-response
                                 common-lisp:nil
                                 ((items :target-type
                                   list-source-repositories-items :member-name
                                   "items")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name "ListSourceRepositoriesResponse"))

(smithy/sdk/shapes:define-structure list-source-repository-branches-item
                                    common-lisp:nil
                                    ((ref :target-type
                                      source-repository-branch-ref-string
                                      :member-name "ref")
                                     (name :target-type
                                      source-repository-branch-string
                                      :member-name "name")
                                     (last-updated-time :target-type timestamp
                                      :member-name "lastUpdatedTime"
                                      :timestamp-format "date-time")
                                     (head-commit-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "headCommitId"))
                                    (:shape-name
                                     "ListSourceRepositoryBranchesItem"))

(smithy/sdk/shapes:define-list list-source-repository-branches-items :member
                               list-source-repository-branches-item)

(smithy/sdk/shapes:define-input list-source-repository-branches-request
                                common-lisp:nil
                                ((space-name :target-type name-string :required
                                  common-lisp:t :member-name "spaceName"
                                  :http-label common-lisp:t)
                                 (project-name :target-type name-string
                                  :required common-lisp:t :member-name
                                  "projectName" :http-label common-lisp:t)
                                 (source-repository-name :target-type
                                  source-repository-name-string :required
                                  common-lisp:t :member-name
                                  "sourceRepositoryName" :http-label
                                  common-lisp:t)
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults"))
                                (:shape-name
                                 "ListSourceRepositoryBranchesRequest"))

(smithy/sdk/shapes:define-output list-source-repository-branches-response
                                 common-lisp:nil
                                 ((next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken")
                                  (items :target-type
                                   list-source-repository-branches-items
                                   :required common-lisp:t :member-name
                                   "items"))
                                 (:shape-name
                                  "ListSourceRepositoryBranchesResponse"))

(smithy/sdk/shapes:define-input list-spaces-request common-lisp:nil
                                ((next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken"))
                                (:shape-name "ListSpacesRequest"))

(smithy/sdk/shapes:define-output list-spaces-response common-lisp:nil
                                 ((next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken")
                                  (items :target-type space-summaries
                                   :member-name "items"))
                                 (:shape-name "ListSpacesResponse"))

(smithy/sdk/shapes:define-input list-workflow-runs-request common-lisp:nil
                                ((space-name :target-type name-string :required
                                  common-lisp:t :member-name "spaceName"
                                  :http-label common-lisp:t)
                                 (workflow-id :target-type uuid :member-name
                                  "workflowId" :http-query "workflowId")
                                 (project-name :target-type name-string
                                  :required common-lisp:t :member-name
                                  "projectName" :http-label common-lisp:t)
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (sort-by :target-type
                                  workflow-run-sort-criteria-list :member-name
                                  "sortBy"))
                                (:shape-name "ListWorkflowRunsRequest"))

(smithy/sdk/shapes:define-output list-workflow-runs-response common-lisp:nil
                                 ((next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken")
                                  (items :target-type workflow-run-summaries
                                   :member-name "items"))
                                 (:shape-name "ListWorkflowRunsResponse"))

(smithy/sdk/shapes:define-input list-workflows-request common-lisp:nil
                                ((space-name :target-type name-string :required
                                  common-lisp:t :member-name "spaceName"
                                  :http-label common-lisp:t)
                                 (project-name :target-type name-string
                                  :required common-lisp:t :member-name
                                  "projectName" :http-label common-lisp:t)
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (sort-by :target-type
                                  workflow-sort-criteria-list :member-name
                                  "sortBy"))
                                (:shape-name "ListWorkflowsRequest"))

(smithy/sdk/shapes:define-output list-workflows-response common-lisp:nil
                                 ((next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken")
                                  (items :target-type workflow-summaries
                                   :member-name "items"))
                                 (:shape-name "ListWorkflowsResponse"))

(smithy/sdk/shapes:define-type name-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type operation-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure persistent-storage common-lisp:nil
                                    ((size-in-gi-b :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "sizeInGiB"))
                                    (:shape-name "PersistentStorage"))

(smithy/sdk/shapes:define-structure persistent-storage-configuration
                                    common-lisp:nil
                                    ((size-in-gi-b :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "sizeInGiB"))
                                    (:shape-name
                                     "PersistentStorageConfiguration"))

common-lisp:nil

(smithy/sdk/shapes:define-type project-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type project-display-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure project-information common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (project-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "projectId"))
                                    (:shape-name "ProjectInformation"))

(smithy/sdk/shapes:define-structure project-list-filter common-lisp:nil
                                    ((key :target-type filter-key :required
                                      common-lisp:t :member-name "key")
                                     (values :target-type string-list :required
                                      common-lisp:t :member-name "values")
                                     (comparison-operator :target-type
                                      comparison-operator :member-name
                                      "comparisonOperator"))
                                    (:shape-name "ProjectListFilter"))

(smithy/sdk/shapes:define-list project-list-filters :member project-list-filter)

(smithy/sdk/shapes:define-list project-summaries :member project-summary)

(smithy/sdk/shapes:define-structure project-summary common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (display-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "displayName")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description"))
                                    (:shape-name "ProjectSummary"))

(smithy/sdk/shapes:define-type region-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list repositories-input :member repository-input)

(smithy/sdk/shapes:define-structure repository-input common-lisp:nil
                                    ((repository-name :target-type
                                      source-repository-name-string :required
                                      common-lisp:t :member-name
                                      "repositoryName")
                                     (branch-name :target-type
                                      source-repository-branch-string
                                      :member-name "branchName"))
                                    (:shape-name "RepositoryInput"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type sensitive-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

common-lisp:nil

common-lisp:nil

(smithy/sdk/shapes:define-type source-repository-branch-ref-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type source-repository-branch-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type source-repository-description-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type source-repository-id-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type source-repository-name-string
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type space-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list space-summaries :member space-summary)

(smithy/sdk/shapes:define-structure space-summary common-lisp:nil
                                    ((name :target-type name-string :required
                                      common-lisp:t :member-name "name")
                                     (region-name :target-type region-string
                                      :required common-lisp:t :member-name
                                      "regionName")
                                     (display-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "displayName")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description"))
                                    (:shape-name "SpaceSummary"))

(smithy/sdk/shapes:define-input start-dev-environment-request common-lisp:nil
                                ((space-name :target-type name-string :required
                                  common-lisp:t :member-name "spaceName"
                                  :http-label common-lisp:t)
                                 (project-name :target-type name-string
                                  :required common-lisp:t :member-name
                                  "projectName" :http-label common-lisp:t)
                                 (id :target-type uuid :required common-lisp:t
                                  :member-name "id" :http-label common-lisp:t)
                                 (ides :target-type ide-configuration-list
                                  :member-name "ides")
                                 (instance-type :target-type instance-type
                                  :member-name "instanceType")
                                 (inactivity-timeout-minutes :target-type
                                  inactivity-timeout-minutes :member-name
                                  "inactivityTimeoutMinutes"))
                                (:shape-name "StartDevEnvironmentRequest"))

(smithy/sdk/shapes:define-output start-dev-environment-response common-lisp:nil
                                 ((space-name :target-type name-string
                                   :required common-lisp:t :member-name
                                   "spaceName")
                                  (project-name :target-type name-string
                                   :required common-lisp:t :member-name
                                   "projectName")
                                  (id :target-type uuid :required common-lisp:t
                                   :member-name "id")
                                  (status :target-type dev-environment-status
                                   :required common-lisp:t :member-name
                                   "status"))
                                 (:shape-name "StartDevEnvironmentResponse"))

(smithy/sdk/shapes:define-input start-dev-environment-session-request
                                common-lisp:nil
                                ((space-name :target-type name-string :required
                                  common-lisp:t :member-name "spaceName"
                                  :http-label common-lisp:t)
                                 (project-name :target-type name-string
                                  :required common-lisp:t :member-name
                                  "projectName" :http-label common-lisp:t)
                                 (id :target-type uuid :required common-lisp:t
                                  :member-name "id" :http-label common-lisp:t)
                                 (session-configuration :target-type
                                  dev-environment-session-configuration
                                  :required common-lisp:t :member-name
                                  "sessionConfiguration"))
                                (:shape-name
                                 "StartDevEnvironmentSessionRequest"))

(smithy/sdk/shapes:define-output start-dev-environment-session-response
                                 common-lisp:nil
                                 ((access-details :target-type
                                   dev-environment-access-details :required
                                   common-lisp:t :member-name "accessDetails")
                                  (session-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "sessionId")
                                  (space-name :target-type name-string
                                   :required common-lisp:t :member-name
                                   "spaceName")
                                  (project-name :target-type name-string
                                   :required common-lisp:t :member-name
                                   "projectName")
                                  (id :target-type uuid :required common-lisp:t
                                   :member-name "id"))
                                 (:shape-name
                                  "StartDevEnvironmentSessionResponse"))

(smithy/sdk/shapes:define-input start-workflow-run-request common-lisp:nil
                                ((space-name :target-type name-string :required
                                  common-lisp:t :member-name "spaceName"
                                  :http-label common-lisp:t)
                                 (project-name :target-type name-string
                                  :required common-lisp:t :member-name
                                  "projectName" :http-label common-lisp:t)
                                 (workflow-id :target-type uuid :required
                                  common-lisp:t :member-name "workflowId"
                                  :http-query "workflowId")
                                 (client-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "clientToken"))
                                (:shape-name "StartWorkflowRunRequest"))

(smithy/sdk/shapes:define-output start-workflow-run-response common-lisp:nil
                                 ((space-name :target-type name-string
                                   :required common-lisp:t :member-name
                                   "spaceName")
                                  (project-name :target-type name-string
                                   :required common-lisp:t :member-name
                                   "projectName")
                                  (id :target-type uuid :required common-lisp:t
                                   :member-name "id")
                                  (workflow-id :target-type uuid :required
                                   common-lisp:t :member-name "workflowId"))
                                 (:shape-name "StartWorkflowRunResponse"))

(smithy/sdk/shapes:define-type status-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input stop-dev-environment-request common-lisp:nil
                                ((space-name :target-type name-string :required
                                  common-lisp:t :member-name "spaceName"
                                  :http-label common-lisp:t)
                                 (project-name :target-type name-string
                                  :required common-lisp:t :member-name
                                  "projectName" :http-label common-lisp:t)
                                 (id :target-type uuid :required common-lisp:t
                                  :member-name "id" :http-label common-lisp:t))
                                (:shape-name "StopDevEnvironmentRequest"))

(smithy/sdk/shapes:define-output stop-dev-environment-response common-lisp:nil
                                 ((space-name :target-type name-string
                                   :required common-lisp:t :member-name
                                   "spaceName")
                                  (project-name :target-type name-string
                                   :required common-lisp:t :member-name
                                   "projectName")
                                  (id :target-type uuid :required common-lisp:t
                                   :member-name "id")
                                  (status :target-type dev-environment-status
                                   :required common-lisp:t :member-name
                                   "status"))
                                 (:shape-name "StopDevEnvironmentResponse"))

(smithy/sdk/shapes:define-input stop-dev-environment-session-request
                                common-lisp:nil
                                ((space-name :target-type name-string :required
                                  common-lisp:t :member-name "spaceName"
                                  :http-label common-lisp:t)
                                 (project-name :target-type name-string
                                  :required common-lisp:t :member-name
                                  "projectName" :http-label common-lisp:t)
                                 (id :target-type uuid :required common-lisp:t
                                  :member-name "id" :http-label common-lisp:t)
                                 (session-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "sessionId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "StopDevEnvironmentSessionRequest"))

(smithy/sdk/shapes:define-output stop-dev-environment-session-response
                                 common-lisp:nil
                                 ((space-name :target-type name-string
                                   :required common-lisp:t :member-name
                                   "spaceName")
                                  (project-name :target-type name-string
                                   :required common-lisp:t :member-name
                                   "projectName")
                                  (id :target-type uuid :required common-lisp:t
                                   :member-name "id")
                                  (session-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "sessionId"))
                                 (:shape-name
                                  "StopDevEnvironmentSessionResponse"))

(smithy/sdk/shapes:define-list string-list :member
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input update-dev-environment-request common-lisp:nil
                                ((space-name :target-type name-string :required
                                  common-lisp:t :member-name "spaceName"
                                  :http-label common-lisp:t)
                                 (project-name :target-type name-string
                                  :required common-lisp:t :member-name
                                  "projectName" :http-label common-lisp:t)
                                 (id :target-type uuid :required common-lisp:t
                                  :member-name "id" :http-label common-lisp:t)
                                 (alias :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "alias")
                                 (ides :target-type ide-configuration-list
                                  :member-name "ides")
                                 (instance-type :target-type instance-type
                                  :member-name "instanceType")
                                 (inactivity-timeout-minutes :target-type
                                  inactivity-timeout-minutes :member-name
                                  "inactivityTimeoutMinutes")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "UpdateDevEnvironmentRequest"))

(smithy/sdk/shapes:define-output update-dev-environment-response
                                 common-lisp:nil
                                 ((id :target-type uuid :required common-lisp:t
                                   :member-name "id")
                                  (space-name :target-type name-string
                                   :required common-lisp:t :member-name
                                   "spaceName")
                                  (project-name :target-type name-string
                                   :required common-lisp:t :member-name
                                   "projectName")
                                  (alias :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "alias")
                                  (ides :target-type ide-configuration-list
                                   :member-name "ides")
                                  (instance-type :target-type instance-type
                                   :member-name "instanceType")
                                  (inactivity-timeout-minutes :target-type
                                   inactivity-timeout-minutes :member-name
                                   "inactivityTimeoutMinutes")
                                  (client-token :target-type client-token
                                   :member-name "clientToken"))
                                 (:shape-name "UpdateDevEnvironmentResponse"))

(smithy/sdk/shapes:define-input update-project-request common-lisp:nil
                                ((space-name :target-type name-string :required
                                  common-lisp:t :member-name "spaceName"
                                  :http-label common-lisp:t)
                                 (name :target-type name-string :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (description :target-type project-description
                                  :member-name "description"))
                                (:shape-name "UpdateProjectRequest"))

(smithy/sdk/shapes:define-output update-project-response common-lisp:nil
                                 ((space-name :target-type name-string
                                   :member-name "spaceName")
                                  (name :target-type name-string :member-name
                                   "name")
                                  (display-name :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "displayName")
                                  (description :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "description"))
                                 (:shape-name "UpdateProjectResponse"))

(smithy/sdk/shapes:define-input update-space-request common-lisp:nil
                                ((name :target-type name-string :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (description :target-type space-description
                                  :member-name "description"))
                                (:shape-name "UpdateSpaceRequest"))

(smithy/sdk/shapes:define-output update-space-response common-lisp:nil
                                 ((name :target-type name-string :member-name
                                   "name")
                                  (display-name :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "displayName")
                                  (description :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "description"))
                                 (:shape-name "UpdateSpaceResponse"))

(smithy/sdk/shapes:define-structure user-identity common-lisp:nil
                                    ((user-type :target-type user-type
                                      :required common-lisp:t :member-name
                                      "userType")
                                     (principal-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "principalId")
                                     (user-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "userName")
                                     (aws-account-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "awsAccountId"))
                                    (:shape-name "UserIdentity"))

(smithy/sdk/shapes:define-type user-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-output verify-session-response common-lisp:nil
                                 ((identity :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "identity"))
                                 (:shape-name "VerifySessionResponse"))

common-lisp:nil

(smithy/sdk/shapes:define-structure workflow-definition common-lisp:nil
                                    ((path :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "path"))
                                    (:shape-name "WorkflowDefinition"))

(smithy/sdk/shapes:define-structure workflow-definition-summary common-lisp:nil
                                    ((path :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "path"))
                                    (:shape-name "WorkflowDefinitionSummary"))

common-lisp:nil

(smithy/sdk/shapes:define-type workflow-run-mode smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure workflow-run-sort-criteria common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "WorkflowRunSortCriteria"))

(smithy/sdk/shapes:define-list workflow-run-sort-criteria-list :member
                               workflow-run-sort-criteria)

(smithy/sdk/shapes:define-type workflow-run-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure workflow-run-status-reason common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "WorkflowRunStatusReason"))

(smithy/sdk/shapes:define-list workflow-run-status-reasons :member
                               workflow-run-status-reason)

(smithy/sdk/shapes:define-list workflow-run-summaries :member
                               workflow-run-summary)

(smithy/sdk/shapes:define-structure workflow-run-summary common-lisp:nil
                                    ((id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (workflow-id :target-type uuid :required
                                      common-lisp:t :member-name "workflowId")
                                     (workflow-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "workflowName")
                                     (status :target-type workflow-run-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (status-reasons :target-type
                                      workflow-run-status-reasons :member-name
                                      "statusReasons")
                                     (start-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "startTime" :timestamp-format
                                      "date-time")
                                     (end-time :target-type timestamp
                                      :member-name "endTime" :timestamp-format
                                      "date-time")
                                     (last-updated-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "lastUpdatedTime" :timestamp-format
                                      "date-time"))
                                    (:shape-name "WorkflowRunSummary"))

(smithy/sdk/shapes:define-structure workflow-sort-criteria common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "WorkflowSortCriteria"))

(smithy/sdk/shapes:define-list workflow-sort-criteria-list :member
                               workflow-sort-criteria)

(smithy/sdk/shapes:define-type workflow-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list workflow-summaries :member workflow-summary)

(smithy/sdk/shapes:define-structure workflow-summary common-lisp:nil
                                    ((id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (source-repository-name :target-type
                                      source-repository-name-string :required
                                      common-lisp:t :member-name
                                      "sourceRepositoryName")
                                     (source-branch-name :target-type
                                      source-repository-branch-string :required
                                      common-lisp:t :member-name
                                      "sourceBranchName")
                                     (definition :target-type
                                      workflow-definition-summary :required
                                      common-lisp:t :member-name "definition")
                                     (created-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "createdTime" :timestamp-format
                                      "date-time")
                                     (last-updated-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "lastUpdatedTime" :timestamp-format
                                      "date-time")
                                     (run-mode :target-type workflow-run-mode
                                      :required common-lisp:t :member-name
                                      "runMode")
                                     (status :target-type workflow-status
                                      :required common-lisp:t :member-name
                                      "status"))
                                    (:shape-name "WorkflowSummary"))

(smithy/sdk/operation:define-operation create-access-token :shape-name
                                       "CreateAccessToken" :input
                                       create-access-token-request :output
                                       create-access-token-response :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/v1/accessTokens" :code 201)

(smithy/sdk/operation:define-operation create-dev-environment :shape-name
                                       "CreateDevEnvironment" :input
                                       create-dev-environment-request :output
                                       create-dev-environment-response :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments"
                                       :code 201)

(smithy/sdk/operation:define-operation create-project :shape-name
                                       "CreateProject" :input
                                       create-project-request :output
                                       create-project-response :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/v1/spaces/{spaceName}/projects" :code
                                       201)

(smithy/sdk/operation:define-operation create-source-repository :shape-name
                                       "CreateSourceRepository" :input
                                       create-source-repository-request :output
                                       create-source-repository-response
                                       :errors common-lisp:nil :method "PUT"
                                       :uri
                                       "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories/{name}"
                                       :code 201)

(smithy/sdk/operation:define-operation create-source-repository-branch
                                       :shape-name
                                       "CreateSourceRepositoryBranch" :input
                                       create-source-repository-branch-request
                                       :output
                                       create-source-repository-branch-response
                                       :errors common-lisp:nil :method "PUT"
                                       :uri
                                       "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories/{sourceRepositoryName}/branches/{name}"
                                       :code 201)

(smithy/sdk/operation:define-operation delete-access-token :shape-name
                                       "DeleteAccessToken" :input
                                       delete-access-token-request :output
                                       delete-access-token-response :errors
                                       common-lisp:nil :method "DELETE" :uri
                                       "/v1/accessTokens/{id}" :code 200)

(smithy/sdk/operation:define-operation delete-dev-environment :shape-name
                                       "DeleteDevEnvironment" :input
                                       delete-dev-environment-request :output
                                       delete-dev-environment-response :errors
                                       common-lisp:nil :method "DELETE" :uri
                                       "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-project :shape-name
                                       "DeleteProject" :input
                                       delete-project-request :output
                                       delete-project-response :errors
                                       common-lisp:nil :method "DELETE" :uri
                                       "/v1/spaces/{spaceName}/projects/{name}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-source-repository :shape-name
                                       "DeleteSourceRepository" :input
                                       delete-source-repository-request :output
                                       delete-source-repository-response
                                       :errors common-lisp:nil :method "DELETE"
                                       :uri
                                       "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories/{name}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-space :shape-name "DeleteSpace"
                                       :input delete-space-request :output
                                       delete-space-response :errors
                                       common-lisp:nil :method "DELETE" :uri
                                       "/v1/spaces/{name}" :code 200)

(smithy/sdk/operation:define-operation get-dev-environment :shape-name
                                       "GetDevEnvironment" :input
                                       get-dev-environment-request :output
                                       get-dev-environment-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-project :shape-name "GetProject"
                                       :input get-project-request :output
                                       get-project-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/v1/spaces/{spaceName}/projects/{name}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-source-repository :shape-name
                                       "GetSourceRepository" :input
                                       get-source-repository-request :output
                                       get-source-repository-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories/{name}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-source-repository-clone-urls
                                       :shape-name
                                       "GetSourceRepositoryCloneUrls" :input
                                       get-source-repository-clone-urls-request
                                       :output
                                       get-source-repository-clone-urls-response
                                       :errors common-lisp:nil :method "GET"
                                       :uri
                                       "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories/{sourceRepositoryName}/cloneUrls"
                                       :code 200)

(smithy/sdk/operation:define-operation get-space :shape-name "GetSpace" :input
                                       get-space-request :output
                                       get-space-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/v1/spaces/{name}" :code 200)

(smithy/sdk/operation:define-operation get-subscription :shape-name
                                       "GetSubscription" :input
                                       get-subscription-request :output
                                       get-subscription-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/v1/spaces/{spaceName}/subscription"
                                       :code 200)

(smithy/sdk/operation:define-operation get-user-details :shape-name
                                       "GetUserDetails" :input
                                       get-user-details-request :output
                                       get-user-details-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/userDetails" :code 200)

(smithy/sdk/operation:define-operation get-workflow :shape-name "GetWorkflow"
                                       :input get-workflow-request :output
                                       get-workflow-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/v1/spaces/{spaceName}/projects/{projectName}/workflows/{id}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-workflow-run :shape-name
                                       "GetWorkflowRun" :input
                                       get-workflow-run-request :output
                                       get-workflow-run-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/v1/spaces/{spaceName}/projects/{projectName}/workflowRuns/{id}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-access-tokens :shape-name
                                       "ListAccessTokens" :input
                                       list-access-tokens-request :output
                                       list-access-tokens-response :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/v1/accessTokens" :code 200)

(smithy/sdk/operation:define-operation list-dev-environment-sessions
                                       :shape-name "ListDevEnvironmentSessions"
                                       :input
                                       list-dev-environment-sessions-request
                                       :output
                                       list-dev-environment-sessions-response
                                       :errors common-lisp:nil :method "POST"
                                       :uri
                                       "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{devEnvironmentId}/sessions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-dev-environments :shape-name
                                       "ListDevEnvironments" :input
                                       list-dev-environments-request :output
                                       list-dev-environments-response :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/v1/spaces/{spaceName}/devEnvironments"
                                       :code 200)

(smithy/sdk/operation:define-operation list-event-logs :shape-name
                                       "ListEventLogs" :input
                                       list-event-logs-request :output
                                       list-event-logs-response :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/v1/spaces/{spaceName}/eventLogs" :code
                                       200)

(smithy/sdk/operation:define-operation list-projects :shape-name "ListProjects"
                                       :input list-projects-request :output
                                       list-projects-response :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/v1/spaces/{spaceName}/projects" :code
                                       200)

(smithy/sdk/operation:define-operation list-source-repositories :shape-name
                                       "ListSourceRepositories" :input
                                       list-source-repositories-request :output
                                       list-source-repositories-response
                                       :errors common-lisp:nil :method "POST"
                                       :uri
                                       "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories"
                                       :code 200)

(smithy/sdk/operation:define-operation list-source-repository-branches
                                       :shape-name
                                       "ListSourceRepositoryBranches" :input
                                       list-source-repository-branches-request
                                       :output
                                       list-source-repository-branches-response
                                       :errors common-lisp:nil :method "POST"
                                       :uri
                                       "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories/{sourceRepositoryName}/branches"
                                       :code 200)

(smithy/sdk/operation:define-operation list-spaces :shape-name "ListSpaces"
                                       :input list-spaces-request :output
                                       list-spaces-response :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/v1/spaces" :code 200)

(smithy/sdk/operation:define-operation list-workflow-runs :shape-name
                                       "ListWorkflowRuns" :input
                                       list-workflow-runs-request :output
                                       list-workflow-runs-response :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/v1/spaces/{spaceName}/projects/{projectName}/workflowRuns"
                                       :code 200)

(smithy/sdk/operation:define-operation list-workflows :shape-name
                                       "ListWorkflows" :input
                                       list-workflows-request :output
                                       list-workflows-response :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/v1/spaces/{spaceName}/projects/{projectName}/workflows"
                                       :code 200)

(smithy/sdk/operation:define-operation start-dev-environment :shape-name
                                       "StartDevEnvironment" :input
                                       start-dev-environment-request :output
                                       start-dev-environment-response :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}/start"
                                       :code 200)

(smithy/sdk/operation:define-operation start-dev-environment-session
                                       :shape-name "StartDevEnvironmentSession"
                                       :input
                                       start-dev-environment-session-request
                                       :output
                                       start-dev-environment-session-response
                                       :errors common-lisp:nil :method "PUT"
                                       :uri
                                       "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}/session"
                                       :code 200)

(smithy/sdk/operation:define-operation start-workflow-run :shape-name
                                       "StartWorkflowRun" :input
                                       start-workflow-run-request :output
                                       start-workflow-run-response :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/v1/spaces/{spaceName}/projects/{projectName}/workflowRuns"
                                       :code 200)

(smithy/sdk/operation:define-operation stop-dev-environment :shape-name
                                       "StopDevEnvironment" :input
                                       stop-dev-environment-request :output
                                       stop-dev-environment-response :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}/stop"
                                       :code 200)

(smithy/sdk/operation:define-operation stop-dev-environment-session :shape-name
                                       "StopDevEnvironmentSession" :input
                                       stop-dev-environment-session-request
                                       :output
                                       stop-dev-environment-session-response
                                       :errors common-lisp:nil :method "DELETE"
                                       :uri
                                       "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}/session/{sessionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-dev-environment :shape-name
                                       "UpdateDevEnvironment" :input
                                       update-dev-environment-request :output
                                       update-dev-environment-response :errors
                                       common-lisp:nil :method "PATCH" :uri
                                       "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-project :shape-name
                                       "UpdateProject" :input
                                       update-project-request :output
                                       update-project-response :errors
                                       common-lisp:nil :method "PATCH" :uri
                                       "/v1/spaces/{spaceName}/projects/{name}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-space :shape-name "UpdateSpace"
                                       :input update-space-request :output
                                       update-space-response :errors
                                       common-lisp:nil :method "PATCH" :uri
                                       "/v1/spaces/{name}" :code 200)

(smithy/sdk/operation:define-operation verify-session :shape-name
                                       "VerifySession" :input common-lisp:null
                                       :output verify-session-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/session" :code 200)
