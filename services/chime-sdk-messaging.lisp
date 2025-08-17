(uiop/package:define-package #:pira/chime-sdk-messaging (:use)
                             (:export #:allow-notifications
                              #:app-instance-user-membership-summary
                              #:associate-channel-flow
                              #:batch-channel-memberships
                              #:batch-create-channel-membership
                              #:batch-create-channel-membership-error
                              #:batch-create-channel-membership-errors
                              #:callback-id-type #:channel
                              #:channel-associated-with-flow-summary
                              #:channel-associated-with-flow-summary-list
                              #:channel-ban #:channel-ban-summary
                              #:channel-ban-summary-list #:channel-flow
                              #:channel-flow-callback
                              #:channel-flow-execution-order
                              #:channel-flow-summary
                              #:channel-flow-summary-list #:channel-id
                              #:channel-member-arns #:channel-membership
                              #:channel-membership-for-app-instance-user-summary
                              #:channel-membership-for-app-instance-user-summary-list
                              #:channel-membership-preferences
                              #:channel-membership-summary
                              #:channel-membership-summary-list
                              #:channel-membership-type #:channel-message
                              #:channel-message-callback
                              #:channel-message-persistence-type
                              #:channel-message-status
                              #:channel-message-status-structure
                              #:channel-message-summary
                              #:channel-message-summary-list
                              #:channel-message-type #:channel-mode
                              #:channel-moderated-by-app-instance-user-summary
                              #:channel-moderated-by-app-instance-user-summary-list
                              #:channel-moderator #:channel-moderator-arns
                              #:channel-moderator-summary
                              #:channel-moderator-summary-list
                              #:channel-privacy #:channel-summary
                              #:channel-summary-list #:chime-arn
                              #:chime-messaging-service #:client-request-token
                              #:content #:content-type #:create-channel
                              #:create-channel-ban #:create-channel-flow
                              #:create-channel-membership
                              #:create-channel-moderator #:delete-channel
                              #:delete-channel-ban #:delete-channel-flow
                              #:delete-channel-membership
                              #:delete-channel-message
                              #:delete-channel-moderator
                              #:delete-messaging-streaming-configurations
                              #:describe-channel #:describe-channel-ban
                              #:describe-channel-flow
                              #:describe-channel-membership
                              #:describe-channel-membership-for-app-instance-user
                              #:describe-channel-moderated-by-app-instance-user
                              #:describe-channel-moderator
                              #:disassociate-channel-flow
                              #:elastic-channel-configuration #:error-code
                              #:expiration-criterion #:expiration-days
                              #:expiration-settings #:fallback-action
                              #:filter-rule
                              #:get-channel-membership-preferences
                              #:get-channel-message
                              #:get-channel-message-status
                              #:get-messaging-session-endpoint
                              #:get-messaging-streaming-configurations
                              #:identity #:invocation-type
                              #:lambda-configuration #:lambda-function-arn
                              #:list-channel-bans #:list-channel-flows
                              #:list-channel-memberships
                              #:list-channel-memberships-for-app-instance-user
                              #:list-channel-messages #:list-channel-moderators
                              #:list-channels
                              #:list-channels-associated-with-channel-flow
                              #:list-channels-moderated-by-app-instance-user
                              #:list-sub-channels #:list-tags-for-resource
                              #:max-results #:maximum-sub-channels
                              #:member-arns #:members #:membership-count
                              #:message-attribute-map #:message-attribute-name
                              #:message-attribute-string-value
                              #:message-attribute-string-values
                              #:message-attribute-value #:message-id
                              #:messaging-data-type
                              #:messaging-session-endpoint #:metadata
                              #:minimum-membership-percentage #:next-token
                              #:non-empty-content #:non-empty-resource-name
                              #:non-nullable-boolean #:processor
                              #:processor-configuration #:processor-list
                              #:push-notification-body
                              #:push-notification-configuration
                              #:push-notification-preferences
                              #:push-notification-title
                              #:push-notification-type
                              #:put-channel-expiration-settings
                              #:put-channel-membership-preferences
                              #:put-messaging-streaming-configurations
                              #:redact-channel-message #:resource-name
                              #:search-channels #:search-field
                              #:search-field-key #:search-field-operator
                              #:search-field-value #:search-field-values
                              #:search-fields #:send-channel-message
                              #:sort-order #:status-detail
                              #:streaming-configuration
                              #:streaming-configuration-list #:string
                              #:sub-channel-id #:sub-channel-summary
                              #:sub-channel-summary-list #:tag #:tag-key
                              #:tag-key-list #:tag-list #:tag-resource
                              #:tag-value #:target #:target-list
                              #:target-memberships-per-sub-channel #:timestamp
                              #:untag-resource #:update-channel
                              #:update-channel-flow #:update-channel-message
                              #:update-channel-read-marker #:url-type))
(common-lisp:in-package #:pira/chime-sdk-messaging)

(smithy/sdk/service:define-service chime-messaging-service :shape-name
                                   "ChimeMessagingService" :version
                                   "2021-05-15" :title
                                   "Amazon Chime SDK Messaging" :operations
                                   '(associate-channel-flow
                                     batch-create-channel-membership
                                     channel-flow-callback create-channel
                                     create-channel-ban create-channel-flow
                                     create-channel-membership
                                     create-channel-moderator delete-channel
                                     delete-channel-ban delete-channel-flow
                                     delete-channel-membership
                                     delete-channel-message
                                     delete-channel-moderator
                                     delete-messaging-streaming-configurations
                                     describe-channel describe-channel-ban
                                     describe-channel-flow
                                     describe-channel-membership
                                     describe-channel-membership-for-app-instance-user
                                     describe-channel-moderated-by-app-instance-user
                                     describe-channel-moderator
                                     disassociate-channel-flow
                                     get-channel-membership-preferences
                                     get-channel-message
                                     get-channel-message-status
                                     get-messaging-session-endpoint
                                     get-messaging-streaming-configurations
                                     list-channel-bans list-channel-flows
                                     list-channel-memberships
                                     list-channel-memberships-for-app-instance-user
                                     list-channel-messages
                                     list-channel-moderators list-channels
                                     list-channels-associated-with-channel-flow
                                     list-channels-moderated-by-app-instance-user
                                     list-sub-channels list-tags-for-resource
                                     put-channel-expiration-settings
                                     put-channel-membership-preferences
                                     put-messaging-streaming-configurations
                                     redact-channel-message search-channels
                                     send-channel-message tag-resource
                                     untag-resource update-channel
                                     update-channel-flow update-channel-message
                                     update-channel-read-marker)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Chime SDK Messaging")
                                      ("arnNamespace" . "chime")
                                      ("cloudFormationName"
                                       . "ChimeSDKMessaging")
                                      ("cloudTrailEventSource"
                                       . "chimesdkmessaging.amazonaws.com")
                                      ("endpointPrefix" . "messaging-chime"))
                                     ("aws.auth#sigv4" ("name" . "chime"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-enum allow-notifications
    common-lisp:nil
  (:all "ALL")
  (:none "NONE")
  (:filtered "FILTERED"))

(smithy/sdk/shapes:define-structure app-instance-user-membership-summary
                                    common-lisp:nil
                                    ((type :target-type channel-membership-type
                                      :member-name "Type")
                                     (read-marker-timestamp :target-type
                                      timestamp :member-name
                                      "ReadMarkerTimestamp")
                                     (sub-channel-id :target-type
                                      sub-channel-id :member-name
                                      "SubChannelId"))
                                    (:shape-name
                                     "AppInstanceUserMembershipSummary"))

(smithy/sdk/shapes:define-input associate-channel-flow-request common-lisp:nil
                                ((channel-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "ChannelArn"
                                  :http-label common-lisp:t)
                                 (channel-flow-arn :target-type chime-arn
                                  :required common-lisp:t :member-name
                                  "ChannelFlowArn")
                                 (chime-bearer :target-type chime-arn :required
                                  common-lisp:t :member-name "ChimeBearer"
                                  :http-header "x-amz-chime-bearer"))
                                (:shape-name "AssociateChannelFlowRequest"))

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure batch-channel-memberships common-lisp:nil
                                    ((invited-by :target-type identity
                                      :member-name "InvitedBy")
                                     (type :target-type channel-membership-type
                                      :member-name "Type")
                                     (members :target-type members :member-name
                                      "Members")
                                     (channel-arn :target-type chime-arn
                                      :member-name "ChannelArn")
                                     (sub-channel-id :target-type
                                      sub-channel-id :member-name
                                      "SubChannelId"))
                                    (:shape-name "BatchChannelMemberships"))

(smithy/sdk/shapes:define-structure batch-create-channel-membership-error
                                    common-lisp:nil
                                    ((member-arn :target-type chime-arn
                                      :member-name "MemberArn")
                                     (error-code :target-type error-code
                                      :member-name "ErrorCode")
                                     (error-message :target-type string
                                      :member-name "ErrorMessage"))
                                    (:shape-name
                                     "BatchCreateChannelMembershipError"))

(smithy/sdk/shapes:define-list batch-create-channel-membership-errors :member
                               batch-create-channel-membership-error)

(smithy/sdk/shapes:define-input batch-create-channel-membership-request
                                common-lisp:nil
                                ((channel-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "ChannelArn"
                                  :http-label common-lisp:t)
                                 (type :target-type channel-membership-type
                                  :member-name "Type")
                                 (member-arns :target-type member-arns
                                  :required common-lisp:t :member-name
                                  "MemberArns")
                                 (chime-bearer :target-type chime-arn :required
                                  common-lisp:t :member-name "ChimeBearer"
                                  :http-header "x-amz-chime-bearer")
                                 (sub-channel-id :target-type sub-channel-id
                                  :member-name "SubChannelId"))
                                (:shape-name
                                 "BatchCreateChannelMembershipRequest"))

(smithy/sdk/shapes:define-output batch-create-channel-membership-response
                                 common-lisp:nil
                                 ((batch-channel-memberships :target-type
                                   batch-channel-memberships :member-name
                                   "BatchChannelMemberships")
                                  (errors :target-type
                                   batch-create-channel-membership-errors
                                   :member-name "Errors"))
                                 (:shape-name
                                  "BatchCreateChannelMembershipResponse"))

(smithy/sdk/shapes:define-type callback-id-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure channel common-lisp:nil
                                    ((name :target-type non-empty-resource-name
                                      :member-name "Name")
                                     (channel-arn :target-type chime-arn
                                      :member-name "ChannelArn")
                                     (mode :target-type channel-mode
                                      :member-name "Mode")
                                     (privacy :target-type channel-privacy
                                      :member-name "Privacy")
                                     (metadata :target-type metadata
                                      :member-name "Metadata")
                                     (created-by :target-type identity
                                      :member-name "CreatedBy")
                                     (created-timestamp :target-type timestamp
                                      :member-name "CreatedTimestamp")
                                     (last-message-timestamp :target-type
                                      timestamp :member-name
                                      "LastMessageTimestamp")
                                     (last-updated-timestamp :target-type
                                      timestamp :member-name
                                      "LastUpdatedTimestamp")
                                     (channel-flow-arn :target-type chime-arn
                                      :member-name "ChannelFlowArn")
                                     (elastic-channel-configuration
                                      :target-type
                                      elastic-channel-configuration
                                      :member-name
                                      "ElasticChannelConfiguration")
                                     (expiration-settings :target-type
                                      expiration-settings :member-name
                                      "ExpirationSettings"))
                                    (:shape-name "Channel"))

(smithy/sdk/shapes:define-structure channel-associated-with-flow-summary
                                    common-lisp:nil
                                    ((name :target-type non-empty-resource-name
                                      :member-name "Name")
                                     (channel-arn :target-type chime-arn
                                      :member-name "ChannelArn")
                                     (mode :target-type channel-mode
                                      :member-name "Mode")
                                     (privacy :target-type channel-privacy
                                      :member-name "Privacy")
                                     (metadata :target-type metadata
                                      :member-name "Metadata"))
                                    (:shape-name
                                     "ChannelAssociatedWithFlowSummary"))

(smithy/sdk/shapes:define-list channel-associated-with-flow-summary-list
                               :member channel-associated-with-flow-summary)

(smithy/sdk/shapes:define-structure channel-ban common-lisp:nil
                                    ((member :target-type identity :member-name
                                      "Member")
                                     (channel-arn :target-type chime-arn
                                      :member-name "ChannelArn")
                                     (created-timestamp :target-type timestamp
                                      :member-name "CreatedTimestamp")
                                     (created-by :target-type identity
                                      :member-name "CreatedBy"))
                                    (:shape-name "ChannelBan"))

(smithy/sdk/shapes:define-structure channel-ban-summary common-lisp:nil
                                    ((member :target-type identity :member-name
                                      "Member"))
                                    (:shape-name "ChannelBanSummary"))

(smithy/sdk/shapes:define-list channel-ban-summary-list :member
                               channel-ban-summary)

(smithy/sdk/shapes:define-structure channel-flow common-lisp:nil
                                    ((channel-flow-arn :target-type chime-arn
                                      :member-name "ChannelFlowArn")
                                     (processors :target-type processor-list
                                      :member-name "Processors")
                                     (name :target-type non-empty-resource-name
                                      :member-name "Name")
                                     (created-timestamp :target-type timestamp
                                      :member-name "CreatedTimestamp")
                                     (last-updated-timestamp :target-type
                                      timestamp :member-name
                                      "LastUpdatedTimestamp"))
                                    (:shape-name "ChannelFlow"))

(smithy/sdk/shapes:define-input channel-flow-callback-request common-lisp:nil
                                ((callback-id :target-type callback-id-type
                                  :required common-lisp:t :member-name
                                  "CallbackId")
                                 (channel-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "ChannelArn"
                                  :http-label common-lisp:t)
                                 (delete-resource :target-type
                                  non-nullable-boolean :member-name
                                  "DeleteResource")
                                 (channel-message :target-type
                                  channel-message-callback :required
                                  common-lisp:t :member-name "ChannelMessage"))
                                (:shape-name "ChannelFlowCallbackRequest"))

(smithy/sdk/shapes:define-output channel-flow-callback-response common-lisp:nil
                                 ((channel-arn :target-type chime-arn
                                   :member-name "ChannelArn")
                                  (callback-id :target-type callback-id-type
                                   :member-name "CallbackId"))
                                 (:shape-name "ChannelFlowCallbackResponse"))

(smithy/sdk/shapes:define-type channel-flow-execution-order
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure channel-flow-summary common-lisp:nil
                                    ((channel-flow-arn :target-type chime-arn
                                      :member-name "ChannelFlowArn")
                                     (name :target-type non-empty-resource-name
                                      :member-name "Name")
                                     (processors :target-type processor-list
                                      :member-name "Processors"))
                                    (:shape-name "ChannelFlowSummary"))

(smithy/sdk/shapes:define-list channel-flow-summary-list :member
                               channel-flow-summary)

(smithy/sdk/shapes:define-type channel-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list channel-member-arns :member chime-arn)

(smithy/sdk/shapes:define-structure channel-membership common-lisp:nil
                                    ((invited-by :target-type identity
                                      :member-name "InvitedBy")
                                     (type :target-type channel-membership-type
                                      :member-name "Type")
                                     (member :target-type identity :member-name
                                      "Member")
                                     (channel-arn :target-type chime-arn
                                      :member-name "ChannelArn")
                                     (created-timestamp :target-type timestamp
                                      :member-name "CreatedTimestamp")
                                     (last-updated-timestamp :target-type
                                      timestamp :member-name
                                      "LastUpdatedTimestamp")
                                     (sub-channel-id :target-type
                                      sub-channel-id :member-name
                                      "SubChannelId"))
                                    (:shape-name "ChannelMembership"))

(smithy/sdk/shapes:define-structure
 channel-membership-for-app-instance-user-summary common-lisp:nil
 ((channel-summary :target-type channel-summary :member-name "ChannelSummary")
  (app-instance-user-membership-summary :target-type
   app-instance-user-membership-summary :member-name
   "AppInstanceUserMembershipSummary"))
 (:shape-name "ChannelMembershipForAppInstanceUserSummary"))

(smithy/sdk/shapes:define-list
 channel-membership-for-app-instance-user-summary-list :member
 channel-membership-for-app-instance-user-summary)

(smithy/sdk/shapes:define-structure channel-membership-preferences
                                    common-lisp:nil
                                    ((push-notifications :target-type
                                      push-notification-preferences
                                      :member-name "PushNotifications"))
                                    (:shape-name
                                     "ChannelMembershipPreferences"))

(smithy/sdk/shapes:define-structure channel-membership-summary common-lisp:nil
                                    ((member :target-type identity :member-name
                                      "Member"))
                                    (:shape-name "ChannelMembershipSummary"))

(smithy/sdk/shapes:define-list channel-membership-summary-list :member
                               channel-membership-summary)

(smithy/sdk/shapes:define-enum channel-membership-type
    common-lisp:nil
  (:default "DEFAULT")
  (:hidden "HIDDEN"))

(smithy/sdk/shapes:define-structure channel-message common-lisp:nil
                                    ((channel-arn :target-type chime-arn
                                      :member-name "ChannelArn")
                                     (message-id :target-type message-id
                                      :member-name "MessageId")
                                     (content :target-type content :member-name
                                      "Content")
                                     (metadata :target-type metadata
                                      :member-name "Metadata")
                                     (type :target-type channel-message-type
                                      :member-name "Type")
                                     (created-timestamp :target-type timestamp
                                      :member-name "CreatedTimestamp")
                                     (last-edited-timestamp :target-type
                                      timestamp :member-name
                                      "LastEditedTimestamp")
                                     (last-updated-timestamp :target-type
                                      timestamp :member-name
                                      "LastUpdatedTimestamp")
                                     (sender :target-type identity :member-name
                                      "Sender")
                                     (redacted :target-type
                                      non-nullable-boolean :member-name
                                      "Redacted")
                                     (persistence :target-type
                                      channel-message-persistence-type
                                      :member-name "Persistence")
                                     (status :target-type
                                      channel-message-status-structure
                                      :member-name "Status")
                                     (message-attributes :target-type
                                      message-attribute-map :member-name
                                      "MessageAttributes")
                                     (sub-channel-id :target-type
                                      sub-channel-id :member-name
                                      "SubChannelId")
                                     (content-type :target-type content-type
                                      :member-name "ContentType")
                                     (target :target-type target-list
                                      :member-name "Target"))
                                    (:shape-name "ChannelMessage"))

(smithy/sdk/shapes:define-structure channel-message-callback common-lisp:nil
                                    ((message-id :target-type message-id
                                      :required common-lisp:t :member-name
                                      "MessageId")
                                     (content :target-type non-empty-content
                                      :member-name "Content")
                                     (metadata :target-type metadata
                                      :member-name "Metadata")
                                     (push-notification :target-type
                                      push-notification-configuration
                                      :member-name "PushNotification")
                                     (message-attributes :target-type
                                      message-attribute-map :member-name
                                      "MessageAttributes")
                                     (sub-channel-id :target-type
                                      sub-channel-id :member-name
                                      "SubChannelId")
                                     (content-type :target-type content-type
                                      :member-name "ContentType"))
                                    (:shape-name "ChannelMessageCallback"))

(smithy/sdk/shapes:define-enum channel-message-persistence-type
    common-lisp:nil
  (:persistent "PERSISTENT")
  (:non-persistent "NON_PERSISTENT"))

(smithy/sdk/shapes:define-enum channel-message-status
    common-lisp:nil
  (:sent "SENT")
  (:pending "PENDING")
  (:failed "FAILED")
  (:denied "DENIED"))

(smithy/sdk/shapes:define-structure channel-message-status-structure
                                    common-lisp:nil
                                    ((value :target-type channel-message-status
                                      :member-name "Value")
                                     (detail :target-type status-detail
                                      :member-name "Detail"))
                                    (:shape-name
                                     "ChannelMessageStatusStructure"))

(smithy/sdk/shapes:define-structure channel-message-summary common-lisp:nil
                                    ((message-id :target-type message-id
                                      :member-name "MessageId")
                                     (content :target-type content :member-name
                                      "Content")
                                     (metadata :target-type metadata
                                      :member-name "Metadata")
                                     (type :target-type channel-message-type
                                      :member-name "Type")
                                     (created-timestamp :target-type timestamp
                                      :member-name "CreatedTimestamp")
                                     (last-updated-timestamp :target-type
                                      timestamp :member-name
                                      "LastUpdatedTimestamp")
                                     (last-edited-timestamp :target-type
                                      timestamp :member-name
                                      "LastEditedTimestamp")
                                     (sender :target-type identity :member-name
                                      "Sender")
                                     (redacted :target-type
                                      non-nullable-boolean :member-name
                                      "Redacted")
                                     (status :target-type
                                      channel-message-status-structure
                                      :member-name "Status")
                                     (message-attributes :target-type
                                      message-attribute-map :member-name
                                      "MessageAttributes")
                                     (content-type :target-type content-type
                                      :member-name "ContentType")
                                     (target :target-type target-list
                                      :member-name "Target"))
                                    (:shape-name "ChannelMessageSummary"))

(smithy/sdk/shapes:define-list channel-message-summary-list :member
                               channel-message-summary)

(smithy/sdk/shapes:define-enum channel-message-type
    common-lisp:nil
  (:standard "STANDARD")
  (:control "CONTROL"))

(smithy/sdk/shapes:define-enum channel-mode
    common-lisp:nil
  (:unrestricted "UNRESTRICTED")
  (:restricted "RESTRICTED"))

(smithy/sdk/shapes:define-structure
 channel-moderated-by-app-instance-user-summary common-lisp:nil
 ((channel-summary :target-type channel-summary :member-name "ChannelSummary"))
 (:shape-name "ChannelModeratedByAppInstanceUserSummary"))

(smithy/sdk/shapes:define-list
 channel-moderated-by-app-instance-user-summary-list :member
 channel-moderated-by-app-instance-user-summary)

(smithy/sdk/shapes:define-structure channel-moderator common-lisp:nil
                                    ((moderator :target-type identity
                                      :member-name "Moderator")
                                     (channel-arn :target-type chime-arn
                                      :member-name "ChannelArn")
                                     (created-timestamp :target-type timestamp
                                      :member-name "CreatedTimestamp")
                                     (created-by :target-type identity
                                      :member-name "CreatedBy"))
                                    (:shape-name "ChannelModerator"))

(smithy/sdk/shapes:define-list channel-moderator-arns :member chime-arn)

(smithy/sdk/shapes:define-structure channel-moderator-summary common-lisp:nil
                                    ((moderator :target-type identity
                                      :member-name "Moderator"))
                                    (:shape-name "ChannelModeratorSummary"))

(smithy/sdk/shapes:define-list channel-moderator-summary-list :member
                               channel-moderator-summary)

(smithy/sdk/shapes:define-enum channel-privacy
    common-lisp:nil
  (:public "PUBLIC")
  (:private "PRIVATE"))

(smithy/sdk/shapes:define-structure channel-summary common-lisp:nil
                                    ((name :target-type non-empty-resource-name
                                      :member-name "Name")
                                     (channel-arn :target-type chime-arn
                                      :member-name "ChannelArn")
                                     (mode :target-type channel-mode
                                      :member-name "Mode")
                                     (privacy :target-type channel-privacy
                                      :member-name "Privacy")
                                     (metadata :target-type metadata
                                      :member-name "Metadata")
                                     (last-message-timestamp :target-type
                                      timestamp :member-name
                                      "LastMessageTimestamp"))
                                    (:shape-name "ChannelSummary"))

(smithy/sdk/shapes:define-list channel-summary-list :member channel-summary)

(smithy/sdk/shapes:define-type chime-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-request-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type content smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type content-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-channel-ban-request common-lisp:nil
                                ((channel-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "ChannelArn"
                                  :http-label common-lisp:t)
                                 (member-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "MemberArn")
                                 (chime-bearer :target-type chime-arn :required
                                  common-lisp:t :member-name "ChimeBearer"
                                  :http-header "x-amz-chime-bearer"))
                                (:shape-name "CreateChannelBanRequest"))

(smithy/sdk/shapes:define-output create-channel-ban-response common-lisp:nil
                                 ((channel-arn :target-type chime-arn
                                   :member-name "ChannelArn")
                                  (member :target-type identity :member-name
                                   "Member"))
                                 (:shape-name "CreateChannelBanResponse"))

(smithy/sdk/shapes:define-input create-channel-flow-request common-lisp:nil
                                ((app-instance-arn :target-type chime-arn
                                  :required common-lisp:t :member-name
                                  "AppInstanceArn")
                                 (processors :target-type processor-list
                                  :required common-lisp:t :member-name
                                  "Processors")
                                 (name :target-type non-empty-resource-name
                                  :required common-lisp:t :member-name "Name")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (client-request-token :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "ClientRequestToken"))
                                (:shape-name "CreateChannelFlowRequest"))

(smithy/sdk/shapes:define-output create-channel-flow-response common-lisp:nil
                                 ((channel-flow-arn :target-type chime-arn
                                   :member-name "ChannelFlowArn"))
                                 (:shape-name "CreateChannelFlowResponse"))

(smithy/sdk/shapes:define-input create-channel-membership-request
                                common-lisp:nil
                                ((channel-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "ChannelArn"
                                  :http-label common-lisp:t)
                                 (member-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "MemberArn")
                                 (type :target-type channel-membership-type
                                  :required common-lisp:t :member-name "Type")
                                 (chime-bearer :target-type chime-arn :required
                                  common-lisp:t :member-name "ChimeBearer"
                                  :http-header "x-amz-chime-bearer")
                                 (sub-channel-id :target-type sub-channel-id
                                  :member-name "SubChannelId"))
                                (:shape-name "CreateChannelMembershipRequest"))

(smithy/sdk/shapes:define-output create-channel-membership-response
                                 common-lisp:nil
                                 ((channel-arn :target-type chime-arn
                                   :member-name "ChannelArn")
                                  (member :target-type identity :member-name
                                   "Member")
                                  (sub-channel-id :target-type sub-channel-id
                                   :member-name "SubChannelId"))
                                 (:shape-name
                                  "CreateChannelMembershipResponse"))

(smithy/sdk/shapes:define-input create-channel-moderator-request
                                common-lisp:nil
                                ((channel-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "ChannelArn"
                                  :http-label common-lisp:t)
                                 (channel-moderator-arn :target-type chime-arn
                                  :required common-lisp:t :member-name
                                  "ChannelModeratorArn")
                                 (chime-bearer :target-type chime-arn :required
                                  common-lisp:t :member-name "ChimeBearer"
                                  :http-header "x-amz-chime-bearer"))
                                (:shape-name "CreateChannelModeratorRequest"))

(smithy/sdk/shapes:define-output create-channel-moderator-response
                                 common-lisp:nil
                                 ((channel-arn :target-type chime-arn
                                   :member-name "ChannelArn")
                                  (channel-moderator :target-type identity
                                   :member-name "ChannelModerator"))
                                 (:shape-name "CreateChannelModeratorResponse"))

(smithy/sdk/shapes:define-input create-channel-request common-lisp:nil
                                ((app-instance-arn :target-type chime-arn
                                  :required common-lisp:t :member-name
                                  "AppInstanceArn")
                                 (name :target-type non-empty-resource-name
                                  :required common-lisp:t :member-name "Name")
                                 (mode :target-type channel-mode :member-name
                                  "Mode")
                                 (privacy :target-type channel-privacy
                                  :member-name "Privacy")
                                 (metadata :target-type metadata :member-name
                                  "Metadata")
                                 (client-request-token :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "ClientRequestToken")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (chime-bearer :target-type chime-arn :required
                                  common-lisp:t :member-name "ChimeBearer"
                                  :http-header "x-amz-chime-bearer")
                                 (channel-id :target-type channel-id
                                  :member-name "ChannelId")
                                 (member-arns :target-type channel-member-arns
                                  :member-name "MemberArns")
                                 (moderator-arns :target-type
                                  channel-moderator-arns :member-name
                                  "ModeratorArns")
                                 (elastic-channel-configuration :target-type
                                  elastic-channel-configuration :member-name
                                  "ElasticChannelConfiguration")
                                 (expiration-settings :target-type
                                  expiration-settings :member-name
                                  "ExpirationSettings"))
                                (:shape-name "CreateChannelRequest"))

(smithy/sdk/shapes:define-output create-channel-response common-lisp:nil
                                 ((channel-arn :target-type chime-arn
                                   :member-name "ChannelArn"))
                                 (:shape-name "CreateChannelResponse"))

(smithy/sdk/shapes:define-input delete-channel-ban-request common-lisp:nil
                                ((channel-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "ChannelArn"
                                  :http-label common-lisp:t)
                                 (member-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "MemberArn"
                                  :http-label common-lisp:t)
                                 (chime-bearer :target-type chime-arn :required
                                  common-lisp:t :member-name "ChimeBearer"
                                  :http-header "x-amz-chime-bearer"))
                                (:shape-name "DeleteChannelBanRequest"))

(smithy/sdk/shapes:define-input delete-channel-flow-request common-lisp:nil
                                ((channel-flow-arn :target-type chime-arn
                                  :required common-lisp:t :member-name
                                  "ChannelFlowArn" :http-label common-lisp:t))
                                (:shape-name "DeleteChannelFlowRequest"))

(smithy/sdk/shapes:define-input delete-channel-membership-request
                                common-lisp:nil
                                ((channel-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "ChannelArn"
                                  :http-label common-lisp:t)
                                 (member-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "MemberArn"
                                  :http-label common-lisp:t)
                                 (chime-bearer :target-type chime-arn :required
                                  common-lisp:t :member-name "ChimeBearer"
                                  :http-header "x-amz-chime-bearer")
                                 (sub-channel-id :target-type sub-channel-id
                                  :member-name "SubChannelId" :http-query
                                  "sub-channel-id"))
                                (:shape-name "DeleteChannelMembershipRequest"))

(smithy/sdk/shapes:define-input delete-channel-message-request common-lisp:nil
                                ((channel-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "ChannelArn"
                                  :http-label common-lisp:t)
                                 (message-id :target-type message-id :required
                                  common-lisp:t :member-name "MessageId"
                                  :http-label common-lisp:t)
                                 (chime-bearer :target-type chime-arn :required
                                  common-lisp:t :member-name "ChimeBearer"
                                  :http-header "x-amz-chime-bearer")
                                 (sub-channel-id :target-type sub-channel-id
                                  :member-name "SubChannelId" :http-query
                                  "sub-channel-id"))
                                (:shape-name "DeleteChannelMessageRequest"))

(smithy/sdk/shapes:define-input delete-channel-moderator-request
                                common-lisp:nil
                                ((channel-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "ChannelArn"
                                  :http-label common-lisp:t)
                                 (channel-moderator-arn :target-type chime-arn
                                  :required common-lisp:t :member-name
                                  "ChannelModeratorArn" :http-label
                                  common-lisp:t)
                                 (chime-bearer :target-type chime-arn :required
                                  common-lisp:t :member-name "ChimeBearer"
                                  :http-header "x-amz-chime-bearer"))
                                (:shape-name "DeleteChannelModeratorRequest"))

(smithy/sdk/shapes:define-input delete-channel-request common-lisp:nil
                                ((channel-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "ChannelArn"
                                  :http-label common-lisp:t)
                                 (chime-bearer :target-type chime-arn :required
                                  common-lisp:t :member-name "ChimeBearer"
                                  :http-header "x-amz-chime-bearer"))
                                (:shape-name "DeleteChannelRequest"))

(smithy/sdk/shapes:define-input
 delete-messaging-streaming-configurations-request common-lisp:nil
 ((app-instance-arn :target-type chime-arn :required common-lisp:t :member-name
   "AppInstanceArn" :http-label common-lisp:t))
 (:shape-name "DeleteMessagingStreamingConfigurationsRequest"))

(smithy/sdk/shapes:define-input describe-channel-ban-request common-lisp:nil
                                ((channel-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "ChannelArn"
                                  :http-label common-lisp:t)
                                 (member-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "MemberArn"
                                  :http-label common-lisp:t)
                                 (chime-bearer :target-type chime-arn :required
                                  common-lisp:t :member-name "ChimeBearer"
                                  :http-header "x-amz-chime-bearer"))
                                (:shape-name "DescribeChannelBanRequest"))

(smithy/sdk/shapes:define-output describe-channel-ban-response common-lisp:nil
                                 ((channel-ban :target-type channel-ban
                                   :member-name "ChannelBan"))
                                 (:shape-name "DescribeChannelBanResponse"))

(smithy/sdk/shapes:define-input describe-channel-flow-request common-lisp:nil
                                ((channel-flow-arn :target-type chime-arn
                                  :required common-lisp:t :member-name
                                  "ChannelFlowArn" :http-label common-lisp:t))
                                (:shape-name "DescribeChannelFlowRequest"))

(smithy/sdk/shapes:define-output describe-channel-flow-response common-lisp:nil
                                 ((channel-flow :target-type channel-flow
                                   :member-name "ChannelFlow"))
                                 (:shape-name "DescribeChannelFlowResponse"))

(smithy/sdk/shapes:define-input
 describe-channel-membership-for-app-instance-user-request common-lisp:nil
 ((channel-arn :target-type chime-arn :required common-lisp:t :member-name
   "ChannelArn" :http-label common-lisp:t)
  (app-instance-user-arn :target-type chime-arn :required common-lisp:t
   :member-name "AppInstanceUserArn" :http-query "app-instance-user-arn")
  (chime-bearer :target-type chime-arn :required common-lisp:t :member-name
   "ChimeBearer" :http-header "x-amz-chime-bearer"))
 (:shape-name "DescribeChannelMembershipForAppInstanceUserRequest"))

(smithy/sdk/shapes:define-output
 describe-channel-membership-for-app-instance-user-response common-lisp:nil
 ((channel-membership :target-type
   channel-membership-for-app-instance-user-summary :member-name
   "ChannelMembership"))
 (:shape-name "DescribeChannelMembershipForAppInstanceUserResponse"))

(smithy/sdk/shapes:define-input describe-channel-membership-request
                                common-lisp:nil
                                ((channel-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "ChannelArn"
                                  :http-label common-lisp:t)
                                 (member-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "MemberArn"
                                  :http-label common-lisp:t)
                                 (chime-bearer :target-type chime-arn :required
                                  common-lisp:t :member-name "ChimeBearer"
                                  :http-header "x-amz-chime-bearer")
                                 (sub-channel-id :target-type sub-channel-id
                                  :member-name "SubChannelId" :http-query
                                  "sub-channel-id"))
                                (:shape-name
                                 "DescribeChannelMembershipRequest"))

(smithy/sdk/shapes:define-output describe-channel-membership-response
                                 common-lisp:nil
                                 ((channel-membership :target-type
                                   channel-membership :member-name
                                   "ChannelMembership"))
                                 (:shape-name
                                  "DescribeChannelMembershipResponse"))

(smithy/sdk/shapes:define-input
 describe-channel-moderated-by-app-instance-user-request common-lisp:nil
 ((channel-arn :target-type chime-arn :required common-lisp:t :member-name
   "ChannelArn" :http-label common-lisp:t)
  (app-instance-user-arn :target-type chime-arn :required common-lisp:t
   :member-name "AppInstanceUserArn" :http-query "app-instance-user-arn")
  (chime-bearer :target-type chime-arn :required common-lisp:t :member-name
   "ChimeBearer" :http-header "x-amz-chime-bearer"))
 (:shape-name "DescribeChannelModeratedByAppInstanceUserRequest"))

(smithy/sdk/shapes:define-output
 describe-channel-moderated-by-app-instance-user-response common-lisp:nil
 ((channel :target-type channel-moderated-by-app-instance-user-summary
   :member-name "Channel"))
 (:shape-name "DescribeChannelModeratedByAppInstanceUserResponse"))

(smithy/sdk/shapes:define-input describe-channel-moderator-request
                                common-lisp:nil
                                ((channel-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "ChannelArn"
                                  :http-label common-lisp:t)
                                 (channel-moderator-arn :target-type chime-arn
                                  :required common-lisp:t :member-name
                                  "ChannelModeratorArn" :http-label
                                  common-lisp:t)
                                 (chime-bearer :target-type chime-arn :required
                                  common-lisp:t :member-name "ChimeBearer"
                                  :http-header "x-amz-chime-bearer"))
                                (:shape-name "DescribeChannelModeratorRequest"))

(smithy/sdk/shapes:define-output describe-channel-moderator-response
                                 common-lisp:nil
                                 ((channel-moderator :target-type
                                   channel-moderator :member-name
                                   "ChannelModerator"))
                                 (:shape-name
                                  "DescribeChannelModeratorResponse"))

(smithy/sdk/shapes:define-input describe-channel-request common-lisp:nil
                                ((channel-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "ChannelArn"
                                  :http-label common-lisp:t)
                                 (chime-bearer :target-type chime-arn :required
                                  common-lisp:t :member-name "ChimeBearer"
                                  :http-header "x-amz-chime-bearer"))
                                (:shape-name "DescribeChannelRequest"))

(smithy/sdk/shapes:define-output describe-channel-response common-lisp:nil
                                 ((channel :target-type channel :member-name
                                   "Channel"))
                                 (:shape-name "DescribeChannelResponse"))

(smithy/sdk/shapes:define-input disassociate-channel-flow-request
                                common-lisp:nil
                                ((channel-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "ChannelArn"
                                  :http-label common-lisp:t)
                                 (channel-flow-arn :target-type chime-arn
                                  :required common-lisp:t :member-name
                                  "ChannelFlowArn" :http-label common-lisp:t)
                                 (chime-bearer :target-type chime-arn :required
                                  common-lisp:t :member-name "ChimeBearer"
                                  :http-header "x-amz-chime-bearer"))
                                (:shape-name "DisassociateChannelFlowRequest"))

(smithy/sdk/shapes:define-structure elastic-channel-configuration
                                    common-lisp:nil
                                    ((maximum-sub-channels :target-type
                                      maximum-sub-channels :required
                                      common-lisp:t :member-name
                                      "MaximumSubChannels")
                                     (target-memberships-per-sub-channel
                                      :target-type
                                      target-memberships-per-sub-channel
                                      :required common-lisp:t :member-name
                                      "TargetMembershipsPerSubChannel")
                                     (minimum-membership-percentage
                                      :target-type
                                      minimum-membership-percentage :required
                                      common-lisp:t :member-name
                                      "MinimumMembershipPercentage"))
                                    (:shape-name "ElasticChannelConfiguration"))

(smithy/sdk/shapes:define-enum error-code
    common-lisp:nil
  (:bad-request "BadRequest")
  (:conflict "Conflict")
  (:forbidden "Forbidden")
  (:not-found "NotFound")
  (:precondition-failed "PreconditionFailed")
  (:resource-limit-exceeded "ResourceLimitExceeded")
  (:service-failure "ServiceFailure")
  (:access-denied "AccessDenied")
  (:service-unavailable "ServiceUnavailable")
  (:throttled "Throttled")
  (:throttling "Throttling")
  (:unauthorized "Unauthorized")
  (:unprocessable "Unprocessable")
  (:voice-connector-group-associations-exist
   "VoiceConnectorGroupAssociationsExist")
  (:phone-number-associations-exist "PhoneNumberAssociationsExist"))

(smithy/sdk/shapes:define-enum expiration-criterion
    common-lisp:nil
  (:created-timestamp "CREATED_TIMESTAMP")
  (:last-message-timestamp "LAST_MESSAGE_TIMESTAMP"))

(smithy/sdk/shapes:define-type expiration-days smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure expiration-settings common-lisp:nil
                                    ((expiration-days :target-type
                                      expiration-days :required common-lisp:t
                                      :member-name "ExpirationDays")
                                     (expiration-criterion :target-type
                                      expiration-criterion :required
                                      common-lisp:t :member-name
                                      "ExpirationCriterion"))
                                    (:shape-name "ExpirationSettings"))

(smithy/sdk/shapes:define-enum fallback-action
    common-lisp:nil
  (:continue "CONTINUE")
  (:abort "ABORT"))

(smithy/sdk/shapes:define-type filter-rule smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error forbidden-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ForbiddenException")
                                (:error-code 403))

(smithy/sdk/shapes:define-input get-channel-membership-preferences-request
                                common-lisp:nil
                                ((channel-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "ChannelArn"
                                  :http-label common-lisp:t)
                                 (member-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "MemberArn"
                                  :http-label common-lisp:t)
                                 (chime-bearer :target-type chime-arn :required
                                  common-lisp:t :member-name "ChimeBearer"
                                  :http-header "x-amz-chime-bearer"))
                                (:shape-name
                                 "GetChannelMembershipPreferencesRequest"))

(smithy/sdk/shapes:define-output get-channel-membership-preferences-response
                                 common-lisp:nil
                                 ((channel-arn :target-type chime-arn
                                   :member-name "ChannelArn")
                                  (member :target-type identity :member-name
                                   "Member")
                                  (preferences :target-type
                                   channel-membership-preferences :member-name
                                   "Preferences"))
                                 (:shape-name
                                  "GetChannelMembershipPreferencesResponse"))

(smithy/sdk/shapes:define-input get-channel-message-request common-lisp:nil
                                ((channel-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "ChannelArn"
                                  :http-label common-lisp:t)
                                 (message-id :target-type message-id :required
                                  common-lisp:t :member-name "MessageId"
                                  :http-label common-lisp:t)
                                 (chime-bearer :target-type chime-arn :required
                                  common-lisp:t :member-name "ChimeBearer"
                                  :http-header "x-amz-chime-bearer")
                                 (sub-channel-id :target-type sub-channel-id
                                  :member-name "SubChannelId" :http-query
                                  "sub-channel-id"))
                                (:shape-name "GetChannelMessageRequest"))

(smithy/sdk/shapes:define-output get-channel-message-response common-lisp:nil
                                 ((channel-message :target-type channel-message
                                   :member-name "ChannelMessage"))
                                 (:shape-name "GetChannelMessageResponse"))

(smithy/sdk/shapes:define-input get-channel-message-status-request
                                common-lisp:nil
                                ((channel-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "ChannelArn"
                                  :http-label common-lisp:t)
                                 (message-id :target-type message-id :required
                                  common-lisp:t :member-name "MessageId"
                                  :http-label common-lisp:t)
                                 (chime-bearer :target-type chime-arn :required
                                  common-lisp:t :member-name "ChimeBearer"
                                  :http-header "x-amz-chime-bearer")
                                 (sub-channel-id :target-type sub-channel-id
                                  :member-name "SubChannelId" :http-query
                                  "sub-channel-id"))
                                (:shape-name "GetChannelMessageStatusRequest"))

(smithy/sdk/shapes:define-output get-channel-message-status-response
                                 common-lisp:nil
                                 ((status :target-type
                                   channel-message-status-structure
                                   :member-name "Status"))
                                 (:shape-name
                                  "GetChannelMessageStatusResponse"))

(smithy/sdk/shapes:define-input get-messaging-session-endpoint-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "GetMessagingSessionEndpointRequest"))

(smithy/sdk/shapes:define-output get-messaging-session-endpoint-response
                                 common-lisp:nil
                                 ((endpoint :target-type
                                   messaging-session-endpoint :member-name
                                   "Endpoint"))
                                 (:shape-name
                                  "GetMessagingSessionEndpointResponse"))

(smithy/sdk/shapes:define-input get-messaging-streaming-configurations-request
                                common-lisp:nil
                                ((app-instance-arn :target-type chime-arn
                                  :required common-lisp:t :member-name
                                  "AppInstanceArn" :http-label common-lisp:t))
                                (:shape-name
                                 "GetMessagingStreamingConfigurationsRequest"))

(smithy/sdk/shapes:define-output
 get-messaging-streaming-configurations-response common-lisp:nil
 ((streaming-configurations :target-type streaming-configuration-list
   :member-name "StreamingConfigurations"))
 (:shape-name "GetMessagingStreamingConfigurationsResponse"))

(smithy/sdk/shapes:define-structure identity common-lisp:nil
                                    ((arn :target-type chime-arn :member-name
                                      "Arn")
                                     (name :target-type resource-name
                                      :member-name "Name"))
                                    (:shape-name "Identity"))

(smithy/sdk/shapes:define-enum invocation-type
    common-lisp:nil
  (:async "ASYNC"))

(smithy/sdk/shapes:define-structure lambda-configuration common-lisp:nil
                                    ((resource-arn :target-type
                                      lambda-function-arn :required
                                      common-lisp:t :member-name "ResourceArn")
                                     (invocation-type :target-type
                                      invocation-type :required common-lisp:t
                                      :member-name "InvocationType"))
                                    (:shape-name "LambdaConfiguration"))

(smithy/sdk/shapes:define-type lambda-function-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-channel-bans-request common-lisp:nil
                                ((channel-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "ChannelArn"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "max-results")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "next-token")
                                 (chime-bearer :target-type chime-arn :required
                                  common-lisp:t :member-name "ChimeBearer"
                                  :http-header "x-amz-chime-bearer"))
                                (:shape-name "ListChannelBansRequest"))

