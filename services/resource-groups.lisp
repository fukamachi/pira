(uiop/package:define-package #:pira/resource-groups (:use)
                             (:export #:account-settings #:application-arn
                              #:application-tag #:application-tag-key #:ardi
                              #:cancel-tag-sync-task #:create-group
                              #:create-group-name #:criticality #:delete-group
                              #:description #:display-name #:error-code
                              #:error-message #:failed-resource
                              #:failed-resource-list #:get-account-settings
                              #:get-group #:get-group-configuration
                              #:get-group-query #:get-tag-sync-task #:get-tags
                              #:group #:group-arn #:group-arn-v2
                              #:group-configuration
                              #:group-configuration-failure-reason
                              #:group-configuration-item
                              #:group-configuration-list
                              #:group-configuration-parameter
                              #:group-configuration-parameter-name
                              #:group-configuration-parameter-value
                              #:group-configuration-parameter-value-list
                              #:group-configuration-status
                              #:group-configuration-type #:group-filter
                              #:group-filter-list #:group-filter-name
                              #:group-filter-value #:group-filter-values
                              #:group-identifier #:group-identifier-list
                              #:group-lifecycle-events-desired-status
                              #:group-lifecycle-events-status
                              #:group-lifecycle-events-status-message
                              #:group-list #:group-name #:group-parameter-list
                              #:group-query #:group-resources #:group-string
                              #:group-string-v2 #:grouping-status
                              #:grouping-statuses-item #:grouping-statuses-list
                              #:grouping-type #:list-group-resources
                              #:list-group-resources-item
                              #:list-group-resources-item-list
                              #:list-grouping-statuses
                              #:list-grouping-statuses-filter
                              #:list-grouping-statuses-filter-list
                              #:list-grouping-statuses-filter-name
                              #:list-grouping-statuses-filter-value
                              #:list-grouping-statuses-filter-values
                              #:list-groups #:list-tag-sync-tasks
                              #:list-tag-sync-tasks-filter
                              #:list-tag-sync-tasks-filter-list #:max-results
                              #:next-token #:owner #:pending-resource
                              #:pending-resource-list #:put-group-configuration
                              #:query #:query-error #:query-error-code
                              #:query-error-list #:query-error-message
                              #:query-type #:resource-arn #:resource-arn-list
                              #:resource-filter #:resource-filter-list
                              #:resource-filter-name #:resource-filter-value
                              #:resource-filter-values #:resource-identifier
                              #:resource-identifier-list #:resource-query
                              #:resource-status #:resource-status-value
                              #:resource-type #:role-arn #:search-resources
                              #:start-tag-sync-task #:tag #:tag-key
                              #:tag-key-list #:tag-sync-task-arn
                              #:tag-sync-task-item #:tag-sync-task-list
                              #:tag-sync-task-status #:tag-value #:tags
                              #:ungroup-resources #:untag
                              #:update-account-settings #:update-group
                              #:update-group-query #:timestamp))
(common-lisp:in-package #:pira/resource-groups)

(smithy/sdk/service:define-service ardi :shape-name "Ardi" :version
                                   "2017-11-27" :title "AWS Resource Groups"
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Resource Groups")
                                      ("arnNamespace" . "resource-groups")
                                      ("cloudFormationName" . "ResourceGroups")
                                      ("cloudTrailEventSource"
                                       . "resourcegroups.amazonaws.com")
                                      ("endpointPrefix" . "resource-groups"))
                                     ("aws.auth#sigv4"
                                      ("name" . "resource-groups"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-structure account-settings common-lisp:nil
                                    ((group-lifecycle-events-desired-status
                                      :target-type
                                      group-lifecycle-events-desired-status
                                      :member-name
                                      "GroupLifecycleEventsDesiredStatus")
                                     (group-lifecycle-events-status
                                      :target-type
                                      group-lifecycle-events-status
                                      :member-name
                                      "GroupLifecycleEventsStatus")
                                     (group-lifecycle-events-status-message
                                      :target-type
                                      group-lifecycle-events-status-message
                                      :member-name
                                      "GroupLifecycleEventsStatusMessage"))
                                    (:shape-name "AccountSettings"))

(smithy/sdk/shapes:define-type application-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map application-tag :key application-tag-key :value
                              application-arn)

(smithy/sdk/shapes:define-type application-tag-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input cancel-tag-sync-task-input common-lisp:nil
                                ((task-arn :target-type tag-sync-task-arn
                                  :required common-lisp:t :member-name
                                  "TaskArn"))
                                (:shape-name "CancelTagSyncTaskInput"))

(smithy/sdk/shapes:define-input create-group-input common-lisp:nil
                                ((name :target-type create-group-name :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type description
                                  :member-name "Description")
                                 (resource-query :target-type resource-query
                                  :member-name "ResourceQuery")
                                 (tags :target-type tags :member-name "Tags")
                                 (configuration :target-type
                                  group-configuration-list :member-name
                                  "Configuration")
                                 (criticality :target-type criticality
                                  :member-name "Criticality")
                                 (owner :target-type owner :member-name
                                  "Owner")
                                 (display-name :target-type display-name
                                  :member-name "DisplayName"))
                                (:shape-name "CreateGroupInput"))

(smithy/sdk/shapes:define-type create-group-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-output create-group-output common-lisp:nil
                                 ((group :target-type group :member-name
                                   "Group")
                                  (resource-query :target-type resource-query
                                   :member-name "ResourceQuery")
                                  (tags :target-type tags :member-name "Tags")
                                  (group-configuration :target-type
                                   group-configuration :member-name
                                   "GroupConfiguration"))
                                 (:shape-name "CreateGroupOutput"))

(smithy/sdk/shapes:define-type criticality smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input delete-group-input common-lisp:nil
                                ((group-name :target-type group-name
                                  :member-name "GroupName")
                                 (group :target-type group-string-v2
                                  :member-name "Group"))
                                (:shape-name "DeleteGroupInput"))

(smithy/sdk/shapes:define-output delete-group-output common-lisp:nil
                                 ((group :target-type group :member-name
                                   "Group"))
                                 (:shape-name "DeleteGroupOutput"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type display-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure failed-resource common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :member-name "ResourceArn")
                                     (error-message :target-type error-message
                                      :member-name "ErrorMessage")
                                     (error-code :target-type error-code
                                      :member-name "ErrorCode"))
                                    (:shape-name "FailedResource"))

(smithy/sdk/shapes:define-list failed-resource-list :member failed-resource)

(smithy/sdk/shapes:define-error forbidden-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ForbiddenException")
                                (:error-code 403))

(smithy/sdk/shapes:define-output get-account-settings-output common-lisp:nil
                                 ((account-settings :target-type
                                   account-settings :member-name
                                   "AccountSettings"))
                                 (:shape-name "GetAccountSettingsOutput"))

(smithy/sdk/shapes:define-input get-group-configuration-input common-lisp:nil
                                ((group :target-type group-string :member-name
                                  "Group"))
                                (:shape-name "GetGroupConfigurationInput"))

(smithy/sdk/shapes:define-output get-group-configuration-output common-lisp:nil
                                 ((group-configuration :target-type
                                   group-configuration :member-name
                                   "GroupConfiguration"))
                                 (:shape-name "GetGroupConfigurationOutput"))

(smithy/sdk/shapes:define-input get-group-input common-lisp:nil
                                ((group-name :target-type group-name
                                  :member-name "GroupName")
                                 (group :target-type group-string-v2
                                  :member-name "Group"))
                                (:shape-name "GetGroupInput"))

(smithy/sdk/shapes:define-output get-group-output common-lisp:nil
                                 ((group :target-type group :member-name
                                   "Group"))
                                 (:shape-name "GetGroupOutput"))

(smithy/sdk/shapes:define-input get-group-query-input common-lisp:nil
                                ((group-name :target-type group-name
                                  :member-name "GroupName")
                                 (group :target-type group-string :member-name
                                  "Group"))
                                (:shape-name "GetGroupQueryInput"))

(smithy/sdk/shapes:define-output get-group-query-output common-lisp:nil
                                 ((group-query :target-type group-query
                                   :member-name "GroupQuery"))
                                 (:shape-name "GetGroupQueryOutput"))

(smithy/sdk/shapes:define-input get-tag-sync-task-input common-lisp:nil
                                ((task-arn :target-type tag-sync-task-arn
                                  :required common-lisp:t :member-name
                                  "TaskArn"))
                                (:shape-name "GetTagSyncTaskInput"))

(smithy/sdk/shapes:define-output get-tag-sync-task-output common-lisp:nil
                                 ((group-arn :target-type group-arn-v2
                                   :member-name "GroupArn")
                                  (group-name :target-type group-name
                                   :member-name "GroupName")
                                  (task-arn :target-type tag-sync-task-arn
                                   :member-name "TaskArn")
                                  (tag-key :target-type tag-key :member-name
                                   "TagKey")
                                  (tag-value :target-type tag-value
                                   :member-name "TagValue")
                                  (resource-query :target-type resource-query
                                   :member-name "ResourceQuery")
                                  (role-arn :target-type role-arn :member-name
                                   "RoleArn")
                                  (status :target-type tag-sync-task-status
                                   :member-name "Status")
                                  (error-message :target-type error-message
                                   :member-name "ErrorMessage")
                                  (created-at :target-type timestamp
                                   :member-name "CreatedAt"))
                                 (:shape-name "GetTagSyncTaskOutput"))

(smithy/sdk/shapes:define-input get-tags-input common-lisp:nil
                                ((arn :target-type group-arn-v2 :required
                                  common-lisp:t :member-name "Arn" :http-label
                                  common-lisp:t))
                                (:shape-name "GetTagsInput"))

(smithy/sdk/shapes:define-output get-tags-output common-lisp:nil
                                 ((arn :target-type group-arn-v2 :member-name
                                   "Arn")
                                  (tags :target-type tags :member-name "Tags"))
                                 (:shape-name "GetTagsOutput"))

(smithy/sdk/shapes:define-structure group common-lisp:nil
                                    ((group-arn :target-type group-arn-v2
                                      :required common-lisp:t :member-name
                                      "GroupArn")
                                     (name :target-type group-name :required
                                      common-lisp:t :member-name "Name")
                                     (description :target-type description
                                      :member-name "Description")
                                     (criticality :target-type criticality
                                      :member-name "Criticality")
                                     (owner :target-type owner :member-name
                                      "Owner")
                                     (display-name :target-type display-name
                                      :member-name "DisplayName")
                                     (application-tag :target-type
                                      application-tag :member-name
                                      "ApplicationTag"))
                                    (:shape-name "Group"))

(smithy/sdk/shapes:define-type group-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type group-arn-v2 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure group-configuration common-lisp:nil
                                    ((configuration :target-type
                                      group-configuration-list :member-name
                                      "Configuration")
                                     (proposed-configuration :target-type
                                      group-configuration-list :member-name
                                      "ProposedConfiguration")
                                     (status :target-type
                                      group-configuration-status :member-name
                                      "Status")
                                     (failure-reason :target-type
                                      group-configuration-failure-reason
                                      :member-name "FailureReason"))
                                    (:shape-name "GroupConfiguration"))

(smithy/sdk/shapes:define-type group-configuration-failure-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure group-configuration-item common-lisp:nil
                                    ((type :target-type
                                      group-configuration-type :required
                                      common-lisp:t :member-name "Type")
                                     (parameters :target-type
                                      group-parameter-list :member-name
                                      "Parameters"))
                                    (:shape-name "GroupConfigurationItem"))

(smithy/sdk/shapes:define-list group-configuration-list :member
                               group-configuration-item)

(smithy/sdk/shapes:define-structure group-configuration-parameter
                                    common-lisp:nil
                                    ((name :target-type
                                      group-configuration-parameter-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (values :target-type
                                      group-configuration-parameter-value-list
                                      :member-name "Values"))
                                    (:shape-name "GroupConfigurationParameter"))

(smithy/sdk/shapes:define-type group-configuration-parameter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type group-configuration-parameter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list group-configuration-parameter-value-list :member
                               group-configuration-parameter-value)

(smithy/sdk/shapes:define-enum group-configuration-status
    common-lisp:nil
  (:updating "UPDATING")
  (:update-complete "UPDATE_COMPLETE")
  (:update-failed "UPDATE_FAILED"))

(smithy/sdk/shapes:define-type group-configuration-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure group-filter common-lisp:nil
                                    ((name :target-type group-filter-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (values :target-type group-filter-values
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name "GroupFilter"))

(smithy/sdk/shapes:define-list group-filter-list :member group-filter)

(smithy/sdk/shapes:define-enum group-filter-name
    common-lisp:nil
  (:resource-type "resource-type")
  (:configuration-type "configuration-type")
  (:owner "owner")
  (:display-name "display-name")
  (:criticality "criticality"))

(smithy/sdk/shapes:define-type group-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list group-filter-values :member group-filter-value)

(smithy/sdk/shapes:define-structure group-identifier common-lisp:nil
                                    ((group-name :target-type group-name
                                      :member-name "GroupName")
                                     (group-arn :target-type group-arn
                                      :member-name "GroupArn")
                                     (description :target-type description
                                      :member-name "Description")
                                     (criticality :target-type criticality
                                      :member-name "Criticality")
                                     (owner :target-type owner :member-name
                                      "Owner")
                                     (display-name :target-type display-name
                                      :member-name "DisplayName"))
                                    (:shape-name "GroupIdentifier"))

(smithy/sdk/shapes:define-list group-identifier-list :member group-identifier)

(smithy/sdk/shapes:define-enum group-lifecycle-events-desired-status
    common-lisp:nil
  (:active "ACTIVE")
  (:inactive "INACTIVE"))

(smithy/sdk/shapes:define-enum group-lifecycle-events-status
    common-lisp:nil
  (:active "ACTIVE")
  (:inactive "INACTIVE")
  (:in-progress "IN_PROGRESS")
  (:error "ERROR"))

(smithy/sdk/shapes:define-type group-lifecycle-events-status-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list group-list :member group)

(smithy/sdk/shapes:define-type group-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list group-parameter-list :member
                               group-configuration-parameter)

(smithy/sdk/shapes:define-structure group-query common-lisp:nil
                                    ((group-name :target-type group-name
                                      :required common-lisp:t :member-name
                                      "GroupName")
                                     (resource-query :target-type
                                      resource-query :required common-lisp:t
                                      :member-name "ResourceQuery"))
                                    (:shape-name "GroupQuery"))

(smithy/sdk/shapes:define-input group-resources-input common-lisp:nil
                                ((group :target-type group-string-v2 :required
                                  common-lisp:t :member-name "Group")
                                 (resource-arns :target-type resource-arn-list
                                  :required common-lisp:t :member-name
                                  "ResourceArns"))
                                (:shape-name "GroupResourcesInput"))

(smithy/sdk/shapes:define-output group-resources-output common-lisp:nil
                                 ((succeeded :target-type resource-arn-list
                                   :member-name "Succeeded")
                                  (failed :target-type failed-resource-list
                                   :member-name "Failed")
                                  (pending :target-type pending-resource-list
                                   :member-name "Pending"))
                                 (:shape-name "GroupResourcesOutput"))

(smithy/sdk/shapes:define-type group-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type group-string-v2 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum grouping-status
    common-lisp:nil
  (:success "SUCCESS")
  (:failed "FAILED")
  (:in-progress "IN_PROGRESS")
  (:skipped "SKIPPED"))

(smithy/sdk/shapes:define-structure grouping-statuses-item common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :member-name "ResourceArn")
                                     (action :target-type grouping-type
                                      :member-name "Action")
                                     (status :target-type grouping-status
                                      :member-name "Status")
                                     (error-message :target-type error-message
                                      :member-name "ErrorMessage")
                                     (error-code :target-type error-code
                                      :member-name "ErrorCode")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt"))
                                    (:shape-name "GroupingStatusesItem"))

(smithy/sdk/shapes:define-list grouping-statuses-list :member
                               grouping-statuses-item)

(smithy/sdk/shapes:define-enum grouping-type
    common-lisp:nil
  (:group "GROUP")
  (:ungroup "UNGROUP"))

(smithy/sdk/shapes:define-error internal-server-error-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InternalServerErrorException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input list-group-resources-input common-lisp:nil
                                ((group-name :target-type group-name
                                  :member-name "GroupName")
                                 (group :target-type group-string-v2
                                  :member-name "Group")
                                 (filters :target-type resource-filter-list
                                  :member-name "Filters")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListGroupResourcesInput"))

(smithy/sdk/shapes:define-structure list-group-resources-item common-lisp:nil
                                    ((identifier :target-type
                                      resource-identifier :member-name
                                      "Identifier")
                                     (status :target-type resource-status
                                      :member-name "Status"))
                                    (:shape-name "ListGroupResourcesItem"))

(smithy/sdk/shapes:define-list list-group-resources-item-list :member
                               list-group-resources-item)

(smithy/sdk/shapes:define-output list-group-resources-output common-lisp:nil
                                 ((resources :target-type
                                   list-group-resources-item-list :member-name
                                   "Resources")
                                  (resource-identifiers :target-type
                                   resource-identifier-list :member-name
                                   "ResourceIdentifiers")
                                  (next-token :target-type next-token
                                   :member-name "NextToken")
                                  (query-errors :target-type query-error-list
                                   :member-name "QueryErrors"))
                                 (:shape-name "ListGroupResourcesOutput"))

(smithy/sdk/shapes:define-structure list-grouping-statuses-filter
                                    common-lisp:nil
                                    ((name :target-type
                                      list-grouping-statuses-filter-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (values :target-type
                                      list-grouping-statuses-filter-values
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name "ListGroupingStatusesFilter"))

(smithy/sdk/shapes:define-list list-grouping-statuses-filter-list :member
                               list-grouping-statuses-filter)

(smithy/sdk/shapes:define-enum list-grouping-statuses-filter-name
    common-lisp:nil
  (:status "status")
  (:resource-arn "resource-arn"))

(smithy/sdk/shapes:define-type list-grouping-statuses-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list list-grouping-statuses-filter-values :member
                               list-grouping-statuses-filter-value)

(smithy/sdk/shapes:define-input list-grouping-statuses-input common-lisp:nil
                                ((group :target-type group-string-v2 :required
                                  common-lisp:t :member-name "Group")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (filters :target-type
                                  list-grouping-statuses-filter-list
                                  :member-name "Filters")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListGroupingStatusesInput"))

(smithy/sdk/shapes:define-output list-grouping-statuses-output common-lisp:nil
                                 ((group :target-type group-string-v2
                                   :member-name "Group")
                                  (grouping-statuses :target-type
                                   grouping-statuses-list :member-name
                                   "GroupingStatuses")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListGroupingStatusesOutput"))

(smithy/sdk/shapes:define-input list-groups-input common-lisp:nil
                                ((filters :target-type group-filter-list
                                  :member-name "Filters")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListGroupsInput"))

(smithy/sdk/shapes:define-output list-groups-output common-lisp:nil
                                 ((group-identifiers :target-type
                                   group-identifier-list :member-name
                                   "GroupIdentifiers")
                                  (groups :target-type group-list :member-name
                                   "Groups")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListGroupsOutput"))

(smithy/sdk/shapes:define-structure list-tag-sync-tasks-filter common-lisp:nil
                                    ((group-arn :target-type group-arn-v2
                                      :member-name "GroupArn")
                                     (group-name :target-type group-name
                                      :member-name "GroupName"))
                                    (:shape-name "ListTagSyncTasksFilter"))

(smithy/sdk/shapes:define-list list-tag-sync-tasks-filter-list :member
                               list-tag-sync-tasks-filter)

(smithy/sdk/shapes:define-input list-tag-sync-tasks-input common-lisp:nil
                                ((filters :target-type
                                  list-tag-sync-tasks-filter-list :member-name
                                  "Filters")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListTagSyncTasksInput"))

(smithy/sdk/shapes:define-output list-tag-sync-tasks-output common-lisp:nil
                                 ((tag-sync-tasks :target-type
                                   tag-sync-task-list :member-name
                                   "TagSyncTasks")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListTagSyncTasksOutput"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error method-not-allowed-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "MethodNotAllowedException")
                                (:error-code 405))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "NotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type owner smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure pending-resource common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :member-name "ResourceArn"))
                                    (:shape-name "PendingResource"))

(smithy/sdk/shapes:define-list pending-resource-list :member pending-resource)

(smithy/sdk/shapes:define-input put-group-configuration-input common-lisp:nil
                                ((group :target-type group-string :member-name
                                  "Group")
                                 (configuration :target-type
                                  group-configuration-list :member-name
                                  "Configuration"))
                                (:shape-name "PutGroupConfigurationInput"))

(smithy/sdk/shapes:define-output put-group-configuration-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "PutGroupConfigurationOutput"))

(smithy/sdk/shapes:define-type query smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure query-error common-lisp:nil
                                    ((error-code :target-type query-error-code
                                      :member-name "ErrorCode")
                                     (message :target-type query-error-message
                                      :member-name "Message"))
                                    (:shape-name "QueryError"))

(smithy/sdk/shapes:define-enum query-error-code
    common-lisp:nil
  (:cloudformation-stack-inactive "CLOUDFORMATION_STACK_INACTIVE")
  (:cloudformation-stack-not-existing "CLOUDFORMATION_STACK_NOT_EXISTING")
  (:cloudformation-stack-unassumable-role
   "CLOUDFORMATION_STACK_UNASSUMABLE_ROLE")
  (:resource-type-not-supported "RESOURCE_TYPE_NOT_SUPPORTED"))

(smithy/sdk/shapes:define-list query-error-list :member query-error)

(smithy/sdk/shapes:define-type query-error-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum query-type
    common-lisp:nil
  (:tag-filters-1-0 "TAG_FILTERS_1_0")
  (:cloudformation-stack-1-0 "CLOUDFORMATION_STACK_1_0"))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-arn-list :member resource-arn)

(smithy/sdk/shapes:define-structure resource-filter common-lisp:nil
                                    ((name :target-type resource-filter-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (values :target-type
                                      resource-filter-values :required
                                      common-lisp:t :member-name "Values"))
                                    (:shape-name "ResourceFilter"))

(smithy/sdk/shapes:define-list resource-filter-list :member resource-filter)

(smithy/sdk/shapes:define-enum resource-filter-name
    common-lisp:nil
  (:resource-type "resource-type"))

(smithy/sdk/shapes:define-type resource-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-filter-values :member
                               resource-filter-value)

(smithy/sdk/shapes:define-structure resource-identifier common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :member-name "ResourceArn")
                                     (resource-type :target-type resource-type
                                      :member-name "ResourceType"))
                                    (:shape-name "ResourceIdentifier"))

(smithy/sdk/shapes:define-list resource-identifier-list :member
                               resource-identifier)

(smithy/sdk/shapes:define-structure resource-query common-lisp:nil
                                    ((type :target-type query-type :required
                                      common-lisp:t :member-name "Type")
                                     (query :target-type query :required
                                      common-lisp:t :member-name "Query"))
                                    (:shape-name "ResourceQuery"))

(smithy/sdk/shapes:define-structure resource-status common-lisp:nil
                                    ((name :target-type resource-status-value
                                      :member-name "Name"))
                                    (:shape-name "ResourceStatus"))

(smithy/sdk/shapes:define-enum resource-status-value
    common-lisp:nil
  (:pending "PENDING"))

(smithy/sdk/shapes:define-type resource-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input search-resources-input common-lisp:nil
                                ((resource-query :target-type resource-query
                                  :required common-lisp:t :member-name
                                  "ResourceQuery")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "SearchResourcesInput"))

(smithy/sdk/shapes:define-output search-resources-output common-lisp:nil
                                 ((resource-identifiers :target-type
                                   resource-identifier-list :member-name
                                   "ResourceIdentifiers")
                                  (next-token :target-type next-token
                                   :member-name "NextToken")
                                  (query-errors :target-type query-error-list
                                   :member-name "QueryErrors"))
                                 (:shape-name "SearchResourcesOutput"))

(smithy/sdk/shapes:define-input start-tag-sync-task-input common-lisp:nil
                                ((group :target-type group-string-v2 :required
                                  common-lisp:t :member-name "Group")
                                 (tag-key :target-type tag-key :member-name
                                  "TagKey")
                                 (tag-value :target-type tag-value :member-name
                                  "TagValue")
                                 (resource-query :target-type resource-query
                                  :member-name "ResourceQuery")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "RoleArn"))
                                (:shape-name "StartTagSyncTaskInput"))

(smithy/sdk/shapes:define-output start-tag-sync-task-output common-lisp:nil
                                 ((group-arn :target-type group-arn-v2
                                   :member-name "GroupArn")
                                  (group-name :target-type group-name
                                   :member-name "GroupName")
                                  (task-arn :target-type tag-sync-task-arn
                                   :member-name "TaskArn")
                                  (tag-key :target-type tag-key :member-name
                                   "TagKey")
                                  (tag-value :target-type tag-value
                                   :member-name "TagValue")
                                  (resource-query :target-type resource-query
                                   :member-name "ResourceQuery")
                                  (role-arn :target-type role-arn :member-name
                                   "RoleArn"))
                                 (:shape-name "StartTagSyncTaskOutput"))

(smithy/sdk/shapes:define-input tag-input common-lisp:nil
                                ((arn :target-type group-arn-v2 :required
                                  common-lisp:t :member-name "Arn" :http-label
                                  common-lisp:t)
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagInput"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-output tag-output common-lisp:nil
                                 ((arn :target-type group-arn-v2 :member-name
                                   "Arn")
                                  (tags :target-type tags :member-name "Tags"))
                                 (:shape-name "TagOutput"))

(smithy/sdk/shapes:define-type tag-sync-task-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tag-sync-task-item common-lisp:nil
                                    ((group-arn :target-type group-arn-v2
                                      :member-name "GroupArn")
                                     (group-name :target-type group-name
                                      :member-name "GroupName")
                                     (task-arn :target-type tag-sync-task-arn
                                      :member-name "TaskArn")
                                     (tag-key :target-type tag-key :member-name
                                      "TagKey")
                                     (tag-value :target-type tag-value
                                      :member-name "TagValue")
                                     (resource-query :target-type
                                      resource-query :member-name
                                      "ResourceQuery")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleArn")
                                     (status :target-type tag-sync-task-status
                                      :member-name "Status")
                                     (error-message :target-type error-message
                                      :member-name "ErrorMessage")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt"))
                                    (:shape-name "TagSyncTaskItem"))

(smithy/sdk/shapes:define-list tag-sync-task-list :member tag-sync-task-item)

(smithy/sdk/shapes:define-enum tag-sync-task-status
    common-lisp:nil
  (:active "ACTIVE")
  (:error "ERROR"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map tags :key tag-key :value tag-value)

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 429))

(smithy/sdk/shapes:define-error unauthorized-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "UnauthorizedException")
                                (:error-code 401))

(smithy/sdk/shapes:define-input ungroup-resources-input common-lisp:nil
                                ((group :target-type group-string-v2 :required
                                  common-lisp:t :member-name "Group")
                                 (resource-arns :target-type resource-arn-list
                                  :required common-lisp:t :member-name
                                  "ResourceArns"))
                                (:shape-name "UngroupResourcesInput"))

(smithy/sdk/shapes:define-output ungroup-resources-output common-lisp:nil
                                 ((succeeded :target-type resource-arn-list
                                   :member-name "Succeeded")
                                  (failed :target-type failed-resource-list
                                   :member-name "Failed")
                                  (pending :target-type pending-resource-list
                                   :member-name "Pending"))
                                 (:shape-name "UngroupResourcesOutput"))

(smithy/sdk/shapes:define-input untag-input common-lisp:nil
                                ((arn :target-type group-arn-v2 :required
                                  common-lisp:t :member-name "Arn" :http-label
                                  common-lisp:t)
                                 (keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "Keys"))
                                (:shape-name "UntagInput"))

(smithy/sdk/shapes:define-output untag-output common-lisp:nil
                                 ((arn :target-type group-arn-v2 :member-name
                                   "Arn")
                                  (keys :target-type tag-key-list :member-name
                                   "Keys"))
                                 (:shape-name "UntagOutput"))

(smithy/sdk/shapes:define-input update-account-settings-input common-lisp:nil
                                ((group-lifecycle-events-desired-status
                                  :target-type
                                  group-lifecycle-events-desired-status
                                  :member-name
                                  "GroupLifecycleEventsDesiredStatus"))
                                (:shape-name "UpdateAccountSettingsInput"))

(smithy/sdk/shapes:define-output update-account-settings-output common-lisp:nil
                                 ((account-settings :target-type
                                   account-settings :member-name
                                   "AccountSettings"))
                                 (:shape-name "UpdateAccountSettingsOutput"))

(smithy/sdk/shapes:define-input update-group-input common-lisp:nil
                                ((group-name :target-type group-name
                                  :member-name "GroupName")
                                 (group :target-type group-string-v2
                                  :member-name "Group")
                                 (description :target-type description
                                  :member-name "Description")
                                 (criticality :target-type criticality
                                  :member-name "Criticality")
                                 (owner :target-type owner :member-name
                                  "Owner")
                                 (display-name :target-type display-name
                                  :member-name "DisplayName"))
                                (:shape-name "UpdateGroupInput"))

(smithy/sdk/shapes:define-output update-group-output common-lisp:nil
                                 ((group :target-type group :member-name
                                   "Group"))
                                 (:shape-name "UpdateGroupOutput"))

(smithy/sdk/shapes:define-input update-group-query-input common-lisp:nil
                                ((group-name :target-type group-name
                                  :member-name "GroupName")
                                 (group :target-type group-string :member-name
                                  "Group")
                                 (resource-query :target-type resource-query
                                  :required common-lisp:t :member-name
                                  "ResourceQuery"))
                                (:shape-name "UpdateGroupQueryInput"))

(smithy/sdk/shapes:define-output update-group-query-output common-lisp:nil
                                 ((group-query :target-type group-query
                                   :member-name "GroupQuery"))
                                 (:shape-name "UpdateGroupQueryOutput"))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/operation:define-operation cancel-tag-sync-task :shape-name
                                       "CancelTagSyncTask" :input
                                       cancel-tag-sync-task-input :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/cancel-tag-sync-task" :code 200)

(smithy/sdk/operation:define-operation create-group :shape-name "CreateGroup"
                                       :input create-group-input :output
                                       create-group-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri "/groups" :code 200)

(smithy/sdk/operation:define-operation delete-group :shape-name "DeleteGroup"
                                       :input delete-group-input :output
                                       delete-group-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri "/delete-group"
                                       :code 200)

(smithy/sdk/operation:define-operation get-account-settings :shape-name
                                       "GetAccountSettings" :input
                                       common-lisp:null :output
                                       get-account-settings-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/get-account-settings" :code 200)

(smithy/sdk/operation:define-operation get-group :shape-name "GetGroup" :input
                                       get-group-input :output get-group-output
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri "/get-group" :code
                                       200)

(smithy/sdk/operation:define-operation get-group-configuration :shape-name
                                       "GetGroupConfiguration" :input
                                       get-group-configuration-input :output
                                       get-group-configuration-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/get-group-configuration" :code 200)

(smithy/sdk/operation:define-operation get-group-query :shape-name
                                       "GetGroupQuery" :input
                                       get-group-query-input :output
                                       get-group-query-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri "/get-group-query"
                                       :code 200)

(smithy/sdk/operation:define-operation get-tag-sync-task :shape-name
                                       "GetTagSyncTask" :input
                                       get-tag-sync-task-input :output
                                       get-tag-sync-task-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri "/get-tag-sync-task"
                                       :code 200)

(smithy/sdk/operation:define-operation get-tags :shape-name "GetTags" :input
                                       get-tags-input :output get-tags-output
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/resources/{Arn}/tags" :code 200)

(smithy/sdk/operation:define-operation group-resources :shape-name
                                       "GroupResources" :input
                                       group-resources-input :output
                                       group-resources-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri "/group-resources"
                                       :code 200)

(smithy/sdk/operation:define-operation list-group-resources :shape-name
                                       "ListGroupResources" :input
                                       list-group-resources-input :output
                                       list-group-resources-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/list-group-resources" :code 200)

(smithy/sdk/operation:define-operation list-grouping-statuses :shape-name
                                       "ListGroupingStatuses" :input
                                       list-grouping-statuses-input :output
                                       list-grouping-statuses-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/list-grouping-statuses" :code 200)

(smithy/sdk/operation:define-operation list-groups :shape-name "ListGroups"
                                       :input list-groups-input :output
                                       list-groups-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri "/groups-list" :code
                                       200)

(smithy/sdk/operation:define-operation list-tag-sync-tasks :shape-name
                                       "ListTagSyncTasks" :input
                                       list-tag-sync-tasks-input :output
                                       list-tag-sync-tasks-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/list-tag-sync-tasks" :code 200)

(smithy/sdk/operation:define-operation put-group-configuration :shape-name
                                       "PutGroupConfiguration" :input
                                       put-group-configuration-input :output
                                       put-group-configuration-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/put-group-configuration" :code 202)

(smithy/sdk/operation:define-operation search-resources :shape-name
                                       "SearchResources" :input
                                       search-resources-input :output
                                       search-resources-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri "/resources/search"
                                       :code 200)

(smithy/sdk/operation:define-operation start-tag-sync-task :shape-name
                                       "StartTagSyncTask" :input
                                       start-tag-sync-task-input :output
                                       start-tag-sync-task-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/start-tag-sync-task" :code 200)

(smithy/sdk/operation:define-operation tag :shape-name "Tag" :input tag-input
                                       :output tag-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/resources/{Arn}/tags" :code 200)

(smithy/sdk/operation:define-operation ungroup-resources :shape-name
                                       "UngroupResources" :input
                                       ungroup-resources-input :output
                                       ungroup-resources-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri "/ungroup-resources"
                                       :code 200)

(smithy/sdk/operation:define-operation untag :shape-name "Untag" :input
                                       untag-input :output untag-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PATCH" :uri
                                       "/resources/{Arn}/tags" :code 200)

(smithy/sdk/operation:define-operation update-account-settings :shape-name
                                       "UpdateAccountSettings" :input
                                       update-account-settings-input :output
                                       update-account-settings-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/update-account-settings" :code 200)

(smithy/sdk/operation:define-operation update-group :shape-name "UpdateGroup"
                                       :input update-group-input :output
                                       update-group-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri "/update-group"
                                       :code 200)

(smithy/sdk/operation:define-operation update-group-query :shape-name
                                       "UpdateGroupQuery" :input
                                       update-group-query-input :output
                                       update-group-query-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/update-group-query" :code 200)
