(uiop/package:define-package #:pira/ivs-realtime (:use)
                             (:export #:access-denied-exception
                              #:amazon-interactive-video-service-real-time
                              #:attribute-key
                              #:auto-participant-recording-configuration
                              #:auto-participant-recording-storage-configuration-arn
                              #:bitrate #:boolean #:channel-arn
                              #:channel-destination-configuration #:composition
                              #:composition-arn #:composition-client-token
                              #:composition-recording-hls-configuration
                              #:composition-recording-target-segment-duration-seconds
                              #:composition-state #:composition-summary
                              #:composition-summary-list
                              #:composition-thumbnail-configuration
                              #:composition-thumbnail-configuration-list
                              #:conflict-exception
                              #:create-encoder-configuration
                              #:create-ingest-configuration
                              #:create-participant-token
                              #:create-participant-token-request
                              #:create-participant-token-response
                              #:create-stage #:create-stage-request
                              #:create-stage-response
                              #:create-storage-configuration
                              #:delete-encoder-configuration
                              #:delete-ingest-configuration #:delete-public-key
                              #:delete-stage #:delete-stage-request
                              #:delete-stage-response
                              #:delete-storage-configuration #:destination
                              #:destination-configuration
                              #:destination-configuration-list
                              #:destination-configuration-name
                              #:destination-detail #:destination-list
                              #:destination-state #:destination-summary
                              #:destination-summary-list
                              #:disconnect-participant
                              #:disconnect-participant-reason
                              #:disconnect-participant-request
                              #:disconnect-participant-response
                              #:encoder-configuration
                              #:encoder-configuration-arn
                              #:encoder-configuration-arn-list
                              #:encoder-configuration-name
                              #:encoder-configuration-summary
                              #:encoder-configuration-summary-list #:event
                              #:event-error-code #:event-list #:event-name
                              #:framerate #:get-composition
                              #:get-encoder-configuration
                              #:get-ingest-configuration #:get-participant
                              #:get-public-key #:get-stage #:get-stage-request
                              #:get-stage-response #:get-stage-session
                              #:get-storage-configuration #:grid-configuration
                              #:grid-gap #:height #:import-public-key
                              #:ingest-configuration #:ingest-configuration-arn
                              #:ingest-configuration-list
                              #:ingest-configuration-name
                              #:ingest-configuration-stage-arn
                              #:ingest-configuration-state
                              #:ingest-configuration-summary #:ingest-protocol
                              #:insecure-ingest #:internal-server-exception
                              #:layout-configuration #:list-compositions
                              #:list-encoder-configurations
                              #:list-ingest-configurations
                              #:list-participant-events
                              #:list-participant-replicas #:list-participants
                              #:list-public-keys #:list-stage-sessions
                              #:list-stages #:list-stages-request
                              #:list-stages-response
                              #:list-storage-configurations
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:max-composition-results
                              #:max-encoder-configuration-results
                              #:max-ingest-configuration-results
                              #:max-participant-event-results
                              #:max-participant-replica-results
                              #:max-participant-results
                              #:max-public-key-results #:max-stage-results
                              #:max-stage-session-results
                              #:max-storage-configuration-results
                              #:omit-stopped-video #:pagination-token
                              #:participant #:participant-attributes
                              #:participant-client-attribute #:participant-id
                              #:participant-list #:participant-protocol
                              #:participant-recording-filter-by-recording-state
                              #:participant-recording-hls-configuration
                              #:participant-recording-media-type
                              #:participant-recording-media-type-list
                              #:participant-recording-reconnect-window-seconds
                              #:participant-recording-s3bucket-name
                              #:participant-recording-s3prefix
                              #:participant-recording-state
                              #:participant-recording-target-segment-duration-seconds
                              #:participant-replica #:participant-replica-list
                              #:participant-state #:participant-summary
                              #:participant-thumbnail-configuration
                              #:participant-token
                              #:participant-token-attributes
                              #:participant-token-capabilities
                              #:participant-token-capability
                              #:participant-token-configuration
                              #:participant-token-configurations
                              #:participant-token-duration-minutes
                              #:participant-token-expiration-time
                              #:participant-token-id #:participant-token-list
                              #:participant-token-string
                              #:participant-token-user-id
                              #:pending-verification #:pip-behavior
                              #:pip-configuration #:pip-height #:pip-offset
                              #:pip-position #:pip-width #:public-key
                              #:public-key-arn #:public-key-fingerprint
                              #:public-key-list #:public-key-material
                              #:public-key-name #:public-key-summary
                              #:published #:reconnect-window-seconds
                              #:record-participant-replicas
                              #:recording-configuration
                              #:recording-configuration-format #:replica
                              #:replication-state #:replication-type
                              #:resource-arn #:resource-not-found-exception
                              #:s3bucket-name #:s3destination-configuration
                              #:s3detail #:s3storage-configuration
                              #:service-quota-exceeded-exception #:stage
                              #:stage-arn #:stage-endpoint #:stage-endpoints
                              #:stage-name #:stage-session #:stage-session-id
                              #:stage-session-list #:stage-session-summary
                              #:stage-summary #:stage-summary-list
                              #:start-composition
                              #:start-participant-replication
                              #:stop-composition #:stop-participant-replication
                              #:storage-configuration
                              #:storage-configuration-arn
                              #:storage-configuration-name
                              #:storage-configuration-summary
                              #:storage-configuration-summary-list #:stream-key
                              #:string #:tag-key #:tag-key-list #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:tags #:thumbnail-interval-seconds
                              #:thumbnail-recording-mode
                              #:thumbnail-storage-type
                              #:thumbnail-storage-type-list #:time
                              #:untag-resource #:untag-resource-request
                              #:untag-resource-response
                              #:update-ingest-configuration #:update-stage
                              #:update-stage-request #:update-stage-response
                              #:user-id #:validation-exception #:video
                              #:video-aspect-ratio #:video-fill-mode #:width
                              #:error-message #:ivs-realtime-error))
(common-lisp:in-package #:pira/ivs-realtime)

(common-lisp:define-condition ivs-realtime-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service amazon-interactive-video-service-real-time
                                   :shape-name
                                   "AmazonInteractiveVideoServiceRealTime"
                                   :version "2020-07-14" :title
                                   "Amazon Interactive Video Service RealTime"
                                   :operations
                                   '(create-encoder-configuration
                                     create-ingest-configuration
                                     create-participant-token create-stage
                                     create-storage-configuration
                                     delete-encoder-configuration
                                     delete-ingest-configuration
                                     delete-public-key delete-stage
                                     delete-storage-configuration
                                     disconnect-participant get-composition
                                     get-encoder-configuration
                                     get-ingest-configuration get-participant
                                     get-public-key get-stage get-stage-session
                                     get-storage-configuration
                                     import-public-key list-compositions
                                     list-encoder-configurations
                                     list-ingest-configurations
                                     list-participant-events
                                     list-participant-replicas
                                     list-participants list-public-keys
                                     list-stages list-stage-sessions
                                     list-storage-configurations
                                     list-tags-for-resource start-composition
                                     start-participant-replication
                                     stop-composition
                                     stop-participant-replication tag-resource
                                     untag-resource update-ingest-configuration
                                     update-stage)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "IVS RealTime")
                                      ("arnNamespace" . "ivs")
                                      ("cloudFormationName" . "IVS")
                                      ("cloudTrailEventSource"
                                       . "ivs.amazonaws.com")
                                      ("endpointPrefix" . "ivsrealtime"))
                                     ("aws.auth#sigv4" ("name" . "ivs"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((access-control-allow-origin :target-type
                                  string :member-name
                                  "accessControlAllowOrigin" :http-header
                                  "Access-Control-Allow-Origin")
                                 (access-control-expose-headers :target-type
                                  string :member-name
                                  "accessControlExposeHeaders" :http-header
                                  "Access-Control-Expose-Headers")
                                 (cache-control :target-type string
                                  :member-name "cacheControl" :http-header
                                  "Cache-Control")
                                 (content-security-policy :target-type string
                                  :member-name "contentSecurityPolicy"
                                  :http-header "Content-Security-Policy")
                                 (strict-transport-security :target-type string
                                  :member-name "strictTransportSecurity"
                                  :http-header "Strict-Transport-Security")
                                 (x-content-type-options :target-type string
                                  :member-name "xContentTypeOptions"
                                  :http-header "X-Content-Type-Options")
                                 (x-frame-options :target-type string
                                  :member-name "xFrameOptions" :http-header
                                  "X-Frame-Options")
                                 (x-amzn-error-type :target-type string
                                  :member-name "xAmznErrorType" :http-header
                                  "x-amzn-ErrorType")
                                 (exception-message :target-type error-message
                                  :member-name "exceptionMessage"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403)
                                (:base-class ivs-realtime-error))

(smithy/sdk/shapes:define-type attribute-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure auto-participant-recording-configuration
                                    common-lisp:nil
                                    ((storage-configuration-arn :target-type
                                      auto-participant-recording-storage-configuration-arn
                                      :required common-lisp:t :member-name
                                      "storageConfigurationArn")
                                     (media-types :target-type
                                      participant-recording-media-type-list
                                      :member-name "mediaTypes")
                                     (thumbnail-configuration :target-type
                                      participant-thumbnail-configuration
                                      :member-name "thumbnailConfiguration")
                                     (recording-reconnect-window-seconds
                                      :target-type
                                      participant-recording-reconnect-window-seconds
                                      :member-name
                                      "recordingReconnectWindowSeconds")
                                     (hls-configuration :target-type
                                      participant-recording-hls-configuration
                                      :member-name "hlsConfiguration")
                                     (record-participant-replicas :target-type
                                      record-participant-replicas :member-name
                                      "recordParticipantReplicas"))
                                    (:shape-name
                                     "AutoParticipantRecordingConfiguration"))

(smithy/sdk/shapes:define-type
 auto-participant-recording-storage-configuration-arn
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type bitrate smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type channel-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure channel-destination-configuration
                                    common-lisp:nil
                                    ((channel-arn :target-type channel-arn
                                      :required common-lisp:t :member-name
                                      "channelArn")
                                     (encoder-configuration-arn :target-type
                                      encoder-configuration-arn :member-name
                                      "encoderConfigurationArn"))
                                    (:shape-name
                                     "ChannelDestinationConfiguration"))

(smithy/sdk/shapes:define-structure composition common-lisp:nil
                                    ((arn :target-type composition-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (stage-arn :target-type stage-arn
                                      :required common-lisp:t :member-name
                                      "stageArn")
                                     (state :target-type composition-state
                                      :required common-lisp:t :member-name
                                      "state")
                                     (layout :target-type layout-configuration
                                      :required common-lisp:t :member-name
                                      "layout")
                                     (destinations :target-type
                                      destination-list :required common-lisp:t
                                      :member-name "destinations")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (start-time :target-type time :member-name
                                      "startTime")
                                     (end-time :target-type time :member-name
                                      "endTime"))
                                    (:shape-name "Composition"))

(smithy/sdk/shapes:define-type composition-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type composition-client-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure composition-recording-hls-configuration
                                    common-lisp:nil
                                    ((target-segment-duration-seconds
                                      :target-type
                                      composition-recording-target-segment-duration-seconds
                                      :member-name
                                      "targetSegmentDurationSeconds"))
                                    (:shape-name
                                     "CompositionRecordingHlsConfiguration"))

(smithy/sdk/shapes:define-type
 composition-recording-target-segment-duration-seconds
 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type composition-state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure composition-summary common-lisp:nil
                                    ((arn :target-type composition-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (stage-arn :target-type stage-arn
                                      :required common-lisp:t :member-name
                                      "stageArn")
                                     (destinations :target-type
                                      destination-summary-list :required
                                      common-lisp:t :member-name
                                      "destinations")
                                     (state :target-type composition-state
                                      :required common-lisp:t :member-name
                                      "state")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (start-time :target-type time :member-name
                                      "startTime")
                                     (end-time :target-type time :member-name
                                      "endTime"))
                                    (:shape-name "CompositionSummary"))

(smithy/sdk/shapes:define-list composition-summary-list :member
                               composition-summary)

(smithy/sdk/shapes:define-structure composition-thumbnail-configuration
                                    common-lisp:nil
                                    ((target-interval-seconds :target-type
                                      thumbnail-interval-seconds :member-name
                                      "targetIntervalSeconds")
                                     (storage :target-type
                                      thumbnail-storage-type-list :member-name
                                      "storage"))
                                    (:shape-name
                                     "CompositionThumbnailConfiguration"))

(smithy/sdk/shapes:define-list composition-thumbnail-configuration-list :member
                               composition-thumbnail-configuration)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((access-control-allow-origin :target-type
                                  string :member-name
                                  "accessControlAllowOrigin" :http-header
                                  "Access-Control-Allow-Origin")
                                 (access-control-expose-headers :target-type
                                  string :member-name
                                  "accessControlExposeHeaders" :http-header
                                  "Access-Control-Expose-Headers")
                                 (cache-control :target-type string
                                  :member-name "cacheControl" :http-header
                                  "Cache-Control")
                                 (content-security-policy :target-type string
                                  :member-name "contentSecurityPolicy"
                                  :http-header "Content-Security-Policy")
                                 (strict-transport-security :target-type string
                                  :member-name "strictTransportSecurity"
                                  :http-header "Strict-Transport-Security")
                                 (x-content-type-options :target-type string
                                  :member-name "xContentTypeOptions"
                                  :http-header "X-Content-Type-Options")
                                 (x-frame-options :target-type string
                                  :member-name "xFrameOptions" :http-header
                                  "X-Frame-Options")
                                 (x-amzn-error-type :target-type string
                                  :member-name "xAmznErrorType" :http-header
                                  "x-amzn-ErrorType")
                                 (exception-message :target-type error-message
                                  :member-name "exceptionMessage"))
                                (:shape-name "ConflictException")
                                (:error-code 409)
                                (:base-class ivs-realtime-error))

(smithy/sdk/shapes:define-input create-encoder-configuration-request
                                common-lisp:nil
                                ((name :target-type encoder-configuration-name
                                  :member-name "name")
                                 (video :target-type video :member-name
                                  "video")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name
                                 "CreateEncoderConfigurationRequest"))

(smithy/sdk/shapes:define-output create-encoder-configuration-response
                                 common-lisp:nil
                                 ((encoder-configuration :target-type
                                   encoder-configuration :member-name
                                   "encoderConfiguration"))
                                 (:shape-name
                                  "CreateEncoderConfigurationResponse"))

(smithy/sdk/shapes:define-input create-ingest-configuration-request
                                common-lisp:nil
                                ((name :target-type ingest-configuration-name
                                  :member-name "name")
                                 (stage-arn :target-type
                                  ingest-configuration-stage-arn :member-name
                                  "stageArn")
                                 (user-id :target-type user-id :member-name
                                  "userId")
                                 (attributes :target-type
                                  participant-attributes :member-name
                                  "attributes")
                                 (ingest-protocol :target-type ingest-protocol
                                  :required common-lisp:t :member-name
                                  "ingestProtocol")
                                 (insecure-ingest :target-type insecure-ingest
                                  :member-name "insecureIngest")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name
                                 "CreateIngestConfigurationRequest"))

(smithy/sdk/shapes:define-output create-ingest-configuration-response
                                 common-lisp:nil
                                 ((ingest-configuration :target-type
                                   ingest-configuration :member-name
                                   "ingestConfiguration"))
                                 (:shape-name
                                  "CreateIngestConfigurationResponse"))

(smithy/sdk/shapes:define-structure create-participant-token-request
                                    common-lisp:nil
                                    ((stage-arn :target-type stage-arn
                                      :required common-lisp:t :member-name
                                      "stageArn")
                                     (duration :target-type
                                      participant-token-duration-minutes
                                      :member-name "duration")
                                     (user-id :target-type
                                      participant-token-user-id :member-name
                                      "userId")
                                     (attributes :target-type
                                      participant-token-attributes :member-name
                                      "attributes")
                                     (capabilities :target-type
                                      participant-token-capabilities
                                      :member-name "capabilities"))
                                    (:shape-name
                                     "CreateParticipantTokenRequest"))

(smithy/sdk/shapes:define-structure create-participant-token-response
                                    common-lisp:nil
                                    ((participant-token :target-type
                                      participant-token :member-name
                                      "participantToken"))
                                    (:shape-name
                                     "CreateParticipantTokenResponse"))

(smithy/sdk/shapes:define-structure create-stage-request common-lisp:nil
                                    ((name :target-type stage-name :member-name
                                      "name")
                                     (participant-token-configurations
                                      :target-type
                                      participant-token-configurations
                                      :member-name
                                      "participantTokenConfigurations")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (auto-participant-recording-configuration
                                      :target-type
                                      auto-participant-recording-configuration
                                      :member-name
                                      "autoParticipantRecordingConfiguration"))
                                    (:shape-name "CreateStageRequest"))

(smithy/sdk/shapes:define-structure create-stage-response common-lisp:nil
                                    ((stage :target-type stage :member-name
                                      "stage")
                                     (participant-tokens :target-type
                                      participant-token-list :member-name
                                      "participantTokens"))
                                    (:shape-name "CreateStageResponse"))

(smithy/sdk/shapes:define-input create-storage-configuration-request
                                common-lisp:nil
                                ((name :target-type storage-configuration-name
                                  :member-name "name")
                                 (s3 :target-type s3storage-configuration
                                  :required common-lisp:t :member-name "s3")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name
                                 "CreateStorageConfigurationRequest"))

(smithy/sdk/shapes:define-output create-storage-configuration-response
                                 common-lisp:nil
                                 ((storage-configuration :target-type
                                   storage-configuration :member-name
                                   "storageConfiguration"))
                                 (:shape-name
                                  "CreateStorageConfigurationResponse"))

(smithy/sdk/shapes:define-input delete-encoder-configuration-request
                                common-lisp:nil
                                ((arn :target-type encoder-configuration-arn
                                  :required common-lisp:t :member-name "arn"))
                                (:shape-name
                                 "DeleteEncoderConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-encoder-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteEncoderConfigurationResponse"))

(smithy/sdk/shapes:define-input delete-ingest-configuration-request
                                common-lisp:nil
                                ((arn :target-type ingest-configuration-arn
                                  :required common-lisp:t :member-name "arn")
                                 (force :target-type boolean :member-name
                                  "force"))
                                (:shape-name
                                 "DeleteIngestConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-ingest-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteIngestConfigurationResponse"))

(smithy/sdk/shapes:define-input delete-public-key-request common-lisp:nil
                                ((arn :target-type public-key-arn :required
                                  common-lisp:t :member-name "arn"))
                                (:shape-name "DeletePublicKeyRequest"))

(smithy/sdk/shapes:define-output delete-public-key-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeletePublicKeyResponse"))

(smithy/sdk/shapes:define-structure delete-stage-request common-lisp:nil
                                    ((arn :target-type stage-arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name "DeleteStageRequest"))

(smithy/sdk/shapes:define-structure delete-stage-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteStageResponse"))

(smithy/sdk/shapes:define-input delete-storage-configuration-request
                                common-lisp:nil
                                ((arn :target-type storage-configuration-arn
                                  :required common-lisp:t :member-name "arn"))
                                (:shape-name
                                 "DeleteStorageConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-storage-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteStorageConfigurationResponse"))

(smithy/sdk/shapes:define-structure destination common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "id")
                                     (state :target-type destination-state
                                      :required common-lisp:t :member-name
                                      "state")
                                     (start-time :target-type time :member-name
                                      "startTime")
                                     (end-time :target-type time :member-name
                                      "endTime")
                                     (configuration :target-type
                                      destination-configuration :required
                                      common-lisp:t :member-name
                                      "configuration")
                                     (detail :target-type destination-detail
                                      :member-name "detail"))
                                    (:shape-name "Destination"))

(smithy/sdk/shapes:define-structure destination-configuration common-lisp:nil
                                    ((name :target-type
                                      destination-configuration-name
                                      :member-name "name")
                                     (channel :target-type
                                      channel-destination-configuration
                                      :member-name "channel")
                                     (s3 :target-type
                                      s3destination-configuration :member-name
                                      "s3"))
                                    (:shape-name "DestinationConfiguration"))

(smithy/sdk/shapes:define-list destination-configuration-list :member
                               destination-configuration)

(smithy/sdk/shapes:define-type destination-configuration-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure destination-detail common-lisp:nil
                                    ((s3 :target-type s3detail :member-name
                                      "s3"))
                                    (:shape-name "DestinationDetail"))

(smithy/sdk/shapes:define-list destination-list :member destination)

(smithy/sdk/shapes:define-type destination-state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure destination-summary common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "id")
                                     (state :target-type destination-state
                                      :required common-lisp:t :member-name
                                      "state")
                                     (start-time :target-type time :member-name
                                      "startTime")
                                     (end-time :target-type time :member-name
                                      "endTime"))
                                    (:shape-name "DestinationSummary"))

(smithy/sdk/shapes:define-list destination-summary-list :member
                               destination-summary)

(smithy/sdk/shapes:define-type disconnect-participant-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure disconnect-participant-request
                                    common-lisp:nil
                                    ((stage-arn :target-type stage-arn
                                      :required common-lisp:t :member-name
                                      "stageArn")
                                     (participant-id :target-type
                                      participant-token-id :required
                                      common-lisp:t :member-name
                                      "participantId")
                                     (reason :target-type
                                      disconnect-participant-reason
                                      :member-name "reason"))
                                    (:shape-name
                                     "DisconnectParticipantRequest"))

(smithy/sdk/shapes:define-structure disconnect-participant-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "DisconnectParticipantResponse"))

(smithy/sdk/shapes:define-structure encoder-configuration common-lisp:nil
                                    ((arn :target-type
                                      encoder-configuration-arn :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type
                                      encoder-configuration-name :member-name
                                      "name")
                                     (video :target-type video :member-name
                                      "video")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "EncoderConfiguration"))

(smithy/sdk/shapes:define-type encoder-configuration-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list encoder-configuration-arn-list :member
                               encoder-configuration-arn)

(smithy/sdk/shapes:define-type encoder-configuration-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure encoder-configuration-summary
                                    common-lisp:nil
                                    ((arn :target-type
                                      encoder-configuration-arn :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type
                                      encoder-configuration-name :member-name
                                      "name")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "EncoderConfigurationSummary"))

(smithy/sdk/shapes:define-list encoder-configuration-summary-list :member
                               encoder-configuration-summary)

(smithy/sdk/shapes:define-structure event common-lisp:nil
                                    ((name :target-type event-name :member-name
                                      "name")
                                     (participant-id :target-type
                                      participant-id :member-name
                                      "participantId")
                                     (event-time :target-type time :member-name
                                      "eventTime")
                                     (remote-participant-id :target-type
                                      participant-id :member-name
                                      "remoteParticipantId")
                                     (error-code :target-type event-error-code
                                      :member-name "errorCode")
                                     (destination-stage-arn :target-type
                                      stage-arn :member-name
                                      "destinationStageArn")
                                     (destination-session-id :target-type
                                      stage-session-id :member-name
                                      "destinationSessionId")
                                     (replica :target-type replica :member-name
                                      "replica"))
                                    (:shape-name "Event"))

(smithy/sdk/shapes:define-enum event-error-code
    common-lisp:nil
  (:insufficient-capabilities "INSUFFICIENT_CAPABILITIES")
  (:quota-exceeded "QUOTA_EXCEEDED")
  (:publisher-not-found "PUBLISHER_NOT_FOUND")
  (:bitrate-exceeded "BITRATE_EXCEEDED")
  (:resolution-exceeded "RESOLUTION_EXCEEDED")
  (:stream-duration-exceeded "STREAM_DURATION_EXCEEDED")
  (:invalid-audio-codec "INVALID_AUDIO_CODEC")
  (:invalid-video-codec "INVALID_VIDEO_CODEC")
  (:invalid-protocol "INVALID_PROTOCOL")
  (:invalid-stream-key "INVALID_STREAM_KEY")
  (:reuse-of-stream-key "REUSE_OF_STREAM_KEY")
  (:b-frame-present "B_FRAME_PRESENT")
  (:invalid-input "INVALID_INPUT")
  (:internal-server-exception "INTERNAL_SERVER_EXCEPTION"))

(smithy/sdk/shapes:define-list event-list :member event)

(smithy/sdk/shapes:define-type event-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type framerate smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-input get-composition-request common-lisp:nil
                                ((arn :target-type composition-arn :required
                                  common-lisp:t :member-name "arn"))
                                (:shape-name "GetCompositionRequest"))

(smithy/sdk/shapes:define-output get-composition-response common-lisp:nil
                                 ((composition :target-type composition
                                   :member-name "composition"))
                                 (:shape-name "GetCompositionResponse"))

(smithy/sdk/shapes:define-input get-encoder-configuration-request
                                common-lisp:nil
                                ((arn :target-type encoder-configuration-arn
                                  :required common-lisp:t :member-name "arn"))
                                (:shape-name "GetEncoderConfigurationRequest"))

(smithy/sdk/shapes:define-output get-encoder-configuration-response
                                 common-lisp:nil
                                 ((encoder-configuration :target-type
                                   encoder-configuration :member-name
                                   "encoderConfiguration"))
                                 (:shape-name
                                  "GetEncoderConfigurationResponse"))

(smithy/sdk/shapes:define-input get-ingest-configuration-request
                                common-lisp:nil
                                ((arn :target-type ingest-configuration-arn
                                  :required common-lisp:t :member-name "arn"))
                                (:shape-name "GetIngestConfigurationRequest"))

(smithy/sdk/shapes:define-output get-ingest-configuration-response
                                 common-lisp:nil
                                 ((ingest-configuration :target-type
                                   ingest-configuration :member-name
                                   "ingestConfiguration"))
                                 (:shape-name "GetIngestConfigurationResponse"))

(smithy/sdk/shapes:define-input get-participant-request common-lisp:nil
                                ((stage-arn :target-type stage-arn :required
                                  common-lisp:t :member-name "stageArn")
                                 (session-id :target-type stage-session-id
                                  :required common-lisp:t :member-name
                                  "sessionId")
                                 (participant-id :target-type participant-id
                                  :required common-lisp:t :member-name
                                  "participantId"))
                                (:shape-name "GetParticipantRequest"))

(smithy/sdk/shapes:define-output get-participant-response common-lisp:nil
                                 ((participant :target-type participant
                                   :member-name "participant"))
                                 (:shape-name "GetParticipantResponse"))

(smithy/sdk/shapes:define-input get-public-key-request common-lisp:nil
                                ((arn :target-type public-key-arn :required
                                  common-lisp:t :member-name "arn"))
                                (:shape-name "GetPublicKeyRequest"))

(smithy/sdk/shapes:define-output get-public-key-response common-lisp:nil
                                 ((public-key :target-type public-key
                                   :member-name "publicKey"))
                                 (:shape-name "GetPublicKeyResponse"))

(smithy/sdk/shapes:define-structure get-stage-request common-lisp:nil
                                    ((arn :target-type stage-arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name "GetStageRequest"))

(smithy/sdk/shapes:define-structure get-stage-response common-lisp:nil
                                    ((stage :target-type stage :member-name
                                      "stage"))
                                    (:shape-name "GetStageResponse"))

(smithy/sdk/shapes:define-input get-stage-session-request common-lisp:nil
                                ((stage-arn :target-type stage-arn :required
                                  common-lisp:t :member-name "stageArn")
                                 (session-id :target-type stage-session-id
                                  :required common-lisp:t :member-name
                                  "sessionId"))
                                (:shape-name "GetStageSessionRequest"))

(smithy/sdk/shapes:define-output get-stage-session-response common-lisp:nil
                                 ((stage-session :target-type stage-session
                                   :member-name "stageSession"))
                                 (:shape-name "GetStageSessionResponse"))

(smithy/sdk/shapes:define-input get-storage-configuration-request
                                common-lisp:nil
                                ((arn :target-type storage-configuration-arn
                                  :required common-lisp:t :member-name "arn"))
                                (:shape-name "GetStorageConfigurationRequest"))

(smithy/sdk/shapes:define-output get-storage-configuration-response
                                 common-lisp:nil
                                 ((storage-configuration :target-type
                                   storage-configuration :member-name
                                   "storageConfiguration"))
                                 (:shape-name
                                  "GetStorageConfigurationResponse"))

(smithy/sdk/shapes:define-structure grid-configuration common-lisp:nil
                                    ((featured-participant-attribute
                                      :target-type attribute-key :member-name
                                      "featuredParticipantAttribute")
                                     (omit-stopped-video :target-type
                                      omit-stopped-video :member-name
                                      "omitStoppedVideo")
                                     (video-aspect-ratio :target-type
                                      video-aspect-ratio :member-name
                                      "videoAspectRatio")
                                     (video-fill-mode :target-type
                                      video-fill-mode :member-name
                                      "videoFillMode")
                                     (grid-gap :target-type grid-gap
                                      :member-name "gridGap"))
                                    (:shape-name "GridConfiguration"))

(smithy/sdk/shapes:define-type grid-gap smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type height smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input import-public-key-request common-lisp:nil
                                ((public-key-material :target-type
                                  public-key-material :required common-lisp:t
                                  :member-name "publicKeyMaterial")
                                 (name :target-type public-key-name
                                  :member-name "name")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "ImportPublicKeyRequest"))

(smithy/sdk/shapes:define-output import-public-key-response common-lisp:nil
                                 ((public-key :target-type public-key
                                   :member-name "publicKey"))
                                 (:shape-name "ImportPublicKeyResponse"))

(smithy/sdk/shapes:define-structure ingest-configuration common-lisp:nil
                                    ((name :target-type
                                      ingest-configuration-name :member-name
                                      "name")
                                     (arn :target-type ingest-configuration-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (ingest-protocol :target-type
                                      ingest-protocol :required common-lisp:t
                                      :member-name "ingestProtocol")
                                     (stream-key :target-type stream-key
                                      :required common-lisp:t :member-name
                                      "streamKey")
                                     (stage-arn :target-type
                                      ingest-configuration-stage-arn :required
                                      common-lisp:t :member-name "stageArn")
                                     (participant-id :target-type
                                      participant-id :required common-lisp:t
                                      :member-name "participantId")
                                     (state :target-type
                                      ingest-configuration-state :required
                                      common-lisp:t :member-name "state")
                                     (user-id :target-type user-id :member-name
                                      "userId")
                                     (attributes :target-type
                                      participant-attributes :member-name
                                      "attributes")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "IngestConfiguration"))

(smithy/sdk/shapes:define-type ingest-configuration-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ingest-configuration-list :member
                               ingest-configuration-summary)

(smithy/sdk/shapes:define-type ingest-configuration-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ingest-configuration-stage-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ingest-configuration-state
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ingest-configuration-summary
                                    common-lisp:nil
                                    ((name :target-type
                                      ingest-configuration-name :member-name
                                      "name")
                                     (arn :target-type ingest-configuration-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (ingest-protocol :target-type
                                      ingest-protocol :required common-lisp:t
                                      :member-name "ingestProtocol")
                                     (stage-arn :target-type
                                      ingest-configuration-stage-arn :required
                                      common-lisp:t :member-name "stageArn")
                                     (participant-id :target-type
                                      participant-id :required common-lisp:t
                                      :member-name "participantId")
                                     (state :target-type
                                      ingest-configuration-state :required
                                      common-lisp:t :member-name "state")
                                     (user-id :target-type user-id :member-name
                                      "userId"))
                                    (:shape-name "IngestConfigurationSummary"))

(smithy/sdk/shapes:define-enum ingest-protocol
    common-lisp:nil
  (:rtmp "RTMP")
  (:rtmps "RTMPS"))

(smithy/sdk/shapes:define-type insecure-ingest smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((access-control-allow-origin :target-type
                                  string :member-name
                                  "accessControlAllowOrigin" :http-header
                                  "Access-Control-Allow-Origin")
                                 (access-control-expose-headers :target-type
                                  string :member-name
                                  "accessControlExposeHeaders" :http-header
                                  "Access-Control-Expose-Headers")
                                 (cache-control :target-type string
                                  :member-name "cacheControl" :http-header
                                  "Cache-Control")
                                 (content-security-policy :target-type string
                                  :member-name "contentSecurityPolicy"
                                  :http-header "Content-Security-Policy")
                                 (strict-transport-security :target-type string
                                  :member-name "strictTransportSecurity"
                                  :http-header "Strict-Transport-Security")
                                 (x-content-type-options :target-type string
                                  :member-name "xContentTypeOptions"
                                  :http-header "X-Content-Type-Options")
                                 (x-frame-options :target-type string
                                  :member-name "xFrameOptions" :http-header
                                  "X-Frame-Options")
                                 (x-amzn-error-type :target-type string
                                  :member-name "xAmznErrorType" :http-header
                                  "x-amzn-ErrorType")
                                 (exception-message :target-type error-message
                                  :member-name "exceptionMessage"))
                                (:shape-name "InternalServerException")
                                (:error-code 500)
                                (:base-class ivs-realtime-error))

(smithy/sdk/shapes:define-structure layout-configuration common-lisp:nil
                                    ((grid :target-type grid-configuration
                                      :member-name "grid")
                                     (pip :target-type pip-configuration
                                      :member-name "pip"))
                                    (:shape-name "LayoutConfiguration"))

(smithy/sdk/shapes:define-input list-compositions-request common-lisp:nil
                                ((filter-by-stage-arn :target-type stage-arn
                                  :member-name "filterByStageArn")
                                 (filter-by-encoder-configuration-arn
                                  :target-type encoder-configuration-arn
                                  :member-name
                                  "filterByEncoderConfigurationArn")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (max-results :target-type
                                  max-composition-results :member-name
                                  "maxResults"))
                                (:shape-name "ListCompositionsRequest"))

(smithy/sdk/shapes:define-output list-compositions-response common-lisp:nil
                                 ((compositions :target-type
                                   composition-summary-list :required
                                   common-lisp:t :member-name "compositions")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListCompositionsResponse"))

(smithy/sdk/shapes:define-input list-encoder-configurations-request
                                common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (max-results :target-type
                                  max-encoder-configuration-results
                                  :member-name "maxResults"))
                                (:shape-name
                                 "ListEncoderConfigurationsRequest"))

(smithy/sdk/shapes:define-output list-encoder-configurations-response
                                 common-lisp:nil
                                 ((encoder-configurations :target-type
                                   encoder-configuration-summary-list :required
                                   common-lisp:t :member-name
                                   "encoderConfigurations")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListEncoderConfigurationsResponse"))

(smithy/sdk/shapes:define-input list-ingest-configurations-request
                                common-lisp:nil
                                ((filter-by-stage-arn :target-type stage-arn
                                  :member-name "filterByStageArn")
                                 (filter-by-state :target-type
                                  ingest-configuration-state :member-name
                                  "filterByState")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (max-results :target-type
                                  max-ingest-configuration-results :member-name
                                  "maxResults"))
                                (:shape-name "ListIngestConfigurationsRequest"))

(smithy/sdk/shapes:define-output list-ingest-configurations-response
                                 common-lisp:nil
                                 ((ingest-configurations :target-type
                                   ingest-configuration-list :required
                                   common-lisp:t :member-name
                                   "ingestConfigurations")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListIngestConfigurationsResponse"))

(smithy/sdk/shapes:define-input list-participant-events-request common-lisp:nil
                                ((stage-arn :target-type stage-arn :required
                                  common-lisp:t :member-name "stageArn")
                                 (session-id :target-type stage-session-id
                                  :required common-lisp:t :member-name
                                  "sessionId")
                                 (participant-id :target-type participant-id
                                  :required common-lisp:t :member-name
                                  "participantId")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (max-results :target-type
                                  max-participant-event-results :member-name
                                  "maxResults"))
                                (:shape-name "ListParticipantEventsRequest"))

(smithy/sdk/shapes:define-output list-participant-events-response
                                 common-lisp:nil
                                 ((events :target-type event-list :required
                                   common-lisp:t :member-name "events")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListParticipantEventsResponse"))

(smithy/sdk/shapes:define-input list-participant-replicas-request
                                common-lisp:nil
                                ((source-stage-arn :target-type stage-arn
                                  :required common-lisp:t :member-name
                                  "sourceStageArn")
                                 (participant-id :target-type participant-id
                                  :required common-lisp:t :member-name
                                  "participantId")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (max-results :target-type
                                  max-participant-replica-results :member-name
                                  "maxResults"))
                                (:shape-name "ListParticipantReplicasRequest"))

(smithy/sdk/shapes:define-output list-participant-replicas-response
                                 common-lisp:nil
                                 ((replicas :target-type
                                   participant-replica-list :required
                                   common-lisp:t :member-name "replicas")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListParticipantReplicasResponse"))

(smithy/sdk/shapes:define-input list-participants-request common-lisp:nil
                                ((stage-arn :target-type stage-arn :required
                                  common-lisp:t :member-name "stageArn")
                                 (session-id :target-type stage-session-id
                                  :required common-lisp:t :member-name
                                  "sessionId")
                                 (filter-by-user-id :target-type user-id
                                  :member-name "filterByUserId")
                                 (filter-by-published :target-type published
                                  :member-name "filterByPublished")
                                 (filter-by-state :target-type
                                  participant-state :member-name
                                  "filterByState")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (max-results :target-type
                                  max-participant-results :member-name
                                  "maxResults")
                                 (filter-by-recording-state :target-type
                                  participant-recording-filter-by-recording-state
                                  :member-name "filterByRecordingState"))
                                (:shape-name "ListParticipantsRequest"))

(smithy/sdk/shapes:define-output list-participants-response common-lisp:nil
                                 ((participants :target-type participant-list
                                   :required common-lisp:t :member-name
                                   "participants")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListParticipantsResponse"))

(smithy/sdk/shapes:define-input list-public-keys-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (max-results :target-type
                                  max-public-key-results :member-name
                                  "maxResults"))
                                (:shape-name "ListPublicKeysRequest"))

(smithy/sdk/shapes:define-output list-public-keys-response common-lisp:nil
                                 ((public-keys :target-type public-key-list
                                   :required common-lisp:t :member-name
                                   "publicKeys")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListPublicKeysResponse"))

(smithy/sdk/shapes:define-input list-stage-sessions-request common-lisp:nil
                                ((stage-arn :target-type stage-arn :required
                                  common-lisp:t :member-name "stageArn")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (max-results :target-type
                                  max-stage-session-results :member-name
                                  "maxResults"))
                                (:shape-name "ListStageSessionsRequest"))

(smithy/sdk/shapes:define-output list-stage-sessions-response common-lisp:nil
                                 ((stage-sessions :target-type
                                   stage-session-list :required common-lisp:t
                                   :member-name "stageSessions")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListStageSessionsResponse"))

(smithy/sdk/shapes:define-structure list-stages-request common-lisp:nil
                                    ((next-token :target-type pagination-token
                                      :member-name "nextToken")
                                     (max-results :target-type
                                      max-stage-results :member-name
                                      "maxResults"))
                                    (:shape-name "ListStagesRequest"))

(smithy/sdk/shapes:define-structure list-stages-response common-lisp:nil
                                    ((stages :target-type stage-summary-list
                                      :required common-lisp:t :member-name
                                      "stages")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListStagesResponse"))

(smithy/sdk/shapes:define-input list-storage-configurations-request
                                common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (max-results :target-type
                                  max-storage-configuration-results
                                  :member-name "maxResults"))
                                (:shape-name
                                 "ListStorageConfigurationsRequest"))

(smithy/sdk/shapes:define-output list-storage-configurations-response
                                 common-lisp:nil
                                 ((storage-configurations :target-type
                                   storage-configuration-summary-list :required
                                   common-lisp:t :member-name
                                   "storageConfigurations")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListStorageConfigurationsResponse"))

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

(smithy/sdk/shapes:define-type max-composition-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-encoder-configuration-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-ingest-configuration-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-participant-event-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-participant-replica-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-participant-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-public-key-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-stage-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-stage-session-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-storage-configuration-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type omit-stopped-video
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure participant common-lisp:nil
                                    ((participant-id :target-type
                                      participant-id :member-name
                                      "participantId")
                                     (user-id :target-type user-id :member-name
                                      "userId")
                                     (state :target-type participant-state
                                      :member-name "state")
                                     (first-join-time :target-type time
                                      :member-name "firstJoinTime")
                                     (attributes :target-type
                                      participant-attributes :member-name
                                      "attributes")
                                     (published :target-type published
                                      :member-name "published")
                                     (isp-name :target-type
                                      participant-client-attribute :member-name
                                      "ispName")
                                     (os-name :target-type
                                      participant-client-attribute :member-name
                                      "osName")
                                     (os-version :target-type
                                      participant-client-attribute :member-name
                                      "osVersion")
                                     (browser-name :target-type
                                      participant-client-attribute :member-name
                                      "browserName")
                                     (browser-version :target-type
                                      participant-client-attribute :member-name
                                      "browserVersion")
                                     (sdk-version :target-type
                                      participant-client-attribute :member-name
                                      "sdkVersion")
                                     (recording-s3bucket-name :target-type
                                      participant-recording-s3bucket-name
                                      :member-name "recordingS3BucketName")
                                     (recording-s3prefix :target-type
                                      participant-recording-s3prefix
                                      :member-name "recordingS3Prefix")
                                     (recording-state :target-type
                                      participant-recording-state :member-name
                                      "recordingState")
                                     (protocol :target-type
                                      participant-protocol :member-name
                                      "protocol")
                                     (replication-type :target-type
                                      replication-type :member-name
                                      "replicationType")
                                     (replication-state :target-type
                                      replication-state :member-name
                                      "replicationState")
                                     (source-stage-arn :target-type stage-arn
                                      :member-name "sourceStageArn")
                                     (source-session-id :target-type
                                      stage-session-id :member-name
                                      "sourceSessionId"))
                                    (:shape-name "Participant"))

(smithy/sdk/shapes:define-map participant-attributes :key string :value string)

(smithy/sdk/shapes:define-type participant-client-attribute
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type participant-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list participant-list :member participant-summary)

(smithy/sdk/shapes:define-enum participant-protocol
    common-lisp:nil
  (:unknown "UNKNOWN")
  (:whip "WHIP")
  (:rtmp "RTMP")
  (:rtmps "RTMPS"))

(smithy/sdk/shapes:define-type participant-recording-filter-by-recording-state
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure participant-recording-hls-configuration
                                    common-lisp:nil
                                    ((target-segment-duration-seconds
                                      :target-type
                                      participant-recording-target-segment-duration-seconds
                                      :member-name
                                      "targetSegmentDurationSeconds"))
                                    (:shape-name
                                     "ParticipantRecordingHlsConfiguration"))

(smithy/sdk/shapes:define-enum participant-recording-media-type
    common-lisp:nil
  (:audio-video "AUDIO_VIDEO")
  (:audio-only "AUDIO_ONLY")
  (:none "NONE"))

(smithy/sdk/shapes:define-list participant-recording-media-type-list :member
                               participant-recording-media-type)

(smithy/sdk/shapes:define-type participant-recording-reconnect-window-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type participant-recording-s3bucket-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type participant-recording-s3prefix
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type participant-recording-state
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 participant-recording-target-segment-duration-seconds
 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure participant-replica common-lisp:nil
                                    ((source-stage-arn :target-type stage-arn
                                      :required common-lisp:t :member-name
                                      "sourceStageArn")
                                     (participant-id :target-type
                                      participant-id :required common-lisp:t
                                      :member-name "participantId")
                                     (source-session-id :target-type
                                      stage-session-id :required common-lisp:t
                                      :member-name "sourceSessionId")
                                     (destination-stage-arn :target-type
                                      stage-arn :required common-lisp:t
                                      :member-name "destinationStageArn")
                                     (destination-session-id :target-type
                                      stage-session-id :required common-lisp:t
                                      :member-name "destinationSessionId")
                                     (replication-state :target-type
                                      replication-state :required common-lisp:t
                                      :member-name "replicationState"))
                                    (:shape-name "ParticipantReplica"))

(smithy/sdk/shapes:define-list participant-replica-list :member
                               participant-replica)

(smithy/sdk/shapes:define-type participant-state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure participant-summary common-lisp:nil
                                    ((participant-id :target-type
                                      participant-id :member-name
                                      "participantId")
                                     (user-id :target-type user-id :member-name
                                      "userId")
                                     (state :target-type participant-state
                                      :member-name "state")
                                     (first-join-time :target-type time
                                      :member-name "firstJoinTime")
                                     (published :target-type published
                                      :member-name "published")
                                     (recording-state :target-type
                                      participant-recording-state :member-name
                                      "recordingState")
                                     (replication-type :target-type
                                      replication-type :member-name
                                      "replicationType")
                                     (replication-state :target-type
                                      replication-state :member-name
                                      "replicationState")
                                     (source-stage-arn :target-type stage-arn
                                      :member-name "sourceStageArn")
                                     (source-session-id :target-type
                                      stage-session-id :member-name
                                      "sourceSessionId"))
                                    (:shape-name "ParticipantSummary"))

(smithy/sdk/shapes:define-structure participant-thumbnail-configuration
                                    common-lisp:nil
                                    ((target-interval-seconds :target-type
                                      thumbnail-interval-seconds :member-name
                                      "targetIntervalSeconds")
                                     (storage :target-type
                                      thumbnail-storage-type-list :member-name
                                      "storage")
                                     (recording-mode :target-type
                                      thumbnail-recording-mode :member-name
                                      "recordingMode"))
                                    (:shape-name
                                     "ParticipantThumbnailConfiguration"))

(smithy/sdk/shapes:define-structure participant-token common-lisp:nil
                                    ((participant-id :target-type
                                      participant-token-id :member-name
                                      "participantId")
                                     (token :target-type
                                      participant-token-string :member-name
                                      "token")
                                     (user-id :target-type
                                      participant-token-user-id :member-name
                                      "userId")
                                     (attributes :target-type
                                      participant-token-attributes :member-name
                                      "attributes")
                                     (duration :target-type
                                      participant-token-duration-minutes
                                      :member-name "duration")
                                     (capabilities :target-type
                                      participant-token-capabilities
                                      :member-name "capabilities")
                                     (expiration-time :target-type
                                      participant-token-expiration-time
                                      :member-name "expirationTime"))
                                    (:shape-name "ParticipantToken"))

(smithy/sdk/shapes:define-map participant-token-attributes :key string :value
                              string)

(smithy/sdk/shapes:define-list participant-token-capabilities :member
                               participant-token-capability)

(smithy/sdk/shapes:define-type participant-token-capability
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure participant-token-configuration
                                    common-lisp:nil
                                    ((duration :target-type
                                      participant-token-duration-minutes
                                      :member-name "duration")
                                     (user-id :target-type
                                      participant-token-user-id :member-name
                                      "userId")
                                     (attributes :target-type
                                      participant-token-attributes :member-name
                                      "attributes")
                                     (capabilities :target-type
                                      participant-token-capabilities
                                      :member-name "capabilities"))
                                    (:shape-name
                                     "ParticipantTokenConfiguration"))

(smithy/sdk/shapes:define-list participant-token-configurations :member
                               participant-token-configuration)

(smithy/sdk/shapes:define-type participant-token-duration-minutes
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type participant-token-expiration-time
                               smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

(smithy/sdk/shapes:define-type participant-token-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list participant-token-list :member participant-token)

(smithy/sdk/shapes:define-type participant-token-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type participant-token-user-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error pending-verification common-lisp:nil
                                ((access-control-allow-origin :target-type
                                  string :member-name
                                  "accessControlAllowOrigin" :http-header
                                  "Access-Control-Allow-Origin")
                                 (access-control-expose-headers :target-type
                                  string :member-name
                                  "accessControlExposeHeaders" :http-header
                                  "Access-Control-Expose-Headers")
                                 (cache-control :target-type string
                                  :member-name "cacheControl" :http-header
                                  "Cache-Control")
                                 (content-security-policy :target-type string
                                  :member-name "contentSecurityPolicy"
                                  :http-header "Content-Security-Policy")
                                 (strict-transport-security :target-type string
                                  :member-name "strictTransportSecurity"
                                  :http-header "Strict-Transport-Security")
                                 (x-content-type-options :target-type string
                                  :member-name "xContentTypeOptions"
                                  :http-header "X-Content-Type-Options")
                                 (x-frame-options :target-type string
                                  :member-name "xFrameOptions" :http-header
                                  "X-Frame-Options")
                                 (x-amzn-error-type :target-type string
                                  :member-name "xAmznErrorType" :http-header
                                  "x-amzn-ErrorType")
                                 (exception-message :target-type error-message
                                  :member-name "exceptionMessage"))
                                (:shape-name "PendingVerification")
                                (:error-code 403)
                                (:base-class ivs-realtime-error))

(smithy/sdk/shapes:define-enum pip-behavior
    common-lisp:nil
  (:static "STATIC")
  (:dynamic "DYNAMIC"))

(smithy/sdk/shapes:define-structure pip-configuration common-lisp:nil
                                    ((featured-participant-attribute
                                      :target-type attribute-key :member-name
                                      "featuredParticipantAttribute")
                                     (omit-stopped-video :target-type
                                      omit-stopped-video :member-name
                                      "omitStoppedVideo")
                                     (video-fill-mode :target-type
                                      video-fill-mode :member-name
                                      "videoFillMode")
                                     (grid-gap :target-type grid-gap
                                      :member-name "gridGap")
                                     (pip-participant-attribute :target-type
                                      attribute-key :member-name
                                      "pipParticipantAttribute")
                                     (pip-behavior :target-type pip-behavior
                                      :member-name "pipBehavior")
                                     (pip-offset :target-type pip-offset
                                      :member-name "pipOffset")
                                     (pip-position :target-type pip-position
                                      :member-name "pipPosition")
                                     (pip-width :target-type pip-width
                                      :member-name "pipWidth")
                                     (pip-height :target-type pip-height
                                      :member-name "pipHeight"))
                                    (:shape-name "PipConfiguration"))

(smithy/sdk/shapes:define-type pip-height smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type pip-offset smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum pip-position
    common-lisp:nil
  (:top-left "TOP_LEFT")
  (:top-right "TOP_RIGHT")
  (:bottom-left "BOTTOM_LEFT")
  (:bottom-right "BOTTOM_RIGHT"))

(smithy/sdk/shapes:define-type pip-width smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure public-key common-lisp:nil
                                    ((arn :target-type public-key-arn
                                      :member-name "arn")
                                     (name :target-type public-key-name
                                      :member-name "name")
                                     (public-key-material :target-type
                                      public-key-material :member-name
                                      "publicKeyMaterial")
                                     (fingerprint :target-type
                                      public-key-fingerprint :member-name
                                      "fingerprint")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "PublicKey"))

(smithy/sdk/shapes:define-type public-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type public-key-fingerprint
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list public-key-list :member public-key-summary)

(smithy/sdk/shapes:define-type public-key-material
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type public-key-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure public-key-summary common-lisp:nil
                                    ((arn :target-type public-key-arn
                                      :member-name "arn")
                                     (name :target-type public-key-name
                                      :member-name "name")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "PublicKeySummary"))

(smithy/sdk/shapes:define-type published smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type reconnect-window-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type record-participant-replicas
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure recording-configuration common-lisp:nil
                                    ((hls-configuration :target-type
                                      composition-recording-hls-configuration
                                      :member-name "hlsConfiguration")
                                     (format :target-type
                                      recording-configuration-format
                                      :member-name "format"))
                                    (:shape-name "RecordingConfiguration"))

(smithy/sdk/shapes:define-type recording-configuration-format
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type replica smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type replication-state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type replication-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((access-control-allow-origin :target-type
                                  string :member-name
                                  "accessControlAllowOrigin" :http-header
                                  "Access-Control-Allow-Origin")
                                 (access-control-expose-headers :target-type
                                  string :member-name
                                  "accessControlExposeHeaders" :http-header
                                  "Access-Control-Expose-Headers")
                                 (cache-control :target-type string
                                  :member-name "cacheControl" :http-header
                                  "Cache-Control")
                                 (content-security-policy :target-type string
                                  :member-name "contentSecurityPolicy"
                                  :http-header "Content-Security-Policy")
                                 (strict-transport-security :target-type string
                                  :member-name "strictTransportSecurity"
                                  :http-header "Strict-Transport-Security")
                                 (x-content-type-options :target-type string
                                  :member-name "xContentTypeOptions"
                                  :http-header "X-Content-Type-Options")
                                 (x-frame-options :target-type string
                                  :member-name "xFrameOptions" :http-header
                                  "X-Frame-Options")
                                 (x-amzn-error-type :target-type string
                                  :member-name "xAmznErrorType" :http-header
                                  "x-amzn-ErrorType")
                                 (exception-message :target-type error-message
                                  :member-name "exceptionMessage"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404)
                                (:base-class ivs-realtime-error))

(smithy/sdk/shapes:define-type s3bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3destination-configuration common-lisp:nil
                                    ((storage-configuration-arn :target-type
                                      storage-configuration-arn :required
                                      common-lisp:t :member-name
                                      "storageConfigurationArn")
                                     (encoder-configuration-arns :target-type
                                      encoder-configuration-arn-list :required
                                      common-lisp:t :member-name
                                      "encoderConfigurationArns")
                                     (recording-configuration :target-type
                                      recording-configuration :member-name
                                      "recordingConfiguration")
                                     (thumbnail-configurations :target-type
                                      composition-thumbnail-configuration-list
                                      :member-name "thumbnailConfigurations"))
                                    (:shape-name "S3DestinationConfiguration"))

(smithy/sdk/shapes:define-structure s3detail common-lisp:nil
                                    ((recording-prefix :target-type string
                                      :required common-lisp:t :member-name
                                      "recordingPrefix"))
                                    (:shape-name "S3Detail"))

(smithy/sdk/shapes:define-structure s3storage-configuration common-lisp:nil
                                    ((bucket-name :target-type s3bucket-name
                                      :required common-lisp:t :member-name
                                      "bucketName"))
                                    (:shape-name "S3StorageConfiguration"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((access-control-allow-origin :target-type
                                  string :member-name
                                  "accessControlAllowOrigin" :http-header
                                  "Access-Control-Allow-Origin")
                                 (access-control-expose-headers :target-type
                                  string :member-name
                                  "accessControlExposeHeaders" :http-header
                                  "Access-Control-Expose-Headers")
                                 (cache-control :target-type string
                                  :member-name "cacheControl" :http-header
                                  "Cache-Control")
                                 (content-security-policy :target-type string
                                  :member-name "contentSecurityPolicy"
                                  :http-header "Content-Security-Policy")
                                 (strict-transport-security :target-type string
                                  :member-name "strictTransportSecurity"
                                  :http-header "Strict-Transport-Security")
                                 (x-content-type-options :target-type string
                                  :member-name "xContentTypeOptions"
                                  :http-header "X-Content-Type-Options")
                                 (x-frame-options :target-type string
                                  :member-name "xFrameOptions" :http-header
                                  "X-Frame-Options")
                                 (x-amzn-error-type :target-type string
                                  :member-name "xAmznErrorType" :http-header
                                  "x-amzn-ErrorType")
                                 (exception-message :target-type error-message
                                  :member-name "exceptionMessage"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402)
                                (:base-class ivs-realtime-error))

(smithy/sdk/shapes:define-structure stage common-lisp:nil
                                    ((arn :target-type stage-arn :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type stage-name :member-name
                                      "name")
                                     (active-session-id :target-type
                                      stage-session-id :member-name
                                      "activeSessionId")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (auto-participant-recording-configuration
                                      :target-type
                                      auto-participant-recording-configuration
                                      :member-name
                                      "autoParticipantRecordingConfiguration")
                                     (endpoints :target-type stage-endpoints
                                      :member-name "endpoints"))
                                    (:shape-name "Stage"))

(smithy/sdk/shapes:define-type stage-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type stage-endpoint smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure stage-endpoints common-lisp:nil
                                    ((events :target-type stage-endpoint
                                      :member-name "events")
                                     (whip :target-type stage-endpoint
                                      :member-name "whip")
                                     (rtmp :target-type stage-endpoint
                                      :member-name "rtmp")
                                     (rtmps :target-type stage-endpoint
                                      :member-name "rtmps"))
                                    (:shape-name "StageEndpoints"))

(smithy/sdk/shapes:define-type stage-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure stage-session common-lisp:nil
                                    ((session-id :target-type stage-session-id
                                      :member-name "sessionId")
                                     (start-time :target-type time :member-name
                                      "startTime")
                                     (end-time :target-type time :member-name
                                      "endTime"))
                                    (:shape-name "StageSession"))

(smithy/sdk/shapes:define-type stage-session-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list stage-session-list :member stage-session-summary)

(smithy/sdk/shapes:define-structure stage-session-summary common-lisp:nil
                                    ((session-id :target-type stage-session-id
                                      :member-name "sessionId")
                                     (start-time :target-type time :member-name
                                      "startTime")
                                     (end-time :target-type time :member-name
                                      "endTime"))
                                    (:shape-name "StageSessionSummary"))

(smithy/sdk/shapes:define-structure stage-summary common-lisp:nil
                                    ((arn :target-type stage-arn :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type stage-name :member-name
                                      "name")
                                     (active-session-id :target-type
                                      stage-session-id :member-name
                                      "activeSessionId")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "StageSummary"))

(smithy/sdk/shapes:define-list stage-summary-list :member stage-summary)

(smithy/sdk/shapes:define-input start-composition-request common-lisp:nil
                                ((stage-arn :target-type stage-arn :required
                                  common-lisp:t :member-name "stageArn")
                                 (idempotency-token :target-type
                                  composition-client-token :member-name
                                  "idempotencyToken")
                                 (layout :target-type layout-configuration
                                  :member-name "layout")
                                 (destinations :target-type
                                  destination-configuration-list :required
                                  common-lisp:t :member-name "destinations")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "StartCompositionRequest"))

(smithy/sdk/shapes:define-output start-composition-response common-lisp:nil
                                 ((composition :target-type composition
                                   :member-name "composition"))
                                 (:shape-name "StartCompositionResponse"))

(smithy/sdk/shapes:define-input start-participant-replication-request
                                common-lisp:nil
                                ((source-stage-arn :target-type stage-arn
                                  :required common-lisp:t :member-name
                                  "sourceStageArn")
                                 (destination-stage-arn :target-type stage-arn
                                  :required common-lisp:t :member-name
                                  "destinationStageArn")
                                 (participant-id :target-type participant-id
                                  :required common-lisp:t :member-name
                                  "participantId")
                                 (reconnect-window-seconds :target-type
                                  reconnect-window-seconds :member-name
                                  "reconnectWindowSeconds")
                                 (attributes :target-type
                                  participant-attributes :member-name
                                  "attributes"))
                                (:shape-name
                                 "StartParticipantReplicationRequest"))

(smithy/sdk/shapes:define-output start-participant-replication-response
                                 common-lisp:nil
                                 ((access-control-allow-origin :target-type
                                   string :member-name
                                   "accessControlAllowOrigin" :http-header
                                   "Access-Control-Allow-Origin")
                                  (access-control-expose-headers :target-type
                                   string :member-name
                                   "accessControlExposeHeaders" :http-header
                                   "Access-Control-Expose-Headers")
                                  (cache-control :target-type string
                                   :member-name "cacheControl" :http-header
                                   "Cache-Control")
                                  (content-security-policy :target-type string
                                   :member-name "contentSecurityPolicy"
                                   :http-header "Content-Security-Policy")
                                  (strict-transport-security :target-type
                                   string :member-name
                                   "strictTransportSecurity" :http-header
                                   "Strict-Transport-Security")
                                  (x-content-type-options :target-type string
                                   :member-name "xContentTypeOptions"
                                   :http-header "X-Content-Type-Options")
                                  (x-frame-options :target-type string
                                   :member-name "xFrameOptions" :http-header
                                   "X-Frame-Options"))
                                 (:shape-name
                                  "StartParticipantReplicationResponse"))

(smithy/sdk/shapes:define-input stop-composition-request common-lisp:nil
                                ((arn :target-type composition-arn :required
                                  common-lisp:t :member-name "arn"))
                                (:shape-name "StopCompositionRequest"))

(smithy/sdk/shapes:define-output stop-composition-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StopCompositionResponse"))

(smithy/sdk/shapes:define-input stop-participant-replication-request
                                common-lisp:nil
                                ((source-stage-arn :target-type stage-arn
                                  :required common-lisp:t :member-name
                                  "sourceStageArn")
                                 (destination-stage-arn :target-type stage-arn
                                  :required common-lisp:t :member-name
                                  "destinationStageArn")
                                 (participant-id :target-type participant-id
                                  :required common-lisp:t :member-name
                                  "participantId"))
                                (:shape-name
                                 "StopParticipantReplicationRequest"))

(smithy/sdk/shapes:define-output stop-participant-replication-response
                                 common-lisp:nil
                                 ((access-control-allow-origin :target-type
                                   string :member-name
                                   "accessControlAllowOrigin" :http-header
                                   "Access-Control-Allow-Origin")
                                  (access-control-expose-headers :target-type
                                   string :member-name
                                   "accessControlExposeHeaders" :http-header
                                   "Access-Control-Expose-Headers")
                                  (cache-control :target-type string
                                   :member-name "cacheControl" :http-header
                                   "Cache-Control")
                                  (content-security-policy :target-type string
                                   :member-name "contentSecurityPolicy"
                                   :http-header "Content-Security-Policy")
                                  (strict-transport-security :target-type
                                   string :member-name
                                   "strictTransportSecurity" :http-header
                                   "Strict-Transport-Security")
                                  (x-content-type-options :target-type string
                                   :member-name "xContentTypeOptions"
                                   :http-header "X-Content-Type-Options")
                                  (x-frame-options :target-type string
                                   :member-name "xFrameOptions" :http-header
                                   "X-Frame-Options"))
                                 (:shape-name
                                  "StopParticipantReplicationResponse"))

(smithy/sdk/shapes:define-structure storage-configuration common-lisp:nil
                                    ((arn :target-type
                                      storage-configuration-arn :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type
                                      storage-configuration-name :member-name
                                      "name")
                                     (s3 :target-type s3storage-configuration
                                      :member-name "s3")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "StorageConfiguration"))

(smithy/sdk/shapes:define-type storage-configuration-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type storage-configuration-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure storage-configuration-summary
                                    common-lisp:nil
                                    ((arn :target-type
                                      storage-configuration-arn :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type
                                      storage-configuration-name :member-name
                                      "name")
                                     (s3 :target-type s3storage-configuration
                                      :member-name "s3")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "StorageConfigurationSummary"))

(smithy/sdk/shapes:define-list storage-configuration-summary-list :member
                               storage-configuration-summary)

(smithy/sdk/shapes:define-type stream-key smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-type thumbnail-interval-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum thumbnail-recording-mode
    common-lisp:nil
  (:interval "INTERVAL")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum thumbnail-storage-type
    common-lisp:nil
  (:sequential "SEQUENTIAL")
  (:latest "LATEST"))

(smithy/sdk/shapes:define-list thumbnail-storage-type-list :member
                               thumbnail-storage-type)

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

(smithy/sdk/shapes:define-input update-ingest-configuration-request
                                common-lisp:nil
                                ((arn :target-type ingest-configuration-arn
                                  :required common-lisp:t :member-name "arn")
                                 (stage-arn :target-type
                                  ingest-configuration-stage-arn :member-name
                                  "stageArn"))
                                (:shape-name
                                 "UpdateIngestConfigurationRequest"))

(smithy/sdk/shapes:define-output update-ingest-configuration-response
                                 common-lisp:nil
                                 ((ingest-configuration :target-type
                                   ingest-configuration :member-name
                                   "ingestConfiguration"))
                                 (:shape-name
                                  "UpdateIngestConfigurationResponse"))

(smithy/sdk/shapes:define-structure update-stage-request common-lisp:nil
                                    ((arn :target-type stage-arn :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type stage-name :member-name
                                      "name")
                                     (auto-participant-recording-configuration
                                      :target-type
                                      auto-participant-recording-configuration
                                      :member-name
                                      "autoParticipantRecordingConfiguration"))
                                    (:shape-name "UpdateStageRequest"))

(smithy/sdk/shapes:define-structure update-stage-response common-lisp:nil
                                    ((stage :target-type stage :member-name
                                      "stage"))
                                    (:shape-name "UpdateStageResponse"))

(smithy/sdk/shapes:define-type user-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((access-control-allow-origin :target-type
                                  string :member-name
                                  "accessControlAllowOrigin" :http-header
                                  "Access-Control-Allow-Origin")
                                 (access-control-expose-headers :target-type
                                  string :member-name
                                  "accessControlExposeHeaders" :http-header
                                  "Access-Control-Expose-Headers")
                                 (cache-control :target-type string
                                  :member-name "cacheControl" :http-header
                                  "Cache-Control")
                                 (content-security-policy :target-type string
                                  :member-name "contentSecurityPolicy"
                                  :http-header "Content-Security-Policy")
                                 (strict-transport-security :target-type string
                                  :member-name "strictTransportSecurity"
                                  :http-header "Strict-Transport-Security")
                                 (x-content-type-options :target-type string
                                  :member-name "xContentTypeOptions"
                                  :http-header "X-Content-Type-Options")
                                 (x-frame-options :target-type string
                                  :member-name "xFrameOptions" :http-header
                                  "X-Frame-Options")
                                 (x-amzn-error-type :target-type string
                                  :member-name "xAmznErrorType" :http-header
                                  "x-amzn-ErrorType")
                                 (exception-message :target-type error-message
                                  :member-name "exceptionMessage"))
                                (:shape-name "ValidationException")
                                (:error-code 400)
                                (:base-class ivs-realtime-error))

(smithy/sdk/shapes:define-structure video common-lisp:nil
                                    ((width :target-type width :member-name
                                      "width")
                                     (height :target-type height :member-name
                                      "height")
                                     (framerate :target-type framerate
                                      :member-name "framerate")
                                     (bitrate :target-type bitrate :member-name
                                      "bitrate"))
                                    (:shape-name "Video"))

(smithy/sdk/shapes:define-enum video-aspect-ratio
    common-lisp:nil
  (:auto "AUTO")
  (:video "VIDEO")
  (:square "SQUARE")
  (:portrait "PORTRAIT"))

(smithy/sdk/shapes:define-enum video-fill-mode
    common-lisp:nil
  (:fill "FILL")
  (:cover "COVER")
  (:contain "CONTAIN"))

(smithy/sdk/shapes:define-type width smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-encoder-configuration :shape-name
                                       "CreateEncoderConfiguration" :input
                                       create-encoder-configuration-request
                                       :output
                                       create-encoder-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        pending-verification
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/CreateEncoderConfiguration")

(smithy/sdk/operation:define-operation create-ingest-configuration :shape-name
                                       "CreateIngestConfiguration" :input
                                       create-ingest-configuration-request
                                       :output
                                       create-ingest-configuration-response
                                       :errors
                                       (access-denied-exception
                                        pending-verification
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/CreateIngestConfiguration")

(smithy/sdk/operation:define-operation create-participant-token :shape-name
                                       "CreateParticipantToken" :input
                                       create-participant-token-request :output
                                       create-participant-token-response
                                       :errors
                                       (access-denied-exception
                                        pending-verification
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/CreateParticipantToken")

(smithy/sdk/operation:define-operation create-stage :shape-name "CreateStage"
                                       :input create-stage-request :output
                                       create-stage-response :errors
                                       (access-denied-exception
                                        pending-verification
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/CreateStage")

(smithy/sdk/operation:define-operation create-storage-configuration :shape-name
                                       "CreateStorageConfiguration" :input
                                       create-storage-configuration-request
                                       :output
                                       create-storage-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        pending-verification
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/CreateStorageConfiguration")

(smithy/sdk/operation:define-operation delete-encoder-configuration :shape-name
                                       "DeleteEncoderConfiguration" :input
                                       delete-encoder-configuration-request
                                       :output
                                       delete-encoder-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/DeleteEncoderConfiguration")

(smithy/sdk/operation:define-operation delete-ingest-configuration :shape-name
                                       "DeleteIngestConfiguration" :input
                                       delete-ingest-configuration-request
                                       :output
                                       delete-ingest-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception pending-verification
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/DeleteIngestConfiguration")

(smithy/sdk/operation:define-operation delete-public-key :shape-name
                                       "DeletePublicKey" :input
                                       delete-public-key-request :output
                                       delete-public-key-response :errors
                                       (access-denied-exception
                                        conflict-exception pending-verification
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/DeletePublicKey")

(smithy/sdk/operation:define-operation delete-stage :shape-name "DeleteStage"
                                       :input delete-stage-request :output
                                       delete-stage-response :errors
                                       (access-denied-exception
                                        conflict-exception pending-verification
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/DeleteStage")

(smithy/sdk/operation:define-operation delete-storage-configuration :shape-name
                                       "DeleteStorageConfiguration" :input
                                       delete-storage-configuration-request
                                       :output
                                       delete-storage-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/DeleteStorageConfiguration")

(smithy/sdk/operation:define-operation disconnect-participant :shape-name
                                       "DisconnectParticipant" :input
                                       disconnect-participant-request :output
                                       disconnect-participant-response :errors
                                       (access-denied-exception
                                        pending-verification
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/DisconnectParticipant")

(smithy/sdk/operation:define-operation get-composition :shape-name
                                       "GetComposition" :input
                                       get-composition-request :output
                                       get-composition-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/GetComposition")

(smithy/sdk/operation:define-operation get-encoder-configuration :shape-name
                                       "GetEncoderConfiguration" :input
                                       get-encoder-configuration-request
                                       :output
                                       get-encoder-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/GetEncoderConfiguration")

(smithy/sdk/operation:define-operation get-ingest-configuration :shape-name
                                       "GetIngestConfiguration" :input
                                       get-ingest-configuration-request :output
                                       get-ingest-configuration-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/GetIngestConfiguration")

(smithy/sdk/operation:define-operation get-participant :shape-name
                                       "GetParticipant" :input
                                       get-participant-request :output
                                       get-participant-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/GetParticipant")

(smithy/sdk/operation:define-operation get-public-key :shape-name
                                       "GetPublicKey" :input
                                       get-public-key-request :output
                                       get-public-key-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/GetPublicKey")

(smithy/sdk/operation:define-operation get-stage :shape-name "GetStage" :input
                                       get-stage-request :output
                                       get-stage-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/GetStage")

(smithy/sdk/operation:define-operation get-stage-session :shape-name
                                       "GetStageSession" :input
                                       get-stage-session-request :output
                                       get-stage-session-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/GetStageSession")

(smithy/sdk/operation:define-operation get-storage-configuration :shape-name
                                       "GetStorageConfiguration" :input
                                       get-storage-configuration-request
                                       :output
                                       get-storage-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/GetStorageConfiguration")

(smithy/sdk/operation:define-operation import-public-key :shape-name
                                       "ImportPublicKey" :input
                                       import-public-key-request :output
                                       import-public-key-response :errors
                                       (access-denied-exception
                                        conflict-exception pending-verification
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/ImportPublicKey")

(smithy/sdk/operation:define-operation list-compositions :shape-name
                                       "ListCompositions" :input
                                       list-compositions-request :output
                                       list-compositions-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/ListCompositions")

(smithy/sdk/operation:define-operation list-encoder-configurations :shape-name
                                       "ListEncoderConfigurations" :input
                                       list-encoder-configurations-request
                                       :output
                                       list-encoder-configurations-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ListEncoderConfigurations")

(smithy/sdk/operation:define-operation list-ingest-configurations :shape-name
                                       "ListIngestConfigurations" :input
                                       list-ingest-configurations-request
                                       :output
                                       list-ingest-configurations-response
                                       :errors
                                       (access-denied-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ListIngestConfigurations")

(smithy/sdk/operation:define-operation list-participant-events :shape-name
                                       "ListParticipantEvents" :input
                                       list-participant-events-request :output
                                       list-participant-events-response :errors
                                       (access-denied-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ListParticipantEvents")

(smithy/sdk/operation:define-operation list-participant-replicas :shape-name
                                       "ListParticipantReplicas" :input
                                       list-participant-replicas-request
                                       :output
                                       list-participant-replicas-response
                                       :errors
                                       (access-denied-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ListParticipantReplicas")

(smithy/sdk/operation:define-operation list-participants :shape-name
                                       "ListParticipants" :input
                                       list-participants-request :output
                                       list-participants-response :errors
                                       (access-denied-exception
                                        validation-exception)
                                       :method "POST" :uri "/ListParticipants")

(smithy/sdk/operation:define-operation list-public-keys :shape-name
                                       "ListPublicKeys" :input
                                       list-public-keys-request :output
                                       list-public-keys-response :errors
                                       (access-denied-exception
                                        validation-exception)
                                       :method "POST" :uri "/ListPublicKeys")

(smithy/sdk/operation:define-operation list-stage-sessions :shape-name
                                       "ListStageSessions" :input
                                       list-stage-sessions-request :output
                                       list-stage-sessions-response :errors
                                       (access-denied-exception
                                        validation-exception)
                                       :method "POST" :uri "/ListStageSessions")

(smithy/sdk/operation:define-operation list-stages :shape-name "ListStages"
                                       :input list-stages-request :output
                                       list-stages-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        validation-exception)
                                       :method "POST" :uri "/ListStages")

(smithy/sdk/operation:define-operation list-storage-configurations :shape-name
                                       "ListStorageConfigurations" :input
                                       list-storage-configurations-request
                                       :output
                                       list-storage-configurations-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ListStorageConfigurations")

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation start-composition :shape-name
                                       "StartComposition" :input
                                       start-composition-request :output
                                       start-composition-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        pending-verification
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/StartComposition")

(smithy/sdk/operation:define-operation start-participant-replication
                                       :shape-name
                                       "StartParticipantReplication" :input
                                       start-participant-replication-request
                                       :output
                                       start-participant-replication-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        pending-verification
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/StartParticipantReplication")

(smithy/sdk/operation:define-operation stop-composition :shape-name
                                       "StopComposition" :input
                                       stop-composition-request :output
                                       stop-composition-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/StopComposition")

(smithy/sdk/operation:define-operation stop-participant-replication :shape-name
                                       "StopParticipantReplication" :input
                                       stop-participant-replication-request
                                       :output
                                       stop-participant-replication-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/StopParticipantReplication")

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

(smithy/sdk/operation:define-operation update-ingest-configuration :shape-name
                                       "UpdateIngestConfiguration" :input
                                       update-ingest-configuration-request
                                       :output
                                       update-ingest-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception pending-verification
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/UpdateIngestConfiguration")

(smithy/sdk/operation:define-operation update-stage :shape-name "UpdateStage"
                                       :input update-stage-request :output
                                       update-stage-response :errors
                                       (access-denied-exception
                                        conflict-exception pending-verification
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/UpdateStage")