(smithy/sdk/shapes:define-output list-channel-bans-response common-lisp:nil
                                 ((channel-arn :target-type chime-arn
                                   :member-name "ChannelArn")
                                  (next-token :target-type next-token
                                   :member-name "NextToken")
                                  (channel-bans :target-type
                                   channel-ban-summary-list :member-name
                                   "ChannelBans"))
                                 (:shape-name "ListChannelBansResponse"))

(smithy/sdk/shapes:define-input list-channel-flows-request common-lisp:nil
                                ((app-instance-arn :target-type chime-arn
                                  :required common-lisp:t :member-name
                                  "AppInstanceArn" :http-query
                                  "app-instance-arn")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "max-results")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "next-token"))
                                (:shape-name "ListChannelFlowsRequest"))

(smithy/sdk/shapes:define-output list-channel-flows-response common-lisp:nil
                                 ((channel-flows :target-type
                                   channel-flow-summary-list :member-name
                                   "ChannelFlows")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListChannelFlowsResponse"))

(smithy/sdk/shapes:define-input
 list-channel-memberships-for-app-instance-user-request common-lisp:nil
 ((app-instance-user-arn :target-type chime-arn :member-name
   "AppInstanceUserArn" :http-query "app-instance-user-arn")
  (max-results :target-type max-results :member-name "MaxResults" :http-query
   "max-results")
  (next-token :target-type next-token :member-name "NextToken" :http-query
   "next-token")
  (chime-bearer :target-type chime-arn :required common-lisp:t :member-name
   "ChimeBearer" :http-header "x-amz-chime-bearer"))
 (:shape-name "ListChannelMembershipsForAppInstanceUserRequest"))

(smithy/sdk/shapes:define-output
 list-channel-memberships-for-app-instance-user-response common-lisp:nil
 ((channel-memberships :target-type
   channel-membership-for-app-instance-user-summary-list :member-name
   "ChannelMemberships")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "ListChannelMembershipsForAppInstanceUserResponse"))

(smithy/sdk/shapes:define-input list-channel-memberships-request
                                common-lisp:nil
                                ((channel-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "ChannelArn"
                                  :http-label common-lisp:t)
                                 (type :target-type channel-membership-type
                                  :member-name "Type" :http-query "type")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "max-results")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "next-token")
                                 (chime-bearer :target-type chime-arn :required
                                  common-lisp:t :member-name "ChimeBearer"
                                  :http-header "x-amz-chime-bearer")
                                 (sub-channel-id :target-type sub-channel-id
                                  :member-name "SubChannelId" :http-query
                                  "sub-channel-id"))
                                (:shape-name "ListChannelMembershipsRequest"))

