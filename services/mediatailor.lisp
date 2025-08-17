(uiop/package:define-package #:pira/mediatailor (:use)
                             (:export #:access-configuration #:access-type
                              #:ad-break #:ad-break-metadata-list
                              #:ad-break-opportunities #:ad-break-opportunity
                              #:ad-conditioning-configuration
                              #:ad-marker-passthrough #:ad-markup-type
                              #:ads-interaction-exclude-event-type
                              #:ads-interaction-log
                              #:ads-interaction-publish-opt-in-event-type
                              #:alert #:alert-category #:alternate-media
                              #:audience-media #:audiences
                              #:avail-matching-criteria #:avail-suppression
                              #:bumper #:cdn-configuration #:channel
                              #:channel-policy #:channel-resource
                              #:channel-state #:clip-range
                              #:configuration-aliases-request
                              #:configuration-aliases-response
                              #:configure-logs-for-channel
                              #:configure-logs-for-channel-request
                              #:configure-logs-for-channel-response
                              #:configure-logs-for-playback-configuration
                              #:configure-logs-for-playback-configuration-request
                              #:configure-logs-for-playback-configuration-response
                              #:create-channel #:create-channel-request
                              #:create-channel-response #:create-live-source
                              #:create-live-source-request
                              #:create-live-source-response
                              #:create-prefetch-schedule
                              #:create-prefetch-schedule-request
                              #:create-prefetch-schedule-response
                              #:create-program #:create-program-request
                              #:create-program-response
                              #:create-source-location
                              #:create-source-location-request
                              #:create-source-location-response
                              #:create-vod-source #:create-vod-source-request
                              #:create-vod-source-response #:dash-configuration
                              #:dash-configuration-for-put
                              #:dash-playlist-settings
                              #:default-segment-delivery-configuration
                              #:delete-channel #:delete-channel-policy
                              #:delete-channel-policy-request
                              #:delete-channel-policy-response
                              #:delete-channel-request
                              #:delete-channel-response #:delete-live-source
                              #:delete-live-source-request
                              #:delete-live-source-response
                              #:delete-playback-configuration
                              #:delete-playback-configuration-request
                              #:delete-playback-configuration-response
                              #:delete-prefetch-schedule
                              #:delete-prefetch-schedule-request
                              #:delete-prefetch-schedule-response
                              #:delete-program #:delete-program-request
                              #:delete-program-response
                              #:delete-source-location
                              #:delete-source-location-request
                              #:delete-source-location-response
                              #:delete-vod-source #:delete-vod-source-request
                              #:delete-vod-source-response #:describe-channel
                              #:describe-channel-request
                              #:describe-channel-response
                              #:describe-live-source
                              #:describe-live-source-request
                              #:describe-live-source-response
                              #:describe-program #:describe-program-request
                              #:describe-program-response
                              #:describe-source-location
                              #:describe-source-location-request
                              #:describe-source-location-response
                              #:describe-vod-source
                              #:describe-vod-source-request
                              #:describe-vod-source-response #:fill-policy
                              #:get-channel-policy #:get-channel-policy-request
                              #:get-channel-policy-response
                              #:get-channel-schedule
                              #:get-channel-schedule-request
                              #:get-channel-schedule-response
                              #:get-playback-configuration
                              #:get-playback-configuration-request
                              #:get-playback-configuration-response
                              #:get-prefetch-schedule
                              #:get-prefetch-schedule-request
                              #:get-prefetch-schedule-response
                              #:hls-configuration #:hls-playlist-settings
                              #:http-configuration #:http-package-configuration
                              #:http-package-configurations #:insertion-mode
                              #:key-value-pair #:list-alerts
                              #:list-alerts-request #:list-alerts-response
                              #:list-channels #:list-channels-request
                              #:list-channels-response #:list-live-sources
                              #:list-live-sources-request
                              #:list-live-sources-response
                              #:list-playback-configurations
                              #:list-playback-configurations-request
                              #:list-playback-configurations-response
                              #:list-prefetch-schedule-type
                              #:list-prefetch-schedules
                              #:list-prefetch-schedules-request
                              #:list-prefetch-schedules-response
                              #:list-source-locations
                              #:list-source-locations-request
                              #:list-source-locations-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:list-vod-sources #:list-vod-sources-request
                              #:list-vod-sources-response
                              #:live-pre-roll-configuration #:live-source
                              #:live-source-resource #:log-configuration
                              #:log-configuration-for-channel #:log-type
                              #:log-types #:logging-strategy
                              #:manifest-processing-rules
                              #:manifest-service-exclude-event-type
                              #:manifest-service-interaction-log #:max-results
                              #:media-tailor #:message-type #:mode #:operator
                              #:origin-manifest-type #:playback-configuration
                              #:playback-configuration-resource #:playback-mode
                              #:prefetch-consumption #:prefetch-retrieval
                              #:prefetch-schedule #:prefetch-schedule-resource
                              #:prefetch-schedule-type #:program-resource
                              #:put-channel-policy #:put-channel-policy-request
                              #:put-channel-policy-response
                              #:put-playback-configuration
                              #:put-playback-configuration-request
                              #:put-playback-configuration-response
                              #:recurring-consumption
                              #:recurring-prefetch-configuration
                              #:recurring-retrieval #:relative-position
                              #:request-output-item #:request-outputs
                              #:response-output-item #:response-outputs
                              #:schedule-ad-break #:schedule-configuration
                              #:schedule-entry #:schedule-entry-type
                              #:secrets-manager-access-token-configuration
                              #:segment-delivery-configuration
                              #:segmentation-descriptor
                              #:segmentation-descriptor-list #:slate-source
                              #:source-location #:source-location-resource
                              #:splice-insert-message #:start-channel
                              #:start-channel-request #:start-channel-response
                              #:stop-channel #:stop-channel-request
                              #:stop-channel-response
                              #:streaming-media-file-conditioning
                              #:tag-resource #:tag-resource-request #:tier
                              #:time-shift-configuration #:time-signal-message
                              #:traffic-shaping-retrieval-window
                              #:traffic-shaping-type #:transition #:type
                              #:untag-resource #:untag-resource-request
                              #:update-channel #:update-channel-request
                              #:update-channel-response #:update-live-source
                              #:update-live-source-request
                              #:update-live-source-response #:update-program
                              #:update-program-request
                              #:update-program-response
                              #:update-program-schedule-configuration
                              #:update-program-transition
                              #:update-source-location
                              #:update-source-location-request
                              #:update-source-location-response
                              #:update-vod-source #:update-vod-source-request
                              #:update-vod-source-response #:vod-source
                              #:vod-source-resource
                              #:ads-interaction-exclude-event-types-list
                              #:ads-interaction-publish-opt-in-event-types-list
                              #:boolean #:integer #:integer-min1
                              #:integer-min1max100 #:list-of-ad-break
                              #:list-of-alert #:list-of-alternate-media
                              #:list-of-audience-media
                              #:list-of-avail-matching-criteria
                              #:list-of-channel #:list-of-live-source
                              #:list-of-logging-strategies
                              #:list-of-playback-configuration
                              #:list-of-prefetch-schedule
                              #:list-of-schedule-ad-break
                              #:list-of-schedule-entry
                              #:list-of-segment-delivery-configuration
                              #:list-of-source-location #:list-of-vod-source
                              #:list-of-string #:long
                              #:manifest-service-exclude-event-types-list
                              #:map-of-string #:string #:timestamp-unix
                              #:ad-markup-types))
(common-lisp:in-package #:pira/mediatailor)

(smithy/sdk/service:define-service media-tailor :shape-name "MediaTailor"
                                   :version "2018-04-23" :title
                                   "AWS MediaTailor" :operations
                                   '(configure-logs-for-playback-configuration
                                     list-alerts list-tags-for-resource
                                     tag-resource untag-resource)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "MediaTailor")
                                      ("arnNamespace" . "mediatailor")
                                      ("cloudFormationName" . "MediaTailor")
                                      ("cloudTrailEventSource"
                                       . "mediatailor.amazonaws.com")
                                      ("endpointPrefix" . "api.mediatailor"))
                                     ("aws.auth#sigv4"
                                      ("name" . "mediatailor"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-structure access-configuration common-lisp:nil
                                    ((access-type :target-type access-type
                                      :member-name "AccessType")
                                     (secrets-manager-access-token-configuration
                                      :target-type
                                      secrets-manager-access-token-configuration
                                      :member-name
                                      "SecretsManagerAccessTokenConfiguration"))
                                    (:shape-name "AccessConfiguration"))

(smithy/sdk/shapes:define-enum access-type
    common-lisp:nil
  (:s3-sigv4 "S3_SIGV4")
  (:secrets-manager-access-token "SECRETS_MANAGER_ACCESS_TOKEN")
  (:autodetect-sigv4 "AUTODETECT_SIGV4"))

(smithy/sdk/shapes:define-structure ad-break common-lisp:nil
                                    ((message-type :target-type message-type
                                      :member-name "MessageType")
                                     (offset-millis :target-type long :required
                                      common-lisp:t :member-name
                                      "OffsetMillis")
                                     (slate :target-type slate-source
                                      :member-name "Slate")
                                     (splice-insert-message :target-type
                                      splice-insert-message :member-name
                                      "SpliceInsertMessage")
                                     (time-signal-message :target-type
                                      time-signal-message :member-name
                                      "TimeSignalMessage")
                                     (ad-break-metadata :target-type
                                      ad-break-metadata-list :member-name
                                      "AdBreakMetadata"))
                                    (:shape-name "AdBreak"))

(smithy/sdk/shapes:define-list ad-break-metadata-list :member key-value-pair)

(smithy/sdk/shapes:define-list ad-break-opportunities :member
                               ad-break-opportunity)

(smithy/sdk/shapes:define-structure ad-break-opportunity common-lisp:nil
                                    ((offset-millis :target-type long :required
                                      common-lisp:t :member-name
                                      "OffsetMillis"))
                                    (:shape-name "AdBreakOpportunity"))

(smithy/sdk/shapes:define-structure ad-conditioning-configuration
                                    common-lisp:nil
                                    ((streaming-media-file-conditioning
                                      :target-type
                                      streaming-media-file-conditioning
                                      :required common-lisp:t :member-name
                                      "StreamingMediaFileConditioning"))
                                    (:shape-name "AdConditioningConfiguration"))

(smithy/sdk/shapes:define-structure ad-marker-passthrough common-lisp:nil
                                    ((enabled :target-type boolean :member-name
                                      "Enabled"))
                                    (:shape-name "AdMarkerPassthrough"))

(smithy/sdk/shapes:define-enum ad-markup-type
    common-lisp:nil
  (:daterange "DATERANGE")
  (:scte35-enhanced "SCTE35_ENHANCED"))

(smithy/sdk/shapes:define-enum ads-interaction-exclude-event-type
    common-lisp:nil
  (:ad-marker-found "AD_MARKER_FOUND")
  (:non-ad-marker-found "NON_AD_MARKER_FOUND")
  (:making-ads-request "MAKING_ADS_REQUEST")
  (:modified-target-url "MODIFIED_TARGET_URL")
  (:vast-redirect "VAST_REDIRECT")
  (:empty-vast-response "EMPTY_VAST_RESPONSE")
  (:empty-vmap-response "EMPTY_VMAP_RESPONSE")
  (:vast-response "VAST_RESPONSE")
  (:redirected-vast-response "REDIRECTED_VAST_RESPONSE")
  (:filled-avail "FILLED_AVAIL")
  (:filled-overlay-avail "FILLED_OVERLAY_AVAIL")
  (:beacon-fired "BEACON_FIRED")
  (:warning-no-advertisements "WARNING_NO_ADVERTISEMENTS")
  (:warning-vpaid-ad-dropped "WARNING_VPAID_AD_DROPPED")
  (:warning-url-variable-substitution-failed
   "WARNING_URL_VARIABLE_SUBSTITUTION_FAILED")
  (:error-unknown "ERROR_UNKNOWN")
  (:error-unknown-host "ERROR_UNKNOWN_HOST")
  (:error-disallowed-host "ERROR_DISALLOWED_HOST")
  (:error-ads-io "ERROR_ADS_IO")
  (:error-ads-timeout "ERROR_ADS_TIMEOUT")
  (:error-ads-response-parse "ERROR_ADS_RESPONSE_PARSE")
  (:error-ads-response-unknown-root-element
   "ERROR_ADS_RESPONSE_UNKNOWN_ROOT_ELEMENT")
  (:error-ads-invalid-response "ERROR_ADS_INVALID_RESPONSE")
  (:error-vast-redirect-empty-response "ERROR_VAST_REDIRECT_EMPTY_RESPONSE")
  (:error-vast-redirect-multiple-vast "ERROR_VAST_REDIRECT_MULTIPLE_VAST")
  (:error-vast-redirect-failed "ERROR_VAST_REDIRECT_FAILED")
  (:error-vast-missing-mediafiles "ERROR_VAST_MISSING_MEDIAFILES")
  (:error-vast-missing-creatives "ERROR_VAST_MISSING_CREATIVES")
  (:error-vast-missing-overlays "ERROR_VAST_MISSING_OVERLAYS")
  (:error-vast-missing-impression "ERROR_VAST_MISSING_IMPRESSION")
  (:error-vast-invalid-vast-ad-tag-uri "ERROR_VAST_INVALID_VAST_AD_TAG_URI")
  (:error-vast-multiple-tracking-events "ERROR_VAST_MULTIPLE_TRACKING_EVENTS")
  (:error-vast-multiple-linear "ERROR_VAST_MULTIPLE_LINEAR")
  (:error-vast-invalid-media-file "ERROR_VAST_INVALID_MEDIA_FILE")
  (:error-firing-beacon-failed "ERROR_FIRING_BEACON_FAILED")
  (:error-personalization-disabled "ERROR_PERSONALIZATION_DISABLED")
  (:vod-time-based-avail-plan-vast-response-for-offset
   "VOD_TIME_BASED_AVAIL_PLAN_VAST_RESPONSE_FOR_OFFSET")
  (:vod-time-based-avail-plan-success "VOD_TIME_BASED_AVAIL_PLAN_SUCCESS")
  (:vod-time-based-avail-plan-warning-no-advertisements
   "VOD_TIME_BASED_AVAIL_PLAN_WARNING_NO_ADVERTISEMENTS")
  (:interstitial-vod-success "INTERSTITIAL_VOD_SUCCESS")
  (:interstitial-vod-failure "INTERSTITIAL_VOD_FAILURE"))

(smithy/sdk/shapes:define-structure ads-interaction-log common-lisp:nil
                                    ((publish-opt-in-event-types :target-type
                                      ads-interaction-publish-opt-in-event-types-list
                                      :member-name "PublishOptInEventTypes")
                                     (exclude-event-types :target-type
                                      ads-interaction-exclude-event-types-list
                                      :member-name "ExcludeEventTypes"))
                                    (:shape-name "AdsInteractionLog"))

(smithy/sdk/shapes:define-enum ads-interaction-publish-opt-in-event-type
    common-lisp:nil
  (:raw-ads-response "RAW_ADS_RESPONSE"))

(smithy/sdk/shapes:define-structure alert common-lisp:nil
                                    ((alert-code :target-type string :required
                                      common-lisp:t :member-name "AlertCode")
                                     (alert-message :target-type string
                                      :required common-lisp:t :member-name
                                      "AlertMessage")
                                     (last-modified-time :target-type
                                      timestamp-unix :required common-lisp:t
                                      :member-name "LastModifiedTime")
                                     (related-resource-arns :target-type
                                      list-of-string :required common-lisp:t
                                      :member-name "RelatedResourceArns")
                                     (resource-arn :target-type string
                                      :required common-lisp:t :member-name
                                      "ResourceArn")
                                     (category :target-type alert-category
                                      :member-name "Category"))
                                    (:shape-name "Alert"))

(smithy/sdk/shapes:define-enum alert-category
    common-lisp:nil
  (:scheduling-error "SCHEDULING_ERROR")
  (:playback-warning "PLAYBACK_WARNING")
  (:info "INFO"))

(smithy/sdk/shapes:define-structure alternate-media common-lisp:nil
                                    ((source-location-name :target-type string
                                      :member-name "SourceLocationName")
                                     (live-source-name :target-type string
                                      :member-name "LiveSourceName")
                                     (vod-source-name :target-type string
                                      :member-name "VodSourceName")
                                     (clip-range :target-type clip-range
                                      :member-name "ClipRange")
                                     (scheduled-start-time-millis :target-type
                                      long :member-name
                                      "ScheduledStartTimeMillis")
                                     (ad-breaks :target-type list-of-ad-break
                                      :member-name "AdBreaks")
                                     (duration-millis :target-type long
                                      :member-name "DurationMillis"))
                                    (:shape-name "AlternateMedia"))

(smithy/sdk/shapes:define-structure audience-media common-lisp:nil
                                    ((audience :target-type string :member-name
                                      "Audience")
                                     (alternate-media :target-type
                                      list-of-alternate-media :member-name
                                      "AlternateMedia"))
                                    (:shape-name "AudienceMedia"))

(smithy/sdk/shapes:define-list audiences :member smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure avail-matching-criteria common-lisp:nil
                                    ((dynamic-variable :target-type string
                                      :required common-lisp:t :member-name
                                      "DynamicVariable")
                                     (operator :target-type operator :required
                                      common-lisp:t :member-name "Operator"))
                                    (:shape-name "AvailMatchingCriteria"))

(smithy/sdk/shapes:define-structure avail-suppression common-lisp:nil
                                    ((mode :target-type mode :member-name
                                      "Mode")
                                     (value :target-type string :member-name
                                      "Value")
                                     (fill-policy :target-type fill-policy
                                      :member-name "FillPolicy"))
                                    (:shape-name "AvailSuppression"))

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure bumper common-lisp:nil
                                    ((end-url :target-type string :member-name
                                      "EndUrl")
                                     (start-url :target-type string
                                      :member-name "StartUrl"))
                                    (:shape-name "Bumper"))

(smithy/sdk/shapes:define-structure cdn-configuration common-lisp:nil
                                    ((ad-segment-url-prefix :target-type string
                                      :member-name "AdSegmentUrlPrefix")
                                     (content-segment-url-prefix :target-type
                                      string :member-name
                                      "ContentSegmentUrlPrefix"))
                                    (:shape-name "CdnConfiguration"))

(smithy/sdk/shapes:define-structure channel common-lisp:nil
                                    ((arn :target-type string :required
                                      common-lisp:t :member-name "Arn")
                                     (channel-name :target-type string
                                      :required common-lisp:t :member-name
                                      "ChannelName")
                                     (channel-state :target-type string
                                      :required common-lisp:t :member-name
                                      "ChannelState")
                                     (creation-time :target-type timestamp-unix
                                      :member-name "CreationTime")
                                     (filler-slate :target-type slate-source
                                      :member-name "FillerSlate")
                                     (last-modified-time :target-type
                                      timestamp-unix :member-name
                                      "LastModifiedTime")
                                     (outputs :target-type response-outputs
                                      :required common-lisp:t :member-name
                                      "Outputs")
                                     (playback-mode :target-type string
                                      :required common-lisp:t :member-name
                                      "PlaybackMode")
                                     (tags :target-type map-of-string
                                      :member-name "Tags" :json-name "tags")
                                     (tier :target-type string :required
                                      common-lisp:t :member-name "Tier")
                                     (log-configuration :target-type
                                      log-configuration-for-channel :required
                                      common-lisp:t :member-name
                                      "LogConfiguration")
                                     (audiences :target-type audiences
                                      :member-name "Audiences"))
                                    (:shape-name "Channel"))

common-lisp:nil

common-lisp:nil

(smithy/sdk/shapes:define-enum channel-state
    common-lisp:nil
  (:running "RUNNING")
  (:stopped "STOPPED"))

(smithy/sdk/shapes:define-structure clip-range common-lisp:nil
                                    ((end-offset-millis :target-type long
                                      :member-name "EndOffsetMillis")
                                     (start-offset-millis :target-type long
                                      :member-name "StartOffsetMillis"))
                                    (:shape-name "ClipRange"))

(smithy/sdk/shapes:define-map configuration-aliases-request :key string :value
                              map-of-string)

(smithy/sdk/shapes:define-map configuration-aliases-response :key string :value
                              map-of-string)

(smithy/sdk/shapes:define-structure configure-logs-for-channel-request
                                    common-lisp:nil
                                    ((channel-name :target-type string
                                      :required common-lisp:t :member-name
                                      "ChannelName")
                                     (log-types :target-type log-types
                                      :required common-lisp:t :member-name
                                      "LogTypes"))
                                    (:shape-name
                                     "ConfigureLogsForChannelRequest"))

(smithy/sdk/shapes:define-structure configure-logs-for-channel-response
                                    common-lisp:nil
                                    ((channel-name :target-type string
                                      :member-name "ChannelName")
                                     (log-types :target-type log-types
                                      :member-name "LogTypes"))
                                    (:shape-name
                                     "ConfigureLogsForChannelResponse"))

(smithy/sdk/shapes:define-structure
 configure-logs-for-playback-configuration-request common-lisp:nil
 ((percent-enabled :target-type integer :required common-lisp:t :member-name
   "PercentEnabled")
  (playback-configuration-name :target-type string :required common-lisp:t
   :member-name "PlaybackConfigurationName")
  (enabled-logging-strategies :target-type list-of-logging-strategies
   :member-name "EnabledLoggingStrategies")
  (ads-interaction-log :target-type ads-interaction-log :member-name
   "AdsInteractionLog")
  (manifest-service-interaction-log :target-type
   manifest-service-interaction-log :member-name
   "ManifestServiceInteractionLog"))
 (:shape-name "ConfigureLogsForPlaybackConfigurationRequest"))

(smithy/sdk/shapes:define-structure
 configure-logs-for-playback-configuration-response common-lisp:nil
 ((percent-enabled :target-type integer :required common-lisp:t :member-name
   "PercentEnabled")
  (playback-configuration-name :target-type string :member-name
   "PlaybackConfigurationName")
  (enabled-logging-strategies :target-type list-of-logging-strategies
   :member-name "EnabledLoggingStrategies")
  (ads-interaction-log :target-type ads-interaction-log :member-name
   "AdsInteractionLog")
  (manifest-service-interaction-log :target-type
   manifest-service-interaction-log :member-name
   "ManifestServiceInteractionLog"))
 (:shape-name "ConfigureLogsForPlaybackConfigurationResponse"))

(smithy/sdk/shapes:define-structure create-channel-request common-lisp:nil
                                    ((channel-name :target-type string
                                      :required common-lisp:t :member-name
                                      "ChannelName")
                                     (filler-slate :target-type slate-source
                                      :member-name "FillerSlate")
                                     (outputs :target-type request-outputs
                                      :required common-lisp:t :member-name
                                      "Outputs")
                                     (playback-mode :target-type playback-mode
                                      :required common-lisp:t :member-name
                                      "PlaybackMode")
                                     (tags :target-type map-of-string
                                      :member-name "Tags" :json-name "tags")
                                     (tier :target-type tier :member-name
                                      "Tier")
                                     (time-shift-configuration :target-type
                                      time-shift-configuration :member-name
                                      "TimeShiftConfiguration")
                                     (audiences :target-type audiences
                                      :member-name "Audiences"))
                                    (:shape-name "CreateChannelRequest"))

(smithy/sdk/shapes:define-structure create-channel-response common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn")
                                     (channel-name :target-type string
                                      :member-name "ChannelName")
                                     (channel-state :target-type channel-state
                                      :member-name "ChannelState")
                                     (creation-time :target-type timestamp-unix
                                      :member-name "CreationTime")
                                     (filler-slate :target-type slate-source
                                      :member-name "FillerSlate")
                                     (last-modified-time :target-type
                                      timestamp-unix :member-name
                                      "LastModifiedTime")
                                     (outputs :target-type response-outputs
                                      :member-name "Outputs")
                                     (playback-mode :target-type string
                                      :member-name "PlaybackMode")
                                     (tags :target-type map-of-string
                                      :member-name "Tags" :json-name "tags")
                                     (tier :target-type string :member-name
                                      "Tier")
                                     (time-shift-configuration :target-type
                                      time-shift-configuration :member-name
                                      "TimeShiftConfiguration")
                                     (audiences :target-type audiences
                                      :member-name "Audiences"))
                                    (:shape-name "CreateChannelResponse"))

