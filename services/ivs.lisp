(uiop/package:define-package #:pira/ivs (:use)
                             (:export #:access-denied-exception
                              #:amazon-interactive-video-service
                              #:audio-configuration #:audio-configuration-list
                              #:batch-error #:batch-errors #:batch-get-channel
                              #:batch-get-channel-request
                              #:batch-get-channel-response
                              #:batch-get-stream-key
                              #:batch-get-stream-key-request
                              #:batch-get-stream-key-response
                              #:batch-start-viewer-session-revocation
                              #:batch-start-viewer-session-revocation-error
                              #:batch-start-viewer-session-revocation-errors
                              #:batch-start-viewer-session-revocation-request
                              #:batch-start-viewer-session-revocation-response
                              #:batch-start-viewer-session-revocation-viewer-session
                              #:batch-start-viewer-session-revocation-viewer-session-list
                              #:boolean #:channel #:channel-arn
                              #:channel-arn-list #:channel-latency-mode
                              #:channel-list #:channel-name
                              #:channel-not-broadcasting
                              #:channel-playback-restriction-policy-arn
                              #:channel-recording-configuration-arn
                              #:channel-summary #:channel-type #:channels
                              #:conflict-exception #:container-format
                              #:create-channel #:create-channel-request
                              #:create-channel-response
                              #:create-playback-restriction-policy
                              #:create-playback-restriction-policy-request
                              #:create-playback-restriction-policy-response
                              #:create-recording-configuration
                              #:create-recording-configuration-request
                              #:create-recording-configuration-response
                              #:create-stream-key #:create-stream-key-request
                              #:create-stream-key-response #:delete-channel
                              #:delete-channel-request
                              #:delete-playback-key-pair
                              #:delete-playback-key-pair-request
                              #:delete-playback-key-pair-response
                              #:delete-playback-restriction-policy
                              #:delete-playback-restriction-policy-request
                              #:delete-recording-configuration
                              #:delete-recording-configuration-request
                              #:delete-stream-key #:delete-stream-key-request
                              #:destination-configuration #:get-channel
                              #:get-channel-request #:get-channel-response
                              #:get-playback-key-pair
                              #:get-playback-key-pair-request
                              #:get-playback-key-pair-response
                              #:get-playback-restriction-policy
                              #:get-playback-restriction-policy-request
                              #:get-playback-restriction-policy-response
                              #:get-recording-configuration
                              #:get-recording-configuration-request
                              #:get-recording-configuration-response
                              #:get-stream #:get-stream-key
                              #:get-stream-key-request
                              #:get-stream-key-response #:get-stream-request
                              #:get-stream-response #:get-stream-session
                              #:get-stream-session-request
                              #:get-stream-session-response
                              #:import-playback-key-pair
                              #:import-playback-key-pair-request
                              #:import-playback-key-pair-response
                              #:ingest-configuration #:ingest-configurations
                              #:ingest-endpoint #:insecure-ingest #:integer
                              #:internal-server-exception #:is-authorized
                              #:is-multitrack-input-enabled #:list-channels
                              #:list-channels-request #:list-channels-response
                              #:list-playback-key-pairs
                              #:list-playback-key-pairs-request
                              #:list-playback-key-pairs-response
                              #:list-playback-restriction-policies
                              #:list-playback-restriction-policies-request
                              #:list-playback-restriction-policies-response
                              #:list-recording-configurations
                              #:list-recording-configurations-request
                              #:list-recording-configurations-response
                              #:list-stream-keys #:list-stream-keys-request
                              #:list-stream-keys-response
                              #:list-stream-sessions
                              #:list-stream-sessions-request
                              #:list-stream-sessions-response #:list-streams
                              #:list-streams-request #:list-streams-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:max-channel-results
                              #:max-playback-key-pair-results
                              #:max-playback-restriction-policy-results
                              #:max-recording-configuration-results
                              #:max-stream-key-results #:max-stream-results
                              #:multitrack-input-configuration
                              #:multitrack-maximum-resolution
                              #:multitrack-policy #:pagination-token
                              #:pending-verification #:playback-key-pair
                              #:playback-key-pair-arn
                              #:playback-key-pair-fingerprint
                              #:playback-key-pair-list #:playback-key-pair-name
                              #:playback-key-pair-summary
                              #:playback-public-key-material
                              #:playback-restriction-policy
                              #:playback-restriction-policy-allowed-country
                              #:playback-restriction-policy-allowed-country-list
                              #:playback-restriction-policy-allowed-origin
                              #:playback-restriction-policy-allowed-origin-list
                              #:playback-restriction-policy-arn
                              #:playback-restriction-policy-enable-strict-origin-enforcement
                              #:playback-restriction-policy-list
                              #:playback-restriction-policy-name
                              #:playback-restriction-policy-summary
                              #:playback-url #:put-metadata
                              #:put-metadata-request #:recording-configuration
                              #:recording-configuration-arn
                              #:recording-configuration-list
                              #:recording-configuration-name
                              #:recording-configuration-state
                              #:recording-configuration-summary
                              #:recording-mode
                              #:recording-reconnect-window-seconds
                              #:rendition-configuration
                              #:rendition-configuration-rendition
                              #:rendition-configuration-rendition-list
                              #:rendition-configuration-rendition-selection
                              #:resource-arn #:resource-not-found-exception
                              #:s3destination-bucket-name
                              #:s3destination-configuration
                              #:service-quota-exceeded-exception #:srt
                              #:srt-endpoint #:srt-passphrase
                              #:start-viewer-session-revocation
                              #:start-viewer-session-revocation-request
                              #:start-viewer-session-revocation-response
                              #:stop-stream #:stop-stream-request
                              #:stop-stream-response #:stream #:stream-event
                              #:stream-events #:stream-filters #:stream-health
                              #:stream-id #:stream-key #:stream-key-arn
                              #:stream-key-arn-list #:stream-key-list
                              #:stream-key-summary #:stream-key-value
                              #:stream-keys #:stream-list #:stream-metadata
                              #:stream-session #:stream-session-list
                              #:stream-session-summary #:stream-start-time
                              #:stream-state #:stream-summary
                              #:stream-unavailable #:stream-viewer-count
                              #:string #:tag-key #:tag-key-list #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:tags #:target-interval-seconds
                              #:throttling-exception #:thumbnail-configuration
                              #:thumbnail-configuration-resolution
                              #:thumbnail-configuration-storage
                              #:thumbnail-configuration-storage-list #:time
                              #:transcode-preset #:untag-resource
                              #:untag-resource-request
                              #:untag-resource-response #:update-channel
                              #:update-channel-request
                              #:update-channel-response
                              #:update-playback-restriction-policy
                              #:update-playback-restriction-policy-request
                              #:update-playback-restriction-policy-response
                              #:validation-exception #:video-configuration
                              #:video-configuration-list #:viewer-id
                              #:viewer-session-version #:error-code
                              #:error-message))
(common-lisp:in-package #:pira/ivs)

(smithy/sdk/service:define-service amazon-interactive-video-service :shape-name
                                   "AmazonInteractiveVideoService" :version
                                   "2020-07-14" :title
                                   "Amazon Interactive Video Service" :traits
                                   '(("aws.api#service" ("sdkId" . "ivs")
                                      ("arnNamespace" . "ivs")
                                      ("cloudFormationName" . "IVS")
                                      ("cloudTrailEventSource"
                                       . "ivs.amazonaws.com"))
                                     ("aws.auth#sigv4" ("name" . "ivs"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((exception-message :target-type error-message
                                  :member-name "exceptionMessage"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure audio-configuration common-lisp:nil
                                    ((codec :target-type string :member-name
                                      "codec")
                                     (target-bitrate :target-type integer
                                      :member-name "targetBitrate")
                                     (sample-rate :target-type integer
                                      :member-name "sampleRate")
                                     (channels :target-type integer
                                      :member-name "channels")
                                     (track :target-type string :member-name
                                      "track"))
                                    (:shape-name "AudioConfiguration"))

(smithy/sdk/shapes:define-list audio-configuration-list :member
                               audio-configuration)

(smithy/sdk/shapes:define-structure batch-error common-lisp:nil
                                    ((arn :target-type resource-arn
                                      :member-name "arn")
                                     (code :target-type error-code :member-name
                                      "code")
                                     (message :target-type error-message
                                      :member-name "message"))
                                    (:shape-name "BatchError"))

(smithy/sdk/shapes:define-list batch-errors :member batch-error)

(smithy/sdk/shapes:define-structure batch-get-channel-request common-lisp:nil
                                    ((arns :target-type channel-arn-list
                                      :required common-lisp:t :member-name
                                      "arns"))
                                    (:shape-name "BatchGetChannelRequest"))

(smithy/sdk/shapes:define-structure batch-get-channel-response common-lisp:nil
                                    ((channels :target-type channels
                                      :member-name "channels")
                                     (errors :target-type batch-errors
                                      :member-name "errors"))
                                    (:shape-name "BatchGetChannelResponse"))

(smithy/sdk/shapes:define-structure batch-get-stream-key-request
                                    common-lisp:nil
                                    ((arns :target-type stream-key-arn-list
                                      :required common-lisp:t :member-name
                                      "arns"))
                                    (:shape-name "BatchGetStreamKeyRequest"))

(smithy/sdk/shapes:define-structure batch-get-stream-key-response
                                    common-lisp:nil
                                    ((stream-keys :target-type stream-keys
                                      :member-name "streamKeys")
                                     (errors :target-type batch-errors
                                      :member-name "errors"))
                                    (:shape-name "BatchGetStreamKeyResponse"))

(smithy/sdk/shapes:define-structure batch-start-viewer-session-revocation-error
                                    common-lisp:nil
                                    ((channel-arn :target-type channel-arn
                                      :required common-lisp:t :member-name
                                      "channelArn")
                                     (viewer-id :target-type viewer-id
                                      :required common-lisp:t :member-name
                                      "viewerId")
                                     (code :target-type error-code :member-name
                                      "code")
                                     (message :target-type error-message
                                      :member-name "message"))
                                    (:shape-name
                                     "BatchStartViewerSessionRevocationError"))

(smithy/sdk/shapes:define-list batch-start-viewer-session-revocation-errors
                               :member
                               batch-start-viewer-session-revocation-error)

(smithy/sdk/shapes:define-structure
 batch-start-viewer-session-revocation-request common-lisp:nil
 ((viewer-sessions :target-type
   batch-start-viewer-session-revocation-viewer-session-list :required
   common-lisp:t :member-name "viewerSessions"))
 (:shape-name "BatchStartViewerSessionRevocationRequest"))

(smithy/sdk/shapes:define-structure
 batch-start-viewer-session-revocation-response common-lisp:nil
 ((errors :target-type batch-start-viewer-session-revocation-errors
   :member-name "errors"))
 (:shape-name "BatchStartViewerSessionRevocationResponse"))

(smithy/sdk/shapes:define-structure
 batch-start-viewer-session-revocation-viewer-session common-lisp:nil
 ((channel-arn :target-type channel-arn :required common-lisp:t :member-name
   "channelArn")
  (viewer-id :target-type viewer-id :required common-lisp:t :member-name
   "viewerId")
  (viewer-session-versions-less-than-or-equal-to :target-type
   viewer-session-version :member-name
   "viewerSessionVersionsLessThanOrEqualTo"))
 (:shape-name "BatchStartViewerSessionRevocationViewerSession"))

(smithy/sdk/shapes:define-list
 batch-start-viewer-session-revocation-viewer-session-list :member
 batch-start-viewer-session-revocation-viewer-session)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure channel common-lisp:nil
                                    ((arn :target-type channel-arn :member-name
                                      "arn")
                                     (name :target-type channel-name
                                      :member-name "name")
                                     (latency-mode :target-type
                                      channel-latency-mode :member-name
                                      "latencyMode")
                                     (type :target-type channel-type
                                      :member-name "type")
                                     (recording-configuration-arn :target-type
                                      channel-recording-configuration-arn
                                      :member-name "recordingConfigurationArn")
                                     (ingest-endpoint :target-type
                                      ingest-endpoint :member-name
                                      "ingestEndpoint")
                                     (playback-url :target-type playback-url
                                      :member-name "playbackUrl")
                                     (authorized :target-type is-authorized
                                      :member-name "authorized")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (insecure-ingest :target-type
                                      insecure-ingest :member-name
                                      "insecureIngest")
                                     (preset :target-type transcode-preset
                                      :member-name "preset")
                                     (srt :target-type srt :member-name "srt")
                                     (playback-restriction-policy-arn
                                      :target-type
                                      channel-playback-restriction-policy-arn
                                      :member-name
                                      "playbackRestrictionPolicyArn")
                                     (multitrack-input-configuration
                                      :target-type
                                      multitrack-input-configuration
                                      :member-name
                                      "multitrackInputConfiguration")
                                     (container-format :target-type
                                      container-format :member-name
                                      "containerFormat"))
                                    (:shape-name "Channel"))

(smithy/sdk/shapes:define-type channel-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list channel-arn-list :member channel-arn)

(smithy/sdk/shapes:define-type channel-latency-mode
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list channel-list :member channel-summary)

(smithy/sdk/shapes:define-type channel-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error channel-not-broadcasting common-lisp:nil
                                ((exception-message :target-type error-message
                                  :member-name "exceptionMessage"))
                                (:shape-name "ChannelNotBroadcasting")
                                (:error-code 404))

(smithy/sdk/shapes:define-type channel-playback-restriction-policy-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type channel-recording-configuration-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure channel-summary common-lisp:nil
                                    ((arn :target-type channel-arn :member-name
                                      "arn")
                                     (name :target-type channel-name
                                      :member-name "name")
                                     (latency-mode :target-type
                                      channel-latency-mode :member-name
                                      "latencyMode")
                                     (authorized :target-type is-authorized
                                      :member-name "authorized")
                                     (recording-configuration-arn :target-type
                                      channel-recording-configuration-arn
                                      :member-name "recordingConfigurationArn")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (insecure-ingest :target-type
                                      insecure-ingest :member-name
                                      "insecureIngest")
                                     (type :target-type channel-type
                                      :member-name "type")
                                     (preset :target-type transcode-preset
                                      :member-name "preset")
                                     (playback-restriction-policy-arn
                                      :target-type
                                      channel-playback-restriction-policy-arn
                                      :member-name
                                      "playbackRestrictionPolicyArn"))
                                    (:shape-name "ChannelSummary"))

(smithy/sdk/shapes:define-enum channel-type
    common-lisp:nil
  (:basic-channel-type "BASIC")
  (:standard-channel-type "STANDARD")
  (:advanced-sdchannel-type "ADVANCED_SD")
  (:advanced-hdchannel-type "ADVANCED_HD"))

(smithy/sdk/shapes:define-list channels :member channel)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((exception-message :target-type error-message
                                  :member-name "exceptionMessage"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type container-format smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure create-channel-request common-lisp:nil
                                    ((name :target-type channel-name
                                      :member-name "name")
                                     (latency-mode :target-type
                                      channel-latency-mode :member-name
                                      "latencyMode")
                                     (type :target-type channel-type
                                      :member-name "type")
                                     (authorized :target-type boolean
                                      :member-name "authorized")
                                     (recording-configuration-arn :target-type
                                      channel-recording-configuration-arn
                                      :member-name "recordingConfigurationArn")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (insecure-ingest :target-type boolean
                                      :member-name "insecureIngest")
                                     (preset :target-type transcode-preset
                                      :member-name "preset")
                                     (playback-restriction-policy-arn
                                      :target-type
                                      channel-playback-restriction-policy-arn
                                      :member-name
                                      "playbackRestrictionPolicyArn")
                                     (multitrack-input-configuration
                                      :target-type
                                      multitrack-input-configuration
                                      :member-name
                                      "multitrackInputConfiguration")
                                     (container-format :target-type
                                      container-format :member-name
                                      "containerFormat"))
                                    (:shape-name "CreateChannelRequest"))

(smithy/sdk/shapes:define-structure create-channel-response common-lisp:nil
                                    ((channel :target-type channel :member-name
                                      "channel")
                                     (stream-key :target-type stream-key
                                      :member-name "streamKey"))
                                    (:shape-name "CreateChannelResponse"))

(smithy/sdk/shapes:define-input create-playback-restriction-policy-request
                                common-lisp:nil
                                ((allowed-countries :target-type
                                  playback-restriction-policy-allowed-country-list
                                  :member-name "allowedCountries")
                                 (allowed-origins :target-type
                                  playback-restriction-policy-allowed-origin-list
                                  :member-name "allowedOrigins")
                                 (enable-strict-origin-enforcement :target-type
                                  playback-restriction-policy-enable-strict-origin-enforcement
                                  :member-name "enableStrictOriginEnforcement")
                                 (name :target-type
                                  playback-restriction-policy-name :member-name
                                  "name")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name
                                 "CreatePlaybackRestrictionPolicyRequest"))

(smithy/sdk/shapes:define-output create-playback-restriction-policy-response
                                 common-lisp:nil
                                 ((playback-restriction-policy :target-type
                                   playback-restriction-policy :member-name
                                   "playbackRestrictionPolicy"))
                                 (:shape-name
                                  "CreatePlaybackRestrictionPolicyResponse"))

(smithy/sdk/shapes:define-structure create-recording-configuration-request
                                    common-lisp:nil
                                    ((name :target-type
                                      recording-configuration-name :member-name
                                      "name")
                                     (destination-configuration :target-type
                                      destination-configuration :required
                                      common-lisp:t :member-name
                                      "destinationConfiguration")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (thumbnail-configuration :target-type
                                      thumbnail-configuration :member-name
                                      "thumbnailConfiguration")
                                     (recording-reconnect-window-seconds
                                      :target-type
                                      recording-reconnect-window-seconds
                                      :member-name
                                      "recordingReconnectWindowSeconds")
                                     (rendition-configuration :target-type
                                      rendition-configuration :member-name
                                      "renditionConfiguration"))
                                    (:shape-name
                                     "CreateRecordingConfigurationRequest"))

(smithy/sdk/shapes:define-structure create-recording-configuration-response
                                    common-lisp:nil
                                    ((recording-configuration :target-type
                                      recording-configuration :member-name
                                      "recordingConfiguration"))
                                    (:shape-name
                                     "CreateRecordingConfigurationResponse"))

(smithy/sdk/shapes:define-structure create-stream-key-request common-lisp:nil
                                    ((channel-arn :target-type channel-arn
                                      :required common-lisp:t :member-name
                                      "channelArn")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "CreateStreamKeyRequest"))

(smithy/sdk/shapes:define-structure create-stream-key-response common-lisp:nil
                                    ((stream-key :target-type stream-key
                                      :member-name "streamKey"))
                                    (:shape-name "CreateStreamKeyResponse"))

(smithy/sdk/shapes:define-structure delete-channel-request common-lisp:nil
                                    ((arn :target-type channel-arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name "DeleteChannelRequest"))

(smithy/sdk/shapes:define-structure delete-playback-key-pair-request
                                    common-lisp:nil
                                    ((arn :target-type playback-key-pair-arn
                                      :required common-lisp:t :member-name
                                      "arn"))
                                    (:shape-name
                                     "DeletePlaybackKeyPairRequest"))

(smithy/sdk/shapes:define-structure delete-playback-key-pair-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "DeletePlaybackKeyPairResponse"))

(smithy/sdk/shapes:define-input delete-playback-restriction-policy-request
                                common-lisp:nil
                                ((arn :target-type
                                  playback-restriction-policy-arn :required
                                  common-lisp:t :member-name "arn"))
                                (:shape-name
                                 "DeletePlaybackRestrictionPolicyRequest"))

(smithy/sdk/shapes:define-structure delete-recording-configuration-request
                                    common-lisp:nil
                                    ((arn :target-type
                                      recording-configuration-arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name
                                     "DeleteRecordingConfigurationRequest"))

(smithy/sdk/shapes:define-structure delete-stream-key-request common-lisp:nil
                                    ((arn :target-type stream-key-arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name "DeleteStreamKeyRequest"))

(smithy/sdk/shapes:define-structure destination-configuration common-lisp:nil
                                    ((s3 :target-type
                                      s3destination-configuration :member-name
                                      "s3"))
                                    (:shape-name "DestinationConfiguration"))

(smithy/sdk/shapes:define-structure get-channel-request common-lisp:nil
                                    ((arn :target-type channel-arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name "GetChannelRequest"))

(smithy/sdk/shapes:define-structure get-channel-response common-lisp:nil
                                    ((channel :target-type channel :member-name
                                      "channel"))
                                    (:shape-name "GetChannelResponse"))

(smithy/sdk/shapes:define-structure get-playback-key-pair-request
                                    common-lisp:nil
                                    ((arn :target-type playback-key-pair-arn
                                      :required common-lisp:t :member-name
                                      "arn"))
                                    (:shape-name "GetPlaybackKeyPairRequest"))

(smithy/sdk/shapes:define-structure get-playback-key-pair-response
                                    common-lisp:nil
                                    ((key-pair :target-type playback-key-pair
                                      :member-name "keyPair"))
                                    (:shape-name "GetPlaybackKeyPairResponse"))

(smithy/sdk/shapes:define-input get-playback-restriction-policy-request
                                common-lisp:nil
                                ((arn :target-type
                                  playback-restriction-policy-arn :required
                                  common-lisp:t :member-name "arn"))
                                (:shape-name
                                 "GetPlaybackRestrictionPolicyRequest"))

(smithy/sdk/shapes:define-output get-playback-restriction-policy-response
                                 common-lisp:nil
                                 ((playback-restriction-policy :target-type
                                   playback-restriction-policy :member-name
                                   "playbackRestrictionPolicy"))
                                 (:shape-name
                                  "GetPlaybackRestrictionPolicyResponse"))

(smithy/sdk/shapes:define-structure get-recording-configuration-request
                                    common-lisp:nil
                                    ((arn :target-type
                                      recording-configuration-arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name
                                     "GetRecordingConfigurationRequest"))

(smithy/sdk/shapes:define-structure get-recording-configuration-response
                                    common-lisp:nil
                                    ((recording-configuration :target-type
                                      recording-configuration :member-name
                                      "recordingConfiguration"))
                                    (:shape-name
                                     "GetRecordingConfigurationResponse"))

(smithy/sdk/shapes:define-structure get-stream-key-request common-lisp:nil
                                    ((arn :target-type stream-key-arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name "GetStreamKeyRequest"))

(smithy/sdk/shapes:define-structure get-stream-key-response common-lisp:nil
                                    ((stream-key :target-type stream-key
                                      :member-name "streamKey"))
                                    (:shape-name "GetStreamKeyResponse"))

(smithy/sdk/shapes:define-structure get-stream-request common-lisp:nil
                                    ((channel-arn :target-type channel-arn
                                      :required common-lisp:t :member-name
                                      "channelArn"))
                                    (:shape-name "GetStreamRequest"))

(smithy/sdk/shapes:define-structure get-stream-response common-lisp:nil
                                    ((stream :target-type stream :member-name
                                      "stream"))
                                    (:shape-name "GetStreamResponse"))

(smithy/sdk/shapes:define-structure get-stream-session-request common-lisp:nil
                                    ((channel-arn :target-type channel-arn
                                      :required common-lisp:t :member-name
                                      "channelArn")
                                     (stream-id :target-type stream-id
                                      :member-name "streamId"))
                                    (:shape-name "GetStreamSessionRequest"))

(smithy/sdk/shapes:define-structure get-stream-session-response common-lisp:nil
                                    ((stream-session :target-type
                                      stream-session :member-name
                                      "streamSession"))
                                    (:shape-name "GetStreamSessionResponse"))

(smithy/sdk/shapes:define-structure import-playback-key-pair-request
                                    common-lisp:nil
                                    ((public-key-material :target-type
                                      playback-public-key-material :required
                                      common-lisp:t :member-name
                                      "publicKeyMaterial")
                                     (name :target-type playback-key-pair-name
                                      :member-name "name")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name
                                     "ImportPlaybackKeyPairRequest"))

(smithy/sdk/shapes:define-structure import-playback-key-pair-response
                                    common-lisp:nil
                                    ((key-pair :target-type playback-key-pair
                                      :member-name "keyPair"))
                                    (:shape-name
                                     "ImportPlaybackKeyPairResponse"))

(smithy/sdk/shapes:define-structure ingest-configuration common-lisp:nil
                                    ((video :target-type video-configuration
                                      :member-name "video")
                                     (audio :target-type audio-configuration
                                      :member-name "audio"))
                                    (:shape-name "IngestConfiguration"))

(smithy/sdk/shapes:define-structure ingest-configurations common-lisp:nil
                                    ((video-configurations :target-type
                                      video-configuration-list :required
                                      common-lisp:t :member-name
                                      "videoConfigurations")
                                     (audio-configurations :target-type
                                      audio-configuration-list :required
                                      common-lisp:t :member-name
                                      "audioConfigurations"))
                                    (:shape-name "IngestConfigurations"))

(smithy/sdk/shapes:define-type ingest-endpoint smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type insecure-ingest smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((exception-message :target-type error-message
                                  :member-name "exceptionMessage"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type is-authorized smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type is-multitrack-input-enabled
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure list-channels-request common-lisp:nil
                                    ((filter-by-name :target-type channel-name
                                      :member-name "filterByName")
                                     (filter-by-recording-configuration-arn
                                      :target-type
                                      channel-recording-configuration-arn
                                      :member-name
                                      "filterByRecordingConfigurationArn")
                                     (filter-by-playback-restriction-policy-arn
                                      :target-type
                                      channel-playback-restriction-policy-arn
                                      :member-name
                                      "filterByPlaybackRestrictionPolicyArn")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken")
                                     (max-results :target-type
                                      max-channel-results :member-name
                                      "maxResults"))
                                    (:shape-name "ListChannelsRequest"))

(smithy/sdk/shapes:define-structure list-channels-response common-lisp:nil
                                    ((channels :target-type channel-list
                                      :required common-lisp:t :member-name
                                      "channels")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListChannelsResponse"))

(smithy/sdk/shapes:define-structure list-playback-key-pairs-request
                                    common-lisp:nil
                                    ((next-token :target-type pagination-token
                                      :member-name "nextToken")
                                     (max-results :target-type
                                      max-playback-key-pair-results
                                      :member-name "maxResults"))
                                    (:shape-name "ListPlaybackKeyPairsRequest"))

(smithy/sdk/shapes:define-structure list-playback-key-pairs-response
                                    common-lisp:nil
                                    ((key-pairs :target-type
                                      playback-key-pair-list :required
                                      common-lisp:t :member-name "keyPairs")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListPlaybackKeyPairsResponse"))

(smithy/sdk/shapes:define-input list-playback-restriction-policies-request
                                common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (max-results :target-type
                                  max-playback-restriction-policy-results
                                  :member-name "maxResults"))
                                (:shape-name
                                 "ListPlaybackRestrictionPoliciesRequest"))

(smithy/sdk/shapes:define-output list-playback-restriction-policies-response
                                 common-lisp:nil
                                 ((playback-restriction-policies :target-type
                                   playback-restriction-policy-list :required
                                   common-lisp:t :member-name
                                   "playbackRestrictionPolicies")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListPlaybackRestrictionPoliciesResponse"))

(smithy/sdk/shapes:define-structure list-recording-configurations-request
                                    common-lisp:nil
                                    ((next-token :target-type pagination-token
                                      :member-name "nextToken")
                                     (max-results :target-type
                                      max-recording-configuration-results
                                      :member-name "maxResults"))
                                    (:shape-name
                                     "ListRecordingConfigurationsRequest"))

(smithy/sdk/shapes:define-structure list-recording-configurations-response
                                    common-lisp:nil
                                    ((recording-configurations :target-type
                                      recording-configuration-list :required
                                      common-lisp:t :member-name
                                      "recordingConfigurations")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListRecordingConfigurationsResponse"))

(smithy/sdk/shapes:define-structure list-stream-keys-request common-lisp:nil
                                    ((channel-arn :target-type channel-arn
                                      :required common-lisp:t :member-name
                                      "channelArn")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken")
                                     (max-results :target-type
                                      max-stream-key-results :member-name
                                      "maxResults"))
                                    (:shape-name "ListStreamKeysRequest"))

(smithy/sdk/shapes:define-structure list-stream-keys-response common-lisp:nil
                                    ((stream-keys :target-type stream-key-list
                                      :required common-lisp:t :member-name
                                      "streamKeys")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListStreamKeysResponse"))

(smithy/sdk/shapes:define-structure list-stream-sessions-request
                                    common-lisp:nil
                                    ((channel-arn :target-type channel-arn
                                      :required common-lisp:t :member-name
                                      "channelArn")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken")
                                     (max-results :target-type
                                      max-stream-results :member-name
                                      "maxResults"))
                                    (:shape-name "ListStreamSessionsRequest"))

(smithy/sdk/shapes:define-structure list-stream-sessions-response
                                    common-lisp:nil
                                    ((stream-sessions :target-type
                                      stream-session-list :required
                                      common-lisp:t :member-name
                                      "streamSessions")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListStreamSessionsResponse"))

(smithy/sdk/shapes:define-structure list-streams-request common-lisp:nil
                                    ((filter-by :target-type stream-filters
                                      :member-name "filterBy")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken")
                                     (max-results :target-type
                                      max-stream-results :member-name
                                      "maxResults"))
                                    (:shape-name "ListStreamsRequest"))

(smithy/sdk/shapes:define-structure list-streams-response common-lisp:nil
                                    ((streams :target-type stream-list
                                      :required common-lisp:t :member-name
                                      "streams")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListStreamsResponse"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-request
                                    common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "resourceArn"))
                                    (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((tags :target-type tags :required
                                      common-lisp:t :member-name "tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type max-channel-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-playback-key-pair-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-playback-restriction-policy-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-recording-configuration-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-stream-key-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-stream-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure multitrack-input-configuration
                                    common-lisp:nil
                                    ((enabled :target-type
                                      is-multitrack-input-enabled :member-name
                                      "enabled")
                                     (policy :target-type multitrack-policy
                                      :member-name "policy")
                                     (maximum-resolution :target-type
                                      multitrack-maximum-resolution
                                      :member-name "maximumResolution"))
                                    (:shape-name
                                     "MultitrackInputConfiguration"))

(smithy/sdk/shapes:define-enum multitrack-maximum-resolution
    common-lisp:nil
  (:sd "SD")
  (:hd "HD")
  (:full-hd "FULL_HD"))

(smithy/sdk/shapes:define-enum multitrack-policy
    common-lisp:nil
  (:allow "ALLOW")
  (:require "REQUIRE"))

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error pending-verification common-lisp:nil
                                ((exception-message :target-type error-message
                                  :member-name "exceptionMessage"))
                                (:shape-name "PendingVerification")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure playback-key-pair common-lisp:nil
                                    ((arn :target-type playback-key-pair-arn
                                      :member-name "arn")
                                     (name :target-type playback-key-pair-name
                                      :member-name "name")
                                     (fingerprint :target-type
                                      playback-key-pair-fingerprint
                                      :member-name "fingerprint")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "PlaybackKeyPair"))

(smithy/sdk/shapes:define-type playback-key-pair-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type playback-key-pair-fingerprint
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list playback-key-pair-list :member
                               playback-key-pair-summary)

(smithy/sdk/shapes:define-type playback-key-pair-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure playback-key-pair-summary common-lisp:nil
                                    ((arn :target-type playback-key-pair-arn
                                      :member-name "arn")
                                     (name :target-type playback-key-pair-name
                                      :member-name "name")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "PlaybackKeyPairSummary"))

(smithy/sdk/shapes:define-type playback-public-key-material
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure playback-restriction-policy common-lisp:nil
                                    ((arn :target-type
                                      playback-restriction-policy-arn :required
                                      common-lisp:t :member-name "arn")
                                     (allowed-countries :target-type
                                      playback-restriction-policy-allowed-country-list
                                      :required common-lisp:t :member-name
                                      "allowedCountries")
                                     (allowed-origins :target-type
                                      playback-restriction-policy-allowed-origin-list
                                      :required common-lisp:t :member-name
                                      "allowedOrigins")
                                     (enable-strict-origin-enforcement
                                      :target-type
                                      playback-restriction-policy-enable-strict-origin-enforcement
                                      :member-name
                                      "enableStrictOriginEnforcement")
                                     (name :target-type
                                      playback-restriction-policy-name
                                      :member-name "name")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "PlaybackRestrictionPolicy"))

(smithy/sdk/shapes:define-type playback-restriction-policy-allowed-country
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list playback-restriction-policy-allowed-country-list
                               :member
                               playback-restriction-policy-allowed-country)

(smithy/sdk/shapes:define-type playback-restriction-policy-allowed-origin
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list playback-restriction-policy-allowed-origin-list
                               :member
                               playback-restriction-policy-allowed-origin)

(smithy/sdk/shapes:define-type playback-restriction-policy-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 playback-restriction-policy-enable-strict-origin-enforcement
 smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-list playback-restriction-policy-list :member
                               playback-restriction-policy-summary)

(smithy/sdk/shapes:define-type playback-restriction-policy-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure playback-restriction-policy-summary
                                    common-lisp:nil
                                    ((arn :target-type
                                      playback-restriction-policy-arn :required
                                      common-lisp:t :member-name "arn")
                                     (allowed-countries :target-type
                                      playback-restriction-policy-allowed-country-list
                                      :required common-lisp:t :member-name
                                      "allowedCountries")
                                     (allowed-origins :target-type
                                      playback-restriction-policy-allowed-origin-list
                                      :required common-lisp:t :member-name
                                      "allowedOrigins")
                                     (enable-strict-origin-enforcement
                                      :target-type
                                      playback-restriction-policy-enable-strict-origin-enforcement
                                      :member-name
                                      "enableStrictOriginEnforcement")
                                     (name :target-type
                                      playback-restriction-policy-name
                                      :member-name "name")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name
                                     "PlaybackRestrictionPolicySummary"))

(smithy/sdk/shapes:define-type playback-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure put-metadata-request common-lisp:nil
                                    ((channel-arn :target-type channel-arn
                                      :required common-lisp:t :member-name
                                      "channelArn")
                                     (metadata :target-type stream-metadata
                                      :required common-lisp:t :member-name
                                      "metadata"))
                                    (:shape-name "PutMetadataRequest"))

(smithy/sdk/shapes:define-structure recording-configuration common-lisp:nil
                                    ((arn :target-type
                                      recording-configuration-arn :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type
                                      recording-configuration-name :member-name
                                      "name")
                                     (destination-configuration :target-type
                                      destination-configuration :required
                                      common-lisp:t :member-name
                                      "destinationConfiguration")
                                     (state :target-type
                                      recording-configuration-state :required
                                      common-lisp:t :member-name "state")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (thumbnail-configuration :target-type
                                      thumbnail-configuration :member-name
                                      "thumbnailConfiguration")
                                     (recording-reconnect-window-seconds
                                      :target-type
                                      recording-reconnect-window-seconds
                                      :member-name
                                      "recordingReconnectWindowSeconds")
                                     (rendition-configuration :target-type
                                      rendition-configuration :member-name
                                      "renditionConfiguration"))
                                    (:shape-name "RecordingConfiguration"))

(smithy/sdk/shapes:define-type recording-configuration-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list recording-configuration-list :member
                               recording-configuration-summary)

(smithy/sdk/shapes:define-type recording-configuration-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type recording-configuration-state
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure recording-configuration-summary
                                    common-lisp:nil
                                    ((arn :target-type
                                      recording-configuration-arn :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type
                                      recording-configuration-name :member-name
                                      "name")
                                     (destination-configuration :target-type
                                      destination-configuration :required
                                      common-lisp:t :member-name
                                      "destinationConfiguration")
                                     (state :target-type
                                      recording-configuration-state :required
                                      common-lisp:t :member-name "state")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name
                                     "RecordingConfigurationSummary"))

(smithy/sdk/shapes:define-type recording-mode smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type recording-reconnect-window-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure rendition-configuration common-lisp:nil
                                    ((rendition-selection :target-type
                                      rendition-configuration-rendition-selection
                                      :member-name "renditionSelection")
                                     (renditions :target-type
                                      rendition-configuration-rendition-list
                                      :member-name "renditions"))
                                    (:shape-name "RenditionConfiguration"))

(smithy/sdk/shapes:define-enum rendition-configuration-rendition
    common-lisp:nil
  (:sd "SD")
  (:hd "HD")
  (:full-hd "FULL_HD")
  (:lowest-resolution "LOWEST_RESOLUTION"))

(smithy/sdk/shapes:define-list rendition-configuration-rendition-list :member
                               rendition-configuration-rendition)

(smithy/sdk/shapes:define-type rendition-configuration-rendition-selection
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((exception-message :target-type error-message
                                  :member-name "exceptionMessage"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type s3destination-bucket-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3destination-configuration common-lisp:nil
                                    ((bucket-name :target-type
                                      s3destination-bucket-name :required
                                      common-lisp:t :member-name "bucketName"))
                                    (:shape-name "S3DestinationConfiguration"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((exception-message :target-type error-message
                                  :member-name "exceptionMessage"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-structure srt common-lisp:nil
                                    ((endpoint :target-type srt-endpoint
                                      :member-name "endpoint")
                                     (passphrase :target-type srt-passphrase
                                      :member-name "passphrase"))
                                    (:shape-name "Srt"))

(smithy/sdk/shapes:define-type srt-endpoint smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type srt-passphrase smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure start-viewer-session-revocation-request
                                    common-lisp:nil
                                    ((channel-arn :target-type channel-arn
                                      :required common-lisp:t :member-name
                                      "channelArn")
                                     (viewer-id :target-type viewer-id
                                      :required common-lisp:t :member-name
                                      "viewerId")
                                     (viewer-session-versions-less-than-or-equal-to
                                      :target-type viewer-session-version
                                      :member-name
                                      "viewerSessionVersionsLessThanOrEqualTo"))
                                    (:shape-name
                                     "StartViewerSessionRevocationRequest"))

(smithy/sdk/shapes:define-structure start-viewer-session-revocation-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "StartViewerSessionRevocationResponse"))

(smithy/sdk/shapes:define-structure stop-stream-request common-lisp:nil
                                    ((channel-arn :target-type channel-arn
                                      :required common-lisp:t :member-name
                                      "channelArn"))
                                    (:shape-name "StopStreamRequest"))

(smithy/sdk/shapes:define-structure stop-stream-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "StopStreamResponse"))

(smithy/sdk/shapes:define-structure stream common-lisp:nil
                                    ((channel-arn :target-type channel-arn
                                      :member-name "channelArn")
                                     (stream-id :target-type stream-id
                                      :member-name "streamId")
                                     (playback-url :target-type playback-url
                                      :member-name "playbackUrl")
                                     (start-time :target-type stream-start-time
                                      :member-name "startTime")
                                     (state :target-type stream-state
                                      :member-name "state")
                                     (health :target-type stream-health
                                      :member-name "health")
                                     (viewer-count :target-type
                                      stream-viewer-count :member-name
                                      "viewerCount"))
                                    (:shape-name "Stream"))

(smithy/sdk/shapes:define-structure stream-event common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (type :target-type string :member-name
                                      "type")
                                     (event-time :target-type time :member-name
                                      "eventTime")
                                     (code :target-type string :member-name
                                      "code"))
                                    (:shape-name "StreamEvent"))

(smithy/sdk/shapes:define-list stream-events :member stream-event)

(smithy/sdk/shapes:define-structure stream-filters common-lisp:nil
                                    ((health :target-type stream-health
                                      :member-name "health"))
                                    (:shape-name "StreamFilters"))

(smithy/sdk/shapes:define-type stream-health smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type stream-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure stream-key common-lisp:nil
                                    ((arn :target-type stream-key-arn
                                      :member-name "arn")
                                     (value :target-type stream-key-value
                                      :member-name "value")
                                     (channel-arn :target-type channel-arn
                                      :member-name "channelArn")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "StreamKey"))

(smithy/sdk/shapes:define-type stream-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list stream-key-arn-list :member stream-key-arn)

(smithy/sdk/shapes:define-list stream-key-list :member stream-key-summary)

(smithy/sdk/shapes:define-structure stream-key-summary common-lisp:nil
                                    ((arn :target-type stream-key-arn
                                      :member-name "arn")
                                     (channel-arn :target-type channel-arn
                                      :member-name "channelArn")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "StreamKeySummary"))

(smithy/sdk/shapes:define-type stream-key-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list stream-keys :member stream-key)

(smithy/sdk/shapes:define-list stream-list :member stream-summary)

(smithy/sdk/shapes:define-type stream-metadata smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure stream-session common-lisp:nil
                                    ((stream-id :target-type stream-id
                                      :member-name "streamId")
                                     (start-time :target-type time :member-name
                                      "startTime")
                                     (end-time :target-type time :member-name
                                      "endTime")
                                     (channel :target-type channel :member-name
                                      "channel")
                                     (ingest-configuration :target-type
                                      ingest-configuration :member-name
                                      "ingestConfiguration")
                                     (ingest-configurations :target-type
                                      ingest-configurations :member-name
                                      "ingestConfigurations")
                                     (recording-configuration :target-type
                                      recording-configuration :member-name
                                      "recordingConfiguration")
                                     (truncated-events :target-type
                                      stream-events :member-name
                                      "truncatedEvents"))
                                    (:shape-name "StreamSession"))

(smithy/sdk/shapes:define-list stream-session-list :member
                               stream-session-summary)

(smithy/sdk/shapes:define-structure stream-session-summary common-lisp:nil
                                    ((stream-id :target-type stream-id
                                      :member-name "streamId")
                                     (start-time :target-type time :member-name
                                      "startTime")
                                     (end-time :target-type time :member-name
                                      "endTime")
                                     (has-error-event :target-type boolean
                                      :member-name "hasErrorEvent"))
                                    (:shape-name "StreamSessionSummary"))

(smithy/sdk/shapes:define-type stream-start-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type stream-state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure stream-summary common-lisp:nil
                                    ((channel-arn :target-type channel-arn
                                      :member-name "channelArn")
                                     (stream-id :target-type stream-id
                                      :member-name "streamId")
                                     (state :target-type stream-state
                                      :member-name "state")
                                     (health :target-type stream-health
                                      :member-name "health")
                                     (viewer-count :target-type
                                      stream-viewer-count :member-name
                                      "viewerCount")
                                     (start-time :target-type stream-start-time
                                      :member-name "startTime"))
                                    (:shape-name "StreamSummary"))

(smithy/sdk/shapes:define-error stream-unavailable common-lisp:nil
                                ((exception-message :target-type error-message
                                  :member-name "exceptionMessage"))
                                (:shape-name "StreamUnavailable")
                                (:error-code 503))

(smithy/sdk/shapes:define-type stream-viewer-count smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-structure tag-resource-request common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "resourceArn")
                                     (tags :target-type tags :required
                                      common-lisp:t :member-name "tags"))
                                    (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-structure tag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map tags :key tag-key :value tag-value)

(smithy/sdk/shapes:define-type target-interval-seconds
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((exception-message :target-type error-message
                                  :member-name "exceptionMessage"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure thumbnail-configuration common-lisp:nil
                                    ((recording-mode :target-type
                                      recording-mode :member-name
                                      "recordingMode")
                                     (target-interval-seconds :target-type
                                      target-interval-seconds :member-name
                                      "targetIntervalSeconds")
                                     (resolution :target-type
                                      thumbnail-configuration-resolution
                                      :member-name "resolution")
                                     (storage :target-type
                                      thumbnail-configuration-storage-list
                                      :member-name "storage"))
                                    (:shape-name "ThumbnailConfiguration"))

(smithy/sdk/shapes:define-enum thumbnail-configuration-resolution
    common-lisp:nil
  (:sd "SD")
  (:hd "HD")
  (:full-hd "FULL_HD")
  (:lowest-resolution "LOWEST_RESOLUTION"))

(smithy/sdk/shapes:define-type thumbnail-configuration-storage
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list thumbnail-configuration-storage-list :member
                               thumbnail-configuration-storage)

(smithy/sdk/shapes:define-type time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-enum transcode-preset
    common-lisp:nil
  (:higher-bandwidth-transcode-preset "HIGHER_BANDWIDTH_DELIVERY")
  (:constrained-bandwidth-transcode-preset "CONSTRAINED_BANDWIDTH_DELIVERY"))

(smithy/sdk/shapes:define-structure untag-resource-request common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "resourceArn")
                                     (tag-keys :target-type tag-key-list
                                      :required common-lisp:t :member-name
                                      "tagKeys" :http-query "tagKeys"))
                                    (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-structure untag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-structure update-channel-request common-lisp:nil
                                    ((arn :target-type channel-arn :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type channel-name
                                      :member-name "name")
                                     (latency-mode :target-type
                                      channel-latency-mode :member-name
                                      "latencyMode")
                                     (type :target-type channel-type
                                      :member-name "type")
                                     (authorized :target-type boolean
                                      :member-name "authorized")
                                     (recording-configuration-arn :target-type
                                      channel-recording-configuration-arn
                                      :member-name "recordingConfigurationArn")
                                     (insecure-ingest :target-type boolean
                                      :member-name "insecureIngest")
                                     (preset :target-type transcode-preset
                                      :member-name "preset")
                                     (playback-restriction-policy-arn
                                      :target-type
                                      channel-playback-restriction-policy-arn
                                      :member-name
                                      "playbackRestrictionPolicyArn")
                                     (multitrack-input-configuration
                                      :target-type
                                      multitrack-input-configuration
                                      :member-name
                                      "multitrackInputConfiguration")
                                     (container-format :target-type
                                      container-format :member-name
                                      "containerFormat"))
                                    (:shape-name "UpdateChannelRequest"))

(smithy/sdk/shapes:define-structure update-channel-response common-lisp:nil
                                    ((channel :target-type channel :member-name
                                      "channel"))
                                    (:shape-name "UpdateChannelResponse"))

(smithy/sdk/shapes:define-input update-playback-restriction-policy-request
                                common-lisp:nil
                                ((arn :target-type
                                  playback-restriction-policy-arn :required
                                  common-lisp:t :member-name "arn")
                                 (allowed-countries :target-type
                                  playback-restriction-policy-allowed-country-list
                                  :member-name "allowedCountries")
                                 (allowed-origins :target-type
                                  playback-restriction-policy-allowed-origin-list
                                  :member-name "allowedOrigins")
                                 (enable-strict-origin-enforcement :target-type
                                  playback-restriction-policy-enable-strict-origin-enforcement
                                  :member-name "enableStrictOriginEnforcement")
                                 (name :target-type
                                  playback-restriction-policy-name :member-name
                                  "name"))
                                (:shape-name
                                 "UpdatePlaybackRestrictionPolicyRequest"))

(smithy/sdk/shapes:define-output update-playback-restriction-policy-response
                                 common-lisp:nil
                                 ((playback-restriction-policy :target-type
                                   playback-restriction-policy :member-name
                                   "playbackRestrictionPolicy"))
                                 (:shape-name
                                  "UpdatePlaybackRestrictionPolicyResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((exception-message :target-type error-message
                                  :member-name "exceptionMessage"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure video-configuration common-lisp:nil
                                    ((avc-profile :target-type string
                                      :member-name "avcProfile")
                                     (avc-level :target-type string
                                      :member-name "avcLevel")
                                     (codec :target-type string :member-name
                                      "codec")
                                     (encoder :target-type string :member-name
                                      "encoder")
                                     (target-bitrate :target-type integer
                                      :member-name "targetBitrate")
                                     (target-framerate :target-type integer
                                      :member-name "targetFramerate")
                                     (video-height :target-type integer
                                      :member-name "videoHeight")
                                     (video-width :target-type integer
                                      :member-name "videoWidth")
                                     (level :target-type string :member-name
                                      "level")
                                     (track :target-type string :member-name
                                      "track")
                                     (profile :target-type string :member-name
                                      "profile"))
                                    (:shape-name "VideoConfiguration"))

(smithy/sdk/shapes:define-list video-configuration-list :member
                               video-configuration)

(smithy/sdk/shapes:define-type viewer-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type viewer-session-version
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type error-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation batch-get-channel :shape-name
                                       "BatchGetChannel" :input
                                       batch-get-channel-request :output
                                       batch-get-channel-response :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/BatchGetChannel")

(smithy/sdk/operation:define-operation batch-get-stream-key :shape-name
                                       "BatchGetStreamKey" :input
                                       batch-get-stream-key-request :output
                                       batch-get-stream-key-response :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/BatchGetStreamKey")

(smithy/sdk/operation:define-operation batch-start-viewer-session-revocation
                                       :shape-name
                                       "BatchStartViewerSessionRevocation"
                                       :input
                                       batch-start-viewer-session-revocation-request
                                       :output
                                       batch-start-viewer-session-revocation-response
                                       :errors
                                       (access-denied-exception
                                        pending-verification
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/BatchStartViewerSessionRevocation")

(smithy/sdk/operation:define-operation create-channel :shape-name
                                       "CreateChannel" :input
                                       create-channel-request :output
                                       create-channel-response :errors
                                       (access-denied-exception
                                        pending-verification
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/CreateChannel")

(smithy/sdk/operation:define-operation create-playback-restriction-policy
                                       :shape-name
                                       "CreatePlaybackRestrictionPolicy" :input
                                       create-playback-restriction-policy-request
                                       :output
                                       create-playback-restriction-policy-response
                                       :errors
                                       (access-denied-exception
                                        pending-verification
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/CreatePlaybackRestrictionPolicy")

(smithy/sdk/operation:define-operation create-recording-configuration
                                       :shape-name
                                       "CreateRecordingConfiguration" :input
                                       create-recording-configuration-request
                                       :output
                                       create-recording-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        pending-verification
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/CreateRecordingConfiguration")

(smithy/sdk/operation:define-operation create-stream-key :shape-name
                                       "CreateStreamKey" :input
                                       create-stream-key-request :output
                                       create-stream-key-response :errors
                                       (access-denied-exception
                                        pending-verification
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/CreateStreamKey")

(smithy/sdk/operation:define-operation delete-channel :shape-name
                                       "DeleteChannel" :input
                                       delete-channel-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception pending-verification
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/DeleteChannel"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-playback-key-pair :shape-name
                                       "DeletePlaybackKeyPair" :input
                                       delete-playback-key-pair-request :output
                                       delete-playback-key-pair-response
                                       :errors
                                       (access-denied-exception
                                        pending-verification
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/DeletePlaybackKeyPair")

(smithy/sdk/operation:define-operation delete-playback-restriction-policy
                                       :shape-name
                                       "DeletePlaybackRestrictionPolicy" :input
                                       delete-playback-restriction-policy-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception pending-verification
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/DeletePlaybackRestrictionPolicy" :code
                                       204)

(smithy/sdk/operation:define-operation delete-recording-configuration
                                       :shape-name
                                       "DeleteRecordingConfiguration" :input
                                       delete-recording-configuration-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/DeleteRecordingConfiguration" :code
                                       204)

(smithy/sdk/operation:define-operation delete-stream-key :shape-name
                                       "DeleteStreamKey" :input
                                       delete-stream-key-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        pending-verification
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/DeleteStreamKey"
                                       :code 204)

(smithy/sdk/operation:define-operation get-channel :shape-name "GetChannel"
                                       :input get-channel-request :output
                                       get-channel-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/GetChannel")

(smithy/sdk/operation:define-operation get-playback-key-pair :shape-name
                                       "GetPlaybackKeyPair" :input
                                       get-playback-key-pair-request :output
                                       get-playback-key-pair-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/GetPlaybackKeyPair")

(smithy/sdk/operation:define-operation get-playback-restriction-policy
                                       :shape-name
                                       "GetPlaybackRestrictionPolicy" :input
                                       get-playback-restriction-policy-request
                                       :output
                                       get-playback-restriction-policy-response
                                       :errors
                                       (access-denied-exception
                                        pending-verification
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/GetPlaybackRestrictionPolicy")

(smithy/sdk/operation:define-operation get-recording-configuration :shape-name
                                       "GetRecordingConfiguration" :input
                                       get-recording-configuration-request
                                       :output
                                       get-recording-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/GetRecordingConfiguration")

(smithy/sdk/operation:define-operation get-stream :shape-name "GetStream"
                                       :input get-stream-request :output
                                       get-stream-response :errors
                                       (access-denied-exception
                                        channel-not-broadcasting
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/GetStream")

(smithy/sdk/operation:define-operation get-stream-key :shape-name
                                       "GetStreamKey" :input
                                       get-stream-key-request :output
                                       get-stream-key-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/GetStreamKey")

(smithy/sdk/operation:define-operation get-stream-session :shape-name
                                       "GetStreamSession" :input
                                       get-stream-session-request :output
                                       get-stream-session-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/GetStreamSession")

(smithy/sdk/operation:define-operation import-playback-key-pair :shape-name
                                       "ImportPlaybackKeyPair" :input
                                       import-playback-key-pair-request :output
                                       import-playback-key-pair-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception pending-verification
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ImportPlaybackKeyPair")

(smithy/sdk/operation:define-operation list-channels :shape-name "ListChannels"
                                       :input list-channels-request :output
                                       list-channels-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        validation-exception)
                                       :method "POST" :uri "/ListChannels")

(smithy/sdk/operation:define-operation list-playback-key-pairs :shape-name
                                       "ListPlaybackKeyPairs" :input
                                       list-playback-key-pairs-request :output
                                       list-playback-key-pairs-response :errors
                                       (access-denied-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ListPlaybackKeyPairs")

(smithy/sdk/operation:define-operation list-playback-restriction-policies
                                       :shape-name
                                       "ListPlaybackRestrictionPolicies" :input
                                       list-playback-restriction-policies-request
                                       :output
                                       list-playback-restriction-policies-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception pending-verification
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ListPlaybackRestrictionPolicies")

(smithy/sdk/operation:define-operation list-recording-configurations
                                       :shape-name
                                       "ListRecordingConfigurations" :input
                                       list-recording-configurations-request
                                       :output
                                       list-recording-configurations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ListRecordingConfigurations")

(smithy/sdk/operation:define-operation list-stream-keys :shape-name
                                       "ListStreamKeys" :input
                                       list-stream-keys-request :output
                                       list-stream-keys-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/ListStreamKeys")

(smithy/sdk/operation:define-operation list-stream-sessions :shape-name
                                       "ListStreamSessions" :input
                                       list-stream-sessions-request :output
                                       list-stream-sessions-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ListStreamSessions")

(smithy/sdk/operation:define-operation list-streams :shape-name "ListStreams"
                                       :input list-streams-request :output
                                       list-streams-response :errors
                                       (access-denied-exception
                                        validation-exception)
                                       :method "POST" :uri "/ListStreams")

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation put-metadata :shape-name "PutMetadata"
                                       :input put-metadata-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        channel-not-broadcasting
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/PutMetadata" :code
                                       204)

(smithy/sdk/operation:define-operation start-viewer-session-revocation
                                       :shape-name
                                       "StartViewerSessionRevocation" :input
                                       start-viewer-session-revocation-request
                                       :output
                                       start-viewer-session-revocation-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        pending-verification
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/StartViewerSessionRevocation")

(smithy/sdk/operation:define-operation stop-stream :shape-name "StopStream"
                                       :input stop-stream-request :output
                                       stop-stream-response :errors
                                       (access-denied-exception
                                        channel-not-broadcasting
                                        resource-not-found-exception
                                        stream-unavailable
                                        validation-exception)
                                       :method "POST" :uri "/StopStream")

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

(smithy/sdk/operation:define-operation update-channel :shape-name
                                       "UpdateChannel" :input
                                       update-channel-request :output
                                       update-channel-response :errors
                                       (access-denied-exception
                                        conflict-exception pending-verification
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/UpdateChannel")

(smithy/sdk/operation:define-operation update-playback-restriction-policy
                                       :shape-name
                                       "UpdatePlaybackRestrictionPolicy" :input
                                       update-playback-restriction-policy-request
                                       :output
                                       update-playback-restriction-policy-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception pending-verification
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/UpdatePlaybackRestrictionPolicy")