(smithy/sdk/shapes:define-output list-channel-memberships-response
                                 common-lisp:nil
                                 ((channel-arn :target-type chime-arn
                                   :member-name "ChannelArn")
                                  (channel-memberships :target-type
                                   channel-membership-summary-list :member-name
                                   "ChannelMemberships")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListChannelMembershipsResponse"))

(smithy/sdk/shapes:define-input list-channel-messages-request common-lisp:nil
                                ((channel-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "ChannelArn"
                                  :http-label common-lisp:t)
                                 (sort-order :target-type sort-order
                                  :member-name "SortOrder" :http-query
                                  "sort-order")
                                 (not-before :target-type timestamp
                                  :member-name "NotBefore" :http-query
                                  "not-before")
                                 (not-after :target-type timestamp :member-name
                                  "NotAfter" :http-query "not-after")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "max-results")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "next-token")
                                 (chime-bearer :target-type chime-arn :required
                                  common-lisp:t :member-name "ChimeBearer"
                                  :http-header "x-amz-chime-bearer")
                                 (sub-channel-id :target-type sub-channel-id
                                  :member-name "SubChannelId" :http-query
                                  "sub-channel-id"))
                                (:shape-name "ListChannelMessagesRequest"))

(smithy/sdk/shapes:define-output list-channel-messages-response common-lisp:nil
                                 ((channel-arn :target-type chime-arn
                                   :member-name "ChannelArn")
                                  (next-token :target-type next-token
                                   :member-name "NextToken")
                                  (channel-messages :target-type
                                   channel-message-summary-list :member-name
                                   "ChannelMessages")
                                  (sub-channel-id :target-type sub-channel-id
                                   :member-name "SubChannelId"))
                                 (:shape-name "ListChannelMessagesResponse"))