(smithy/sdk/shapes:define-structure create-live-source-request common-lisp:nil
                                    ((http-package-configurations :target-type
                                      http-package-configurations :required
                                      common-lisp:t :member-name
                                      "HttpPackageConfigurations")
                                     (live-source-name :target-type string
                                      :required common-lisp:t :member-name
                                      "LiveSourceName")
                                     (source-location-name :target-type string
                                      :required common-lisp:t :member-name
                                      "SourceLocationName")
                                     (tags :target-type map-of-string
                                      :member-name "Tags" :json-name "tags"))
                                    (:shape-name "CreateLiveSourceRequest"))

(smithy/sdk/shapes:define-structure create-live-source-response common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn")
                                     (creation-time :target-type timestamp-unix
                                      :member-name "CreationTime")
                                     (http-package-configurations :target-type
                                      http-package-configurations :member-name
                                      "HttpPackageConfigurations")
                                     (last-modified-time :target-type
                                      timestamp-unix :member-name
                                      "LastModifiedTime")
                                     (live-source-name :target-type string
                                      :member-name "LiveSourceName")
                                     (source-location-name :target-type string
                                      :member-name "SourceLocationName")
                                     (tags :target-type map-of-string
                                      :member-name "Tags" :json-name "tags"))
                                    (:shape-name "CreateLiveSourceResponse"))

(smithy/sdk/shapes:define-structure create-prefetch-schedule-request
                                    common-lisp:nil
                                    ((consumption :target-type
                                      prefetch-consumption :member-name
                                      "Consumption")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (playback-configuration-name :target-type
                                      string :required common-lisp:t
                                      :member-name "PlaybackConfigurationName")
                                     (retrieval :target-type prefetch-retrieval
                                      :member-name "Retrieval")
                                     (recurring-prefetch-configuration
                                      :target-type
                                      recurring-prefetch-configuration
                                      :member-name
                                      "RecurringPrefetchConfiguration")
                                     (schedule-type :target-type
                                      prefetch-schedule-type :member-name
                                      "ScheduleType")
                                     (stream-id :target-type string
                                      :member-name "StreamId"))
                                    (:shape-name
                                     "CreatePrefetchScheduleRequest"))

