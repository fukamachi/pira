(uiop/package:define-package #:pira/chime-sdk-media-pipelines (:use)
                             (:export #:active-speaker-only-configuration
                              #:active-speaker-position #:amazon-resource-name
                              #:amazon-transcribe-call-analytics-processor-configuration
                              #:amazon-transcribe-processor-configuration #:arn
                              #:artifacts-concatenation-configuration
                              #:artifacts-concatenation-state
                              #:artifacts-configuration #:artifacts-state
                              #:attendee-id-list
                              #:audio-artifacts-concatenation-state
                              #:audio-artifacts-configuration
                              #:audio-channels-option
                              #:audio-concatenation-configuration
                              #:audio-mux-type #:audio-sample-rate-option
                              #:aws-region #:boolean #:border-color
                              #:border-thickness #:call-analytics-language-code
                              #:canvas-orientation #:category-name
                              #:category-name-list #:channel-definition
                              #:channel-definitions #:channel-id
                              #:chime-sdkmedia-pipelines-service
                              #:chime-sdk-meeting-concatenation-configuration
                              #:chime-sdk-meeting-configuration
                              #:chime-sdk-meeting-live-connector-configuration
                              #:client-request-token
                              #:composited-video-artifacts-configuration
                              #:composited-video-concatenation-configuration
                              #:concatenation-sink #:concatenation-sink-list
                              #:concatenation-sink-type #:concatenation-source
                              #:concatenation-source-list
                              #:concatenation-source-type
                              #:content-artifacts-configuration
                              #:content-concatenation-configuration
                              #:content-mux-type #:content-redaction-output
                              #:content-share-layout-option #:content-type
                              #:corner-radius #:create-media-capture-pipeline
                              #:create-media-concatenation-pipeline
                              #:create-media-insights-pipeline
                              #:create-media-insights-pipeline-configuration
                              #:create-media-live-connector-pipeline
                              #:create-media-pipeline-kinesis-video-stream-pool
                              #:create-media-stream-pipeline
                              #:data-channel-concatenation-configuration
                              #:data-retention-change-in-hours
                              #:data-retention-in-hours
                              #:delete-media-capture-pipeline
                              #:delete-media-insights-pipeline-configuration
                              #:delete-media-pipeline
                              #:delete-media-pipeline-kinesis-video-stream-pool
                              #:error-code #:external-user-id-list
                              #:external-user-id-type #:fragment-number-string
                              #:fragment-selector #:fragment-selector-type
                              #:get-media-capture-pipeline
                              #:get-media-insights-pipeline-configuration
                              #:get-media-pipeline
                              #:get-media-pipeline-kinesis-video-stream-pool
                              #:get-speaker-search-task
                              #:get-voice-tone-analysis-task
                              #:grid-view-configuration #:guid-string
                              #:highlight-color
                              #:horizontal-layout-configuration
                              #:horizontal-tile-position #:iso8601timestamp
                              #:issue-detection-configuration #:keyword
                              #:keyword-match-configuration
                              #:keyword-match-word-list
                              #:kinesis-data-stream-sink-configuration
                              #:kinesis-video-stream-arn
                              #:kinesis-video-stream-configuration
                              #:kinesis-video-stream-configuration-update
                              #:kinesis-video-stream-pool-configuration
                              #:kinesis-video-stream-pool-id
                              #:kinesis-video-stream-pool-name
                              #:kinesis-video-stream-pool-size
                              #:kinesis-video-stream-pool-status
                              #:kinesis-video-stream-pool-summary
                              #:kinesis-video-stream-pool-summary-list
                              #:kinesis-video-stream-recording-source-runtime-configuration
                              #:kinesis-video-stream-source-runtime-configuration
                              #:kinesis-video-stream-source-task-configuration
                              #:lambda-function-sink-configuration
                              #:language-options #:layout-option
                              #:list-media-capture-pipelines
                              #:list-media-insights-pipeline-configurations
                              #:list-media-pipeline-kinesis-video-stream-pools
                              #:list-media-pipelines #:list-tags-for-resource
                              #:live-connector-mux-type
                              #:live-connector-rtmpconfiguration
                              #:live-connector-sink-configuration
                              #:live-connector-sink-list
                              #:live-connector-sink-type
                              #:live-connector-source-configuration
                              #:live-connector-source-list
                              #:live-connector-source-type
                              #:media-capture-pipeline
                              #:media-capture-pipeline-source-configuration
                              #:media-capture-pipeline-summary
                              #:media-capture-pipeline-summary-list
                              #:media-concatenation-pipeline #:media-encoding
                              #:media-insights-pipeline
                              #:media-insights-pipeline-configuration
                              #:media-insights-pipeline-configuration-element
                              #:media-insights-pipeline-configuration-element-type
                              #:media-insights-pipeline-configuration-elements
                              #:media-insights-pipeline-configuration-name-string
                              #:media-insights-pipeline-configuration-summary
                              #:media-insights-pipeline-configuration-summary-list
                              #:media-insights-pipeline-element-status
                              #:media-insights-pipeline-element-statuses
                              #:media-insights-runtime-metadata
                              #:media-live-connector-pipeline #:media-pipeline
                              #:media-pipeline-element-status
                              #:media-pipeline-list #:media-pipeline-sink-type
                              #:media-pipeline-source-type
                              #:media-pipeline-status
                              #:media-pipeline-status-update
                              #:media-pipeline-summary
                              #:media-pipeline-task-status
                              #:media-sample-rate-hertz #:media-stream-pipeline
                              #:media-stream-pipeline-sink-type
                              #:media-stream-sink #:media-stream-sink-list
                              #:media-stream-source #:media-stream-source-list
                              #:media-stream-type
                              #:meeting-events-concatenation-configuration
                              #:model-name #:non-empty-string
                              #:number-of-channels #:partial-results-stability
                              #:participant-role #:pii-entity-types
                              #:post-call-analytics-settings
                              #:presenter-only-configuration
                              #:presenter-position
                              #:real-time-alert-configuration
                              #:real-time-alert-rule
                              #:real-time-alert-rule-list
                              #:real-time-alert-rule-type
                              #:recording-file-format
                              #:recording-stream-configuration
                              #:recording-stream-list
                              #:reserved-stream-capacity #:resolution-option
                              #:result-max #:rule-name
                              #:s3bucket-sink-configuration
                              #:s3recording-sink-configuration
                              #:s3recording-sink-runtime-configuration
                              #:selected-video-streams #:sensitive-string
                              #:sentiment-configuration
                              #:sentiment-time-period-in-seconds
                              #:sentiment-type #:sns-topic-sink-configuration
                              #:source-configuration #:speaker-search-task
                              #:sqs-queue-sink-configuration
                              #:sse-aws-key-management-params
                              #:start-speaker-search-task
                              #:start-voice-tone-analysis-task
                              #:stop-speaker-search-task
                              #:stop-voice-tone-analysis-task
                              #:stream-channel-definition
                              #:stream-configuration #:streams #:string #:tag
                              #:tag-key #:tag-key-list #:tag-list
                              #:tag-resource #:tag-value #:tile-aspect-ratio
                              #:tile-count #:tile-order #:timestamp
                              #:timestamp-range
                              #:transcription-messages-concatenation-configuration
                              #:untag-resource
                              #:update-media-insights-pipeline-configuration
                              #:update-media-insights-pipeline-status
                              #:update-media-pipeline-kinesis-video-stream-pool
                              #:vertical-layout-configuration
                              #:vertical-tile-position
                              #:video-artifacts-configuration #:video-attribute
                              #:video-concatenation-configuration
                              #:video-mux-type #:vocabulary-filter-method
                              #:vocabulary-filter-name
                              #:vocabulary-filter-names #:vocabulary-name
                              #:vocabulary-names
                              #:voice-analytics-configuration-status
                              #:voice-analytics-language-code
                              #:voice-analytics-processor-configuration
                              #:voice-enhancement-sink-configuration
                              #:voice-tone-analysis-task))
(common-lisp:in-package #:pira/chime-sdk-media-pipelines)

(smithy/sdk/service:define-service chime-sdkmedia-pipelines-service :shape-name
                                   "ChimeSDKMediaPipelinesService" :version
                                   "2021-07-15" :title
                                   "Amazon Chime SDK Media Pipelines"
                                   :operations
                                   '(create-media-capture-pipeline
                                     create-media-concatenation-pipeline
                                     create-media-insights-pipeline
                                     create-media-insights-pipeline-configuration
                                     create-media-live-connector-pipeline
                                     create-media-pipeline-kinesis-video-stream-pool
                                     create-media-stream-pipeline
                                     delete-media-capture-pipeline
                                     delete-media-insights-pipeline-configuration
                                     delete-media-pipeline
                                     delete-media-pipeline-kinesis-video-stream-pool
                                     get-media-capture-pipeline
                                     get-media-insights-pipeline-configuration
                                     get-media-pipeline
                                     get-media-pipeline-kinesis-video-stream-pool
                                     get-speaker-search-task
                                     get-voice-tone-analysis-task
                                     list-media-capture-pipelines
                                     list-media-insights-pipeline-configurations
                                     list-media-pipeline-kinesis-video-stream-pools
                                     list-media-pipelines
                                     list-tags-for-resource
                                     start-speaker-search-task
                                     start-voice-tone-analysis-task
                                     stop-speaker-search-task
                                     stop-voice-tone-analysis-task tag-resource
                                     untag-resource
                                     update-media-insights-pipeline-configuration
                                     update-media-insights-pipeline-status
                                     update-media-pipeline-kinesis-video-stream-pool)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Chime SDK Media Pipelines")
                                      ("arnNamespace" . "chime")
                                      ("cloudFormationName"
                                       . "ChimeSDKMediaPipelines")
                                      ("cloudTrailEventSource"
                                       . "chimesdkmediapipelines.amazonaws.com")
                                      ("endpointPrefix"
                                       . "media-pipelines-chime"))
                                     ("aws.auth#sigv4" ("name" . "chime"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-structure active-speaker-only-configuration
                                    common-lisp:nil
                                    ((active-speaker-position :target-type
                                      active-speaker-position :member-name
                                      "ActiveSpeakerPosition"))
                                    (:shape-name
                                     "ActiveSpeakerOnlyConfiguration"))

(smithy/sdk/shapes:define-enum active-speaker-position
    common-lisp:nil
  (:top-left "TopLeft")
  (:top-right "TopRight")
  (:bottom-left "BottomLeft")
  (:bottom-right "BottomRight"))

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 amazon-transcribe-call-analytics-processor-configuration common-lisp:nil
 ((language-code :target-type call-analytics-language-code :required
   common-lisp:t :member-name "LanguageCode")
  (vocabulary-name :target-type vocabulary-name :member-name "VocabularyName")
  (vocabulary-filter-name :target-type vocabulary-filter-name :member-name
   "VocabularyFilterName")
  (vocabulary-filter-method :target-type vocabulary-filter-method :member-name
   "VocabularyFilterMethod")
  (language-model-name :target-type model-name :member-name
   "LanguageModelName")
  (enable-partial-results-stabilization :target-type boolean :member-name
   "EnablePartialResultsStabilization")
  (partial-results-stability :target-type partial-results-stability
   :member-name "PartialResultsStability")
  (content-identification-type :target-type content-type :member-name
   "ContentIdentificationType")
  (content-redaction-type :target-type content-type :member-name
   "ContentRedactionType")
  (pii-entity-types :target-type pii-entity-types :member-name
   "PiiEntityTypes")
  (filter-partial-results :target-type boolean :member-name
   "FilterPartialResults")
  (post-call-analytics-settings :target-type post-call-analytics-settings
   :member-name "PostCallAnalyticsSettings")
  (call-analytics-stream-categories :target-type category-name-list
   :member-name "CallAnalyticsStreamCategories"))
 (:shape-name "AmazonTranscribeCallAnalyticsProcessorConfiguration"))

(smithy/sdk/shapes:define-structure amazon-transcribe-processor-configuration
                                    common-lisp:nil
                                    ((language-code :target-type
                                      call-analytics-language-code :member-name
                                      "LanguageCode")
                                     (vocabulary-name :target-type
                                      vocabulary-name :member-name
                                      "VocabularyName")
                                     (vocabulary-filter-name :target-type
                                      vocabulary-filter-name :member-name
                                      "VocabularyFilterName")
                                     (vocabulary-filter-method :target-type
                                      vocabulary-filter-method :member-name
                                      "VocabularyFilterMethod")
                                     (show-speaker-label :target-type boolean
                                      :member-name "ShowSpeakerLabel")
                                     (enable-partial-results-stabilization
                                      :target-type boolean :member-name
                                      "EnablePartialResultsStabilization")
                                     (partial-results-stability :target-type
                                      partial-results-stability :member-name
                                      "PartialResultsStability")
                                     (content-identification-type :target-type
                                      content-type :member-name
                                      "ContentIdentificationType")
                                     (content-redaction-type :target-type
                                      content-type :member-name
                                      "ContentRedactionType")
                                     (pii-entity-types :target-type
                                      pii-entity-types :member-name
                                      "PiiEntityTypes")
                                     (language-model-name :target-type
                                      model-name :member-name
                                      "LanguageModelName")
                                     (filter-partial-results :target-type
                                      boolean :member-name
                                      "FilterPartialResults")
                                     (identify-language :target-type boolean
                                      :member-name "IdentifyLanguage")
                                     (identify-multiple-languages :target-type
                                      boolean :member-name
                                      "IdentifyMultipleLanguages")
                                     (language-options :target-type
                                      language-options :member-name
                                      "LanguageOptions")
                                     (preferred-language :target-type
                                      call-analytics-language-code :member-name
                                      "PreferredLanguage")
                                     (vocabulary-names :target-type
                                      vocabulary-names :member-name
                                      "VocabularyNames")
                                     (vocabulary-filter-names :target-type
                                      vocabulary-filter-names :member-name
                                      "VocabularyFilterNames"))
                                    (:shape-name
                                     "AmazonTranscribeProcessorConfiguration"))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure artifacts-concatenation-configuration
                                    common-lisp:nil
                                    ((audio :target-type
                                      audio-concatenation-configuration
                                      :required common-lisp:t :member-name
                                      "Audio")
                                     (video :target-type
                                      video-concatenation-configuration
                                      :required common-lisp:t :member-name
                                      "Video")
                                     (content :target-type
                                      content-concatenation-configuration
                                      :required common-lisp:t :member-name
                                      "Content")
                                     (data-channel :target-type
                                      data-channel-concatenation-configuration
                                      :required common-lisp:t :member-name
                                      "DataChannel")
                                     (transcription-messages :target-type
                                      transcription-messages-concatenation-configuration
                                      :required common-lisp:t :member-name
                                      "TranscriptionMessages")
                                     (meeting-events :target-type
                                      meeting-events-concatenation-configuration
                                      :required common-lisp:t :member-name
                                      "MeetingEvents")
                                     (composited-video :target-type
                                      composited-video-concatenation-configuration
                                      :required common-lisp:t :member-name
                                      "CompositedVideo"))
                                    (:shape-name
                                     "ArtifactsConcatenationConfiguration"))

(smithy/sdk/shapes:define-enum artifacts-concatenation-state
    common-lisp:nil
  (:enabled "Enabled")
  (:disabled "Disabled"))

(smithy/sdk/shapes:define-structure artifacts-configuration common-lisp:nil
                                    ((audio :target-type
                                      audio-artifacts-configuration :required
                                      common-lisp:t :member-name "Audio")
                                     (video :target-type
                                      video-artifacts-configuration :required
                                      common-lisp:t :member-name "Video")
                                     (content :target-type
                                      content-artifacts-configuration :required
                                      common-lisp:t :member-name "Content")
                                     (composited-video :target-type
                                      composited-video-artifacts-configuration
                                      :member-name "CompositedVideo"))
                                    (:shape-name "ArtifactsConfiguration"))

(smithy/sdk/shapes:define-enum artifacts-state
    common-lisp:nil
  (:enabled "Enabled")
  (:disabled "Disabled"))

(smithy/sdk/shapes:define-list attendee-id-list :member guid-string)

(smithy/sdk/shapes:define-enum audio-artifacts-concatenation-state
    common-lisp:nil
  (:enabled "Enabled"))

(smithy/sdk/shapes:define-structure audio-artifacts-configuration
                                    common-lisp:nil
                                    ((mux-type :target-type audio-mux-type
                                      :required common-lisp:t :member-name
                                      "MuxType"))
                                    (:shape-name "AudioArtifactsConfiguration"))

(smithy/sdk/shapes:define-enum audio-channels-option
    common-lisp:nil
  (:stereo "Stereo")
  (:mono "Mono"))

(smithy/sdk/shapes:define-structure audio-concatenation-configuration
                                    common-lisp:nil
                                    ((state :target-type
                                      audio-artifacts-concatenation-state
                                      :required common-lisp:t :member-name
                                      "State"))
                                    (:shape-name
                                     "AudioConcatenationConfiguration"))

(smithy/sdk/shapes:define-enum audio-mux-type
    common-lisp:nil
  (:audio-only "AudioOnly")
  (:audio-with-active-speaker-video "AudioWithActiveSpeakerVideo")
  (:audio-with-composited-video "AudioWithCompositedVideo"))

(smithy/sdk/shapes:define-type audio-sample-rate-option
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type aws-region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message")
                                 (request-id :target-type string :member-name
                                  "RequestId"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum border-color
    common-lisp:nil
  (:black "Black")
  (:blue "Blue")
  (:red "Red")
  (:green "Green")
  (:white "White")
  (:yellow "Yellow"))

(smithy/sdk/shapes:define-type border-thickness smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum call-analytics-language-code
    common-lisp:nil
  (:en-us "en-US")
  (:en-gb "en-GB")
  (:es-us "es-US")
  (:fr-ca "fr-CA")
  (:fr-fr "fr-FR")
  (:en-au "en-AU")
  (:it-it "it-IT")
  (:de-de "de-DE")
  (:pt-br "pt-BR"))

(smithy/sdk/shapes:define-enum canvas-orientation
    common-lisp:nil
  (:landscape "Landscape")
  (:portrait "Portrait"))

(smithy/sdk/shapes:define-type category-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list category-name-list :member category-name)

(smithy/sdk/shapes:define-structure channel-definition common-lisp:nil
                                    ((channel-id :target-type channel-id
                                      :required common-lisp:t :member-name
                                      "ChannelId")
                                     (participant-role :target-type
                                      participant-role :member-name
                                      "ParticipantRole"))
                                    (:shape-name "ChannelDefinition"))

(smithy/sdk/shapes:define-list channel-definitions :member channel-definition)

(smithy/sdk/shapes:define-type channel-id smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure
 chime-sdk-meeting-concatenation-configuration common-lisp:nil
 ((artifacts-configuration :target-type artifacts-concatenation-configuration
   :required common-lisp:t :member-name "ArtifactsConfiguration"))
 (:shape-name "ChimeSdkMeetingConcatenationConfiguration"))

(smithy/sdk/shapes:define-structure chime-sdk-meeting-configuration
                                    common-lisp:nil
                                    ((source-configuration :target-type
                                      source-configuration :member-name
                                      "SourceConfiguration")
                                     (artifacts-configuration :target-type
                                      artifacts-configuration :member-name
                                      "ArtifactsConfiguration"))
                                    (:shape-name
                                     "ChimeSdkMeetingConfiguration"))

(smithy/sdk/shapes:define-structure
 chime-sdk-meeting-live-connector-configuration common-lisp:nil
 ((arn :target-type arn :required common-lisp:t :member-name "Arn")
  (mux-type :target-type live-connector-mux-type :required common-lisp:t
   :member-name "MuxType")
  (composited-video :target-type composited-video-artifacts-configuration
   :member-name "CompositedVideo")
  (source-configuration :target-type source-configuration :member-name
   "SourceConfiguration"))
 (:shape-name "ChimeSdkMeetingLiveConnectorConfiguration"))

(smithy/sdk/shapes:define-type client-request-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure composited-video-artifacts-configuration
                                    common-lisp:nil
                                    ((layout :target-type layout-option
                                      :member-name "Layout")
                                     (resolution :target-type resolution-option
                                      :member-name "Resolution")
                                     (grid-view-configuration :target-type
                                      grid-view-configuration :required
                                      common-lisp:t :member-name
                                      "GridViewConfiguration"))
                                    (:shape-name
                                     "CompositedVideoArtifactsConfiguration"))

(smithy/sdk/shapes:define-structure
 composited-video-concatenation-configuration common-lisp:nil
 ((state :target-type artifacts-concatenation-state :required common-lisp:t
   :member-name "State"))
 (:shape-name "CompositedVideoConcatenationConfiguration"))

(smithy/sdk/shapes:define-structure concatenation-sink common-lisp:nil
                                    ((type :target-type concatenation-sink-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (s3bucket-sink-configuration :target-type
                                      s3bucket-sink-configuration :required
                                      common-lisp:t :member-name
                                      "S3BucketSinkConfiguration"))
                                    (:shape-name "ConcatenationSink"))

(smithy/sdk/shapes:define-list concatenation-sink-list :member
                               concatenation-sink)

(smithy/sdk/shapes:define-enum concatenation-sink-type
    common-lisp:nil
  (:s3bucket "S3Bucket"))

(smithy/sdk/shapes:define-structure concatenation-source common-lisp:nil
                                    ((type :target-type
                                      concatenation-source-type :required
                                      common-lisp:t :member-name "Type")
                                     (media-capture-pipeline-source-configuration
                                      :target-type
                                      media-capture-pipeline-source-configuration
                                      :required common-lisp:t :member-name
                                      "MediaCapturePipelineSourceConfiguration"))
                                    (:shape-name "ConcatenationSource"))

(smithy/sdk/shapes:define-list concatenation-source-list :member
                               concatenation-source)

(smithy/sdk/shapes:define-enum concatenation-source-type
    common-lisp:nil
  (:media-capture-pipeline "MediaCapturePipeline"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message")
                                 (request-id :target-type string :member-name
                                  "RequestId"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure content-artifacts-configuration
                                    common-lisp:nil
                                    ((state :target-type artifacts-state
                                      :required common-lisp:t :member-name
                                      "State")
                                     (mux-type :target-type content-mux-type
                                      :member-name "MuxType"))
                                    (:shape-name
                                     "ContentArtifactsConfiguration"))

(smithy/sdk/shapes:define-structure content-concatenation-configuration
                                    common-lisp:nil
                                    ((state :target-type
                                      artifacts-concatenation-state :required
                                      common-lisp:t :member-name "State"))
                                    (:shape-name
                                     "ContentConcatenationConfiguration"))

(smithy/sdk/shapes:define-enum content-mux-type
    common-lisp:nil
  (:content-only "ContentOnly"))

(smithy/sdk/shapes:define-enum content-redaction-output
    common-lisp:nil
  (:redacted "redacted")
  (:redacted-and-unredacted "redacted_and_unredacted"))

(smithy/sdk/shapes:define-enum content-share-layout-option
    common-lisp:nil
  (:presenter-only "PresenterOnly")
  (:horizontal "Horizontal")
  (:vertical "Vertical")
  (:active-speaker-only "ActiveSpeakerOnly"))

(smithy/sdk/shapes:define-enum content-type
    common-lisp:nil
  (:pii "PII"))

(smithy/sdk/shapes:define-type corner-radius smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input create-media-capture-pipeline-request
                                common-lisp:nil
                                ((source-type :target-type
                                  media-pipeline-source-type :required
                                  common-lisp:t :member-name "SourceType")
                                 (source-arn :target-type arn :required
                                  common-lisp:t :member-name "SourceArn")
                                 (sink-type :target-type
                                  media-pipeline-sink-type :required
                                  common-lisp:t :member-name "SinkType")
                                 (sink-arn :target-type arn :required
                                  common-lisp:t :member-name "SinkArn")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (chime-sdk-meeting-configuration :target-type
                                  chime-sdk-meeting-configuration :member-name
                                  "ChimeSdkMeetingConfiguration")
                                 (sse-aws-key-management-params :target-type
                                  sse-aws-key-management-params :member-name
                                  "SseAwsKeyManagementParams")
                                 (sink-iam-role-arn :target-type arn
                                  :member-name "SinkIamRoleArn")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreateMediaCapturePipelineRequest"))

(smithy/sdk/shapes:define-output create-media-capture-pipeline-response
                                 common-lisp:nil
                                 ((media-capture-pipeline :target-type
                                   media-capture-pipeline :member-name
                                   "MediaCapturePipeline"))
                                 (:shape-name
                                  "CreateMediaCapturePipelineResponse"))

(smithy/sdk/shapes:define-input create-media-concatenation-pipeline-request
                                common-lisp:nil
                                ((sources :target-type
                                  concatenation-source-list :required
                                  common-lisp:t :member-name "Sources")
                                 (sinks :target-type concatenation-sink-list
                                  :required common-lisp:t :member-name "Sinks")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreateMediaConcatenationPipelineRequest"))

(smithy/sdk/shapes:define-output create-media-concatenation-pipeline-response
                                 common-lisp:nil
                                 ((media-concatenation-pipeline :target-type
                                   media-concatenation-pipeline :member-name
                                   "MediaConcatenationPipeline"))
                                 (:shape-name
                                  "CreateMediaConcatenationPipelineResponse"))

(smithy/sdk/shapes:define-input
 create-media-insights-pipeline-configuration-request common-lisp:nil
 ((media-insights-pipeline-configuration-name :target-type
   media-insights-pipeline-configuration-name-string :required common-lisp:t
   :member-name "MediaInsightsPipelineConfigurationName")
  (resource-access-role-arn :target-type arn :required common-lisp:t
   :member-name "ResourceAccessRoleArn")
  (real-time-alert-configuration :target-type real-time-alert-configuration
   :member-name "RealTimeAlertConfiguration")
  (elements :target-type media-insights-pipeline-configuration-elements
   :required common-lisp:t :member-name "Elements")
  (tags :target-type tag-list :member-name "Tags")
  (client-request-token :target-type client-request-token :member-name
   "ClientRequestToken"))
 (:shape-name "CreateMediaInsightsPipelineConfigurationRequest"))

(smithy/sdk/shapes:define-output
 create-media-insights-pipeline-configuration-response common-lisp:nil
 ((media-insights-pipeline-configuration :target-type
   media-insights-pipeline-configuration :member-name
   "MediaInsightsPipelineConfiguration"))
 (:shape-name "CreateMediaInsightsPipelineConfigurationResponse"))

(smithy/sdk/shapes:define-input create-media-insights-pipeline-request
                                common-lisp:nil
                                ((media-insights-pipeline-configuration-arn
                                  :target-type arn :required common-lisp:t
                                  :member-name
                                  "MediaInsightsPipelineConfigurationArn")
                                 (kinesis-video-stream-source-runtime-configuration
                                  :target-type
                                  kinesis-video-stream-source-runtime-configuration
                                  :member-name
                                  "KinesisVideoStreamSourceRuntimeConfiguration")
                                 (media-insights-runtime-metadata :target-type
                                  media-insights-runtime-metadata :member-name
                                  "MediaInsightsRuntimeMetadata")
                                 (kinesis-video-stream-recording-source-runtime-configuration
                                  :target-type
                                  kinesis-video-stream-recording-source-runtime-configuration
                                  :member-name
                                  "KinesisVideoStreamRecordingSourceRuntimeConfiguration")
                                 (s3recording-sink-runtime-configuration
                                  :target-type
                                  s3recording-sink-runtime-configuration
                                  :member-name
                                  "S3RecordingSinkRuntimeConfiguration")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken"))
                                (:shape-name
                                 "CreateMediaInsightsPipelineRequest"))

(smithy/sdk/shapes:define-output create-media-insights-pipeline-response
                                 common-lisp:nil
                                 ((media-insights-pipeline :target-type
                                   media-insights-pipeline :required
                                   common-lisp:t :member-name
                                   "MediaInsightsPipeline"))
                                 (:shape-name
                                  "CreateMediaInsightsPipelineResponse"))

(smithy/sdk/shapes:define-input create-media-live-connector-pipeline-request
                                common-lisp:nil
                                ((sources :target-type
                                  live-connector-source-list :required
                                  common-lisp:t :member-name "Sources")
                                 (sinks :target-type live-connector-sink-list
                                  :required common-lisp:t :member-name "Sinks")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreateMediaLiveConnectorPipelineRequest"))

(smithy/sdk/shapes:define-output create-media-live-connector-pipeline-response
                                 common-lisp:nil
                                 ((media-live-connector-pipeline :target-type
                                   media-live-connector-pipeline :member-name
                                   "MediaLiveConnectorPipeline"))
                                 (:shape-name
                                  "CreateMediaLiveConnectorPipelineResponse"))

(smithy/sdk/shapes:define-input
 create-media-pipeline-kinesis-video-stream-pool-request common-lisp:nil
 ((stream-configuration :target-type kinesis-video-stream-configuration
   :required common-lisp:t :member-name "StreamConfiguration")
  (pool-name :target-type kinesis-video-stream-pool-name :required
   common-lisp:t :member-name "PoolName")
  (client-request-token :target-type client-request-token :member-name
   "ClientRequestToken")
  (tags :target-type tag-list :member-name "Tags"))
 (:shape-name "CreateMediaPipelineKinesisVideoStreamPoolRequest"))

(smithy/sdk/shapes:define-output
 create-media-pipeline-kinesis-video-stream-pool-response common-lisp:nil
 ((kinesis-video-stream-pool-configuration :target-type
   kinesis-video-stream-pool-configuration :member-name
   "KinesisVideoStreamPoolConfiguration"))
 (:shape-name "CreateMediaPipelineKinesisVideoStreamPoolResponse"))

(smithy/sdk/shapes:define-input create-media-stream-pipeline-request
                                common-lisp:nil
                                ((sources :target-type media-stream-source-list
                                  :required common-lisp:t :member-name
                                  "Sources")
                                 (sinks :target-type media-stream-sink-list
                                  :required common-lisp:t :member-name "Sinks")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreateMediaStreamPipelineRequest"))

(smithy/sdk/shapes:define-output create-media-stream-pipeline-response
                                 common-lisp:nil
                                 ((media-stream-pipeline :target-type
                                   media-stream-pipeline :member-name
                                   "MediaStreamPipeline"))
                                 (:shape-name
                                  "CreateMediaStreamPipelineResponse"))

(smithy/sdk/shapes:define-structure data-channel-concatenation-configuration
                                    common-lisp:nil
                                    ((state :target-type
                                      artifacts-concatenation-state :required
                                      common-lisp:t :member-name "State"))
                                    (:shape-name
                                     "DataChannelConcatenationConfiguration"))

(smithy/sdk/shapes:define-type data-retention-change-in-hours
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type data-retention-in-hours
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input delete-media-capture-pipeline-request
                                common-lisp:nil
                                ((media-pipeline-id :target-type guid-string
                                  :required common-lisp:t :member-name
                                  "MediaPipelineId" :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteMediaCapturePipelineRequest"))

(smithy/sdk/shapes:define-input
 delete-media-insights-pipeline-configuration-request common-lisp:nil
 ((identifier :target-type non-empty-string :required common-lisp:t
   :member-name "Identifier" :http-label common-lisp:t))
 (:shape-name "DeleteMediaInsightsPipelineConfigurationRequest"))

(smithy/sdk/shapes:define-input
 delete-media-pipeline-kinesis-video-stream-pool-request common-lisp:nil
 ((identifier :target-type non-empty-string :required common-lisp:t
   :member-name "Identifier" :http-label common-lisp:t))
 (:shape-name "DeleteMediaPipelineKinesisVideoStreamPoolRequest"))

(smithy/sdk/shapes:define-input delete-media-pipeline-request common-lisp:nil
                                ((media-pipeline-id :target-type guid-string
                                  :required common-lisp:t :member-name
                                  "MediaPipelineId" :http-label common-lisp:t))
                                (:shape-name "DeleteMediaPipelineRequest"))

(smithy/sdk/shapes:define-enum error-code
    common-lisp:nil
  (:bad-request "BadRequest")
  (:forbidden "Forbidden")
  (:not-found "NotFound")
  (:resource-limit-exceeded "ResourceLimitExceeded")
  (:service-failure "ServiceFailure")
  (:service-unavailable "ServiceUnavailable")
  (:throttling "Throttling"))

(smithy/sdk/shapes:define-list external-user-id-list :member
                               external-user-id-type)

(smithy/sdk/shapes:define-type external-user-id-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error forbidden-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message")
                                 (request-id :target-type string :member-name
                                  "RequestId"))
                                (:shape-name "ForbiddenException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type fragment-number-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure fragment-selector common-lisp:nil
                                    ((fragment-selector-type :target-type
                                      fragment-selector-type :required
                                      common-lisp:t :member-name
                                      "FragmentSelectorType")
                                     (timestamp-range :target-type
                                      timestamp-range :required common-lisp:t
                                      :member-name "TimestampRange"))
                                    (:shape-name "FragmentSelector"))

(smithy/sdk/shapes:define-enum fragment-selector-type
    common-lisp:nil
  (:producer-timestamp "ProducerTimestamp")
  (:server-timestamp "ServerTimestamp"))

(smithy/sdk/shapes:define-input get-media-capture-pipeline-request
                                common-lisp:nil
                                ((media-pipeline-id :target-type guid-string
                                  :required common-lisp:t :member-name
                                  "MediaPipelineId" :http-label common-lisp:t))
                                (:shape-name "GetMediaCapturePipelineRequest"))

(smithy/sdk/shapes:define-output get-media-capture-pipeline-response
                                 common-lisp:nil
                                 ((media-capture-pipeline :target-type
                                   media-capture-pipeline :member-name
                                   "MediaCapturePipeline"))
                                 (:shape-name
                                  "GetMediaCapturePipelineResponse"))

(smithy/sdk/shapes:define-input
 get-media-insights-pipeline-configuration-request common-lisp:nil
 ((identifier :target-type non-empty-string :required common-lisp:t
   :member-name "Identifier" :http-label common-lisp:t))
 (:shape-name "GetMediaInsightsPipelineConfigurationRequest"))

(smithy/sdk/shapes:define-output
 get-media-insights-pipeline-configuration-response common-lisp:nil
 ((media-insights-pipeline-configuration :target-type
   media-insights-pipeline-configuration :member-name
   "MediaInsightsPipelineConfiguration"))
 (:shape-name "GetMediaInsightsPipelineConfigurationResponse"))

(smithy/sdk/shapes:define-input
 get-media-pipeline-kinesis-video-stream-pool-request common-lisp:nil
 ((identifier :target-type non-empty-string :required common-lisp:t
   :member-name "Identifier" :http-label common-lisp:t))
 (:shape-name "GetMediaPipelineKinesisVideoStreamPoolRequest"))

(smithy/sdk/shapes:define-output
 get-media-pipeline-kinesis-video-stream-pool-response common-lisp:nil
 ((kinesis-video-stream-pool-configuration :target-type
   kinesis-video-stream-pool-configuration :member-name
   "KinesisVideoStreamPoolConfiguration"))
 (:shape-name "GetMediaPipelineKinesisVideoStreamPoolResponse"))

(smithy/sdk/shapes:define-input get-media-pipeline-request common-lisp:nil
                                ((media-pipeline-id :target-type guid-string
                                  :required common-lisp:t :member-name
                                  "MediaPipelineId" :http-label common-lisp:t))
                                (:shape-name "GetMediaPipelineRequest"))

(smithy/sdk/shapes:define-output get-media-pipeline-response common-lisp:nil
                                 ((media-pipeline :target-type media-pipeline
                                   :member-name "MediaPipeline"))
                                 (:shape-name "GetMediaPipelineResponse"))

(smithy/sdk/shapes:define-input get-speaker-search-task-request common-lisp:nil
                                ((identifier :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "Identifier" :http-label common-lisp:t)
                                 (speaker-search-task-id :target-type
                                  guid-string :required common-lisp:t
                                  :member-name "SpeakerSearchTaskId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetSpeakerSearchTaskRequest"))

(smithy/sdk/shapes:define-output get-speaker-search-task-response
                                 common-lisp:nil
                                 ((speaker-search-task :target-type
                                   speaker-search-task :member-name
                                   "SpeakerSearchTask"))
                                 (:shape-name "GetSpeakerSearchTaskResponse"))

(smithy/sdk/shapes:define-input get-voice-tone-analysis-task-request
                                common-lisp:nil
                                ((identifier :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "Identifier" :http-label common-lisp:t)
                                 (voice-tone-analysis-task-id :target-type
                                  guid-string :required common-lisp:t
                                  :member-name "VoiceToneAnalysisTaskId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetVoiceToneAnalysisTaskRequest"))

(smithy/sdk/shapes:define-output get-voice-tone-analysis-task-response
                                 common-lisp:nil
                                 ((voice-tone-analysis-task :target-type
                                   voice-tone-analysis-task :member-name
                                   "VoiceToneAnalysisTask"))
                                 (:shape-name
                                  "GetVoiceToneAnalysisTaskResponse"))

(smithy/sdk/shapes:define-structure grid-view-configuration common-lisp:nil
                                    ((content-share-layout :target-type
                                      content-share-layout-option :required
                                      common-lisp:t :member-name
                                      "ContentShareLayout")
                                     (presenter-only-configuration :target-type
                                      presenter-only-configuration :member-name
                                      "PresenterOnlyConfiguration")
                                     (active-speaker-only-configuration
                                      :target-type
                                      active-speaker-only-configuration
                                      :member-name
                                      "ActiveSpeakerOnlyConfiguration")
                                     (horizontal-layout-configuration
                                      :target-type
                                      horizontal-layout-configuration
                                      :member-name
                                      "HorizontalLayoutConfiguration")
                                     (vertical-layout-configuration
                                      :target-type
                                      vertical-layout-configuration
                                      :member-name
                                      "VerticalLayoutConfiguration")
                                     (video-attribute :target-type
                                      video-attribute :member-name
                                      "VideoAttribute")
                                     (canvas-orientation :target-type
                                      canvas-orientation :member-name
                                      "CanvasOrientation"))
                                    (:shape-name "GridViewConfiguration"))

(smithy/sdk/shapes:define-type guid-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum highlight-color
    common-lisp:nil
  (:black "Black")
  (:blue "Blue")
  (:red "Red")
  (:green "Green")
  (:white "White")
  (:yellow "Yellow"))

(smithy/sdk/shapes:define-structure horizontal-layout-configuration
                                    common-lisp:nil
                                    ((tile-order :target-type tile-order
                                      :member-name "TileOrder")
                                     (tile-position :target-type
                                      horizontal-tile-position :member-name
                                      "TilePosition")
                                     (tile-count :target-type tile-count
                                      :member-name "TileCount")
                                     (tile-aspect-ratio :target-type
                                      tile-aspect-ratio :member-name
                                      "TileAspectRatio"))
                                    (:shape-name
                                     "HorizontalLayoutConfiguration"))

(smithy/sdk/shapes:define-enum horizontal-tile-position
    common-lisp:nil
  (:top "Top")
  (:bottom "Bottom"))

(smithy/sdk/shapes:define-type iso8601timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure issue-detection-configuration
                                    common-lisp:nil
                                    ((rule-name :target-type rule-name
                                      :required common-lisp:t :member-name
                                      "RuleName"))
                                    (:shape-name "IssueDetectionConfiguration"))

(smithy/sdk/shapes:define-type keyword smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure keyword-match-configuration common-lisp:nil
                                    ((rule-name :target-type rule-name
                                      :required common-lisp:t :member-name
                                      "RuleName")
                                     (keywords :target-type
                                      keyword-match-word-list :required
                                      common-lisp:t :member-name "Keywords")
                                     (negate :target-type boolean :member-name
                                      "Negate"))
                                    (:shape-name "KeywordMatchConfiguration"))

(smithy/sdk/shapes:define-list keyword-match-word-list :member keyword)

(smithy/sdk/shapes:define-structure kinesis-data-stream-sink-configuration
                                    common-lisp:nil
                                    ((insights-target :target-type arn
                                      :member-name "InsightsTarget"))
                                    (:shape-name
                                     "KinesisDataStreamSinkConfiguration"))

(smithy/sdk/shapes:define-type kinesis-video-stream-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure kinesis-video-stream-configuration
                                    common-lisp:nil
                                    ((region :target-type aws-region :required
                                      common-lisp:t :member-name "Region")
                                     (data-retention-in-hours :target-type
                                      data-retention-in-hours :member-name
                                      "DataRetentionInHours"))
                                    (:shape-name
                                     "KinesisVideoStreamConfiguration"))

(smithy/sdk/shapes:define-structure kinesis-video-stream-configuration-update
                                    common-lisp:nil
                                    ((data-retention-in-hours :target-type
                                      data-retention-change-in-hours
                                      :member-name "DataRetentionInHours"))
                                    (:shape-name
                                     "KinesisVideoStreamConfigurationUpdate"))

(smithy/sdk/shapes:define-structure kinesis-video-stream-pool-configuration
                                    common-lisp:nil
                                    ((pool-arn :target-type arn :member-name
                                      "PoolArn")
                                     (pool-name :target-type
                                      kinesis-video-stream-pool-name
                                      :member-name "PoolName")
                                     (pool-id :target-type
                                      kinesis-video-stream-pool-id :member-name
                                      "PoolId")
                                     (pool-status :target-type
                                      kinesis-video-stream-pool-status
                                      :member-name "PoolStatus")
                                     (pool-size :target-type
                                      kinesis-video-stream-pool-size
                                      :member-name "PoolSize")
                                     (stream-configuration :target-type
                                      kinesis-video-stream-configuration
                                      :member-name "StreamConfiguration")
                                     (created-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "CreatedTimestamp")
                                     (updated-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "UpdatedTimestamp"))
                                    (:shape-name
                                     "KinesisVideoStreamPoolConfiguration"))

(smithy/sdk/shapes:define-type kinesis-video-stream-pool-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kinesis-video-stream-pool-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kinesis-video-stream-pool-size
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum kinesis-video-stream-pool-status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:updating "UPDATING")
  (:deleting "DELETING")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure kinesis-video-stream-pool-summary
                                    common-lisp:nil
                                    ((pool-name :target-type
                                      kinesis-video-stream-pool-name
                                      :member-name "PoolName")
                                     (pool-id :target-type
                                      kinesis-video-stream-pool-id :member-name
                                      "PoolId")
                                     (pool-arn :target-type arn :member-name
                                      "PoolArn"))
                                    (:shape-name
                                     "KinesisVideoStreamPoolSummary"))

(smithy/sdk/shapes:define-list kinesis-video-stream-pool-summary-list :member
                               kinesis-video-stream-pool-summary)

(smithy/sdk/shapes:define-structure
 kinesis-video-stream-recording-source-runtime-configuration common-lisp:nil
 ((streams :target-type recording-stream-list :required common-lisp:t
   :member-name "Streams")
  (fragment-selector :target-type fragment-selector :required common-lisp:t
   :member-name "FragmentSelector"))
 (:shape-name "KinesisVideoStreamRecordingSourceRuntimeConfiguration"))

(smithy/sdk/shapes:define-structure
 kinesis-video-stream-source-runtime-configuration common-lisp:nil
 ((streams :target-type streams :required common-lisp:t :member-name "Streams")
  (media-encoding :target-type media-encoding :required common-lisp:t
   :member-name "MediaEncoding")
  (media-sample-rate :target-type media-sample-rate-hertz :required
   common-lisp:t :member-name "MediaSampleRate"))
 (:shape-name "KinesisVideoStreamSourceRuntimeConfiguration"))

(smithy/sdk/shapes:define-structure
 kinesis-video-stream-source-task-configuration common-lisp:nil
 ((stream-arn :target-type kinesis-video-stream-arn :required common-lisp:t
   :member-name "StreamArn")
  (channel-id :target-type channel-id :required common-lisp:t :member-name
   "ChannelId")
  (fragment-number :target-type fragment-number-string :member-name
   "FragmentNumber"))
 (:shape-name "KinesisVideoStreamSourceTaskConfiguration"))

(smithy/sdk/shapes:define-structure lambda-function-sink-configuration
                                    common-lisp:nil
                                    ((insights-target :target-type arn
                                      :member-name "InsightsTarget"))
                                    (:shape-name
                                     "LambdaFunctionSinkConfiguration"))

(smithy/sdk/shapes:define-type language-options smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum layout-option
    common-lisp:nil
  (:grid-view "GridView"))

(smithy/sdk/shapes:define-input list-media-capture-pipelines-request
                                common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "NextToken" :http-query "next-token")
                                 (max-results :target-type result-max
                                  :member-name "MaxResults" :http-query
                                  "max-results"))
                                (:shape-name
                                 "ListMediaCapturePipelinesRequest"))

(smithy/sdk/shapes:define-output list-media-capture-pipelines-response
                                 common-lisp:nil
                                 ((media-capture-pipelines :target-type
                                   media-capture-pipeline-summary-list
                                   :member-name "MediaCapturePipelines")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListMediaCapturePipelinesResponse"))

(smithy/sdk/shapes:define-input
 list-media-insights-pipeline-configurations-request common-lisp:nil
 ((next-token :target-type string :member-name "NextToken" :http-query
   "next-token")
  (max-results :target-type result-max :member-name "MaxResults" :http-query
   "max-results"))
 (:shape-name "ListMediaInsightsPipelineConfigurationsRequest"))

(smithy/sdk/shapes:define-output
 list-media-insights-pipeline-configurations-response common-lisp:nil
 ((media-insights-pipeline-configurations :target-type
   media-insights-pipeline-configuration-summary-list :member-name
   "MediaInsightsPipelineConfigurations")
  (next-token :target-type string :member-name "NextToken"))
 (:shape-name "ListMediaInsightsPipelineConfigurationsResponse"))

(smithy/sdk/shapes:define-input
 list-media-pipeline-kinesis-video-stream-pools-request common-lisp:nil
 ((next-token :target-type string :member-name "NextToken" :http-query
   "next-token")
  (max-results :target-type result-max :member-name "MaxResults" :http-query
   "max-results"))
 (:shape-name "ListMediaPipelineKinesisVideoStreamPoolsRequest"))

(smithy/sdk/shapes:define-output
 list-media-pipeline-kinesis-video-stream-pools-response common-lisp:nil
 ((kinesis-video-stream-pools :target-type
   kinesis-video-stream-pool-summary-list :member-name
   "KinesisVideoStreamPools")
  (next-token :target-type string :member-name "NextToken"))
 (:shape-name "ListMediaPipelineKinesisVideoStreamPoolsResponse"))

(smithy/sdk/shapes:define-input list-media-pipelines-request common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "NextToken" :http-query "next-token")
                                 (max-results :target-type result-max
                                  :member-name "MaxResults" :http-query
                                  "max-results"))
                                (:shape-name "ListMediaPipelinesRequest"))

(smithy/sdk/shapes:define-output list-media-pipelines-response common-lisp:nil
                                 ((media-pipelines :target-type
                                   media-pipeline-list :member-name
                                   "MediaPipelines")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListMediaPipelinesResponse"))

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

(smithy/sdk/shapes:define-enum live-connector-mux-type
    common-lisp:nil
  (:audio-with-composited-video "AudioWithCompositedVideo")
  (:audio-with-active-speaker-video "AudioWithActiveSpeakerVideo"))

(smithy/sdk/shapes:define-structure live-connector-rtmpconfiguration
                                    common-lisp:nil
                                    ((url :target-type sensitive-string
                                      :required common-lisp:t :member-name
                                      "Url")
                                     (audio-channels :target-type
                                      audio-channels-option :member-name
                                      "AudioChannels")
                                     (audio-sample-rate :target-type
                                      audio-sample-rate-option :member-name
                                      "AudioSampleRate"))
                                    (:shape-name
                                     "LiveConnectorRTMPConfiguration"))

(smithy/sdk/shapes:define-structure live-connector-sink-configuration
                                    common-lisp:nil
                                    ((sink-type :target-type
                                      live-connector-sink-type :required
                                      common-lisp:t :member-name "SinkType")
                                     (rtmpconfiguration :target-type
                                      live-connector-rtmpconfiguration
                                      :required common-lisp:t :member-name
                                      "RTMPConfiguration"))
                                    (:shape-name
                                     "LiveConnectorSinkConfiguration"))

(smithy/sdk/shapes:define-list live-connector-sink-list :member
                               live-connector-sink-configuration)

(smithy/sdk/shapes:define-enum live-connector-sink-type
    common-lisp:nil
  (:rtmp "RTMP"))

(smithy/sdk/shapes:define-structure live-connector-source-configuration
                                    common-lisp:nil
                                    ((source-type :target-type
                                      live-connector-source-type :required
                                      common-lisp:t :member-name "SourceType")
                                     (chime-sdk-meeting-live-connector-configuration
                                      :target-type
                                      chime-sdk-meeting-live-connector-configuration
                                      :required common-lisp:t :member-name
                                      "ChimeSdkMeetingLiveConnectorConfiguration"))
                                    (:shape-name
                                     "LiveConnectorSourceConfiguration"))

(smithy/sdk/shapes:define-list live-connector-source-list :member
                               live-connector-source-configuration)

(smithy/sdk/shapes:define-enum live-connector-source-type
    common-lisp:nil
  (:chime-sdk-meeting "ChimeSdkMeeting"))

(smithy/sdk/shapes:define-structure media-capture-pipeline common-lisp:nil
                                    ((media-pipeline-id :target-type
                                      guid-string :member-name
                                      "MediaPipelineId")
                                     (media-pipeline-arn :target-type
                                      amazon-resource-name :member-name
                                      "MediaPipelineArn")
                                     (source-type :target-type
                                      media-pipeline-source-type :member-name
                                      "SourceType")
                                     (source-arn :target-type arn :member-name
                                      "SourceArn")
                                     (status :target-type media-pipeline-status
                                      :member-name "Status")
                                     (sink-type :target-type
                                      media-pipeline-sink-type :member-name
                                      "SinkType")
                                     (sink-arn :target-type arn :member-name
                                      "SinkArn")
                                     (created-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "CreatedTimestamp")
                                     (updated-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "UpdatedTimestamp")
                                     (chime-sdk-meeting-configuration
                                      :target-type
                                      chime-sdk-meeting-configuration
                                      :member-name
                                      "ChimeSdkMeetingConfiguration")
                                     (sse-aws-key-management-params
                                      :target-type
                                      sse-aws-key-management-params
                                      :member-name "SseAwsKeyManagementParams")
                                     (sink-iam-role-arn :target-type arn
                                      :member-name "SinkIamRoleArn"))
                                    (:shape-name "MediaCapturePipeline"))

(smithy/sdk/shapes:define-structure media-capture-pipeline-source-configuration
                                    common-lisp:nil
                                    ((media-pipeline-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "MediaPipelineArn")
                                     (chime-sdk-meeting-configuration
                                      :target-type
                                      chime-sdk-meeting-concatenation-configuration
                                      :required common-lisp:t :member-name
                                      "ChimeSdkMeetingConfiguration"))
                                    (:shape-name
                                     "MediaCapturePipelineSourceConfiguration"))

(smithy/sdk/shapes:define-structure media-capture-pipeline-summary
                                    common-lisp:nil
                                    ((media-pipeline-id :target-type
                                      guid-string :member-name
                                      "MediaPipelineId")
                                     (media-pipeline-arn :target-type
                                      amazon-resource-name :member-name
                                      "MediaPipelineArn"))
                                    (:shape-name "MediaCapturePipelineSummary"))

(smithy/sdk/shapes:define-list media-capture-pipeline-summary-list :member
                               media-capture-pipeline-summary)

(smithy/sdk/shapes:define-structure media-concatenation-pipeline
                                    common-lisp:nil
                                    ((media-pipeline-id :target-type
                                      guid-string :member-name
                                      "MediaPipelineId")
                                     (media-pipeline-arn :target-type
                                      amazon-resource-name :member-name
                                      "MediaPipelineArn")
                                     (sources :target-type
                                      concatenation-source-list :member-name
                                      "Sources")
                                     (sinks :target-type
                                      concatenation-sink-list :member-name
                                      "Sinks")
                                     (status :target-type media-pipeline-status
                                      :member-name "Status")
                                     (created-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "CreatedTimestamp")
                                     (updated-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "UpdatedTimestamp"))
                                    (:shape-name "MediaConcatenationPipeline"))

(smithy/sdk/shapes:define-enum media-encoding
    common-lisp:nil
  (:pcm "pcm"))

(smithy/sdk/shapes:define-structure media-insights-pipeline common-lisp:nil
                                    ((media-pipeline-id :target-type
                                      guid-string :member-name
                                      "MediaPipelineId")
                                     (media-pipeline-arn :target-type arn
                                      :member-name "MediaPipelineArn")
                                     (media-insights-pipeline-configuration-arn
                                      :target-type arn :member-name
                                      "MediaInsightsPipelineConfigurationArn")
                                     (status :target-type media-pipeline-status
                                      :member-name "Status")
                                     (kinesis-video-stream-source-runtime-configuration
                                      :target-type
                                      kinesis-video-stream-source-runtime-configuration
                                      :member-name
                                      "KinesisVideoStreamSourceRuntimeConfiguration")
                                     (media-insights-runtime-metadata
                                      :target-type
                                      media-insights-runtime-metadata
                                      :member-name
                                      "MediaInsightsRuntimeMetadata")
                                     (kinesis-video-stream-recording-source-runtime-configuration
                                      :target-type
                                      kinesis-video-stream-recording-source-runtime-configuration
                                      :member-name
                                      "KinesisVideoStreamRecordingSourceRuntimeConfiguration")
                                     (s3recording-sink-runtime-configuration
                                      :target-type
                                      s3recording-sink-runtime-configuration
                                      :member-name
                                      "S3RecordingSinkRuntimeConfiguration")
                                     (created-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "CreatedTimestamp")
                                     (element-statuses :target-type
                                      media-insights-pipeline-element-statuses
                                      :member-name "ElementStatuses"))
                                    (:shape-name "MediaInsightsPipeline"))

(smithy/sdk/shapes:define-structure media-insights-pipeline-configuration
                                    common-lisp:nil
                                    ((media-insights-pipeline-configuration-name
                                      :target-type
                                      media-insights-pipeline-configuration-name-string
                                      :member-name
                                      "MediaInsightsPipelineConfigurationName")
                                     (media-insights-pipeline-configuration-arn
                                      :target-type arn :member-name
                                      "MediaInsightsPipelineConfigurationArn")
                                     (resource-access-role-arn :target-type arn
                                      :member-name "ResourceAccessRoleArn")
                                     (real-time-alert-configuration
                                      :target-type
                                      real-time-alert-configuration
                                      :member-name
                                      "RealTimeAlertConfiguration")
                                     (elements :target-type
                                      media-insights-pipeline-configuration-elements
                                      :member-name "Elements")
                                     (media-insights-pipeline-configuration-id
                                      :target-type guid-string :member-name
                                      "MediaInsightsPipelineConfigurationId")
                                     (created-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "CreatedTimestamp")
                                     (updated-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "UpdatedTimestamp"))
                                    (:shape-name
                                     "MediaInsightsPipelineConfiguration"))

(smithy/sdk/shapes:define-structure
 media-insights-pipeline-configuration-element common-lisp:nil
 ((type :target-type media-insights-pipeline-configuration-element-type
   :required common-lisp:t :member-name "Type")
  (amazon-transcribe-call-analytics-processor-configuration :target-type
   amazon-transcribe-call-analytics-processor-configuration :member-name
   "AmazonTranscribeCallAnalyticsProcessorConfiguration")
  (amazon-transcribe-processor-configuration :target-type
   amazon-transcribe-processor-configuration :member-name
   "AmazonTranscribeProcessorConfiguration")
  (kinesis-data-stream-sink-configuration :target-type
   kinesis-data-stream-sink-configuration :member-name
   "KinesisDataStreamSinkConfiguration")
  (s3recording-sink-configuration :target-type s3recording-sink-configuration
   :member-name "S3RecordingSinkConfiguration")
  (voice-analytics-processor-configuration :target-type
   voice-analytics-processor-configuration :member-name
   "VoiceAnalyticsProcessorConfiguration")
  (lambda-function-sink-configuration :target-type
   lambda-function-sink-configuration :member-name
   "LambdaFunctionSinkConfiguration")
  (sqs-queue-sink-configuration :target-type sqs-queue-sink-configuration
   :member-name "SqsQueueSinkConfiguration")
  (sns-topic-sink-configuration :target-type sns-topic-sink-configuration
   :member-name "SnsTopicSinkConfiguration")
  (voice-enhancement-sink-configuration :target-type
   voice-enhancement-sink-configuration :member-name
   "VoiceEnhancementSinkConfiguration"))
 (:shape-name "MediaInsightsPipelineConfigurationElement"))

(smithy/sdk/shapes:define-enum media-insights-pipeline-configuration-element-type
    common-lisp:nil
  (:amazon-transcribe-call-analytics-processor
   "AmazonTranscribeCallAnalyticsProcessor")
  (:voice-analytics-processor "VoiceAnalyticsProcessor")
  (:amazon-transcribe-processor "AmazonTranscribeProcessor")
  (:kinesis-data-stream-sink "KinesisDataStreamSink")
  (:lambda-function-sink "LambdaFunctionSink")
  (:sqs-queue-sink "SqsQueueSink")
  (:sns-topic-sink "SnsTopicSink")
  (:s3-recording-sink "S3RecordingSink")
  (:voice-enhancement-sink "VoiceEnhancementSink"))

(smithy/sdk/shapes:define-list media-insights-pipeline-configuration-elements
                               :member
                               media-insights-pipeline-configuration-element)

(smithy/sdk/shapes:define-type
 media-insights-pipeline-configuration-name-string
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 media-insights-pipeline-configuration-summary common-lisp:nil
 ((media-insights-pipeline-configuration-name :target-type
   media-insights-pipeline-configuration-name-string :member-name
   "MediaInsightsPipelineConfigurationName")
  (media-insights-pipeline-configuration-id :target-type guid-string
   :member-name "MediaInsightsPipelineConfigurationId")
  (media-insights-pipeline-configuration-arn :target-type arn :member-name
   "MediaInsightsPipelineConfigurationArn"))
 (:shape-name "MediaInsightsPipelineConfigurationSummary"))

(smithy/sdk/shapes:define-list
 media-insights-pipeline-configuration-summary-list :member
 media-insights-pipeline-configuration-summary)

(smithy/sdk/shapes:define-structure media-insights-pipeline-element-status
                                    common-lisp:nil
                                    ((type :target-type
                                      media-insights-pipeline-configuration-element-type
                                      :member-name "Type")
                                     (status :target-type
                                      media-pipeline-element-status
                                      :member-name "Status"))
                                    (:shape-name
                                     "MediaInsightsPipelineElementStatus"))

(smithy/sdk/shapes:define-list media-insights-pipeline-element-statuses :member
                               media-insights-pipeline-element-status)

(smithy/sdk/shapes:define-map media-insights-runtime-metadata :key
                              non-empty-string :value string)

(smithy/sdk/shapes:define-structure media-live-connector-pipeline
                                    common-lisp:nil
                                    ((sources :target-type
                                      live-connector-source-list :member-name
                                      "Sources")
                                     (sinks :target-type
                                      live-connector-sink-list :member-name
                                      "Sinks")
                                     (media-pipeline-id :target-type
                                      guid-string :member-name
                                      "MediaPipelineId")
                                     (media-pipeline-arn :target-type
                                      amazon-resource-name :member-name
                                      "MediaPipelineArn")
                                     (status :target-type media-pipeline-status
                                      :member-name "Status")
                                     (created-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "CreatedTimestamp")
                                     (updated-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "UpdatedTimestamp"))
                                    (:shape-name "MediaLiveConnectorPipeline"))

(smithy/sdk/shapes:define-structure media-pipeline common-lisp:nil
                                    ((media-capture-pipeline :target-type
                                      media-capture-pipeline :member-name
                                      "MediaCapturePipeline")
                                     (media-live-connector-pipeline
                                      :target-type
                                      media-live-connector-pipeline
                                      :member-name
                                      "MediaLiveConnectorPipeline")
                                     (media-concatenation-pipeline :target-type
                                      media-concatenation-pipeline :member-name
                                      "MediaConcatenationPipeline")
                                     (media-insights-pipeline :target-type
                                      media-insights-pipeline :member-name
                                      "MediaInsightsPipeline")
                                     (media-stream-pipeline :target-type
                                      media-stream-pipeline :member-name
                                      "MediaStreamPipeline"))
                                    (:shape-name "MediaPipeline"))

(smithy/sdk/shapes:define-enum media-pipeline-element-status
    common-lisp:nil
  (:not-started "NotStarted")
  (:not-supported "NotSupported")
  (:initializing "Initializing")
  (:in-progress "InProgress")
  (:failed "Failed")
  (:stopping "Stopping")
  (:stopped "Stopped")
  (:paused "Paused"))

(smithy/sdk/shapes:define-list media-pipeline-list :member
                               media-pipeline-summary)

(smithy/sdk/shapes:define-enum media-pipeline-sink-type
    common-lisp:nil
  (:s3bucket "S3Bucket"))

(smithy/sdk/shapes:define-enum media-pipeline-source-type
    common-lisp:nil
  (:chime-sdk-meeting "ChimeSdkMeeting"))

(smithy/sdk/shapes:define-enum media-pipeline-status
    common-lisp:nil
  (:initializing "Initializing")
  (:in-progress "InProgress")
  (:failed "Failed")
  (:stopping "Stopping")
  (:stopped "Stopped")
  (:paused "Paused")
  (:not-started "NotStarted"))

(smithy/sdk/shapes:define-enum media-pipeline-status-update
    common-lisp:nil
  (:pause "Pause")
  (:resume "Resume"))

(smithy/sdk/shapes:define-structure media-pipeline-summary common-lisp:nil
                                    ((media-pipeline-id :target-type
                                      guid-string :member-name
                                      "MediaPipelineId")
                                     (media-pipeline-arn :target-type
                                      amazon-resource-name :member-name
                                      "MediaPipelineArn"))
                                    (:shape-name "MediaPipelineSummary"))

(smithy/sdk/shapes:define-enum media-pipeline-task-status
    common-lisp:nil
  (:not-started "NotStarted")
  (:initializing "Initializing")
  (:in-progress "InProgress")
  (:failed "Failed")
  (:stopping "Stopping")
  (:stopped "Stopped"))

(smithy/sdk/shapes:define-type media-sample-rate-hertz
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure media-stream-pipeline common-lisp:nil
                                    ((media-pipeline-id :target-type
                                      guid-string :member-name
                                      "MediaPipelineId")
                                     (media-pipeline-arn :target-type
                                      amazon-resource-name :member-name
                                      "MediaPipelineArn")
                                     (created-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "CreatedTimestamp")
                                     (updated-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "UpdatedTimestamp")
                                     (status :target-type media-pipeline-status
                                      :member-name "Status")
                                     (sources :target-type
                                      media-stream-source-list :member-name
                                      "Sources")
                                     (sinks :target-type media-stream-sink-list
                                      :member-name "Sinks"))
                                    (:shape-name "MediaStreamPipeline"))

(smithy/sdk/shapes:define-enum media-stream-pipeline-sink-type
    common-lisp:nil
  (:kinesis-video-stream-pool "KinesisVideoStreamPool"))

(smithy/sdk/shapes:define-structure media-stream-sink common-lisp:nil
                                    ((sink-arn :target-type arn :required
                                      common-lisp:t :member-name "SinkArn")
                                     (sink-type :target-type
                                      media-stream-pipeline-sink-type :required
                                      common-lisp:t :member-name "SinkType")
                                     (reserved-stream-capacity :target-type
                                      reserved-stream-capacity :required
                                      common-lisp:t :member-name
                                      "ReservedStreamCapacity")
                                     (media-stream-type :target-type
                                      media-stream-type :required common-lisp:t
                                      :member-name "MediaStreamType"))
                                    (:shape-name "MediaStreamSink"))

(smithy/sdk/shapes:define-list media-stream-sink-list :member media-stream-sink)

(smithy/sdk/shapes:define-structure media-stream-source common-lisp:nil
                                    ((source-type :target-type
                                      media-pipeline-source-type :required
                                      common-lisp:t :member-name "SourceType")
                                     (source-arn :target-type arn :required
                                      common-lisp:t :member-name "SourceArn"))
                                    (:shape-name "MediaStreamSource"))

(smithy/sdk/shapes:define-list media-stream-source-list :member
                               media-stream-source)

(smithy/sdk/shapes:define-enum media-stream-type
    common-lisp:nil
  (:mixed-audio "MixedAudio")
  (:individual-audio "IndividualAudio"))

(smithy/sdk/shapes:define-structure meeting-events-concatenation-configuration
                                    common-lisp:nil
                                    ((state :target-type
                                      artifacts-concatenation-state :required
                                      common-lisp:t :member-name "State"))
                                    (:shape-name
                                     "MeetingEventsConcatenationConfiguration"))

(smithy/sdk/shapes:define-type model-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-empty-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message")
                                 (request-id :target-type string :member-name
                                  "RequestId"))
                                (:shape-name "NotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type number-of-channels
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum partial-results-stability
    common-lisp:nil
  (:high "high")
  (:medium "medium")
  (:low "low"))

(smithy/sdk/shapes:define-enum participant-role
    common-lisp:nil
  (:agent "AGENT")
  (:customer "CUSTOMER"))

(smithy/sdk/shapes:define-type pii-entity-types smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure post-call-analytics-settings
                                    common-lisp:nil
                                    ((output-location :target-type string
                                      :required common-lisp:t :member-name
                                      "OutputLocation")
                                     (data-access-role-arn :target-type string
                                      :required common-lisp:t :member-name
                                      "DataAccessRoleArn")
                                     (content-redaction-output :target-type
                                      content-redaction-output :member-name
                                      "ContentRedactionOutput")
                                     (output-encryption-kmskey-id :target-type
                                      string :member-name
                                      "OutputEncryptionKMSKeyId"))
                                    (:shape-name "PostCallAnalyticsSettings"))

(smithy/sdk/shapes:define-structure presenter-only-configuration
                                    common-lisp:nil
                                    ((presenter-position :target-type
                                      presenter-position :member-name
                                      "PresenterPosition"))
                                    (:shape-name "PresenterOnlyConfiguration"))

(smithy/sdk/shapes:define-enum presenter-position
    common-lisp:nil
  (:top-left "TopLeft")
  (:top-right "TopRight")
  (:bottom-left "BottomLeft")
  (:bottom-right "BottomRight"))

(smithy/sdk/shapes:define-structure real-time-alert-configuration
                                    common-lisp:nil
                                    ((disabled :target-type boolean
                                      :member-name "Disabled")
                                     (rules :target-type
                                      real-time-alert-rule-list :member-name
                                      "Rules"))
                                    (:shape-name "RealTimeAlertConfiguration"))

(smithy/sdk/shapes:define-structure real-time-alert-rule common-lisp:nil
                                    ((type :target-type
                                      real-time-alert-rule-type :required
                                      common-lisp:t :member-name "Type")
                                     (keyword-match-configuration :target-type
                                      keyword-match-configuration :member-name
                                      "KeywordMatchConfiguration")
                                     (sentiment-configuration :target-type
                                      sentiment-configuration :member-name
                                      "SentimentConfiguration")
                                     (issue-detection-configuration
                                      :target-type
                                      issue-detection-configuration
                                      :member-name
                                      "IssueDetectionConfiguration"))
                                    (:shape-name "RealTimeAlertRule"))

(smithy/sdk/shapes:define-list real-time-alert-rule-list :member
                               real-time-alert-rule)

(smithy/sdk/shapes:define-enum real-time-alert-rule-type
    common-lisp:nil
  (:keyword-match "KeywordMatch")
  (:sentiment "Sentiment")
  (:issue-detection "IssueDetection"))

(smithy/sdk/shapes:define-enum recording-file-format
    common-lisp:nil
  (:wav "Wav")
  (:opus "Opus"))

(smithy/sdk/shapes:define-structure recording-stream-configuration
                                    common-lisp:nil
                                    ((stream-arn :target-type
                                      kinesis-video-stream-arn :member-name
                                      "StreamArn"))
                                    (:shape-name
                                     "RecordingStreamConfiguration"))

(smithy/sdk/shapes:define-list recording-stream-list :member
                               recording-stream-configuration)

(smithy/sdk/shapes:define-type reserved-stream-capacity
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum resolution-option
    common-lisp:nil
  (:hd "HD")
  (:fhd "FHD"))

(smithy/sdk/shapes:define-error resource-limit-exceeded-exception
                                common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message")
                                 (request-id :target-type string :member-name
                                  "RequestId"))
                                (:shape-name "ResourceLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type result-max smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type rule-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3bucket-sink-configuration common-lisp:nil
                                    ((destination :target-type arn :required
                                      common-lisp:t :member-name
                                      "Destination"))
                                    (:shape-name "S3BucketSinkConfiguration"))

(smithy/sdk/shapes:define-structure s3recording-sink-configuration
                                    common-lisp:nil
                                    ((destination :target-type arn :member-name
                                      "Destination")
                                     (recording-file-format :target-type
                                      recording-file-format :member-name
                                      "RecordingFileFormat"))
                                    (:shape-name
                                     "S3RecordingSinkConfiguration"))

(smithy/sdk/shapes:define-structure s3recording-sink-runtime-configuration
                                    common-lisp:nil
                                    ((destination :target-type arn :required
                                      common-lisp:t :member-name "Destination")
                                     (recording-file-format :target-type
                                      recording-file-format :required
                                      common-lisp:t :member-name
                                      "RecordingFileFormat"))
                                    (:shape-name
                                     "S3RecordingSinkRuntimeConfiguration"))

(smithy/sdk/shapes:define-structure selected-video-streams common-lisp:nil
                                    ((attendee-ids :target-type
                                      attendee-id-list :member-name
                                      "AttendeeIds")
                                     (external-user-ids :target-type
                                      external-user-id-list :member-name
                                      "ExternalUserIds"))
                                    (:shape-name "SelectedVideoStreams"))

(smithy/sdk/shapes:define-type sensitive-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sentiment-configuration common-lisp:nil
                                    ((rule-name :target-type rule-name
                                      :required common-lisp:t :member-name
                                      "RuleName")
                                     (sentiment-type :target-type
                                      sentiment-type :required common-lisp:t
                                      :member-name "SentimentType")
                                     (time-period :target-type
                                      sentiment-time-period-in-seconds
                                      :required common-lisp:t :member-name
                                      "TimePeriod"))
                                    (:shape-name "SentimentConfiguration"))

(smithy/sdk/shapes:define-type sentiment-time-period-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum sentiment-type
    common-lisp:nil
  (:negative "NEGATIVE"))

(smithy/sdk/shapes:define-error service-failure-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message")
                                 (request-id :target-type string :member-name
                                  "RequestId"))
                                (:shape-name "ServiceFailureException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message")
                                 (request-id :target-type string :member-name
                                  "RequestId"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503))

(smithy/sdk/shapes:define-structure sns-topic-sink-configuration
                                    common-lisp:nil
                                    ((insights-target :target-type arn
                                      :member-name "InsightsTarget"))
                                    (:shape-name "SnsTopicSinkConfiguration"))

(smithy/sdk/shapes:define-structure source-configuration common-lisp:nil
                                    ((selected-video-streams :target-type
                                      selected-video-streams :member-name
                                      "SelectedVideoStreams"))
                                    (:shape-name "SourceConfiguration"))

(smithy/sdk/shapes:define-structure speaker-search-task common-lisp:nil
                                    ((speaker-search-task-id :target-type
                                      guid-string :member-name
                                      "SpeakerSearchTaskId")
                                     (speaker-search-task-status :target-type
                                      media-pipeline-task-status :member-name
                                      "SpeakerSearchTaskStatus")
                                     (created-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "CreatedTimestamp")
                                     (updated-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "UpdatedTimestamp"))
                                    (:shape-name "SpeakerSearchTask"))

(smithy/sdk/shapes:define-structure sqs-queue-sink-configuration
                                    common-lisp:nil
                                    ((insights-target :target-type arn
                                      :member-name "InsightsTarget"))
                                    (:shape-name "SqsQueueSinkConfiguration"))

(smithy/sdk/shapes:define-structure sse-aws-key-management-params
                                    common-lisp:nil
                                    ((aws-kms-key-id :target-type string
                                      :required common-lisp:t :member-name
                                      "AwsKmsKeyId")
                                     (aws-kms-encryption-context :target-type
                                      string :member-name
                                      "AwsKmsEncryptionContext"))
                                    (:shape-name "SseAwsKeyManagementParams"))

(smithy/sdk/shapes:define-input start-speaker-search-task-request
                                common-lisp:nil
                                ((identifier :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "Identifier" :http-label common-lisp:t)
                                 (voice-profile-domain-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "VoiceProfileDomainArn")
                                 (kinesis-video-stream-source-task-configuration
                                  :target-type
                                  kinesis-video-stream-source-task-configuration
                                  :member-name
                                  "KinesisVideoStreamSourceTaskConfiguration")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken"))
                                (:shape-name "StartSpeakerSearchTaskRequest"))

(smithy/sdk/shapes:define-output start-speaker-search-task-response
                                 common-lisp:nil
                                 ((speaker-search-task :target-type
                                   speaker-search-task :member-name
                                   "SpeakerSearchTask"))
                                 (:shape-name "StartSpeakerSearchTaskResponse"))

(smithy/sdk/shapes:define-input start-voice-tone-analysis-task-request
                                common-lisp:nil
                                ((identifier :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "Identifier" :http-label common-lisp:t)
                                 (language-code :target-type
                                  voice-analytics-language-code :required
                                  common-lisp:t :member-name "LanguageCode")
                                 (kinesis-video-stream-source-task-configuration
                                  :target-type
                                  kinesis-video-stream-source-task-configuration
                                  :member-name
                                  "KinesisVideoStreamSourceTaskConfiguration")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken"))
                                (:shape-name
                                 "StartVoiceToneAnalysisTaskRequest"))

(smithy/sdk/shapes:define-output start-voice-tone-analysis-task-response
                                 common-lisp:nil
                                 ((voice-tone-analysis-task :target-type
                                   voice-tone-analysis-task :member-name
                                   "VoiceToneAnalysisTask"))
                                 (:shape-name
                                  "StartVoiceToneAnalysisTaskResponse"))

(smithy/sdk/shapes:define-input stop-speaker-search-task-request
                                common-lisp:nil
                                ((identifier :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "Identifier" :http-label common-lisp:t)
                                 (speaker-search-task-id :target-type
                                  guid-string :required common-lisp:t
                                  :member-name "SpeakerSearchTaskId"
                                  :http-label common-lisp:t))
                                (:shape-name "StopSpeakerSearchTaskRequest"))

(smithy/sdk/shapes:define-input stop-voice-tone-analysis-task-request
                                common-lisp:nil
                                ((identifier :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "Identifier" :http-label common-lisp:t)
                                 (voice-tone-analysis-task-id :target-type
                                  guid-string :required common-lisp:t
                                  :member-name "VoiceToneAnalysisTaskId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "StopVoiceToneAnalysisTaskRequest"))

(smithy/sdk/shapes:define-structure stream-channel-definition common-lisp:nil
                                    ((number-of-channels :target-type
                                      number-of-channels :required
                                      common-lisp:t :member-name
                                      "NumberOfChannels")
                                     (channel-definitions :target-type
                                      channel-definitions :member-name
                                      "ChannelDefinitions"))
                                    (:shape-name "StreamChannelDefinition"))

(smithy/sdk/shapes:define-structure stream-configuration common-lisp:nil
                                    ((stream-arn :target-type
                                      kinesis-video-stream-arn :required
                                      common-lisp:t :member-name "StreamArn")
                                     (fragment-number :target-type
                                      fragment-number-string :member-name
                                      "FragmentNumber")
                                     (stream-channel-definition :target-type
                                      stream-channel-definition :required
                                      common-lisp:t :member-name
                                      "StreamChannelDefinition"))
                                    (:shape-name "StreamConfiguration"))

(smithy/sdk/shapes:define-list streams :member stream-configuration)

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

(smithy/sdk/shapes:define-error throttled-client-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message")
                                 (request-id :target-type string :member-name
                                  "RequestId"))
                                (:shape-name "ThrottledClientException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type tile-aspect-ratio smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tile-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum tile-order
    common-lisp:nil
  (:join-sequence "JoinSequence")
  (:speaker-sequence "SpeakerSequence"))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure timestamp-range common-lisp:nil
                                    ((start-timestamp :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "StartTimestamp")
                                     (end-timestamp :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "EndTimestamp"))
                                    (:shape-name "TimestampRange"))

(smithy/sdk/shapes:define-structure
 transcription-messages-concatenation-configuration common-lisp:nil
 ((state :target-type artifacts-concatenation-state :required common-lisp:t
   :member-name "State"))
 (:shape-name "TranscriptionMessagesConcatenationConfiguration"))

(smithy/sdk/shapes:define-error unauthorized-client-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message")
                                 (request-id :target-type string :member-name
                                  "RequestId"))
                                (:shape-name "UnauthorizedClientException")
                                (:error-code 401))

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

(smithy/sdk/shapes:define-input
 update-media-insights-pipeline-configuration-request common-lisp:nil
 ((identifier :target-type non-empty-string :required common-lisp:t
   :member-name "Identifier" :http-label common-lisp:t)
  (resource-access-role-arn :target-type arn :required common-lisp:t
   :member-name "ResourceAccessRoleArn")
  (real-time-alert-configuration :target-type real-time-alert-configuration
   :member-name "RealTimeAlertConfiguration")
  (elements :target-type media-insights-pipeline-configuration-elements
   :required common-lisp:t :member-name "Elements"))
 (:shape-name "UpdateMediaInsightsPipelineConfigurationRequest"))

(smithy/sdk/shapes:define-output
 update-media-insights-pipeline-configuration-response common-lisp:nil
 ((media-insights-pipeline-configuration :target-type
   media-insights-pipeline-configuration :member-name
   "MediaInsightsPipelineConfiguration"))
 (:shape-name "UpdateMediaInsightsPipelineConfigurationResponse"))

(smithy/sdk/shapes:define-input update-media-insights-pipeline-status-request
                                common-lisp:nil
                                ((identifier :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "Identifier" :http-label common-lisp:t)
                                 (update-status :target-type
                                  media-pipeline-status-update :required
                                  common-lisp:t :member-name "UpdateStatus"))
                                (:shape-name
                                 "UpdateMediaInsightsPipelineStatusRequest"))

(smithy/sdk/shapes:define-input
 update-media-pipeline-kinesis-video-stream-pool-request common-lisp:nil
 ((identifier :target-type non-empty-string :required common-lisp:t
   :member-name "Identifier" :http-label common-lisp:t)
  (stream-configuration :target-type kinesis-video-stream-configuration-update
   :member-name "StreamConfiguration"))
 (:shape-name "UpdateMediaPipelineKinesisVideoStreamPoolRequest"))

(smithy/sdk/shapes:define-output
 update-media-pipeline-kinesis-video-stream-pool-response common-lisp:nil
 ((kinesis-video-stream-pool-configuration :target-type
   kinesis-video-stream-pool-configuration :member-name
   "KinesisVideoStreamPoolConfiguration"))
 (:shape-name "UpdateMediaPipelineKinesisVideoStreamPoolResponse"))

(smithy/sdk/shapes:define-structure vertical-layout-configuration
                                    common-lisp:nil
                                    ((tile-order :target-type tile-order
                                      :member-name "TileOrder")
                                     (tile-position :target-type
                                      vertical-tile-position :member-name
                                      "TilePosition")
                                     (tile-count :target-type tile-count
                                      :member-name "TileCount")
                                     (tile-aspect-ratio :target-type
                                      tile-aspect-ratio :member-name
                                      "TileAspectRatio"))
                                    (:shape-name "VerticalLayoutConfiguration"))

(smithy/sdk/shapes:define-enum vertical-tile-position
    common-lisp:nil
  (:left "Left")
  (:right "Right"))

(smithy/sdk/shapes:define-structure video-artifacts-configuration
                                    common-lisp:nil
                                    ((state :target-type artifacts-state
                                      :required common-lisp:t :member-name
                                      "State")
                                     (mux-type :target-type video-mux-type
                                      :member-name "MuxType"))
                                    (:shape-name "VideoArtifactsConfiguration"))

(smithy/sdk/shapes:define-structure video-attribute common-lisp:nil
                                    ((corner-radius :target-type corner-radius
                                      :member-name "CornerRadius")
                                     (border-color :target-type border-color
                                      :member-name "BorderColor")
                                     (highlight-color :target-type
                                      highlight-color :member-name
                                      "HighlightColor")
                                     (border-thickness :target-type
                                      border-thickness :member-name
                                      "BorderThickness"))
                                    (:shape-name "VideoAttribute"))

(smithy/sdk/shapes:define-structure video-concatenation-configuration
                                    common-lisp:nil
                                    ((state :target-type
                                      artifacts-concatenation-state :required
                                      common-lisp:t :member-name "State"))
                                    (:shape-name
                                     "VideoConcatenationConfiguration"))

(smithy/sdk/shapes:define-enum video-mux-type
    common-lisp:nil
  (:video-only "VideoOnly"))

(smithy/sdk/shapes:define-enum vocabulary-filter-method
    common-lisp:nil
  (:remove "remove")
  (:mask "mask")
  (:tag "tag"))

(smithy/sdk/shapes:define-type vocabulary-filter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vocabulary-filter-names
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vocabulary-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vocabulary-names smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum voice-analytics-configuration-status
    common-lisp:nil
  (:enabled "Enabled")
  (:disabled "Disabled"))

(smithy/sdk/shapes:define-enum voice-analytics-language-code
    common-lisp:nil
  (:en-us "en-US"))

(smithy/sdk/shapes:define-structure voice-analytics-processor-configuration
                                    common-lisp:nil
                                    ((speaker-search-status :target-type
                                      voice-analytics-configuration-status
                                      :member-name "SpeakerSearchStatus")
                                     (voice-tone-analysis-status :target-type
                                      voice-analytics-configuration-status
                                      :member-name "VoiceToneAnalysisStatus"))
                                    (:shape-name
                                     "VoiceAnalyticsProcessorConfiguration"))

(smithy/sdk/shapes:define-structure voice-enhancement-sink-configuration
                                    common-lisp:nil
                                    ((disabled :target-type boolean
                                      :member-name "Disabled"))
                                    (:shape-name
                                     "VoiceEnhancementSinkConfiguration"))

(smithy/sdk/shapes:define-structure voice-tone-analysis-task common-lisp:nil
                                    ((voice-tone-analysis-task-id :target-type
                                      guid-string :member-name
                                      "VoiceToneAnalysisTaskId")
                                     (voice-tone-analysis-task-status
                                      :target-type media-pipeline-task-status
                                      :member-name
                                      "VoiceToneAnalysisTaskStatus")
                                     (created-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "CreatedTimestamp")
                                     (updated-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "UpdatedTimestamp"))
                                    (:shape-name "VoiceToneAnalysisTask"))

(smithy/sdk/operation:define-operation create-media-capture-pipeline
                                       :shape-name "CreateMediaCapturePipeline"
                                       :input
                                       create-media-capture-pipeline-request
                                       :output
                                       create-media-capture-pipeline-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/sdk-media-capture-pipelines" :code 201)

(smithy/sdk/operation:define-operation create-media-concatenation-pipeline
                                       :shape-name
                                       "CreateMediaConcatenationPipeline"
                                       :input
                                       create-media-concatenation-pipeline-request
                                       :output
                                       create-media-concatenation-pipeline-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/sdk-media-concatenation-pipelines"
                                       :code 201)

(smithy/sdk/operation:define-operation create-media-insights-pipeline
                                       :shape-name
                                       "CreateMediaInsightsPipeline" :input
                                       create-media-insights-pipeline-request
                                       :output
                                       create-media-insights-pipeline-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/media-insights-pipelines" :code 201)

(smithy/sdk/operation:define-operation
 create-media-insights-pipeline-configuration :shape-name
 "CreateMediaInsightsPipelineConfiguration" :input
 create-media-insights-pipeline-configuration-request :output
 create-media-insights-pipeline-configuration-response :errors
 (bad-request-exception forbidden-exception not-found-exception
  resource-limit-exceeded-exception service-failure-exception
  service-unavailable-exception throttled-client-exception
  unauthorized-client-exception)
 :method "POST" :uri "/media-insights-pipeline-configurations" :code 201)

(smithy/sdk/operation:define-operation create-media-live-connector-pipeline
                                       :shape-name
                                       "CreateMediaLiveConnectorPipeline"
                                       :input
                                       create-media-live-connector-pipeline-request
                                       :output
                                       create-media-live-connector-pipeline-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/sdk-media-live-connector-pipelines"
                                       :code 201)

(smithy/sdk/operation:define-operation
 create-media-pipeline-kinesis-video-stream-pool :shape-name
 "CreateMediaPipelineKinesisVideoStreamPool" :input
 create-media-pipeline-kinesis-video-stream-pool-request :output
 create-media-pipeline-kinesis-video-stream-pool-response :errors
 (bad-request-exception conflict-exception forbidden-exception
  resource-limit-exceeded-exception service-failure-exception
  service-unavailable-exception throttled-client-exception
  unauthorized-client-exception)
 :method "POST" :uri "/media-pipeline-kinesis-video-stream-pools" :code 201)

(smithy/sdk/operation:define-operation create-media-stream-pipeline :shape-name
                                       "CreateMediaStreamPipeline" :input
                                       create-media-stream-pipeline-request
                                       :output
                                       create-media-stream-pipeline-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/sdk-media-stream-pipelines" :code 201)

(smithy/sdk/operation:define-operation delete-media-capture-pipeline
                                       :shape-name "DeleteMediaCapturePipeline"
                                       :input
                                       delete-media-capture-pipeline-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "DELETE" :uri
                                       "/sdk-media-capture-pipelines/{MediaPipelineId}"
                                       :code 204)

(smithy/sdk/operation:define-operation
 delete-media-insights-pipeline-configuration :shape-name
 "DeleteMediaInsightsPipelineConfiguration" :input
 delete-media-insights-pipeline-configuration-request :output common-lisp:null
 :errors
 (bad-request-exception conflict-exception forbidden-exception
  not-found-exception service-failure-exception service-unavailable-exception
  throttled-client-exception unauthorized-client-exception)
 :method "DELETE" :uri "/media-insights-pipeline-configurations/{Identifier}"
 :code 204)

(smithy/sdk/operation:define-operation delete-media-pipeline :shape-name
                                       "DeleteMediaPipeline" :input
                                       delete-media-pipeline-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "DELETE" :uri
                                       "/sdk-media-pipelines/{MediaPipelineId}"
                                       :code 204)

(smithy/sdk/operation:define-operation
 delete-media-pipeline-kinesis-video-stream-pool :shape-name
 "DeleteMediaPipelineKinesisVideoStreamPool" :input
 delete-media-pipeline-kinesis-video-stream-pool-request :output
 common-lisp:null :errors
 (bad-request-exception conflict-exception forbidden-exception
  not-found-exception service-failure-exception service-unavailable-exception
  throttled-client-exception unauthorized-client-exception)
 :method "DELETE" :uri
 "/media-pipeline-kinesis-video-stream-pools/{Identifier}" :code 204)

(smithy/sdk/operation:define-operation get-media-capture-pipeline :shape-name
                                       "GetMediaCapturePipeline" :input
                                       get-media-capture-pipeline-request
                                       :output
                                       get-media-capture-pipeline-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/sdk-media-capture-pipelines/{MediaPipelineId}"
                                       :code 200)

(smithy/sdk/operation:define-operation
 get-media-insights-pipeline-configuration :shape-name
 "GetMediaInsightsPipelineConfiguration" :input
 get-media-insights-pipeline-configuration-request :output
 get-media-insights-pipeline-configuration-response :errors
 (bad-request-exception forbidden-exception not-found-exception
  service-failure-exception service-unavailable-exception
  throttled-client-exception unauthorized-client-exception)
 :method "GET" :uri "/media-insights-pipeline-configurations/{Identifier}"
 :code 200)

(smithy/sdk/operation:define-operation get-media-pipeline :shape-name
                                       "GetMediaPipeline" :input
                                       get-media-pipeline-request :output
                                       get-media-pipeline-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/sdk-media-pipelines/{MediaPipelineId}"
                                       :code 200)

(smithy/sdk/operation:define-operation
 get-media-pipeline-kinesis-video-stream-pool :shape-name
 "GetMediaPipelineKinesisVideoStreamPool" :input
 get-media-pipeline-kinesis-video-stream-pool-request :output
 get-media-pipeline-kinesis-video-stream-pool-response :errors
 (bad-request-exception forbidden-exception not-found-exception
  service-failure-exception service-unavailable-exception
  throttled-client-exception unauthorized-client-exception)
 :method "GET" :uri "/media-pipeline-kinesis-video-stream-pools/{Identifier}"
 :code 200)

(smithy/sdk/operation:define-operation get-speaker-search-task :shape-name
                                       "GetSpeakerSearchTask" :input
                                       get-speaker-search-task-request :output
                                       get-speaker-search-task-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/media-insights-pipelines/{Identifier}/speaker-search-tasks/{SpeakerSearchTaskId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-voice-tone-analysis-task :shape-name
                                       "GetVoiceToneAnalysisTask" :input
                                       get-voice-tone-analysis-task-request
                                       :output
                                       get-voice-tone-analysis-task-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/media-insights-pipelines/{Identifier}/voice-tone-analysis-tasks/{VoiceToneAnalysisTaskId}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-media-capture-pipelines :shape-name
                                       "ListMediaCapturePipelines" :input
                                       list-media-capture-pipelines-request
                                       :output
                                       list-media-capture-pipelines-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/sdk-media-capture-pipelines" :code 200)

(smithy/sdk/operation:define-operation
 list-media-insights-pipeline-configurations :shape-name
 "ListMediaInsightsPipelineConfigurations" :input
 list-media-insights-pipeline-configurations-request :output
 list-media-insights-pipeline-configurations-response :errors
 (bad-request-exception forbidden-exception resource-limit-exceeded-exception
  service-failure-exception service-unavailable-exception
  throttled-client-exception unauthorized-client-exception)
 :method "GET" :uri "/media-insights-pipeline-configurations" :code 200)

(smithy/sdk/operation:define-operation
 list-media-pipeline-kinesis-video-stream-pools :shape-name
 "ListMediaPipelineKinesisVideoStreamPools" :input
 list-media-pipeline-kinesis-video-stream-pools-request :output
 list-media-pipeline-kinesis-video-stream-pools-response :errors
 (bad-request-exception forbidden-exception resource-limit-exceeded-exception
  service-failure-exception service-unavailable-exception
  throttled-client-exception unauthorized-client-exception)
 :method "GET" :uri "/media-pipeline-kinesis-video-stream-pools" :code 200)

(smithy/sdk/operation:define-operation list-media-pipelines :shape-name
                                       "ListMediaPipelines" :input
                                       list-media-pipelines-request :output
                                       list-media-pipelines-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/sdk-media-pipelines" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri "/tags" :code 200)

(smithy/sdk/operation:define-operation start-speaker-search-task :shape-name
                                       "StartSpeakerSearchTask" :input
                                       start-speaker-search-task-request
                                       :output
                                       start-speaker-search-task-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/media-insights-pipelines/{Identifier}/speaker-search-tasks?operation=start"
                                       :code 201)

(smithy/sdk/operation:define-operation start-voice-tone-analysis-task
                                       :shape-name "StartVoiceToneAnalysisTask"
                                       :input
                                       start-voice-tone-analysis-task-request
                                       :output
                                       start-voice-tone-analysis-task-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/media-insights-pipelines/{Identifier}/voice-tone-analysis-tasks?operation=start"
                                       :code 201)

(smithy/sdk/operation:define-operation stop-speaker-search-task :shape-name
                                       "StopSpeakerSearchTask" :input
                                       stop-speaker-search-task-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/media-insights-pipelines/{Identifier}/speaker-search-tasks/{SpeakerSearchTaskId}?operation=stop"
                                       :code 204)

(smithy/sdk/operation:define-operation stop-voice-tone-analysis-task
                                       :shape-name "StopVoiceToneAnalysisTask"
                                       :input
                                       stop-voice-tone-analysis-task-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/media-insights-pipelines/{Identifier}/voice-tone-analysis-tasks/{VoiceToneAnalysisTaskId}?operation=stop"
                                       :code 204)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/tags?operation=tag-resource" :code 204)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/tags?operation=untag-resource" :code
                                       204)

(smithy/sdk/operation:define-operation
 update-media-insights-pipeline-configuration :shape-name
 "UpdateMediaInsightsPipelineConfiguration" :input
 update-media-insights-pipeline-configuration-request :output
 update-media-insights-pipeline-configuration-response :errors
 (bad-request-exception conflict-exception forbidden-exception
  not-found-exception service-failure-exception service-unavailable-exception
  throttled-client-exception unauthorized-client-exception)
 :method "PUT" :uri "/media-insights-pipeline-configurations/{Identifier}"
 :code 200)

(smithy/sdk/operation:define-operation update-media-insights-pipeline-status
                                       :shape-name
                                       "UpdateMediaInsightsPipelineStatus"
                                       :input
                                       update-media-insights-pipeline-status-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "PUT" :uri
                                       "/media-insights-pipeline-status/{Identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation
 update-media-pipeline-kinesis-video-stream-pool :shape-name
 "UpdateMediaPipelineKinesisVideoStreamPool" :input
 update-media-pipeline-kinesis-video-stream-pool-request :output
 update-media-pipeline-kinesis-video-stream-pool-response :errors
 (bad-request-exception conflict-exception forbidden-exception
  not-found-exception service-failure-exception service-unavailable-exception
  throttled-client-exception unauthorized-client-exception)
 :method "PUT" :uri "/media-pipeline-kinesis-video-stream-pools/{Identifier}"
 :code 200)
