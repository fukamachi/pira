(uiop/package:define-package #:pira/codestar-notifications (:use)
                             (:export #:client-request-token
                              #:code-star-notifications-20191015
                              #:create-notification-rule #:created-timestamp
                              #:delete-notification-rule #:delete-target
                              #:describe-notification-rule #:detail-type
                              #:event-type-batch #:event-type-id
                              #:event-type-ids #:event-type-name
                              #:event-type-summary #:force-unsubscribe-all
                              #:last-modified-timestamp #:list-event-types
                              #:list-event-types-filter
                              #:list-event-types-filter-name
                              #:list-event-types-filter-value
                              #:list-event-types-filters
                              #:list-notification-rules
                              #:list-notification-rules-filter
                              #:list-notification-rules-filter-name
                              #:list-notification-rules-filter-value
                              #:list-notification-rules-filters
                              #:list-tags-for-resource #:list-targets
                              #:list-targets-filter #:list-targets-filter-name
                              #:list-targets-filter-value
                              #:list-targets-filters #:max-results #:message
                              #:next-token #:notification-rule-arn
                              #:notification-rule-batch
                              #:notification-rule-created-by
                              #:notification-rule-id #:notification-rule-name
                              #:notification-rule-resource
                              #:notification-rule-status
                              #:notification-rule-summary #:resource-type
                              #:service-name #:subscribe #:tag-key #:tag-keys
                              #:tag-resource #:tag-value #:tags #:target
                              #:target-address #:target-status #:target-summary
                              #:target-type #:targets #:targets-batch
                              #:unsubscribe #:untag-resource
                              #:update-notification-rule))
(common-lisp:in-package #:pira/codestar-notifications)

(smithy/sdk/service:define-service code-star-notifications-20191015 :shape-name
                                   "CodeStarNotifications_20191015" :version
                                   "2019-10-15" :title
                                   "AWS CodeStar Notifications" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "codestar notifications")
                                      ("arnNamespace"
                                       . "codestar-notifications")
                                      ("cloudFormationName"
                                       . "CodeStarNotifications")
                                      ("cloudTrailEventSource"
                                       . "codestarnotifications.amazonaws.com")
                                      ("endpointPrefix"
                                       . "codestar-notifications"))
                                     ("aws.auth#sigv4"
                                      ("name" . "codestar-notifications"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type client-request-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error concurrent-modification-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "ConcurrentModificationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error configuration-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "ConfigurationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input create-notification-rule-request
                                common-lisp:nil
                                ((name :target-type notification-rule-name
                                  :required common-lisp:t :member-name "Name")
                                 (event-type-ids :target-type event-type-ids
                                  :required common-lisp:t :member-name
                                  "EventTypeIds")
                                 (resource :target-type
                                  notification-rule-resource :required
                                  common-lisp:t :member-name "Resource")
                                 (targets :target-type targets :required
                                  common-lisp:t :member-name "Targets")
                                 (detail-type :target-type detail-type
                                  :required common-lisp:t :member-name
                                  "DetailType")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (tags :target-type tags :member-name "Tags")
                                 (status :target-type notification-rule-status
                                  :member-name "Status"))
                                (:shape-name "CreateNotificationRuleRequest"))

(smithy/sdk/shapes:define-output create-notification-rule-result
                                 common-lisp:nil
                                 ((arn :target-type notification-rule-arn
                                   :member-name "Arn"))
                                 (:shape-name "CreateNotificationRuleResult"))

(smithy/sdk/shapes:define-type created-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input delete-notification-rule-request
                                common-lisp:nil
                                ((arn :target-type notification-rule-arn
                                  :required common-lisp:t :member-name "Arn"))
                                (:shape-name "DeleteNotificationRuleRequest"))

(smithy/sdk/shapes:define-output delete-notification-rule-result
                                 common-lisp:nil
                                 ((arn :target-type notification-rule-arn
                                   :member-name "Arn"))
                                 (:shape-name "DeleteNotificationRuleResult"))

(smithy/sdk/shapes:define-input delete-target-request common-lisp:nil
                                ((target-address :target-type target-address
                                  :required common-lisp:t :member-name
                                  "TargetAddress")
                                 (force-unsubscribe-all :target-type
                                  force-unsubscribe-all :member-name
                                  "ForceUnsubscribeAll"))
                                (:shape-name "DeleteTargetRequest"))

(smithy/sdk/shapes:define-output delete-target-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteTargetResult"))

(smithy/sdk/shapes:define-input describe-notification-rule-request
                                common-lisp:nil
                                ((arn :target-type notification-rule-arn
                                  :required common-lisp:t :member-name "Arn"))
                                (:shape-name "DescribeNotificationRuleRequest"))

(smithy/sdk/shapes:define-output describe-notification-rule-result
                                 common-lisp:nil
                                 ((arn :target-type notification-rule-arn
                                   :required common-lisp:t :member-name "Arn")
                                  (name :target-type notification-rule-name
                                   :member-name "Name")
                                  (event-types :target-type event-type-batch
                                   :member-name "EventTypes")
                                  (resource :target-type
                                   notification-rule-resource :member-name
                                   "Resource")
                                  (targets :target-type targets-batch
                                   :member-name "Targets")
                                  (detail-type :target-type detail-type
                                   :member-name "DetailType")
                                  (created-by :target-type
                                   notification-rule-created-by :member-name
                                   "CreatedBy")
                                  (status :target-type notification-rule-status
                                   :member-name "Status")
                                  (created-timestamp :target-type
                                   created-timestamp :member-name
                                   "CreatedTimestamp")
                                  (last-modified-timestamp :target-type
                                   last-modified-timestamp :member-name
                                   "LastModifiedTimestamp")
                                  (tags :target-type tags :member-name "Tags"))
                                 (:shape-name "DescribeNotificationRuleResult"))

(smithy/sdk/shapes:define-enum detail-type
    common-lisp:nil
  (:basic "BASIC")
  (:full "FULL"))

(smithy/sdk/shapes:define-list event-type-batch :member event-type-summary)

(smithy/sdk/shapes:define-type event-type-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list event-type-ids :member event-type-id)

(smithy/sdk/shapes:define-type event-type-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure event-type-summary common-lisp:nil
                                    ((event-type-id :target-type event-type-id
                                      :member-name "EventTypeId")
                                     (service-name :target-type service-name
                                      :member-name "ServiceName")
                                     (event-type-name :target-type
                                      event-type-name :member-name
                                      "EventTypeName")
                                     (resource-type :target-type resource-type
                                      :member-name "ResourceType"))
                                    (:shape-name "EventTypeSummary"))

(smithy/sdk/shapes:define-type force-unsubscribe-all
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error invalid-next-token-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "InvalidNextTokenException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type last-modified-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure list-event-types-filter common-lisp:nil
                                    ((name :target-type
                                      list-event-types-filter-name :required
                                      common-lisp:t :member-name "Name")
                                     (value :target-type
                                      list-event-types-filter-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "ListEventTypesFilter"))

(smithy/sdk/shapes:define-enum list-event-types-filter-name
    common-lisp:nil
  (:resource-type "RESOURCE_TYPE")
  (:service-name "SERVICE_NAME"))

(smithy/sdk/shapes:define-type list-event-types-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list list-event-types-filters :member
                               list-event-types-filter)

(smithy/sdk/shapes:define-input list-event-types-request common-lisp:nil
                                ((filters :target-type list-event-types-filters
                                  :member-name "Filters")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListEventTypesRequest"))

(smithy/sdk/shapes:define-output list-event-types-result common-lisp:nil
                                 ((event-types :target-type event-type-batch
                                   :member-name "EventTypes")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListEventTypesResult"))

(smithy/sdk/shapes:define-structure list-notification-rules-filter
                                    common-lisp:nil
                                    ((name :target-type
                                      list-notification-rules-filter-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (value :target-type
                                      list-notification-rules-filter-value
                                      :required common-lisp:t :member-name
                                      "Value"))
                                    (:shape-name "ListNotificationRulesFilter"))

(smithy/sdk/shapes:define-enum list-notification-rules-filter-name
    common-lisp:nil
  (:event-type-id "EVENT_TYPE_ID")
  (:created-by "CREATED_BY")
  (:resource "RESOURCE")
  (:target-address "TARGET_ADDRESS"))

(smithy/sdk/shapes:define-type list-notification-rules-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list list-notification-rules-filters :member
                               list-notification-rules-filter)

(smithy/sdk/shapes:define-input list-notification-rules-request common-lisp:nil
                                ((filters :target-type
                                  list-notification-rules-filters :member-name
                                  "Filters")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListNotificationRulesRequest"))

(smithy/sdk/shapes:define-output list-notification-rules-result common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (notification-rules :target-type
                                   notification-rule-batch :member-name
                                   "NotificationRules"))
                                 (:shape-name "ListNotificationRulesResult"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((arn :target-type notification-rule-arn
                                  :required common-lisp:t :member-name "Arn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-result common-lisp:nil
                                 ((tags :target-type tags :member-name "Tags"))
                                 (:shape-name "ListTagsForResourceResult"))

(smithy/sdk/shapes:define-structure list-targets-filter common-lisp:nil
                                    ((name :target-type
                                      list-targets-filter-name :required
                                      common-lisp:t :member-name "Name")
                                     (value :target-type
                                      list-targets-filter-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "ListTargetsFilter"))

(smithy/sdk/shapes:define-enum list-targets-filter-name
    common-lisp:nil
  (:target-type "TARGET_TYPE")
  (:target-address "TARGET_ADDRESS")
  (:target-status "TARGET_STATUS"))

(smithy/sdk/shapes:define-type list-targets-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list list-targets-filters :member list-targets-filter)

(smithy/sdk/shapes:define-input list-targets-request common-lisp:nil
                                ((filters :target-type list-targets-filters
                                  :member-name "Filters")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListTargetsRequest"))

(smithy/sdk/shapes:define-output list-targets-result common-lisp:nil
                                 ((targets :target-type targets-batch
                                   :member-name "Targets")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListTargetsResult"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type notification-rule-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list notification-rule-batch :member
                               notification-rule-summary)

(smithy/sdk/shapes:define-type notification-rule-created-by
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type notification-rule-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type notification-rule-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type notification-rule-resource
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum notification-rule-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure notification-rule-summary common-lisp:nil
                                    ((id :target-type notification-rule-id
                                      :member-name "Id")
                                     (arn :target-type notification-rule-arn
                                      :member-name "Arn"))
                                    (:shape-name "NotificationRuleSummary"))

(smithy/sdk/shapes:define-error resource-already-exists-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "ResourceAlreadyExistsException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type resource-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input subscribe-request common-lisp:nil
                                ((arn :target-type notification-rule-arn
                                  :required common-lisp:t :member-name "Arn")
                                 (target :target-type target :required
                                  common-lisp:t :member-name "Target")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken"))
                                (:shape-name "SubscribeRequest"))

(smithy/sdk/shapes:define-output subscribe-result common-lisp:nil
                                 ((arn :target-type notification-rule-arn
                                   :member-name "Arn"))
                                 (:shape-name "SubscribeResult"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((arn :target-type notification-rule-arn
                                  :required common-lisp:t :member-name "Arn")
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-result common-lisp:nil
                                 ((tags :target-type tags :member-name "Tags"))
                                 (:shape-name "TagResourceResult"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map tags :key tag-key :value tag-value)

(smithy/sdk/shapes:define-structure target common-lisp:nil
                                    ((target-type :target-type target-type
                                      :member-name "TargetType")
                                     (target-address :target-type
                                      target-address :member-name
                                      "TargetAddress"))
                                    (:shape-name "Target"))

(smithy/sdk/shapes:define-type target-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum target-status
    common-lisp:nil
  (:pending "PENDING")
  (:active "ACTIVE")
  (:unreachable "UNREACHABLE")
  (:inactive "INACTIVE")
  (:deactivated "DEACTIVATED"))

(smithy/sdk/shapes:define-structure target-summary common-lisp:nil
                                    ((target-address :target-type
                                      target-address :member-name
                                      "TargetAddress")
                                     (target-type :target-type target-type
                                      :member-name "TargetType")
                                     (target-status :target-type target-status
                                      :member-name "TargetStatus"))
                                    (:shape-name "TargetSummary"))

(smithy/sdk/shapes:define-type target-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list targets :member target)

(smithy/sdk/shapes:define-list targets-batch :member target-summary)

(smithy/sdk/shapes:define-input unsubscribe-request common-lisp:nil
                                ((arn :target-type notification-rule-arn
                                  :required common-lisp:t :member-name "Arn")
                                 (target-address :target-type target-address
                                  :required common-lisp:t :member-name
                                  "TargetAddress"))
                                (:shape-name "UnsubscribeRequest"))

(smithy/sdk/shapes:define-output unsubscribe-result common-lisp:nil
                                 ((arn :target-type notification-rule-arn
                                   :required common-lisp:t :member-name "Arn"))
                                 (:shape-name "UnsubscribeResult"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((arn :target-type notification-rule-arn
                                  :required common-lisp:t :member-name "Arn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "TagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResult"))

(smithy/sdk/shapes:define-input update-notification-rule-request
                                common-lisp:nil
                                ((arn :target-type notification-rule-arn
                                  :required common-lisp:t :member-name "Arn")
                                 (name :target-type notification-rule-name
                                  :member-name "Name")
                                 (status :target-type notification-rule-status
                                  :member-name "Status")
                                 (event-type-ids :target-type event-type-ids
                                  :member-name "EventTypeIds")
                                 (targets :target-type targets :member-name
                                  "Targets")
                                 (detail-type :target-type detail-type
                                  :member-name "DetailType"))
                                (:shape-name "UpdateNotificationRuleRequest"))

(smithy/sdk/shapes:define-output update-notification-rule-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateNotificationRuleResult"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation create-notification-rule :shape-name
                                       "CreateNotificationRule" :input
                                       create-notification-rule-request :output
                                       create-notification-rule-result :errors
                                       (access-denied-exception
                                        concurrent-modification-exception
                                        configuration-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/createNotificationRule" :code 200)

(smithy/sdk/operation:define-operation delete-notification-rule :shape-name
                                       "DeleteNotificationRule" :input
                                       delete-notification-rule-request :output
                                       delete-notification-rule-result :errors
                                       (concurrent-modification-exception
                                        limit-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/deleteNotificationRule" :code 200)

(smithy/sdk/operation:define-operation delete-target :shape-name "DeleteTarget"
                                       :input delete-target-request :output
                                       delete-target-result :errors
                                       (validation-exception) :method "POST"
                                       :uri "/deleteTarget" :code 200)

(smithy/sdk/operation:define-operation describe-notification-rule :shape-name
                                       "DescribeNotificationRule" :input
                                       describe-notification-rule-request
                                       :output
                                       describe-notification-rule-result
                                       :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/describeNotificationRule" :code 200)

(smithy/sdk/operation:define-operation list-event-types :shape-name
                                       "ListEventTypes" :input
                                       list-event-types-request :output
                                       list-event-types-result :errors
                                       (invalid-next-token-exception
                                        validation-exception)
                                       :method "POST" :uri "/listEventTypes"
                                       :code 200)

(smithy/sdk/operation:define-operation list-notification-rules :shape-name
                                       "ListNotificationRules" :input
                                       list-notification-rules-request :output
                                       list-notification-rules-result :errors
                                       (invalid-next-token-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/listNotificationRules" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-result :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/listTagsForResource" :code 200)

(smithy/sdk/operation:define-operation list-targets :shape-name "ListTargets"
                                       :input list-targets-request :output
                                       list-targets-result :errors
                                       (invalid-next-token-exception
                                        validation-exception)
                                       :method "POST" :uri "/listTargets" :code
                                       200)

(smithy/sdk/operation:define-operation subscribe :shape-name "Subscribe" :input
                                       subscribe-request :output
                                       subscribe-result :errors
                                       (configuration-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/subscribe" :code
                                       200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-result :errors
                                       (concurrent-modification-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/tagResource" :code
                                       200)

(smithy/sdk/operation:define-operation unsubscribe :shape-name "Unsubscribe"
                                       :input unsubscribe-request :output
                                       unsubscribe-result :errors
                                       (validation-exception) :method "POST"
                                       :uri "/unsubscribe" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-result :errors
                                       (concurrent-modification-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/untagResource/{Arn}" :code 200)

(smithy/sdk/operation:define-operation update-notification-rule :shape-name
                                       "UpdateNotificationRule" :input
                                       update-notification-rule-request :output
                                       update-notification-rule-result :errors
                                       (configuration-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/updateNotificationRule" :code 200)