(smithy/sdk/shapes:define-structure create-prefetch-schedule-response
                                    common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn")
                                     (consumption :target-type
                                      prefetch-consumption :member-name
                                      "Consumption")
                                     (name :target-type string :member-name
                                      "Name")
                                     (playback-configuration-name :target-type
                                      string :member-name
                                      "PlaybackConfigurationName")
                                     (retrieval :target-type prefetch-retrieval
                                      :member-name "Retrieval")
                                     (recurring-prefetch-configuration
                                      :target-type
                                      recurring-prefetch-configuration
                                      :member-name
                                      "RecurringPrefetchConfiguration")
                                     (schedule-type :target-type
                                      prefetch-schedule-type :member-name
                                      "ScheduleType")
                                     (stream-id :target-type string
                                      :member-name "StreamId"))
                                    (:shape-name
                                     "CreatePrefetchScheduleResponse"))

(smithy/sdk/shapes:define-structure create-program-request common-lisp:nil
                                    ((ad-breaks :target-type list-of-ad-break
                                      :member-name "AdBreaks")
                                     (channel-name :target-type string
                                      :required common-lisp:t :member-name
                                      "ChannelName")
                                     (live-source-name :target-type string
                                      :member-name "LiveSourceName")
                                     (program-name :target-type string
                                      :required common-lisp:t :member-name
                                      "ProgramName")
                                     (schedule-configuration :target-type
                                      schedule-configuration :required
                                      common-lisp:t :member-name
                                      "ScheduleConfiguration")
                                     (source-location-name :target-type string
                                      :required common-lisp:t :member-name
                                      "SourceLocationName")
                                     (vod-source-name :target-type string
                                      :member-name "VodSourceName")
                                     (audience-media :target-type
                                      list-of-audience-media :member-name
                                      "AudienceMedia"))
                                    (:shape-name "CreateProgramRequest"))

(smithy/sdk/shapes:define-structure create-program-response common-lisp:nil
                                    ((ad-breaks :target-type list-of-ad-break
                                      :member-name "AdBreaks")
                                     (arn :target-type string :member-name
                                      "Arn")
                                     (channel-name :target-type string
                                      :member-name "ChannelName")
                                     (creation-time :target-type timestamp-unix
                                      :member-name "CreationTime")
                                     (live-source-name :target-type string
                                      :member-name "LiveSourceName")
                                     (program-name :target-type string
                                      :member-name "ProgramName")
                                     (scheduled-start-time :target-type
                                      timestamp-unix :member-name
                                      "ScheduledStartTime")
                                     (source-location-name :target-type string
                                      :member-name "SourceLocationName")
                                     (vod-source-name :target-type string
                                      :member-name "VodSourceName")
                                     (clip-range :target-type clip-range
                                      :member-name "ClipRange")
                                     (duration-millis :target-type long
                                      :member-name "DurationMillis")
                                     (audience-media :target-type
                                      list-of-audience-media :member-name
                                      "AudienceMedia"))
                                    (:shape-name "CreateProgramResponse"))

(smithy/sdk/shapes:define-structure create-source-location-request
                                    common-lisp:nil
                                    ((access-configuration :target-type
                                      access-configuration :member-name
                                      "AccessConfiguration")
                                     (default-segment-delivery-configuration
                                      :target-type
                                      default-segment-delivery-configuration
                                      :member-name
                                      "DefaultSegmentDeliveryConfiguration")
                                     (http-configuration :target-type
                                      http-configuration :required
                                      common-lisp:t :member-name
                                      "HttpConfiguration")
                                     (segment-delivery-configurations
                                      :target-type
                                      list-of-segment-delivery-configuration
                                      :member-name
                                      "SegmentDeliveryConfigurations")
                                     (source-location-name :target-type string
                                      :required common-lisp:t :member-name
                                      "SourceLocationName")
                                     (tags :target-type map-of-string
                                      :member-name "Tags" :json-name "tags"))
                                    (:shape-name "CreateSourceLocationRequest"))

(smithy/sdk/shapes:define-structure create-source-location-response
                                    common-lisp:nil
                                    ((access-configuration :target-type
                                      access-configuration :member-name
                                      "AccessConfiguration")
                                     (arn :target-type string :member-name
                                      "Arn")
                                     (creation-time :target-type timestamp-unix
                                      :member-name "CreationTime")
                                     (default-segment-delivery-configuration
                                      :target-type
                                      default-segment-delivery-configuration
                                      :member-name
                                      "DefaultSegmentDeliveryConfiguration")
                                     (http-configuration :target-type
                                      http-configuration :member-name
                                      "HttpConfiguration")
                                     (last-modified-time :target-type
                                      timestamp-unix :member-name
                                      "LastModifiedTime")
                                     (segment-delivery-configurations
                                      :target-type
                                      list-of-segment-delivery-configuration
                                      :member-name
                                      "SegmentDeliveryConfigurations")
                                     (source-location-name :target-type string
                                      :member-name "SourceLocationName")
                                     (tags :target-type map-of-string
                                      :member-name "Tags" :json-name "tags"))
                                    (:shape-name
                                     "CreateSourceLocationResponse"))

(smithy/sdk/shapes:define-structure create-vod-source-request common-lisp:nil
                                    ((http-package-configurations :target-type
                                      http-package-configurations :required
                                      common-lisp:t :member-name
                                      "HttpPackageConfigurations")
                                     (source-location-name :target-type string
                                      :required common-lisp:t :member-name
                                      "SourceLocationName")
                                     (tags :target-type map-of-string
                                      :member-name "Tags" :json-name "tags")
                                     (vod-source-name :target-type string
                                      :required common-lisp:t :member-name
                                      "VodSourceName"))
                                    (:shape-name "CreateVodSourceRequest"))

(smithy/sdk/shapes:define-structure create-vod-source-response common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn")
                                     (creation-time :target-type timestamp-unix
                                      :member-name "CreationTime")
                                     (http-package-configurations :target-type
                                      http-package-configurations :member-name
                                      "HttpPackageConfigurations")
                                     (last-modified-time :target-type
                                      timestamp-unix :member-name
                                      "LastModifiedTime")
                                     (source-location-name :target-type string
                                      :member-name "SourceLocationName")
                                     (tags :target-type map-of-string
                                      :member-name "Tags" :json-name "tags")
                                     (vod-source-name :target-type string
                                      :member-name "VodSourceName"))
                                    (:shape-name "CreateVodSourceResponse"))

(smithy/sdk/shapes:define-structure dash-configuration common-lisp:nil
                                    ((manifest-endpoint-prefix :target-type
                                      string :member-name
                                      "ManifestEndpointPrefix")
                                     (mpd-location :target-type string
                                      :member-name "MpdLocation")
                                     (origin-manifest-type :target-type
                                      origin-manifest-type :member-name
                                      "OriginManifestType"))
                                    (:shape-name "DashConfiguration"))

(smithy/sdk/shapes:define-structure dash-configuration-for-put common-lisp:nil
                                    ((mpd-location :target-type string
                                      :member-name "MpdLocation")
                                     (origin-manifest-type :target-type
                                      origin-manifest-type :member-name
                                      "OriginManifestType"))
                                    (:shape-name "DashConfigurationForPut"))

(smithy/sdk/shapes:define-structure dash-playlist-settings common-lisp:nil
                                    ((manifest-window-seconds :target-type
                                      integer :member-name
                                      "ManifestWindowSeconds")
                                     (min-buffer-time-seconds :target-type
                                      integer :member-name
                                      "MinBufferTimeSeconds")
                                     (min-update-period-seconds :target-type
                                      integer :member-name
                                      "MinUpdatePeriodSeconds")
                                     (suggested-presentation-delay-seconds
                                      :target-type integer :member-name
                                      "SuggestedPresentationDelaySeconds"))
                                    (:shape-name "DashPlaylistSettings"))

(smithy/sdk/shapes:define-structure default-segment-delivery-configuration
                                    common-lisp:nil
                                    ((base-url :target-type string :member-name
                                      "BaseUrl"))
                                    (:shape-name
                                     "DefaultSegmentDeliveryConfiguration"))

(smithy/sdk/shapes:define-structure delete-channel-policy-request
                                    common-lisp:nil
                                    ((channel-name :target-type string
                                      :required common-lisp:t :member-name
                                      "ChannelName"))
                                    (:shape-name "DeleteChannelPolicyRequest"))

(smithy/sdk/shapes:define-structure delete-channel-policy-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "DeleteChannelPolicyResponse"))

(smithy/sdk/shapes:define-structure delete-channel-request common-lisp:nil
                                    ((channel-name :target-type string
                                      :required common-lisp:t :member-name
                                      "ChannelName"))
                                    (:shape-name "DeleteChannelRequest"))

(smithy/sdk/shapes:define-structure delete-channel-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteChannelResponse"))

(smithy/sdk/shapes:define-structure delete-live-source-request common-lisp:nil
                                    ((live-source-name :target-type string
                                      :required common-lisp:t :member-name
                                      "LiveSourceName")
                                     (source-location-name :target-type string
                                      :required common-lisp:t :member-name
                                      "SourceLocationName"))
                                    (:shape-name "DeleteLiveSourceRequest"))

(smithy/sdk/shapes:define-structure delete-live-source-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteLiveSourceResponse"))

(smithy/sdk/shapes:define-structure delete-playback-configuration-request
                                    common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "Name"))
                                    (:shape-name
                                     "DeletePlaybackConfigurationRequest"))

(smithy/sdk/shapes:define-structure delete-playback-configuration-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "DeletePlaybackConfigurationResponse"))

(smithy/sdk/shapes:define-structure delete-prefetch-schedule-request
                                    common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (playback-configuration-name :target-type
                                      string :required common-lisp:t
                                      :member-name
                                      "PlaybackConfigurationName"))
                                    (:shape-name
                                     "DeletePrefetchScheduleRequest"))

(smithy/sdk/shapes:define-structure delete-prefetch-schedule-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "DeletePrefetchScheduleResponse"))

(smithy/sdk/shapes:define-structure delete-program-request common-lisp:nil
                                    ((channel-name :target-type string
                                      :required common-lisp:t :member-name
                                      "ChannelName")
                                     (program-name :target-type string
                                      :required common-lisp:t :member-name
                                      "ProgramName"))
                                    (:shape-name "DeleteProgramRequest"))

(smithy/sdk/shapes:define-structure delete-program-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteProgramResponse"))

(smithy/sdk/shapes:define-structure delete-source-location-request
                                    common-lisp:nil
                                    ((source-location-name :target-type string
                                      :required common-lisp:t :member-name
                                      "SourceLocationName"))
                                    (:shape-name "DeleteSourceLocationRequest"))

(smithy/sdk/shapes:define-structure delete-source-location-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "DeleteSourceLocationResponse"))

(smithy/sdk/shapes:define-structure delete-vod-source-request common-lisp:nil
                                    ((source-location-name :target-type string
                                      :required common-lisp:t :member-name
                                      "SourceLocationName")
                                     (vod-source-name :target-type string
                                      :required common-lisp:t :member-name
                                      "VodSourceName"))
                                    (:shape-name "DeleteVodSourceRequest"))

(smithy/sdk/shapes:define-structure delete-vod-source-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteVodSourceResponse"))

(smithy/sdk/shapes:define-structure describe-channel-request common-lisp:nil
                                    ((channel-name :target-type string
                                      :required common-lisp:t :member-name
                                      "ChannelName"))
                                    (:shape-name "DescribeChannelRequest"))

(smithy/sdk/shapes:define-structure describe-channel-response common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn")
                                     (channel-name :target-type string
                                      :member-name "ChannelName")
                                     (channel-state :target-type channel-state
                                      :member-name "ChannelState")
                                     (creation-time :target-type timestamp-unix
                                      :member-name "CreationTime")
                                     (filler-slate :target-type slate-source
                                      :member-name "FillerSlate")
                                     (last-modified-time :target-type
                                      timestamp-unix :member-name
                                      "LastModifiedTime")
                                     (outputs :target-type response-outputs
                                      :member-name "Outputs")
                                     (playback-mode :target-type string
                                      :member-name "PlaybackMode")
                                     (tags :target-type map-of-string
                                      :member-name "Tags" :json-name "tags")
                                     (tier :target-type string :member-name
                                      "Tier")
                                     (log-configuration :target-type
                                      log-configuration-for-channel :required
                                      common-lisp:t :member-name
                                      "LogConfiguration")
                                     (time-shift-configuration :target-type
                                      time-shift-configuration :member-name
                                      "TimeShiftConfiguration")
                                     (audiences :target-type audiences
                                      :member-name "Audiences"))
                                    (:shape-name "DescribeChannelResponse"))

(smithy/sdk/shapes:define-structure describe-live-source-request
                                    common-lisp:nil
                                    ((live-source-name :target-type string
                                      :required common-lisp:t :member-name
                                      "LiveSourceName")
                                     (source-location-name :target-type string
                                      :required common-lisp:t :member-name
                                      "SourceLocationName"))
                                    (:shape-name "DescribeLiveSourceRequest"))

(smithy/sdk/shapes:define-structure describe-live-source-response
                                    common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn")
                                     (creation-time :target-type timestamp-unix
                                      :member-name "CreationTime")
                                     (http-package-configurations :target-type
                                      http-package-configurations :member-name
                                      "HttpPackageConfigurations")
                                     (last-modified-time :target-type
                                      timestamp-unix :member-name
                                      "LastModifiedTime")
                                     (live-source-name :target-type string
                                      :member-name "LiveSourceName")
                                     (source-location-name :target-type string
                                      :member-name "SourceLocationName")
                                     (tags :target-type map-of-string
                                      :member-name "Tags" :json-name "tags"))
                                    (:shape-name "DescribeLiveSourceResponse"))