(smithy/sdk/shapes:define-input list-channel-moderators-request common-lisp:nil
                                ((channel-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "ChannelArn"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "max-results")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "next-token")
                                 (chime-bearer :target-type chime-arn :required
                                  common-lisp:t :member-name "ChimeBearer"
                                  :http-header "x-amz-chime-bearer"))
                                (:shape-name "ListChannelModeratorsRequest"))

(smithy/sdk/shapes:define-output list-channel-moderators-response
                                 common-lisp:nil
                                 ((channel-arn :target-type chime-arn
                                   :member-name "ChannelArn")
                                  (next-token :target-type next-token
                                   :member-name "NextToken")
                                  (channel-moderators :target-type
                                   channel-moderator-summary-list :member-name
                                   "ChannelModerators"))
                                 (:shape-name "ListChannelModeratorsResponse"))

(smithy/sdk/shapes:define-input
 list-channels-associated-with-channel-flow-request common-lisp:nil
 ((channel-flow-arn :target-type chime-arn :required common-lisp:t :member-name
   "ChannelFlowArn" :http-query "channel-flow-arn")
  (max-results :target-type max-results :member-name "MaxResults" :http-query
   "max-results")
  (next-token :target-type next-token :member-name "NextToken" :http-query
   "next-token"))
 (:shape-name "ListChannelsAssociatedWithChannelFlowRequest"))

