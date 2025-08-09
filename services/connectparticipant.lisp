(uiop/package:define-package #:pira/connectparticipant (:use)
                             (:export #:arn #:access-denied-exception
                              #:amazon-connect-participant-service-lambda
                              #:artifact-id #:artifact-status
                              #:attachment-id-list #:attachment-item
                              #:attachment-name #:attachment-size-in-bytes
                              #:attachments #:authentication-url #:bool
                              #:cancel-participant-authentication
                              #:cancel-participant-authentication-request
                              #:cancel-participant-authentication-response
                              #:chat-content #:chat-content-type #:chat-item-id
                              #:chat-item-type #:client-token
                              #:complete-attachment-upload
                              #:complete-attachment-upload-request
                              #:complete-attachment-upload-response
                              #:conflict-exception #:connection-credentials
                              #:connection-type #:connection-type-list
                              #:contact-id #:content-type
                              #:create-participant-connection
                              #:create-participant-connection-request
                              #:create-participant-connection-response
                              #:describe-view #:describe-view-request
                              #:describe-view-response #:disconnect-participant
                              #:disconnect-participant-request
                              #:disconnect-participant-response #:display-name
                              #:get-attachment #:get-attachment-request
                              #:get-attachment-response
                              #:get-authentication-url
                              #:get-authentication-url-request
                              #:get-authentication-url-response
                              #:get-transcript #:get-transcript-request
                              #:get-transcript-response #:iso8601datetime
                              #:instant #:internal-server-exception #:item
                              #:max-results #:message #:message-metadata
                              #:most-recent #:next-token
                              #:non-empty-client-token #:participant-id
                              #:participant-role #:participant-token
                              #:pre-signed-attachment-url
                              #:pre-signed-connection-url #:reason #:receipt
                              #:receipts #:redirect-uri #:resource-id
                              #:resource-not-found-exception #:resource-type
                              #:scan-direction #:send-event
                              #:send-event-request #:send-event-response
                              #:send-message #:send-message-request
                              #:send-message-response
                              #:service-quota-exceeded-exception #:session-id
                              #:sort-key #:start-attachment-upload
                              #:start-attachment-upload-request
                              #:start-attachment-upload-response
                              #:start-position #:throttling-exception
                              #:transcript #:urlexpiry-in-seconds
                              #:upload-metadata
                              #:upload-metadata-signed-headers
                              #:upload-metadata-signed-headers-key
                              #:upload-metadata-signed-headers-value
                              #:upload-metadata-url #:validation-exception
                              #:view #:view-action #:view-actions
                              #:view-content #:view-id #:view-input-schema
                              #:view-name #:view-template #:view-token
                              #:view-version #:websocket))
(common-lisp:in-package #:pira/connectparticipant)

(smithy/sdk/service:define-service amazon-connect-participant-service-lambda
                                   :shape-name
                                   "AmazonConnectParticipantServiceLambda"
                                   :version "2018-09-07" :title
                                   "Amazon Connect Participant Service" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "ConnectParticipant")
                                      ("arnNamespace" . "connect")
                                      ("cloudFormationName"
                                       . "ConnectParticipant")
                                      ("cloudTrailEventSource"
                                       . "connectparticipant.amazonaws.com")
                                      ("endpointPrefix"
                                       . "participant.connect"))
                                     ("aws.auth#sigv4"
                                      ("name" . "execute-api"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type message :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type artifact-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum artifact-status
    common-lisp:nil
  (:approved "APPROVED")
  (:rejected "REJECTED")
  (:in-progress "IN_PROGRESS"))

(smithy/sdk/shapes:define-list attachment-id-list :member artifact-id)

(smithy/sdk/shapes:define-structure attachment-item common-lisp:nil
                                    ((content-type :target-type content-type
                                      :member-name "ContentType")
                                     (attachment-id :target-type artifact-id
                                      :member-name "AttachmentId")
                                     (attachment-name :target-type
                                      attachment-name :member-name
                                      "AttachmentName")
                                     (status :target-type artifact-status
                                      :member-name "Status"))
                                    (:shape-name "AttachmentItem"))

(smithy/sdk/shapes:define-type attachment-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attachment-size-in-bytes
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-list attachments :member attachment-item)

(smithy/sdk/shapes:define-type authentication-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type bool smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input cancel-participant-authentication-request
                                common-lisp:nil
                                ((session-id :target-type session-id :required
                                  common-lisp:t :member-name "SessionId")
                                 (connection-token :target-type
                                  participant-token :required common-lisp:t
                                  :member-name "ConnectionToken" :http-header
                                  "X-Amz-Bearer"))
                                (:shape-name
                                 "CancelParticipantAuthenticationRequest"))

(smithy/sdk/shapes:define-output cancel-participant-authentication-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "CancelParticipantAuthenticationResponse"))

(smithy/sdk/shapes:define-type chat-content smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type chat-content-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type chat-item-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum chat-item-type
    common-lisp:nil
  (:typing "TYPING")
  (:participant-joined "PARTICIPANT_JOINED")
  (:participant-left "PARTICIPANT_LEFT")
  (:chat-ended "CHAT_ENDED")
  (:transfer-succeeded "TRANSFER_SUCCEEDED")
  (:transfer-failed "TRANSFER_FAILED")
  (:message "MESSAGE")
  (:event "EVENT")
  (:attachment "ATTACHMENT")
  (:connection-ack "CONNECTION_ACK")
  (:message-delivered "MESSAGE_DELIVERED")
  (:message-read "MESSAGE_READ"))

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input complete-attachment-upload-request
                                common-lisp:nil
                                ((attachment-ids :target-type
                                  attachment-id-list :required common-lisp:t
                                  :member-name "AttachmentIds")
                                 (client-token :target-type
                                  non-empty-client-token :required
                                  common-lisp:t :member-name "ClientToken")
                                 (connection-token :target-type
                                  participant-token :required common-lisp:t
                                  :member-name "ConnectionToken" :http-header
                                  "X-Amz-Bearer"))
                                (:shape-name "CompleteAttachmentUploadRequest"))

(smithy/sdk/shapes:define-output complete-attachment-upload-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "CompleteAttachmentUploadResponse"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type reason :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure connection-credentials common-lisp:nil
                                    ((connection-token :target-type
                                      participant-token :member-name
                                      "ConnectionToken")
                                     (expiry :target-type iso8601datetime
                                      :member-name "Expiry"))
                                    (:shape-name "ConnectionCredentials"))

(smithy/sdk/shapes:define-enum connection-type
    common-lisp:nil
  (:websocket "WEBSOCKET")
  (:connection-credentials "CONNECTION_CREDENTIALS"))

(smithy/sdk/shapes:define-list connection-type-list :member connection-type)

(smithy/sdk/shapes:define-type contact-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type content-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-participant-connection-request
                                common-lisp:nil
                                ((type :target-type connection-type-list
                                  :member-name "Type")
                                 (participant-token :target-type
                                  participant-token :required common-lisp:t
                                  :member-name "ParticipantToken" :http-header
                                  "X-Amz-Bearer")
                                 (connect-participant :target-type bool
                                  :member-name "ConnectParticipant"))
                                (:shape-name
                                 "CreateParticipantConnectionRequest"))

(smithy/sdk/shapes:define-output create-participant-connection-response
                                 common-lisp:nil
                                 ((websocket :target-type websocket
                                   :member-name "Websocket")
                                  (connection-credentials :target-type
                                   connection-credentials :member-name
                                   "ConnectionCredentials"))
                                 (:shape-name
                                  "CreateParticipantConnectionResponse"))

(smithy/sdk/shapes:define-input describe-view-request common-lisp:nil
                                ((view-token :target-type view-token :required
                                  common-lisp:t :member-name "ViewToken"
                                  :http-label common-lisp:t)
                                 (connection-token :target-type
                                  participant-token :required common-lisp:t
                                  :member-name "ConnectionToken" :http-header
                                  "X-Amz-Bearer"))
                                (:shape-name "DescribeViewRequest"))

(smithy/sdk/shapes:define-output describe-view-response common-lisp:nil
                                 ((view :target-type view :member-name "View"))
                                 (:shape-name "DescribeViewResponse"))

(smithy/sdk/shapes:define-input disconnect-participant-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "ClientToken")
                                 (connection-token :target-type
                                  participant-token :required common-lisp:t
                                  :member-name "ConnectionToken" :http-header
                                  "X-Amz-Bearer"))
                                (:shape-name "DisconnectParticipantRequest"))