(smithy/sdk/shapes:define-structure describe-program-request common-lisp:nil
                                    ((channel-name :target-type string
                                      :required common-lisp:t :member-name
                                      "ChannelName")
                                     (program-name :target-type string
                                      :required common-lisp:t :member-name
                                      "ProgramName"))
                                    (:shape-name "DescribeProgramRequest"))

(smithy/sdk/shapes:define-structure describe-program-response common-lisp:nil
                                    ((ad-breaks :target-type list-of-ad-break
                                      :member-name "AdBreaks")
                                     (arn :target-type string :member-name
                                      "Arn")
                                     (channel-name :target-type string
                                      :member-name "ChannelName")
                                     (creation-time :target-type timestamp-unix
                                      :member-name "CreationTime")
                                     (live-source-name :target-type string
                                      :member-name "LiveSourceName")
                                     (program-name :target-type string
                                      :member-name "ProgramName")
                                     (scheduled-start-time :target-type
                                      timestamp-unix :member-name
                                      "ScheduledStartTime")
                                     (source-location-name :target-type string
                                      :member-name "SourceLocationName")
                                     (vod-source-name :target-type string
                                      :member-name "VodSourceName")
                                     (clip-range :target-type clip-range
                                      :member-name "ClipRange")
                                     (duration-millis :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "DurationMillis")
                                     (audience-media :target-type
                                      list-of-audience-media :member-name
                                      "AudienceMedia"))
                                    (:shape-name "DescribeProgramResponse"))

(smithy/sdk/shapes:define-structure describe-source-location-request
                                    common-lisp:nil
                                    ((source-location-name :target-type string
                                      :required common-lisp:t :member-name
                                      "SourceLocationName"))
                                    (:shape-name
                                     "DescribeSourceLocationRequest"))

(smithy/sdk/shapes:define-structure describe-source-location-response
                                    common-lisp:nil
                                    ((access-configuration :target-type
                                      access-configuration :member-name
                                      "AccessConfiguration")
                                     (arn :target-type string :member-name
                                      "Arn")
                                     (creation-time :target-type timestamp-unix
                                      :member-name "CreationTime")
                                     (default-segment-delivery-configuration
                                      :target-type
                                      default-segment-delivery-configuration
                                      :member-name
                                      "DefaultSegmentDeliveryConfiguration")
                                     (http-configuration :target-type
                                      http-configuration :member-name
                                      "HttpConfiguration")
                                     (last-modified-time :target-type
                                      timestamp-unix :member-name
                                      "LastModifiedTime")
                                     (segment-delivery-configurations
                                      :target-type
                                      list-of-segment-delivery-configuration
                                      :member-name
                                      "SegmentDeliveryConfigurations")
                                     (source-location-name :target-type string
                                      :member-name "SourceLocationName")
                                     (tags :target-type map-of-string
                                      :member-name "Tags" :json-name "tags"))
                                    (:shape-name
                                     "DescribeSourceLocationResponse"))

(smithy/sdk/shapes:define-structure describe-vod-source-request common-lisp:nil
                                    ((source-location-name :target-type string
                                      :required common-lisp:t :member-name
                                      "SourceLocationName")
                                     (vod-source-name :target-type string
                                      :required common-lisp:t :member-name
                                      "VodSourceName"))
                                    (:shape-name "DescribeVodSourceRequest"))

(smithy/sdk/shapes:define-structure describe-vod-source-response
                                    common-lisp:nil
                                    ((ad-break-opportunities :target-type
                                      ad-break-opportunities :member-name
                                      "AdBreakOpportunities")
                                     (arn :target-type string :member-name
                                      "Arn")
                                     (creation-time :target-type timestamp-unix
                                      :member-name "CreationTime")
                                     (http-package-configurations :target-type
                                      http-package-configurations :member-name
                                      "HttpPackageConfigurations")
                                     (last-modified-time :target-type
                                      timestamp-unix :member-name
                                      "LastModifiedTime")
                                     (source-location-name :target-type string
                                      :member-name "SourceLocationName")
                                     (tags :target-type map-of-string
                                      :member-name "Tags" :json-name "tags")
                                     (vod-source-name :target-type string
                                      :member-name "VodSourceName"))
                                    (:shape-name "DescribeVodSourceResponse"))

(smithy/sdk/shapes:define-enum fill-policy
    common-lisp:nil
  (:full-avail-only "FULL_AVAIL_ONLY")
  (:partial-avail "PARTIAL_AVAIL"))

(smithy/sdk/shapes:define-structure get-channel-policy-request common-lisp:nil
                                    ((channel-name :target-type string
                                      :required common-lisp:t :member-name
                                      "ChannelName"))
                                    (:shape-name "GetChannelPolicyRequest"))

(smithy/sdk/shapes:define-structure get-channel-policy-response common-lisp:nil
                                    ((policy :target-type string :member-name
                                      "Policy"))
                                    (:shape-name "GetChannelPolicyResponse"))

(smithy/sdk/shapes:define-structure get-channel-schedule-request
                                    common-lisp:nil
                                    ((channel-name :target-type string
                                      :required common-lisp:t :member-name
                                      "ChannelName")
                                     (duration-minutes :target-type string
                                      :member-name "DurationMinutes"
                                      :http-query "durationMinutes")
                                     (max-results :target-type max-results
                                      :member-name "MaxResults" :http-query
                                      "maxResults")
                                     (next-token :target-type string
                                      :member-name "NextToken" :http-query
                                      "nextToken")
                                     (audience :target-type string :member-name
                                      "Audience" :http-query "audience"))
                                    (:shape-name "GetChannelScheduleRequest"))

(smithy/sdk/shapes:define-structure get-channel-schedule-response
                                    common-lisp:nil
                                    ((items :target-type list-of-schedule-entry
                                      :member-name "Items")
                                     (next-token :target-type string
                                      :member-name "NextToken"))
                                    (:shape-name "GetChannelScheduleResponse"))

(smithy/sdk/shapes:define-structure get-playback-configuration-request
                                    common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "Name"))
                                    (:shape-name
                                     "GetPlaybackConfigurationRequest"))

(smithy/sdk/shapes:define-structure get-playback-configuration-response
                                    common-lisp:nil
                                    ((ad-decision-server-url :target-type
                                      string :member-name
                                      "AdDecisionServerUrl")
                                     (avail-suppression :target-type
                                      avail-suppression :member-name
                                      "AvailSuppression")
                                     (bumper :target-type bumper :member-name
                                      "Bumper")
                                     (cdn-configuration :target-type
                                      cdn-configuration :member-name
                                      "CdnConfiguration")
                                     (configuration-aliases :target-type
                                      configuration-aliases-response
                                      :member-name "ConfigurationAliases")
                                     (dash-configuration :target-type
                                      dash-configuration :member-name
                                      "DashConfiguration")
                                     (hls-configuration :target-type
                                      hls-configuration :member-name
                                      "HlsConfiguration")
                                     (insertion-mode :target-type
                                      insertion-mode :member-name
                                      "InsertionMode")
                                     (live-pre-roll-configuration :target-type
                                      live-pre-roll-configuration :member-name
                                      "LivePreRollConfiguration")
                                     (log-configuration :target-type
                                      log-configuration :member-name
                                      "LogConfiguration")
                                     (manifest-processing-rules :target-type
                                      manifest-processing-rules :member-name
                                      "ManifestProcessingRules")
                                     (name :target-type string :member-name
                                      "Name")
                                     (personalization-threshold-seconds
                                      :target-type integer-min1 :member-name
                                      "PersonalizationThresholdSeconds")
                                     (playback-configuration-arn :target-type
                                      string :member-name
                                      "PlaybackConfigurationArn")
                                     (playback-endpoint-prefix :target-type
                                      string :member-name
                                      "PlaybackEndpointPrefix")
                                     (session-initialization-endpoint-prefix
                                      :target-type string :member-name
                                      "SessionInitializationEndpointPrefix")
                                     (slate-ad-url :target-type string
                                      :member-name "SlateAdUrl")
                                     (tags :target-type map-of-string
                                      :member-name "Tags" :json-name "tags")
                                     (transcode-profile-name :target-type
                                      string :member-name
                                      "TranscodeProfileName")
                                     (video-content-source-url :target-type
                                      string :member-name
                                      "VideoContentSourceUrl")
                                     (ad-conditioning-configuration
                                      :target-type
                                      ad-conditioning-configuration
                                      :member-name
                                      "AdConditioningConfiguration"))
                                    (:shape-name
                                     "GetPlaybackConfigurationResponse"))

(smithy/sdk/shapes:define-structure get-prefetch-schedule-request
                                    common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (playback-configuration-name :target-type
                                      string :required common-lisp:t
                                      :member-name
                                      "PlaybackConfigurationName"))
                                    (:shape-name "GetPrefetchScheduleRequest"))

(smithy/sdk/shapes:define-structure get-prefetch-schedule-response
                                    common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn")
                                     (consumption :target-type
                                      prefetch-consumption :member-name
                                      "Consumption")
                                     (name :target-type string :member-name
                                      "Name")
                                     (playback-configuration-name :target-type
                                      string :member-name
                                      "PlaybackConfigurationName")
                                     (retrieval :target-type prefetch-retrieval
                                      :member-name "Retrieval")
                                     (schedule-type :target-type
                                      prefetch-schedule-type :member-name
                                      "ScheduleType")
                                     (recurring-prefetch-configuration
                                      :target-type
                                      recurring-prefetch-configuration
                                      :member-name
                                      "RecurringPrefetchConfiguration")
                                     (stream-id :target-type string
                                      :member-name "StreamId"))
                                    (:shape-name "GetPrefetchScheduleResponse"))

(smithy/sdk/shapes:define-structure hls-configuration common-lisp:nil
                                    ((manifest-endpoint-prefix :target-type
                                      string :member-name
                                      "ManifestEndpointPrefix"))
                                    (:shape-name "HlsConfiguration"))

(smithy/sdk/shapes:define-structure hls-playlist-settings common-lisp:nil
                                    ((manifest-window-seconds :target-type
                                      integer :member-name
                                      "ManifestWindowSeconds")
                                     (ad-markup-type :target-type
                                      ad-markup-types :member-name
                                      "AdMarkupType"))
                                    (:shape-name "HlsPlaylistSettings"))

(smithy/sdk/shapes:define-structure http-configuration common-lisp:nil
                                    ((base-url :target-type string :required
                                      common-lisp:t :member-name "BaseUrl"))
                                    (:shape-name "HttpConfiguration"))

(smithy/sdk/shapes:define-structure http-package-configuration common-lisp:nil
                                    ((path :target-type string :required
                                      common-lisp:t :member-name "Path")
                                     (source-group :target-type string
                                      :required common-lisp:t :member-name
                                      "SourceGroup")
                                     (type :target-type type :required
                                      common-lisp:t :member-name "Type"))
                                    (:shape-name "HttpPackageConfiguration"))

(smithy/sdk/shapes:define-list http-package-configurations :member
                               http-package-configuration)

(smithy/sdk/shapes:define-enum insertion-mode
    common-lisp:nil
  (:stitched-only "STITCHED_ONLY")
  (:player-select "PLAYER_SELECT"))