(smithy/sdk/shapes:define-output
 list-channels-associated-with-channel-flow-response common-lisp:nil
 ((channels :target-type channel-associated-with-flow-summary-list :member-name
   "Channels")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "ListChannelsAssociatedWithChannelFlowResponse"))

(smithy/sdk/shapes:define-input
 list-channels-moderated-by-app-instance-user-request common-lisp:nil
 ((app-instance-user-arn :target-type chime-arn :member-name
   "AppInstanceUserArn" :http-query "app-instance-user-arn")
  (max-results :target-type max-results :member-name "MaxResults" :http-query
   "max-results")
  (next-token :target-type next-token :member-name "NextToken" :http-query
   "next-token")
  (chime-bearer :target-type chime-arn :required common-lisp:t :member-name
   "ChimeBearer" :http-header "x-amz-chime-bearer"))
 (:shape-name "ListChannelsModeratedByAppInstanceUserRequest"))

(smithy/sdk/shapes:define-output
 list-channels-moderated-by-app-instance-user-response common-lisp:nil
 ((channels :target-type channel-moderated-by-app-instance-user-summary-list
   :member-name "Channels")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "ListChannelsModeratedByAppInstanceUserResponse"))

(smithy/sdk/shapes:define-input list-channels-request common-lisp:nil
                                ((app-instance-arn :target-type chime-arn
                                  :required common-lisp:t :member-name
                                  "AppInstanceArn" :http-query
                                  "app-instance-arn")
                                 (privacy :target-type channel-privacy
                                  :member-name "Privacy" :http-query "privacy")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "max-results")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "next-token")
                                 (chime-bearer :target-type chime-arn :required
                                  common-lisp:t :member-name "ChimeBearer"
                                  :http-header "x-amz-chime-bearer"))
                                (:shape-name "ListChannelsRequest"))

