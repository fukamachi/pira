(uiop/package:define-package #:pira/chime-sdk-meetings (:use)
                             (:export #:amazon-resource-name #:arn #:attendee
                              #:attendee-capabilities #:attendee-features
                              #:attendee-id-item #:attendee-ids-list
                              #:attendee-list #:attendee-max #:audio-features
                              #:bad-request-exception #:batch-create-attendee
                              #:batch-create-attendee-error-list
                              #:batch-create-attendee-request
                              #:batch-create-attendee-response
                              #:batch-update-attendee-capabilities-except
                              #:batch-update-attendee-capabilities-except-request
                              #:boolean #:chime-meetings-sdkservice
                              #:client-request-token #:conflict-exception
                              #:content-features #:content-resolution
                              #:create-attendee #:create-attendee-error
                              #:create-attendee-request
                              #:create-attendee-request-item
                              #:create-attendee-request-item-list
                              #:create-attendee-response #:create-meeting
                              #:create-meeting-request
                              #:create-meeting-response
                              #:create-meeting-with-attendees
                              #:create-meeting-with-attendees-request
                              #:create-meeting-with-attendees-request-item-list
                              #:create-meeting-with-attendees-response
                              #:delete-attendee #:delete-attendee-request
                              #:delete-meeting #:delete-meeting-request
                              #:engine-transcribe-medical-settings
                              #:engine-transcribe-settings
                              #:external-meeting-id #:external-user-id
                              #:forbidden-exception #:get-attendee
                              #:get-attendee-request #:get-attendee-response
                              #:get-meeting #:get-meeting-request
                              #:get-meeting-response #:guid-string
                              #:join-token-string #:limit-exceeded-exception
                              #:list-attendees #:list-attendees-request
                              #:list-attendees-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:media-capabilities #:media-placement
                              #:media-region #:meeting #:meeting-feature-status
                              #:meeting-features-configuration
                              #:not-found-exception
                              #:notifications-configuration
                              #:primary-meeting-id
                              #:resource-not-found-exception #:result-max
                              #:retry-after-seconds #:service-failure-exception
                              #:service-unavailable-exception
                              #:start-meeting-transcription
                              #:start-meeting-transcription-request
                              #:stop-meeting-transcription
                              #:stop-meeting-transcription-request #:string
                              #:tag #:tag-key #:tag-key-list #:tag-list
                              #:tag-resource #:tag-resource-request
                              #:tag-resource-response #:tag-value #:tenant-id
                              #:tenant-id-list #:throttling-exception
                              #:too-many-tags-exception
                              #:transcribe-content-identification-type
                              #:transcribe-content-redaction-type
                              #:transcribe-language-code
                              #:transcribe-language-model-name
                              #:transcribe-language-options
                              #:transcribe-medical-content-identification-type
                              #:transcribe-medical-language-code
                              #:transcribe-medical-region
                              #:transcribe-medical-specialty
                              #:transcribe-medical-type
                              #:transcribe-partial-results-stability
                              #:transcribe-pii-entity-types #:transcribe-region
                              #:transcribe-vocabulary-filter-method
                              #:transcribe-vocabulary-names-or-filter-names-string
                              #:transcription-configuration
                              #:unauthorized-exception
                              #:unprocessable-entity-exception #:untag-resource
                              #:untag-resource-request
                              #:untag-resource-response
                              #:update-attendee-capabilities
                              #:update-attendee-capabilities-request
                              #:update-attendee-capabilities-response
                              #:video-features #:video-resolution))
(common-lisp:in-package #:pira/chime-sdk-meetings)

(smithy/sdk/service:define-service chime-meetings-sdkservice :shape-name
                                   "ChimeMeetingsSDKService" :version
                                   "2021-07-15" :title
                                   "Amazon Chime SDK Meetings" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Chime SDK Meetings")
                                      ("arnNamespace" . "chime")
                                      ("cloudFormationName"
                                       . "ChimeSDKMeetings")
                                      ("cloudTrailEventSource"
                                       . "chimesdkmeetings.amazonaws.com")
                                      ("endpointPrefix" . "meetings-chime"))
                                     ("aws.auth#sigv4" ("name" . "chime"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure attendee common-lisp:nil
                                    ((external-user-id :target-type
                                      external-user-id :member-name
                                      "ExternalUserId")
                                     (attendee-id :target-type guid-string
                                      :member-name "AttendeeId")
                                     (join-token :target-type join-token-string
                                      :member-name "JoinToken")
                                     (capabilities :target-type
                                      attendee-capabilities :member-name
                                      "Capabilities"))
                                    (:shape-name "Attendee"))

(smithy/sdk/shapes:define-structure attendee-capabilities common-lisp:nil
                                    ((audio :target-type media-capabilities
                                      :required common-lisp:t :member-name
                                      "Audio")
                                     (video :target-type media-capabilities
                                      :required common-lisp:t :member-name
                                      "Video")
                                     (content :target-type media-capabilities
                                      :required common-lisp:t :member-name
                                      "Content"))
                                    (:shape-name "AttendeeCapabilities"))

(smithy/sdk/shapes:define-structure attendee-features common-lisp:nil
                                    ((max-count :target-type attendee-max
                                      :member-name "MaxCount"))
                                    (:shape-name "AttendeeFeatures"))

(smithy/sdk/shapes:define-structure attendee-id-item common-lisp:nil
                                    ((attendee-id :target-type guid-string
                                      :required common-lisp:t :member-name
                                      "AttendeeId"))
                                    (:shape-name "AttendeeIdItem"))

(smithy/sdk/shapes:define-list attendee-ids-list :member attendee-id-item)

(smithy/sdk/shapes:define-list attendee-list :member attendee)

(smithy/sdk/shapes:define-type attendee-max smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure audio-features common-lisp:nil
                                    ((echo-reduction :target-type
                                      meeting-feature-status :member-name
                                      "EchoReduction"))
                                    (:shape-name "AudioFeatures"))

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((code :target-type string :member-name "Code")
                                 (message :target-type string :member-name
                                  "Message")
                                 (request-id :target-type string :member-name
                                  "RequestId"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list batch-create-attendee-error-list :member
                               create-attendee-error)

(smithy/sdk/shapes:define-input batch-create-attendee-request common-lisp:nil
                                ((meeting-id :target-type guid-string :required
                                  common-lisp:t :member-name "MeetingId"
                                  :http-label common-lisp:t)
                                 (attendees :target-type
                                  create-attendee-request-item-list :required
                                  common-lisp:t :member-name "Attendees"))
                                (:shape-name "BatchCreateAttendeeRequest"))

(smithy/sdk/shapes:define-output batch-create-attendee-response common-lisp:nil
                                 ((attendees :target-type attendee-list
                                   :member-name "Attendees")
                                  (errors :target-type
                                   batch-create-attendee-error-list
                                   :member-name "Errors"))
                                 (:shape-name "BatchCreateAttendeeResponse"))

(smithy/sdk/shapes:define-input
 batch-update-attendee-capabilities-except-request common-lisp:nil
 ((meeting-id :target-type guid-string :required common-lisp:t :member-name
   "MeetingId" :http-label common-lisp:t)
  (excluded-attendee-ids :target-type attendee-ids-list :required common-lisp:t
   :member-name "ExcludedAttendeeIds")
  (capabilities :target-type attendee-capabilities :required common-lisp:t
   :member-name "Capabilities"))
 (:shape-name "BatchUpdateAttendeeCapabilitiesExceptRequest"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type client-request-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((code :target-type string :member-name "Code")
                                 (message :target-type string :member-name
                                  "Message")
                                 (request-id :target-type string :member-name
                                  "RequestId"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure content-features common-lisp:nil
                                    ((max-resolution :target-type
                                      content-resolution :member-name
                                      "MaxResolution"))
                                    (:shape-name "ContentFeatures"))

(smithy/sdk/shapes:define-enum content-resolution
    common-lisp:nil
  (:none "None")
  (:fhd "FHD")
  (:uhd "UHD"))

(smithy/sdk/shapes:define-structure create-attendee-error common-lisp:nil
                                    ((external-user-id :target-type
                                      external-user-id :member-name
                                      "ExternalUserId")
                                     (error-code :target-type string
                                      :member-name "ErrorCode")
                                     (error-message :target-type string
                                      :member-name "ErrorMessage"))
                                    (:shape-name "CreateAttendeeError"))

(smithy/sdk/shapes:define-input create-attendee-request common-lisp:nil
                                ((meeting-id :target-type guid-string :required
                                  common-lisp:t :member-name "MeetingId"
                                  :http-label common-lisp:t)
                                 (external-user-id :target-type
                                  external-user-id :required common-lisp:t
                                  :member-name "ExternalUserId")
                                 (capabilities :target-type
                                  attendee-capabilities :member-name
                                  "Capabilities"))
                                (:shape-name "CreateAttendeeRequest"))

(smithy/sdk/shapes:define-structure create-attendee-request-item
                                    common-lisp:nil
                                    ((external-user-id :target-type
                                      external-user-id :required common-lisp:t
                                      :member-name "ExternalUserId")
                                     (capabilities :target-type
                                      attendee-capabilities :member-name
                                      "Capabilities"))
                                    (:shape-name "CreateAttendeeRequestItem"))

(smithy/sdk/shapes:define-list create-attendee-request-item-list :member
                               create-attendee-request-item)

(smithy/sdk/shapes:define-output create-attendee-response common-lisp:nil
                                 ((attendee :target-type attendee :member-name
                                   "Attendee"))
                                 (:shape-name "CreateAttendeeResponse"))

(smithy/sdk/shapes:define-input create-meeting-request common-lisp:nil
                                ((client-request-token :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "ClientRequestToken")
                                 (media-region :target-type media-region
                                  :required common-lisp:t :member-name
                                  "MediaRegion")
                                 (meeting-host-id :target-type external-user-id
                                  :member-name "MeetingHostId")
                                 (external-meeting-id :target-type
                                  external-meeting-id :required common-lisp:t
                                  :member-name "ExternalMeetingId")
                                 (notifications-configuration :target-type
                                  notifications-configuration :member-name
                                  "NotificationsConfiguration")
                                 (meeting-features :target-type
                                  meeting-features-configuration :member-name
                                  "MeetingFeatures")
                                 (primary-meeting-id :target-type
                                  primary-meeting-id :member-name
                                  "PrimaryMeetingId")
                                 (tenant-ids :target-type tenant-id-list
                                  :member-name "TenantIds")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateMeetingRequest"))

(smithy/sdk/shapes:define-output create-meeting-response common-lisp:nil
                                 ((meeting :target-type meeting :member-name
                                   "Meeting"))
                                 (:shape-name "CreateMeetingResponse"))

(smithy/sdk/shapes:define-input create-meeting-with-attendees-request
                                common-lisp:nil
                                ((client-request-token :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "ClientRequestToken")
                                 (media-region :target-type media-region
                                  :required common-lisp:t :member-name
                                  "MediaRegion")
                                 (meeting-host-id :target-type external-user-id
                                  :member-name "MeetingHostId")
                                 (external-meeting-id :target-type
                                  external-meeting-id :required common-lisp:t
                                  :member-name "ExternalMeetingId")
                                 (meeting-features :target-type
                                  meeting-features-configuration :member-name
                                  "MeetingFeatures")
                                 (notifications-configuration :target-type
                                  notifications-configuration :member-name
                                  "NotificationsConfiguration")
                                 (attendees :target-type
                                  create-meeting-with-attendees-request-item-list
                                  :required common-lisp:t :member-name
                                  "Attendees")
                                 (primary-meeting-id :target-type
                                  primary-meeting-id :member-name
                                  "PrimaryMeetingId")
                                 (tenant-ids :target-type tenant-id-list
                                  :member-name "TenantIds")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreateMeetingWithAttendeesRequest"))

(smithy/sdk/shapes:define-list create-meeting-with-attendees-request-item-list
                               :member create-attendee-request-item)

(smithy/sdk/shapes:define-output create-meeting-with-attendees-response
                                 common-lisp:nil
                                 ((meeting :target-type meeting :member-name
                                   "Meeting")
                                  (attendees :target-type attendee-list
                                   :member-name "Attendees")
                                  (errors :target-type
                                   batch-create-attendee-error-list
                                   :member-name "Errors"))
                                 (:shape-name
                                  "CreateMeetingWithAttendeesResponse"))

(smithy/sdk/shapes:define-input delete-attendee-request common-lisp:nil
                                ((meeting-id :target-type guid-string :required
                                  common-lisp:t :member-name "MeetingId"
                                  :http-label common-lisp:t)
                                 (attendee-id :target-type guid-string
                                  :required common-lisp:t :member-name
                                  "AttendeeId" :http-label common-lisp:t))
                                (:shape-name "DeleteAttendeeRequest"))

(smithy/sdk/shapes:define-input delete-meeting-request common-lisp:nil
                                ((meeting-id :target-type guid-string :required
                                  common-lisp:t :member-name "MeetingId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteMeetingRequest"))

(smithy/sdk/shapes:define-structure engine-transcribe-medical-settings
                                    common-lisp:nil
                                    ((language-code :target-type
                                      transcribe-medical-language-code
                                      :required common-lisp:t :member-name
                                      "LanguageCode")
                                     (specialty :target-type
                                      transcribe-medical-specialty :required
                                      common-lisp:t :member-name "Specialty")
                                     (type :target-type transcribe-medical-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (vocabulary-name :target-type string
                                      :member-name "VocabularyName")
                                     (region :target-type
                                      transcribe-medical-region :member-name
                                      "Region")
                                     (content-identification-type :target-type
                                      transcribe-medical-content-identification-type
                                      :member-name
                                      "ContentIdentificationType"))
                                    (:shape-name
                                     "EngineTranscribeMedicalSettings"))

(smithy/sdk/shapes:define-structure engine-transcribe-settings common-lisp:nil
                                    ((language-code :target-type
                                      transcribe-language-code :member-name
                                      "LanguageCode")
                                     (vocabulary-filter-method :target-type
                                      transcribe-vocabulary-filter-method
                                      :member-name "VocabularyFilterMethod")
                                     (vocabulary-filter-name :target-type
                                      string :member-name
                                      "VocabularyFilterName")
                                     (vocabulary-name :target-type string
                                      :member-name "VocabularyName")
                                     (region :target-type transcribe-region
                                      :member-name "Region")
                                     (enable-partial-results-stabilization
                                      :target-type boolean :member-name
                                      "EnablePartialResultsStabilization")
                                     (partial-results-stability :target-type
                                      transcribe-partial-results-stability
                                      :member-name "PartialResultsStability")
                                     (content-identification-type :target-type
                                      transcribe-content-identification-type
                                      :member-name "ContentIdentificationType")
                                     (content-redaction-type :target-type
                                      transcribe-content-redaction-type
                                      :member-name "ContentRedactionType")
                                     (pii-entity-types :target-type
                                      transcribe-pii-entity-types :member-name
                                      "PiiEntityTypes")
                                     (language-model-name :target-type
                                      transcribe-language-model-name
                                      :member-name "LanguageModelName")
                                     (identify-language :target-type boolean
                                      :member-name "IdentifyLanguage")
                                     (language-options :target-type
                                      transcribe-language-options :member-name
                                      "LanguageOptions")
                                     (preferred-language :target-type
                                      transcribe-language-code :member-name
                                      "PreferredLanguage")
                                     (vocabulary-names :target-type
                                      transcribe-vocabulary-names-or-filter-names-string
                                      :member-name "VocabularyNames")
                                     (vocabulary-filter-names :target-type
                                      transcribe-vocabulary-names-or-filter-names-string
                                      :member-name "VocabularyFilterNames"))
                                    (:shape-name "EngineTranscribeSettings"))

(smithy/sdk/shapes:define-type external-meeting-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type external-user-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error forbidden-exception common-lisp:nil
                                ((code :target-type string :member-name "Code")
                                 (message :target-type string :member-name
                                  "Message")
                                 (request-id :target-type string :member-name
                                  "RequestId"))
                                (:shape-name "ForbiddenException")
                                (:error-code 403))

(smithy/sdk/shapes:define-input get-attendee-request common-lisp:nil
                                ((meeting-id :target-type guid-string :required
                                  common-lisp:t :member-name "MeetingId"
                                  :http-label common-lisp:t)
                                 (attendee-id :target-type guid-string
                                  :required common-lisp:t :member-name
                                  "AttendeeId" :http-label common-lisp:t))
                                (:shape-name "GetAttendeeRequest"))

(smithy/sdk/shapes:define-output get-attendee-response common-lisp:nil
                                 ((attendee :target-type attendee :member-name
                                   "Attendee"))
                                 (:shape-name "GetAttendeeResponse"))

(smithy/sdk/shapes:define-input get-meeting-request common-lisp:nil
                                ((meeting-id :target-type guid-string :required
                                  common-lisp:t :member-name "MeetingId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetMeetingRequest"))

(smithy/sdk/shapes:define-output get-meeting-response common-lisp:nil
                                 ((meeting :target-type meeting :member-name
                                   "Meeting"))
                                 (:shape-name "GetMeetingResponse"))

(smithy/sdk/shapes:define-type guid-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type join-token-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((code :target-type string :member-name "Code")
                                 (message :target-type string :member-name
                                  "Message")
                                 (request-id :target-type string :member-name
                                  "RequestId"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input list-attendees-request common-lisp:nil
                                ((meeting-id :target-type guid-string :required
                                  common-lisp:t :member-name "MeetingId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "next-token")
                                 (max-results :target-type result-max
                                  :member-name "MaxResults" :http-query
                                  "max-results"))
                                (:shape-name "ListAttendeesRequest"))

(smithy/sdk/shapes:define-output list-attendees-response common-lisp:nil
                                 ((attendees :target-type attendee-list
                                   :member-name "Attendees")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListAttendeesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN" :http-query
                                  "arn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-enum media-capabilities
    common-lisp:nil
  (:send-receive "SendReceive")
  (:send "Send")
  (:receive "Receive")
  (:none "None"))

(smithy/sdk/shapes:define-structure media-placement common-lisp:nil
                                    ((audio-host-url :target-type string
                                      :member-name "AudioHostUrl")
                                     (audio-fallback-url :target-type string
                                      :member-name "AudioFallbackUrl")
                                     (signaling-url :target-type string
                                      :member-name "SignalingUrl")
                                     (turn-control-url :target-type string
                                      :member-name "TurnControlUrl")
                                     (screen-data-url :target-type string
                                      :member-name "ScreenDataUrl")
                                     (screen-viewing-url :target-type string
                                      :member-name "ScreenViewingUrl")
                                     (screen-sharing-url :target-type string
                                      :member-name "ScreenSharingUrl")
                                     (event-ingestion-url :target-type string
                                      :member-name "EventIngestionUrl"))
                                    (:shape-name "MediaPlacement"))

(smithy/sdk/shapes:define-type media-region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure meeting common-lisp:nil
                                    ((meeting-id :target-type guid-string
                                      :member-name "MeetingId")
                                     (meeting-host-id :target-type
                                      external-user-id :member-name
                                      "MeetingHostId")
                                     (external-meeting-id :target-type
                                      external-meeting-id :member-name
                                      "ExternalMeetingId")
                                     (media-region :target-type media-region
                                      :member-name "MediaRegion")
                                     (media-placement :target-type
                                      media-placement :member-name
                                      "MediaPlacement")
                                     (meeting-features :target-type
                                      meeting-features-configuration
                                      :member-name "MeetingFeatures")
                                     (primary-meeting-id :target-type
                                      primary-meeting-id :member-name
                                      "PrimaryMeetingId")
                                     (tenant-ids :target-type tenant-id-list
                                      :member-name "TenantIds")
                                     (meeting-arn :target-type
                                      amazon-resource-name :member-name
                                      "MeetingArn"))
                                    (:shape-name "Meeting"))

(smithy/sdk/shapes:define-enum meeting-feature-status
    common-lisp:nil
  (:available "AVAILABLE")
  (:unavailable "UNAVAILABLE"))

(smithy/sdk/shapes:define-structure meeting-features-configuration
                                    common-lisp:nil
                                    ((audio :target-type audio-features
                                      :member-name "Audio")
                                     (video :target-type video-features
                                      :member-name "Video")
                                     (content :target-type content-features
                                      :member-name "Content")
                                     (attendee :target-type attendee-features
                                      :member-name "Attendee"))
                                    (:shape-name
                                     "MeetingFeaturesConfiguration"))

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((code :target-type string :member-name "Code")
                                 (message :target-type string :member-name
                                  "Message")
                                 (request-id :target-type string :member-name
                                  "RequestId"))
                                (:shape-name "NotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure notifications-configuration common-lisp:nil
                                    ((lambda-function-arn :target-type arn
                                      :member-name "LambdaFunctionArn")
                                     (sns-topic-arn :target-type arn
                                      :member-name "SnsTopicArn")
                                     (sqs-queue-arn :target-type arn
                                      :member-name "SqsQueueArn"))
                                    (:shape-name "NotificationsConfiguration"))

(smithy/sdk/shapes:define-type primary-meeting-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((code :target-type string :member-name "Code")
                                 (message :target-type string :member-name
                                  "Message")
                                 (request-id :target-type string :member-name
                                  "RequestId")
                                 (resource-name :target-type
                                  amazon-resource-name :member-name
                                  "ResourceName"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type result-max smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type retry-after-seconds
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-failure-exception common-lisp:nil
                                ((code :target-type string :member-name "Code")
                                 (message :target-type string :member-name
                                  "Message")
                                 (request-id :target-type string :member-name
                                  "RequestId"))
                                (:shape-name "ServiceFailureException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((code :target-type string :member-name "Code")
                                 (message :target-type string :member-name
                                  "Message")
                                 (request-id :target-type string :member-name
                                  "RequestId")
                                 (retry-after-seconds :target-type
                                  retry-after-seconds :member-name
                                  "RetryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503))

(smithy/sdk/shapes:define-input start-meeting-transcription-request
                                common-lisp:nil
                                ((meeting-id :target-type guid-string :required
                                  common-lisp:t :member-name "MeetingId"
                                  :http-label common-lisp:t)
                                 (transcription-configuration :target-type
                                  transcription-configuration :required
                                  common-lisp:t :member-name
                                  "TranscriptionConfiguration"))
                                (:shape-name
                                 "StartMeetingTranscriptionRequest"))

(smithy/sdk/shapes:define-input stop-meeting-transcription-request
                                common-lisp:nil
                                ((meeting-id :target-type guid-string :required
                                  common-lisp:t :member-name "MeetingId"
                                  :http-label common-lisp:t))
                                (:shape-name "StopMeetingTranscriptionRequest"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

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
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tenant-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tenant-id-list :member tenant-id)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((code :target-type string :member-name "Code")
                                 (message :target-type string :member-name
                                  "Message")
                                 (request-id :target-type string :member-name
                                  "RequestId"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((code :target-type string :member-name "Code")
                                 (message :target-type string :member-name
                                  "Message")
                                 (request-id :target-type string :member-name
                                  "RequestId")
                                 (resource-name :target-type
                                  amazon-resource-name :member-name
                                  "ResourceName"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum transcribe-content-identification-type
    common-lisp:nil
  (:pii "PII"))

(smithy/sdk/shapes:define-enum transcribe-content-redaction-type
    common-lisp:nil
  (:pii "PII"))

(smithy/sdk/shapes:define-enum transcribe-language-code
    common-lisp:nil
  (:en-us "en-US")
  (:en-gb "en-GB")
  (:es-us "es-US")
  (:fr-ca "fr-CA")
  (:fr-fr "fr-FR")
  (:en-au "en-AU")
  (:it-it "it-IT")
  (:de-de "de-DE")
  (:pt-br "pt-BR")
  (:ja-jp "ja-JP")
  (:ko-kr "ko-KR")
  (:zh-cn "zh-CN")
  (:th-th "th-TH")
  (:hi-in "hi-IN"))

(smithy/sdk/shapes:define-type transcribe-language-model-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type transcribe-language-options
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum transcribe-medical-content-identification-type
    common-lisp:nil
  (:phi "PHI"))

(smithy/sdk/shapes:define-enum transcribe-medical-language-code
    common-lisp:nil
  (:en-us "en-US"))

(smithy/sdk/shapes:define-enum transcribe-medical-region
    common-lisp:nil
  (:us-east-1 "us-east-1")
  (:us-east-2 "us-east-2")
  (:us-west-2 "us-west-2")
  (:ap-southeast-2 "ap-southeast-2")
  (:ca-central-1 "ca-central-1")
  (:eu-west-1 "eu-west-1")
  (:auto "auto"))

(smithy/sdk/shapes:define-enum transcribe-medical-specialty
    common-lisp:nil
  (:primarycare "PRIMARYCARE")
  (:cardiology "CARDIOLOGY")
  (:neurology "NEUROLOGY")
  (:oncology "ONCOLOGY")
  (:radiology "RADIOLOGY")
  (:urology "UROLOGY"))

(smithy/sdk/shapes:define-enum transcribe-medical-type
    common-lisp:nil
  (:conversation "CONVERSATION")
  (:dictation "DICTATION"))

(smithy/sdk/shapes:define-enum transcribe-partial-results-stability
    common-lisp:nil
  (:low "low")
  (:medium "medium")
  (:high "high"))

(smithy/sdk/shapes:define-type transcribe-pii-entity-types
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum transcribe-region
    common-lisp:nil
  (:us-east-2 "us-east-2")
  (:us-east-1 "us-east-1")
  (:us-west-2 "us-west-2")
  (:ap-northeast-2 "ap-northeast-2")
  (:ap-southeast-2 "ap-southeast-2")
  (:ap-northeast-1 "ap-northeast-1")
  (:ca-central-1 "ca-central-1")
  (:eu-central-1 "eu-central-1")
  (:eu-west-1 "eu-west-1")
  (:eu-west-2 "eu-west-2")
  (:sa-east-1 "sa-east-1")
  (:auto "auto")
  (:us-gov-west-1 "us-gov-west-1"))

(smithy/sdk/shapes:define-enum transcribe-vocabulary-filter-method
    common-lisp:nil
  (:remove "remove")
  (:mask "mask")
  (:tag "tag"))

(smithy/sdk/shapes:define-type
 transcribe-vocabulary-names-or-filter-names-string
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure transcription-configuration common-lisp:nil
                                    ((engine-transcribe-settings :target-type
                                      engine-transcribe-settings :member-name
                                      "EngineTranscribeSettings")
                                     (engine-transcribe-medical-settings
                                      :target-type
                                      engine-transcribe-medical-settings
                                      :member-name
                                      "EngineTranscribeMedicalSettings"))
                                    (:shape-name "TranscriptionConfiguration"))

(smithy/sdk/shapes:define-error unauthorized-exception common-lisp:nil
                                ((code :target-type string :member-name "Code")
                                 (message :target-type string :member-name
                                  "Message")
                                 (request-id :target-type string :member-name
                                  "RequestId"))
                                (:shape-name "UnauthorizedException")
                                (:error-code 401))

(smithy/sdk/shapes:define-error unprocessable-entity-exception common-lisp:nil
                                ((code :target-type string :member-name "Code")
                                 (message :target-type string :member-name
                                  "Message")
                                 (request-id :target-type string :member-name
                                  "RequestId"))
                                (:shape-name "UnprocessableEntityException")
                                (:error-code 422))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-attendee-capabilities-request
                                common-lisp:nil
                                ((meeting-id :target-type guid-string :required
                                  common-lisp:t :member-name "MeetingId"
                                  :http-label common-lisp:t)
                                 (attendee-id :target-type guid-string
                                  :required common-lisp:t :member-name
                                  "AttendeeId" :http-label common-lisp:t)
                                 (capabilities :target-type
                                  attendee-capabilities :required common-lisp:t
                                  :member-name "Capabilities"))
                                (:shape-name
                                 "UpdateAttendeeCapabilitiesRequest"))

(smithy/sdk/shapes:define-output update-attendee-capabilities-response
                                 common-lisp:nil
                                 ((attendee :target-type attendee :member-name
                                   "Attendee"))
                                 (:shape-name
                                  "UpdateAttendeeCapabilitiesResponse"))

(smithy/sdk/shapes:define-structure video-features common-lisp:nil
                                    ((max-resolution :target-type
                                      video-resolution :member-name
                                      "MaxResolution"))
                                    (:shape-name "VideoFeatures"))

(smithy/sdk/shapes:define-enum video-resolution
    common-lisp:nil
  (:none "None")
  (:hd "HD")
  (:fhd "FHD"))

(smithy/sdk/operation:define-operation batch-create-attendee :shape-name
                                       "BatchCreateAttendee" :input
                                       batch-create-attendee-request :output
                                       batch-create-attendee-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception
                                        unprocessable-entity-exception)
                                       :method "POST" :uri
                                       "/meetings/{MeetingId}/attendees?operation=batch-create"
                                       :code 200)

(smithy/sdk/operation:define-operation
 batch-update-attendee-capabilities-except :shape-name
 "BatchUpdateAttendeeCapabilitiesExcept" :input
 batch-update-attendee-capabilities-except-request :output common-lisp:null
 :errors
 (bad-request-exception conflict-exception forbidden-exception
  not-found-exception service-failure-exception service-unavailable-exception
  throttling-exception unauthorized-exception)
 :method "PUT" :uri
 "/meetings/{MeetingId}/attendees/capabilities?operation=batch-update-except"
 :code 200)

(smithy/sdk/operation:define-operation create-attendee :shape-name
                                       "CreateAttendee" :input
                                       create-attendee-request :output
                                       create-attendee-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception
                                        unprocessable-entity-exception)
                                       :method "POST" :uri
                                       "/meetings/{MeetingId}/attendees" :code
                                       200)

(smithy/sdk/operation:define-operation create-meeting :shape-name
                                       "CreateMeeting" :input
                                       create-meeting-request :output
                                       create-meeting-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri "/meetings" :code
                                       200)

(smithy/sdk/operation:define-operation create-meeting-with-attendees
                                       :shape-name "CreateMeetingWithAttendees"
                                       :input
                                       create-meeting-with-attendees-request
                                       :output
                                       create-meeting-with-attendees-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/meetings?operation=create-attendees"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-attendee :shape-name
                                       "DeleteAttendee" :input
                                       delete-attendee-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/meetings/{MeetingId}/attendees/{AttendeeId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-meeting :shape-name
                                       "DeleteMeeting" :input
                                       delete-meeting-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/meetings/{MeetingId}" :code 204)

(smithy/sdk/operation:define-operation get-attendee :shape-name "GetAttendee"
                                       :input get-attendee-request :output
                                       get-attendee-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/meetings/{MeetingId}/attendees/{AttendeeId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-meeting :shape-name "GetMeeting"
                                       :input get-meeting-request :output
                                       get-meeting-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/meetings/{MeetingId}" :code 200)

(smithy/sdk/operation:define-operation list-attendees :shape-name
                                       "ListAttendees" :input
                                       list-attendees-request :output
                                       list-attendees-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/meetings/{MeetingId}/attendees" :code
                                       200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/tags" :code 200)

(smithy/sdk/operation:define-operation start-meeting-transcription :shape-name
                                       "StartMeetingTranscription" :input
                                       start-meeting-transcription-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception
                                        unprocessable-entity-exception)
                                       :method "POST" :uri
                                       "/meetings/{MeetingId}/transcription?operation=start"
                                       :code 200)

(smithy/sdk/operation:define-operation stop-meeting-transcription :shape-name
                                       "StopMeetingTranscription" :input
                                       stop-meeting-transcription-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception
                                        unprocessable-entity-exception)
                                       :method "POST" :uri
                                       "/meetings/{MeetingId}/transcription?operation=stop"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        too-many-tags-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/tags?operation=tag-resource" :code 204)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/tags?operation=untag-resource" :code
                                       204)

(smithy/sdk/operation:define-operation update-attendee-capabilities :shape-name
                                       "UpdateAttendeeCapabilities" :input
                                       update-attendee-capabilities-request
                                       :output
                                       update-attendee-capabilities-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri
                                       "/meetings/{MeetingId}/attendees/{AttendeeId}/capabilities"
                                       :code 200)
