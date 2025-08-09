(uiop/package:define-package #:pira/chime (:use)
                             (:export #:account #:account-list #:account-name
                              #:account-settings #:account-status
                              #:account-type #:alexa-for-business-metadata
                              #:alpha2country-code
                              #:associate-phone-number-with-user
                              #:associate-signin-delegate-groups-with-account
                              #:batch-create-room-membership
                              #:batch-delete-phone-number #:batch-suspend-user
                              #:batch-unsuspend-user
                              #:batch-update-phone-number #:batch-update-user
                              #:boolean #:bot #:bot-list #:bot-type
                              #:business-calling-settings #:calling-name
                              #:calling-name-status #:client-request-token
                              #:conversation-retention-settings
                              #:create-account #:create-bot
                              #:create-meeting-dial-out
                              #:create-phone-number-order #:create-room
                              #:create-room-membership #:create-user
                              #:delete-account #:delete-events-configuration
                              #:delete-phone-number #:delete-room
                              #:delete-room-membership
                              #:disassociate-phone-number-from-user
                              #:disassociate-signin-delegate-groups-from-account
                              #:e164phone-number #:e164phone-number-list
                              #:email-address #:email-status #:error-code
                              #:events-configuration #:get-account
                              #:get-account-settings #:get-bot
                              #:get-events-configuration #:get-global-settings
                              #:get-phone-number #:get-phone-number-order
                              #:get-phone-number-settings
                              #:get-retention-settings #:get-room #:get-user
                              #:get-user-settings #:guid-string #:invite
                              #:invite-list #:invite-status #:invite-users
                              #:iso8601timestamp #:join-token-string #:license
                              #:license-list #:list-accounts #:list-bots
                              #:list-phone-number-orders #:list-phone-numbers
                              #:list-room-memberships #:list-rooms
                              #:list-supported-phone-number-countries
                              #:list-users #:logout-user #:member
                              #:member-error #:member-error-list #:member-type
                              #:membership-item #:membership-item-list
                              #:non-empty-string #:non-empty-string-list
                              #:nullable-boolean #:ordered-phone-number
                              #:ordered-phone-number-list
                              #:ordered-phone-number-status #:phone-number
                              #:phone-number-association
                              #:phone-number-association-list
                              #:phone-number-association-name
                              #:phone-number-capabilities
                              #:phone-number-countries-list
                              #:phone-number-country #:phone-number-error
                              #:phone-number-error-list #:phone-number-list
                              #:phone-number-max-results #:phone-number-order
                              #:phone-number-order-list
                              #:phone-number-order-status
                              #:phone-number-product-type #:phone-number-status
                              #:phone-number-type #:phone-number-type-list
                              #:profile-service-max-results
                              #:put-events-configuration
                              #:put-retention-settings
                              #:redact-conversation-message
                              #:redact-room-message #:regenerate-security-token
                              #:registration-status #:reset-personal-pin
                              #:restore-phone-number #:result-max
                              #:retention-days #:retention-settings #:room
                              #:room-list #:room-membership
                              #:room-membership-list #:room-membership-role
                              #:room-retention-settings
                              #:search-available-phone-numbers
                              #:sensitive-string #:signin-delegate-group
                              #:signin-delegate-group-list #:string
                              #:telephony-settings #:toll-free-prefix
                              #:ucbuzz-console-service #:update-account
                              #:update-account-settings #:update-bot
                              #:update-global-settings #:update-phone-number
                              #:update-phone-number-request-item
                              #:update-phone-number-request-item-list
                              #:update-phone-number-settings #:update-room
                              #:update-room-membership #:update-user
                              #:update-user-request-item
                              #:update-user-request-item-list
                              #:update-user-settings #:user #:user-email-list
                              #:user-error #:user-error-list #:user-id-list
                              #:user-list #:user-settings #:user-type
                              #:voice-connector-settings))
(common-lisp:in-package #:pira/chime)

(smithy/sdk/service:define-service ucbuzz-console-service :shape-name
                                   "UCBuzzConsoleService" :version "2018-05-01"
                                   :title "Amazon Chime" :traits
                                   '(("aws.api#service" ("sdkId" . "Chime")
                                      ("arnNamespace" . "chime")
                                      ("cloudFormationName" . "Chime")
                                      ("cloudTrailEventSource"
                                       . "chime.amazonaws.com")
                                      ("endpointPrefix" . "chime"))
                                     ("aws.auth#sigv4" ("name" . "chime"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure account common-lisp:nil
                                    ((aws-account-id :target-type string
                                      :required common-lisp:t :member-name
                                      "AwsAccountId")
                                     (account-id :target-type string :required
                                      common-lisp:t :member-name "AccountId")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (account-type :target-type account-type
                                      :member-name "AccountType")
                                     (created-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "CreatedTimestamp")
                                     (default-license :target-type license
                                      :member-name "DefaultLicense")
                                     (supported-licenses :target-type
                                      license-list :member-name
                                      "SupportedLicenses")
                                     (account-status :target-type
                                      account-status :member-name
                                      "AccountStatus")
                                     (signin-delegate-groups :target-type
                                      signin-delegate-group-list :member-name
                                      "SigninDelegateGroups"))
                                    (:shape-name "Account"))

(smithy/sdk/shapes:define-list account-list :member account)

(smithy/sdk/shapes:define-type account-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure account-settings common-lisp:nil
                                    ((disable-remote-control :target-type
                                      boolean :member-name
                                      "DisableRemoteControl")
                                     (enable-dial-out :target-type boolean
                                      :member-name "EnableDialOut"))
                                    (:shape-name "AccountSettings"))

(smithy/sdk/shapes:define-enum account-status
    common-lisp:nil
  (:suspended "Suspended")
  (:active "Active"))

(smithy/sdk/shapes:define-enum account-type
    common-lisp:nil
  (:team "Team")
  (:enterprise-directory "EnterpriseDirectory")
  (:enterprise-lwa "EnterpriseLWA")
  (:enterprise-oidc "EnterpriseOIDC"))

(smithy/sdk/shapes:define-structure alexa-for-business-metadata common-lisp:nil
                                    ((is-alexa-for-business-enabled
                                      :target-type boolean :member-name
                                      "IsAlexaForBusinessEnabled")
                                     (alexa-for-business-room-arn :target-type
                                      sensitive-string :member-name
                                      "AlexaForBusinessRoomArn"))
                                    (:shape-name "AlexaForBusinessMetadata"))

(smithy/sdk/shapes:define-type alpha2country-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input associate-phone-number-with-user-request
                                common-lisp:nil
                                ((account-id :target-type string :required
                                  common-lisp:t :member-name "AccountId"
                                  :http-label common-lisp:t)
                                 (user-id :target-type string :required
                                  common-lisp:t :member-name "UserId"
                                  :http-label common-lisp:t)
                                 (e164phone-number :target-type
                                  e164phone-number :required common-lisp:t
                                  :member-name "E164PhoneNumber"))
                                (:shape-name
                                 "AssociatePhoneNumberWithUserRequest"))

(smithy/sdk/shapes:define-output associate-phone-number-with-user-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "AssociatePhoneNumberWithUserResponse"))

(smithy/sdk/shapes:define-input
 associate-signin-delegate-groups-with-account-request common-lisp:nil
 ((account-id :target-type non-empty-string :required common-lisp:t
   :member-name "AccountId" :http-label common-lisp:t)
  (signin-delegate-groups :target-type signin-delegate-group-list :required
   common-lisp:t :member-name "SigninDelegateGroups"))
 (:shape-name "AssociateSigninDelegateGroupsWithAccountRequest"))

(smithy/sdk/shapes:define-output
 associate-signin-delegate-groups-with-account-response common-lisp:nil
 common-lisp:nil
 (:shape-name "AssociateSigninDelegateGroupsWithAccountResponse"))

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input batch-create-room-membership-request
                                common-lisp:nil
                                ((account-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "AccountId" :http-label common-lisp:t)
                                 (room-id :target-type non-empty-string
                                  :required common-lisp:t :member-name "RoomId"
                                  :http-label common-lisp:t)
                                 (membership-item-list :target-type
                                  membership-item-list :required common-lisp:t
                                  :member-name "MembershipItemList"))
                                (:shape-name
                                 "BatchCreateRoomMembershipRequest"))

(smithy/sdk/shapes:define-output batch-create-room-membership-response
                                 common-lisp:nil
                                 ((errors :target-type member-error-list
                                   :member-name "Errors"))
                                 (:shape-name
                                  "BatchCreateRoomMembershipResponse"))

(smithy/sdk/shapes:define-input batch-delete-phone-number-request
                                common-lisp:nil
                                ((phone-number-ids :target-type
                                  non-empty-string-list :required common-lisp:t
                                  :member-name "PhoneNumberIds"))
                                (:shape-name "BatchDeletePhoneNumberRequest"))

(smithy/sdk/shapes:define-output batch-delete-phone-number-response
                                 common-lisp:nil
                                 ((phone-number-errors :target-type
                                   phone-number-error-list :member-name
                                   "PhoneNumberErrors"))
                                 (:shape-name "BatchDeletePhoneNumberResponse"))

(smithy/sdk/shapes:define-input batch-suspend-user-request common-lisp:nil
                                ((account-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "AccountId" :http-label common-lisp:t)
                                 (user-id-list :target-type user-id-list
                                  :required common-lisp:t :member-name
                                  "UserIdList"))
                                (:shape-name "BatchSuspendUserRequest"))

(smithy/sdk/shapes:define-output batch-suspend-user-response common-lisp:nil
                                 ((user-errors :target-type user-error-list
                                   :member-name "UserErrors"))
                                 (:shape-name "BatchSuspendUserResponse"))

(smithy/sdk/shapes:define-input batch-unsuspend-user-request common-lisp:nil
                                ((account-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "AccountId" :http-label common-lisp:t)
                                 (user-id-list :target-type user-id-list
                                  :required common-lisp:t :member-name
                                  "UserIdList"))
                                (:shape-name "BatchUnsuspendUserRequest"))

(smithy/sdk/shapes:define-output batch-unsuspend-user-response common-lisp:nil
                                 ((user-errors :target-type user-error-list
                                   :member-name "UserErrors"))
                                 (:shape-name "BatchUnsuspendUserResponse"))

(smithy/sdk/shapes:define-input batch-update-phone-number-request
                                common-lisp:nil
                                ((update-phone-number-request-items
                                  :target-type
                                  update-phone-number-request-item-list
                                  :required common-lisp:t :member-name
                                  "UpdatePhoneNumberRequestItems"))
                                (:shape-name "BatchUpdatePhoneNumberRequest"))

(smithy/sdk/shapes:define-output batch-update-phone-number-response
                                 common-lisp:nil
                                 ((phone-number-errors :target-type
                                   phone-number-error-list :member-name
                                   "PhoneNumberErrors"))
                                 (:shape-name "BatchUpdatePhoneNumberResponse"))

(smithy/sdk/shapes:define-input batch-update-user-request common-lisp:nil
                                ((account-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "AccountId" :http-label common-lisp:t)
                                 (update-user-request-items :target-type
                                  update-user-request-item-list :required
                                  common-lisp:t :member-name
                                  "UpdateUserRequestItems"))
                                (:shape-name "BatchUpdateUserRequest"))

(smithy/sdk/shapes:define-output batch-update-user-response common-lisp:nil
                                 ((user-errors :target-type user-error-list
                                   :member-name "UserErrors"))
                                 (:shape-name "BatchUpdateUserResponse"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure bot common-lisp:nil
                                    ((bot-id :target-type string :member-name
                                      "BotId")
                                     (user-id :target-type string :member-name
                                      "UserId")
                                     (display-name :target-type
                                      sensitive-string :member-name
                                      "DisplayName")
                                     (bot-type :target-type bot-type
                                      :member-name "BotType")
                                     (disabled :target-type nullable-boolean
                                      :member-name "Disabled")
                                     (created-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "CreatedTimestamp")
                                     (updated-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "UpdatedTimestamp")
                                     (bot-email :target-type sensitive-string
                                      :member-name "BotEmail")
                                     (security-token :target-type
                                      sensitive-string :member-name
                                      "SecurityToken"))
                                    (:shape-name "Bot"))

(smithy/sdk/shapes:define-list bot-list :member bot)

(smithy/sdk/shapes:define-enum bot-type
    common-lisp:nil
  (:chat-bot "ChatBot"))

(smithy/sdk/shapes:define-structure business-calling-settings common-lisp:nil
                                    ((cdr-bucket :target-type string
                                      :member-name "CdrBucket"))
                                    (:shape-name "BusinessCallingSettings"))

(smithy/sdk/shapes:define-type calling-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum calling-name-status
    common-lisp:nil
  (:unassigned "Unassigned")
  (:update-in-progress "UpdateInProgress")
  (:update-succeeded "UpdateSucceeded")
  (:update-failed "UpdateFailed"))

(smithy/sdk/shapes:define-type client-request-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure conversation-retention-settings
                                    common-lisp:nil
                                    ((retention-days :target-type
                                      retention-days :member-name
                                      "RetentionDays"))
                                    (:shape-name
                                     "ConversationRetentionSettings"))

(smithy/sdk/shapes:define-input create-account-request common-lisp:nil
                                ((name :target-type account-name :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "CreateAccountRequest"))

(smithy/sdk/shapes:define-output create-account-response common-lisp:nil
                                 ((account :target-type account :member-name
                                   "Account"))
                                 (:shape-name "CreateAccountResponse"))

(smithy/sdk/shapes:define-input create-bot-request common-lisp:nil
                                ((account-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "AccountId" :http-label common-lisp:t)
                                 (display-name :target-type sensitive-string
                                  :required common-lisp:t :member-name
                                  "DisplayName")
                                 (domain :target-type non-empty-string
                                  :member-name "Domain"))
                                (:shape-name "CreateBotRequest"))

(smithy/sdk/shapes:define-output create-bot-response common-lisp:nil
                                 ((bot :target-type bot :member-name "Bot"))
                                 (:shape-name "CreateBotResponse"))

(smithy/sdk/shapes:define-input create-meeting-dial-out-request common-lisp:nil
                                ((meeting-id :target-type guid-string :required
                                  common-lisp:t :member-name "MeetingId"
                                  :http-label common-lisp:t)
                                 (from-phone-number :target-type
                                  e164phone-number :required common-lisp:t
                                  :member-name "FromPhoneNumber")
                                 (to-phone-number :target-type e164phone-number
                                  :required common-lisp:t :member-name
                                  "ToPhoneNumber")
                                 (join-token :target-type join-token-string
                                  :required common-lisp:t :member-name
                                  "JoinToken"))
                                (:shape-name "CreateMeetingDialOutRequest"))

(smithy/sdk/shapes:define-output create-meeting-dial-out-response
                                 common-lisp:nil
                                 ((transaction-id :target-type guid-string
                                   :member-name "TransactionId"))
                                 (:shape-name "CreateMeetingDialOutResponse"))

(smithy/sdk/shapes:define-input create-phone-number-order-request
                                common-lisp:nil
                                ((product-type :target-type
                                  phone-number-product-type :required
                                  common-lisp:t :member-name "ProductType")
                                 (e164phone-numbers :target-type
                                  e164phone-number-list :required common-lisp:t
                                  :member-name "E164PhoneNumbers"))
                                (:shape-name "CreatePhoneNumberOrderRequest"))

(smithy/sdk/shapes:define-output create-phone-number-order-response
                                 common-lisp:nil
                                 ((phone-number-order :target-type
                                   phone-number-order :member-name
                                   "PhoneNumberOrder"))
                                 (:shape-name "CreatePhoneNumberOrderResponse"))

(smithy/sdk/shapes:define-input create-room-membership-request common-lisp:nil
                                ((account-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "AccountId" :http-label common-lisp:t)
                                 (room-id :target-type non-empty-string
                                  :required common-lisp:t :member-name "RoomId"
                                  :http-label common-lisp:t)
                                 (member-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "MemberId")
                                 (role :target-type room-membership-role
                                  :member-name "Role"))
                                (:shape-name "CreateRoomMembershipRequest"))

(smithy/sdk/shapes:define-output create-room-membership-response
                                 common-lisp:nil
                                 ((room-membership :target-type room-membership
                                   :member-name "RoomMembership"))
                                 (:shape-name "CreateRoomMembershipResponse"))

(smithy/sdk/shapes:define-input create-room-request common-lisp:nil
                                ((account-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "AccountId" :http-label common-lisp:t)
                                 (name :target-type sensitive-string :required
                                  common-lisp:t :member-name "Name")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken"))
                                (:shape-name "CreateRoomRequest"))

(smithy/sdk/shapes:define-output create-room-response common-lisp:nil
                                 ((room :target-type room :member-name "Room"))
                                 (:shape-name "CreateRoomResponse"))

(smithy/sdk/shapes:define-input create-user-request common-lisp:nil
                                ((account-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "AccountId" :http-label common-lisp:t)
                                 (username :target-type string :member-name
                                  "Username")
                                 (email :target-type email-address :member-name
                                  "Email")
                                 (user-type :target-type user-type :member-name
                                  "UserType"))
                                (:shape-name "CreateUserRequest"))

(smithy/sdk/shapes:define-output create-user-response common-lisp:nil
                                 ((user :target-type user :member-name "User"))
                                 (:shape-name "CreateUserResponse"))

(smithy/sdk/shapes:define-input delete-account-request common-lisp:nil
                                ((account-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "AccountId" :http-label common-lisp:t))
                                (:shape-name "DeleteAccountRequest"))

(smithy/sdk/shapes:define-output delete-account-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteAccountResponse"))

(smithy/sdk/shapes:define-input delete-events-configuration-request
                                common-lisp:nil
                                ((account-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "AccountId" :http-label common-lisp:t)
                                 (bot-id :target-type non-empty-string
                                  :required common-lisp:t :member-name "BotId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteEventsConfigurationRequest"))

(smithy/sdk/shapes:define-input delete-phone-number-request common-lisp:nil
                                ((phone-number-id :target-type string :required
                                  common-lisp:t :member-name "PhoneNumberId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeletePhoneNumberRequest"))

(smithy/sdk/shapes:define-input delete-room-membership-request common-lisp:nil
                                ((account-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "AccountId" :http-label common-lisp:t)
                                 (room-id :target-type non-empty-string
                                  :required common-lisp:t :member-name "RoomId"
                                  :http-label common-lisp:t)
                                 (member-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "MemberId" :http-label common-lisp:t))
                                (:shape-name "DeleteRoomMembershipRequest"))

(smithy/sdk/shapes:define-input delete-room-request common-lisp:nil
                                ((account-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "AccountId" :http-label common-lisp:t)
                                 (room-id :target-type non-empty-string
                                  :required common-lisp:t :member-name "RoomId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteRoomRequest"))

(smithy/sdk/shapes:define-input disassociate-phone-number-from-user-request
                                common-lisp:nil
                                ((account-id :target-type string :required
                                  common-lisp:t :member-name "AccountId"
                                  :http-label common-lisp:t)
                                 (user-id :target-type string :required
                                  common-lisp:t :member-name "UserId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DisassociatePhoneNumberFromUserRequest"))

(smithy/sdk/shapes:define-output disassociate-phone-number-from-user-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisassociatePhoneNumberFromUserResponse"))

(smithy/sdk/shapes:define-input
 disassociate-signin-delegate-groups-from-account-request common-lisp:nil
 ((account-id :target-type non-empty-string :required common-lisp:t
   :member-name "AccountId" :http-label common-lisp:t)
  (group-names :target-type non-empty-string-list :required common-lisp:t
   :member-name "GroupNames"))
 (:shape-name "DisassociateSigninDelegateGroupsFromAccountRequest"))

(smithy/sdk/shapes:define-output
 disassociate-signin-delegate-groups-from-account-response common-lisp:nil
 common-lisp:nil
 (:shape-name "DisassociateSigninDelegateGroupsFromAccountResponse"))

(smithy/sdk/shapes:define-type e164phone-number smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list e164phone-number-list :member e164phone-number)

(smithy/sdk/shapes:define-type email-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum email-status
    common-lisp:nil
  (:not-sent "NotSent")
  (:sent "Sent")
  (:failed "Failed"))

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

(smithy/sdk/shapes:define-structure events-configuration common-lisp:nil
                                    ((bot-id :target-type string :member-name
                                      "BotId")
                                     (outbound-events-httpsendpoint
                                      :target-type sensitive-string
                                      :member-name
                                      "OutboundEventsHTTPSEndpoint")
                                     (lambda-function-arn :target-type
                                      sensitive-string :member-name
                                      "LambdaFunctionArn"))
                                    (:shape-name "EventsConfiguration"))

(smithy/sdk/shapes:define-error forbidden-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ForbiddenException")
                                (:error-code 403))

(smithy/sdk/shapes:define-input get-account-request common-lisp:nil
                                ((account-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "AccountId" :http-label common-lisp:t))
                                (:shape-name "GetAccountRequest"))

(smithy/sdk/shapes:define-output get-account-response common-lisp:nil
                                 ((account :target-type account :member-name
                                   "Account"))
                                 (:shape-name "GetAccountResponse"))

(smithy/sdk/shapes:define-input get-account-settings-request common-lisp:nil
                                ((account-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "AccountId" :http-label common-lisp:t))
                                (:shape-name "GetAccountSettingsRequest"))

(smithy/sdk/shapes:define-output get-account-settings-response common-lisp:nil
                                 ((account-settings :target-type
                                   account-settings :member-name
                                   "AccountSettings"))
                                 (:shape-name "GetAccountSettingsResponse"))

(smithy/sdk/shapes:define-input get-bot-request common-lisp:nil
                                ((account-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "AccountId" :http-label common-lisp:t)
                                 (bot-id :target-type non-empty-string
                                  :required common-lisp:t :member-name "BotId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetBotRequest"))

(smithy/sdk/shapes:define-output get-bot-response common-lisp:nil
                                 ((bot :target-type bot :member-name "Bot"))
                                 (:shape-name "GetBotResponse"))

(smithy/sdk/shapes:define-input get-events-configuration-request
                                common-lisp:nil
                                ((account-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "AccountId" :http-label common-lisp:t)
                                 (bot-id :target-type non-empty-string
                                  :required common-lisp:t :member-name "BotId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetEventsConfigurationRequest"))

(smithy/sdk/shapes:define-output get-events-configuration-response
                                 common-lisp:nil
                                 ((events-configuration :target-type
                                   events-configuration :member-name
                                   "EventsConfiguration"))
                                 (:shape-name "GetEventsConfigurationResponse"))

(smithy/sdk/shapes:define-output get-global-settings-response common-lisp:nil
                                 ((business-calling :target-type
                                   business-calling-settings :member-name
                                   "BusinessCalling")
                                  (voice-connector :target-type
                                   voice-connector-settings :member-name
                                   "VoiceConnector"))
                                 (:shape-name "GetGlobalSettingsResponse"))

(smithy/sdk/shapes:define-input get-phone-number-order-request common-lisp:nil
                                ((phone-number-order-id :target-type
                                  guid-string :required common-lisp:t
                                  :member-name "PhoneNumberOrderId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetPhoneNumberOrderRequest"))

(smithy/sdk/shapes:define-output get-phone-number-order-response
                                 common-lisp:nil
                                 ((phone-number-order :target-type
                                   phone-number-order :member-name
                                   "PhoneNumberOrder"))
                                 (:shape-name "GetPhoneNumberOrderResponse"))

(smithy/sdk/shapes:define-input get-phone-number-request common-lisp:nil
                                ((phone-number-id :target-type string :required
                                  common-lisp:t :member-name "PhoneNumberId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetPhoneNumberRequest"))

(smithy/sdk/shapes:define-output get-phone-number-response common-lisp:nil
                                 ((phone-number :target-type phone-number
                                   :member-name "PhoneNumber"))
                                 (:shape-name "GetPhoneNumberResponse"))

(smithy/sdk/shapes:define-output get-phone-number-settings-response
                                 common-lisp:nil
                                 ((calling-name :target-type calling-name
                                   :member-name "CallingName")
                                  (calling-name-updated-timestamp :target-type
                                   iso8601timestamp :member-name
                                   "CallingNameUpdatedTimestamp"))
                                 (:shape-name "GetPhoneNumberSettingsResponse"))

(smithy/sdk/shapes:define-input get-retention-settings-request common-lisp:nil
                                ((account-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "AccountId" :http-label common-lisp:t))
                                (:shape-name "GetRetentionSettingsRequest"))

(smithy/sdk/shapes:define-output get-retention-settings-response
                                 common-lisp:nil
                                 ((retention-settings :target-type
                                   retention-settings :member-name
                                   "RetentionSettings")
                                  (initiate-deletion-timestamp :target-type
                                   iso8601timestamp :member-name
                                   "InitiateDeletionTimestamp"))
                                 (:shape-name "GetRetentionSettingsResponse"))

(smithy/sdk/shapes:define-input get-room-request common-lisp:nil
                                ((account-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "AccountId" :http-label common-lisp:t)
                                 (room-id :target-type non-empty-string
                                  :required common-lisp:t :member-name "RoomId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetRoomRequest"))

(smithy/sdk/shapes:define-output get-room-response common-lisp:nil
                                 ((room :target-type room :member-name "Room"))
                                 (:shape-name "GetRoomResponse"))

(smithy/sdk/shapes:define-input get-user-request common-lisp:nil
                                ((account-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "AccountId" :http-label common-lisp:t)
                                 (user-id :target-type non-empty-string
                                  :required common-lisp:t :member-name "UserId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetUserRequest"))

(smithy/sdk/shapes:define-output get-user-response common-lisp:nil
                                 ((user :target-type user :member-name "User"))
                                 (:shape-name "GetUserResponse"))

(smithy/sdk/shapes:define-input get-user-settings-request common-lisp:nil
                                ((account-id :target-type string :required
                                  common-lisp:t :member-name "AccountId"
                                  :http-label common-lisp:t)
                                 (user-id :target-type string :required
                                  common-lisp:t :member-name "UserId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetUserSettingsRequest"))

(smithy/sdk/shapes:define-output get-user-settings-response common-lisp:nil
                                 ((user-settings :target-type user-settings
                                   :member-name "UserSettings"))
                                 (:shape-name "GetUserSettingsResponse"))

(smithy/sdk/shapes:define-type guid-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure invite common-lisp:nil
                                    ((invite-id :target-type string
                                      :member-name "InviteId")
                                     (status :target-type invite-status
                                      :member-name "Status")
                                     (email-address :target-type email-address
                                      :member-name "EmailAddress")
                                     (email-status :target-type email-status
                                      :member-name "EmailStatus"))
                                    (:shape-name "Invite"))

(smithy/sdk/shapes:define-list invite-list :member invite)

(smithy/sdk/shapes:define-enum invite-status
    common-lisp:nil
  (:pending "Pending")
  (:accepted "Accepted")
  (:failed "Failed"))

(smithy/sdk/shapes:define-input invite-users-request common-lisp:nil
                                ((account-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "AccountId" :http-label common-lisp:t)
                                 (user-email-list :target-type user-email-list
                                  :required common-lisp:t :member-name
                                  "UserEmailList")
                                 (user-type :target-type user-type :member-name
                                  "UserType"))
                                (:shape-name "InviteUsersRequest"))

(smithy/sdk/shapes:define-output invite-users-response common-lisp:nil
                                 ((invites :target-type invite-list
                                   :member-name "Invites"))
                                 (:shape-name "InviteUsersResponse"))

(smithy/sdk/shapes:define-type iso8601timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type join-token-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum license
    common-lisp:nil
  (:basic "Basic")
  (:plus "Plus")
  (:pro "Pro")
  (:pro-trial "ProTrial"))

(smithy/sdk/shapes:define-list license-list :member license)

(smithy/sdk/shapes:define-input list-accounts-request common-lisp:nil
                                ((name :target-type account-name :member-name
                                  "Name" :http-query "name")
                                 (user-email :target-type email-address
                                  :member-name "UserEmail" :http-query
                                  "user-email")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "next-token")
                                 (max-results :target-type
                                  profile-service-max-results :member-name
                                  "MaxResults" :http-query "max-results"))
                                (:shape-name "ListAccountsRequest"))

(smithy/sdk/shapes:define-output list-accounts-response common-lisp:nil
                                 ((accounts :target-type account-list
                                   :member-name "Accounts")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListAccountsResponse"))

(smithy/sdk/shapes:define-input list-bots-request common-lisp:nil
                                ((account-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "AccountId" :http-label common-lisp:t)
                                 (max-results :target-type result-max
                                  :member-name "MaxResults" :http-query
                                  "max-results")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "next-token"))
                                (:shape-name "ListBotsRequest"))

(smithy/sdk/shapes:define-output list-bots-response common-lisp:nil
                                 ((bots :target-type bot-list :member-name
                                   "Bots")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListBotsResponse"))

(smithy/sdk/shapes:define-input list-phone-number-orders-request
                                common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "NextToken" :http-query "next-token")
                                 (max-results :target-type result-max
                                  :member-name "MaxResults" :http-query
                                  "max-results"))
                                (:shape-name "ListPhoneNumberOrdersRequest"))

(smithy/sdk/shapes:define-output list-phone-number-orders-response
                                 common-lisp:nil
                                 ((phone-number-orders :target-type
                                   phone-number-order-list :member-name
                                   "PhoneNumberOrders")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListPhoneNumberOrdersResponse"))

(smithy/sdk/shapes:define-input list-phone-numbers-request common-lisp:nil
                                ((status :target-type phone-number-status
                                  :member-name "Status" :http-query "status")
                                 (product-type :target-type
                                  phone-number-product-type :member-name
                                  "ProductType" :http-query "product-type")
                                 (filter-name :target-type
                                  phone-number-association-name :member-name
                                  "FilterName" :http-query "filter-name")
                                 (filter-value :target-type string :member-name
                                  "FilterValue" :http-query "filter-value")
                                 (max-results :target-type result-max
                                  :member-name "MaxResults" :http-query
                                  "max-results")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "next-token"))
                                (:shape-name "ListPhoneNumbersRequest"))

(smithy/sdk/shapes:define-output list-phone-numbers-response common-lisp:nil
                                 ((phone-numbers :target-type phone-number-list
                                   :member-name "PhoneNumbers")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListPhoneNumbersResponse"))

(smithy/sdk/shapes:define-input list-room-memberships-request common-lisp:nil
                                ((account-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "AccountId" :http-label common-lisp:t)
                                 (room-id :target-type non-empty-string
                                  :required common-lisp:t :member-name "RoomId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type result-max
                                  :member-name "MaxResults" :http-query
                                  "max-results")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "next-token"))
                                (:shape-name "ListRoomMembershipsRequest"))

(smithy/sdk/shapes:define-output list-room-memberships-response common-lisp:nil
                                 ((room-memberships :target-type
                                   room-membership-list :member-name
                                   "RoomMemberships")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListRoomMembershipsResponse"))

(smithy/sdk/shapes:define-input list-rooms-request common-lisp:nil
                                ((account-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "AccountId" :http-label common-lisp:t)
                                 (member-id :target-type string :member-name
                                  "MemberId" :http-query "member-id")
                                 (max-results :target-type result-max
                                  :member-name "MaxResults" :http-query
                                  "max-results")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "next-token"))
                                (:shape-name "ListRoomsRequest"))

(smithy/sdk/shapes:define-output list-rooms-response common-lisp:nil
                                 ((rooms :target-type room-list :member-name
                                   "Rooms")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListRoomsResponse"))

(smithy/sdk/shapes:define-input list-supported-phone-number-countries-request
                                common-lisp:nil
                                ((product-type :target-type
                                  phone-number-product-type :required
                                  common-lisp:t :member-name "ProductType"
                                  :http-query "product-type"))
                                (:shape-name
                                 "ListSupportedPhoneNumberCountriesRequest"))

(smithy/sdk/shapes:define-output list-supported-phone-number-countries-response
                                 common-lisp:nil
                                 ((phone-number-countries :target-type
                                   phone-number-countries-list :member-name
                                   "PhoneNumberCountries"))
                                 (:shape-name
                                  "ListSupportedPhoneNumberCountriesResponse"))

(smithy/sdk/shapes:define-input list-users-request common-lisp:nil
                                ((account-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "AccountId" :http-label common-lisp:t)
                                 (user-email :target-type email-address
                                  :member-name "UserEmail" :http-query
                                  "user-email")
                                 (user-type :target-type user-type :member-name
                                  "UserType" :http-query "user-type")
                                 (max-results :target-type
                                  profile-service-max-results :member-name
                                  "MaxResults" :http-query "max-results")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "next-token"))
                                (:shape-name "ListUsersRequest"))

(smithy/sdk/shapes:define-output list-users-response common-lisp:nil
                                 ((users :target-type user-list :member-name
                                   "Users")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListUsersResponse"))

(smithy/sdk/shapes:define-input logout-user-request common-lisp:nil
                                ((account-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "AccountId" :http-label common-lisp:t)
                                 (user-id :target-type non-empty-string
                                  :required common-lisp:t :member-name "UserId"
                                  :http-label common-lisp:t))
                                (:shape-name "LogoutUserRequest"))

(smithy/sdk/shapes:define-output logout-user-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "LogoutUserResponse"))

(smithy/sdk/shapes:define-structure member common-lisp:nil
                                    ((member-id :target-type non-empty-string
                                      :member-name "MemberId")
                                     (member-type :target-type member-type
                                      :member-name "MemberType")
                                     (email :target-type sensitive-string
                                      :member-name "Email")
                                     (full-name :target-type sensitive-string
                                      :member-name "FullName")
                                     (account-id :target-type non-empty-string
                                      :member-name "AccountId"))
                                    (:shape-name "Member"))

(smithy/sdk/shapes:define-structure member-error common-lisp:nil
                                    ((member-id :target-type non-empty-string
                                      :member-name "MemberId")
                                     (error-code :target-type error-code
                                      :member-name "ErrorCode")
                                     (error-message :target-type string
                                      :member-name "ErrorMessage"))
                                    (:shape-name "MemberError"))

(smithy/sdk/shapes:define-list member-error-list :member member-error)

(smithy/sdk/shapes:define-enum member-type
    common-lisp:nil
  (:user "User")
  (:bot "Bot")
  (:webhook "Webhook"))

(smithy/sdk/shapes:define-structure membership-item common-lisp:nil
                                    ((member-id :target-type non-empty-string
                                      :member-name "MemberId")
                                     (role :target-type room-membership-role
                                      :member-name "Role"))
                                    (:shape-name "MembershipItem"))

(smithy/sdk/shapes:define-list membership-item-list :member membership-item)

(smithy/sdk/shapes:define-type non-empty-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list non-empty-string-list :member string)

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "NotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type nullable-boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure ordered-phone-number common-lisp:nil
                                    ((e164phone-number :target-type
                                      e164phone-number :member-name
                                      "E164PhoneNumber")
                                     (status :target-type
                                      ordered-phone-number-status :member-name
                                      "Status"))
                                    (:shape-name "OrderedPhoneNumber"))

(smithy/sdk/shapes:define-list ordered-phone-number-list :member
                               ordered-phone-number)

(smithy/sdk/shapes:define-enum ordered-phone-number-status
    common-lisp:nil
  (:processing "Processing")
  (:acquired "Acquired")
  (:failed "Failed"))

(smithy/sdk/shapes:define-structure phone-number common-lisp:nil
                                    ((phone-number-id :target-type string
                                      :member-name "PhoneNumberId")
                                     (e164phone-number :target-type
                                      e164phone-number :member-name
                                      "E164PhoneNumber")
                                     (country :target-type alpha2country-code
                                      :member-name "Country")
                                     (type :target-type phone-number-type
                                      :member-name "Type")
                                     (product-type :target-type
                                      phone-number-product-type :member-name
                                      "ProductType")
                                     (status :target-type phone-number-status
                                      :member-name "Status")
                                     (capabilities :target-type
                                      phone-number-capabilities :member-name
                                      "Capabilities")
                                     (associations :target-type
                                      phone-number-association-list
                                      :member-name "Associations")
                                     (calling-name :target-type calling-name
                                      :member-name "CallingName")
                                     (calling-name-status :target-type
                                      calling-name-status :member-name
                                      "CallingNameStatus")
                                     (created-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "CreatedTimestamp")
                                     (updated-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "UpdatedTimestamp")
                                     (deletion-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "DeletionTimestamp"))
                                    (:shape-name "PhoneNumber"))

(smithy/sdk/shapes:define-structure phone-number-association common-lisp:nil
                                    ((value :target-type string :member-name
                                      "Value")
                                     (name :target-type
                                      phone-number-association-name
                                      :member-name "Name")
                                     (associated-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "AssociatedTimestamp"))
                                    (:shape-name "PhoneNumberAssociation"))

(smithy/sdk/shapes:define-list phone-number-association-list :member
                               phone-number-association)

(smithy/sdk/shapes:define-enum phone-number-association-name
    common-lisp:nil
  (:account-id "AccountId")
  (:user-id "UserId")
  (:voice-connector-id "VoiceConnectorId")
  (:voice-connector-group-id "VoiceConnectorGroupId")
  (:sip-rule-id "SipRuleId"))

(smithy/sdk/shapes:define-structure phone-number-capabilities common-lisp:nil
                                    ((inbound-call :target-type
                                      nullable-boolean :member-name
                                      "InboundCall")
                                     (outbound-call :target-type
                                      nullable-boolean :member-name
                                      "OutboundCall")
                                     (inbound-sms :target-type nullable-boolean
                                      :member-name "InboundSMS")
                                     (outbound-sms :target-type
                                      nullable-boolean :member-name
                                      "OutboundSMS")
                                     (inbound-mms :target-type nullable-boolean
                                      :member-name "InboundMMS")
                                     (outbound-mms :target-type
                                      nullable-boolean :member-name
                                      "OutboundMMS"))
                                    (:shape-name "PhoneNumberCapabilities"))

(smithy/sdk/shapes:define-list phone-number-countries-list :member
                               phone-number-country)

(smithy/sdk/shapes:define-structure phone-number-country common-lisp:nil
                                    ((country-code :target-type
                                      alpha2country-code :member-name
                                      "CountryCode")
                                     (supported-phone-number-types :target-type
                                      phone-number-type-list :member-name
                                      "SupportedPhoneNumberTypes"))
                                    (:shape-name "PhoneNumberCountry"))

(smithy/sdk/shapes:define-structure phone-number-error common-lisp:nil
                                    ((phone-number-id :target-type
                                      non-empty-string :member-name
                                      "PhoneNumberId")
                                     (error-code :target-type error-code
                                      :member-name "ErrorCode")
                                     (error-message :target-type string
                                      :member-name "ErrorMessage"))
                                    (:shape-name "PhoneNumberError"))

(smithy/sdk/shapes:define-list phone-number-error-list :member
                               phone-number-error)

(smithy/sdk/shapes:define-list phone-number-list :member phone-number)

(smithy/sdk/shapes:define-type phone-number-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure phone-number-order common-lisp:nil
                                    ((phone-number-order-id :target-type
                                      guid-string :member-name
                                      "PhoneNumberOrderId")
                                     (product-type :target-type
                                      phone-number-product-type :member-name
                                      "ProductType")
                                     (status :target-type
                                      phone-number-order-status :member-name
                                      "Status")
                                     (ordered-phone-numbers :target-type
                                      ordered-phone-number-list :member-name
                                      "OrderedPhoneNumbers")
                                     (created-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "CreatedTimestamp")
                                     (updated-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "UpdatedTimestamp"))
                                    (:shape-name "PhoneNumberOrder"))

(smithy/sdk/shapes:define-list phone-number-order-list :member
                               phone-number-order)

(smithy/sdk/shapes:define-enum phone-number-order-status
    common-lisp:nil
  (:processing "Processing")
  (:successful "Successful")
  (:failed "Failed")
  (:partial "Partial"))

(smithy/sdk/shapes:define-enum phone-number-product-type
    common-lisp:nil
  (:business-calling "BusinessCalling")
  (:voice-connector "VoiceConnector")
  (:sip-media-application-dial-in "SipMediaApplicationDialIn"))

(smithy/sdk/shapes:define-enum phone-number-status
    common-lisp:nil
  (:acquire-in-progress "AcquireInProgress")
  (:acquire-failed "AcquireFailed")
  (:unassigned "Unassigned")
  (:assigned "Assigned")
  (:release-in-progress "ReleaseInProgress")
  (:delete-in-progress "DeleteInProgress")
  (:release-failed "ReleaseFailed")
  (:delete-failed "DeleteFailed"))

(smithy/sdk/shapes:define-enum phone-number-type
    common-lisp:nil
  (:local "Local")
  (:toll-free "TollFree"))

(smithy/sdk/shapes:define-list phone-number-type-list :member phone-number-type)

(smithy/sdk/shapes:define-type profile-service-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input put-events-configuration-request
                                common-lisp:nil
                                ((account-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "AccountId" :http-label common-lisp:t)
                                 (bot-id :target-type non-empty-string
                                  :required common-lisp:t :member-name "BotId"
                                  :http-label common-lisp:t)
                                 (outbound-events-httpsendpoint :target-type
                                  sensitive-string :member-name
                                  "OutboundEventsHTTPSEndpoint")
                                 (lambda-function-arn :target-type
                                  sensitive-string :member-name
                                  "LambdaFunctionArn"))
                                (:shape-name "PutEventsConfigurationRequest"))

(smithy/sdk/shapes:define-output put-events-configuration-response
                                 common-lisp:nil
                                 ((events-configuration :target-type
                                   events-configuration :member-name
                                   "EventsConfiguration"))
                                 (:shape-name "PutEventsConfigurationResponse"))

(smithy/sdk/shapes:define-input put-retention-settings-request common-lisp:nil
                                ((account-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "AccountId" :http-label common-lisp:t)
                                 (retention-settings :target-type
                                  retention-settings :required common-lisp:t
                                  :member-name "RetentionSettings"))
                                (:shape-name "PutRetentionSettingsRequest"))

(smithy/sdk/shapes:define-output put-retention-settings-response
                                 common-lisp:nil
                                 ((retention-settings :target-type
                                   retention-settings :member-name
                                   "RetentionSettings")
                                  (initiate-deletion-timestamp :target-type
                                   iso8601timestamp :member-name
                                   "InitiateDeletionTimestamp"))
                                 (:shape-name "PutRetentionSettingsResponse"))

(smithy/sdk/shapes:define-input redact-conversation-message-request
                                common-lisp:nil
                                ((account-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "AccountId" :http-label common-lisp:t)
                                 (conversation-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "ConversationId" :http-label common-lisp:t)
                                 (message-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "MessageId" :http-label common-lisp:t))
                                (:shape-name
                                 "RedactConversationMessageRequest"))

(smithy/sdk/shapes:define-output redact-conversation-message-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "RedactConversationMessageResponse"))

(smithy/sdk/shapes:define-input redact-room-message-request common-lisp:nil
                                ((account-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "AccountId" :http-label common-lisp:t)
                                 (room-id :target-type non-empty-string
                                  :required common-lisp:t :member-name "RoomId"
                                  :http-label common-lisp:t)
                                 (message-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "MessageId" :http-label common-lisp:t))
                                (:shape-name "RedactRoomMessageRequest"))

(smithy/sdk/shapes:define-output redact-room-message-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "RedactRoomMessageResponse"))

(smithy/sdk/shapes:define-input regenerate-security-token-request
                                common-lisp:nil
                                ((account-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "AccountId" :http-label common-lisp:t)
                                 (bot-id :target-type non-empty-string
                                  :required common-lisp:t :member-name "BotId"
                                  :http-label common-lisp:t))
                                (:shape-name "RegenerateSecurityTokenRequest"))

(smithy/sdk/shapes:define-output regenerate-security-token-response
                                 common-lisp:nil
                                 ((bot :target-type bot :member-name "Bot"))
                                 (:shape-name
                                  "RegenerateSecurityTokenResponse"))

(smithy/sdk/shapes:define-enum registration-status
    common-lisp:nil
  (:unregistered "Unregistered")
  (:registered "Registered")
  (:suspended "Suspended"))

(smithy/sdk/shapes:define-input reset-personal-pinrequest common-lisp:nil
                                ((account-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "AccountId" :http-label common-lisp:t)
                                 (user-id :target-type non-empty-string
                                  :required common-lisp:t :member-name "UserId"
                                  :http-label common-lisp:t))
                                (:shape-name "ResetPersonalPINRequest"))

(smithy/sdk/shapes:define-output reset-personal-pinresponse common-lisp:nil
                                 ((user :target-type user :member-name "User"))
                                 (:shape-name "ResetPersonalPINResponse"))

(smithy/sdk/shapes:define-error resource-limit-exceeded-exception
                                common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ResourceLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input restore-phone-number-request common-lisp:nil
                                ((phone-number-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "PhoneNumberId" :http-label common-lisp:t))
                                (:shape-name "RestorePhoneNumberRequest"))

(smithy/sdk/shapes:define-output restore-phone-number-response common-lisp:nil
                                 ((phone-number :target-type phone-number
                                   :member-name "PhoneNumber"))
                                 (:shape-name "RestorePhoneNumberResponse"))

(smithy/sdk/shapes:define-type result-max smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type retention-days smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure retention-settings common-lisp:nil
                                    ((room-retention-settings :target-type
                                      room-retention-settings :member-name
                                      "RoomRetentionSettings")
                                     (conversation-retention-settings
                                      :target-type
                                      conversation-retention-settings
                                      :member-name
                                      "ConversationRetentionSettings"))
                                    (:shape-name "RetentionSettings"))

(smithy/sdk/shapes:define-structure room common-lisp:nil
                                    ((room-id :target-type non-empty-string
                                      :member-name "RoomId")
                                     (name :target-type sensitive-string
                                      :member-name "Name")
                                     (account-id :target-type non-empty-string
                                      :member-name "AccountId")
                                     (created-by :target-type non-empty-string
                                      :member-name "CreatedBy")
                                     (created-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "CreatedTimestamp")
                                     (updated-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "UpdatedTimestamp"))
                                    (:shape-name "Room"))

(smithy/sdk/shapes:define-list room-list :member room)

(smithy/sdk/shapes:define-structure room-membership common-lisp:nil
                                    ((room-id :target-type non-empty-string
                                      :member-name "RoomId")
                                     (member :target-type member :member-name
                                      "Member")
                                     (role :target-type room-membership-role
                                      :member-name "Role")
                                     (invited-by :target-type non-empty-string
                                      :member-name "InvitedBy")
                                     (updated-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "UpdatedTimestamp"))
                                    (:shape-name "RoomMembership"))

(smithy/sdk/shapes:define-list room-membership-list :member room-membership)

(smithy/sdk/shapes:define-enum room-membership-role
    common-lisp:nil
  (:administrator "Administrator")
  (:member "Member"))

(smithy/sdk/shapes:define-structure room-retention-settings common-lisp:nil
                                    ((retention-days :target-type
                                      retention-days :member-name
                                      "RetentionDays"))
                                    (:shape-name "RoomRetentionSettings"))

(smithy/sdk/shapes:define-input search-available-phone-numbers-request
                                common-lisp:nil
                                ((area-code :target-type string :member-name
                                  "AreaCode" :http-query "area-code")
                                 (city :target-type string :member-name "City"
                                  :http-query "city")
                                 (country :target-type alpha2country-code
                                  :member-name "Country" :http-query "country")
                                 (state :target-type string :member-name
                                  "State" :http-query "state")
                                 (toll-free-prefix :target-type
                                  toll-free-prefix :member-name
                                  "TollFreePrefix" :http-query
                                  "toll-free-prefix")
                                 (phone-number-type :target-type
                                  phone-number-type :member-name
                                  "PhoneNumberType" :http-query
                                  "phone-number-type")
                                 (max-results :target-type
                                  phone-number-max-results :member-name
                                  "MaxResults" :http-query "max-results")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "next-token"))
                                (:shape-name
                                 "SearchAvailablePhoneNumbersRequest"))

(smithy/sdk/shapes:define-output search-available-phone-numbers-response
                                 common-lisp:nil
                                 ((e164phone-numbers :target-type
                                   e164phone-number-list :member-name
                                   "E164PhoneNumbers")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "SearchAvailablePhoneNumbersResponse"))

(smithy/sdk/shapes:define-type sensitive-string smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-structure signin-delegate-group common-lisp:nil
                                    ((group-name :target-type non-empty-string
                                      :member-name "GroupName"))
                                    (:shape-name "SigninDelegateGroup"))

(smithy/sdk/shapes:define-list signin-delegate-group-list :member
                               signin-delegate-group)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure telephony-settings common-lisp:nil
                                    ((inbound-calling :target-type boolean
                                      :required common-lisp:t :member-name
                                      "InboundCalling")
                                     (outbound-calling :target-type boolean
                                      :required common-lisp:t :member-name
                                      "OutboundCalling")
                                     (sms :target-type boolean :required
                                      common-lisp:t :member-name "SMS"))
                                    (:shape-name "TelephonySettings"))

(smithy/sdk/shapes:define-error throttled-client-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ThrottledClientException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type toll-free-prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error unauthorized-client-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "UnauthorizedClientException")
                                (:error-code 401))

(smithy/sdk/shapes:define-error unprocessable-entity-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "UnprocessableEntityException")
                                (:error-code 422))

(smithy/sdk/shapes:define-input update-account-request common-lisp:nil
                                ((account-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "AccountId" :http-label common-lisp:t)
                                 (name :target-type account-name :member-name
                                  "Name")
                                 (default-license :target-type license
                                  :member-name "DefaultLicense"))
                                (:shape-name "UpdateAccountRequest"))

(smithy/sdk/shapes:define-output update-account-response common-lisp:nil
                                 ((account :target-type account :member-name
                                   "Account"))
                                 (:shape-name "UpdateAccountResponse"))

(smithy/sdk/shapes:define-input update-account-settings-request common-lisp:nil
                                ((account-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "AccountId" :http-label common-lisp:t)
                                 (account-settings :target-type
                                  account-settings :required common-lisp:t
                                  :member-name "AccountSettings"))
                                (:shape-name "UpdateAccountSettingsRequest"))

(smithy/sdk/shapes:define-output update-account-settings-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateAccountSettingsResponse"))

(smithy/sdk/shapes:define-input update-bot-request common-lisp:nil
                                ((account-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "AccountId" :http-label common-lisp:t)
                                 (bot-id :target-type non-empty-string
                                  :required common-lisp:t :member-name "BotId"
                                  :http-label common-lisp:t)
                                 (disabled :target-type nullable-boolean
                                  :member-name "Disabled"))
                                (:shape-name "UpdateBotRequest"))

(smithy/sdk/shapes:define-output update-bot-response common-lisp:nil
                                 ((bot :target-type bot :member-name "Bot"))
                                 (:shape-name "UpdateBotResponse"))

(smithy/sdk/shapes:define-input update-global-settings-request common-lisp:nil
                                ((business-calling :target-type
                                  business-calling-settings :member-name
                                  "BusinessCalling")
                                 (voice-connector :target-type
                                  voice-connector-settings :member-name
                                  "VoiceConnector"))
                                (:shape-name "UpdateGlobalSettingsRequest"))

(smithy/sdk/shapes:define-input update-phone-number-request common-lisp:nil
                                ((phone-number-id :target-type string :required
                                  common-lisp:t :member-name "PhoneNumberId"
                                  :http-label common-lisp:t)
                                 (product-type :target-type
                                  phone-number-product-type :member-name
                                  "ProductType")
                                 (calling-name :target-type calling-name
                                  :member-name "CallingName"))
                                (:shape-name "UpdatePhoneNumberRequest"))

(smithy/sdk/shapes:define-structure update-phone-number-request-item
                                    common-lisp:nil
                                    ((phone-number-id :target-type
                                      non-empty-string :required common-lisp:t
                                      :member-name "PhoneNumberId")
                                     (product-type :target-type
                                      phone-number-product-type :member-name
                                      "ProductType")
                                     (calling-name :target-type calling-name
                                      :member-name "CallingName"))
                                    (:shape-name
                                     "UpdatePhoneNumberRequestItem"))

(smithy/sdk/shapes:define-list update-phone-number-request-item-list :member
                               update-phone-number-request-item)

(smithy/sdk/shapes:define-output update-phone-number-response common-lisp:nil
                                 ((phone-number :target-type phone-number
                                   :member-name "PhoneNumber"))
                                 (:shape-name "UpdatePhoneNumberResponse"))

(smithy/sdk/shapes:define-input update-phone-number-settings-request
                                common-lisp:nil
                                ((calling-name :target-type calling-name
                                  :required common-lisp:t :member-name
                                  "CallingName"))
                                (:shape-name
                                 "UpdatePhoneNumberSettingsRequest"))

(smithy/sdk/shapes:define-input update-room-membership-request common-lisp:nil
                                ((account-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "AccountId" :http-label common-lisp:t)
                                 (room-id :target-type non-empty-string
                                  :required common-lisp:t :member-name "RoomId"
                                  :http-label common-lisp:t)
                                 (member-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "MemberId" :http-label common-lisp:t)
                                 (role :target-type room-membership-role
                                  :member-name "Role"))
                                (:shape-name "UpdateRoomMembershipRequest"))

(smithy/sdk/shapes:define-output update-room-membership-response
                                 common-lisp:nil
                                 ((room-membership :target-type room-membership
                                   :member-name "RoomMembership"))
                                 (:shape-name "UpdateRoomMembershipResponse"))

(smithy/sdk/shapes:define-input update-room-request common-lisp:nil
                                ((account-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "AccountId" :http-label common-lisp:t)
                                 (room-id :target-type non-empty-string
                                  :required common-lisp:t :member-name "RoomId"
                                  :http-label common-lisp:t)
                                 (name :target-type sensitive-string
                                  :member-name "Name"))
                                (:shape-name "UpdateRoomRequest"))

(smithy/sdk/shapes:define-output update-room-response common-lisp:nil
                                 ((room :target-type room :member-name "Room"))
                                 (:shape-name "UpdateRoomResponse"))

(smithy/sdk/shapes:define-input update-user-request common-lisp:nil
                                ((account-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "AccountId" :http-label common-lisp:t)
                                 (user-id :target-type non-empty-string
                                  :required common-lisp:t :member-name "UserId"
                                  :http-label common-lisp:t)
                                 (license-type :target-type license
                                  :member-name "LicenseType")
                                 (user-type :target-type user-type :member-name
                                  "UserType")
                                 (alexa-for-business-metadata :target-type
                                  alexa-for-business-metadata :member-name
                                  "AlexaForBusinessMetadata"))
                                (:shape-name "UpdateUserRequest"))

(smithy/sdk/shapes:define-structure update-user-request-item common-lisp:nil
                                    ((user-id :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "UserId")
                                     (license-type :target-type license
                                      :member-name "LicenseType")
                                     (user-type :target-type user-type
                                      :member-name "UserType")
                                     (alexa-for-business-metadata :target-type
                                      alexa-for-business-metadata :member-name
                                      "AlexaForBusinessMetadata"))
                                    (:shape-name "UpdateUserRequestItem"))

(smithy/sdk/shapes:define-list update-user-request-item-list :member
                               update-user-request-item)

(smithy/sdk/shapes:define-output update-user-response common-lisp:nil
                                 ((user :target-type user :member-name "User"))
                                 (:shape-name "UpdateUserResponse"))

(smithy/sdk/shapes:define-input update-user-settings-request common-lisp:nil
                                ((account-id :target-type string :required
                                  common-lisp:t :member-name "AccountId"
                                  :http-label common-lisp:t)
                                 (user-id :target-type string :required
                                  common-lisp:t :member-name "UserId"
                                  :http-label common-lisp:t)
                                 (user-settings :target-type user-settings
                                  :required common-lisp:t :member-name
                                  "UserSettings"))
                                (:shape-name "UpdateUserSettingsRequest"))

(smithy/sdk/shapes:define-structure user common-lisp:nil
                                    ((user-id :target-type string :required
                                      common-lisp:t :member-name "UserId")
                                     (account-id :target-type string
                                      :member-name "AccountId")
                                     (primary-email :target-type email-address
                                      :member-name "PrimaryEmail")
                                     (primary-provisioned-number :target-type
                                      sensitive-string :member-name
                                      "PrimaryProvisionedNumber")
                                     (display-name :target-type
                                      sensitive-string :member-name
                                      "DisplayName")
                                     (license-type :target-type license
                                      :member-name "LicenseType")
                                     (user-type :target-type user-type
                                      :member-name "UserType")
                                     (user-registration-status :target-type
                                      registration-status :member-name
                                      "UserRegistrationStatus")
                                     (user-invitation-status :target-type
                                      invite-status :member-name
                                      "UserInvitationStatus")
                                     (registered-on :target-type
                                      iso8601timestamp :member-name
                                      "RegisteredOn")
                                     (invited-on :target-type iso8601timestamp
                                      :member-name "InvitedOn")
                                     (alexa-for-business-metadata :target-type
                                      alexa-for-business-metadata :member-name
                                      "AlexaForBusinessMetadata")
                                     (personal-pin :target-type string
                                      :member-name "PersonalPIN"))
                                    (:shape-name "User"))

(smithy/sdk/shapes:define-list user-email-list :member email-address)

(smithy/sdk/shapes:define-structure user-error common-lisp:nil
                                    ((user-id :target-type non-empty-string
                                      :member-name "UserId")
                                     (error-code :target-type error-code
                                      :member-name "ErrorCode")
                                     (error-message :target-type string
                                      :member-name "ErrorMessage"))
                                    (:shape-name "UserError"))

(smithy/sdk/shapes:define-list user-error-list :member user-error)

(smithy/sdk/shapes:define-list user-id-list :member non-empty-string)

(smithy/sdk/shapes:define-list user-list :member user)

(smithy/sdk/shapes:define-structure user-settings common-lisp:nil
                                    ((telephony :target-type telephony-settings
                                      :required common-lisp:t :member-name
                                      "Telephony"))
                                    (:shape-name "UserSettings"))

(smithy/sdk/shapes:define-enum user-type
    common-lisp:nil
  (:private-user "PrivateUser")
  (:shared-device "SharedDevice"))

(smithy/sdk/shapes:define-structure voice-connector-settings common-lisp:nil
                                    ((cdr-bucket :target-type string
                                      :member-name "CdrBucket"))
                                    (:shape-name "VoiceConnectorSettings"))

(smithy/sdk/operation:define-operation associate-phone-number-with-user
                                       :shape-name
                                       "AssociatePhoneNumberWithUser" :input
                                       associate-phone-number-with-user-request
                                       :output
                                       associate-phone-number-with-user-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/accounts/{AccountId}/users/{UserId}?operation=associate-phone-number"
                                       :code 200)

(smithy/sdk/operation:define-operation
 associate-signin-delegate-groups-with-account :shape-name
 "AssociateSigninDelegateGroupsWithAccount" :input
 associate-signin-delegate-groups-with-account-request :output
 associate-signin-delegate-groups-with-account-response :errors
 (bad-request-exception forbidden-exception not-found-exception
  service-failure-exception service-unavailable-exception
  throttled-client-exception unauthorized-client-exception)
 :method "POST" :uri
 "/accounts/{AccountId}?operation=associate-signin-delegate-groups" :code 200)

(smithy/sdk/operation:define-operation batch-create-room-membership :shape-name
                                       "BatchCreateRoomMembership" :input
                                       batch-create-room-membership-request
                                       :output
                                       batch-create-room-membership-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/accounts/{AccountId}/rooms/{RoomId}/memberships?operation=batch-create"
                                       :code 201)

(smithy/sdk/operation:define-operation batch-delete-phone-number :shape-name
                                       "BatchDeletePhoneNumber" :input
                                       batch-delete-phone-number-request
                                       :output
                                       batch-delete-phone-number-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/phone-numbers?operation=batch-delete"
                                       :code 200)

(smithy/sdk/operation:define-operation batch-suspend-user :shape-name
                                       "BatchSuspendUser" :input
                                       batch-suspend-user-request :output
                                       batch-suspend-user-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/accounts/{AccountId}/users?operation=suspend"
                                       :code 200)

(smithy/sdk/operation:define-operation batch-unsuspend-user :shape-name
                                       "BatchUnsuspendUser" :input
                                       batch-unsuspend-user-request :output
                                       batch-unsuspend-user-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/accounts/{AccountId}/users?operation=unsuspend"
                                       :code 200)

(smithy/sdk/operation:define-operation batch-update-phone-number :shape-name
                                       "BatchUpdatePhoneNumber" :input
                                       batch-update-phone-number-request
                                       :output
                                       batch-update-phone-number-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/phone-numbers?operation=batch-update"
                                       :code 200)

(smithy/sdk/operation:define-operation batch-update-user :shape-name
                                       "BatchUpdateUser" :input
                                       batch-update-user-request :output
                                       batch-update-user-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/accounts/{AccountId}/users" :code 200)

(smithy/sdk/operation:define-operation create-account :shape-name
                                       "CreateAccount" :input
                                       create-account-request :output
                                       create-account-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri "/accounts" :code
                                       201)

(smithy/sdk/operation:define-operation create-bot :shape-name "CreateBot"
                                       :input create-bot-request :output
                                       create-bot-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/accounts/{AccountId}/bots" :code 201)

(smithy/sdk/operation:define-operation create-meeting-dial-out :shape-name
                                       "CreateMeetingDialOut" :input
                                       create-meeting-dial-out-request :output
                                       create-meeting-dial-out-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        forbidden-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/meetings/{MeetingId}/dial-outs" :code
                                       201)

(smithy/sdk/operation:define-operation create-phone-number-order :shape-name
                                       "CreatePhoneNumberOrder" :input
                                       create-phone-number-order-request
                                       :output
                                       create-phone-number-order-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        forbidden-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/phone-number-orders" :code 201)

(smithy/sdk/operation:define-operation create-room :shape-name "CreateRoom"
                                       :input create-room-request :output
                                       create-room-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/accounts/{AccountId}/rooms" :code 201)

(smithy/sdk/operation:define-operation create-room-membership :shape-name
                                       "CreateRoomMembership" :input
                                       create-room-membership-request :output
                                       create-room-membership-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        not-found-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/accounts/{AccountId}/rooms/{RoomId}/memberships"
                                       :code 201)

(smithy/sdk/operation:define-operation create-user :shape-name "CreateUser"
                                       :input create-user-request :output
                                       create-user-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/accounts/{AccountId}/users?operation=create"
                                       :code 201)

(smithy/sdk/operation:define-operation delete-account :shape-name
                                       "DeleteAccount" :input
                                       delete-account-request :output
                                       delete-account-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception
                                        unprocessable-entity-exception)
                                       :method "DELETE" :uri
                                       "/accounts/{AccountId}" :code 204)

(smithy/sdk/operation:define-operation delete-events-configuration :shape-name
                                       "DeleteEventsConfiguration" :input
                                       delete-events-configuration-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        unauthorized-client-exception)
                                       :method "DELETE" :uri
                                       "/accounts/{AccountId}/bots/{BotId}/events-configuration"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-phone-number :shape-name
                                       "DeletePhoneNumber" :input
                                       delete-phone-number-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "DELETE" :uri
                                       "/phone-numbers/{PhoneNumberId}" :code
                                       204)

(smithy/sdk/operation:define-operation delete-room :shape-name "DeleteRoom"
                                       :input delete-room-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "DELETE" :uri
                                       "/accounts/{AccountId}/rooms/{RoomId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-room-membership :shape-name
                                       "DeleteRoomMembership" :input
                                       delete-room-membership-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "DELETE" :uri
                                       "/accounts/{AccountId}/rooms/{RoomId}/memberships/{MemberId}"
                                       :code 204)

(smithy/sdk/operation:define-operation disassociate-phone-number-from-user
                                       :shape-name
                                       "DisassociatePhoneNumberFromUser" :input
                                       disassociate-phone-number-from-user-request
                                       :output
                                       disassociate-phone-number-from-user-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/accounts/{AccountId}/users/{UserId}?operation=disassociate-phone-number"
                                       :code 200)

(smithy/sdk/operation:define-operation
 disassociate-signin-delegate-groups-from-account :shape-name
 "DisassociateSigninDelegateGroupsFromAccount" :input
 disassociate-signin-delegate-groups-from-account-request :output
 disassociate-signin-delegate-groups-from-account-response :errors
 (bad-request-exception forbidden-exception not-found-exception
  service-failure-exception service-unavailable-exception
  throttled-client-exception unauthorized-client-exception)
 :method "POST" :uri
 "/accounts/{AccountId}?operation=disassociate-signin-delegate-groups" :code
 200)

(smithy/sdk/operation:define-operation get-account :shape-name "GetAccount"
                                       :input get-account-request :output
                                       get-account-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/accounts/{AccountId}" :code 200)

(smithy/sdk/operation:define-operation get-account-settings :shape-name
                                       "GetAccountSettings" :input
                                       get-account-settings-request :output
                                       get-account-settings-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/accounts/{AccountId}/settings" :code
                                       200)

(smithy/sdk/operation:define-operation get-bot :shape-name "GetBot" :input
                                       get-bot-request :output get-bot-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/accounts/{AccountId}/bots/{BotId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-events-configuration :shape-name
                                       "GetEventsConfiguration" :input
                                       get-events-configuration-request :output
                                       get-events-configuration-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/accounts/{AccountId}/bots/{BotId}/events-configuration"
                                       :code 200)

(smithy/sdk/operation:define-operation get-global-settings :shape-name
                                       "GetGlobalSettings" :input
                                       common-lisp:null :output
                                       get-global-settings-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri "/settings" :code 200)

(smithy/sdk/operation:define-operation get-phone-number :shape-name
                                       "GetPhoneNumber" :input
                                       get-phone-number-request :output
                                       get-phone-number-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/phone-numbers/{PhoneNumberId}" :code
                                       200)

(smithy/sdk/operation:define-operation get-phone-number-order :shape-name
                                       "GetPhoneNumberOrder" :input
                                       get-phone-number-order-request :output
                                       get-phone-number-order-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/phone-number-orders/{PhoneNumberOrderId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-phone-number-settings :shape-name
                                       "GetPhoneNumberSettings" :input
                                       common-lisp:null :output
                                       get-phone-number-settings-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/settings/phone-number" :code 200)

(smithy/sdk/operation:define-operation get-retention-settings :shape-name
                                       "GetRetentionSettings" :input
                                       get-retention-settings-request :output
                                       get-retention-settings-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/accounts/{AccountId}/retention-settings"
                                       :code 200)

(smithy/sdk/operation:define-operation get-room :shape-name "GetRoom" :input
                                       get-room-request :output
                                       get-room-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/accounts/{AccountId}/rooms/{RoomId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-user :shape-name "GetUser" :input
                                       get-user-request :output
                                       get-user-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/accounts/{AccountId}/users/{UserId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-user-settings :shape-name
                                       "GetUserSettings" :input
                                       get-user-settings-request :output
                                       get-user-settings-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/accounts/{AccountId}/users/{UserId}/settings"
                                       :code 200)

(smithy/sdk/operation:define-operation invite-users :shape-name "InviteUsers"
                                       :input invite-users-request :output
                                       invite-users-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/accounts/{AccountId}/users?operation=add"
                                       :code 201)

(smithy/sdk/operation:define-operation list-accounts :shape-name "ListAccounts"
                                       :input list-accounts-request :output
                                       list-accounts-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri "/accounts" :code 200)

(smithy/sdk/operation:define-operation list-bots :shape-name "ListBots" :input
                                       list-bots-request :output
                                       list-bots-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/accounts/{AccountId}/bots" :code 200)

(smithy/sdk/operation:define-operation list-phone-number-orders :shape-name
                                       "ListPhoneNumberOrders" :input
                                       list-phone-number-orders-request :output
                                       list-phone-number-orders-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/phone-number-orders" :code 200)

(smithy/sdk/operation:define-operation list-phone-numbers :shape-name
                                       "ListPhoneNumbers" :input
                                       list-phone-numbers-request :output
                                       list-phone-numbers-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri "/phone-numbers"
                                       :code 200)

(smithy/sdk/operation:define-operation list-room-memberships :shape-name
                                       "ListRoomMemberships" :input
                                       list-room-memberships-request :output
                                       list-room-memberships-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/accounts/{AccountId}/rooms/{RoomId}/memberships"
                                       :code 200)

(smithy/sdk/operation:define-operation list-rooms :shape-name "ListRooms"
                                       :input list-rooms-request :output
                                       list-rooms-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/accounts/{AccountId}/rooms" :code 200)

(smithy/sdk/operation:define-operation list-supported-phone-number-countries
                                       :shape-name
                                       "ListSupportedPhoneNumberCountries"
                                       :input
                                       list-supported-phone-number-countries-request
                                       :output
                                       list-supported-phone-number-countries-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/phone-number-countries" :code 200)

(smithy/sdk/operation:define-operation list-users :shape-name "ListUsers"
                                       :input list-users-request :output
                                       list-users-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/accounts/{AccountId}/users" :code 200)

(smithy/sdk/operation:define-operation logout-user :shape-name "LogoutUser"
                                       :input logout-user-request :output
                                       logout-user-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/accounts/{AccountId}/users/{UserId}?operation=logout"
                                       :code 204)

(smithy/sdk/operation:define-operation put-events-configuration :shape-name
                                       "PutEventsConfiguration" :input
                                       put-events-configuration-request :output
                                       put-events-configuration-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        unauthorized-client-exception)
                                       :method "PUT" :uri
                                       "/accounts/{AccountId}/bots/{BotId}/events-configuration"
                                       :code 201)

(smithy/sdk/operation:define-operation put-retention-settings :shape-name
                                       "PutRetentionSettings" :input
                                       put-retention-settings-request :output
                                       put-retention-settings-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "PUT" :uri
                                       "/accounts/{AccountId}/retention-settings"
                                       :code 204)

(smithy/sdk/operation:define-operation redact-conversation-message :shape-name
                                       "RedactConversationMessage" :input
                                       redact-conversation-message-request
                                       :output
                                       redact-conversation-message-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/accounts/{AccountId}/conversations/{ConversationId}/messages/{MessageId}?operation=redact"
                                       :code 200)

(smithy/sdk/operation:define-operation redact-room-message :shape-name
                                       "RedactRoomMessage" :input
                                       redact-room-message-request :output
                                       redact-room-message-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/accounts/{AccountId}/rooms/{RoomId}/messages/{MessageId}?operation=redact"
                                       :code 200)

(smithy/sdk/operation:define-operation regenerate-security-token :shape-name
                                       "RegenerateSecurityToken" :input
                                       regenerate-security-token-request
                                       :output
                                       regenerate-security-token-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/accounts/{AccountId}/bots/{BotId}?operation=regenerate-security-token"
                                       :code 200)

(smithy/sdk/operation:define-operation reset-personal-pin :shape-name
                                       "ResetPersonalPIN" :input
                                       reset-personal-pinrequest :output
                                       reset-personal-pinresponse :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/accounts/{AccountId}/users/{UserId}?operation=reset-personal-pin"
                                       :code 200)

(smithy/sdk/operation:define-operation restore-phone-number :shape-name
                                       "RestorePhoneNumber" :input
                                       restore-phone-number-request :output
                                       restore-phone-number-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/phone-numbers/{PhoneNumberId}?operation=restore"
                                       :code 200)

(smithy/sdk/operation:define-operation search-available-phone-numbers
                                       :shape-name
                                       "SearchAvailablePhoneNumbers" :input
                                       search-available-phone-numbers-request
                                       :output
                                       search-available-phone-numbers-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/search?type=phone-numbers" :code 200)

(smithy/sdk/operation:define-operation update-account :shape-name
                                       "UpdateAccount" :input
                                       update-account-request :output
                                       update-account-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/accounts/{AccountId}" :code 200)

(smithy/sdk/operation:define-operation update-account-settings :shape-name
                                       "UpdateAccountSettings" :input
                                       update-account-settings-request :output
                                       update-account-settings-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "PUT" :uri
                                       "/accounts/{AccountId}/settings" :code
                                       204)

(smithy/sdk/operation:define-operation update-bot :shape-name "UpdateBot"
                                       :input update-bot-request :output
                                       update-bot-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/accounts/{AccountId}/bots/{BotId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-global-settings :shape-name
                                       "UpdateGlobalSettings" :input
                                       update-global-settings-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "PUT" :uri "/settings" :code 204)

(smithy/sdk/operation:define-operation update-phone-number :shape-name
                                       "UpdatePhoneNumber" :input
                                       update-phone-number-request :output
                                       update-phone-number-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/phone-numbers/{PhoneNumberId}" :code
                                       200)

(smithy/sdk/operation:define-operation update-phone-number-settings :shape-name
                                       "UpdatePhoneNumberSettings" :input
                                       update-phone-number-settings-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "PUT" :uri
                                       "/settings/phone-number" :code 204)

(smithy/sdk/operation:define-operation update-room :shape-name "UpdateRoom"
                                       :input update-room-request :output
                                       update-room-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/accounts/{AccountId}/rooms/{RoomId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-room-membership :shape-name
                                       "UpdateRoomMembership" :input
                                       update-room-membership-request :output
                                       update-room-membership-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/accounts/{AccountId}/rooms/{RoomId}/memberships/{MemberId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-user :shape-name "UpdateUser"
                                       :input update-user-request :output
                                       update-user-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/accounts/{AccountId}/users/{UserId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-user-settings :shape-name
                                       "UpdateUserSettings" :input
                                       update-user-settings-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "PUT" :uri
                                       "/accounts/{AccountId}/users/{UserId}/settings"
                                       :code 204)