(smithy/sdk/shapes:define-output list-channels-response common-lisp:nil
                                 ((channels :target-type channel-summary-list
                                   :member-name "Channels")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListChannelsResponse"))

(smithy/sdk/shapes:define-input list-sub-channels-request common-lisp:nil
                                ((channel-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "ChannelArn"
                                  :http-label common-lisp:t)
                                 (chime-bearer :target-type chime-arn :required
                                  common-lisp:t :member-name "ChimeBearer"
                                  :http-header "x-amz-chime-bearer")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "max-results")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "next-token"))
                                (:shape-name "ListSubChannelsRequest"))

(smithy/sdk/shapes:define-output list-sub-channels-response common-lisp:nil
                                 ((channel-arn :target-type chime-arn
                                   :member-name "ChannelArn")
                                  (sub-channels :target-type
                                   sub-channel-summary-list :member-name
                                   "SubChannels")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListSubChannelsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "ResourceARN"
                                  :http-query "arn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type maximum-sub-channels
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list member-arns :member chime-arn)

(smithy/sdk/shapes:define-list members :member identity)

(smithy/sdk/shapes:define-type membership-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-map message-attribute-map :key message-attribute-name
                              :value message-attribute-value)

(smithy/sdk/shapes:define-type message-attribute-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type message-attribute-string-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list message-attribute-string-values :member
                               message-attribute-string-value)

(smithy/sdk/shapes:define-structure message-attribute-value common-lisp:nil
                                    ((string-values :target-type
                                      message-attribute-string-values
                                      :member-name "StringValues"))
                                    (:shape-name "MessageAttributeValue"))

(smithy/sdk/shapes:define-type message-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum messaging-data-type
    common-lisp:nil
  (:channel "Channel")
  (:channel-message "ChannelMessage"))

(smithy/sdk/shapes:define-structure messaging-session-endpoint common-lisp:nil
                                    ((url :target-type url-type :member-name
                                      "Url"))
                                    (:shape-name "MessagingSessionEndpoint"))

(smithy/sdk/shapes:define-type metadata smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type minimum-membership-percentage
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-empty-content smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-empty-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-nullable-boolean
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "NotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure processor common-lisp:nil
                                    ((name :target-type non-empty-resource-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (configuration :target-type
                                      processor-configuration :required
                                      common-lisp:t :member-name
                                      "Configuration")
                                     (execution-order :target-type
                                      channel-flow-execution-order :required
                                      common-lisp:t :member-name
                                      "ExecutionOrder")
                                     (fallback-action :target-type
                                      fallback-action :required common-lisp:t
                                      :member-name "FallbackAction"))
                                    (:shape-name "Processor"))

(smithy/sdk/shapes:define-structure processor-configuration common-lisp:nil
                                    ((lambda :target-type lambda-configuration
                                      :required common-lisp:t :member-name
                                      "Lambda"))
                                    (:shape-name "ProcessorConfiguration"))

(smithy/sdk/shapes:define-list processor-list :member processor)

(smithy/sdk/shapes:define-type push-notification-body
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure push-notification-configuration
                                    common-lisp:nil
                                    ((title :target-type
                                      push-notification-title :member-name
                                      "Title")
                                     (body :target-type push-notification-body
                                      :member-name "Body")
                                     (type :target-type push-notification-type
                                      :member-name "Type"))
                                    (:shape-name
                                     "PushNotificationConfiguration"))

(smithy/sdk/shapes:define-structure push-notification-preferences
                                    common-lisp:nil
                                    ((allow-notifications :target-type
                                      allow-notifications :required
                                      common-lisp:t :member-name
                                      "AllowNotifications")
                                     (filter-rule :target-type filter-rule
                                      :member-name "FilterRule"))
                                    (:shape-name "PushNotificationPreferences"))

(smithy/sdk/shapes:define-type push-notification-title
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum push-notification-type
    common-lisp:nil
  (:default "DEFAULT")
  (:voip "VOIP"))

(smithy/sdk/shapes:define-input put-channel-expiration-settings-request
                                common-lisp:nil
                                ((channel-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "ChannelArn"
                                  :http-label common-lisp:t)
                                 (chime-bearer :target-type chime-arn
                                  :member-name "ChimeBearer" :http-header
                                  "x-amz-chime-bearer")
                                 (expiration-settings :target-type
                                  expiration-settings :member-name
                                  "ExpirationSettings"))
                                (:shape-name
                                 "PutChannelExpirationSettingsRequest"))

(smithy/sdk/shapes:define-output put-channel-expiration-settings-response
                                 common-lisp:nil
                                 ((channel-arn :target-type chime-arn
                                   :member-name "ChannelArn")
                                  (expiration-settings :target-type
                                   expiration-settings :member-name
                                   "ExpirationSettings"))
                                 (:shape-name
                                  "PutChannelExpirationSettingsResponse"))

(smithy/sdk/shapes:define-input put-channel-membership-preferences-request
                                common-lisp:nil
                                ((channel-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "ChannelArn"
                                  :http-label common-lisp:t)
                                 (member-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "MemberArn"
                                  :http-label common-lisp:t)
                                 (chime-bearer :target-type chime-arn :required
                                  common-lisp:t :member-name "ChimeBearer"
                                  :http-header "x-amz-chime-bearer")
                                 (preferences :target-type
                                  channel-membership-preferences :required
                                  common-lisp:t :member-name "Preferences"))
                                (:shape-name
                                 "PutChannelMembershipPreferencesRequest"))

(smithy/sdk/shapes:define-output put-channel-membership-preferences-response
                                 common-lisp:nil
                                 ((channel-arn :target-type chime-arn
                                   :member-name "ChannelArn")
                                  (member :target-type identity :member-name
                                   "Member")
                                  (preferences :target-type
                                   channel-membership-preferences :member-name
                                   "Preferences"))
                                 (:shape-name
                                  "PutChannelMembershipPreferencesResponse"))

(smithy/sdk/shapes:define-input put-messaging-streaming-configurations-request
                                common-lisp:nil
                                ((app-instance-arn :target-type chime-arn
                                  :required common-lisp:t :member-name
                                  "AppInstanceArn" :http-label common-lisp:t)
                                 (streaming-configurations :target-type
                                  streaming-configuration-list :required
                                  common-lisp:t :member-name
                                  "StreamingConfigurations"))
                                (:shape-name
                                 "PutMessagingStreamingConfigurationsRequest"))

(smithy/sdk/shapes:define-output
 put-messaging-streaming-configurations-response common-lisp:nil
 ((streaming-configurations :target-type streaming-configuration-list
   :member-name "StreamingConfigurations"))
 (:shape-name "PutMessagingStreamingConfigurationsResponse"))

(smithy/sdk/shapes:define-input redact-channel-message-request common-lisp:nil
                                ((channel-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "ChannelArn"
                                  :http-label common-lisp:t)
                                 (message-id :target-type message-id :required
                                  common-lisp:t :member-name "MessageId"
                                  :http-label common-lisp:t)
                                 (chime-bearer :target-type chime-arn :required
                                  common-lisp:t :member-name "ChimeBearer"
                                  :http-header "x-amz-chime-bearer")
                                 (sub-channel-id :target-type sub-channel-id
                                  :member-name "SubChannelId"))
                                (:shape-name "RedactChannelMessageRequest"))

(smithy/sdk/shapes:define-output redact-channel-message-response
                                 common-lisp:nil
                                 ((channel-arn :target-type chime-arn
                                   :member-name "ChannelArn")
                                  (message-id :target-type message-id
                                   :member-name "MessageId")
                                  (sub-channel-id :target-type sub-channel-id
                                   :member-name "SubChannelId"))
                                 (:shape-name "RedactChannelMessageResponse"))

(smithy/sdk/shapes:define-error resource-limit-exceeded-exception
                                common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ResourceLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type resource-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input search-channels-request common-lisp:nil
                                ((chime-bearer :target-type chime-arn
                                  :member-name "ChimeBearer" :http-header
                                  "x-amz-chime-bearer")
                                 (fields :target-type search-fields :required
                                  common-lisp:t :member-name "Fields")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "max-results")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "next-token"))
                                (:shape-name "SearchChannelsRequest"))

(smithy/sdk/shapes:define-output search-channels-response common-lisp:nil
                                 ((channels :target-type channel-summary-list
                                   :member-name "Channels")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "SearchChannelsResponse"))

(smithy/sdk/shapes:define-structure search-field common-lisp:nil
                                    ((key :target-type search-field-key
                                      :required common-lisp:t :member-name
                                      "Key")
                                     (values :target-type search-field-values
                                      :required common-lisp:t :member-name
                                      "Values")
                                     (operator :target-type
                                      search-field-operator :required
                                      common-lisp:t :member-name "Operator"))
                                    (:shape-name "SearchField"))

(smithy/sdk/shapes:define-enum search-field-key
    common-lisp:nil
  (:members "MEMBERS"))

(smithy/sdk/shapes:define-enum search-field-operator
    common-lisp:nil
  (:equals "EQUALS")
  (:includes "INCLUDES"))

(smithy/sdk/shapes:define-type search-field-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list search-field-values :member search-field-value)

(smithy/sdk/shapes:define-list search-fields :member search-field)

