(uiop/package:define-package #:pira/ivschat (:use)
                             (:export #:amazon-interactive-video-service-chat
                              #:bucket-name #:chat-token
                              #:chat-token-attributes #:chat-token-capabilities
                              #:chat-token-capability
                              #:cloud-watch-logs-destination-configuration
                              #:create-chat-token #:create-chat-token-request
                              #:create-chat-token-response
                              #:create-logging-configuration
                              #:create-logging-configuration-request
                              #:create-logging-configuration-response
                              #:create-logging-configuration-state
                              #:create-room #:create-room-request
                              #:create-room-response
                              #:delete-logging-configuration
                              #:delete-logging-configuration-request
                              #:delete-message #:delete-message-request
                              #:delete-message-response #:delete-room
                              #:delete-room-request #:delivery-stream-name
                              #:destination-configuration #:disconnect-user
                              #:disconnect-user-request
                              #:disconnect-user-response #:error-message
                              #:event-attributes #:event-name #:fallback-result
                              #:field-name #:firehose-destination-configuration
                              #:get-logging-configuration
                              #:get-logging-configuration-request
                              #:get-logging-configuration-response #:get-room
                              #:get-room-request #:get-room-response #:id
                              #:lambda-arn #:limit
                              #:list-logging-configurations
                              #:list-logging-configurations-request
                              #:list-logging-configurations-response
                              #:list-rooms #:list-rooms-request
                              #:list-rooms-response #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:log-group-name #:logging-configuration-arn
                              #:logging-configuration-id
                              #:logging-configuration-identifier
                              #:logging-configuration-identifier-list
                              #:logging-configuration-list
                              #:logging-configuration-name
                              #:logging-configuration-state
                              #:logging-configuration-summary
                              #:max-logging-configuration-results
                              #:max-room-results #:message-id
                              #:message-review-handler #:pagination-token
                              #:reason #:resource-arn #:resource-id
                              #:resource-type #:room-arn #:room-id
                              #:room-identifier #:room-list
                              #:room-max-message-length
                              #:room-max-message-rate-per-second #:room-name
                              #:room-summary #:s3destination-configuration
                              #:send-event #:send-event-request
                              #:send-event-response
                              #:session-duration-in-minutes #:string #:tag-key
                              #:tag-key-list #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:tags #:time #:untag-resource
                              #:untag-resource-request
                              #:untag-resource-response
                              #:update-logging-configuration
                              #:update-logging-configuration-request
                              #:update-logging-configuration-response
                              #:update-logging-configuration-state
                              #:update-room #:update-room-request
                              #:update-room-response #:user-id
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason))
(common-lisp:in-package #:pira/ivschat)

(smithy/sdk/service:define-service amazon-interactive-video-service-chat
                                   :shape-name
                                   "AmazonInteractiveVideoServiceChat" :version
                                   "2020-07-14" :title
                                   "Amazon Interactive Video Service Chat"
                                   :operations
                                   '(create-chat-token
                                     create-logging-configuration create-room
                                     delete-logging-configuration
                                     delete-message delete-room disconnect-user
                                     get-logging-configuration get-room
                                     list-logging-configurations list-rooms
                                     list-tags-for-resource send-event
                                     tag-resource untag-resource
                                     update-logging-configuration update-room)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "ivschat")
                                      ("arnNamespace" . "ivschat")
                                      ("cloudFormationName" . "IVSChat")
                                      ("cloudTrailEventSource"
                                       . "ivschat.amazonaws.com"))
                                     ("aws.auth#sigv4" ("name" . "ivschat"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type chat-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map chat-token-attributes :key string :value string)

(smithy/sdk/shapes:define-list chat-token-capabilities :member
                               chat-token-capability)

(smithy/sdk/shapes:define-type chat-token-capability
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cloud-watch-logs-destination-configuration
                                    common-lisp:nil
                                    ((log-group-name :target-type
                                      log-group-name :required common-lisp:t
                                      :member-name "logGroupName"))
                                    (:shape-name
                                     "CloudWatchLogsDestinationConfiguration"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "resourceId")
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "resourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure create-chat-token-request common-lisp:nil
                                    ((room-identifier :target-type
                                      room-identifier :required common-lisp:t
                                      :member-name "roomIdentifier")
                                     (user-id :target-type user-id :required
                                      common-lisp:t :member-name "userId")
                                     (capabilities :target-type
                                      chat-token-capabilities :member-name
                                      "capabilities")
                                     (session-duration-in-minutes :target-type
                                      session-duration-in-minutes :member-name
                                      "sessionDurationInMinutes")
                                     (attributes :target-type
                                      chat-token-attributes :member-name
                                      "attributes"))
                                    (:shape-name "CreateChatTokenRequest"))

(smithy/sdk/shapes:define-structure create-chat-token-response common-lisp:nil
                                    ((token :target-type chat-token
                                      :member-name "token")
                                     (token-expiration-time :target-type time
                                      :member-name "tokenExpirationTime")
                                     (session-expiration-time :target-type time
                                      :member-name "sessionExpirationTime"))
                                    (:shape-name "CreateChatTokenResponse"))

(smithy/sdk/shapes:define-structure create-logging-configuration-request
                                    common-lisp:nil
                                    ((name :target-type
                                      logging-configuration-name :member-name
                                      "name")
                                     (destination-configuration :target-type
                                      destination-configuration :required
                                      common-lisp:t :member-name
                                      "destinationConfiguration")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name
                                     "CreateLoggingConfigurationRequest"))

(smithy/sdk/shapes:define-structure create-logging-configuration-response
                                    common-lisp:nil
                                    ((arn :target-type
                                      logging-configuration-arn :member-name
                                      "arn")
                                     (id :target-type logging-configuration-id
                                      :member-name "id")
                                     (create-time :target-type time
                                      :member-name "createTime")
                                     (update-time :target-type time
                                      :member-name "updateTime")
                                     (name :target-type
                                      logging-configuration-name :member-name
                                      "name")
                                     (destination-configuration :target-type
                                      destination-configuration :member-name
                                      "destinationConfiguration")
                                     (state :target-type
                                      create-logging-configuration-state
                                      :member-name "state")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name
                                     "CreateLoggingConfigurationResponse"))

(smithy/sdk/shapes:define-type create-logging-configuration-state
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure create-room-request common-lisp:nil
                                    ((name :target-type room-name :member-name
                                      "name")
                                     (maximum-message-rate-per-second
                                      :target-type
                                      room-max-message-rate-per-second
                                      :member-name
                                      "maximumMessageRatePerSecond")
                                     (maximum-message-length :target-type
                                      room-max-message-length :member-name
                                      "maximumMessageLength")
                                     (message-review-handler :target-type
                                      message-review-handler :member-name
                                      "messageReviewHandler")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (logging-configuration-identifiers
                                      :target-type
                                      logging-configuration-identifier-list
                                      :member-name
                                      "loggingConfigurationIdentifiers"))
                                    (:shape-name "CreateRoomRequest"))

(smithy/sdk/shapes:define-structure create-room-response common-lisp:nil
                                    ((arn :target-type room-arn :member-name
                                      "arn")
                                     (id :target-type room-id :member-name
                                      "id")
                                     (name :target-type room-name :member-name
                                      "name")
                                     (create-time :target-type time
                                      :member-name "createTime")
                                     (update-time :target-type time
                                      :member-name "updateTime")
                                     (maximum-message-rate-per-second
                                      :target-type
                                      room-max-message-rate-per-second
                                      :member-name
                                      "maximumMessageRatePerSecond")
                                     (maximum-message-length :target-type
                                      room-max-message-length :member-name
                                      "maximumMessageLength")
                                     (message-review-handler :target-type
                                      message-review-handler :member-name
                                      "messageReviewHandler")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (logging-configuration-identifiers
                                      :target-type
                                      logging-configuration-identifier-list
                                      :member-name
                                      "loggingConfigurationIdentifiers"))
                                    (:shape-name "CreateRoomResponse"))

(smithy/sdk/shapes:define-structure delete-logging-configuration-request
                                    common-lisp:nil
                                    ((identifier :target-type
                                      logging-configuration-identifier
                                      :required common-lisp:t :member-name
                                      "identifier"))
                                    (:shape-name
                                     "DeleteLoggingConfigurationRequest"))

(smithy/sdk/shapes:define-structure delete-message-request common-lisp:nil
                                    ((room-identifier :target-type
                                      room-identifier :required common-lisp:t
                                      :member-name "roomIdentifier")
                                     (id :target-type message-id :required
                                      common-lisp:t :member-name "id")
                                     (reason :target-type reason :member-name
                                      "reason"))
                                    (:shape-name "DeleteMessageRequest"))

(smithy/sdk/shapes:define-structure delete-message-response common-lisp:nil
                                    ((id :target-type id :member-name "id"))
                                    (:shape-name "DeleteMessageResponse"))

(smithy/sdk/shapes:define-structure delete-room-request common-lisp:nil
                                    ((identifier :target-type room-identifier
                                      :required common-lisp:t :member-name
                                      "identifier"))
                                    (:shape-name "DeleteRoomRequest"))

(smithy/sdk/shapes:define-type delivery-stream-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union destination-configuration common-lisp:nil
                                ((s3 :target-type s3destination-configuration
                                  :member-name "s3")
                                 (cloud-watch-logs :target-type
                                  cloud-watch-logs-destination-configuration
                                  :member-name "cloudWatchLogs")
                                 (firehose :target-type
                                  firehose-destination-configuration
                                  :member-name "firehose"))
                                (:shape-name "DestinationConfiguration"))

(smithy/sdk/shapes:define-structure disconnect-user-request common-lisp:nil
                                    ((room-identifier :target-type
                                      room-identifier :required common-lisp:t
                                      :member-name "roomIdentifier")
                                     (user-id :target-type user-id :required
                                      common-lisp:t :member-name "userId")
                                     (reason :target-type reason :member-name
                                      "reason"))
                                    (:shape-name "DisconnectUserRequest"))

(smithy/sdk/shapes:define-structure disconnect-user-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DisconnectUserResponse"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map event-attributes :key string :value string)

(smithy/sdk/shapes:define-type event-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type fallback-result smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type field-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure firehose-destination-configuration
                                    common-lisp:nil
                                    ((delivery-stream-name :target-type
                                      delivery-stream-name :required
                                      common-lisp:t :member-name
                                      "deliveryStreamName"))
                                    (:shape-name
                                     "FirehoseDestinationConfiguration"))

(smithy/sdk/shapes:define-structure get-logging-configuration-request
                                    common-lisp:nil
                                    ((identifier :target-type
                                      logging-configuration-identifier
                                      :required common-lisp:t :member-name
                                      "identifier"))
                                    (:shape-name
                                     "GetLoggingConfigurationRequest"))

(smithy/sdk/shapes:define-structure get-logging-configuration-response
                                    common-lisp:nil
                                    ((arn :target-type
                                      logging-configuration-arn :member-name
                                      "arn")
                                     (id :target-type logging-configuration-id
                                      :member-name "id")
                                     (create-time :target-type time
                                      :member-name "createTime")
                                     (update-time :target-type time
                                      :member-name "updateTime")
                                     (name :target-type
                                      logging-configuration-name :member-name
                                      "name")
                                     (destination-configuration :target-type
                                      destination-configuration :member-name
                                      "destinationConfiguration")
                                     (state :target-type
                                      logging-configuration-state :member-name
                                      "state")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name
                                     "GetLoggingConfigurationResponse"))

(smithy/sdk/shapes:define-structure get-room-request common-lisp:nil
                                    ((identifier :target-type room-identifier
                                      :required common-lisp:t :member-name
                                      "identifier"))
                                    (:shape-name "GetRoomRequest"))

(smithy/sdk/shapes:define-structure get-room-response common-lisp:nil
                                    ((arn :target-type room-arn :member-name
                                      "arn")
                                     (id :target-type room-id :member-name
                                      "id")
                                     (name :target-type room-name :member-name
                                      "name")
                                     (create-time :target-type time
                                      :member-name "createTime")
                                     (update-time :target-type time
                                      :member-name "updateTime")
                                     (maximum-message-rate-per-second
                                      :target-type
                                      room-max-message-rate-per-second
                                      :member-name
                                      "maximumMessageRatePerSecond")
                                     (maximum-message-length :target-type
                                      room-max-message-length :member-name
                                      "maximumMessageLength")
                                     (message-review-handler :target-type
                                      message-review-handler :member-name
                                      "messageReviewHandler")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (logging-configuration-identifiers
                                      :target-type
                                      logging-configuration-identifier-list
                                      :member-name
                                      "loggingConfigurationIdentifiers"))
                                    (:shape-name "GetRoomResponse"))

(smithy/sdk/shapes:define-type id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type lambda-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type limit smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure list-logging-configurations-request
                                    common-lisp:nil
                                    ((next-token :target-type pagination-token
                                      :member-name "nextToken")
                                     (max-results :target-type
                                      max-logging-configuration-results
                                      :member-name "maxResults"))
                                    (:shape-name
                                     "ListLoggingConfigurationsRequest"))

(smithy/sdk/shapes:define-structure list-logging-configurations-response
                                    common-lisp:nil
                                    ((logging-configurations :target-type
                                      logging-configuration-list :required
                                      common-lisp:t :member-name
                                      "loggingConfigurations")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListLoggingConfigurationsResponse"))

(smithy/sdk/shapes:define-structure list-rooms-request common-lisp:nil
                                    ((name :target-type room-name :member-name
                                      "name")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken")
                                     (max-results :target-type max-room-results
                                      :member-name "maxResults")
                                     (message-review-handler-uri :target-type
                                      lambda-arn :member-name
                                      "messageReviewHandlerUri")
                                     (logging-configuration-identifier
                                      :target-type
                                      logging-configuration-identifier
                                      :member-name
                                      "loggingConfigurationIdentifier"))
                                    (:shape-name "ListRoomsRequest"))

(smithy/sdk/shapes:define-structure list-rooms-response common-lisp:nil
                                    ((rooms :target-type room-list :required
                                      common-lisp:t :member-name "rooms")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListRoomsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((tags :target-type tags :required
                                      common-lisp:t :member-name "tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type log-group-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type logging-configuration-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type logging-configuration-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type logging-configuration-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list logging-configuration-identifier-list :member
                               logging-configuration-identifier)

(smithy/sdk/shapes:define-list logging-configuration-list :member
                               logging-configuration-summary)

(smithy/sdk/shapes:define-type logging-configuration-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type logging-configuration-state
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure logging-configuration-summary
                                    common-lisp:nil
                                    ((arn :target-type
                                      logging-configuration-arn :member-name
                                      "arn")
                                     (id :target-type logging-configuration-id
                                      :member-name "id")
                                     (create-time :target-type time
                                      :member-name "createTime")
                                     (update-time :target-type time
                                      :member-name "updateTime")
                                     (name :target-type
                                      logging-configuration-name :member-name
                                      "name")
                                     (destination-configuration :target-type
                                      destination-configuration :member-name
                                      "destinationConfiguration")
                                     (state :target-type
                                      logging-configuration-state :member-name
                                      "state")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "LoggingConfigurationSummary"))

(smithy/sdk/shapes:define-type max-logging-configuration-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-room-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type message-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure message-review-handler common-lisp:nil
                                    ((uri :target-type lambda-arn :member-name
                                      "uri")
                                     (fallback-result :target-type
                                      fallback-result :member-name
                                      "fallbackResult"))
                                    (:shape-name "MessageReviewHandler"))

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error pending-verification common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "PendingVerification")
                                (:error-code 403))

(smithy/sdk/shapes:define-type reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "resourceId")
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "resourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type resource-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type room-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type room-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type room-identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list room-list :member room-summary)

(smithy/sdk/shapes:define-type room-max-message-length
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type room-max-message-rate-per-second
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type room-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure room-summary common-lisp:nil
                                    ((arn :target-type room-arn :member-name
                                      "arn")
                                     (id :target-type room-id :member-name
                                      "id")
                                     (name :target-type room-name :member-name
                                      "name")
                                     (message-review-handler :target-type
                                      message-review-handler :member-name
                                      "messageReviewHandler")
                                     (create-time :target-type time
                                      :member-name "createTime")
                                     (update-time :target-type time
                                      :member-name "updateTime")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (logging-configuration-identifiers
                                      :target-type
                                      logging-configuration-identifier-list
                                      :member-name
                                      "loggingConfigurationIdentifiers"))
                                    (:shape-name "RoomSummary"))

(smithy/sdk/shapes:define-structure s3destination-configuration common-lisp:nil
                                    ((bucket-name :target-type bucket-name
                                      :required common-lisp:t :member-name
                                      "bucketName"))
                                    (:shape-name "S3DestinationConfiguration"))

(smithy/sdk/shapes:define-structure send-event-request common-lisp:nil
                                    ((room-identifier :target-type
                                      room-identifier :required common-lisp:t
                                      :member-name "roomIdentifier")
                                     (event-name :target-type event-name
                                      :required common-lisp:t :member-name
                                      "eventName")
                                     (attributes :target-type event-attributes
                                      :member-name "attributes"))
                                    (:shape-name "SendEventRequest"))

(smithy/sdk/shapes:define-structure send-event-response common-lisp:nil
                                    ((id :target-type id :member-name "id"))
                                    (:shape-name "SendEventResponse"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "resourceId")
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "resourceType")
                                 (limit :target-type limit :required
                                  common-lisp:t :member-name "limit"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type session-duration-in-minutes
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t)
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-structure tag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map tags :key tag-key :value tag-value)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "resourceId")
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "resourceType")
                                 (limit :target-type limit :required
                                  common-lisp:t :member-name "limit"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type time smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-structure untag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-structure update-logging-configuration-request
                                    common-lisp:nil
                                    ((identifier :target-type
                                      logging-configuration-identifier
                                      :required common-lisp:t :member-name
                                      "identifier")
                                     (name :target-type
                                      logging-configuration-name :member-name
                                      "name")
                                     (destination-configuration :target-type
                                      destination-configuration :member-name
                                      "destinationConfiguration"))
                                    (:shape-name
                                     "UpdateLoggingConfigurationRequest"))

(smithy/sdk/shapes:define-structure update-logging-configuration-response
                                    common-lisp:nil
                                    ((arn :target-type
                                      logging-configuration-arn :member-name
                                      "arn")
                                     (id :target-type logging-configuration-id
                                      :member-name "id")
                                     (create-time :target-type time
                                      :member-name "createTime")
                                     (update-time :target-type time
                                      :member-name "updateTime")
                                     (name :target-type
                                      logging-configuration-name :member-name
                                      "name")
                                     (destination-configuration :target-type
                                      destination-configuration :member-name
                                      "destinationConfiguration")
                                     (state :target-type
                                      update-logging-configuration-state
                                      :member-name "state")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name
                                     "UpdateLoggingConfigurationResponse"))

(smithy/sdk/shapes:define-type update-logging-configuration-state
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure update-room-request common-lisp:nil
                                    ((identifier :target-type room-identifier
                                      :required common-lisp:t :member-name
                                      "identifier")
                                     (name :target-type room-name :member-name
                                      "name")
                                     (maximum-message-rate-per-second
                                      :target-type
                                      room-max-message-rate-per-second
                                      :member-name
                                      "maximumMessageRatePerSecond")
                                     (maximum-message-length :target-type
                                      room-max-message-length :member-name
                                      "maximumMessageLength")
                                     (message-review-handler :target-type
                                      message-review-handler :member-name
                                      "messageReviewHandler")
                                     (logging-configuration-identifiers
                                      :target-type
                                      logging-configuration-identifier-list
                                      :member-name
                                      "loggingConfigurationIdentifiers"))
                                    (:shape-name "UpdateRoomRequest"))

(smithy/sdk/shapes:define-structure update-room-response common-lisp:nil
                                    ((arn :target-type room-arn :member-name
                                      "arn")
                                     (id :target-type room-id :member-name
                                      "id")
                                     (name :target-type room-name :member-name
                                      "name")
                                     (create-time :target-type time
                                      :member-name "createTime")
                                     (update-time :target-type time
                                      :member-name "updateTime")
                                     (maximum-message-rate-per-second
                                      :target-type
                                      room-max-message-rate-per-second
                                      :member-name
                                      "maximumMessageRatePerSecond")
                                     (maximum-message-length :target-type
                                      room-max-message-length :member-name
                                      "maximumMessageLength")
                                     (message-review-handler :target-type
                                      message-review-handler :member-name
                                      "messageReviewHandler")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (logging-configuration-identifiers
                                      :target-type
                                      logging-configuration-identifier-list
                                      :member-name
                                      "loggingConfigurationIdentifiers"))
                                    (:shape-name "UpdateRoomResponse"))

(smithy/sdk/shapes:define-type user-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (reason :target-type
                                  validation-exception-reason :required
                                  common-lisp:t :member-name "reason")
                                 (field-list :target-type
                                  validation-exception-field-list :member-name
                                  "fieldList"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type field-name :required
                                      common-lisp:t :member-name "name")
                                     (message :target-type error-message
                                      :required common-lisp:t :member-name
                                      "message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-type validation-exception-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-chat-token :shape-name
                                       "CreateChatToken" :input
                                       create-chat-token-request :output
                                       create-chat-token-response :errors
                                       (access-denied-exception
                                        pending-verification
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/CreateChatToken")

(smithy/sdk/operation:define-operation create-logging-configuration :shape-name
                                       "CreateLoggingConfiguration" :input
                                       create-logging-configuration-request
                                       :output
                                       create-logging-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception pending-verification
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/CreateLoggingConfiguration")

(smithy/sdk/operation:define-operation create-room :shape-name "CreateRoom"
                                       :input create-room-request :output
                                       create-room-response :errors
                                       (access-denied-exception
                                        conflict-exception pending-verification
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/CreateRoom")

(smithy/sdk/operation:define-operation delete-logging-configuration :shape-name
                                       "DeleteLoggingConfiguration" :input
                                       delete-logging-configuration-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception pending-verification
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/DeleteLoggingConfiguration" :code 204)

(smithy/sdk/operation:define-operation delete-message :shape-name
                                       "DeleteMessage" :input
                                       delete-message-request :output
                                       delete-message-response :errors
                                       (access-denied-exception
                                        pending-verification
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/DeleteMessage")

(smithy/sdk/operation:define-operation delete-room :shape-name "DeleteRoom"
                                       :input delete-room-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        pending-verification
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/DeleteRoom" :code
                                       204)

(smithy/sdk/operation:define-operation disconnect-user :shape-name
                                       "DisconnectUser" :input
                                       disconnect-user-request :output
                                       disconnect-user-response :errors
                                       (access-denied-exception
                                        pending-verification
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/DisconnectUser")

(smithy/sdk/operation:define-operation get-logging-configuration :shape-name
                                       "GetLoggingConfiguration" :input
                                       get-logging-configuration-request
                                       :output
                                       get-logging-configuration-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/GetLoggingConfiguration")

(smithy/sdk/operation:define-operation get-room :shape-name "GetRoom" :input
                                       get-room-request :output
                                       get-room-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/GetRoom")

(smithy/sdk/operation:define-operation list-logging-configurations :shape-name
                                       "ListLoggingConfigurations" :input
                                       list-logging-configurations-request
                                       :output
                                       list-logging-configurations-response
                                       :errors
                                       (access-denied-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ListLoggingConfigurations")

(smithy/sdk/operation:define-operation list-rooms :shape-name "ListRooms"
                                       :input list-rooms-request :output
                                       list-rooms-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/ListRooms")

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation send-event :shape-name "SendEvent"
                                       :input send-event-request :output
                                       send-event-response :errors
                                       (access-denied-exception
                                        pending-verification
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/SendEvent")

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation update-logging-configuration :shape-name
                                       "UpdateLoggingConfiguration" :input
                                       update-logging-configuration-request
                                       :output
                                       update-logging-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception pending-verification
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/UpdateLoggingConfiguration")

(smithy/sdk/operation:define-operation update-room :shape-name "UpdateRoom"
                                       :input update-room-request :output
                                       update-room-response :errors
                                       (access-denied-exception
                                        pending-verification
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/UpdateRoom")
