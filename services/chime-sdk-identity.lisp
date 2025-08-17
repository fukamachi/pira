(uiop/package:define-package #:pira/chime-sdk-identity (:use)
                             (:export #:allow-messages #:app-instance
                              #:app-instance-admin #:app-instance-admin-list
                              #:app-instance-admin-summary #:app-instance-bot
                              #:app-instance-bot-list
                              #:app-instance-bot-summary #:app-instance-list
                              #:app-instance-retention-settings
                              #:app-instance-summary #:app-instance-user
                              #:app-instance-user-endpoint
                              #:app-instance-user-endpoint-summary
                              #:app-instance-user-endpoint-summary-list
                              #:app-instance-user-endpoint-type
                              #:app-instance-user-list
                              #:app-instance-user-summary
                              #:channel-retention-settings #:chime-arn
                              #:chime-identity-service #:client-request-token
                              #:configuration #:create-app-instance
                              #:create-app-instance-admin
                              #:create-app-instance-bot
                              #:create-app-instance-user #:delete-app-instance
                              #:delete-app-instance-admin
                              #:delete-app-instance-bot
                              #:delete-app-instance-user
                              #:deregister-app-instance-user-endpoint
                              #:describe-app-instance
                              #:describe-app-instance-admin
                              #:describe-app-instance-bot
                              #:describe-app-instance-user
                              #:describe-app-instance-user-endpoint
                              #:endpoint-attributes #:endpoint-state
                              #:endpoint-status #:endpoint-status-reason
                              #:error-code #:expiration-criterion
                              #:expiration-days #:expiration-settings
                              #:get-app-instance-retention-settings #:identity
                              #:invoked-by #:lex-bot-alias-arn
                              #:lex-configuration #:lex-intent-name
                              #:list-app-instance-admins
                              #:list-app-instance-bots
                              #:list-app-instance-user-endpoints
                              #:list-app-instance-users #:list-app-instances
                              #:list-tags-for-resource #:max-results #:metadata
                              #:next-token #:non-empty-resource-name
                              #:non-empty-sensitive-string1600
                              #:put-app-instance-retention-settings
                              #:put-app-instance-user-expiration-settings
                              #:register-app-instance-user-endpoint
                              #:resource-name #:responds-to #:retention-days
                              #:sensitive-chime-arn #:sensitive-string1600
                              #:standard-messages #:string #:string1600
                              #:string64 #:tag #:tag-key #:tag-key-list
                              #:tag-list #:tag-resource #:tag-value
                              #:targeted-messages #:timestamp #:untag-resource
                              #:update-app-instance #:update-app-instance-bot
                              #:update-app-instance-user
                              #:update-app-instance-user-endpoint #:user-id
                              #:user-name))
(common-lisp:in-package #:pira/chime-sdk-identity)

(smithy/sdk/service:define-service chime-identity-service :shape-name
                                   "ChimeIdentityService" :version "2021-04-20"
                                   :title "Amazon Chime SDK Identity"
                                   :operations
                                   '(create-app-instance
                                     create-app-instance-admin
                                     create-app-instance-bot
                                     create-app-instance-user
                                     delete-app-instance
                                     delete-app-instance-admin
                                     delete-app-instance-bot
                                     delete-app-instance-user
                                     deregister-app-instance-user-endpoint
                                     describe-app-instance
                                     describe-app-instance-admin
                                     describe-app-instance-bot
                                     describe-app-instance-user
                                     describe-app-instance-user-endpoint
                                     get-app-instance-retention-settings
                                     list-app-instance-admins
                                     list-app-instance-bots list-app-instances
                                     list-app-instance-user-endpoints
                                     list-app-instance-users
                                     list-tags-for-resource
                                     put-app-instance-retention-settings
                                     put-app-instance-user-expiration-settings
                                     register-app-instance-user-endpoint
                                     tag-resource untag-resource
                                     update-app-instance
                                     update-app-instance-bot
                                     update-app-instance-user
                                     update-app-instance-user-endpoint)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Chime SDK Identity")
                                      ("arnNamespace" . "chime")
                                      ("cloudFormationName"
                                       . "ChimeSDKIdentity")
                                      ("cloudTrailEventSource"
                                       . "chimesdkidentity.amazonaws.com")
                                      ("endpointPrefix" . "identity-chime"))
                                     ("aws.auth#sigv4" ("name" . "chime"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-enum allow-messages
    common-lisp:nil
  (:all "ALL")
  (:none "NONE"))

(smithy/sdk/shapes:define-structure app-instance common-lisp:nil
                                    ((app-instance-arn :target-type chime-arn
                                      :member-name "AppInstanceArn")
                                     (name :target-type non-empty-resource-name
                                      :member-name "Name")
                                     (created-timestamp :target-type timestamp
                                      :member-name "CreatedTimestamp")
                                     (last-updated-timestamp :target-type
                                      timestamp :member-name
                                      "LastUpdatedTimestamp")
                                     (metadata :target-type metadata
                                      :member-name "Metadata"))
                                    (:shape-name "AppInstance"))

(smithy/sdk/shapes:define-structure app-instance-admin common-lisp:nil
                                    ((admin :target-type identity :member-name
                                      "Admin")
                                     (app-instance-arn :target-type chime-arn
                                      :member-name "AppInstanceArn")
                                     (created-timestamp :target-type timestamp
                                      :member-name "CreatedTimestamp"))
                                    (:shape-name "AppInstanceAdmin"))

(smithy/sdk/shapes:define-list app-instance-admin-list :member
                               app-instance-admin-summary)

(smithy/sdk/shapes:define-structure app-instance-admin-summary common-lisp:nil
                                    ((admin :target-type identity :member-name
                                      "Admin"))
                                    (:shape-name "AppInstanceAdminSummary"))

(smithy/sdk/shapes:define-structure app-instance-bot common-lisp:nil
                                    ((app-instance-bot-arn :target-type
                                      chime-arn :member-name
                                      "AppInstanceBotArn")
                                     (name :target-type resource-name
                                      :member-name "Name")
                                     (configuration :target-type configuration
                                      :member-name "Configuration")
                                     (created-timestamp :target-type timestamp
                                      :member-name "CreatedTimestamp")
                                     (last-updated-timestamp :target-type
                                      timestamp :member-name
                                      "LastUpdatedTimestamp")
                                     (metadata :target-type metadata
                                      :member-name "Metadata"))
                                    (:shape-name "AppInstanceBot"))

(smithy/sdk/shapes:define-list app-instance-bot-list :member
                               app-instance-bot-summary)

(smithy/sdk/shapes:define-structure app-instance-bot-summary common-lisp:nil
                                    ((app-instance-bot-arn :target-type
                                      chime-arn :member-name
                                      "AppInstanceBotArn")
                                     (name :target-type resource-name
                                      :member-name "Name")
                                     (metadata :target-type metadata
                                      :member-name "Metadata"))
                                    (:shape-name "AppInstanceBotSummary"))

(smithy/sdk/shapes:define-list app-instance-list :member app-instance-summary)

(smithy/sdk/shapes:define-structure app-instance-retention-settings
                                    common-lisp:nil
                                    ((channel-retention-settings :target-type
                                      channel-retention-settings :member-name
                                      "ChannelRetentionSettings"))
                                    (:shape-name
                                     "AppInstanceRetentionSettings"))

(smithy/sdk/shapes:define-structure app-instance-summary common-lisp:nil
                                    ((app-instance-arn :target-type chime-arn
                                      :member-name "AppInstanceArn")
                                     (name :target-type non-empty-resource-name
                                      :member-name "Name")
                                     (metadata :target-type metadata
                                      :member-name "Metadata"))
                                    (:shape-name "AppInstanceSummary"))

(smithy/sdk/shapes:define-structure app-instance-user common-lisp:nil
                                    ((app-instance-user-arn :target-type
                                      chime-arn :member-name
                                      "AppInstanceUserArn")
                                     (name :target-type user-name :member-name
                                      "Name")
                                     (metadata :target-type metadata
                                      :member-name "Metadata")
                                     (created-timestamp :target-type timestamp
                                      :member-name "CreatedTimestamp")
                                     (last-updated-timestamp :target-type
                                      timestamp :member-name
                                      "LastUpdatedTimestamp")
                                     (expiration-settings :target-type
                                      expiration-settings :member-name
                                      "ExpirationSettings"))
                                    (:shape-name "AppInstanceUser"))

(smithy/sdk/shapes:define-structure app-instance-user-endpoint common-lisp:nil
                                    ((app-instance-user-arn :target-type
                                      chime-arn :member-name
                                      "AppInstanceUserArn")
                                     (endpoint-id :target-type string64
                                      :member-name "EndpointId")
                                     (name :target-type sensitive-string1600
                                      :member-name "Name")
                                     (type :target-type
                                      app-instance-user-endpoint-type
                                      :member-name "Type")
                                     (resource-arn :target-type chime-arn
                                      :member-name "ResourceArn")
                                     (endpoint-attributes :target-type
                                      endpoint-attributes :member-name
                                      "EndpointAttributes")
                                     (created-timestamp :target-type timestamp
                                      :member-name "CreatedTimestamp")
                                     (last-updated-timestamp :target-type
                                      timestamp :member-name
                                      "LastUpdatedTimestamp")
                                     (allow-messages :target-type
                                      allow-messages :member-name
                                      "AllowMessages")
                                     (endpoint-state :target-type
                                      endpoint-state :member-name
                                      "EndpointState"))
                                    (:shape-name "AppInstanceUserEndpoint"))

(smithy/sdk/shapes:define-structure app-instance-user-endpoint-summary
                                    common-lisp:nil
                                    ((app-instance-user-arn :target-type
                                      chime-arn :member-name
                                      "AppInstanceUserArn")
                                     (endpoint-id :target-type string64
                                      :member-name "EndpointId")
                                     (name :target-type sensitive-string1600
                                      :member-name "Name")
                                     (type :target-type
                                      app-instance-user-endpoint-type
                                      :member-name "Type")
                                     (allow-messages :target-type
                                      allow-messages :member-name
                                      "AllowMessages")
                                     (endpoint-state :target-type
                                      endpoint-state :member-name
                                      "EndpointState"))
                                    (:shape-name
                                     "AppInstanceUserEndpointSummary"))

(smithy/sdk/shapes:define-list app-instance-user-endpoint-summary-list :member
                               app-instance-user-endpoint-summary)

(smithy/sdk/shapes:define-enum app-instance-user-endpoint-type
    common-lisp:nil
  (:apns "APNS")
  (:apns-sandbox "APNS_SANDBOX")
  (:gcm "GCM"))

(smithy/sdk/shapes:define-list app-instance-user-list :member
                               app-instance-user-summary)

(smithy/sdk/shapes:define-structure app-instance-user-summary common-lisp:nil
                                    ((app-instance-user-arn :target-type
                                      chime-arn :member-name
                                      "AppInstanceUserArn")
                                     (name :target-type user-name :member-name
                                      "Name")
                                     (metadata :target-type metadata
                                      :member-name "Metadata"))
                                    (:shape-name "AppInstanceUserSummary"))

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure channel-retention-settings common-lisp:nil
                                    ((retention-days :target-type
                                      retention-days :member-name
                                      "RetentionDays"))
                                    (:shape-name "ChannelRetentionSettings"))

(smithy/sdk/shapes:define-type chime-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-request-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure configuration common-lisp:nil
                                    ((lex :target-type lex-configuration
                                      :required common-lisp:t :member-name
                                      "Lex"))
                                    (:shape-name "Configuration"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-app-instance-admin-request
                                common-lisp:nil
                                ((app-instance-admin-arn :target-type chime-arn
                                  :required common-lisp:t :member-name
                                  "AppInstanceAdminArn")
                                 (app-instance-arn :target-type chime-arn
                                  :required common-lisp:t :member-name
                                  "AppInstanceArn" :http-label common-lisp:t))
                                (:shape-name "CreateAppInstanceAdminRequest"))

(smithy/sdk/shapes:define-output create-app-instance-admin-response
                                 common-lisp:nil
                                 ((app-instance-admin :target-type identity
                                   :member-name "AppInstanceAdmin")
                                  (app-instance-arn :target-type chime-arn
                                   :member-name "AppInstanceArn"))
                                 (:shape-name "CreateAppInstanceAdminResponse"))

(smithy/sdk/shapes:define-input create-app-instance-bot-request common-lisp:nil
                                ((app-instance-arn :target-type chime-arn
                                  :required common-lisp:t :member-name
                                  "AppInstanceArn")
                                 (name :target-type resource-name :member-name
                                  "Name")
                                 (metadata :target-type metadata :member-name
                                  "Metadata")
                                 (client-request-token :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "ClientRequestToken")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (configuration :target-type configuration
                                  :required common-lisp:t :member-name
                                  "Configuration"))
                                (:shape-name "CreateAppInstanceBotRequest"))

(smithy/sdk/shapes:define-output create-app-instance-bot-response
                                 common-lisp:nil
                                 ((app-instance-bot-arn :target-type chime-arn
                                   :member-name "AppInstanceBotArn"))
                                 (:shape-name "CreateAppInstanceBotResponse"))

(smithy/sdk/shapes:define-input create-app-instance-request common-lisp:nil
                                ((name :target-type non-empty-resource-name
                                  :required common-lisp:t :member-name "Name")
                                 (metadata :target-type metadata :member-name
                                  "Metadata")
                                 (client-request-token :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "ClientRequestToken")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateAppInstanceRequest"))

(smithy/sdk/shapes:define-output create-app-instance-response common-lisp:nil
                                 ((app-instance-arn :target-type chime-arn
                                   :member-name "AppInstanceArn"))
                                 (:shape-name "CreateAppInstanceResponse"))

(smithy/sdk/shapes:define-input create-app-instance-user-request
                                common-lisp:nil
                                ((app-instance-arn :target-type chime-arn
                                  :required common-lisp:t :member-name
                                  "AppInstanceArn")
                                 (app-instance-user-id :target-type user-id
                                  :required common-lisp:t :member-name
                                  "AppInstanceUserId")
                                 (name :target-type user-name :required
                                  common-lisp:t :member-name "Name")
                                 (metadata :target-type metadata :member-name
                                  "Metadata")
                                 (client-request-token :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "ClientRequestToken")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (expiration-settings :target-type
                                  expiration-settings :member-name
                                  "ExpirationSettings"))
                                (:shape-name "CreateAppInstanceUserRequest"))

(smithy/sdk/shapes:define-output create-app-instance-user-response
                                 common-lisp:nil
                                 ((app-instance-user-arn :target-type chime-arn
                                   :member-name "AppInstanceUserArn"))
                                 (:shape-name "CreateAppInstanceUserResponse"))

(smithy/sdk/shapes:define-input delete-app-instance-admin-request
                                common-lisp:nil
                                ((app-instance-admin-arn :target-type chime-arn
                                  :required common-lisp:t :member-name
                                  "AppInstanceAdminArn" :http-label
                                  common-lisp:t)
                                 (app-instance-arn :target-type chime-arn
                                  :required common-lisp:t :member-name
                                  "AppInstanceArn" :http-label common-lisp:t))
                                (:shape-name "DeleteAppInstanceAdminRequest"))

(smithy/sdk/shapes:define-input delete-app-instance-bot-request common-lisp:nil
                                ((app-instance-bot-arn :target-type chime-arn
                                  :required common-lisp:t :member-name
                                  "AppInstanceBotArn" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteAppInstanceBotRequest"))

(smithy/sdk/shapes:define-input delete-app-instance-request common-lisp:nil
                                ((app-instance-arn :target-type chime-arn
                                  :required common-lisp:t :member-name
                                  "AppInstanceArn" :http-label common-lisp:t))
                                (:shape-name "DeleteAppInstanceRequest"))

(smithy/sdk/shapes:define-input delete-app-instance-user-request
                                common-lisp:nil
                                ((app-instance-user-arn :target-type chime-arn
                                  :required common-lisp:t :member-name
                                  "AppInstanceUserArn" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteAppInstanceUserRequest"))

(smithy/sdk/shapes:define-input deregister-app-instance-user-endpoint-request
                                common-lisp:nil
                                ((app-instance-user-arn :target-type chime-arn
                                  :required common-lisp:t :member-name
                                  "AppInstanceUserArn" :http-label
                                  common-lisp:t)
                                 (endpoint-id :target-type string64 :required
                                  common-lisp:t :member-name "EndpointId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeregisterAppInstanceUserEndpointRequest"))

(smithy/sdk/shapes:define-input describe-app-instance-admin-request
                                common-lisp:nil
                                ((app-instance-admin-arn :target-type chime-arn
                                  :required common-lisp:t :member-name
                                  "AppInstanceAdminArn" :http-label
                                  common-lisp:t)
                                 (app-instance-arn :target-type chime-arn
                                  :required common-lisp:t :member-name
                                  "AppInstanceArn" :http-label common-lisp:t))
                                (:shape-name "DescribeAppInstanceAdminRequest"))

(smithy/sdk/shapes:define-output describe-app-instance-admin-response
                                 common-lisp:nil
                                 ((app-instance-admin :target-type
                                   app-instance-admin :member-name
                                   "AppInstanceAdmin"))
                                 (:shape-name
                                  "DescribeAppInstanceAdminResponse"))

(smithy/sdk/shapes:define-input describe-app-instance-bot-request
                                common-lisp:nil
                                ((app-instance-bot-arn :target-type chime-arn
                                  :required common-lisp:t :member-name
                                  "AppInstanceBotArn" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribeAppInstanceBotRequest"))

(smithy/sdk/shapes:define-output describe-app-instance-bot-response
                                 common-lisp:nil
                                 ((app-instance-bot :target-type
                                   app-instance-bot :member-name
                                   "AppInstanceBot"))
                                 (:shape-name "DescribeAppInstanceBotResponse"))

(smithy/sdk/shapes:define-input describe-app-instance-request common-lisp:nil
                                ((app-instance-arn :target-type chime-arn
                                  :required common-lisp:t :member-name
                                  "AppInstanceArn" :http-label common-lisp:t))
                                (:shape-name "DescribeAppInstanceRequest"))

(smithy/sdk/shapes:define-output describe-app-instance-response common-lisp:nil
                                 ((app-instance :target-type app-instance
                                   :member-name "AppInstance"))
                                 (:shape-name "DescribeAppInstanceResponse"))

(smithy/sdk/shapes:define-input describe-app-instance-user-endpoint-request
                                common-lisp:nil
                                ((app-instance-user-arn :target-type string1600
                                  :required common-lisp:t :member-name
                                  "AppInstanceUserArn" :http-label
                                  common-lisp:t)
                                 (endpoint-id :target-type string64 :required
                                  common-lisp:t :member-name "EndpointId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DescribeAppInstanceUserEndpointRequest"))

(smithy/sdk/shapes:define-output describe-app-instance-user-endpoint-response
                                 common-lisp:nil
                                 ((app-instance-user-endpoint :target-type
                                   app-instance-user-endpoint :member-name
                                   "AppInstanceUserEndpoint"))
                                 (:shape-name
                                  "DescribeAppInstanceUserEndpointResponse"))

(smithy/sdk/shapes:define-input describe-app-instance-user-request
                                common-lisp:nil
                                ((app-instance-user-arn :target-type chime-arn
                                  :required common-lisp:t :member-name
                                  "AppInstanceUserArn" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribeAppInstanceUserRequest"))

(smithy/sdk/shapes:define-output describe-app-instance-user-response
                                 common-lisp:nil
                                 ((app-instance-user :target-type
                                   app-instance-user :member-name
                                   "AppInstanceUser"))
                                 (:shape-name
                                  "DescribeAppInstanceUserResponse"))

(smithy/sdk/shapes:define-structure endpoint-attributes common-lisp:nil
                                    ((device-token :target-type
                                      non-empty-sensitive-string1600 :required
                                      common-lisp:t :member-name "DeviceToken")
                                     (voip-device-token :target-type
                                      non-empty-sensitive-string1600
                                      :member-name "VoipDeviceToken"))
                                    (:shape-name "EndpointAttributes"))

(smithy/sdk/shapes:define-structure endpoint-state common-lisp:nil
                                    ((status :target-type endpoint-status
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (status-reason :target-type
                                      endpoint-status-reason :member-name
                                      "StatusReason"))
                                    (:shape-name "EndpointState"))

(smithy/sdk/shapes:define-enum endpoint-status
    common-lisp:nil
  (:active "ACTIVE")
  (:inactive "INACTIVE"))

(smithy/sdk/shapes:define-enum endpoint-status-reason
    common-lisp:nil
  (:invalid-device-token "INVALID_DEVICE_TOKEN")
  (:invalid-pinpoint-arn "INVALID_PINPOINT_ARN"))

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
  (:created-timestamp "CREATED_TIMESTAMP"))

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

(smithy/sdk/shapes:define-error forbidden-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ForbiddenException")
                                (:error-code 403))

(smithy/sdk/shapes:define-input get-app-instance-retention-settings-request
                                common-lisp:nil
                                ((app-instance-arn :target-type chime-arn
                                  :required common-lisp:t :member-name
                                  "AppInstanceArn" :http-label common-lisp:t))
                                (:shape-name
                                 "GetAppInstanceRetentionSettingsRequest"))

(smithy/sdk/shapes:define-output get-app-instance-retention-settings-response
                                 common-lisp:nil
                                 ((app-instance-retention-settings :target-type
                                   app-instance-retention-settings :member-name
                                   "AppInstanceRetentionSettings")
                                  (initiate-deletion-timestamp :target-type
                                   timestamp :member-name
                                   "InitiateDeletionTimestamp"))
                                 (:shape-name
                                  "GetAppInstanceRetentionSettingsResponse"))

(smithy/sdk/shapes:define-structure identity common-lisp:nil
                                    ((arn :target-type chime-arn :member-name
                                      "Arn")
                                     (name :target-type resource-name
                                      :member-name "Name"))
                                    (:shape-name "Identity"))

(smithy/sdk/shapes:define-structure invoked-by common-lisp:nil
                                    ((standard-messages :target-type
                                      standard-messages :required common-lisp:t
                                      :member-name "StandardMessages")
                                     (targeted-messages :target-type
                                      targeted-messages :required common-lisp:t
                                      :member-name "TargetedMessages"))
                                    (:shape-name "InvokedBy"))

(smithy/sdk/shapes:define-type lex-bot-alias-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lex-configuration common-lisp:nil
                                    ((responds-to :target-type responds-to
                                      :member-name "RespondsTo")
                                     (invoked-by :target-type invoked-by
                                      :member-name "InvokedBy")
                                     (lex-bot-alias-arn :target-type
                                      lex-bot-alias-arn :required common-lisp:t
                                      :member-name "LexBotAliasArn")
                                     (locale-id :target-type string :required
                                      common-lisp:t :member-name "LocaleId")
                                     (welcome-intent :target-type
                                      lex-intent-name :member-name
                                      "WelcomeIntent"))
                                    (:shape-name "LexConfiguration"))

(smithy/sdk/shapes:define-type lex-intent-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-app-instance-admins-request
                                common-lisp:nil
                                ((app-instance-arn :target-type chime-arn
                                  :required common-lisp:t :member-name
                                  "AppInstanceArn" :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "max-results")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "next-token"))
                                (:shape-name "ListAppInstanceAdminsRequest"))

(smithy/sdk/shapes:define-output list-app-instance-admins-response
                                 common-lisp:nil
                                 ((app-instance-arn :target-type chime-arn
                                   :member-name "AppInstanceArn")
                                  (app-instance-admins :target-type
                                   app-instance-admin-list :member-name
                                   "AppInstanceAdmins")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListAppInstanceAdminsResponse"))

(smithy/sdk/shapes:define-input list-app-instance-bots-request common-lisp:nil
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
                                (:shape-name "ListAppInstanceBotsRequest"))

(smithy/sdk/shapes:define-output list-app-instance-bots-response
                                 common-lisp:nil
                                 ((app-instance-arn :target-type chime-arn
                                   :member-name "AppInstanceArn")
                                  (app-instance-bots :target-type
                                   app-instance-bot-list :member-name
                                   "AppInstanceBots")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListAppInstanceBotsResponse"))

(smithy/sdk/shapes:define-input list-app-instance-user-endpoints-request
                                common-lisp:nil
                                ((app-instance-user-arn :target-type
                                  sensitive-chime-arn :required common-lisp:t
                                  :member-name "AppInstanceUserArn" :http-label
                                  common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "max-results")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "next-token"))
                                (:shape-name
                                 "ListAppInstanceUserEndpointsRequest"))

(smithy/sdk/shapes:define-output list-app-instance-user-endpoints-response
                                 common-lisp:nil
                                 ((app-instance-user-endpoints :target-type
                                   app-instance-user-endpoint-summary-list
                                   :member-name "AppInstanceUserEndpoints")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListAppInstanceUserEndpointsResponse"))

(smithy/sdk/shapes:define-input list-app-instance-users-request common-lisp:nil
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
                                (:shape-name "ListAppInstanceUsersRequest"))

(smithy/sdk/shapes:define-output list-app-instance-users-response
                                 common-lisp:nil
                                 ((app-instance-arn :target-type chime-arn
                                   :member-name "AppInstanceArn")
                                  (app-instance-users :target-type
                                   app-instance-user-list :member-name
                                   "AppInstanceUsers")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListAppInstanceUsersResponse"))

(smithy/sdk/shapes:define-input list-app-instances-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "max-results")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "next-token"))
                                (:shape-name "ListAppInstancesRequest"))

(smithy/sdk/shapes:define-output list-app-instances-response common-lisp:nil
                                 ((app-instances :target-type app-instance-list
                                   :member-name "AppInstances")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListAppInstancesResponse"))

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

(smithy/sdk/shapes:define-type metadata smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-empty-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-empty-sensitive-string1600
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "NotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-input put-app-instance-retention-settings-request
                                common-lisp:nil
                                ((app-instance-arn :target-type chime-arn
                                  :required common-lisp:t :member-name
                                  "AppInstanceArn" :http-label common-lisp:t)
                                 (app-instance-retention-settings :target-type
                                  app-instance-retention-settings :required
                                  common-lisp:t :member-name
                                  "AppInstanceRetentionSettings"))
                                (:shape-name
                                 "PutAppInstanceRetentionSettingsRequest"))

(smithy/sdk/shapes:define-output put-app-instance-retention-settings-response
                                 common-lisp:nil
                                 ((app-instance-retention-settings :target-type
                                   app-instance-retention-settings :member-name
                                   "AppInstanceRetentionSettings")
                                  (initiate-deletion-timestamp :target-type
                                   timestamp :member-name
                                   "InitiateDeletionTimestamp"))
                                 (:shape-name
                                  "PutAppInstanceRetentionSettingsResponse"))

(smithy/sdk/shapes:define-input
 put-app-instance-user-expiration-settings-request common-lisp:nil
 ((app-instance-user-arn :target-type chime-arn :required common-lisp:t
   :member-name "AppInstanceUserArn" :http-label common-lisp:t)
  (expiration-settings :target-type expiration-settings :member-name
   "ExpirationSettings"))
 (:shape-name "PutAppInstanceUserExpirationSettingsRequest"))

(smithy/sdk/shapes:define-output
 put-app-instance-user-expiration-settings-response common-lisp:nil
 ((app-instance-user-arn :target-type chime-arn :member-name
   "AppInstanceUserArn")
  (expiration-settings :target-type expiration-settings :member-name
   "ExpirationSettings"))
 (:shape-name "PutAppInstanceUserExpirationSettingsResponse"))

(smithy/sdk/shapes:define-input register-app-instance-user-endpoint-request
                                common-lisp:nil
                                ((app-instance-user-arn :target-type
                                  sensitive-chime-arn :required common-lisp:t
                                  :member-name "AppInstanceUserArn" :http-label
                                  common-lisp:t)
                                 (name :target-type sensitive-string1600
                                  :member-name "Name")
                                 (type :target-type
                                  app-instance-user-endpoint-type :required
                                  common-lisp:t :member-name "Type")
                                 (resource-arn :target-type chime-arn :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (endpoint-attributes :target-type
                                  endpoint-attributes :required common-lisp:t
                                  :member-name "EndpointAttributes")
                                 (client-request-token :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "ClientRequestToken")
                                 (allow-messages :target-type allow-messages
                                  :member-name "AllowMessages"))
                                (:shape-name
                                 "RegisterAppInstanceUserEndpointRequest"))

(smithy/sdk/shapes:define-output register-app-instance-user-endpoint-response
                                 common-lisp:nil
                                 ((app-instance-user-arn :target-type chime-arn
                                   :member-name "AppInstanceUserArn")
                                  (endpoint-id :target-type string64
                                   :member-name "EndpointId"))
                                 (:shape-name
                                  "RegisterAppInstanceUserEndpointResponse"))

(smithy/sdk/shapes:define-error resource-limit-exceeded-exception
                                common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ResourceLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type resource-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum responds-to
    common-lisp:nil
  (:standard-messages "STANDARD_MESSAGES"))

(smithy/sdk/shapes:define-type retention-days smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type sensitive-chime-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sensitive-string1600
                               smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-enum standard-messages
    common-lisp:nil
  (:auto "AUTO")
  (:all "ALL")
  (:mentions "MENTIONS")
  (:none "NONE"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string1600 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string64 smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-enum targeted-messages
    common-lisp:nil
  (:all "ALL")
  (:none "NONE"))

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

(smithy/sdk/shapes:define-input update-app-instance-bot-request common-lisp:nil
                                ((app-instance-bot-arn :target-type chime-arn
                                  :required common-lisp:t :member-name
                                  "AppInstanceBotArn" :http-label
                                  common-lisp:t)
                                 (name :target-type resource-name :required
                                  common-lisp:t :member-name "Name")
                                 (metadata :target-type metadata :required
                                  common-lisp:t :member-name "Metadata")
                                 (configuration :target-type configuration
                                  :member-name "Configuration"))
                                (:shape-name "UpdateAppInstanceBotRequest"))

(smithy/sdk/shapes:define-output update-app-instance-bot-response
                                 common-lisp:nil
                                 ((app-instance-bot-arn :target-type chime-arn
                                   :member-name "AppInstanceBotArn"))
                                 (:shape-name "UpdateAppInstanceBotResponse"))

(smithy/sdk/shapes:define-input update-app-instance-request common-lisp:nil
                                ((app-instance-arn :target-type chime-arn
                                  :required common-lisp:t :member-name
                                  "AppInstanceArn" :http-label common-lisp:t)
                                 (name :target-type non-empty-resource-name
                                  :required common-lisp:t :member-name "Name")
                                 (metadata :target-type metadata :required
                                  common-lisp:t :member-name "Metadata"))
                                (:shape-name "UpdateAppInstanceRequest"))

(smithy/sdk/shapes:define-output update-app-instance-response common-lisp:nil
                                 ((app-instance-arn :target-type chime-arn
                                   :member-name "AppInstanceArn"))
                                 (:shape-name "UpdateAppInstanceResponse"))

(smithy/sdk/shapes:define-input update-app-instance-user-endpoint-request
                                common-lisp:nil
                                ((app-instance-user-arn :target-type chime-arn
                                  :required common-lisp:t :member-name
                                  "AppInstanceUserArn" :http-label
                                  common-lisp:t)
                                 (endpoint-id :target-type string64 :required
                                  common-lisp:t :member-name "EndpointId"
                                  :http-label common-lisp:t)
                                 (name :target-type sensitive-string1600
                                  :member-name "Name")
                                 (allow-messages :target-type allow-messages
                                  :member-name "AllowMessages"))
                                (:shape-name
                                 "UpdateAppInstanceUserEndpointRequest"))

(smithy/sdk/shapes:define-output update-app-instance-user-endpoint-response
                                 common-lisp:nil
                                 ((app-instance-user-arn :target-type chime-arn
                                   :member-name "AppInstanceUserArn")
                                  (endpoint-id :target-type string64
                                   :member-name "EndpointId"))
                                 (:shape-name
                                  "UpdateAppInstanceUserEndpointResponse"))

(smithy/sdk/shapes:define-input update-app-instance-user-request
                                common-lisp:nil
                                ((app-instance-user-arn :target-type chime-arn
                                  :required common-lisp:t :member-name
                                  "AppInstanceUserArn" :http-label
                                  common-lisp:t)
                                 (name :target-type user-name :required
                                  common-lisp:t :member-name "Name")
                                 (metadata :target-type metadata :required
                                  common-lisp:t :member-name "Metadata"))
                                (:shape-name "UpdateAppInstanceUserRequest"))

(smithy/sdk/shapes:define-output update-app-instance-user-response
                                 common-lisp:nil
                                 ((app-instance-user-arn :target-type chime-arn
                                   :member-name "AppInstanceUserArn"))
                                 (:shape-name "UpdateAppInstanceUserResponse"))

(smithy/sdk/shapes:define-type user-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type user-name smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-app-instance :shape-name
                                       "CreateAppInstance" :input
                                       create-app-instance-request :output
                                       create-app-instance-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri "/app-instances"
                                       :code 201)

(smithy/sdk/operation:define-operation create-app-instance-admin :shape-name
                                       "CreateAppInstanceAdmin" :input
                                       create-app-instance-admin-request
                                       :output
                                       create-app-instance-admin-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/app-instances/{AppInstanceArn}/admins"
                                       :code 201)

(smithy/sdk/operation:define-operation create-app-instance-bot :shape-name
                                       "CreateAppInstanceBot" :input
                                       create-app-instance-bot-request :output
                                       create-app-instance-bot-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri "/app-instance-bots"
                                       :code 201)

(smithy/sdk/operation:define-operation create-app-instance-user :shape-name
                                       "CreateAppInstanceUser" :input
                                       create-app-instance-user-request :output
                                       create-app-instance-user-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/app-instance-users" :code 201)

(smithy/sdk/operation:define-operation delete-app-instance :shape-name
                                       "DeleteAppInstance" :input
                                       delete-app-instance-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "DELETE" :uri
                                       "/app-instances/{AppInstanceArn}" :code
                                       204)

(smithy/sdk/operation:define-operation delete-app-instance-admin :shape-name
                                       "DeleteAppInstanceAdmin" :input
                                       delete-app-instance-admin-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "DELETE" :uri
                                       "/app-instances/{AppInstanceArn}/admins/{AppInstanceAdminArn}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-app-instance-bot :shape-name
                                       "DeleteAppInstanceBot" :input
                                       delete-app-instance-bot-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "DELETE" :uri
                                       "/app-instance-bots/{AppInstanceBotArn}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-app-instance-user :shape-name
                                       "DeleteAppInstanceUser" :input
                                       delete-app-instance-user-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "DELETE" :uri
                                       "/app-instance-users/{AppInstanceUserArn}"
                                       :code 204)

(smithy/sdk/operation:define-operation deregister-app-instance-user-endpoint
                                       :shape-name
                                       "DeregisterAppInstanceUserEndpoint"
                                       :input
                                       deregister-app-instance-user-endpoint-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "DELETE" :uri
                                       "/app-instance-users/{AppInstanceUserArn}/endpoints/{EndpointId}"
                                       :code 204)

(smithy/sdk/operation:define-operation describe-app-instance :shape-name
                                       "DescribeAppInstance" :input
                                       describe-app-instance-request :output
                                       describe-app-instance-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/app-instances/{AppInstanceArn}" :code
                                       200)

(smithy/sdk/operation:define-operation describe-app-instance-admin :shape-name
                                       "DescribeAppInstanceAdmin" :input
                                       describe-app-instance-admin-request
                                       :output
                                       describe-app-instance-admin-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/app-instances/{AppInstanceArn}/admins/{AppInstanceAdminArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-app-instance-bot :shape-name
                                       "DescribeAppInstanceBot" :input
                                       describe-app-instance-bot-request
                                       :output
                                       describe-app-instance-bot-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/app-instance-bots/{AppInstanceBotArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-app-instance-user :shape-name
                                       "DescribeAppInstanceUser" :input
                                       describe-app-instance-user-request
                                       :output
                                       describe-app-instance-user-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/app-instance-users/{AppInstanceUserArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-app-instance-user-endpoint
                                       :shape-name
                                       "DescribeAppInstanceUserEndpoint" :input
                                       describe-app-instance-user-endpoint-request
                                       :output
                                       describe-app-instance-user-endpoint-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/app-instance-users/{AppInstanceUserArn}/endpoints/{EndpointId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-app-instance-retention-settings
                                       :shape-name
                                       "GetAppInstanceRetentionSettings" :input
                                       get-app-instance-retention-settings-request
                                       :output
                                       get-app-instance-retention-settings-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/app-instances/{AppInstanceArn}/retention-settings"
                                       :code 200)

(smithy/sdk/operation:define-operation list-app-instance-admins :shape-name
                                       "ListAppInstanceAdmins" :input
                                       list-app-instance-admins-request :output
                                       list-app-instance-admins-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/app-instances/{AppInstanceArn}/admins"
                                       :code 200)

(smithy/sdk/operation:define-operation list-app-instance-bots :shape-name
                                       "ListAppInstanceBots" :input
                                       list-app-instance-bots-request :output
                                       list-app-instance-bots-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri "/app-instance-bots"
                                       :code 200)

(smithy/sdk/operation:define-operation list-app-instance-user-endpoints
                                       :shape-name
                                       "ListAppInstanceUserEndpoints" :input
                                       list-app-instance-user-endpoints-request
                                       :output
                                       list-app-instance-user-endpoints-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/app-instance-users/{AppInstanceUserArn}/endpoints"
                                       :code 200)

(smithy/sdk/operation:define-operation list-app-instance-users :shape-name
                                       "ListAppInstanceUsers" :input
                                       list-app-instance-users-request :output
                                       list-app-instance-users-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri "/app-instance-users"
                                       :code 200)

(smithy/sdk/operation:define-operation list-app-instances :shape-name
                                       "ListAppInstances" :input
                                       list-app-instances-request :output
                                       list-app-instances-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri "/app-instances"
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

(smithy/sdk/operation:define-operation put-app-instance-retention-settings
                                       :shape-name
                                       "PutAppInstanceRetentionSettings" :input
                                       put-app-instance-retention-settings-request
                                       :output
                                       put-app-instance-retention-settings-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "PUT" :uri
                                       "/app-instances/{AppInstanceArn}/retention-settings"
                                       :code 200)

(smithy/sdk/operation:define-operation
 put-app-instance-user-expiration-settings :shape-name
 "PutAppInstanceUserExpirationSettings" :input
 put-app-instance-user-expiration-settings-request :output
 put-app-instance-user-expiration-settings-response :errors
 (bad-request-exception conflict-exception forbidden-exception
  service-failure-exception service-unavailable-exception
  throttled-client-exception unauthorized-client-exception)
 :method "PUT" :uri
 "/app-instance-users/{AppInstanceUserArn}/expiration-settings" :code 200)

(smithy/sdk/operation:define-operation register-app-instance-user-endpoint
                                       :shape-name
                                       "RegisterAppInstanceUserEndpoint" :input
                                       register-app-instance-user-endpoint-request
                                       :output
                                       register-app-instance-user-endpoint-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/app-instance-users/{AppInstanceUserArn}/endpoints"
                                       :code 201)

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

(smithy/sdk/operation:define-operation update-app-instance :shape-name
                                       "UpdateAppInstance" :input
                                       update-app-instance-request :output
                                       update-app-instance-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "PUT" :uri
                                       "/app-instances/{AppInstanceArn}" :code
                                       200)

(smithy/sdk/operation:define-operation update-app-instance-bot :shape-name
                                       "UpdateAppInstanceBot" :input
                                       update-app-instance-bot-request :output
                                       update-app-instance-bot-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "PUT" :uri
                                       "/app-instance-bots/{AppInstanceBotArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-app-instance-user :shape-name
                                       "UpdateAppInstanceUser" :input
                                       update-app-instance-user-request :output
                                       update-app-instance-user-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "PUT" :uri
                                       "/app-instance-users/{AppInstanceUserArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-app-instance-user-endpoint
                                       :shape-name
                                       "UpdateAppInstanceUserEndpoint" :input
                                       update-app-instance-user-endpoint-request
                                       :output
                                       update-app-instance-user-endpoint-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "PUT" :uri
                                       "/app-instance-users/{AppInstanceUserArn}/endpoints/{EndpointId}"
                                       :code 200)