(smithy/sdk/shapes:define-input send-channel-message-request common-lisp:nil
                                ((channel-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "ChannelArn"
                                  :http-label common-lisp:t)
                                 (content :target-type non-empty-content
                                  :required common-lisp:t :member-name
                                  "Content")
                                 (type :target-type channel-message-type
                                  :required common-lisp:t :member-name "Type")
                                 (persistence :target-type
                                  channel-message-persistence-type :required
                                  common-lisp:t :member-name "Persistence")
                                 (metadata :target-type metadata :member-name
                                  "Metadata")
                                 (client-request-token :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "ClientRequestToken")
                                 (chime-bearer :target-type chime-arn :required
                                  common-lisp:t :member-name "ChimeBearer"
                                  :http-header "x-amz-chime-bearer")
                                 (push-notification :target-type
                                  push-notification-configuration :member-name
                                  "PushNotification")
                                 (message-attributes :target-type
                                  message-attribute-map :member-name
                                  "MessageAttributes")
                                 (sub-channel-id :target-type sub-channel-id
                                  :member-name "SubChannelId")
                                 (content-type :target-type content-type
                                  :member-name "ContentType")
                                 (target :target-type target-list :member-name
                                  "Target"))
                                (:shape-name "SendChannelMessageRequest"))

(smithy/sdk/shapes:define-output send-channel-message-response common-lisp:nil
                                 ((channel-arn :target-type chime-arn
                                   :member-name "ChannelArn")
                                  (message-id :target-type message-id
                                   :member-name "MessageId")
                                  (status :target-type
                                   channel-message-status-structure
                                   :member-name "Status")
                                  (sub-channel-id :target-type sub-channel-id
                                   :member-name "SubChannelId"))
                                 (:shape-name "SendChannelMessageResponse"))

(smithy/sdk/shapes:define-error service-failure-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ServiceFailureException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503))

(smithy/sdk/shapes:define-enum sort-order
    common-lisp:nil
  (:ascending "ASCENDING")
  (:descending "DESCENDING"))

(smithy/sdk/shapes:define-type status-detail smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure streaming-configuration common-lisp:nil
                                    ((data-type :target-type
                                      messaging-data-type :required
                                      common-lisp:t :member-name "DataType")
                                     (resource-arn :target-type chime-arn
                                      :required common-lisp:t :member-name
                                      "ResourceArn"))
                                    (:shape-name "StreamingConfiguration"))

(smithy/sdk/shapes:define-list streaming-configuration-list :member
                               streaming-configuration)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sub-channel-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sub-channel-summary common-lisp:nil
                                    ((sub-channel-id :target-type
                                      sub-channel-id :member-name
                                      "SubChannelId")
                                     (membership-count :target-type
                                      membership-count :member-name
                                      "MembershipCount"))
                                    (:shape-name "SubChannelSummary"))

(smithy/sdk/shapes:define-list sub-channel-summary-list :member
                               sub-channel-summary)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "ResourceARN")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure target common-lisp:nil
                                    ((member-arn :target-type chime-arn
                                      :member-name "MemberArn"))
                                    (:shape-name "Target"))

(smithy/sdk/shapes:define-list target-list :member target)

(smithy/sdk/shapes:define-type target-memberships-per-sub-channel
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error throttled-client-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ThrottledClientException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error unauthorized-client-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "UnauthorizedClientException")
                                (:error-code 401))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "ResourceARN")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-input update-channel-flow-request common-lisp:nil
                                ((channel-flow-arn :target-type chime-arn
                                  :required common-lisp:t :member-name
                                  "ChannelFlowArn" :http-label common-lisp:t)
                                 (processors :target-type processor-list
                                  :required common-lisp:t :member-name
                                  "Processors")
                                 (name :target-type non-empty-resource-name
                                  :required common-lisp:t :member-name "Name"))
                                (:shape-name "UpdateChannelFlowRequest"))

(smithy/sdk/shapes:define-output update-channel-flow-response common-lisp:nil
                                 ((channel-flow-arn :target-type chime-arn
                                   :member-name "ChannelFlowArn"))
                                 (:shape-name "UpdateChannelFlowResponse"))

(smithy/sdk/shapes:define-input update-channel-message-request common-lisp:nil
                                ((channel-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "ChannelArn"
                                  :http-label common-lisp:t)
                                 (message-id :target-type message-id :required
                                  common-lisp:t :member-name "MessageId"
                                  :http-label common-lisp:t)
                                 (content :target-type non-empty-content
                                  :required common-lisp:t :member-name
                                  "Content")
                                 (metadata :target-type metadata :member-name
                                  "Metadata")
                                 (chime-bearer :target-type chime-arn :required
                                  common-lisp:t :member-name "ChimeBearer"
                                  :http-header "x-amz-chime-bearer")
                                 (sub-channel-id :target-type sub-channel-id
                                  :member-name "SubChannelId")
                                 (content-type :target-type content-type
                                  :member-name "ContentType"))
                                (:shape-name "UpdateChannelMessageRequest"))

(smithy/sdk/shapes:define-output update-channel-message-response
                                 common-lisp:nil
                                 ((channel-arn :target-type chime-arn
                                   :member-name "ChannelArn")
                                  (message-id :target-type message-id
                                   :member-name "MessageId")
                                  (status :target-type
                                   channel-message-status-structure
                                   :member-name "Status")
                                  (sub-channel-id :target-type sub-channel-id
                                   :member-name "SubChannelId"))
                                 (:shape-name "UpdateChannelMessageResponse"))

(smithy/sdk/shapes:define-input update-channel-read-marker-request
                                common-lisp:nil
                                ((channel-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "ChannelArn"
                                  :http-label common-lisp:t)
                                 (chime-bearer :target-type chime-arn :required
                                  common-lisp:t :member-name "ChimeBearer"
                                  :http-header "x-amz-chime-bearer"))
                                (:shape-name "UpdateChannelReadMarkerRequest"))

(smithy/sdk/shapes:define-output update-channel-read-marker-response
                                 common-lisp:nil
                                 ((channel-arn :target-type chime-arn
                                   :member-name "ChannelArn"))
                                 (:shape-name
                                  "UpdateChannelReadMarkerResponse"))

(smithy/sdk/shapes:define-input update-channel-request common-lisp:nil
                                ((channel-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "ChannelArn"
                                  :http-label common-lisp:t)
                                 (name :target-type non-empty-resource-name
                                  :member-name "Name")
                                 (mode :target-type channel-mode :member-name
                                  "Mode")
                                 (metadata :target-type metadata :member-name
                                  "Metadata")
                                 (chime-bearer :target-type chime-arn :required
                                  common-lisp:t :member-name "ChimeBearer"
                                  :http-header "x-amz-chime-bearer"))
                                (:shape-name "UpdateChannelRequest"))

(smithy/sdk/shapes:define-output update-channel-response common-lisp:nil
                                 ((channel-arn :target-type chime-arn
                                   :member-name "ChannelArn"))
                                 (:shape-name "UpdateChannelResponse"))

(smithy/sdk/shapes:define-type url-type smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation associate-channel-flow :shape-name
                                       "AssociateChannelFlow" :input
                                       associate-channel-flow-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "PUT" :uri
                                       "/channels/{ChannelArn}/channel-flow"
                                       :code 200)

(smithy/sdk/operation:define-operation batch-create-channel-membership
                                       :shape-name
                                       "BatchCreateChannelMembership" :input
                                       batch-create-channel-membership-request
                                       :output
                                       batch-create-channel-membership-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/channels/{ChannelArn}/memberships?operation=batch-create"
                                       :code 200)

(smithy/sdk/operation:define-operation channel-flow-callback :shape-name
                                       "ChannelFlowCallback" :input
                                       channel-flow-callback-request :output
                                       channel-flow-callback-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/channels/{ChannelArn}?operation=channel-flow-callback"
                                       :code 200)

(smithy/sdk/operation:define-operation create-channel :shape-name
                                       "CreateChannel" :input
                                       create-channel-request :output
                                       create-channel-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri "/channels" :code
                                       201)