(smithy/sdk/shapes:define-structure key-value-pair common-lisp:nil
                                    ((key :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "KeyValuePair"))

(smithy/sdk/shapes:define-structure list-alerts-request common-lisp:nil
                                    ((max-results :target-type max-results
                                      :member-name "MaxResults" :http-query
                                      "maxResults")
                                     (next-token :target-type string
                                      :member-name "NextToken" :http-query
                                      "nextToken")
                                     (resource-arn :target-type string
                                      :required common-lisp:t :member-name
                                      "ResourceArn" :http-query "resourceArn"))
                                    (:shape-name "ListAlertsRequest"))

(smithy/sdk/shapes:define-structure list-alerts-response common-lisp:nil
                                    ((items :target-type list-of-alert
                                      :member-name "Items")
                                     (next-token :target-type string
                                      :member-name "NextToken"))
                                    (:shape-name "ListAlertsResponse"))

(smithy/sdk/shapes:define-structure list-channels-request common-lisp:nil
                                    ((max-results :target-type max-results
                                      :member-name "MaxResults" :http-query
                                      "maxResults")
                                     (next-token :target-type string
                                      :member-name "NextToken" :http-query
                                      "nextToken"))
                                    (:shape-name "ListChannelsRequest"))

(smithy/sdk/shapes:define-structure list-channels-response common-lisp:nil
                                    ((items :target-type list-of-channel
                                      :member-name "Items")
                                     (next-token :target-type string
                                      :member-name "NextToken"))
                                    (:shape-name "ListChannelsResponse"))

(smithy/sdk/shapes:define-structure list-live-sources-request common-lisp:nil
                                    ((max-results :target-type max-results
                                      :member-name "MaxResults" :http-query
                                      "maxResults")
                                     (next-token :target-type string
                                      :member-name "NextToken" :http-query
                                      "nextToken")
                                     (source-location-name :target-type string
                                      :required common-lisp:t :member-name
                                      "SourceLocationName"))
                                    (:shape-name "ListLiveSourcesRequest"))

(smithy/sdk/shapes:define-structure list-live-sources-response common-lisp:nil
                                    ((items :target-type list-of-live-source
                                      :member-name "Items")
                                     (next-token :target-type string
                                      :member-name "NextToken"))
                                    (:shape-name "ListLiveSourcesResponse"))

(smithy/sdk/shapes:define-structure list-playback-configurations-request
                                    common-lisp:nil
                                    ((max-results :target-type max-results
                                      :member-name "MaxResults" :http-query
                                      "MaxResults")
                                     (next-token :target-type string
                                      :member-name "NextToken" :http-query
                                      "NextToken"))
                                    (:shape-name
                                     "ListPlaybackConfigurationsRequest"))

(smithy/sdk/shapes:define-structure list-playback-configurations-response
                                    common-lisp:nil
                                    ((items :target-type
                                      list-of-playback-configuration
                                      :member-name "Items")
                                     (next-token :target-type string
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "ListPlaybackConfigurationsResponse"))

(smithy/sdk/shapes:define-enum list-prefetch-schedule-type
    common-lisp:nil
  (:single "SINGLE")
  (:recurring "RECURRING")
  (:all "ALL"))

(smithy/sdk/shapes:define-structure list-prefetch-schedules-request
                                    common-lisp:nil
                                    ((max-results :target-type
                                      integer-min1max100 :member-name
                                      "MaxResults")
                                     (next-token :target-type string
                                      :member-name "NextToken")
                                     (playback-configuration-name :target-type
                                      string :required common-lisp:t
                                      :member-name "PlaybackConfigurationName")
                                     (schedule-type :target-type
                                      list-prefetch-schedule-type :member-name
                                      "ScheduleType")
                                     (stream-id :target-type string
                                      :member-name "StreamId"))
                                    (:shape-name
                                     "ListPrefetchSchedulesRequest"))

(smithy/sdk/shapes:define-structure list-prefetch-schedules-response
                                    common-lisp:nil
                                    ((items :target-type
                                      list-of-prefetch-schedule :member-name
                                      "Items")
                                     (next-token :target-type string
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "ListPrefetchSchedulesResponse"))

(smithy/sdk/shapes:define-structure list-source-locations-request
                                    common-lisp:nil
                                    ((max-results :target-type max-results
                                      :member-name "MaxResults" :http-query
                                      "maxResults")
                                     (next-token :target-type string
                                      :member-name "NextToken" :http-query
                                      "nextToken"))
                                    (:shape-name "ListSourceLocationsRequest"))

(smithy/sdk/shapes:define-structure list-source-locations-response
                                    common-lisp:nil
                                    ((items :target-type
                                      list-of-source-location :member-name
                                      "Items")
                                     (next-token :target-type string
                                      :member-name "NextToken"))
                                    (:shape-name "ListSourceLocationsResponse"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-request
                                    common-lisp:nil
                                    ((resource-arn :target-type string
                                      :required common-lisp:t :member-name
                                      "ResourceArn"))
                                    (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((tags :target-type map-of-string
                                      :member-name "Tags" :json-name "tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-structure list-vod-sources-request common-lisp:nil
                                    ((max-results :target-type max-results
                                      :member-name "MaxResults" :http-query
                                      "maxResults")
                                     (next-token :target-type string
                                      :member-name "NextToken" :http-query
                                      "nextToken")
                                     (source-location-name :target-type string
                                      :required common-lisp:t :member-name
                                      "SourceLocationName"))
                                    (:shape-name "ListVodSourcesRequest"))

(smithy/sdk/shapes:define-structure list-vod-sources-response common-lisp:nil
                                    ((items :target-type list-of-vod-source
                                      :member-name "Items")
                                     (next-token :target-type string
                                      :member-name "NextToken"))
                                    (:shape-name "ListVodSourcesResponse"))

(smithy/sdk/shapes:define-structure live-pre-roll-configuration common-lisp:nil
                                    ((ad-decision-server-url :target-type
                                      string :member-name
                                      "AdDecisionServerUrl")
                                     (max-duration-seconds :target-type integer
                                      :member-name "MaxDurationSeconds"))
                                    (:shape-name "LivePreRollConfiguration"))

(smithy/sdk/shapes:define-structure live-source common-lisp:nil
                                    ((arn :target-type string :required
                                      common-lisp:t :member-name "Arn")
                                     (creation-time :target-type timestamp-unix
                                      :member-name "CreationTime")
                                     (http-package-configurations :target-type
                                      http-package-configurations :required
                                      common-lisp:t :member-name
                                      "HttpPackageConfigurations")
                                     (last-modified-time :target-type
                                      timestamp-unix :member-name
                                      "LastModifiedTime")
                                     (live-source-name :target-type string
                                      :required common-lisp:t :member-name
                                      "LiveSourceName")
                                     (source-location-name :target-type string
                                      :required common-lisp:t :member-name
                                      "SourceLocationName")
                                     (tags :target-type map-of-string
                                      :member-name "Tags" :json-name "tags"))
                                    (:shape-name "LiveSource"))

common-lisp:nil

(smithy/sdk/shapes:define-structure log-configuration common-lisp:nil
                                    ((percent-enabled :target-type integer
                                      :required common-lisp:t :member-name
                                      "PercentEnabled")
                                     (enabled-logging-strategies :target-type
                                      list-of-logging-strategies :required
                                      common-lisp:t :member-name
                                      "EnabledLoggingStrategies")
                                     (ads-interaction-log :target-type
                                      ads-interaction-log :member-name
                                      "AdsInteractionLog")
                                     (manifest-service-interaction-log
                                      :target-type
                                      manifest-service-interaction-log
                                      :member-name
                                      "ManifestServiceInteractionLog"))
                                    (:shape-name "LogConfiguration"))

(smithy/sdk/shapes:define-structure log-configuration-for-channel
                                    common-lisp:nil
                                    ((log-types :target-type log-types
                                      :member-name "LogTypes"))
                                    (:shape-name "LogConfigurationForChannel"))

(smithy/sdk/shapes:define-enum log-type
    common-lisp:nil
  (:as-run "AS_RUN"))

(smithy/sdk/shapes:define-list log-types :member log-type)

(smithy/sdk/shapes:define-enum logging-strategy
    common-lisp:nil
  (:vended-logs "VENDED_LOGS")
  (:legacy-cloudwatch "LEGACY_CLOUDWATCH"))

(smithy/sdk/shapes:define-structure manifest-processing-rules common-lisp:nil
                                    ((ad-marker-passthrough :target-type
                                      ad-marker-passthrough :member-name
                                      "AdMarkerPassthrough"))
                                    (:shape-name "ManifestProcessingRules"))

(smithy/sdk/shapes:define-enum manifest-service-exclude-event-type
    common-lisp:nil
  (:generated-manifest "GENERATED_MANIFEST")
  (:origin-manifest "ORIGIN_MANIFEST")
  (:session-initialized "SESSION_INITIALIZED")
  (:tracking-response "TRACKING_RESPONSE")
  (:config-syntax-error "CONFIG_SYNTAX_ERROR")
  (:config-security-error "CONFIG_SECURITY_ERROR")
  (:unknown-host "UNKNOWN_HOST")
  (:timeout-error "TIMEOUT_ERROR")
  (:connection-error "CONNECTION_ERROR")
  (:io-error "IO_ERROR")
  (:unknown-error "UNKNOWN_ERROR")
  (:host-disallowed "HOST_DISALLOWED")
  (:parsing-error "PARSING_ERROR")
  (:manifest-error "MANIFEST_ERROR")
  (:no-master-or-media-playlist "NO_MASTER_OR_MEDIA_PLAYLIST")
  (:no-master-playlist "NO_MASTER_PLAYLIST")
  (:no-media-playlist "NO_MEDIA_PLAYLIST")
  (:incompatible-hls-version "INCOMPATIBLE_HLS_VERSION")
  (:scte35-parsing-error "SCTE35_PARSING_ERROR")
  (:invalid-single-period-dash-manifest "INVALID_SINGLE_PERIOD_DASH_MANIFEST")
  (:unsupported-single-period-dash-manifest
   "UNSUPPORTED_SINGLE_PERIOD_DASH_MANIFEST")
  (:last-period-missing-audio "LAST_PERIOD_MISSING_AUDIO")
  (:last-period-missing-audio-warning "LAST_PERIOD_MISSING_AUDIO_WARNING")
  (:error-origin-prefix-interpolation "ERROR_ORIGIN_PREFIX_INTERPOLATION")
  (:error-ads-interpolation "ERROR_ADS_INTERPOLATION")
  (:error-live-pre-roll-ads-interpolation
   "ERROR_LIVE_PRE_ROLL_ADS_INTERPOLATION")
  (:error-cdn-ad-segment-interpolation "ERROR_CDN_AD_SEGMENT_INTERPOLATION")
  (:error-cdn-content-segment-interpolation
   "ERROR_CDN_CONTENT_SEGMENT_INTERPOLATION")
  (:error-slate-ad-url-interpolation "ERROR_SLATE_AD_URL_INTERPOLATION")
  (:error-profile-name-interpolation "ERROR_PROFILE_NAME_INTERPOLATION")
  (:error-bumper-start-interpolation "ERROR_BUMPER_START_INTERPOLATION")
  (:error-bumper-end-interpolation "ERROR_BUMPER_END_INTERPOLATION"))

(smithy/sdk/shapes:define-structure manifest-service-interaction-log
                                    common-lisp:nil
                                    ((exclude-event-types :target-type
                                      manifest-service-exclude-event-types-list
                                      :member-name "ExcludeEventTypes"))
                                    (:shape-name
                                     "ManifestServiceInteractionLog"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum message-type
    common-lisp:nil
  (:splice-insert "SPLICE_INSERT")
  (:time-signal "TIME_SIGNAL"))

(smithy/sdk/shapes:define-enum mode
    common-lisp:nil
  (:off "OFF")
  (:behind-live-edge "BEHIND_LIVE_EDGE")
  (:after-live-edge "AFTER_LIVE_EDGE"))

(smithy/sdk/shapes:define-enum operator
    common-lisp:nil
  (:equals "EQUALS"))

(smithy/sdk/shapes:define-enum origin-manifest-type
    common-lisp:nil
  (:single-period "SINGLE_PERIOD")
  (:multi-period "MULTI_PERIOD"))

(smithy/sdk/shapes:define-structure playback-configuration common-lisp:nil
                                    ((ad-decision-server-url :target-type
                                      string :member-name
                                      "AdDecisionServerUrl")
                                     (avail-suppression :target-type
                                      avail-suppression :member-name
                                      "AvailSuppression")
                                     (bumper :target-type bumper :member-name
                                      "Bumper")
                                     (cdn-configuration :target-type
                                      cdn-configuration :member-name
                                      "CdnConfiguration")
                                     (configuration-aliases :target-type
                                      configuration-aliases-response
                                      :member-name "ConfigurationAliases")
                                     (dash-configuration :target-type
                                      dash-configuration :member-name
                                      "DashConfiguration")
                                     (hls-configuration :target-type
                                      hls-configuration :member-name
                                      "HlsConfiguration")
                                     (insertion-mode :target-type
                                      insertion-mode :member-name
                                      "InsertionMode")
                                     (live-pre-roll-configuration :target-type
                                      live-pre-roll-configuration :member-name
                                      "LivePreRollConfiguration")
                                     (log-configuration :target-type
                                      log-configuration :member-name
                                      "LogConfiguration")
                                     (manifest-processing-rules :target-type
                                      manifest-processing-rules :member-name
                                      "ManifestProcessingRules")
                                     (name :target-type string :member-name
                                      "Name")
                                     (personalization-threshold-seconds
                                      :target-type integer-min1 :member-name
                                      "PersonalizationThresholdSeconds")
                                     (playback-configuration-arn :target-type
                                      string :member-name
                                      "PlaybackConfigurationArn")
                                     (playback-endpoint-prefix :target-type
                                      string :member-name
                                      "PlaybackEndpointPrefix")
                                     (session-initialization-endpoint-prefix
                                      :target-type string :member-name
                                      "SessionInitializationEndpointPrefix")
                                     (slate-ad-url :target-type string
                                      :member-name "SlateAdUrl")
                                     (tags :target-type map-of-string
                                      :member-name "Tags" :json-name "tags")
                                     (transcode-profile-name :target-type
                                      string :member-name
                                      "TranscodeProfileName")
                                     (video-content-source-url :target-type
                                      string :member-name
                                      "VideoContentSourceUrl")
                                     (ad-conditioning-configuration
                                      :target-type
                                      ad-conditioning-configuration
                                      :member-name
                                      "AdConditioningConfiguration"))
                                    (:shape-name "PlaybackConfiguration"))

common-lisp:nil

(smithy/sdk/shapes:define-enum playback-mode
    common-lisp:nil
  (:loop "LOOP")
  (:linear "LINEAR"))

(smithy/sdk/shapes:define-structure prefetch-consumption common-lisp:nil
                                    ((avail-matching-criteria :target-type
                                      list-of-avail-matching-criteria
                                      :member-name "AvailMatchingCriteria")
                                     (end-time :target-type timestamp-unix
                                      :required common-lisp:t :member-name
                                      "EndTime")
                                     (start-time :target-type timestamp-unix
                                      :member-name "StartTime"))
                                    (:shape-name "PrefetchConsumption"))

(smithy/sdk/shapes:define-structure prefetch-retrieval common-lisp:nil
                                    ((dynamic-variables :target-type
                                      map-of-string :member-name
                                      "DynamicVariables")
                                     (end-time :target-type timestamp-unix
                                      :required common-lisp:t :member-name
                                      "EndTime")
                                     (start-time :target-type timestamp-unix
                                      :member-name "StartTime")
                                     (traffic-shaping-type :target-type
                                      traffic-shaping-type :member-name
                                      "TrafficShapingType")
                                     (traffic-shaping-retrieval-window
                                      :target-type
                                      traffic-shaping-retrieval-window
                                      :member-name
                                      "TrafficShapingRetrievalWindow"))
                                    (:shape-name "PrefetchRetrieval"))

(smithy/sdk/shapes:define-structure prefetch-schedule common-lisp:nil
                                    ((arn :target-type string :required
                                      common-lisp:t :member-name "Arn")
                                     (consumption :target-type
                                      prefetch-consumption :member-name
                                      "Consumption")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (playback-configuration-name :target-type
                                      string :required common-lisp:t
                                      :member-name "PlaybackConfigurationName")
                                     (retrieval :target-type prefetch-retrieval
                                      :member-name "Retrieval")
                                     (schedule-type :target-type
                                      prefetch-schedule-type :member-name
                                      "ScheduleType")
                                     (recurring-prefetch-configuration
                                      :target-type
                                      recurring-prefetch-configuration
                                      :member-name
                                      "RecurringPrefetchConfiguration")
                                     (stream-id :target-type string
                                      :member-name "StreamId"))
                                    (:shape-name "PrefetchSchedule"))

common-lisp:nil

(smithy/sdk/shapes:define-enum prefetch-schedule-type
    common-lisp:nil
  (:single "SINGLE")
  (:recurring "RECURRING"))

common-lisp:nil

(smithy/sdk/shapes:define-structure put-channel-policy-request common-lisp:nil
                                    ((channel-name :target-type string
                                      :required common-lisp:t :member-name
                                      "ChannelName")
                                     (policy :target-type string :required
                                      common-lisp:t :member-name "Policy"))
                                    (:shape-name "PutChannelPolicyRequest"))

(smithy/sdk/shapes:define-structure put-channel-policy-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "PutChannelPolicyResponse"))

(smithy/sdk/shapes:define-structure put-playback-configuration-request
                                    common-lisp:nil
                                    ((ad-decision-server-url :target-type
                                      string :member-name
                                      "AdDecisionServerUrl")
                                     (avail-suppression :target-type
                                      avail-suppression :member-name
                                      "AvailSuppression")
                                     (bumper :target-type bumper :member-name
                                      "Bumper")
                                     (cdn-configuration :target-type
                                      cdn-configuration :member-name
                                      "CdnConfiguration")
                                     (configuration-aliases :target-type
                                      configuration-aliases-request
                                      :member-name "ConfigurationAliases")
                                     (dash-configuration :target-type
                                      dash-configuration-for-put :member-name
                                      "DashConfiguration")
                                     (insertion-mode :target-type
                                      insertion-mode :member-name
                                      "InsertionMode")
                                     (live-pre-roll-configuration :target-type
                                      live-pre-roll-configuration :member-name
                                      "LivePreRollConfiguration")
                                     (manifest-processing-rules :target-type
                                      manifest-processing-rules :member-name
                                      "ManifestProcessingRules")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (personalization-threshold-seconds
                                      :target-type integer-min1 :member-name
                                      "PersonalizationThresholdSeconds")
                                     (slate-ad-url :target-type string
                                      :member-name "SlateAdUrl")
                                     (tags :target-type map-of-string
                                      :member-name "Tags" :json-name "tags")
                                     (transcode-profile-name :target-type
                                      string :member-name
                                      "TranscodeProfileName")
                                     (video-content-source-url :target-type
                                      string :member-name
                                      "VideoContentSourceUrl")
                                     (ad-conditioning-configuration
                                      :target-type
                                      ad-conditioning-configuration
                                      :member-name
                                      "AdConditioningConfiguration"))
                                    (:shape-name
                                     "PutPlaybackConfigurationRequest"))

(smithy/sdk/shapes:define-structure put-playback-configuration-response
                                    common-lisp:nil
                                    ((ad-decision-server-url :target-type
                                      string :member-name
                                      "AdDecisionServerUrl")
                                     (avail-suppression :target-type
                                      avail-suppression :member-name
                                      "AvailSuppression")
                                     (bumper :target-type bumper :member-name
                                      "Bumper")
                                     (cdn-configuration :target-type
                                      cdn-configuration :member-name
                                      "CdnConfiguration")
                                     (configuration-aliases :target-type
                                      configuration-aliases-response
                                      :member-name "ConfigurationAliases")
                                     (dash-configuration :target-type
                                      dash-configuration :member-name
                                      "DashConfiguration")
                                     (hls-configuration :target-type
                                      hls-configuration :member-name
                                      "HlsConfiguration")
                                     (insertion-mode :target-type
                                      insertion-mode :member-name
                                      "InsertionMode")
                                     (live-pre-roll-configuration :target-type
                                      live-pre-roll-configuration :member-name
                                      "LivePreRollConfiguration")
                                     (log-configuration :target-type
                                      log-configuration :member-name
                                      "LogConfiguration")
                                     (manifest-processing-rules :target-type
                                      manifest-processing-rules :member-name
                                      "ManifestProcessingRules")
                                     (name :target-type string :member-name
                                      "Name")
                                     (personalization-threshold-seconds
                                      :target-type integer-min1 :member-name
                                      "PersonalizationThresholdSeconds")
                                     (playback-configuration-arn :target-type
                                      string :member-name
                                      "PlaybackConfigurationArn")
                                     (playback-endpoint-prefix :target-type
                                      string :member-name
                                      "PlaybackEndpointPrefix")
                                     (session-initialization-endpoint-prefix
                                      :target-type string :member-name
                                      "SessionInitializationEndpointPrefix")
                                     (slate-ad-url :target-type string
                                      :member-name "SlateAdUrl")
                                     (tags :target-type map-of-string
                                      :member-name "Tags" :json-name "tags")
                                     (transcode-profile-name :target-type
                                      string :member-name
                                      "TranscodeProfileName")
                                     (video-content-source-url :target-type
                                      string :member-name
                                      "VideoContentSourceUrl")
                                     (ad-conditioning-configuration
                                      :target-type
                                      ad-conditioning-configuration
                                      :member-name
                                      "AdConditioningConfiguration"))
                                    (:shape-name
                                     "PutPlaybackConfigurationResponse"))

(smithy/sdk/shapes:define-structure recurring-consumption common-lisp:nil
                                    ((retrieved-ad-expiration-seconds
                                      :target-type integer :member-name
                                      "RetrievedAdExpirationSeconds")
                                     (avail-matching-criteria :target-type
                                      list-of-avail-matching-criteria
                                      :member-name "AvailMatchingCriteria"))
                                    (:shape-name "RecurringConsumption"))

(smithy/sdk/shapes:define-structure recurring-prefetch-configuration
                                    common-lisp:nil
                                    ((start-time :target-type timestamp-unix
                                      :member-name "StartTime")
                                     (end-time :target-type timestamp-unix
                                      :required common-lisp:t :member-name
                                      "EndTime")
                                     (recurring-consumption :target-type
                                      recurring-consumption :required
                                      common-lisp:t :member-name
                                      "RecurringConsumption")
                                     (recurring-retrieval :target-type
                                      recurring-retrieval :required
                                      common-lisp:t :member-name
                                      "RecurringRetrieval"))
                                    (:shape-name
                                     "RecurringPrefetchConfiguration"))

(smithy/sdk/shapes:define-structure recurring-retrieval common-lisp:nil
                                    ((dynamic-variables :target-type
                                      map-of-string :member-name
                                      "DynamicVariables")
                                     (delay-after-avail-end-seconds
                                      :target-type integer :member-name
                                      "DelayAfterAvailEndSeconds")
                                     (traffic-shaping-type :target-type
                                      traffic-shaping-type :member-name
                                      "TrafficShapingType")
                                     (traffic-shaping-retrieval-window
                                      :target-type
                                      traffic-shaping-retrieval-window
                                      :member-name
                                      "TrafficShapingRetrievalWindow"))
                                    (:shape-name "RecurringRetrieval"))

(smithy/sdk/shapes:define-enum relative-position
    common-lisp:nil
  (:before-program "BEFORE_PROGRAM")
  (:after-program "AFTER_PROGRAM"))

(smithy/sdk/shapes:define-structure request-output-item common-lisp:nil
                                    ((dash-playlist-settings :target-type
                                      dash-playlist-settings :member-name
                                      "DashPlaylistSettings")
                                     (hls-playlist-settings :target-type
                                      hls-playlist-settings :member-name
                                      "HlsPlaylistSettings")
                                     (manifest-name :target-type string
                                      :required common-lisp:t :member-name
                                      "ManifestName")
                                     (source-group :target-type string
                                      :required common-lisp:t :member-name
                                      "SourceGroup"))
                                    (:shape-name "RequestOutputItem"))

(smithy/sdk/shapes:define-list request-outputs :member request-output-item)

(smithy/sdk/shapes:define-structure response-output-item common-lisp:nil
                                    ((dash-playlist-settings :target-type
                                      dash-playlist-settings :member-name
                                      "DashPlaylistSettings")
                                     (hls-playlist-settings :target-type
                                      hls-playlist-settings :member-name
                                      "HlsPlaylistSettings")
                                     (manifest-name :target-type string
                                      :required common-lisp:t :member-name
                                      "ManifestName")
                                     (playback-url :target-type string
                                      :required common-lisp:t :member-name
                                      "PlaybackUrl")
                                     (source-group :target-type string
                                      :required common-lisp:t :member-name
                                      "SourceGroup"))
                                    (:shape-name "ResponseOutputItem"))

(smithy/sdk/shapes:define-list response-outputs :member response-output-item)

(smithy/sdk/shapes:define-structure schedule-ad-break common-lisp:nil
                                    ((approximate-duration-seconds :target-type
                                      long :member-name
                                      "ApproximateDurationSeconds")
                                     (approximate-start-time :target-type
                                      timestamp-unix :member-name
                                      "ApproximateStartTime")
                                     (source-location-name :target-type string
                                      :member-name "SourceLocationName")
                                     (vod-source-name :target-type string
                                      :member-name "VodSourceName"))
                                    (:shape-name "ScheduleAdBreak"))

(smithy/sdk/shapes:define-structure schedule-configuration common-lisp:nil
                                    ((transition :target-type transition
                                      :required common-lisp:t :member-name
                                      "Transition")
                                     (clip-range :target-type clip-range
                                      :member-name "ClipRange"))
                                    (:shape-name "ScheduleConfiguration"))

(smithy/sdk/shapes:define-structure schedule-entry common-lisp:nil
                                    ((approximate-duration-seconds :target-type
                                      long :member-name
                                      "ApproximateDurationSeconds")
                                     (approximate-start-time :target-type
                                      timestamp-unix :member-name
                                      "ApproximateStartTime")
                                     (arn :target-type string :required
                                      common-lisp:t :member-name "Arn")
                                     (channel-name :target-type string
                                      :required common-lisp:t :member-name
                                      "ChannelName")
                                     (live-source-name :target-type string
                                      :member-name "LiveSourceName")
                                     (program-name :target-type string
                                      :required common-lisp:t :member-name
                                      "ProgramName")
                                     (schedule-ad-breaks :target-type
                                      list-of-schedule-ad-break :member-name
                                      "ScheduleAdBreaks")
                                     (schedule-entry-type :target-type
                                      schedule-entry-type :member-name
                                      "ScheduleEntryType")
                                     (source-location-name :target-type string
                                      :required common-lisp:t :member-name
                                      "SourceLocationName")
                                     (vod-source-name :target-type string
                                      :member-name "VodSourceName")
                                     (audiences :target-type audiences
                                      :member-name "Audiences"))
                                    (:shape-name "ScheduleEntry"))

(smithy/sdk/shapes:define-enum schedule-entry-type
    common-lisp:nil
  (:program "PROGRAM")
  (:filler-slate "FILLER_SLATE")
  (:alternate-media "ALTERNATE_MEDIA"))

(smithy/sdk/shapes:define-structure secrets-manager-access-token-configuration
                                    common-lisp:nil
                                    ((header-name :target-type string
                                      :member-name "HeaderName")
                                     (secret-arn :target-type string
                                      :member-name "SecretArn")
                                     (secret-string-key :target-type string
                                      :member-name "SecretStringKey"))
                                    (:shape-name
                                     "SecretsManagerAccessTokenConfiguration"))

(smithy/sdk/shapes:define-structure segment-delivery-configuration
                                    common-lisp:nil
                                    ((base-url :target-type string :member-name
                                      "BaseUrl")
                                     (name :target-type string :member-name
                                      "Name"))
                                    (:shape-name
                                     "SegmentDeliveryConfiguration"))

(smithy/sdk/shapes:define-structure segmentation-descriptor common-lisp:nil
                                    ((segmentation-event-id :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "SegmentationEventId")
                                     (segmentation-upid-type :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "SegmentationUpidType")
                                     (segmentation-upid :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "SegmentationUpid")
                                     (segmentation-type-id :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "SegmentationTypeId")
                                     (segment-num :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "SegmentNum")
                                     (segments-expected :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "SegmentsExpected")
                                     (sub-segment-num :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "SubSegmentNum")
                                     (sub-segments-expected :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "SubSegmentsExpected"))
                                    (:shape-name "SegmentationDescriptor"))

(smithy/sdk/shapes:define-list segmentation-descriptor-list :member
                               segmentation-descriptor)

(smithy/sdk/shapes:define-structure slate-source common-lisp:nil
                                    ((source-location-name :target-type string
                                      :member-name "SourceLocationName")
                                     (vod-source-name :target-type string
                                      :member-name "VodSourceName"))
                                    (:shape-name "SlateSource"))

(smithy/sdk/shapes:define-structure source-location common-lisp:nil
                                    ((access-configuration :target-type
                                      access-configuration :member-name
                                      "AccessConfiguration")
                                     (arn :target-type string :required
                                      common-lisp:t :member-name "Arn")
                                     (creation-time :target-type timestamp-unix
                                      :member-name "CreationTime")
                                     (default-segment-delivery-configuration
                                      :target-type
                                      default-segment-delivery-configuration
                                      :member-name
                                      "DefaultSegmentDeliveryConfiguration")
                                     (http-configuration :target-type
                                      http-configuration :required
                                      common-lisp:t :member-name
                                      "HttpConfiguration")
                                     (last-modified-time :target-type
                                      timestamp-unix :member-name
                                      "LastModifiedTime")
                                     (segment-delivery-configurations
                                      :target-type
                                      list-of-segment-delivery-configuration
                                      :member-name
                                      "SegmentDeliveryConfigurations")
                                     (source-location-name :target-type string
                                      :required common-lisp:t :member-name
                                      "SourceLocationName")
                                     (tags :target-type map-of-string
                                      :member-name "Tags" :json-name "tags"))
                                    (:shape-name "SourceLocation"))

common-lisp:nil

(smithy/sdk/shapes:define-structure splice-insert-message common-lisp:nil
                                    ((avail-num :target-type integer
                                      :member-name "AvailNum")
                                     (avails-expected :target-type integer
                                      :member-name "AvailsExpected")
                                     (splice-event-id :target-type integer
                                      :member-name "SpliceEventId")
                                     (unique-program-id :target-type integer
                                      :member-name "UniqueProgramId"))
                                    (:shape-name "SpliceInsertMessage"))

(smithy/sdk/shapes:define-structure start-channel-request common-lisp:nil
                                    ((channel-name :target-type string
                                      :required common-lisp:t :member-name
                                      "ChannelName"))
                                    (:shape-name "StartChannelRequest"))

(smithy/sdk/shapes:define-structure start-channel-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "StartChannelResponse"))

(smithy/sdk/shapes:define-structure stop-channel-request common-lisp:nil
                                    ((channel-name :target-type string
                                      :required common-lisp:t :member-name
                                      "ChannelName"))
                                    (:shape-name "StopChannelRequest"))

(smithy/sdk/shapes:define-structure stop-channel-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "StopChannelResponse"))

(smithy/sdk/shapes:define-enum streaming-media-file-conditioning
    common-lisp:nil
  (:transcode "TRANSCODE")
  (:none "NONE"))

(smithy/sdk/shapes:define-structure tag-resource-request common-lisp:nil
                                    ((resource-arn :target-type string
                                      :required common-lisp:t :member-name
                                      "ResourceArn")
                                     (tags :target-type map-of-string :required
                                      common-lisp:t :member-name "Tags"
                                      :json-name "tags"))
                                    (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-enum tier
    common-lisp:nil
  (:basic "BASIC")
  (:standard "STANDARD"))

(smithy/sdk/shapes:define-structure time-shift-configuration common-lisp:nil
                                    ((max-time-delay-seconds :target-type
                                      integer :required common-lisp:t
                                      :member-name "MaxTimeDelaySeconds"))
                                    (:shape-name "TimeShiftConfiguration"))

(smithy/sdk/shapes:define-structure time-signal-message common-lisp:nil
                                    ((segmentation-descriptors :target-type
                                      segmentation-descriptor-list :member-name
                                      "SegmentationDescriptors"))
                                    (:shape-name "TimeSignalMessage"))

(smithy/sdk/shapes:define-structure traffic-shaping-retrieval-window
                                    common-lisp:nil
                                    ((retrieval-window-duration-seconds
                                      :target-type integer :member-name
                                      "RetrievalWindowDurationSeconds"))
                                    (:shape-name
                                     "TrafficShapingRetrievalWindow"))

(smithy/sdk/shapes:define-enum traffic-shaping-type
    common-lisp:nil
  (:retrieval-window "RETRIEVAL_WINDOW"))

(smithy/sdk/shapes:define-structure transition common-lisp:nil
                                    ((duration-millis :target-type long
                                      :member-name "DurationMillis")
                                     (relative-position :target-type
                                      relative-position :required common-lisp:t
                                      :member-name "RelativePosition")
                                     (relative-program :target-type string
                                      :member-name "RelativeProgram")
                                     (scheduled-start-time-millis :target-type
                                      long :member-name
                                      "ScheduledStartTimeMillis")
                                     (type :target-type string :required
                                      common-lisp:t :member-name "Type"))
                                    (:shape-name "Transition"))

(smithy/sdk/shapes:define-enum type
    common-lisp:nil
  (:dash "DASH")
  (:hls "HLS"))

(smithy/sdk/shapes:define-structure untag-resource-request common-lisp:nil
                                    ((resource-arn :target-type string
                                      :required common-lisp:t :member-name
                                      "ResourceArn")
                                     (tag-keys :target-type list-of-string
                                      :required common-lisp:t :member-name
                                      "TagKeys" :http-query "tagKeys"))
                                    (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-structure update-channel-request common-lisp:nil
                                    ((channel-name :target-type string
                                      :required common-lisp:t :member-name
                                      "ChannelName")
                                     (filler-slate :target-type slate-source
                                      :member-name "FillerSlate")
                                     (outputs :target-type request-outputs
                                      :required common-lisp:t :member-name
                                      "Outputs")
                                     (time-shift-configuration :target-type
                                      time-shift-configuration :member-name
                                      "TimeShiftConfiguration")
                                     (audiences :target-type audiences
                                      :member-name "Audiences"))
                                    (:shape-name "UpdateChannelRequest"))

(smithy/sdk/shapes:define-structure update-channel-response common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn")
                                     (channel-name :target-type string
                                      :member-name "ChannelName")
                                     (channel-state :target-type channel-state
                                      :member-name "ChannelState")
                                     (creation-time :target-type timestamp-unix
                                      :member-name "CreationTime")
                                     (filler-slate :target-type slate-source
                                      :member-name "FillerSlate")
                                     (last-modified-time :target-type
                                      timestamp-unix :member-name
                                      "LastModifiedTime")
                                     (outputs :target-type response-outputs
                                      :member-name "Outputs")
                                     (playback-mode :target-type string
                                      :member-name "PlaybackMode")
                                     (tags :target-type map-of-string
                                      :member-name "Tags" :json-name "tags")
                                     (tier :target-type string :member-name
                                      "Tier")
                                     (time-shift-configuration :target-type
                                      time-shift-configuration :member-name
                                      "TimeShiftConfiguration")
                                     (audiences :target-type audiences
                                      :member-name "Audiences"))
                                    (:shape-name "UpdateChannelResponse"))

(smithy/sdk/shapes:define-structure update-live-source-request common-lisp:nil
                                    ((http-package-configurations :target-type
                                      http-package-configurations :required
                                      common-lisp:t :member-name
                                      "HttpPackageConfigurations")
                                     (live-source-name :target-type string
                                      :required common-lisp:t :member-name
                                      "LiveSourceName")
                                     (source-location-name :target-type string
                                      :required common-lisp:t :member-name
                                      "SourceLocationName"))
                                    (:shape-name "UpdateLiveSourceRequest"))

(smithy/sdk/shapes:define-structure update-live-source-response common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn")
                                     (creation-time :target-type timestamp-unix
                                      :member-name "CreationTime")
                                     (http-package-configurations :target-type
                                      http-package-configurations :member-name
                                      "HttpPackageConfigurations")
                                     (last-modified-time :target-type
                                      timestamp-unix :member-name
                                      "LastModifiedTime")
                                     (live-source-name :target-type string
                                      :member-name "LiveSourceName")
                                     (source-location-name :target-type string
                                      :member-name "SourceLocationName")
                                     (tags :target-type map-of-string
                                      :member-name "Tags" :json-name "tags"))
                                    (:shape-name "UpdateLiveSourceResponse"))

(smithy/sdk/shapes:define-structure update-program-request common-lisp:nil
                                    ((ad-breaks :target-type list-of-ad-break
                                      :member-name "AdBreaks")
                                     (channel-name :target-type string
                                      :required common-lisp:t :member-name
                                      "ChannelName")
                                     (program-name :target-type string
                                      :required common-lisp:t :member-name
                                      "ProgramName")
                                     (schedule-configuration :target-type
                                      update-program-schedule-configuration
                                      :required common-lisp:t :member-name
                                      "ScheduleConfiguration")
                                     (audience-media :target-type
                                      list-of-audience-media :member-name
                                      "AudienceMedia"))
                                    (:shape-name "UpdateProgramRequest"))

(smithy/sdk/shapes:define-structure update-program-response common-lisp:nil
                                    ((ad-breaks :target-type list-of-ad-break
                                      :member-name "AdBreaks")
                                     (arn :target-type string :member-name
                                      "Arn")
                                     (channel-name :target-type string
                                      :member-name "ChannelName")
                                     (creation-time :target-type timestamp-unix
                                      :member-name "CreationTime")
                                     (program-name :target-type string
                                      :member-name "ProgramName")
                                     (source-location-name :target-type string
                                      :member-name "SourceLocationName")
                                     (vod-source-name :target-type string
                                      :member-name "VodSourceName")
                                     (live-source-name :target-type string
                                      :member-name "LiveSourceName")
                                     (clip-range :target-type clip-range
                                      :member-name "ClipRange")
                                     (duration-millis :target-type long
                                      :member-name "DurationMillis")
                                     (scheduled-start-time :target-type
                                      timestamp-unix :member-name
                                      "ScheduledStartTime")
                                     (audience-media :target-type
                                      list-of-audience-media :member-name
                                      "AudienceMedia"))
                                    (:shape-name "UpdateProgramResponse"))

(smithy/sdk/shapes:define-structure update-program-schedule-configuration
                                    common-lisp:nil
                                    ((transition :target-type
                                      update-program-transition :member-name
                                      "Transition")
                                     (clip-range :target-type clip-range
                                      :member-name "ClipRange"))
                                    (:shape-name
                                     "UpdateProgramScheduleConfiguration"))

(smithy/sdk/shapes:define-structure update-program-transition common-lisp:nil
                                    ((scheduled-start-time-millis :target-type
                                      long :member-name
                                      "ScheduledStartTimeMillis")
                                     (duration-millis :target-type long
                                      :member-name "DurationMillis"))
                                    (:shape-name "UpdateProgramTransition"))

(smithy/sdk/shapes:define-structure update-source-location-request
                                    common-lisp:nil
                                    ((access-configuration :target-type
                                      access-configuration :member-name
                                      "AccessConfiguration")
                                     (default-segment-delivery-configuration
                                      :target-type
                                      default-segment-delivery-configuration
                                      :member-name
                                      "DefaultSegmentDeliveryConfiguration")
                                     (http-configuration :target-type
                                      http-configuration :required
                                      common-lisp:t :member-name
                                      "HttpConfiguration")
                                     (segment-delivery-configurations
                                      :target-type
                                      list-of-segment-delivery-configuration
                                      :member-name
                                      "SegmentDeliveryConfigurations")
                                     (source-location-name :target-type string
                                      :required common-lisp:t :member-name
                                      "SourceLocationName"))
                                    (:shape-name "UpdateSourceLocationRequest"))

(smithy/sdk/shapes:define-structure update-source-location-response
                                    common-lisp:nil
                                    ((access-configuration :target-type
                                      access-configuration :member-name
                                      "AccessConfiguration")
                                     (arn :target-type string :member-name
                                      "Arn")
                                     (creation-time :target-type timestamp-unix
                                      :member-name "CreationTime")
                                     (default-segment-delivery-configuration
                                      :target-type
                                      default-segment-delivery-configuration
                                      :member-name
                                      "DefaultSegmentDeliveryConfiguration")
                                     (http-configuration :target-type
                                      http-configuration :member-name
                                      "HttpConfiguration")
                                     (last-modified-time :target-type
                                      timestamp-unix :member-name
                                      "LastModifiedTime")
                                     (segment-delivery-configurations
                                      :target-type
                                      list-of-segment-delivery-configuration
                                      :member-name
                                      "SegmentDeliveryConfigurations")
                                     (source-location-name :target-type string
                                      :member-name "SourceLocationName")
                                     (tags :target-type map-of-string
                                      :member-name "Tags" :json-name "tags"))
                                    (:shape-name
                                     "UpdateSourceLocationResponse"))

(smithy/sdk/shapes:define-structure update-vod-source-request common-lisp:nil
                                    ((http-package-configurations :target-type
                                      http-package-configurations :required
                                      common-lisp:t :member-name
                                      "HttpPackageConfigurations")
                                     (source-location-name :target-type string
                                      :required common-lisp:t :member-name
                                      "SourceLocationName")
                                     (vod-source-name :target-type string
                                      :required common-lisp:t :member-name
                                      "VodSourceName"))
                                    (:shape-name "UpdateVodSourceRequest"))

(smithy/sdk/shapes:define-structure update-vod-source-response common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn")
                                     (creation-time :target-type timestamp-unix
                                      :member-name "CreationTime")
                                     (http-package-configurations :target-type
                                      http-package-configurations :member-name
                                      "HttpPackageConfigurations")
                                     (last-modified-time :target-type
                                      timestamp-unix :member-name
                                      "LastModifiedTime")
                                     (source-location-name :target-type string
                                      :member-name "SourceLocationName")
                                     (tags :target-type map-of-string
                                      :member-name "Tags" :json-name "tags")
                                     (vod-source-name :target-type string
                                      :member-name "VodSourceName"))
                                    (:shape-name "UpdateVodSourceResponse"))

(smithy/sdk/shapes:define-structure vod-source common-lisp:nil
                                    ((arn :target-type string :required
                                      common-lisp:t :member-name "Arn")
                                     (creation-time :target-type timestamp-unix
                                      :member-name "CreationTime")
                                     (http-package-configurations :target-type
                                      http-package-configurations :required
                                      common-lisp:t :member-name
                                      "HttpPackageConfigurations")
                                     (last-modified-time :target-type
                                      timestamp-unix :member-name
                                      "LastModifiedTime")
                                     (source-location-name :target-type string
                                      :required common-lisp:t :member-name
                                      "SourceLocationName")
                                     (tags :target-type map-of-string
                                      :member-name "Tags" :json-name "tags")
                                     (vod-source-name :target-type string
                                      :required common-lisp:t :member-name
                                      "VodSourceName"))
                                    (:shape-name "VodSource"))

common-lisp:nil

(smithy/sdk/shapes:define-list ads-interaction-exclude-event-types-list :member
                               ads-interaction-exclude-event-type)

(smithy/sdk/shapes:define-list ads-interaction-publish-opt-in-event-types-list
                               :member
                               ads-interaction-publish-opt-in-event-type)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max100
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list list-of-ad-break :member ad-break)

(smithy/sdk/shapes:define-list list-of-alert :member alert)

(smithy/sdk/shapes:define-list list-of-alternate-media :member alternate-media)

(smithy/sdk/shapes:define-list list-of-audience-media :member audience-media)

(smithy/sdk/shapes:define-list list-of-avail-matching-criteria :member
                               avail-matching-criteria)

(smithy/sdk/shapes:define-list list-of-channel :member channel)

(smithy/sdk/shapes:define-list list-of-live-source :member live-source)

(smithy/sdk/shapes:define-list list-of-logging-strategies :member
                               logging-strategy)

(smithy/sdk/shapes:define-list list-of-playback-configuration :member
                               playback-configuration)

(smithy/sdk/shapes:define-list list-of-prefetch-schedule :member
                               prefetch-schedule)

(smithy/sdk/shapes:define-list list-of-schedule-ad-break :member
                               schedule-ad-break)

(smithy/sdk/shapes:define-list list-of-schedule-entry :member schedule-entry)

(smithy/sdk/shapes:define-list list-of-segment-delivery-configuration :member
                               segment-delivery-configuration)

(smithy/sdk/shapes:define-list list-of-source-location :member source-location)

(smithy/sdk/shapes:define-list list-of-vod-source :member vod-source)

(smithy/sdk/shapes:define-list list-of-string :member string)

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-list manifest-service-exclude-event-types-list
                               :member manifest-service-exclude-event-type)

(smithy/sdk/shapes:define-map map-of-string :key string :value string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp-unix smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-list ad-markup-types :member ad-markup-type)

(smithy/sdk/operation:define-operation configure-logs-for-channel :shape-name
                                       "ConfigureLogsForChannel" :input
                                       configure-logs-for-channel-request
                                       :output
                                       configure-logs-for-channel-response
                                       :errors common-lisp:nil :method "PUT"
                                       :uri "/configureLogs/channel" :code 200)

(smithy/sdk/operation:define-operation
 configure-logs-for-playback-configuration :shape-name
 "ConfigureLogsForPlaybackConfiguration" :input
 configure-logs-for-playback-configuration-request :output
 configure-logs-for-playback-configuration-response :errors common-lisp:nil
 :method "PUT" :uri "/configureLogs/playbackConfiguration" :code 200)

(smithy/sdk/operation:define-operation create-channel :shape-name
                                       "CreateChannel" :input
                                       create-channel-request :output
                                       create-channel-response :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/channel/{ChannelName}" :code 200)

(smithy/sdk/operation:define-operation create-live-source :shape-name
                                       "CreateLiveSource" :input
                                       create-live-source-request :output
                                       create-live-source-response :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/sourceLocation/{SourceLocationName}/liveSource/{LiveSourceName}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-prefetch-schedule :shape-name
                                       "CreatePrefetchSchedule" :input
                                       create-prefetch-schedule-request :output
                                       create-prefetch-schedule-response
                                       :errors common-lisp:nil :method "POST"
                                       :uri
                                       "/prefetchSchedule/{PlaybackConfigurationName}/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-program :shape-name
                                       "CreateProgram" :input
                                       create-program-request :output
                                       create-program-response :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/channel/{ChannelName}/program/{ProgramName}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-source-location :shape-name
                                       "CreateSourceLocation" :input
                                       create-source-location-request :output
                                       create-source-location-response :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/sourceLocation/{SourceLocationName}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-vod-source :shape-name
                                       "CreateVodSource" :input
                                       create-vod-source-request :output
                                       create-vod-source-response :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/sourceLocation/{SourceLocationName}/vodSource/{VodSourceName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-channel :shape-name
                                       "DeleteChannel" :input
                                       delete-channel-request :output
                                       delete-channel-response :errors
                                       common-lisp:nil :method "DELETE" :uri
                                       "/channel/{ChannelName}" :code 200)

(smithy/sdk/operation:define-operation delete-channel-policy :shape-name
                                       "DeleteChannelPolicy" :input
                                       delete-channel-policy-request :output
                                       delete-channel-policy-response :errors
                                       common-lisp:nil :method "DELETE" :uri
                                       "/channel/{ChannelName}/policy" :code
                                       200)

(smithy/sdk/operation:define-operation delete-live-source :shape-name
                                       "DeleteLiveSource" :input
                                       delete-live-source-request :output
                                       delete-live-source-response :errors
                                       common-lisp:nil :method "DELETE" :uri
                                       "/sourceLocation/{SourceLocationName}/liveSource/{LiveSourceName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-playback-configuration
                                       :shape-name
                                       "DeletePlaybackConfiguration" :input
                                       delete-playback-configuration-request
                                       :output
                                       delete-playback-configuration-response
                                       :errors common-lisp:nil :method "DELETE"
                                       :uri "/playbackConfiguration/{Name}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-prefetch-schedule :shape-name
                                       "DeletePrefetchSchedule" :input
                                       delete-prefetch-schedule-request :output
                                       delete-prefetch-schedule-response
                                       :errors common-lisp:nil :method "DELETE"
                                       :uri
                                       "/prefetchSchedule/{PlaybackConfigurationName}/{Name}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-program :shape-name
                                       "DeleteProgram" :input
                                       delete-program-request :output
                                       delete-program-response :errors
                                       common-lisp:nil :method "DELETE" :uri
                                       "/channel/{ChannelName}/program/{ProgramName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-source-location :shape-name
                                       "DeleteSourceLocation" :input
                                       delete-source-location-request :output
                                       delete-source-location-response :errors
                                       common-lisp:nil :method "DELETE" :uri
                                       "/sourceLocation/{SourceLocationName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-vod-source :shape-name
                                       "DeleteVodSource" :input
                                       delete-vod-source-request :output
                                       delete-vod-source-response :errors
                                       common-lisp:nil :method "DELETE" :uri
                                       "/sourceLocation/{SourceLocationName}/vodSource/{VodSourceName}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-channel :shape-name
                                       "DescribeChannel" :input
                                       describe-channel-request :output
                                       describe-channel-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/channel/{ChannelName}" :code 200)

(smithy/sdk/operation:define-operation describe-live-source :shape-name
                                       "DescribeLiveSource" :input
                                       describe-live-source-request :output
                                       describe-live-source-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/sourceLocation/{SourceLocationName}/liveSource/{LiveSourceName}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-program :shape-name
                                       "DescribeProgram" :input
                                       describe-program-request :output
                                       describe-program-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/channel/{ChannelName}/program/{ProgramName}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-source-location :shape-name
                                       "DescribeSourceLocation" :input
                                       describe-source-location-request :output
                                       describe-source-location-response
                                       :errors common-lisp:nil :method "GET"
                                       :uri
                                       "/sourceLocation/{SourceLocationName}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-vod-source :shape-name
                                       "DescribeVodSource" :input
                                       describe-vod-source-request :output
                                       describe-vod-source-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/sourceLocation/{SourceLocationName}/vodSource/{VodSourceName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-channel-policy :shape-name
                                       "GetChannelPolicy" :input
                                       get-channel-policy-request :output
                                       get-channel-policy-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/channel/{ChannelName}/policy" :code
                                       200)

(smithy/sdk/operation:define-operation get-channel-schedule :shape-name
                                       "GetChannelSchedule" :input
                                       get-channel-schedule-request :output
                                       get-channel-schedule-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/channel/{ChannelName}/schedule" :code
                                       200)

(smithy/sdk/operation:define-operation get-playback-configuration :shape-name
                                       "GetPlaybackConfiguration" :input
                                       get-playback-configuration-request
                                       :output
                                       get-playback-configuration-response
                                       :errors common-lisp:nil :method "GET"
                                       :uri "/playbackConfiguration/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-prefetch-schedule :shape-name
                                       "GetPrefetchSchedule" :input
                                       get-prefetch-schedule-request :output
                                       get-prefetch-schedule-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/prefetchSchedule/{PlaybackConfigurationName}/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-alerts :shape-name "ListAlerts"
                                       :input list-alerts-request :output
                                       list-alerts-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/alerts" :code 200)

(smithy/sdk/operation:define-operation list-channels :shape-name "ListChannels"
                                       :input list-channels-request :output
                                       list-channels-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/channels" :code 200)

(smithy/sdk/operation:define-operation list-live-sources :shape-name
                                       "ListLiveSources" :input
                                       list-live-sources-request :output
                                       list-live-sources-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/sourceLocation/{SourceLocationName}/liveSources"
                                       :code 200)

(smithy/sdk/operation:define-operation list-playback-configurations :shape-name
                                       "ListPlaybackConfigurations" :input
                                       list-playback-configurations-request
                                       :output
                                       list-playback-configurations-response
                                       :errors common-lisp:nil :method "GET"
                                       :uri "/playbackConfigurations" :code 200)

(smithy/sdk/operation:define-operation list-prefetch-schedules :shape-name
                                       "ListPrefetchSchedules" :input
                                       list-prefetch-schedules-request :output
                                       list-prefetch-schedules-response :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/prefetchSchedule/{PlaybackConfigurationName}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-source-locations :shape-name
                                       "ListSourceLocations" :input
                                       list-source-locations-request :output
                                       list-source-locations-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/sourceLocations" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (bad-request-exception) :method "GET"
                                       :uri "/tags/{ResourceArn}" :code 200)

(smithy/sdk/operation:define-operation list-vod-sources :shape-name
                                       "ListVodSources" :input
                                       list-vod-sources-request :output
                                       list-vod-sources-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/sourceLocation/{SourceLocationName}/vodSources"
                                       :code 200)

(smithy/sdk/operation:define-operation put-channel-policy :shape-name
                                       "PutChannelPolicy" :input
                                       put-channel-policy-request :output
                                       put-channel-policy-response :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/channel/{ChannelName}/policy" :code
                                       200)

(smithy/sdk/operation:define-operation put-playback-configuration :shape-name
                                       "PutPlaybackConfiguration" :input
                                       put-playback-configuration-request
                                       :output
                                       put-playback-configuration-response
                                       :errors common-lisp:nil :method "PUT"
                                       :uri "/playbackConfiguration" :code 200)

(smithy/sdk/operation:define-operation start-channel :shape-name "StartChannel"
                                       :input start-channel-request :output
                                       start-channel-response :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/channel/{ChannelName}/start" :code 200)

(smithy/sdk/operation:define-operation stop-channel :shape-name "StopChannel"
                                       :input stop-channel-request :output
                                       stop-channel-response :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/channel/{ChannelName}/stop" :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception) :method "POST"
                                       :uri "/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception) :method "DELETE"
                                       :uri "/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation update-channel :shape-name
                                       "UpdateChannel" :input
                                       update-channel-request :output
                                       update-channel-response :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/channel/{ChannelName}" :code 200)

(smithy/sdk/operation:define-operation update-live-source :shape-name
                                       "UpdateLiveSource" :input
                                       update-live-source-request :output
                                       update-live-source-response :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/sourceLocation/{SourceLocationName}/liveSource/{LiveSourceName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-program :shape-name
                                       "UpdateProgram" :input
                                       update-program-request :output
                                       update-program-response :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/channel/{ChannelName}/program/{ProgramName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-source-location :shape-name
                                       "UpdateSourceLocation" :input
                                       update-source-location-request :output
                                       update-source-location-response :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/sourceLocation/{SourceLocationName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-vod-source :shape-name
                                       "UpdateVodSource" :input
                                       update-vod-source-request :output
                                       update-vod-source-response :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/sourceLocation/{SourceLocationName}/vodSource/{VodSourceName}"
                                       :code 200)