(smithy/sdk/shapes:define-output disconnect-participant-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DisconnectParticipantResponse"))

(smithy/sdk/shapes:define-type display-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-attachment-request common-lisp:nil
                                ((attachment-id :target-type artifact-id
                                  :required common-lisp:t :member-name
                                  "AttachmentId")
                                 (connection-token :target-type
                                  participant-token :required common-lisp:t
                                  :member-name "ConnectionToken" :http-header
                                  "X-Amz-Bearer")
                                 (url-expiry-in-seconds :target-type
                                  urlexpiry-in-seconds :member-name
                                  "UrlExpiryInSeconds"))
                                (:shape-name "GetAttachmentRequest"))

(smithy/sdk/shapes:define-output get-attachment-response common-lisp:nil
                                 ((url :target-type pre-signed-attachment-url
                                   :member-name "Url")
                                  (url-expiry :target-type iso8601datetime
                                   :member-name "UrlExpiry")
                                  (attachment-size-in-bytes :target-type
                                   attachment-size-in-bytes :required
                                   common-lisp:t :member-name
                                   "AttachmentSizeInBytes"))
                                 (:shape-name "GetAttachmentResponse"))

(smithy/sdk/shapes:define-input get-authentication-url-request common-lisp:nil
                                ((session-id :target-type session-id :required
                                  common-lisp:t :member-name "SessionId")
                                 (redirect-uri :target-type redirect-uri
                                  :required common-lisp:t :member-name
                                  "RedirectUri")
                                 (connection-token :target-type
                                  participant-token :required common-lisp:t
                                  :member-name "ConnectionToken" :http-header
                                  "X-Amz-Bearer"))
                                (:shape-name "GetAuthenticationUrlRequest"))

(smithy/sdk/shapes:define-output get-authentication-url-response
                                 common-lisp:nil
                                 ((authentication-url :target-type
                                   authentication-url :member-name
                                   "AuthenticationUrl"))
                                 (:shape-name "GetAuthenticationUrlResponse"))

(smithy/sdk/shapes:define-input get-transcript-request common-lisp:nil
                                ((contact-id :target-type contact-id
                                  :member-name "ContactId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (scan-direction :target-type scan-direction
                                  :member-name "ScanDirection")
                                 (sort-order :target-type sort-key :member-name
                                  "SortOrder")
                                 (start-position :target-type start-position
                                  :member-name "StartPosition")
                                 (connection-token :target-type
                                  participant-token :required common-lisp:t
                                  :member-name "ConnectionToken" :http-header
                                  "X-Amz-Bearer"))
                                (:shape-name "GetTranscriptRequest"))

(smithy/sdk/shapes:define-output get-transcript-response common-lisp:nil
                                 ((initial-contact-id :target-type contact-id
                                   :member-name "InitialContactId")
                                  (transcript :target-type transcript
                                   :member-name "Transcript")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "GetTranscriptResponse"))

(smithy/sdk/shapes:define-type iso8601datetime smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type instant smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type message :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure item common-lisp:nil
                                    ((absolute-time :target-type instant
                                      :member-name "AbsoluteTime")
                                     (content :target-type chat-content
                                      :member-name "Content")
                                     (content-type :target-type
                                      chat-content-type :member-name
                                      "ContentType")
                                     (id :target-type chat-item-id :member-name
                                      "Id")
                                     (type :target-type chat-item-type
                                      :member-name "Type")
                                     (participant-id :target-type
                                      participant-id :member-name
                                      "ParticipantId")
                                     (display-name :target-type display-name
                                      :member-name "DisplayName")
                                     (participant-role :target-type
                                      participant-role :member-name
                                      "ParticipantRole")
                                     (attachments :target-type attachments
                                      :member-name "Attachments")
                                     (message-metadata :target-type
                                      message-metadata :member-name
                                      "MessageMetadata")
                                     (related-contact-id :target-type
                                      contact-id :member-name
                                      "RelatedContactId")
                                     (contact-id :target-type contact-id
                                      :member-name "ContactId"))
                                    (:shape-name "Item"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure message-metadata common-lisp:nil
                                    ((message-id :target-type chat-item-id
                                      :member-name "MessageId")
                                     (receipts :target-type receipts
                                      :member-name "Receipts"))
                                    (:shape-name "MessageMetadata"))

(smithy/sdk/shapes:define-type most-recent smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-empty-client-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type participant-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum participant-role
    common-lisp:nil
  (:agent "AGENT")
  (:customer "CUSTOMER")
  (:system "SYSTEM")
  (:custom-bot "CUSTOM_BOT")
  (:supervisor "SUPERVISOR"))

(smithy/sdk/shapes:define-type participant-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pre-signed-attachment-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pre-signed-connection-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure receipt common-lisp:nil
                                    ((delivered-timestamp :target-type instant
                                      :member-name "DeliveredTimestamp")
                                     (read-timestamp :target-type instant
                                      :member-name "ReadTimestamp")
                                     (recipient-participant-id :target-type
                                      participant-id :member-name
                                      "RecipientParticipantId"))
                                    (:shape-name "Receipt"))

(smithy/sdk/shapes:define-list receipts :member receipt)

(smithy/sdk/shapes:define-type redirect-uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message")
                                 (resource-id :target-type resource-id
                                  :member-name "ResourceId")
                                 (resource-type :target-type resource-type
                                  :member-name "ResourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum resource-type
    common-lisp:nil
  (:contact "CONTACT")
  (:contact-flow "CONTACT_FLOW")
  (:instance "INSTANCE")
  (:participant "PARTICIPANT")
  (:hierarchy-level "HIERARCHY_LEVEL")
  (:hierarchy-group "HIERARCHY_GROUP")
  (:user "USER")
  (:phone-number "PHONE_NUMBER"))

(smithy/sdk/shapes:define-enum scan-direction
    common-lisp:nil
  (:forward "FORWARD")
  (:backward "BACKWARD"))

(smithy/sdk/shapes:define-input send-event-request common-lisp:nil
                                ((content-type :target-type chat-content-type
                                  :required common-lisp:t :member-name
                                  "ContentType")
                                 (content :target-type chat-content
                                  :member-name "Content")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken")
                                 (connection-token :target-type
                                  participant-token :required common-lisp:t
                                  :member-name "ConnectionToken" :http-header
                                  "X-Amz-Bearer"))
                                (:shape-name "SendEventRequest"))

(smithy/sdk/shapes:define-output send-event-response common-lisp:nil
                                 ((id :target-type chat-item-id :member-name
                                   "Id")
                                  (absolute-time :target-type instant
                                   :member-name "AbsoluteTime"))
                                 (:shape-name "SendEventResponse"))

(smithy/sdk/shapes:define-input send-message-request common-lisp:nil
                                ((content-type :target-type chat-content-type
                                  :required common-lisp:t :member-name
                                  "ContentType")
                                 (content :target-type chat-content :required
                                  common-lisp:t :member-name "Content")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken")
                                 (connection-token :target-type
                                  participant-token :required common-lisp:t
                                  :member-name "ConnectionToken" :http-header
                                  "X-Amz-Bearer"))
                                (:shape-name "SendMessageRequest"))

(smithy/sdk/shapes:define-output send-message-response common-lisp:nil
                                 ((id :target-type chat-item-id :member-name
                                   "Id")
                                  (absolute-time :target-type instant
                                   :member-name "AbsoluteTime"))
                                 (:shape-name "SendMessageResponse"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type message :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type session-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum sort-key
    common-lisp:nil
  (:descending "DESCENDING")
  (:ascending "ASCENDING"))

(smithy/sdk/shapes:define-input start-attachment-upload-request common-lisp:nil
                                ((content-type :target-type content-type
                                  :required common-lisp:t :member-name
                                  "ContentType")
                                 (attachment-size-in-bytes :target-type
                                  attachment-size-in-bytes :required
                                  common-lisp:t :member-name
                                  "AttachmentSizeInBytes")
                                 (attachment-name :target-type attachment-name
                                  :required common-lisp:t :member-name
                                  "AttachmentName")
                                 (client-token :target-type
                                  non-empty-client-token :required
                                  common-lisp:t :member-name "ClientToken")
                                 (connection-token :target-type
                                  participant-token :required common-lisp:t
                                  :member-name "ConnectionToken" :http-header
                                  "X-Amz-Bearer"))
                                (:shape-name "StartAttachmentUploadRequest"))

(smithy/sdk/shapes:define-output start-attachment-upload-response
                                 common-lisp:nil
                                 ((attachment-id :target-type artifact-id
                                   :member-name "AttachmentId")
                                  (upload-metadata :target-type upload-metadata
                                   :member-name "UploadMetadata"))
                                 (:shape-name "StartAttachmentUploadResponse"))

(smithy/sdk/shapes:define-structure start-position common-lisp:nil
                                    ((id :target-type chat-item-id :member-name
                                      "Id")
                                     (absolute-time :target-type instant
                                      :member-name "AbsoluteTime")
                                     (most-recent :target-type most-recent
                                      :member-name "MostRecent"))
                                    (:shape-name "StartPosition"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type message :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-list transcript :member item)

(smithy/sdk/shapes:define-type urlexpiry-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure upload-metadata common-lisp:nil
                                    ((url :target-type upload-metadata-url
                                      :member-name "Url")
                                     (url-expiry :target-type iso8601datetime
                                      :member-name "UrlExpiry")
                                     (headers-to-include :target-type
                                      upload-metadata-signed-headers
                                      :member-name "HeadersToInclude"))
                                    (:shape-name "UploadMetadata"))

(smithy/sdk/shapes:define-map upload-metadata-signed-headers :key
                              upload-metadata-signed-headers-key :value
                              upload-metadata-signed-headers-value)

(smithy/sdk/shapes:define-type upload-metadata-signed-headers-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type upload-metadata-signed-headers-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type upload-metadata-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type reason :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure view common-lisp:nil
                                    ((id :target-type view-id :member-name
                                      "Id")
                                     (arn :target-type arn :member-name "Arn")
                                     (name :target-type view-name :member-name
                                      "Name")
                                     (version :target-type view-version
                                      :member-name "Version")
                                     (content :target-type view-content
                                      :member-name "Content"))
                                    (:shape-name "View"))

(smithy/sdk/shapes:define-type view-action smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list view-actions :member view-action)

(smithy/sdk/shapes:define-structure view-content common-lisp:nil
                                    ((input-schema :target-type
                                      view-input-schema :member-name
                                      "InputSchema")
                                     (template :target-type view-template
                                      :member-name "Template")
                                     (actions :target-type view-actions
                                      :member-name "Actions"))
                                    (:shape-name "ViewContent"))

(smithy/sdk/shapes:define-type view-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type view-input-schema smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type view-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type view-template smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type view-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type view-version smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure websocket common-lisp:nil
                                    ((url :target-type
                                      pre-signed-connection-url :member-name
                                      "Url")
                                     (connection-expiry :target-type
                                      iso8601datetime :member-name
                                      "ConnectionExpiry"))
                                    (:shape-name "Websocket"))

(smithy/sdk/operation:define-operation cancel-participant-authentication
                                       :shape-name
                                       "CancelParticipantAuthentication" :input
                                       cancel-participant-authentication-request
                                       :output
                                       cancel-participant-authentication-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/participant/cancel-authentication"
                                       :code 200)

(smithy/sdk/operation:define-operation complete-attachment-upload :shape-name
                                       "CompleteAttachmentUpload" :input
                                       complete-attachment-upload-request
                                       :output
                                       complete-attachment-upload-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/participant/complete-attachment-upload"
                                       :code 200)

(smithy/sdk/operation:define-operation create-participant-connection
                                       :shape-name
                                       "CreateParticipantConnection" :input
                                       create-participant-connection-request
                                       :output
                                       create-participant-connection-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/participant/connection" :code 200)

(smithy/sdk/operation:define-operation describe-view :shape-name "DescribeView"
                                       :input describe-view-request :output
                                       describe-view-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/participant/views/{ViewToken}" :code
                                       200)

(smithy/sdk/operation:define-operation disconnect-participant :shape-name
                                       "DisconnectParticipant" :input
                                       disconnect-participant-request :output
                                       disconnect-participant-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/participant/disconnect" :code 200)

(smithy/sdk/operation:define-operation get-attachment :shape-name
                                       "GetAttachment" :input
                                       get-attachment-request :output
                                       get-attachment-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/participant/attachment" :code 200)

(smithy/sdk/operation:define-operation get-authentication-url :shape-name
                                       "GetAuthenticationUrl" :input
                                       get-authentication-url-request :output
                                       get-authentication-url-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/participant/authentication-url" :code
                                       200)

(smithy/sdk/operation:define-operation get-transcript :shape-name
                                       "GetTranscript" :input
                                       get-transcript-request :output
                                       get-transcript-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/participant/transcript" :code 200)

(smithy/sdk/operation:define-operation send-event :shape-name "SendEvent"
                                       :input send-event-request :output
                                       send-event-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/participant/event"
                                       :code 200)

(smithy/sdk/operation:define-operation send-message :shape-name "SendMessage"
                                       :input send-message-request :output
                                       send-message-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/participant/message" :code 200)

(smithy/sdk/operation:define-operation start-attachment-upload :shape-name
                                       "StartAttachmentUpload" :input
                                       start-attachment-upload-request :output
                                       start-attachment-upload-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/participant/start-attachment-upload"
                                       :code 200)