(smithy/sdk/operation:define-operation create-channel-ban :shape-name
                                       "CreateChannelBan" :input
                                       create-channel-ban-request :output
                                       create-channel-ban-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/channels/{ChannelArn}/bans" :code 201)

(smithy/sdk/operation:define-operation create-channel-flow :shape-name
                                       "CreateChannelFlow" :input
                                       create-channel-flow-request :output
                                       create-channel-flow-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri "/channel-flows"
                                       :code 201)

(smithy/sdk/operation:define-operation create-channel-membership :shape-name
                                       "CreateChannelMembership" :input
                                       create-channel-membership-request
                                       :output
                                       create-channel-membership-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        not-found-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/channels/{ChannelArn}/memberships"
                                       :code 201)

(smithy/sdk/operation:define-operation create-channel-moderator :shape-name
                                       "CreateChannelModerator" :input
                                       create-channel-moderator-request :output
                                       create-channel-moderator-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/channels/{ChannelArn}/moderators"
                                       :code 201)

(smithy/sdk/operation:define-operation delete-channel :shape-name
                                       "DeleteChannel" :input
                                       delete-channel-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "DELETE" :uri
                                       "/channels/{ChannelArn}" :code 204)

(smithy/sdk/operation:define-operation delete-channel-ban :shape-name
                                       "DeleteChannelBan" :input
                                       delete-channel-ban-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "DELETE" :uri
                                       "/channels/{ChannelArn}/bans/{MemberArn}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-channel-flow :shape-name
                                       "DeleteChannelFlow" :input
                                       delete-channel-flow-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "DELETE" :uri
                                       "/channel-flows/{ChannelFlowArn}" :code
                                       204)

(smithy/sdk/operation:define-operation delete-channel-membership :shape-name
                                       "DeleteChannelMembership" :input
                                       delete-channel-membership-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "DELETE" :uri
                                       "/channels/{ChannelArn}/memberships/{MemberArn}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-channel-message :shape-name
                                       "DeleteChannelMessage" :input
                                       delete-channel-message-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "DELETE" :uri
                                       "/channels/{ChannelArn}/messages/{MessageId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-channel-moderator :shape-name
                                       "DeleteChannelModerator" :input
                                       delete-channel-moderator-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "DELETE" :uri
                                       "/channels/{ChannelArn}/moderators/{ChannelModeratorArn}"
                                       :code 204)

(smithy/sdk/operation:define-operation
 delete-messaging-streaming-configurations :shape-name
 "DeleteMessagingStreamingConfigurations" :input
 delete-messaging-streaming-configurations-request :output common-lisp:null
 :errors
 (bad-request-exception forbidden-exception service-failure-exception
  service-unavailable-exception throttled-client-exception
  unauthorized-client-exception)
 :method "DELETE" :uri
 "/app-instances/{AppInstanceArn}/streaming-configurations" :code 204)

(smithy/sdk/operation:define-operation describe-channel :shape-name
                                       "DescribeChannel" :input
                                       describe-channel-request :output
                                       describe-channel-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/channels/{ChannelArn}" :code 200)

(smithy/sdk/operation:define-operation describe-channel-ban :shape-name
                                       "DescribeChannelBan" :input
                                       describe-channel-ban-request :output
                                       describe-channel-ban-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/channels/{ChannelArn}/bans/{MemberArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-channel-flow :shape-name
                                       "DescribeChannelFlow" :input
                                       describe-channel-flow-request :output
                                       describe-channel-flow-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/channel-flows/{ChannelFlowArn}" :code
                                       200)

(smithy/sdk/operation:define-operation describe-channel-membership :shape-name
                                       "DescribeChannelMembership" :input
                                       describe-channel-membership-request
                                       :output
                                       describe-channel-membership-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/channels/{ChannelArn}/memberships/{MemberArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation
 describe-channel-membership-for-app-instance-user :shape-name
 "DescribeChannelMembershipForAppInstanceUser" :input
 describe-channel-membership-for-app-instance-user-request :output
 describe-channel-membership-for-app-instance-user-response :errors
 (bad-request-exception forbidden-exception service-failure-exception
  service-unavailable-exception throttled-client-exception
  unauthorized-client-exception)
 :method "GET" :uri "/channels/{ChannelArn}?scope=app-instance-user-membership"
 :code 200)

(smithy/sdk/operation:define-operation
 describe-channel-moderated-by-app-instance-user :shape-name
 "DescribeChannelModeratedByAppInstanceUser" :input
 describe-channel-moderated-by-app-instance-user-request :output
 describe-channel-moderated-by-app-instance-user-response :errors
 (bad-request-exception forbidden-exception service-failure-exception
  service-unavailable-exception throttled-client-exception
  unauthorized-client-exception)
 :method "GET" :uri
 "/channels/{ChannelArn}?scope=app-instance-user-moderated-channel" :code 200)

(smithy/sdk/operation:define-operation describe-channel-moderator :shape-name
                                       "DescribeChannelModerator" :input
                                       describe-channel-moderator-request
                                       :output
                                       describe-channel-moderator-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/channels/{ChannelArn}/moderators/{ChannelModeratorArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation disassociate-channel-flow :shape-name
                                       "DisassociateChannelFlow" :input
                                       disassociate-channel-flow-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "DELETE" :uri
                                       "/channels/{ChannelArn}/channel-flow/{ChannelFlowArn}"
                                       :code 204)

(smithy/sdk/operation:define-operation get-channel-membership-preferences
                                       :shape-name
                                       "GetChannelMembershipPreferences" :input
                                       get-channel-membership-preferences-request
                                       :output
                                       get-channel-membership-preferences-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/channels/{ChannelArn}/memberships/{MemberArn}/preferences"
                                       :code 200)

(smithy/sdk/operation:define-operation get-channel-message :shape-name
                                       "GetChannelMessage" :input
                                       get-channel-message-request :output
                                       get-channel-message-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/channels/{ChannelArn}/messages/{MessageId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-channel-message-status :shape-name
                                       "GetChannelMessageStatus" :input
                                       get-channel-message-status-request
                                       :output
                                       get-channel-message-status-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/channels/{ChannelArn}/messages/{MessageId}?scope=message-status"
                                       :code 200)

(smithy/sdk/operation:define-operation get-messaging-session-endpoint
                                       :shape-name
                                       "GetMessagingSessionEndpoint" :input
                                       get-messaging-session-endpoint-request
                                       :output
                                       get-messaging-session-endpoint-response
                                       :errors
                                       (forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/endpoints/messaging-session" :code 200)

(smithy/sdk/operation:define-operation get-messaging-streaming-configurations
                                       :shape-name
                                       "GetMessagingStreamingConfigurations"
                                       :input
                                       get-messaging-streaming-configurations-request
                                       :output
                                       get-messaging-streaming-configurations-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/app-instances/{AppInstanceArn}/streaming-configurations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-channel-bans :shape-name
                                       "ListChannelBans" :input
                                       list-channel-bans-request :output
                                       list-channel-bans-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/channels/{ChannelArn}/bans" :code 200)

(smithy/sdk/operation:define-operation list-channel-flows :shape-name
                                       "ListChannelFlows" :input
                                       list-channel-flows-request :output
                                       list-channel-flows-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri "/channel-flows"
                                       :code 200)

(smithy/sdk/operation:define-operation list-channel-memberships :shape-name
                                       "ListChannelMemberships" :input
                                       list-channel-memberships-request :output
                                       list-channel-memberships-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/channels/{ChannelArn}/memberships"
                                       :code 200)

(smithy/sdk/operation:define-operation
 list-channel-memberships-for-app-instance-user :shape-name
 "ListChannelMembershipsForAppInstanceUser" :input
 list-channel-memberships-for-app-instance-user-request :output
 list-channel-memberships-for-app-instance-user-response :errors
 (bad-request-exception forbidden-exception service-failure-exception
  service-unavailable-exception throttled-client-exception
  unauthorized-client-exception)
 :method "GET" :uri "/channels?scope=app-instance-user-memberships" :code 200)

(smithy/sdk/operation:define-operation list-channel-messages :shape-name
                                       "ListChannelMessages" :input
                                       list-channel-messages-request :output
                                       list-channel-messages-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/channels/{ChannelArn}/messages" :code
                                       200)

(smithy/sdk/operation:define-operation list-channel-moderators :shape-name
                                       "ListChannelModerators" :input
                                       list-channel-moderators-request :output
                                       list-channel-moderators-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/channels/{ChannelArn}/moderators"
                                       :code 200)

(smithy/sdk/operation:define-operation list-channels :shape-name "ListChannels"
                                       :input list-channels-request :output
                                       list-channels-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri "/channels" :code 200)

(smithy/sdk/operation:define-operation
 list-channels-associated-with-channel-flow :shape-name
 "ListChannelsAssociatedWithChannelFlow" :input
 list-channels-associated-with-channel-flow-request :output
 list-channels-associated-with-channel-flow-response :errors
 (bad-request-exception forbidden-exception service-failure-exception
  service-unavailable-exception throttled-client-exception
  unauthorized-client-exception)
 :method "GET" :uri "/channels?scope=channel-flow-associations" :code 200)

(smithy/sdk/operation:define-operation
 list-channels-moderated-by-app-instance-user :shape-name
 "ListChannelsModeratedByAppInstanceUser" :input
 list-channels-moderated-by-app-instance-user-request :output
 list-channels-moderated-by-app-instance-user-response :errors
 (bad-request-exception forbidden-exception service-failure-exception
  service-unavailable-exception throttled-client-exception
  unauthorized-client-exception)
 :method "GET" :uri "/channels?scope=app-instance-user-moderated-channels"
 :code 200)

(smithy/sdk/operation:define-operation list-sub-channels :shape-name
                                       "ListSubChannels" :input
                                       list-sub-channels-request :output
                                       list-sub-channels-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/channels/{ChannelArn}/subchannels"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri "/tags" :code 200)

(smithy/sdk/operation:define-operation put-channel-expiration-settings
                                       :shape-name
                                       "PutChannelExpirationSettings" :input
                                       put-channel-expiration-settings-request
                                       :output
                                       put-channel-expiration-settings-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "PUT" :uri
                                       "/channels/{ChannelArn}/expiration-settings"
                                       :code 200)

(smithy/sdk/operation:define-operation put-channel-membership-preferences
                                       :shape-name
                                       "PutChannelMembershipPreferences" :input
                                       put-channel-membership-preferences-request
                                       :output
                                       put-channel-membership-preferences-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "PUT" :uri
                                       "/channels/{ChannelArn}/memberships/{MemberArn}/preferences"
                                       :code 200)

(smithy/sdk/operation:define-operation put-messaging-streaming-configurations
                                       :shape-name
                                       "PutMessagingStreamingConfigurations"
                                       :input
                                       put-messaging-streaming-configurations-request
                                       :output
                                       put-messaging-streaming-configurations-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "PUT" :uri
                                       "/app-instances/{AppInstanceArn}/streaming-configurations"
                                       :code 200)

(smithy/sdk/operation:define-operation redact-channel-message :shape-name
                                       "RedactChannelMessage" :input
                                       redact-channel-message-request :output
                                       redact-channel-message-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/channels/{ChannelArn}/messages/{MessageId}?operation=redact"
                                       :code 200)

(smithy/sdk/operation:define-operation search-channels :shape-name
                                       "SearchChannels" :input
                                       search-channels-request :output
                                       search-channels-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/channels?operation=search" :code 200)

(smithy/sdk/operation:define-operation send-channel-message :shape-name
                                       "SendChannelMessage" :input
                                       send-channel-message-request :output
                                       send-channel-message-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/channels/{ChannelArn}/messages" :code
                                       201)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/tags?operation=tag-resource" :code 204)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/tags?operation=untag-resource" :code
                                       204)

(smithy/sdk/operation:define-operation update-channel :shape-name
                                       "UpdateChannel" :input
                                       update-channel-request :output
                                       update-channel-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "PUT" :uri
                                       "/channels/{ChannelArn}" :code 200)

(smithy/sdk/operation:define-operation update-channel-flow :shape-name
                                       "UpdateChannelFlow" :input
                                       update-channel-flow-request :output
                                       update-channel-flow-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "PUT" :uri
                                       "/channel-flows/{ChannelFlowArn}" :code
                                       200)

(smithy/sdk/operation:define-operation update-channel-message :shape-name
                                       "UpdateChannelMessage" :input
                                       update-channel-message-request :output
                                       update-channel-message-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "PUT" :uri
                                       "/channels/{ChannelArn}/messages/{MessageId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-channel-read-marker :shape-name
                                       "UpdateChannelReadMarker" :input
                                       update-channel-read-marker-request
                                       :output
                                       update-channel-read-marker-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "PUT" :uri
                                       "/channels/{ChannelArn}/readMarker"
                                       :code 200)
