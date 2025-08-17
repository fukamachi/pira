(uiop/package:define-package #:pira/medialive (:use)
                             (:export #:aac-coding-mode #:aac-input-type
                              #:aac-profile #:aac-rate-control-mode
                              #:aac-raw-format #:aac-settings #:aac-spec
                              #:aac-vbr-quality #:ac3attenuation-control
                              #:ac3bitstream-mode #:ac3coding-mode
                              #:ac3drc-profile #:ac3lfe-filter
                              #:ac3metadata-control #:ac3settings
                              #:accept-header #:accept-input-device-transfer
                              #:accessibility-type #:account-configuration
                              #:afd-signaling #:algorithm
                              #:ancillary-source-settings #:anywhere-settings
                              #:archive-cdn-settings
                              #:archive-container-settings
                              #:archive-group-settings
                              #:archive-output-settings #:archive-s3settings
                              #:arib-destination-settings
                              #:arib-source-settings #:audio-channel-mapping
                              #:audio-codec-settings #:audio-description
                              #:audio-description-audio-type-control
                              #:audio-description-language-code-control
                              #:audio-dolby-edecode
                              #:audio-hls-rendition-selection
                              #:audio-language-selection
                              #:audio-language-selection-policy
                              #:audio-normalization-algorithm
                              #:audio-normalization-algorithm-control
                              #:audio-normalization-settings
                              #:audio-only-hls-segment-type
                              #:audio-only-hls-settings
                              #:audio-only-hls-track-type #:audio-pid-selection
                              #:audio-selector #:audio-selector-settings
                              #:audio-silence-failover-settings #:audio-track
                              #:audio-track-selection #:audio-type
                              #:audio-watermark-settings
                              #:authentication-scheme
                              #:automatic-input-failover-settings
                              #:av1color-space-settings #:av1gop-size-units
                              #:av1level #:av1look-ahead-rate-control
                              #:av1rate-control-mode #:av1scene-change-detect
                              #:av1settings #:avail-blanking
                              #:avail-blanking-state #:avail-configuration
                              #:avail-settings
                              #:bandwidth-reduction-filter-settings
                              #:bandwidth-reduction-filter-strength
                              #:bandwidth-reduction-post-filter-sharpening
                              #:batch-delete #:batch-failed-result-model
                              #:batch-schedule-action-create-request
                              #:batch-schedule-action-create-result
                              #:batch-schedule-action-delete-request
                              #:batch-schedule-action-delete-result
                              #:batch-start #:batch-stop
                              #:batch-successful-result-model
                              #:batch-update-schedule #:blackout-slate
                              #:blackout-slate-network-end-blackout
                              #:blackout-slate-state #:burn-in-alignment
                              #:burn-in-background-color
                              #:burn-in-destination-settings
                              #:burn-in-font-color #:burn-in-outline-color
                              #:burn-in-shadow-color
                              #:burn-in-teletext-grid-control
                              #:cancel-input-device-transfer
                              #:caption-description
                              #:caption-destination-settings
                              #:caption-language-mapping #:caption-rectangle
                              #:caption-selector #:caption-selector-settings
                              #:cdi-input-resolution #:cdi-input-specification
                              #:channel #:channel-class
                              #:channel-egress-endpoint
                              #:channel-engine-version-request
                              #:channel-engine-version-response
                              #:channel-pipeline-id-to-restart
                              #:channel-placement-group-state #:channel-state
                              #:channel-summary #:claim-device
                              #:cloud-watch-alarm-template-comparison-operator
                              #:cloud-watch-alarm-template-group-summary
                              #:cloud-watch-alarm-template-statistic
                              #:cloud-watch-alarm-template-summary
                              #:cloud-watch-alarm-template-target-resource-type
                              #:cloud-watch-alarm-template-treat-missing-data
                              #:cluster-network-settings
                              #:cluster-network-settings-create-request
                              #:cluster-network-settings-update-request
                              #:cluster-state #:cluster-type #:cmaf-id3behavior
                              #:cmaf-ingest-caption-language-mapping
                              #:cmaf-ingest-group-settings
                              #:cmaf-ingest-output-settings
                              #:cmaf-ingest-segment-length-units
                              #:cmaf-klvbehavior #:cmaf-nielsen-id3behavior
                              #:cmaf-timed-metadata-id3frame
                              #:cmaf-timed-metadata-passthrough
                              #:color-correction #:color-correction-settings
                              #:color-space #:color-space-passthrough-settings
                              #:content-type #:create-channel
                              #:create-channel-placement-group
                              #:create-cloud-watch-alarm-template
                              #:create-cloud-watch-alarm-template-group
                              #:create-cluster
                              #:create-event-bridge-rule-template
                              #:create-event-bridge-rule-template-group
                              #:create-input #:create-input-security-group
                              #:create-multiplex #:create-multiplex-program
                              #:create-network #:create-node
                              #:create-node-registration-script
                              #:create-partner-input #:create-sdi-source
                              #:create-signal-map #:create-tags
                              #:dash-role-audio #:dash-role-caption
                              #:delete-channel #:delete-channel-placement-group
                              #:delete-cloud-watch-alarm-template
                              #:delete-cloud-watch-alarm-template-group
                              #:delete-cluster
                              #:delete-event-bridge-rule-template
                              #:delete-event-bridge-rule-template-group
                              #:delete-input #:delete-input-security-group
                              #:delete-multiplex #:delete-multiplex-program
                              #:delete-network #:delete-node
                              #:delete-reservation #:delete-schedule
                              #:delete-sdi-source #:delete-signal-map
                              #:delete-tags #:describe-account-configuration
                              #:describe-anywhere-settings #:describe-channel
                              #:describe-channel-placement-group
                              #:describe-channel-placement-group-summary
                              #:describe-cluster #:describe-cluster-summary
                              #:describe-input #:describe-input-device
                              #:describe-input-device-thumbnail
                              #:describe-input-security-group
                              #:describe-multiplex #:describe-multiplex-program
                              #:describe-network #:describe-network-summary
                              #:describe-node #:describe-node-summary
                              #:describe-offering #:describe-reservation
                              #:describe-schedule #:describe-sdi-source
                              #:describe-thumbnails
                              #:device-settings-sync-state
                              #:device-update-status #:dolby-eprogram-selection
                              #:dolby-vision81settings #:dvb-dash-accessibility
                              #:dvb-nit-settings #:dvb-sdt-output-sdt
                              #:dvb-sdt-settings
                              #:dvb-sub-destination-alignment
                              #:dvb-sub-destination-background-color
                              #:dvb-sub-destination-font-color
                              #:dvb-sub-destination-outline-color
                              #:dvb-sub-destination-settings
                              #:dvb-sub-destination-shadow-color
                              #:dvb-sub-destination-teletext-grid-control
                              #:dvb-sub-ocr-language #:dvb-sub-source-settings
                              #:dvb-tdt-settings #:eac3atmos-coding-mode
                              #:eac3atmos-drc-line #:eac3atmos-drc-rf
                              #:eac3atmos-settings #:eac3attenuation-control
                              #:eac3bitstream-mode #:eac3coding-mode
                              #:eac3dc-filter #:eac3drc-line #:eac3drc-rf
                              #:eac3lfe-control #:eac3lfe-filter
                              #:eac3metadata-control #:eac3passthrough-control
                              #:eac3phase-control #:eac3settings
                              #:eac3stereo-downmix #:eac3surround-ex-mode
                              #:eac3surround-mode
                              #:ebu-tt-ddestination-settings
                              #:ebu-tt-ddestination-style-control
                              #:ebu-tt-dfill-line-gap-control
                              #:embedded-convert608to708
                              #:embedded-destination-settings
                              #:embedded-plus-scte20destination-settings
                              #:embedded-scte20detection
                              #:embedded-source-settings #:encoder-settings
                              #:epoch-locking-settings #:esam
                              #:event-bridge-rule-template-event-type
                              #:event-bridge-rule-template-group-summary
                              #:event-bridge-rule-template-summary
                              #:event-bridge-rule-template-target
                              #:failed-media-resource-map #:failover-condition
                              #:failover-condition-settings
                              #:feature-activations
                              #:feature-activations-input-prepare-schedule-actions
                              #:feature-activations-output-static-image-overlay-schedule-actions
                              #:fec-output-include-fec #:fec-output-settings
                              #:fixed-afd
                              #:fixed-mode-schedule-action-start-settings
                              #:fmp4hls-settings #:fmp4nielsen-id3behavior
                              #:fmp4timed-metadata-behavior
                              #:follow-mode-schedule-action-start-settings
                              #:follow-point #:frame-capture-cdn-settings
                              #:frame-capture-group-settings
                              #:frame-capture-hls-settings
                              #:frame-capture-interval-unit
                              #:frame-capture-output-settings
                              #:frame-capture-s3settings
                              #:frame-capture-settings
                              #:get-cloud-watch-alarm-template
                              #:get-cloud-watch-alarm-template-group
                              #:get-event-bridge-rule-template
                              #:get-event-bridge-rule-template-group
                              #:get-signal-map #:global-configuration
                              #:global-configuration-input-end-action
                              #:global-configuration-low-framerate-inputs
                              #:global-configuration-output-locking-mode
                              #:global-configuration-output-timing-source
                              #:h264adaptive-quantization #:h264color-metadata
                              #:h264color-space-settings #:h264entropy-encoding
                              #:h264filter-settings #:h264flicker-aq
                              #:h264force-field-pictures
                              #:h264framerate-control #:h264gop-breference
                              #:h264gop-size-units #:h264level
                              #:h264look-ahead-rate-control #:h264par-control
                              #:h264profile #:h264quality-level
                              #:h264rate-control-mode #:h264scan-type
                              #:h264scene-change-detect #:h264settings
                              #:h264spatial-aq #:h264sub-gop-length
                              #:h264syntax #:h264temporal-aq
                              #:h264timecode-insertion-behavior
                              #:h265adaptive-quantization
                              #:h265alternative-transfer-function
                              #:h265color-metadata #:h265color-space-settings
                              #:h265deblocking #:h265filter-settings
                              #:h265flicker-aq #:h265gop-size-units #:h265level
                              #:h265look-ahead-rate-control
                              #:h265mv-over-picture-boundaries
                              #:h265mv-temporal-predictor #:h265profile
                              #:h265rate-control-mode #:h265scan-type
                              #:h265scene-change-detect #:h265settings
                              #:h265tier #:h265tile-padding
                              #:h265timecode-insertion-behavior
                              #:h265treeblock-size #:hdr10settings
                              #:hls-ad-markers #:hls-akamai-http-transfer-mode
                              #:hls-akamai-settings #:hls-basic-put-settings
                              #:hls-caption-language-setting #:hls-cdn-settings
                              #:hls-client-cache #:hls-codec-specification
                              #:hls-directory-structure
                              #:hls-discontinuity-tags #:hls-encryption-type
                              #:hls-group-settings #:hls-h265packaging-type
                              #:hls-id3segment-tagging-schedule-action-settings
                              #:hls-id3segment-tagging-state
                              #:hls-incomplete-segment-behavior
                              #:hls-input-settings #:hls-iv-in-manifest
                              #:hls-iv-source #:hls-manifest-compression
                              #:hls-manifest-duration-format
                              #:hls-media-store-settings
                              #:hls-media-store-storage-class #:hls-mode
                              #:hls-output-selection #:hls-output-settings
                              #:hls-program-date-time
                              #:hls-program-date-time-clock
                              #:hls-redundant-manifest #:hls-s3settings
                              #:hls-scte35source-type #:hls-segmentation-mode
                              #:hls-settings #:hls-stream-inf-resolution
                              #:hls-timed-metadata-id3frame
                              #:hls-timed-metadata-schedule-action-settings
                              #:hls-ts-file-mode
                              #:hls-webdav-http-transfer-mode
                              #:hls-webdav-settings
                              #:html-motion-graphics-settings
                              #:iframe-only-playlist-type
                              #:id3segment-tagging-schedule-action-settings
                              #:immediate-mode-schedule-action-start-settings
                              #:include-filler-nal-units #:input
                              #:input-attachment #:input-channel-level
                              #:input-class #:input-clipping-settings
                              #:input-codec #:input-deblock-filter
                              #:input-denoise-filter #:input-destination
                              #:input-destination-request
                              #:input-destination-route #:input-destination-vpc
                              #:input-device-active-input #:input-device-codec
                              #:input-device-configurable-audio-channel-pair-config
                              #:input-device-configurable-audio-channel-pair-profile
                              #:input-device-configurable-settings
                              #:input-device-configured-input
                              #:input-device-connection-state
                              #:input-device-hd-settings
                              #:input-device-ip-scheme
                              #:input-device-media-connect-configurable-settings
                              #:input-device-media-connect-settings
                              #:input-device-network-settings
                              #:input-device-output-type #:input-device-request
                              #:input-device-scan-type #:input-device-settings
                              #:input-device-state #:input-device-summary
                              #:input-device-thumbnail
                              #:input-device-transfer-type #:input-device-type
                              #:input-device-uhd-audio-channel-pair-config
                              #:input-device-uhd-audio-channel-pair-profile
                              #:input-device-uhd-settings #:input-filter
                              #:input-location #:input-loss-action-for-hls-out
                              #:input-loss-action-for-ms-smooth-out
                              #:input-loss-action-for-rtmp-out
                              #:input-loss-action-for-udp-out
                              #:input-loss-behavior
                              #:input-loss-failover-settings
                              #:input-loss-image-type #:input-maximum-bitrate
                              #:input-network-location #:input-preference
                              #:input-prepare-schedule-action-settings
                              #:input-request-destination-route
                              #:input-resolution #:input-sdi-sources
                              #:input-sdp-location #:input-security-group
                              #:input-security-group-state #:input-settings
                              #:input-source #:input-source-end-behavior
                              #:input-source-request #:input-source-type
                              #:input-specification #:input-state
                              #:input-switch-schedule-action-settings
                              #:input-timecode-source #:input-type
                              #:input-vpc-request #:input-whitelist-rule
                              #:input-whitelist-rule-cidr #:interface-mapping
                              #:interface-mapping-create-request
                              #:interface-mapping-update-request #:ip-pool
                              #:ip-pool-create-request #:ip-pool-update-request
                              #:key-provider-settings
                              #:last-frame-clipping-behavior
                              #:list-channel-placement-groups #:list-channels
                              #:list-cloud-watch-alarm-template-groups
                              #:list-cloud-watch-alarm-templates
                              #:list-clusters
                              #:list-event-bridge-rule-template-groups
                              #:list-event-bridge-rule-templates
                              #:list-input-device-transfers
                              #:list-input-devices #:list-input-security-groups
                              #:list-inputs #:list-multiplex-programs
                              #:list-multiplexes #:list-networks #:list-nodes
                              #:list-offerings #:list-reservations
                              #:list-sdi-sources #:list-signal-maps
                              #:list-tags-for-resource #:list-versions
                              #:log-level #:m2ts-absent-input-audio-behavior
                              #:m2ts-arib #:m2ts-arib-captions-pid-control
                              #:m2ts-audio-buffer-model #:m2ts-audio-interval
                              #:m2ts-audio-stream-type #:m2ts-buffer-model
                              #:m2ts-cc-descriptor #:m2ts-ebif-control
                              #:m2ts-ebp-placement #:m2ts-es-rate-in-pes
                              #:m2ts-klv #:m2ts-nielsen-id3behavior
                              #:m2ts-pcr-control #:m2ts-rate-mode
                              #:m2ts-scte35control #:m2ts-segmentation-markers
                              #:m2ts-segmentation-style #:m2ts-settings
                              #:m2ts-timed-metadata-behavior #:m3u8klv-behavior
                              #:m3u8nielsen-id3behavior #:m3u8pcr-control
                              #:m3u8scte35behavior #:m3u8settings
                              #:m3u8timed-metadata-behavior
                              #:maintenance-create-settings #:maintenance-day
                              #:maintenance-status
                              #:maintenance-update-settings #:max-results
                              #:media-connect-flow #:media-connect-flow-request
                              #:media-live #:media-package-group-settings
                              #:media-package-output-destination-settings
                              #:media-package-output-settings #:media-resource
                              #:media-resource-map #:media-resource-neighbor
                              #:monitor-deployment
                              #:motion-graphics-activate-schedule-action-settings
                              #:motion-graphics-configuration
                              #:motion-graphics-deactivate-schedule-action-settings
                              #:motion-graphics-insertion
                              #:motion-graphics-settings #:mp2coding-mode
                              #:mp2settings #:mpeg2adaptive-quantization
                              #:mpeg2color-metadata #:mpeg2color-space
                              #:mpeg2display-ratio #:mpeg2filter-settings
                              #:mpeg2gop-size-units #:mpeg2scan-type
                              #:mpeg2settings #:mpeg2sub-gop-length
                              #:mpeg2timecode-insertion-behavior
                              #:ms-smooth-group-settings
                              #:ms-smooth-h265packaging-type
                              #:ms-smooth-output-settings
                              #:multicast-input-settings #:multicast-settings
                              #:multicast-settings-create-request
                              #:multicast-settings-update-request
                              #:multicast-source
                              #:multicast-source-create-request
                              #:multicast-source-update-request #:multiplex
                              #:multiplex-container-settings
                              #:multiplex-group-settings
                              #:multiplex-m2ts-settings
                              #:multiplex-media-connect-output-destination-settings
                              #:multiplex-output-destination
                              #:multiplex-output-settings
                              #:multiplex-packet-identifiers-mapping
                              #:multiplex-program
                              #:multiplex-program-channel-destination-settings
                              #:multiplex-program-packet-identifiers-map
                              #:multiplex-program-pipeline-detail
                              #:multiplex-program-service-descriptor
                              #:multiplex-program-settings
                              #:multiplex-program-summary #:multiplex-settings
                              #:multiplex-settings-summary #:multiplex-state
                              #:multiplex-statmux-video-settings
                              #:multiplex-summary #:multiplex-video-settings
                              #:network-input-server-validation
                              #:network-input-settings #:network-interface-mode
                              #:network-state #:nielsen-cbet
                              #:nielsen-configuration #:nielsen-naes-ii-nw
                              #:nielsen-pcm-to-id3tagging-state
                              #:nielsen-watermark-timezones
                              #:nielsen-watermarks-cbet-stepaside
                              #:nielsen-watermarks-distribution-types
                              #:nielsen-watermarks-settings
                              #:node-connection-state #:node-interface-mapping
                              #:node-interface-mapping-create-request
                              #:node-role #:node-state #:offering
                              #:offering-duration-units #:offering-type
                              #:output #:output-destination
                              #:output-destination-settings #:output-group
                              #:output-group-settings #:output-location-ref
                              #:output-locking-settings #:output-settings
                              #:pass-through-settings
                              #:pause-state-schedule-action-settings
                              #:pipeline-detail #:pipeline-id
                              #:pipeline-locking-settings
                              #:pipeline-pause-state-settings
                              #:preferred-channel-pipeline #:purchase-offering
                              #:raw-settings #:reboot-input-device
                              #:reboot-input-device-force #:rec601settings
                              #:rec709settings #:reject-input-device-transfer
                              #:remix-settings #:renewal-settings #:reservation
                              #:reservation-automatic-renewal
                              #:reservation-codec #:reservation-maximum-bitrate
                              #:reservation-maximum-framerate
                              #:reservation-resolution
                              #:reservation-resource-specification
                              #:reservation-resource-type
                              #:reservation-special-feature #:reservation-state
                              #:reservation-video-quality
                              #:restart-channel-pipelines #:route
                              #:route-create-request #:route-update-request
                              #:rtmp-ad-markers #:rtmp-cache-full-behavior
                              #:rtmp-caption-data
                              #:rtmp-caption-info-destination-settings
                              #:rtmp-group-settings
                              #:rtmp-output-certificate-mode
                              #:rtmp-output-settings #:s3canned-acl
                              #:schedule-action #:schedule-action-settings
                              #:schedule-action-start-settings
                              #:scte20convert608to708
                              #:scte20plus-embedded-destination-settings
                              #:scte20source-settings
                              #:scte27destination-settings #:scte27ocr-language
                              #:scte27source-settings
                              #:scte35apos-no-regional-blackout-behavior
                              #:scte35apos-web-delivery-allowed-behavior
                              #:scte35archive-allowed-flag
                              #:scte35delivery-restrictions #:scte35descriptor
                              #:scte35descriptor-settings
                              #:scte35device-restrictions #:scte35input-mode
                              #:scte35input-schedule-action-settings
                              #:scte35no-regional-blackout-flag
                              #:scte35return-to-network-schedule-action-settings
                              #:scte35segmentation-cancel-indicator
                              #:scte35segmentation-descriptor
                              #:scte35segmentation-scope #:scte35splice-insert
                              #:scte35splice-insert-no-regional-blackout-behavior
                              #:scte35splice-insert-schedule-action-settings
                              #:scte35splice-insert-web-delivery-allowed-behavior
                              #:scte35time-signal-apos
                              #:scte35time-signal-schedule-action-settings
                              #:scte35type #:scte35web-delivery-allowed-flag
                              #:sdi-source #:sdi-source-mapping
                              #:sdi-source-mapping-update-request
                              #:sdi-source-mappings
                              #:sdi-source-mappings-update-request
                              #:sdi-source-mode #:sdi-source-state
                              #:sdi-source-summary #:sdi-source-type
                              #:signal-map-monitor-deployment-status
                              #:signal-map-status #:signal-map-summary
                              #:smooth-group-audio-only-timecode-control
                              #:smooth-group-certificate-mode
                              #:smooth-group-event-id-mode
                              #:smooth-group-event-stop-behavior
                              #:smooth-group-segmentation-mode
                              #:smooth-group-sparse-track-type
                              #:smooth-group-stream-manifest-behavior
                              #:smooth-group-timestamp-offset-mode
                              #:smpte2038data-preference
                              #:smpte2110receiver-group
                              #:smpte2110receiver-group-sdp-settings
                              #:smpte2110receiver-group-settings
                              #:smpte-tt-destination-settings
                              #:srt-caller-decryption
                              #:srt-caller-decryption-request
                              #:srt-caller-source #:srt-caller-source-request
                              #:srt-encryption-type #:srt-group-settings
                              #:srt-output-destination-settings
                              #:srt-output-settings #:srt-settings
                              #:srt-settings-request #:standard-hls-settings
                              #:start-channel #:start-delete-monitor-deployment
                              #:start-input-device
                              #:start-input-device-maintenance-window
                              #:start-monitor-deployment #:start-multiplex
                              #:start-timecode #:start-update-signal-map
                              #:static-image-activate-schedule-action-settings
                              #:static-image-deactivate-schedule-action-settings
                              #:static-image-output-activate-schedule-action-settings
                              #:static-image-output-deactivate-schedule-action-settings
                              #:static-key-settings #:stop-channel
                              #:stop-input-device #:stop-multiplex
                              #:stop-timecode #:successful-monitor-deployment
                              #:tag-map #:tags #:teletext-destination-settings
                              #:teletext-source-settings
                              #:temporal-filter-post-filter-sharpening
                              #:temporal-filter-settings
                              #:temporal-filter-strength #:thumbnail
                              #:thumbnail-configuration #:thumbnail-detail
                              #:thumbnail-state #:thumbnail-type
                              #:timecode-burnin-font-size
                              #:timecode-burnin-position
                              #:timecode-burnin-settings #:timecode-config
                              #:timecode-config-source
                              #:timed-metadata-schedule-action-settings
                              #:transfer-input-device
                              #:transferring-input-device-summary
                              #:ttml-destination-settings
                              #:ttml-destination-style-control
                              #:udp-container-settings #:udp-group-settings
                              #:udp-output-settings
                              #:udp-timed-metadata-id3frame
                              #:update-account-configuration #:update-channel
                              #:update-channel-class
                              #:update-channel-placement-group
                              #:update-cloud-watch-alarm-template
                              #:update-cloud-watch-alarm-template-group
                              #:update-cluster
                              #:update-event-bridge-rule-template
                              #:update-event-bridge-rule-template-group
                              #:update-input #:update-input-device
                              #:update-input-security-group #:update-multiplex
                              #:update-multiplex-program #:update-network
                              #:update-node #:update-node-state
                              #:update-node-state-shape #:update-reservation
                              #:update-sdi-source #:validation-error
                              #:video-black-failover-settings
                              #:video-codec-settings #:video-description
                              #:video-description-respond-to-afd
                              #:video-description-scaling-behavior
                              #:video-selector #:video-selector-color-space
                              #:video-selector-color-space-settings
                              #:video-selector-color-space-usage
                              #:video-selector-pid #:video-selector-program-id
                              #:video-selector-settings #:vpc-output-settings
                              #:vpc-output-settings-description
                              #:wav-coding-mode #:wav-settings
                              #:webvtt-destination-settings
                              #:webvtt-destination-style-control #:boolean
                              #:double #:double-min0 #:double-min0max1
                              #:double-min0max100 #:double-min0max5000
                              #:double-min1 #:double-min1max65535
                              #:double-min-negative59max0 #:integer
                              #:integer-max5 #:integer-min0 #:integer-min0max10
                              #:integer-min0max100 #:integer-min0max1000
                              #:integer-min0max10000 #:integer-min0max1000000
                              #:integer-min0max100000000 #:integer-min0max128
                              #:integer-min0max15 #:integer-min0max2000
                              #:integer-min0max255 #:integer-min0max30
                              #:integer-min0max32768 #:integer-min0max3600
                              #:integer-min0max500 #:integer-min0max600
                              #:integer-min0max65535 #:integer-min0max65536
                              #:integer-min0max7 #:integer-min0max8191
                              #:integer-min1 #:integer-min100 #:integer-min1000
                              #:integer-min1000000max100000000
                              #:integer-min100000max100000000
                              #:integer-min100000max40000000
                              #:integer-min100000max80000000
                              #:integer-min1000max30000 #:integer-min10max86400
                              #:integer-min1max10 #:integer-min1max1000000
                              #:integer-min1max16 #:integer-min1max20
                              #:integer-min1max3003 #:integer-min1max31
                              #:integer-min1max32 #:integer-min1max3600000
                              #:integer-min1max4 #:integer-min1max5
                              #:integer-min1max51 #:integer-min1max6
                              #:integer-min1max8 #:integer-min1max800
                              #:integer-min256max3840 #:integer-min25max10000
                              #:integer-min25max2000 #:integer-min3
                              #:integer-min30 #:integer-min32max8191
                              #:integer-min40max16000 #:integer-min4max20
                              #:integer-min50000max16000000
                              #:integer-min50000max8000000
                              #:integer-min64max2160 #:integer-min800max3000
                              #:integer-min80max800 #:integer-min96max600
                              #:integer-min-negative1000max1000
                              #:integer-min-negative5max5
                              #:integer-min-negative60max6
                              #:integer-min-negative60max60
                              #:list-of-audio-channel-mapping
                              #:list-of-audio-description
                              #:list-of-audio-selector #:list-of-audio-track
                              #:list-of-batch-failed-result-model
                              #:list-of-batch-successful-result-model
                              #:list-of-caption-description
                              #:list-of-caption-language-mapping
                              #:list-of-caption-selector
                              #:list-of-channel-egress-endpoint
                              #:list-of-channel-engine-version-response
                              #:list-of-channel-pipeline-id-to-restart
                              #:list-of-channel-summary
                              #:list-of-cloud-watch-alarm-template-group-summary
                              #:list-of-cloud-watch-alarm-template-summary
                              #:list-of-cmaf-ingest-caption-language-mapping
                              #:list-of-color-correction
                              #:list-of-dash-role-audio
                              #:list-of-dash-role-caption
                              #:list-of-describe-channel-placement-group-summary
                              #:list-of-describe-cluster-summary
                              #:list-of-describe-network-summary
                              #:list-of-describe-node-summary
                              #:list-of-event-bridge-rule-template-group-summary
                              #:list-of-event-bridge-rule-template-summary
                              #:list-of-event-bridge-rule-template-target
                              #:list-of-failover-condition
                              #:list-of-hls-ad-markers #:list-of-input
                              #:list-of-input-attachment
                              #:list-of-input-channel-level
                              #:list-of-input-destination
                              #:list-of-input-destination-request
                              #:list-of-input-destination-route
                              #:list-of-input-device-configurable-audio-channel-pair-config
                              #:list-of-input-device-request
                              #:list-of-input-device-settings
                              #:list-of-input-device-summary
                              #:list-of-input-device-uhd-audio-channel-pair-config
                              #:list-of-input-request-destination-route
                              #:list-of-input-sdp-location
                              #:list-of-input-security-group
                              #:list-of-input-source
                              #:list-of-input-source-request
                              #:list-of-input-whitelist-rule
                              #:list-of-input-whitelist-rule-cidr
                              #:list-of-interface-mapping
                              #:list-of-interface-mapping-create-request
                              #:list-of-interface-mapping-update-request
                              #:list-of-ip-pool
                              #:list-of-ip-pool-create-request
                              #:list-of-ip-pool-update-request
                              #:list-of-media-connect-flow
                              #:list-of-media-connect-flow-request
                              #:list-of-media-package-output-destination-settings
                              #:list-of-media-resource-neighbor
                              #:list-of-multicast-source
                              #:list-of-multicast-source-create-request
                              #:list-of-multicast-source-update-request
                              #:list-of-multiplex-output-destination
                              #:list-of-multiplex-program-pipeline-detail
                              #:list-of-multiplex-program-summary
                              #:list-of-multiplex-summary
                              #:list-of-node-interface-mapping
                              #:list-of-node-interface-mapping-create-request
                              #:list-of-offering #:list-of-output
                              #:list-of-output-destination
                              #:list-of-output-destination-settings
                              #:list-of-output-group #:list-of-pipeline-detail
                              #:list-of-pipeline-pause-state-settings
                              #:list-of-reservation #:list-of-route
                              #:list-of-route-create-request
                              #:list-of-route-update-request
                              #:list-of-rtmp-ad-markers
                              #:list-of-schedule-action
                              #:list-of-scte35descriptor
                              #:list-of-sdi-source-summary
                              #:list-of-signal-map-summary
                              #:list-of-smpte2110receiver-group
                              #:list-of-srt-caller-source
                              #:list-of-srt-caller-source-request
                              #:list-of-srt-output-destination-settings
                              #:list-of-thumbnail #:list-of-thumbnail-detail
                              #:list-of-transferring-input-device-summary
                              #:list-of-validation-error
                              #:list-of-video-description #:list-of-integer
                              #:list-of-string
                              #:list-of-string-min7max11pattern-aws097
                              #:list-of-string-pattern-s #:long
                              #:long-min0max1099511627775
                              #:long-min0max4294967295 #:long-min0max8589934591
                              #:long-min0max86400000 #:string #:string-max100
                              #:string-max1000 #:string-max2048 #:string-max255
                              #:string-max256 #:string-max32 #:string-max64
                              #:string-min0max1024 #:string-min1
                              #:string-min1max2048
                              #:string-min1max2048pattern-arn
                              #:string-min1max255 #:string-min1max255pattern-s
                              #:string-min1max256 #:string-min1max256pattern-s
                              #:string-min1max35 #:string-min1max7
                              #:string-min2max2 #:string-min32max32
                              #:string-min34max34 #:string-min3max3
                              #:string-min6max6
                              #:string-min7max11pattern-aws097
                              #:string-pattern010920300
                              #:string-pattern-arn-medialive-cloudwatch-alarm-template
                              #:string-pattern-arn-medialive-cloudwatch-alarm-template-group
                              #:string-pattern-arn-medialive-eventbridge-rule-template
                              #:string-pattern-arn-medialive-eventbridge-rule-template-group
                              #:string-pattern-arn-medialive-signal-map
                              #:string-pattern-s #:timestamp
                              #:timestamp-iso8601))
(common-lisp:in-package #:pira/medialive)

(smithy/sdk/service:define-service media-live :shape-name "MediaLive" :version
                                   "2017-10-14" :title
                                   "AWS Elemental MediaLive" :operations
                                   '(accept-input-device-transfer batch-delete
                                     batch-start batch-stop
                                     batch-update-schedule
                                     cancel-input-device-transfer claim-device
                                     create-channel
                                     create-channel-placement-group
                                     create-cloud-watch-alarm-template
                                     create-cloud-watch-alarm-template-group
                                     create-cluster
                                     create-event-bridge-rule-template
                                     create-event-bridge-rule-template-group
                                     create-input create-input-security-group
                                     create-multiplex create-multiplex-program
                                     create-network create-node
                                     create-node-registration-script
                                     create-partner-input create-sdi-source
                                     create-signal-map create-tags
                                     delete-channel
                                     delete-channel-placement-group
                                     delete-cloud-watch-alarm-template
                                     delete-cloud-watch-alarm-template-group
                                     delete-cluster
                                     delete-event-bridge-rule-template
                                     delete-event-bridge-rule-template-group
                                     delete-input delete-input-security-group
                                     delete-multiplex delete-multiplex-program
                                     delete-network delete-node
                                     delete-reservation delete-schedule
                                     delete-sdi-source delete-signal-map
                                     delete-tags describe-account-configuration
                                     describe-channel
                                     describe-channel-placement-group
                                     describe-cluster describe-input
                                     describe-input-device
                                     describe-input-device-thumbnail
                                     describe-input-security-group
                                     describe-multiplex
                                     describe-multiplex-program
                                     describe-network describe-node
                                     describe-offering describe-reservation
                                     describe-schedule describe-sdi-source
                                     describe-thumbnails
                                     get-cloud-watch-alarm-template
                                     get-cloud-watch-alarm-template-group
                                     get-event-bridge-rule-template
                                     get-event-bridge-rule-template-group
                                     get-signal-map
                                     list-channel-placement-groups
                                     list-channels
                                     list-cloud-watch-alarm-template-groups
                                     list-cloud-watch-alarm-templates
                                     list-clusters
                                     list-event-bridge-rule-template-groups
                                     list-event-bridge-rule-templates
                                     list-input-devices
                                     list-input-device-transfers list-inputs
                                     list-input-security-groups
                                     list-multiplexes list-multiplex-programs
                                     list-networks list-nodes list-offerings
                                     list-reservations list-sdi-sources
                                     list-signal-maps list-tags-for-resource
                                     list-versions purchase-offering
                                     reboot-input-device
                                     reject-input-device-transfer
                                     restart-channel-pipelines start-channel
                                     start-delete-monitor-deployment
                                     start-input-device
                                     start-input-device-maintenance-window
                                     start-monitor-deployment start-multiplex
                                     start-update-signal-map stop-channel
                                     stop-input-device stop-multiplex
                                     transfer-input-device
                                     update-account-configuration
                                     update-channel update-channel-class
                                     update-channel-placement-group
                                     update-cloud-watch-alarm-template
                                     update-cloud-watch-alarm-template-group
                                     update-cluster
                                     update-event-bridge-rule-template
                                     update-event-bridge-rule-template-group
                                     update-input update-input-device
                                     update-input-security-group
                                     update-multiplex update-multiplex-program
                                     update-network update-node
                                     update-node-state update-reservation
                                     update-sdi-source)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "MediaLive")
                                      ("arnNamespace" . "medialive")
                                      ("cloudFormationName" . "MediaLive")
                                      ("cloudTrailEventSource"
                                       . "medialive.amazonaws.com")
                                      ("endpointPrefix" . "medialive"))
                                     ("aws.auth#sigv4" ("name" . "medialive"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-enum aac-coding-mode
    common-lisp:nil
  (:ad-receiver-mix "AD_RECEIVER_MIX")
  (:coding-mode-1-0 "CODING_MODE_1_0")
  (:coding-mode-1-1 "CODING_MODE_1_1")
  (:coding-mode-2-0 "CODING_MODE_2_0")
  (:coding-mode-5-1 "CODING_MODE_5_1"))

(smithy/sdk/shapes:define-enum aac-input-type
    common-lisp:nil
  (:broadcaster-mixed-ad "BROADCASTER_MIXED_AD")
  (:normal "NORMAL"))

(smithy/sdk/shapes:define-enum aac-profile
    common-lisp:nil
  (:hev1 "HEV1")
  (:hev2 "HEV2")
  (:lc "LC"))

(smithy/sdk/shapes:define-enum aac-rate-control-mode
    common-lisp:nil
  (:cbr "CBR")
  (:vbr "VBR"))

(smithy/sdk/shapes:define-enum aac-raw-format
    common-lisp:nil
  (:latm-loas "LATM_LOAS")
  (:none "NONE"))

(smithy/sdk/shapes:define-structure aac-settings common-lisp:nil
                                    ((bitrate :target-type double :member-name
                                      "Bitrate" :json-name "bitrate")
                                     (coding-mode :target-type aac-coding-mode
                                      :member-name "CodingMode" :json-name
                                      "codingMode")
                                     (input-type :target-type aac-input-type
                                      :member-name "InputType" :json-name
                                      "inputType")
                                     (profile :target-type aac-profile
                                      :member-name "Profile" :json-name
                                      "profile")
                                     (rate-control-mode :target-type
                                      aac-rate-control-mode :member-name
                                      "RateControlMode" :json-name
                                      "rateControlMode")
                                     (raw-format :target-type aac-raw-format
                                      :member-name "RawFormat" :json-name
                                      "rawFormat")
                                     (sample-rate :target-type double
                                      :member-name "SampleRate" :json-name
                                      "sampleRate")
                                     (spec :target-type aac-spec :member-name
                                      "Spec" :json-name "spec")
                                     (vbr-quality :target-type aac-vbr-quality
                                      :member-name "VbrQuality" :json-name
                                      "vbrQuality"))
                                    (:shape-name "AacSettings"))

(smithy/sdk/shapes:define-enum aac-spec
    common-lisp:nil
  (:mpeg2 "MPEG2")
  (:mpeg4 "MPEG4"))

(smithy/sdk/shapes:define-enum aac-vbr-quality
    common-lisp:nil
  (:high "HIGH")
  (:low "LOW")
  (:medium-high "MEDIUM_HIGH")
  (:medium-low "MEDIUM_LOW"))

(smithy/sdk/shapes:define-enum ac3attenuation-control
    common-lisp:nil
  (:attenuate-3-db "ATTENUATE_3_DB")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum ac3bitstream-mode
    common-lisp:nil
  (:commentary "COMMENTARY")
  (:complete-main "COMPLETE_MAIN")
  (:dialogue "DIALOGUE")
  (:emergency "EMERGENCY")
  (:hearing-impaired "HEARING_IMPAIRED")
  (:music-and-effects "MUSIC_AND_EFFECTS")
  (:visually-impaired "VISUALLY_IMPAIRED")
  (:voice-over "VOICE_OVER"))

(smithy/sdk/shapes:define-enum ac3coding-mode
    common-lisp:nil
  (:coding-mode-1-0 "CODING_MODE_1_0")
  (:coding-mode-1-1 "CODING_MODE_1_1")
  (:coding-mode-2-0 "CODING_MODE_2_0")
  (:coding-mode-3-2-lfe "CODING_MODE_3_2_LFE"))

(smithy/sdk/shapes:define-enum ac3drc-profile
    common-lisp:nil
  (:film-standard "FILM_STANDARD")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum ac3lfe-filter
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum ac3metadata-control
    common-lisp:nil
  (:follow-input "FOLLOW_INPUT")
  (:use-configured "USE_CONFIGURED"))

(smithy/sdk/shapes:define-structure ac3settings common-lisp:nil
                                    ((bitrate :target-type double :member-name
                                      "Bitrate" :json-name "bitrate")
                                     (bitstream-mode :target-type
                                      ac3bitstream-mode :member-name
                                      "BitstreamMode" :json-name
                                      "bitstreamMode")
                                     (coding-mode :target-type ac3coding-mode
                                      :member-name "CodingMode" :json-name
                                      "codingMode")
                                     (dialnorm :target-type integer-min1max31
                                      :member-name "Dialnorm" :json-name
                                      "dialnorm")
                                     (drc-profile :target-type ac3drc-profile
                                      :member-name "DrcProfile" :json-name
                                      "drcProfile")
                                     (lfe-filter :target-type ac3lfe-filter
                                      :member-name "LfeFilter" :json-name
                                      "lfeFilter")
                                     (metadata-control :target-type
                                      ac3metadata-control :member-name
                                      "MetadataControl" :json-name
                                      "metadataControl")
                                     (attenuation-control :target-type
                                      ac3attenuation-control :member-name
                                      "AttenuationControl" :json-name
                                      "attenuationControl"))
                                    (:shape-name "Ac3Settings"))

(smithy/sdk/shapes:define-enum accept-header
    common-lisp:nil
  (:image-jpeg "image/jpeg"))

(smithy/sdk/shapes:define-input accept-input-device-transfer-request
                                common-lisp:nil
                                ((input-device-id :target-type string :required
                                  common-lisp:t :member-name "InputDeviceId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "AcceptInputDeviceTransferRequest"))

(smithy/sdk/shapes:define-output accept-input-device-transfer-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "AcceptInputDeviceTransferResponse"))

(smithy/sdk/shapes:define-enum accessibility-type
    common-lisp:nil
  (:does-not-implement-accessibility-features
   "DOES_NOT_IMPLEMENT_ACCESSIBILITY_FEATURES")
  (:implements-accessibility-features "IMPLEMENTS_ACCESSIBILITY_FEATURES"))

(smithy/sdk/shapes:define-structure account-configuration common-lisp:nil
                                    ((kms-key-id :target-type string
                                      :member-name "KmsKeyId" :json-name
                                      "kmsKeyId"))
                                    (:shape-name "AccountConfiguration"))

(smithy/sdk/shapes:define-enum afd-signaling
    common-lisp:nil
  (:auto "AUTO")
  (:fixed "FIXED")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum algorithm
    common-lisp:nil
  (:aes128 "AES128")
  (:aes192 "AES192")
  (:aes256 "AES256"))

(smithy/sdk/shapes:define-structure ancillary-source-settings common-lisp:nil
                                    ((source-ancillary-channel-number
                                      :target-type integer-min1max4
                                      :member-name
                                      "SourceAncillaryChannelNumber" :json-name
                                      "sourceAncillaryChannelNumber"))
                                    (:shape-name "AncillarySourceSettings"))

(smithy/sdk/shapes:define-structure anywhere-settings common-lisp:nil
                                    ((channel-placement-group-id :target-type
                                      string :member-name
                                      "ChannelPlacementGroupId" :json-name
                                      "channelPlacementGroupId")
                                     (cluster-id :target-type string
                                      :member-name "ClusterId" :json-name
                                      "clusterId"))
                                    (:shape-name "AnywhereSettings"))

(smithy/sdk/shapes:define-structure archive-cdn-settings common-lisp:nil
                                    ((archive-s3settings :target-type
                                      archive-s3settings :member-name
                                      "ArchiveS3Settings" :json-name
                                      "archiveS3Settings"))
                                    (:shape-name "ArchiveCdnSettings"))

(smithy/sdk/shapes:define-structure archive-container-settings common-lisp:nil
                                    ((m2ts-settings :target-type m2ts-settings
                                      :member-name "M2tsSettings" :json-name
                                      "m2tsSettings")
                                     (raw-settings :target-type raw-settings
                                      :member-name "RawSettings" :json-name
                                      "rawSettings"))
                                    (:shape-name "ArchiveContainerSettings"))

(smithy/sdk/shapes:define-structure archive-group-settings common-lisp:nil
                                    ((archive-cdn-settings :target-type
                                      archive-cdn-settings :member-name
                                      "ArchiveCdnSettings" :json-name
                                      "archiveCdnSettings")
                                     (destination :target-type
                                      output-location-ref :required
                                      common-lisp:t :member-name "Destination"
                                      :json-name "destination")
                                     (rollover-interval :target-type
                                      integer-min1 :member-name
                                      "RolloverInterval" :json-name
                                      "rolloverInterval"))
                                    (:shape-name "ArchiveGroupSettings"))

(smithy/sdk/shapes:define-structure archive-output-settings common-lisp:nil
                                    ((container-settings :target-type
                                      archive-container-settings :required
                                      common-lisp:t :member-name
                                      "ContainerSettings" :json-name
                                      "containerSettings")
                                     (extension :target-type string
                                      :member-name "Extension" :json-name
                                      "extension")
                                     (name-modifier :target-type string
                                      :member-name "NameModifier" :json-name
                                      "nameModifier"))
                                    (:shape-name "ArchiveOutputSettings"))

(smithy/sdk/shapes:define-structure archive-s3settings common-lisp:nil
                                    ((canned-acl :target-type s3canned-acl
                                      :member-name "CannedAcl" :json-name
                                      "cannedAcl"))
                                    (:shape-name "ArchiveS3Settings"))

(smithy/sdk/shapes:define-structure arib-destination-settings common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "AribDestinationSettings"))

(smithy/sdk/shapes:define-structure arib-source-settings common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "AribSourceSettings"))

(smithy/sdk/shapes:define-structure audio-channel-mapping common-lisp:nil
                                    ((input-channel-levels :target-type
                                      list-of-input-channel-level :required
                                      common-lisp:t :member-name
                                      "InputChannelLevels" :json-name
                                      "inputChannelLevels")
                                     (output-channel :target-type
                                      integer-min0max7 :required common-lisp:t
                                      :member-name "OutputChannel" :json-name
                                      "outputChannel"))
                                    (:shape-name "AudioChannelMapping"))

(smithy/sdk/shapes:define-structure audio-codec-settings common-lisp:nil
                                    ((aac-settings :target-type aac-settings
                                      :member-name "AacSettings" :json-name
                                      "aacSettings")
                                     (ac3settings :target-type ac3settings
                                      :member-name "Ac3Settings" :json-name
                                      "ac3Settings")
                                     (eac3atmos-settings :target-type
                                      eac3atmos-settings :member-name
                                      "Eac3AtmosSettings" :json-name
                                      "eac3AtmosSettings")
                                     (eac3settings :target-type eac3settings
                                      :member-name "Eac3Settings" :json-name
                                      "eac3Settings")
                                     (mp2settings :target-type mp2settings
                                      :member-name "Mp2Settings" :json-name
                                      "mp2Settings")
                                     (pass-through-settings :target-type
                                      pass-through-settings :member-name
                                      "PassThroughSettings" :json-name
                                      "passThroughSettings")
                                     (wav-settings :target-type wav-settings
                                      :member-name "WavSettings" :json-name
                                      "wavSettings"))
                                    (:shape-name "AudioCodecSettings"))

(smithy/sdk/shapes:define-structure audio-description common-lisp:nil
                                    ((audio-normalization-settings :target-type
                                      audio-normalization-settings :member-name
                                      "AudioNormalizationSettings" :json-name
                                      "audioNormalizationSettings")
                                     (audio-selector-name :target-type string
                                      :required common-lisp:t :member-name
                                      "AudioSelectorName" :json-name
                                      "audioSelectorName")
                                     (audio-type :target-type audio-type
                                      :member-name "AudioType" :json-name
                                      "audioType")
                                     (audio-type-control :target-type
                                      audio-description-audio-type-control
                                      :member-name "AudioTypeControl"
                                      :json-name "audioTypeControl")
                                     (audio-watermarking-settings :target-type
                                      audio-watermark-settings :member-name
                                      "AudioWatermarkingSettings" :json-name
                                      "audioWatermarkingSettings")
                                     (codec-settings :target-type
                                      audio-codec-settings :member-name
                                      "CodecSettings" :json-name
                                      "codecSettings")
                                     (language-code :target-type
                                      string-min1max35 :member-name
                                      "LanguageCode" :json-name "languageCode")
                                     (language-code-control :target-type
                                      audio-description-language-code-control
                                      :member-name "LanguageCodeControl"
                                      :json-name "languageCodeControl")
                                     (name :target-type string-max255 :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name")
                                     (remix-settings :target-type
                                      remix-settings :member-name
                                      "RemixSettings" :json-name
                                      "remixSettings")
                                     (stream-name :target-type string
                                      :member-name "StreamName" :json-name
                                      "streamName")
                                     (audio-dash-roles :target-type
                                      list-of-dash-role-audio :member-name
                                      "AudioDashRoles" :json-name
                                      "audioDashRoles")
                                     (dvb-dash-accessibility :target-type
                                      dvb-dash-accessibility :member-name
                                      "DvbDashAccessibility" :json-name
                                      "dvbDashAccessibility"))
                                    (:shape-name "AudioDescription"))

(smithy/sdk/shapes:define-enum audio-description-audio-type-control
    common-lisp:nil
  (:follow-input "FOLLOW_INPUT")
  (:use-configured "USE_CONFIGURED"))

(smithy/sdk/shapes:define-enum audio-description-language-code-control
    common-lisp:nil
  (:follow-input "FOLLOW_INPUT")
  (:use-configured "USE_CONFIGURED"))

(smithy/sdk/shapes:define-structure audio-dolby-edecode common-lisp:nil
                                    ((program-selection :target-type
                                      dolby-eprogram-selection :required
                                      common-lisp:t :member-name
                                      "ProgramSelection" :json-name
                                      "programSelection"))
                                    (:shape-name "AudioDolbyEDecode"))

(smithy/sdk/shapes:define-structure audio-hls-rendition-selection
                                    common-lisp:nil
                                    ((group-id :target-type string-min1
                                      :required common-lisp:t :member-name
                                      "GroupId" :json-name "groupId")
                                     (name :target-type string-min1 :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name"))
                                    (:shape-name "AudioHlsRenditionSelection"))

(smithy/sdk/shapes:define-structure audio-language-selection common-lisp:nil
                                    ((language-code :target-type string
                                      :required common-lisp:t :member-name
                                      "LanguageCode" :json-name "languageCode")
                                     (language-selection-policy :target-type
                                      audio-language-selection-policy
                                      :member-name "LanguageSelectionPolicy"
                                      :json-name "languageSelectionPolicy"))
                                    (:shape-name "AudioLanguageSelection"))

(smithy/sdk/shapes:define-enum audio-language-selection-policy
    common-lisp:nil
  (:loose "LOOSE")
  (:strict "STRICT"))

(smithy/sdk/shapes:define-enum audio-normalization-algorithm
    common-lisp:nil
  (:itu-1770-1 "ITU_1770_1")
  (:itu-1770-2 "ITU_1770_2"))

(smithy/sdk/shapes:define-enum audio-normalization-algorithm-control
    common-lisp:nil
  (:correct-audio "CORRECT_AUDIO"))

(smithy/sdk/shapes:define-structure audio-normalization-settings
                                    common-lisp:nil
                                    ((algorithm :target-type
                                      audio-normalization-algorithm
                                      :member-name "Algorithm" :json-name
                                      "algorithm")
                                     (algorithm-control :target-type
                                      audio-normalization-algorithm-control
                                      :member-name "AlgorithmControl"
                                      :json-name "algorithmControl")
                                     (target-lkfs :target-type
                                      double-min-negative59max0 :member-name
                                      "TargetLkfs" :json-name "targetLkfs"))
                                    (:shape-name "AudioNormalizationSettings"))

(smithy/sdk/shapes:define-enum audio-only-hls-segment-type
    common-lisp:nil
  (:aac "AAC")
  (:fmp4 "FMP4"))

(smithy/sdk/shapes:define-structure audio-only-hls-settings common-lisp:nil
                                    ((audio-group-id :target-type string
                                      :member-name "AudioGroupId" :json-name
                                      "audioGroupId")
                                     (audio-only-image :target-type
                                      input-location :member-name
                                      "AudioOnlyImage" :json-name
                                      "audioOnlyImage")
                                     (audio-track-type :target-type
                                      audio-only-hls-track-type :member-name
                                      "AudioTrackType" :json-name
                                      "audioTrackType")
                                     (segment-type :target-type
                                      audio-only-hls-segment-type :member-name
                                      "SegmentType" :json-name "segmentType"))
                                    (:shape-name "AudioOnlyHlsSettings"))

(smithy/sdk/shapes:define-enum audio-only-hls-track-type
    common-lisp:nil
  (:alternate-audio-auto-select "ALTERNATE_AUDIO_AUTO_SELECT")
  (:alternate-audio-auto-select-default "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT")
  (:alternate-audio-not-auto-select "ALTERNATE_AUDIO_NOT_AUTO_SELECT")
  (:audio-only-variant-stream "AUDIO_ONLY_VARIANT_STREAM"))

(smithy/sdk/shapes:define-structure audio-pid-selection common-lisp:nil
                                    ((pid :target-type integer-min0max8191
                                      :required common-lisp:t :member-name
                                      "Pid" :json-name "pid"))
                                    (:shape-name "AudioPidSelection"))

(smithy/sdk/shapes:define-structure audio-selector common-lisp:nil
                                    ((name :target-type string-min1 :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name")
                                     (selector-settings :target-type
                                      audio-selector-settings :member-name
                                      "SelectorSettings" :json-name
                                      "selectorSettings"))
                                    (:shape-name "AudioSelector"))

(smithy/sdk/shapes:define-structure audio-selector-settings common-lisp:nil
                                    ((audio-hls-rendition-selection
                                      :target-type
                                      audio-hls-rendition-selection
                                      :member-name "AudioHlsRenditionSelection"
                                      :json-name "audioHlsRenditionSelection")
                                     (audio-language-selection :target-type
                                      audio-language-selection :member-name
                                      "AudioLanguageSelection" :json-name
                                      "audioLanguageSelection")
                                     (audio-pid-selection :target-type
                                      audio-pid-selection :member-name
                                      "AudioPidSelection" :json-name
                                      "audioPidSelection")
                                     (audio-track-selection :target-type
                                      audio-track-selection :member-name
                                      "AudioTrackSelection" :json-name
                                      "audioTrackSelection"))
                                    (:shape-name "AudioSelectorSettings"))

(smithy/sdk/shapes:define-structure audio-silence-failover-settings
                                    common-lisp:nil
                                    ((audio-selector-name :target-type string
                                      :required common-lisp:t :member-name
                                      "AudioSelectorName" :json-name
                                      "audioSelectorName")
                                     (audio-silence-threshold-msec :target-type
                                      integer-min1000 :member-name
                                      "AudioSilenceThresholdMsec" :json-name
                                      "audioSilenceThresholdMsec"))
                                    (:shape-name
                                     "AudioSilenceFailoverSettings"))

(smithy/sdk/shapes:define-structure audio-track common-lisp:nil
                                    ((track :target-type integer-min1 :required
                                      common-lisp:t :member-name "Track"
                                      :json-name "track"))
                                    (:shape-name "AudioTrack"))

(smithy/sdk/shapes:define-structure audio-track-selection common-lisp:nil
                                    ((tracks :target-type list-of-audio-track
                                      :required common-lisp:t :member-name
                                      "Tracks" :json-name "tracks")
                                     (dolby-edecode :target-type
                                      audio-dolby-edecode :member-name
                                      "DolbyEDecode" :json-name
                                      "dolbyEDecode"))
                                    (:shape-name "AudioTrackSelection"))

(smithy/sdk/shapes:define-enum audio-type
    common-lisp:nil
  (:clean-effects "CLEAN_EFFECTS")
  (:hearing-impaired "HEARING_IMPAIRED")
  (:undefined "UNDEFINED")
  (:visual-impaired-commentary "VISUAL_IMPAIRED_COMMENTARY"))

(smithy/sdk/shapes:define-structure audio-watermark-settings common-lisp:nil
                                    ((nielsen-watermarks-settings :target-type
                                      nielsen-watermarks-settings :member-name
                                      "NielsenWatermarksSettings" :json-name
                                      "nielsenWatermarksSettings"))
                                    (:shape-name "AudioWatermarkSettings"))

(smithy/sdk/shapes:define-enum authentication-scheme
    common-lisp:nil
  (:akamai "AKAMAI")
  (:common "COMMON"))

(smithy/sdk/shapes:define-structure automatic-input-failover-settings
                                    common-lisp:nil
                                    ((error-clear-time-msec :target-type
                                      integer-min1 :member-name
                                      "ErrorClearTimeMsec" :json-name
                                      "errorClearTimeMsec")
                                     (failover-conditions :target-type
                                      list-of-failover-condition :member-name
                                      "FailoverConditions" :json-name
                                      "failoverConditions")
                                     (input-preference :target-type
                                      input-preference :member-name
                                      "InputPreference" :json-name
                                      "inputPreference")
                                     (secondary-input-id :target-type string
                                      :required common-lisp:t :member-name
                                      "SecondaryInputId" :json-name
                                      "secondaryInputId"))
                                    (:shape-name
                                     "AutomaticInputFailoverSettings"))

(smithy/sdk/shapes:define-structure av1color-space-settings common-lisp:nil
                                    ((color-space-passthrough-settings
                                      :target-type
                                      color-space-passthrough-settings
                                      :member-name
                                      "ColorSpacePassthroughSettings"
                                      :json-name
                                      "colorSpacePassthroughSettings")
                                     (hdr10settings :target-type hdr10settings
                                      :member-name "Hdr10Settings" :json-name
                                      "hdr10Settings")
                                     (rec601settings :target-type
                                      rec601settings :member-name
                                      "Rec601Settings" :json-name
                                      "rec601Settings")
                                     (rec709settings :target-type
                                      rec709settings :member-name
                                      "Rec709Settings" :json-name
                                      "rec709Settings"))
                                    (:shape-name "Av1ColorSpaceSettings"))

(smithy/sdk/shapes:define-enum av1gop-size-units
    common-lisp:nil
  (:frames "FRAMES")
  (:seconds "SECONDS"))

(smithy/sdk/shapes:define-enum av1level
    common-lisp:nil
  (:av1-level-2 "AV1_LEVEL_2")
  (:av1-level-2-1 "AV1_LEVEL_2_1")
  (:av1-level-3 "AV1_LEVEL_3")
  (:av1-level-3-1 "AV1_LEVEL_3_1")
  (:av1-level-4 "AV1_LEVEL_4")
  (:av1-level-4-1 "AV1_LEVEL_4_1")
  (:av1-level-5 "AV1_LEVEL_5")
  (:av1-level-5-1 "AV1_LEVEL_5_1")
  (:av1-level-5-2 "AV1_LEVEL_5_2")
  (:av1-level-5-3 "AV1_LEVEL_5_3")
  (:av1-level-6 "AV1_LEVEL_6")
  (:av1-level-6-1 "AV1_LEVEL_6_1")
  (:av1-level-6-2 "AV1_LEVEL_6_2")
  (:av1-level-6-3 "AV1_LEVEL_6_3")
  (:av1-level-auto "AV1_LEVEL_AUTO"))

(smithy/sdk/shapes:define-enum av1look-ahead-rate-control
    common-lisp:nil
  (:high "HIGH")
  (:low "LOW")
  (:medium "MEDIUM"))

(smithy/sdk/shapes:define-enum av1rate-control-mode
    common-lisp:nil
  (:cbr "CBR")
  (:qvbr "QVBR"))

(smithy/sdk/shapes:define-enum av1scene-change-detect
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-structure av1settings common-lisp:nil
                                    ((afd-signaling :target-type afd-signaling
                                      :member-name "AfdSignaling" :json-name
                                      "afdSignaling")
                                     (buf-size :target-type
                                      integer-min50000max16000000 :member-name
                                      "BufSize" :json-name "bufSize")
                                     (color-space-settings :target-type
                                      av1color-space-settings :member-name
                                      "ColorSpaceSettings" :json-name
                                      "colorSpaceSettings")
                                     (fixed-afd :target-type fixed-afd
                                      :member-name "FixedAfd" :json-name
                                      "fixedAfd")
                                     (framerate-denominator :target-type
                                      integer-min1max3003 :required
                                      common-lisp:t :member-name
                                      "FramerateDenominator" :json-name
                                      "framerateDenominator")
                                     (framerate-numerator :target-type
                                      integer-min1 :required common-lisp:t
                                      :member-name "FramerateNumerator"
                                      :json-name "framerateNumerator")
                                     (gop-size :target-type double-min0
                                      :member-name "GopSize" :json-name
                                      "gopSize")
                                     (gop-size-units :target-type
                                      av1gop-size-units :member-name
                                      "GopSizeUnits" :json-name "gopSizeUnits")
                                     (level :target-type av1level :member-name
                                      "Level" :json-name "level")
                                     (look-ahead-rate-control :target-type
                                      av1look-ahead-rate-control :member-name
                                      "LookAheadRateControl" :json-name
                                      "lookAheadRateControl")
                                     (max-bitrate :target-type
                                      integer-min50000max8000000 :member-name
                                      "MaxBitrate" :json-name "maxBitrate")
                                     (min-iinterval :target-type
                                      integer-min0max30 :member-name
                                      "MinIInterval" :json-name "minIInterval")
                                     (par-denominator :target-type integer-min1
                                      :member-name "ParDenominator" :json-name
                                      "parDenominator")
                                     (par-numerator :target-type integer-min1
                                      :member-name "ParNumerator" :json-name
                                      "parNumerator")
                                     (qvbr-quality-level :target-type
                                      integer-min1max10 :member-name
                                      "QvbrQualityLevel" :json-name
                                      "qvbrQualityLevel")
                                     (scene-change-detect :target-type
                                      av1scene-change-detect :member-name
                                      "SceneChangeDetect" :json-name
                                      "sceneChangeDetect")
                                     (timecode-burnin-settings :target-type
                                      timecode-burnin-settings :member-name
                                      "TimecodeBurninSettings" :json-name
                                      "timecodeBurninSettings")
                                     (bitrate :target-type
                                      integer-min50000max8000000 :member-name
                                      "Bitrate" :json-name "bitrate")
                                     (rate-control-mode :target-type
                                      av1rate-control-mode :member-name
                                      "RateControlMode" :json-name
                                      "rateControlMode"))
                                    (:shape-name "Av1Settings"))

(smithy/sdk/shapes:define-structure avail-blanking common-lisp:nil
                                    ((avail-blanking-image :target-type
                                      input-location :member-name
                                      "AvailBlankingImage" :json-name
                                      "availBlankingImage")
                                     (state :target-type avail-blanking-state
                                      :member-name "State" :json-name "state"))
                                    (:shape-name "AvailBlanking"))

(smithy/sdk/shapes:define-enum avail-blanking-state
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-structure avail-configuration common-lisp:nil
                                    ((avail-settings :target-type
                                      avail-settings :member-name
                                      "AvailSettings" :json-name
                                      "availSettings")
                                     (scte35segmentation-scope :target-type
                                      scte35segmentation-scope :member-name
                                      "Scte35SegmentationScope" :json-name
                                      "scte35SegmentationScope"))
                                    (:shape-name "AvailConfiguration"))

(smithy/sdk/shapes:define-structure avail-settings common-lisp:nil
                                    ((esam :target-type esam :member-name
                                      "Esam" :json-name "esam")
                                     (scte35splice-insert :target-type
                                      scte35splice-insert :member-name
                                      "Scte35SpliceInsert" :json-name
                                      "scte35SpliceInsert")
                                     (scte35time-signal-apos :target-type
                                      scte35time-signal-apos :member-name
                                      "Scte35TimeSignalApos" :json-name
                                      "scte35TimeSignalApos"))
                                    (:shape-name "AvailSettings"))

(smithy/sdk/shapes:define-error bad-gateway-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "BadGatewayException")
                                (:error-code 502))

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure bandwidth-reduction-filter-settings
                                    common-lisp:nil
                                    ((post-filter-sharpening :target-type
                                      bandwidth-reduction-post-filter-sharpening
                                      :member-name "PostFilterSharpening"
                                      :json-name "postFilterSharpening")
                                     (strength :target-type
                                      bandwidth-reduction-filter-strength
                                      :member-name "Strength" :json-name
                                      "strength"))
                                    (:shape-name
                                     "BandwidthReductionFilterSettings"))

(smithy/sdk/shapes:define-enum bandwidth-reduction-filter-strength
    common-lisp:nil
  (:auto "AUTO")
  (:strength-1 "STRENGTH_1")
  (:strength-2 "STRENGTH_2")
  (:strength-3 "STRENGTH_3")
  (:strength-4 "STRENGTH_4"))

(smithy/sdk/shapes:define-enum bandwidth-reduction-post-filter-sharpening
    common-lisp:nil
  (:disabled "DISABLED")
  (:sharpening-1 "SHARPENING_1")
  (:sharpening-2 "SHARPENING_2")
  (:sharpening-3 "SHARPENING_3"))

(smithy/sdk/shapes:define-input batch-delete-request common-lisp:nil
                                ((channel-ids :target-type list-of-string
                                  :member-name "ChannelIds" :json-name
                                  "channelIds")
                                 (input-ids :target-type list-of-string
                                  :member-name "InputIds" :json-name
                                  "inputIds")
                                 (input-security-group-ids :target-type
                                  list-of-string :member-name
                                  "InputSecurityGroupIds" :json-name
                                  "inputSecurityGroupIds")
                                 (multiplex-ids :target-type list-of-string
                                  :member-name "MultiplexIds" :json-name
                                  "multiplexIds"))
                                (:shape-name "BatchDeleteRequest"))

(smithy/sdk/shapes:define-output batch-delete-response common-lisp:nil
                                 ((failed :target-type
                                   list-of-batch-failed-result-model
                                   :member-name "Failed" :json-name "failed")
                                  (successful :target-type
                                   list-of-batch-successful-result-model
                                   :member-name "Successful" :json-name
                                   "successful"))
                                 (:shape-name "BatchDeleteResponse"))

(smithy/sdk/shapes:define-structure batch-failed-result-model common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn" :json-name "arn")
                                     (code :target-type string :member-name
                                      "Code" :json-name "code")
                                     (id :target-type string :member-name "Id"
                                      :json-name "id")
                                     (message :target-type string :member-name
                                      "Message" :json-name "message"))
                                    (:shape-name "BatchFailedResultModel"))

(smithy/sdk/shapes:define-structure batch-schedule-action-create-request
                                    common-lisp:nil
                                    ((schedule-actions :target-type
                                      list-of-schedule-action :required
                                      common-lisp:t :member-name
                                      "ScheduleActions" :json-name
                                      "scheduleActions"))
                                    (:shape-name
                                     "BatchScheduleActionCreateRequest"))

(smithy/sdk/shapes:define-structure batch-schedule-action-create-result
                                    common-lisp:nil
                                    ((schedule-actions :target-type
                                      list-of-schedule-action :required
                                      common-lisp:t :member-name
                                      "ScheduleActions" :json-name
                                      "scheduleActions"))
                                    (:shape-name
                                     "BatchScheduleActionCreateResult"))

(smithy/sdk/shapes:define-structure batch-schedule-action-delete-request
                                    common-lisp:nil
                                    ((action-names :target-type list-of-string
                                      :required common-lisp:t :member-name
                                      "ActionNames" :json-name "actionNames"))
                                    (:shape-name
                                     "BatchScheduleActionDeleteRequest"))

(smithy/sdk/shapes:define-structure batch-schedule-action-delete-result
                                    common-lisp:nil
                                    ((schedule-actions :target-type
                                      list-of-schedule-action :required
                                      common-lisp:t :member-name
                                      "ScheduleActions" :json-name
                                      "scheduleActions"))
                                    (:shape-name
                                     "BatchScheduleActionDeleteResult"))

(smithy/sdk/shapes:define-input batch-start-request common-lisp:nil
                                ((channel-ids :target-type list-of-string
                                  :member-name "ChannelIds" :json-name
                                  "channelIds")
                                 (multiplex-ids :target-type list-of-string
                                  :member-name "MultiplexIds" :json-name
                                  "multiplexIds"))
                                (:shape-name "BatchStartRequest"))

(smithy/sdk/shapes:define-output batch-start-response common-lisp:nil
                                 ((failed :target-type
                                   list-of-batch-failed-result-model
                                   :member-name "Failed" :json-name "failed")
                                  (successful :target-type
                                   list-of-batch-successful-result-model
                                   :member-name "Successful" :json-name
                                   "successful"))
                                 (:shape-name "BatchStartResponse"))

(smithy/sdk/shapes:define-input batch-stop-request common-lisp:nil
                                ((channel-ids :target-type list-of-string
                                  :member-name "ChannelIds" :json-name
                                  "channelIds")
                                 (multiplex-ids :target-type list-of-string
                                  :member-name "MultiplexIds" :json-name
                                  "multiplexIds"))
                                (:shape-name "BatchStopRequest"))

(smithy/sdk/shapes:define-output batch-stop-response common-lisp:nil
                                 ((failed :target-type
                                   list-of-batch-failed-result-model
                                   :member-name "Failed" :json-name "failed")
                                  (successful :target-type
                                   list-of-batch-successful-result-model
                                   :member-name "Successful" :json-name
                                   "successful"))
                                 (:shape-name "BatchStopResponse"))

(smithy/sdk/shapes:define-structure batch-successful-result-model
                                    common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn" :json-name "arn")
                                     (id :target-type string :member-name "Id"
                                      :json-name "id")
                                     (state :target-type string :member-name
                                      "State" :json-name "state"))
                                    (:shape-name "BatchSuccessfulResultModel"))

(smithy/sdk/shapes:define-input batch-update-schedule-request common-lisp:nil
                                ((channel-id :target-type string :required
                                  common-lisp:t :member-name "ChannelId"
                                  :http-label common-lisp:t)
                                 (creates :target-type
                                  batch-schedule-action-create-request
                                  :member-name "Creates" :json-name "creates")
                                 (deletes :target-type
                                  batch-schedule-action-delete-request
                                  :member-name "Deletes" :json-name "deletes"))
                                (:shape-name "BatchUpdateScheduleRequest"))

(smithy/sdk/shapes:define-output batch-update-schedule-response common-lisp:nil
                                 ((creates :target-type
                                   batch-schedule-action-create-result
                                   :member-name "Creates" :json-name "creates")
                                  (deletes :target-type
                                   batch-schedule-action-delete-result
                                   :member-name "Deletes" :json-name
                                   "deletes"))
                                 (:shape-name "BatchUpdateScheduleResponse"))

(smithy/sdk/shapes:define-structure blackout-slate common-lisp:nil
                                    ((blackout-slate-image :target-type
                                      input-location :member-name
                                      "BlackoutSlateImage" :json-name
                                      "blackoutSlateImage")
                                     (network-end-blackout :target-type
                                      blackout-slate-network-end-blackout
                                      :member-name "NetworkEndBlackout"
                                      :json-name "networkEndBlackout")
                                     (network-end-blackout-image :target-type
                                      input-location :member-name
                                      "NetworkEndBlackoutImage" :json-name
                                      "networkEndBlackoutImage")
                                     (network-id :target-type string-min34max34
                                      :member-name "NetworkId" :json-name
                                      "networkId")
                                     (state :target-type blackout-slate-state
                                      :member-name "State" :json-name "state"))
                                    (:shape-name "BlackoutSlate"))

(smithy/sdk/shapes:define-enum blackout-slate-network-end-blackout
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum blackout-slate-state
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum burn-in-alignment
    common-lisp:nil
  (:centered "CENTERED")
  (:left "LEFT")
  (:smart "SMART"))

(smithy/sdk/shapes:define-enum burn-in-background-color
    common-lisp:nil
  (:black "BLACK")
  (:none "NONE")
  (:white "WHITE"))

(smithy/sdk/shapes:define-structure burn-in-destination-settings
                                    common-lisp:nil
                                    ((alignment :target-type burn-in-alignment
                                      :member-name "Alignment" :json-name
                                      "alignment")
                                     (background-color :target-type
                                      burn-in-background-color :member-name
                                      "BackgroundColor" :json-name
                                      "backgroundColor")
                                     (background-opacity :target-type
                                      integer-min0max255 :member-name
                                      "BackgroundOpacity" :json-name
                                      "backgroundOpacity")
                                     (font :target-type input-location
                                      :member-name "Font" :json-name "font")
                                     (font-color :target-type
                                      burn-in-font-color :member-name
                                      "FontColor" :json-name "fontColor")
                                     (font-opacity :target-type
                                      integer-min0max255 :member-name
                                      "FontOpacity" :json-name "fontOpacity")
                                     (font-resolution :target-type
                                      integer-min96max600 :member-name
                                      "FontResolution" :json-name
                                      "fontResolution")
                                     (font-size :target-type string
                                      :member-name "FontSize" :json-name
                                      "fontSize")
                                     (outline-color :target-type
                                      burn-in-outline-color :member-name
                                      "OutlineColor" :json-name "outlineColor")
                                     (outline-size :target-type
                                      integer-min0max10 :member-name
                                      "OutlineSize" :json-name "outlineSize")
                                     (shadow-color :target-type
                                      burn-in-shadow-color :member-name
                                      "ShadowColor" :json-name "shadowColor")
                                     (shadow-opacity :target-type
                                      integer-min0max255 :member-name
                                      "ShadowOpacity" :json-name
                                      "shadowOpacity")
                                     (shadow-xoffset :target-type integer
                                      :member-name "ShadowXOffset" :json-name
                                      "shadowXOffset")
                                     (shadow-yoffset :target-type integer
                                      :member-name "ShadowYOffset" :json-name
                                      "shadowYOffset")
                                     (teletext-grid-control :target-type
                                      burn-in-teletext-grid-control
                                      :member-name "TeletextGridControl"
                                      :json-name "teletextGridControl")
                                     (xposition :target-type integer-min0
                                      :member-name "XPosition" :json-name
                                      "xPosition")
                                     (yposition :target-type integer-min0
                                      :member-name "YPosition" :json-name
                                      "yPosition"))
                                    (:shape-name "BurnInDestinationSettings"))

(smithy/sdk/shapes:define-enum burn-in-font-color
    common-lisp:nil
  (:black "BLACK")
  (:blue "BLUE")
  (:green "GREEN")
  (:red "RED")
  (:white "WHITE")
  (:yellow "YELLOW"))

(smithy/sdk/shapes:define-enum burn-in-outline-color
    common-lisp:nil
  (:black "BLACK")
  (:blue "BLUE")
  (:green "GREEN")
  (:red "RED")
  (:white "WHITE")
  (:yellow "YELLOW"))

(smithy/sdk/shapes:define-enum burn-in-shadow-color
    common-lisp:nil
  (:black "BLACK")
  (:none "NONE")
  (:white "WHITE"))

(smithy/sdk/shapes:define-enum burn-in-teletext-grid-control
    common-lisp:nil
  (:fixed "FIXED")
  (:scaled "SCALED"))

(smithy/sdk/shapes:define-input cancel-input-device-transfer-request
                                common-lisp:nil
                                ((input-device-id :target-type string :required
                                  common-lisp:t :member-name "InputDeviceId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "CancelInputDeviceTransferRequest"))

(smithy/sdk/shapes:define-output cancel-input-device-transfer-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "CancelInputDeviceTransferResponse"))

(smithy/sdk/shapes:define-structure caption-description common-lisp:nil
                                    ((accessibility :target-type
                                      accessibility-type :member-name
                                      "Accessibility" :json-name
                                      "accessibility")
                                     (caption-selector-name :target-type string
                                      :required common-lisp:t :member-name
                                      "CaptionSelectorName" :json-name
                                      "captionSelectorName")
                                     (destination-settings :target-type
                                      caption-destination-settings :member-name
                                      "DestinationSettings" :json-name
                                      "destinationSettings")
                                     (language-code :target-type string
                                      :member-name "LanguageCode" :json-name
                                      "languageCode")
                                     (language-description :target-type string
                                      :member-name "LanguageDescription"
                                      :json-name "languageDescription")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name")
                                     (caption-dash-roles :target-type
                                      list-of-dash-role-caption :member-name
                                      "CaptionDashRoles" :json-name
                                      "captionDashRoles")
                                     (dvb-dash-accessibility :target-type
                                      dvb-dash-accessibility :member-name
                                      "DvbDashAccessibility" :json-name
                                      "dvbDashAccessibility"))
                                    (:shape-name "CaptionDescription"))

(smithy/sdk/shapes:define-structure caption-destination-settings
                                    common-lisp:nil
                                    ((arib-destination-settings :target-type
                                      arib-destination-settings :member-name
                                      "AribDestinationSettings" :json-name
                                      "aribDestinationSettings")
                                     (burn-in-destination-settings :target-type
                                      burn-in-destination-settings :member-name
                                      "BurnInDestinationSettings" :json-name
                                      "burnInDestinationSettings")
                                     (dvb-sub-destination-settings :target-type
                                      dvb-sub-destination-settings :member-name
                                      "DvbSubDestinationSettings" :json-name
                                      "dvbSubDestinationSettings")
                                     (ebu-tt-ddestination-settings :target-type
                                      ebu-tt-ddestination-settings :member-name
                                      "EbuTtDDestinationSettings" :json-name
                                      "ebuTtDDestinationSettings")
                                     (embedded-destination-settings
                                      :target-type
                                      embedded-destination-settings
                                      :member-name
                                      "EmbeddedDestinationSettings" :json-name
                                      "embeddedDestinationSettings")
                                     (embedded-plus-scte20destination-settings
                                      :target-type
                                      embedded-plus-scte20destination-settings
                                      :member-name
                                      "EmbeddedPlusScte20DestinationSettings"
                                      :json-name
                                      "embeddedPlusScte20DestinationSettings")
                                     (rtmp-caption-info-destination-settings
                                      :target-type
                                      rtmp-caption-info-destination-settings
                                      :member-name
                                      "RtmpCaptionInfoDestinationSettings"
                                      :json-name
                                      "rtmpCaptionInfoDestinationSettings")
                                     (scte20plus-embedded-destination-settings
                                      :target-type
                                      scte20plus-embedded-destination-settings
                                      :member-name
                                      "Scte20PlusEmbeddedDestinationSettings"
                                      :json-name
                                      "scte20PlusEmbeddedDestinationSettings")
                                     (scte27destination-settings :target-type
                                      scte27destination-settings :member-name
                                      "Scte27DestinationSettings" :json-name
                                      "scte27DestinationSettings")
                                     (smpte-tt-destination-settings
                                      :target-type
                                      smpte-tt-destination-settings
                                      :member-name "SmpteTtDestinationSettings"
                                      :json-name "smpteTtDestinationSettings")
                                     (teletext-destination-settings
                                      :target-type
                                      teletext-destination-settings
                                      :member-name
                                      "TeletextDestinationSettings" :json-name
                                      "teletextDestinationSettings")
                                     (ttml-destination-settings :target-type
                                      ttml-destination-settings :member-name
                                      "TtmlDestinationSettings" :json-name
                                      "ttmlDestinationSettings")
                                     (webvtt-destination-settings :target-type
                                      webvtt-destination-settings :member-name
                                      "WebvttDestinationSettings" :json-name
                                      "webvttDestinationSettings"))
                                    (:shape-name "CaptionDestinationSettings"))

(smithy/sdk/shapes:define-structure caption-language-mapping common-lisp:nil
                                    ((caption-channel :target-type
                                      integer-min1max4 :required common-lisp:t
                                      :member-name "CaptionChannel" :json-name
                                      "captionChannel")
                                     (language-code :target-type
                                      string-min3max3 :required common-lisp:t
                                      :member-name "LanguageCode" :json-name
                                      "languageCode")
                                     (language-description :target-type
                                      string-min1 :required common-lisp:t
                                      :member-name "LanguageDescription"
                                      :json-name "languageDescription"))
                                    (:shape-name "CaptionLanguageMapping"))

(smithy/sdk/shapes:define-structure caption-rectangle common-lisp:nil
                                    ((height :target-type double-min0max100
                                      :required common-lisp:t :member-name
                                      "Height" :json-name "height")
                                     (left-offset :target-type
                                      double-min0max100 :required common-lisp:t
                                      :member-name "LeftOffset" :json-name
                                      "leftOffset")
                                     (top-offset :target-type double-min0max100
                                      :required common-lisp:t :member-name
                                      "TopOffset" :json-name "topOffset")
                                     (width :target-type double-min0max100
                                      :required common-lisp:t :member-name
                                      "Width" :json-name "width"))
                                    (:shape-name "CaptionRectangle"))

(smithy/sdk/shapes:define-structure caption-selector common-lisp:nil
                                    ((language-code :target-type string
                                      :member-name "LanguageCode" :json-name
                                      "languageCode")
                                     (name :target-type string-min1 :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name")
                                     (selector-settings :target-type
                                      caption-selector-settings :member-name
                                      "SelectorSettings" :json-name
                                      "selectorSettings"))
                                    (:shape-name "CaptionSelector"))

(smithy/sdk/shapes:define-structure caption-selector-settings common-lisp:nil
                                    ((ancillary-source-settings :target-type
                                      ancillary-source-settings :member-name
                                      "AncillarySourceSettings" :json-name
                                      "ancillarySourceSettings")
                                     (arib-source-settings :target-type
                                      arib-source-settings :member-name
                                      "AribSourceSettings" :json-name
                                      "aribSourceSettings")
                                     (dvb-sub-source-settings :target-type
                                      dvb-sub-source-settings :member-name
                                      "DvbSubSourceSettings" :json-name
                                      "dvbSubSourceSettings")
                                     (embedded-source-settings :target-type
                                      embedded-source-settings :member-name
                                      "EmbeddedSourceSettings" :json-name
                                      "embeddedSourceSettings")
                                     (scte20source-settings :target-type
                                      scte20source-settings :member-name
                                      "Scte20SourceSettings" :json-name
                                      "scte20SourceSettings")
                                     (scte27source-settings :target-type
                                      scte27source-settings :member-name
                                      "Scte27SourceSettings" :json-name
                                      "scte27SourceSettings")
                                     (teletext-source-settings :target-type
                                      teletext-source-settings :member-name
                                      "TeletextSourceSettings" :json-name
                                      "teletextSourceSettings"))
                                    (:shape-name "CaptionSelectorSettings"))

(smithy/sdk/shapes:define-enum cdi-input-resolution
    common-lisp:nil
  (:sd "SD")
  (:hd "HD")
  (:fhd "FHD")
  (:uhd "UHD"))

(smithy/sdk/shapes:define-structure cdi-input-specification common-lisp:nil
                                    ((resolution :target-type
                                      cdi-input-resolution :member-name
                                      "Resolution" :json-name "resolution"))
                                    (:shape-name "CdiInputSpecification"))

(smithy/sdk/shapes:define-structure channel common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn" :json-name "arn")
                                     (cdi-input-specification :target-type
                                      cdi-input-specification :member-name
                                      "CdiInputSpecification" :json-name
                                      "cdiInputSpecification")
                                     (channel-class :target-type channel-class
                                      :member-name "ChannelClass" :json-name
                                      "channelClass")
                                     (destinations :target-type
                                      list-of-output-destination :member-name
                                      "Destinations" :json-name "destinations")
                                     (egress-endpoints :target-type
                                      list-of-channel-egress-endpoint
                                      :member-name "EgressEndpoints" :json-name
                                      "egressEndpoints")
                                     (encoder-settings :target-type
                                      encoder-settings :member-name
                                      "EncoderSettings" :json-name
                                      "encoderSettings")
                                     (id :target-type string :member-name "Id"
                                      :json-name "id")
                                     (input-attachments :target-type
                                      list-of-input-attachment :member-name
                                      "InputAttachments" :json-name
                                      "inputAttachments")
                                     (input-specification :target-type
                                      input-specification :member-name
                                      "InputSpecification" :json-name
                                      "inputSpecification")
                                     (log-level :target-type log-level
                                      :member-name "LogLevel" :json-name
                                      "logLevel")
                                     (maintenance :target-type
                                      maintenance-status :member-name
                                      "Maintenance" :json-name "maintenance")
                                     (name :target-type string :member-name
                                      "Name" :json-name "name")
                                     (pipeline-details :target-type
                                      list-of-pipeline-detail :member-name
                                      "PipelineDetails" :json-name
                                      "pipelineDetails")
                                     (pipelines-running-count :target-type
                                      integer :member-name
                                      "PipelinesRunningCount" :json-name
                                      "pipelinesRunningCount")
                                     (role-arn :target-type string :member-name
                                      "RoleArn" :json-name "roleArn")
                                     (state :target-type channel-state
                                      :member-name "State" :json-name "state")
                                     (tags :target-type tags :member-name
                                      "Tags" :json-name "tags")
                                     (vpc :target-type
                                      vpc-output-settings-description
                                      :member-name "Vpc" :json-name "vpc")
                                     (anywhere-settings :target-type
                                      describe-anywhere-settings :member-name
                                      "AnywhereSettings" :json-name
                                      "anywhereSettings")
                                     (channel-engine-version :target-type
                                      channel-engine-version-response
                                      :member-name "ChannelEngineVersion"
                                      :json-name "channelEngineVersion"))
                                    (:shape-name "Channel"))

(smithy/sdk/shapes:define-enum channel-class
    common-lisp:nil
  (:standard "STANDARD")
  (:single-pipeline "SINGLE_PIPELINE"))

(smithy/sdk/shapes:define-structure channel-egress-endpoint common-lisp:nil
                                    ((source-ip :target-type string
                                      :member-name "SourceIp" :json-name
                                      "sourceIp"))
                                    (:shape-name "ChannelEgressEndpoint"))

(smithy/sdk/shapes:define-structure channel-engine-version-request
                                    common-lisp:nil
                                    ((version :target-type string :member-name
                                      "Version" :json-name "version"))
                                    (:shape-name "ChannelEngineVersionRequest"))

(smithy/sdk/shapes:define-structure channel-engine-version-response
                                    common-lisp:nil
                                    ((expiration-date :target-type
                                      timestamp-iso8601 :member-name
                                      "ExpirationDate" :json-name
                                      "expirationDate")
                                     (version :target-type string :member-name
                                      "Version" :json-name "version"))
                                    (:shape-name
                                     "ChannelEngineVersionResponse"))

(smithy/sdk/shapes:define-enum channel-pipeline-id-to-restart
    common-lisp:nil
  (:pipeline-0 "PIPELINE_0")
  (:pipeline-1 "PIPELINE_1"))

(smithy/sdk/shapes:define-enum channel-placement-group-state
    common-lisp:nil
  (:unassigned "UNASSIGNED")
  (:assigning "ASSIGNING")
  (:assigned "ASSIGNED")
  (:deleting "DELETING")
  (:delete-failed "DELETE_FAILED")
  (:deleted "DELETED")
  (:unassigning "UNASSIGNING"))

(smithy/sdk/shapes:define-enum channel-state
    common-lisp:nil
  (:creating "CREATING")
  (:create-failed "CREATE_FAILED")
  (:idle "IDLE")
  (:starting "STARTING")
  (:running "RUNNING")
  (:recovering "RECOVERING")
  (:stopping "STOPPING")
  (:deleting "DELETING")
  (:deleted "DELETED")
  (:updating "UPDATING")
  (:update-failed "UPDATE_FAILED"))

(smithy/sdk/shapes:define-structure channel-summary common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn" :json-name "arn")
                                     (cdi-input-specification :target-type
                                      cdi-input-specification :member-name
                                      "CdiInputSpecification" :json-name
                                      "cdiInputSpecification")
                                     (channel-class :target-type channel-class
                                      :member-name "ChannelClass" :json-name
                                      "channelClass")
                                     (destinations :target-type
                                      list-of-output-destination :member-name
                                      "Destinations" :json-name "destinations")
                                     (egress-endpoints :target-type
                                      list-of-channel-egress-endpoint
                                      :member-name "EgressEndpoints" :json-name
                                      "egressEndpoints")
                                     (id :target-type string :member-name "Id"
                                      :json-name "id")
                                     (input-attachments :target-type
                                      list-of-input-attachment :member-name
                                      "InputAttachments" :json-name
                                      "inputAttachments")
                                     (input-specification :target-type
                                      input-specification :member-name
                                      "InputSpecification" :json-name
                                      "inputSpecification")
                                     (log-level :target-type log-level
                                      :member-name "LogLevel" :json-name
                                      "logLevel")
                                     (maintenance :target-type
                                      maintenance-status :member-name
                                      "Maintenance" :json-name "maintenance")
                                     (name :target-type string :member-name
                                      "Name" :json-name "name")
                                     (pipelines-running-count :target-type
                                      integer :member-name
                                      "PipelinesRunningCount" :json-name
                                      "pipelinesRunningCount")
                                     (role-arn :target-type string :member-name
                                      "RoleArn" :json-name "roleArn")
                                     (state :target-type channel-state
                                      :member-name "State" :json-name "state")
                                     (tags :target-type tags :member-name
                                      "Tags" :json-name "tags")
                                     (vpc :target-type
                                      vpc-output-settings-description
                                      :member-name "Vpc" :json-name "vpc")
                                     (anywhere-settings :target-type
                                      describe-anywhere-settings :member-name
                                      "AnywhereSettings" :json-name
                                      "anywhereSettings")
                                     (channel-engine-version :target-type
                                      channel-engine-version-response
                                      :member-name "ChannelEngineVersion"
                                      :json-name "channelEngineVersion")
                                     (used-channel-engine-versions :target-type
                                      list-of-channel-engine-version-response
                                      :member-name "UsedChannelEngineVersions"
                                      :json-name "usedChannelEngineVersions"))
                                    (:shape-name "ChannelSummary"))

(smithy/sdk/shapes:define-input claim-device-request common-lisp:nil
                                ((id :target-type string :member-name "Id"
                                  :json-name "id"))
                                (:shape-name "ClaimDeviceRequest"))

(smithy/sdk/shapes:define-output claim-device-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "ClaimDeviceResponse"))

(smithy/sdk/shapes:define-enum cloud-watch-alarm-template-comparison-operator
    common-lisp:nil
  (:greater-than-or-equal-to-threshold "GreaterThanOrEqualToThreshold")
  (:greater-than-threshold "GreaterThanThreshold")
  (:less-than-threshold "LessThanThreshold")
  (:less-than-or-equal-to-threshold "LessThanOrEqualToThreshold"))

(smithy/sdk/shapes:define-structure cloud-watch-alarm-template-group-summary
                                    common-lisp:nil
                                    ((arn :target-type
                                      string-pattern-arn-medialive-cloudwatch-alarm-template-group
                                      :required common-lisp:t :member-name
                                      "Arn" :json-name "arn")
                                     (created-at :target-type timestamp-iso8601
                                      :required common-lisp:t :member-name
                                      "CreatedAt" :json-name "createdAt")
                                     (description :target-type
                                      string-min0max1024 :member-name
                                      "Description" :json-name "description")
                                     (id :target-type
                                      string-min7max11pattern-aws097 :required
                                      common-lisp:t :member-name "Id"
                                      :json-name "id")
                                     (modified-at :target-type
                                      timestamp-iso8601 :member-name
                                      "ModifiedAt" :json-name "modifiedAt")
                                     (name :target-type
                                      string-min1max255pattern-s :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name")
                                     (tags :target-type tag-map :member-name
                                      "Tags" :json-name "tags")
                                     (template-count :target-type integer
                                      :required common-lisp:t :member-name
                                      "TemplateCount" :json-name
                                      "templateCount"))
                                    (:shape-name
                                     "CloudWatchAlarmTemplateGroupSummary"))

(smithy/sdk/shapes:define-enum cloud-watch-alarm-template-statistic
    common-lisp:nil
  (:sample-count "SampleCount")
  (:average "Average")
  (:sum "Sum")
  (:minimum "Minimum")
  (:maximum "Maximum"))

(smithy/sdk/shapes:define-structure cloud-watch-alarm-template-summary
                                    common-lisp:nil
                                    ((arn :target-type
                                      string-pattern-arn-medialive-cloudwatch-alarm-template
                                      :required common-lisp:t :member-name
                                      "Arn" :json-name "arn")
                                     (comparison-operator :target-type
                                      cloud-watch-alarm-template-comparison-operator
                                      :required common-lisp:t :member-name
                                      "ComparisonOperator" :json-name
                                      "comparisonOperator")
                                     (created-at :target-type timestamp-iso8601
                                      :required common-lisp:t :member-name
                                      "CreatedAt" :json-name "createdAt")
                                     (datapoints-to-alarm :target-type
                                      integer-min1 :member-name
                                      "DatapointsToAlarm" :json-name
                                      "datapointsToAlarm")
                                     (description :target-type
                                      string-min0max1024 :member-name
                                      "Description" :json-name "description")
                                     (evaluation-periods :target-type
                                      integer-min1 :required common-lisp:t
                                      :member-name "EvaluationPeriods"
                                      :json-name "evaluationPeriods")
                                     (group-id :target-type
                                      string-min7max11pattern-aws097 :required
                                      common-lisp:t :member-name "GroupId"
                                      :json-name "groupId")
                                     (id :target-type
                                      string-min7max11pattern-aws097 :required
                                      common-lisp:t :member-name "Id"
                                      :json-name "id")
                                     (metric-name :target-type string-max64
                                      :required common-lisp:t :member-name
                                      "MetricName" :json-name "metricName")
                                     (modified-at :target-type
                                      timestamp-iso8601 :member-name
                                      "ModifiedAt" :json-name "modifiedAt")
                                     (name :target-type
                                      string-min1max255pattern-s :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name")
                                     (period :target-type integer-min10max86400
                                      :required common-lisp:t :member-name
                                      "Period" :json-name "period")
                                     (statistic :target-type
                                      cloud-watch-alarm-template-statistic
                                      :required common-lisp:t :member-name
                                      "Statistic" :json-name "statistic")
                                     (tags :target-type tag-map :member-name
                                      "Tags" :json-name "tags")
                                     (target-resource-type :target-type
                                      cloud-watch-alarm-template-target-resource-type
                                      :required common-lisp:t :member-name
                                      "TargetResourceType" :json-name
                                      "targetResourceType")
                                     (threshold :target-type double :required
                                      common-lisp:t :member-name "Threshold"
                                      :json-name "threshold")
                                     (treat-missing-data :target-type
                                      cloud-watch-alarm-template-treat-missing-data
                                      :required common-lisp:t :member-name
                                      "TreatMissingData" :json-name
                                      "treatMissingData"))
                                    (:shape-name
                                     "CloudWatchAlarmTemplateSummary"))

(smithy/sdk/shapes:define-enum cloud-watch-alarm-template-target-resource-type
    common-lisp:nil
  (:cloudfront-distribution "CLOUDFRONT_DISTRIBUTION")
  (:medialive-multiplex "MEDIALIVE_MULTIPLEX")
  (:medialive-channel "MEDIALIVE_CHANNEL")
  (:medialive-input-device "MEDIALIVE_INPUT_DEVICE")
  (:mediapackage-channel "MEDIAPACKAGE_CHANNEL")
  (:mediapackage-origin-endpoint "MEDIAPACKAGE_ORIGIN_ENDPOINT")
  (:mediaconnect-flow "MEDIACONNECT_FLOW")
  (:s3-bucket "S3_BUCKET")
  (:mediatailor-playback-configuration "MEDIATAILOR_PLAYBACK_CONFIGURATION"))

(smithy/sdk/shapes:define-enum cloud-watch-alarm-template-treat-missing-data
    common-lisp:nil
  (:not-breaching "notBreaching")
  (:breaching "breaching")
  (:ignore "ignore")
  (:missing "missing"))

(smithy/sdk/shapes:define-structure cluster-network-settings common-lisp:nil
                                    ((default-route :target-type string
                                      :member-name "DefaultRoute" :json-name
                                      "defaultRoute")
                                     (interface-mappings :target-type
                                      list-of-interface-mapping :member-name
                                      "InterfaceMappings" :json-name
                                      "interfaceMappings"))
                                    (:shape-name "ClusterNetworkSettings"))

(smithy/sdk/shapes:define-structure cluster-network-settings-create-request
                                    common-lisp:nil
                                    ((default-route :target-type string
                                      :member-name "DefaultRoute" :json-name
                                      "defaultRoute")
                                     (interface-mappings :target-type
                                      list-of-interface-mapping-create-request
                                      :member-name "InterfaceMappings"
                                      :json-name "interfaceMappings"))
                                    (:shape-name
                                     "ClusterNetworkSettingsCreateRequest"))

(smithy/sdk/shapes:define-structure cluster-network-settings-update-request
                                    common-lisp:nil
                                    ((default-route :target-type string
                                      :member-name "DefaultRoute" :json-name
                                      "defaultRoute")
                                     (interface-mappings :target-type
                                      list-of-interface-mapping-update-request
                                      :member-name "InterfaceMappings"
                                      :json-name "interfaceMappings"))
                                    (:shape-name
                                     "ClusterNetworkSettingsUpdateRequest"))

(smithy/sdk/shapes:define-enum cluster-state
    common-lisp:nil
  (:creating "CREATING")
  (:create-failed "CREATE_FAILED")
  (:active "ACTIVE")
  (:deleting "DELETING")
  (:delete-failed "DELETE_FAILED")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-enum cluster-type
    common-lisp:nil
  (:on-premises "ON_PREMISES"))

(smithy/sdk/shapes:define-enum cmaf-id3behavior
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-structure cmaf-ingest-caption-language-mapping
                                    common-lisp:nil
                                    ((caption-channel :target-type
                                      integer-min1max4 :required common-lisp:t
                                      :member-name "CaptionChannel" :json-name
                                      "captionChannel")
                                     (language-code :target-type
                                      string-min3max3 :required common-lisp:t
                                      :member-name "LanguageCode" :json-name
                                      "languageCode"))
                                    (:shape-name
                                     "CmafIngestCaptionLanguageMapping"))

(smithy/sdk/shapes:define-structure cmaf-ingest-group-settings common-lisp:nil
                                    ((destination :target-type
                                      output-location-ref :required
                                      common-lisp:t :member-name "Destination"
                                      :json-name "destination")
                                     (nielsen-id3behavior :target-type
                                      cmaf-nielsen-id3behavior :member-name
                                      "NielsenId3Behavior" :json-name
                                      "nielsenId3Behavior")
                                     (scte35type :target-type scte35type
                                      :member-name "Scte35Type" :json-name
                                      "scte35Type")
                                     (segment-length :target-type integer-min1
                                      :member-name "SegmentLength" :json-name
                                      "segmentLength")
                                     (segment-length-units :target-type
                                      cmaf-ingest-segment-length-units
                                      :member-name "SegmentLengthUnits"
                                      :json-name "segmentLengthUnits")
                                     (send-delay-ms :target-type
                                      integer-min0max2000 :member-name
                                      "SendDelayMs" :json-name "sendDelayMs")
                                     (klv-behavior :target-type
                                      cmaf-klvbehavior :member-name
                                      "KlvBehavior" :json-name "klvBehavior")
                                     (klv-name-modifier :target-type
                                      string-max100 :member-name
                                      "KlvNameModifier" :json-name
                                      "klvNameModifier")
                                     (nielsen-id3name-modifier :target-type
                                      string-max100 :member-name
                                      "NielsenId3NameModifier" :json-name
                                      "nielsenId3NameModifier")
                                     (scte35name-modifier :target-type
                                      string-max100 :member-name
                                      "Scte35NameModifier" :json-name
                                      "scte35NameModifier")
                                     (id3behavior :target-type cmaf-id3behavior
                                      :member-name "Id3Behavior" :json-name
                                      "id3Behavior")
                                     (id3name-modifier :target-type
                                      string-max100 :member-name
                                      "Id3NameModifier" :json-name
                                      "id3NameModifier")
                                     (caption-language-mappings :target-type
                                      list-of-cmaf-ingest-caption-language-mapping
                                      :member-name "CaptionLanguageMappings"
                                      :json-name "captionLanguageMappings")
                                     (timed-metadata-id3frame :target-type
                                      cmaf-timed-metadata-id3frame :member-name
                                      "TimedMetadataId3Frame" :json-name
                                      "timedMetadataId3Frame")
                                     (timed-metadata-id3period :target-type
                                      integer-min0max10000 :member-name
                                      "TimedMetadataId3Period" :json-name
                                      "timedMetadataId3Period")
                                     (timed-metadata-passthrough :target-type
                                      cmaf-timed-metadata-passthrough
                                      :member-name "TimedMetadataPassthrough"
                                      :json-name "timedMetadataPassthrough"))
                                    (:shape-name "CmafIngestGroupSettings"))

(smithy/sdk/shapes:define-structure cmaf-ingest-output-settings common-lisp:nil
                                    ((name-modifier :target-type string
                                      :member-name "NameModifier" :json-name
                                      "nameModifier"))
                                    (:shape-name "CmafIngestOutputSettings"))

(smithy/sdk/shapes:define-enum cmaf-ingest-segment-length-units
    common-lisp:nil
  (:milliseconds "MILLISECONDS")
  (:seconds "SECONDS"))

(smithy/sdk/shapes:define-enum cmaf-klvbehavior
    common-lisp:nil
  (:no-passthrough "NO_PASSTHROUGH")
  (:passthrough "PASSTHROUGH"))

(smithy/sdk/shapes:define-enum cmaf-nielsen-id3behavior
    common-lisp:nil
  (:no-passthrough "NO_PASSTHROUGH")
  (:passthrough "PASSTHROUGH"))

(smithy/sdk/shapes:define-enum cmaf-timed-metadata-id3frame
    common-lisp:nil
  (:none "NONE")
  (:priv "PRIV")
  (:tdrl "TDRL"))

(smithy/sdk/shapes:define-enum cmaf-timed-metadata-passthrough
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-structure color-correction common-lisp:nil
                                    ((input-color-space :target-type
                                      color-space :required common-lisp:t
                                      :member-name "InputColorSpace" :json-name
                                      "inputColorSpace")
                                     (output-color-space :target-type
                                      color-space :required common-lisp:t
                                      :member-name "OutputColorSpace"
                                      :json-name "outputColorSpace")
                                     (uri :target-type string :required
                                      common-lisp:t :member-name "Uri"
                                      :json-name "uri"))
                                    (:shape-name "ColorCorrection"))

(smithy/sdk/shapes:define-structure color-correction-settings common-lisp:nil
                                    ((global-color-corrections :target-type
                                      list-of-color-correction :required
                                      common-lisp:t :member-name
                                      "GlobalColorCorrections" :json-name
                                      "globalColorCorrections"))
                                    (:shape-name "ColorCorrectionSettings"))

(smithy/sdk/shapes:define-enum color-space
    common-lisp:nil
  (:hdr10 "HDR10")
  (:hlg-2020 "HLG_2020")
  (:rec-601 "REC_601")
  (:rec-709 "REC_709"))

(smithy/sdk/shapes:define-structure color-space-passthrough-settings
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "ColorSpacePassthroughSettings"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-enum content-type
    common-lisp:nil
  (:image-jpeg "image/jpeg"))

(smithy/sdk/shapes:define-input create-channel-placement-group-request
                                common-lisp:nil
                                ((cluster-id :target-type string :required
                                  common-lisp:t :member-name "ClusterId"
                                  :http-label common-lisp:t)
                                 (name :target-type string :member-name "Name"
                                  :json-name "name")
                                 (nodes :target-type list-of-string
                                  :member-name "Nodes" :json-name "nodes")
                                 (request-id :target-type string :member-name
                                  "RequestId" :json-name "requestId")
                                 (tags :target-type tags :member-name "Tags"
                                  :json-name "tags"))
                                (:shape-name
                                 "CreateChannelPlacementGroupRequest"))

(smithy/sdk/shapes:define-output create-channel-placement-group-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (channels :target-type list-of-string
                                   :member-name "Channels" :json-name
                                   "channels")
                                  (cluster-id :target-type string :member-name
                                   "ClusterId" :json-name "clusterId")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name")
                                  (nodes :target-type list-of-string
                                   :member-name "Nodes" :json-name "nodes")
                                  (state :target-type
                                   channel-placement-group-state :member-name
                                   "State" :json-name "state"))
                                 (:shape-name
                                  "CreateChannelPlacementGroupResponse"))

(smithy/sdk/shapes:define-input create-channel-request common-lisp:nil
                                ((cdi-input-specification :target-type
                                  cdi-input-specification :member-name
                                  "CdiInputSpecification" :json-name
                                  "cdiInputSpecification")
                                 (channel-class :target-type channel-class
                                  :member-name "ChannelClass" :json-name
                                  "channelClass")
                                 (destinations :target-type
                                  list-of-output-destination :member-name
                                  "Destinations" :json-name "destinations")
                                 (encoder-settings :target-type
                                  encoder-settings :member-name
                                  "EncoderSettings" :json-name
                                  "encoderSettings")
                                 (input-attachments :target-type
                                  list-of-input-attachment :member-name
                                  "InputAttachments" :json-name
                                  "inputAttachments")
                                 (input-specification :target-type
                                  input-specification :member-name
                                  "InputSpecification" :json-name
                                  "inputSpecification")
                                 (log-level :target-type log-level :member-name
                                  "LogLevel" :json-name "logLevel")
                                 (maintenance :target-type
                                  maintenance-create-settings :member-name
                                  "Maintenance" :json-name "maintenance")
                                 (name :target-type string :member-name "Name"
                                  :json-name "name")
                                 (request-id :target-type string :member-name
                                  "RequestId" :json-name "requestId")
                                 (reserved :target-type string :member-name
                                  "Reserved" :json-name "reserved")
                                 (role-arn :target-type string :member-name
                                  "RoleArn" :json-name "roleArn")
                                 (tags :target-type tags :member-name "Tags"
                                  :json-name "tags")
                                 (vpc :target-type vpc-output-settings
                                  :member-name "Vpc" :json-name "vpc")
                                 (anywhere-settings :target-type
                                  anywhere-settings :member-name
                                  "AnywhereSettings" :json-name
                                  "anywhereSettings")
                                 (channel-engine-version :target-type
                                  channel-engine-version-request :member-name
                                  "ChannelEngineVersion" :json-name
                                  "channelEngineVersion")
                                 (dry-run :target-type boolean :member-name
                                  "DryRun" :json-name "dryRun"))
                                (:shape-name "CreateChannelRequest"))

(smithy/sdk/shapes:define-output create-channel-response common-lisp:nil
                                 ((channel :target-type channel :member-name
                                   "Channel" :json-name "channel"))
                                 (:shape-name "CreateChannelResponse"))

(smithy/sdk/shapes:define-input create-cloud-watch-alarm-template-group-request
                                common-lisp:nil
                                ((description :target-type string-min0max1024
                                  :member-name "Description" :json-name
                                  "description")
                                 (name :target-type string-min1max255pattern-s
                                  :required common-lisp:t :member-name "Name"
                                  :json-name "name")
                                 (tags :target-type tag-map :member-name "Tags"
                                  :json-name "tags")
                                 (request-id :target-type
                                  string-min1max256pattern-s :member-name
                                  "RequestId" :json-name "requestId"))
                                (:shape-name
                                 "CreateCloudWatchAlarmTemplateGroupRequest"))

(smithy/sdk/shapes:define-output
 create-cloud-watch-alarm-template-group-response common-lisp:nil
 ((arn :target-type
   string-pattern-arn-medialive-cloudwatch-alarm-template-group :member-name
   "Arn" :json-name "arn")
  (created-at :target-type timestamp-iso8601 :member-name "CreatedAt"
   :json-name "createdAt")
  (description :target-type string-min0max1024 :member-name "Description"
   :json-name "description")
  (id :target-type string-min7max11pattern-aws097 :member-name "Id" :json-name
   "id")
  (modified-at :target-type timestamp-iso8601 :member-name "ModifiedAt"
   :json-name "modifiedAt")
  (name :target-type string-min1max255pattern-s :member-name "Name" :json-name
   "name")
  (tags :target-type tag-map :member-name "Tags" :json-name "tags"))
 (:shape-name "CreateCloudWatchAlarmTemplateGroupResponse"))

(smithy/sdk/shapes:define-input create-cloud-watch-alarm-template-request
                                common-lisp:nil
                                ((comparison-operator :target-type
                                  cloud-watch-alarm-template-comparison-operator
                                  :required common-lisp:t :member-name
                                  "ComparisonOperator" :json-name
                                  "comparisonOperator")
                                 (datapoints-to-alarm :target-type integer-min1
                                  :member-name "DatapointsToAlarm" :json-name
                                  "datapointsToAlarm")
                                 (description :target-type string-min0max1024
                                  :member-name "Description" :json-name
                                  "description")
                                 (evaluation-periods :target-type integer-min1
                                  :required common-lisp:t :member-name
                                  "EvaluationPeriods" :json-name
                                  "evaluationPeriods")
                                 (group-identifier :target-type
                                  string-pattern-s :required common-lisp:t
                                  :member-name "GroupIdentifier" :json-name
                                  "groupIdentifier")
                                 (metric-name :target-type string-max64
                                  :required common-lisp:t :member-name
                                  "MetricName" :json-name "metricName")
                                 (name :target-type string-min1max255pattern-s
                                  :required common-lisp:t :member-name "Name"
                                  :json-name "name")
                                 (period :target-type integer-min10max86400
                                  :required common-lisp:t :member-name "Period"
                                  :json-name "period")
                                 (statistic :target-type
                                  cloud-watch-alarm-template-statistic
                                  :required common-lisp:t :member-name
                                  "Statistic" :json-name "statistic")
                                 (tags :target-type tag-map :member-name "Tags"
                                  :json-name "tags")
                                 (target-resource-type :target-type
                                  cloud-watch-alarm-template-target-resource-type
                                  :required common-lisp:t :member-name
                                  "TargetResourceType" :json-name
                                  "targetResourceType")
                                 (threshold :target-type double :required
                                  common-lisp:t :member-name "Threshold"
                                  :json-name "threshold")
                                 (treat-missing-data :target-type
                                  cloud-watch-alarm-template-treat-missing-data
                                  :required common-lisp:t :member-name
                                  "TreatMissingData" :json-name
                                  "treatMissingData")
                                 (request-id :target-type
                                  string-min1max256pattern-s :member-name
                                  "RequestId" :json-name "requestId"))
                                (:shape-name
                                 "CreateCloudWatchAlarmTemplateRequest"))

(smithy/sdk/shapes:define-output create-cloud-watch-alarm-template-response
                                 common-lisp:nil
                                 ((arn :target-type
                                   string-pattern-arn-medialive-cloudwatch-alarm-template
                                   :member-name "Arn" :json-name "arn")
                                  (comparison-operator :target-type
                                   cloud-watch-alarm-template-comparison-operator
                                   :member-name "ComparisonOperator" :json-name
                                   "comparisonOperator")
                                  (created-at :target-type timestamp-iso8601
                                   :member-name "CreatedAt" :json-name
                                   "createdAt")
                                  (datapoints-to-alarm :target-type
                                   integer-min1 :member-name
                                   "DatapointsToAlarm" :json-name
                                   "datapointsToAlarm")
                                  (description :target-type string-min0max1024
                                   :member-name "Description" :json-name
                                   "description")
                                  (evaluation-periods :target-type integer-min1
                                   :member-name "EvaluationPeriods" :json-name
                                   "evaluationPeriods")
                                  (group-id :target-type
                                   string-min7max11pattern-aws097 :member-name
                                   "GroupId" :json-name "groupId")
                                  (id :target-type
                                   string-min7max11pattern-aws097 :member-name
                                   "Id" :json-name "id")
                                  (metric-name :target-type string-max64
                                   :member-name "MetricName" :json-name
                                   "metricName")
                                  (modified-at :target-type timestamp-iso8601
                                   :member-name "ModifiedAt" :json-name
                                   "modifiedAt")
                                  (name :target-type string-min1max255pattern-s
                                   :member-name "Name" :json-name "name")
                                  (period :target-type integer-min10max86400
                                   :member-name "Period" :json-name "period")
                                  (statistic :target-type
                                   cloud-watch-alarm-template-statistic
                                   :member-name "Statistic" :json-name
                                   "statistic")
                                  (tags :target-type tag-map :member-name
                                   "Tags" :json-name "tags")
                                  (target-resource-type :target-type
                                   cloud-watch-alarm-template-target-resource-type
                                   :member-name "TargetResourceType" :json-name
                                   "targetResourceType")
                                  (threshold :target-type double :member-name
                                   "Threshold" :json-name "threshold")
                                  (treat-missing-data :target-type
                                   cloud-watch-alarm-template-treat-missing-data
                                   :member-name "TreatMissingData" :json-name
                                   "treatMissingData"))
                                 (:shape-name
                                  "CreateCloudWatchAlarmTemplateResponse"))

(smithy/sdk/shapes:define-input create-cluster-request common-lisp:nil
                                ((cluster-type :target-type cluster-type
                                  :member-name "ClusterType" :json-name
                                  "clusterType")
                                 (instance-role-arn :target-type string
                                  :member-name "InstanceRoleArn" :json-name
                                  "instanceRoleArn")
                                 (name :target-type string :member-name "Name"
                                  :json-name "name")
                                 (network-settings :target-type
                                  cluster-network-settings-create-request
                                  :member-name "NetworkSettings" :json-name
                                  "networkSettings")
                                 (request-id :target-type string :member-name
                                  "RequestId" :json-name "requestId")
                                 (tags :target-type tags :member-name "Tags"
                                  :json-name "tags"))
                                (:shape-name "CreateClusterRequest"))

(smithy/sdk/shapes:define-output create-cluster-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (channel-ids :target-type list-of-string
                                   :member-name "ChannelIds" :json-name
                                   "channelIds")
                                  (cluster-type :target-type cluster-type
                                   :member-name "ClusterType" :json-name
                                   "clusterType")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (instance-role-arn :target-type string
                                   :member-name "InstanceRoleArn" :json-name
                                   "instanceRoleArn")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name")
                                  (network-settings :target-type
                                   cluster-network-settings :member-name
                                   "NetworkSettings" :json-name
                                   "networkSettings")
                                  (state :target-type cluster-state
                                   :member-name "State" :json-name "state"))
                                 (:shape-name "CreateClusterResponse"))

(smithy/sdk/shapes:define-input create-event-bridge-rule-template-group-request
                                common-lisp:nil
                                ((description :target-type string-min0max1024
                                  :member-name "Description" :json-name
                                  "description")
                                 (name :target-type string-min1max255pattern-s
                                  :required common-lisp:t :member-name "Name"
                                  :json-name "name")
                                 (tags :target-type tag-map :member-name "Tags"
                                  :json-name "tags")
                                 (request-id :target-type
                                  string-min1max256pattern-s :member-name
                                  "RequestId" :json-name "requestId"))
                                (:shape-name
                                 "CreateEventBridgeRuleTemplateGroupRequest"))

(smithy/sdk/shapes:define-output
 create-event-bridge-rule-template-group-response common-lisp:nil
 ((arn :target-type
   string-pattern-arn-medialive-eventbridge-rule-template-group :member-name
   "Arn" :json-name "arn")
  (created-at :target-type timestamp-iso8601 :member-name "CreatedAt"
   :json-name "createdAt")
  (description :target-type string-min0max1024 :member-name "Description"
   :json-name "description")
  (id :target-type string-min7max11pattern-aws097 :member-name "Id" :json-name
   "id")
  (modified-at :target-type timestamp-iso8601 :member-name "ModifiedAt"
   :json-name "modifiedAt")
  (name :target-type string-min1max255pattern-s :member-name "Name" :json-name
   "name")
  (tags :target-type tag-map :member-name "Tags" :json-name "tags"))
 (:shape-name "CreateEventBridgeRuleTemplateGroupResponse"))

(smithy/sdk/shapes:define-input create-event-bridge-rule-template-request
                                common-lisp:nil
                                ((description :target-type string-min0max1024
                                  :member-name "Description" :json-name
                                  "description")
                                 (event-targets :target-type
                                  list-of-event-bridge-rule-template-target
                                  :member-name "EventTargets" :json-name
                                  "eventTargets")
                                 (event-type :target-type
                                  event-bridge-rule-template-event-type
                                  :required common-lisp:t :member-name
                                  "EventType" :json-name "eventType")
                                 (group-identifier :target-type
                                  string-pattern-s :required common-lisp:t
                                  :member-name "GroupIdentifier" :json-name
                                  "groupIdentifier")
                                 (name :target-type string-min1max255pattern-s
                                  :required common-lisp:t :member-name "Name"
                                  :json-name "name")
                                 (tags :target-type tag-map :member-name "Tags"
                                  :json-name "tags")
                                 (request-id :target-type
                                  string-min1max256pattern-s :member-name
                                  "RequestId" :json-name "requestId"))
                                (:shape-name
                                 "CreateEventBridgeRuleTemplateRequest"))

(smithy/sdk/shapes:define-output create-event-bridge-rule-template-response
                                 common-lisp:nil
                                 ((arn :target-type
                                   string-pattern-arn-medialive-eventbridge-rule-template
                                   :member-name "Arn" :json-name "arn")
                                  (created-at :target-type timestamp-iso8601
                                   :member-name "CreatedAt" :json-name
                                   "createdAt")
                                  (description :target-type string-min0max1024
                                   :member-name "Description" :json-name
                                   "description")
                                  (event-targets :target-type
                                   list-of-event-bridge-rule-template-target
                                   :member-name "EventTargets" :json-name
                                   "eventTargets")
                                  (event-type :target-type
                                   event-bridge-rule-template-event-type
                                   :member-name "EventType" :json-name
                                   "eventType")
                                  (group-id :target-type
                                   string-min7max11pattern-aws097 :member-name
                                   "GroupId" :json-name "groupId")
                                  (id :target-type
                                   string-min7max11pattern-aws097 :member-name
                                   "Id" :json-name "id")
                                  (modified-at :target-type timestamp-iso8601
                                   :member-name "ModifiedAt" :json-name
                                   "modifiedAt")
                                  (name :target-type string-min1max255pattern-s
                                   :member-name "Name" :json-name "name")
                                  (tags :target-type tag-map :member-name
                                   "Tags" :json-name "tags"))
                                 (:shape-name
                                  "CreateEventBridgeRuleTemplateResponse"))

(smithy/sdk/shapes:define-input create-input-request common-lisp:nil
                                ((destinations :target-type
                                  list-of-input-destination-request
                                  :member-name "Destinations" :json-name
                                  "destinations")
                                 (input-devices :target-type
                                  list-of-input-device-settings :member-name
                                  "InputDevices" :json-name "inputDevices")
                                 (input-security-groups :target-type
                                  list-of-string :member-name
                                  "InputSecurityGroups" :json-name
                                  "inputSecurityGroups")
                                 (media-connect-flows :target-type
                                  list-of-media-connect-flow-request
                                  :member-name "MediaConnectFlows" :json-name
                                  "mediaConnectFlows")
                                 (name :target-type string :member-name "Name"
                                  :json-name "name")
                                 (request-id :target-type string :member-name
                                  "RequestId" :json-name "requestId")
                                 (role-arn :target-type string :member-name
                                  "RoleArn" :json-name "roleArn")
                                 (sources :target-type
                                  list-of-input-source-request :member-name
                                  "Sources" :json-name "sources")
                                 (tags :target-type tags :member-name "Tags"
                                  :json-name "tags")
                                 (type :target-type input-type :member-name
                                  "Type" :json-name "type")
                                 (vpc :target-type input-vpc-request
                                  :member-name "Vpc" :json-name "vpc")
                                 (srt-settings :target-type
                                  srt-settings-request :member-name
                                  "SrtSettings" :json-name "srtSettings")
                                 (input-network-location :target-type
                                  input-network-location :member-name
                                  "InputNetworkLocation" :json-name
                                  "inputNetworkLocation")
                                 (multicast-settings :target-type
                                  multicast-settings-create-request
                                  :member-name "MulticastSettings" :json-name
                                  "multicastSettings")
                                 (smpte2110receiver-group-settings :target-type
                                  smpte2110receiver-group-settings :member-name
                                  "Smpte2110ReceiverGroupSettings" :json-name
                                  "smpte2110ReceiverGroupSettings")
                                 (sdi-sources :target-type input-sdi-sources
                                  :member-name "SdiSources" :json-name
                                  "sdiSources"))
                                (:shape-name "CreateInputRequest"))

(smithy/sdk/shapes:define-output create-input-response common-lisp:nil
                                 ((input :target-type input :member-name
                                   "Input" :json-name "input"))
                                 (:shape-name "CreateInputResponse"))

(smithy/sdk/shapes:define-input create-input-security-group-request
                                common-lisp:nil
                                ((tags :target-type tags :member-name "Tags"
                                  :json-name "tags")
                                 (whitelist-rules :target-type
                                  list-of-input-whitelist-rule-cidr
                                  :member-name "WhitelistRules" :json-name
                                  "whitelistRules"))
                                (:shape-name "CreateInputSecurityGroupRequest"))

(smithy/sdk/shapes:define-output create-input-security-group-response
                                 common-lisp:nil
                                 ((security-group :target-type
                                   input-security-group :member-name
                                   "SecurityGroup" :json-name "securityGroup"))
                                 (:shape-name
                                  "CreateInputSecurityGroupResponse"))

(smithy/sdk/shapes:define-input create-multiplex-program-request
                                common-lisp:nil
                                ((multiplex-id :target-type string :required
                                  common-lisp:t :member-name "MultiplexId"
                                  :http-label common-lisp:t)
                                 (multiplex-program-settings :target-type
                                  multiplex-program-settings :required
                                  common-lisp:t :member-name
                                  "MultiplexProgramSettings" :json-name
                                  "multiplexProgramSettings")
                                 (program-name :target-type string :required
                                  common-lisp:t :member-name "ProgramName"
                                  :json-name "programName")
                                 (request-id :target-type string :required
                                  common-lisp:t :member-name "RequestId"
                                  :json-name "requestId"))
                                (:shape-name "CreateMultiplexProgramRequest"))

(smithy/sdk/shapes:define-output create-multiplex-program-response
                                 common-lisp:nil
                                 ((multiplex-program :target-type
                                   multiplex-program :member-name
                                   "MultiplexProgram" :json-name
                                   "multiplexProgram"))
                                 (:shape-name "CreateMultiplexProgramResponse"))

(smithy/sdk/shapes:define-input create-multiplex-request common-lisp:nil
                                ((availability-zones :target-type
                                  list-of-string :required common-lisp:t
                                  :member-name "AvailabilityZones" :json-name
                                  "availabilityZones")
                                 (multiplex-settings :target-type
                                  multiplex-settings :required common-lisp:t
                                  :member-name "MultiplexSettings" :json-name
                                  "multiplexSettings")
                                 (name :target-type string :required
                                  common-lisp:t :member-name "Name" :json-name
                                  "name")
                                 (request-id :target-type string :required
                                  common-lisp:t :member-name "RequestId"
                                  :json-name "requestId")
                                 (tags :target-type tags :member-name "Tags"
                                  :json-name "tags"))
                                (:shape-name "CreateMultiplexRequest"))

(smithy/sdk/shapes:define-output create-multiplex-response common-lisp:nil
                                 ((multiplex :target-type multiplex
                                   :member-name "Multiplex" :json-name
                                   "multiplex"))
                                 (:shape-name "CreateMultiplexResponse"))

(smithy/sdk/shapes:define-input create-network-request common-lisp:nil
                                ((ip-pools :target-type
                                  list-of-ip-pool-create-request :member-name
                                  "IpPools" :json-name "ipPools")
                                 (name :target-type string :member-name "Name"
                                  :json-name "name")
                                 (request-id :target-type string :member-name
                                  "RequestId" :json-name "requestId")
                                 (routes :target-type
                                  list-of-route-create-request :member-name
                                  "Routes" :json-name "routes")
                                 (tags :target-type tags :member-name "Tags"
                                  :json-name "tags"))
                                (:shape-name "CreateNetworkRequest"))

(smithy/sdk/shapes:define-output create-network-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (associated-cluster-ids :target-type
                                   list-of-string :member-name
                                   "AssociatedClusterIds" :json-name
                                   "associatedClusterIds")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (ip-pools :target-type list-of-ip-pool
                                   :member-name "IpPools" :json-name "ipPools")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name")
                                  (routes :target-type list-of-route
                                   :member-name "Routes" :json-name "routes")
                                  (state :target-type network-state
                                   :member-name "State" :json-name "state"))
                                 (:shape-name "CreateNetworkResponse"))

(smithy/sdk/shapes:define-input create-node-registration-script-request
                                common-lisp:nil
                                ((cluster-id :target-type string :required
                                  common-lisp:t :member-name "ClusterId"
                                  :http-label common-lisp:t)
                                 (id :target-type string :member-name "Id"
                                  :json-name "id")
                                 (name :target-type string :member-name "Name"
                                  :json-name "name")
                                 (node-interface-mappings :target-type
                                  list-of-node-interface-mapping :member-name
                                  "NodeInterfaceMappings" :json-name
                                  "nodeInterfaceMappings")
                                 (request-id :target-type string :member-name
                                  "RequestId" :json-name "requestId")
                                 (role :target-type node-role :member-name
                                  "Role" :json-name "role"))
                                (:shape-name
                                 "CreateNodeRegistrationScriptRequest"))

(smithy/sdk/shapes:define-output create-node-registration-script-response
                                 common-lisp:nil
                                 ((node-registration-script :target-type string
                                   :member-name "NodeRegistrationScript"
                                   :json-name "nodeRegistrationScript"))
                                 (:shape-name
                                  "CreateNodeRegistrationScriptResponse"))

(smithy/sdk/shapes:define-input create-node-request common-lisp:nil
                                ((cluster-id :target-type string :required
                                  common-lisp:t :member-name "ClusterId"
                                  :http-label common-lisp:t)
                                 (name :target-type string :member-name "Name"
                                  :json-name "name")
                                 (node-interface-mappings :target-type
                                  list-of-node-interface-mapping-create-request
                                  :member-name "NodeInterfaceMappings"
                                  :json-name "nodeInterfaceMappings")
                                 (request-id :target-type string :member-name
                                  "RequestId" :json-name "requestId")
                                 (role :target-type node-role :member-name
                                  "Role" :json-name "role")
                                 (tags :target-type tags :member-name "Tags"
                                  :json-name "tags"))
                                (:shape-name "CreateNodeRequest"))

(smithy/sdk/shapes:define-output create-node-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (channel-placement-groups :target-type
                                   list-of-string :member-name
                                   "ChannelPlacementGroups" :json-name
                                   "channelPlacementGroups")
                                  (cluster-id :target-type string :member-name
                                   "ClusterId" :json-name "clusterId")
                                  (connection-state :target-type
                                   node-connection-state :member-name
                                   "ConnectionState" :json-name
                                   "connectionState")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (instance-arn :target-type string
                                   :member-name "InstanceArn" :json-name
                                   "instanceArn")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name")
                                  (node-interface-mappings :target-type
                                   list-of-node-interface-mapping :member-name
                                   "NodeInterfaceMappings" :json-name
                                   "nodeInterfaceMappings")
                                  (role :target-type node-role :member-name
                                   "Role" :json-name "role")
                                  (state :target-type node-state :member-name
                                   "State" :json-name "state")
                                  (sdi-source-mappings :target-type
                                   sdi-source-mappings :member-name
                                   "SdiSourceMappings" :json-name
                                   "sdiSourceMappings"))
                                 (:shape-name "CreateNodeResponse"))

(smithy/sdk/shapes:define-input create-partner-input-request common-lisp:nil
                                ((input-id :target-type string :required
                                  common-lisp:t :member-name "InputId"
                                  :http-label common-lisp:t)
                                 (request-id :target-type string :member-name
                                  "RequestId" :json-name "requestId")
                                 (tags :target-type tags :member-name "Tags"
                                  :json-name "tags"))
                                (:shape-name "CreatePartnerInputRequest"))

(smithy/sdk/shapes:define-output create-partner-input-response common-lisp:nil
                                 ((input :target-type input :member-name
                                   "Input" :json-name "input"))
                                 (:shape-name "CreatePartnerInputResponse"))

(smithy/sdk/shapes:define-input create-sdi-source-request common-lisp:nil
                                ((mode :target-type sdi-source-mode
                                  :member-name "Mode" :json-name "mode")
                                 (name :target-type string :member-name "Name"
                                  :json-name "name")
                                 (request-id :target-type string :member-name
                                  "RequestId" :json-name "requestId")
                                 (tags :target-type tags :member-name "Tags"
                                  :json-name "tags")
                                 (type :target-type sdi-source-type
                                  :member-name "Type" :json-name "type"))
                                (:shape-name "CreateSdiSourceRequest"))

(smithy/sdk/shapes:define-output create-sdi-source-response common-lisp:nil
                                 ((sdi-source :target-type sdi-source
                                   :member-name "SdiSource" :json-name
                                   "sdiSource"))
                                 (:shape-name "CreateSdiSourceResponse"))

(smithy/sdk/shapes:define-input create-signal-map-request common-lisp:nil
                                ((cloud-watch-alarm-template-group-identifiers
                                  :target-type list-of-string-pattern-s
                                  :member-name
                                  "CloudWatchAlarmTemplateGroupIdentifiers"
                                  :json-name
                                  "cloudWatchAlarmTemplateGroupIdentifiers")
                                 (description :target-type string-min0max1024
                                  :member-name "Description" :json-name
                                  "description")
                                 (discovery-entry-point-arn :target-type
                                  string-min1max2048 :required common-lisp:t
                                  :member-name "DiscoveryEntryPointArn"
                                  :json-name "discoveryEntryPointArn")
                                 (event-bridge-rule-template-group-identifiers
                                  :target-type list-of-string-pattern-s
                                  :member-name
                                  "EventBridgeRuleTemplateGroupIdentifiers"
                                  :json-name
                                  "eventBridgeRuleTemplateGroupIdentifiers")
                                 (name :target-type string-min1max255pattern-s
                                  :required common-lisp:t :member-name "Name"
                                  :json-name "name")
                                 (tags :target-type tag-map :member-name "Tags"
                                  :json-name "tags")
                                 (request-id :target-type
                                  string-min1max256pattern-s :member-name
                                  "RequestId" :json-name "requestId"))
                                (:shape-name "CreateSignalMapRequest"))

(smithy/sdk/shapes:define-output create-signal-map-response common-lisp:nil
                                 ((arn :target-type
                                   string-pattern-arn-medialive-signal-map
                                   :member-name "Arn" :json-name "arn")
                                  (cloud-watch-alarm-template-group-ids
                                   :target-type
                                   list-of-string-min7max11pattern-aws097
                                   :member-name
                                   "CloudWatchAlarmTemplateGroupIds" :json-name
                                   "cloudWatchAlarmTemplateGroupIds")
                                  (created-at :target-type timestamp-iso8601
                                   :member-name "CreatedAt" :json-name
                                   "createdAt")
                                  (description :target-type string-min0max1024
                                   :member-name "Description" :json-name
                                   "description")
                                  (discovery-entry-point-arn :target-type
                                   string-min1max2048 :member-name
                                   "DiscoveryEntryPointArn" :json-name
                                   "discoveryEntryPointArn")
                                  (error-message :target-type
                                   string-min1max2048 :member-name
                                   "ErrorMessage" :json-name "errorMessage")
                                  (event-bridge-rule-template-group-ids
                                   :target-type
                                   list-of-string-min7max11pattern-aws097
                                   :member-name
                                   "EventBridgeRuleTemplateGroupIds" :json-name
                                   "eventBridgeRuleTemplateGroupIds")
                                  (failed-media-resource-map :target-type
                                   failed-media-resource-map :member-name
                                   "FailedMediaResourceMap" :json-name
                                   "failedMediaResourceMap")
                                  (id :target-type
                                   string-min7max11pattern-aws097 :member-name
                                   "Id" :json-name "id")
                                  (last-discovered-at :target-type
                                   timestamp-iso8601 :member-name
                                   "LastDiscoveredAt" :json-name
                                   "lastDiscoveredAt")
                                  (last-successful-monitor-deployment
                                   :target-type successful-monitor-deployment
                                   :member-name
                                   "LastSuccessfulMonitorDeployment" :json-name
                                   "lastSuccessfulMonitorDeployment")
                                  (media-resource-map :target-type
                                   media-resource-map :member-name
                                   "MediaResourceMap" :json-name
                                   "mediaResourceMap")
                                  (modified-at :target-type timestamp-iso8601
                                   :member-name "ModifiedAt" :json-name
                                   "modifiedAt")
                                  (monitor-changes-pending-deployment
                                   :target-type boolean :member-name
                                   "MonitorChangesPendingDeployment" :json-name
                                   "monitorChangesPendingDeployment")
                                  (monitor-deployment :target-type
                                   monitor-deployment :member-name
                                   "MonitorDeployment" :json-name
                                   "monitorDeployment")
                                  (name :target-type string-min1max255pattern-s
                                   :member-name "Name" :json-name "name")
                                  (status :target-type signal-map-status
                                   :member-name "Status" :json-name "status")
                                  (tags :target-type tag-map :member-name
                                   "Tags" :json-name "tags"))
                                 (:shape-name "CreateSignalMapResponse"))

(smithy/sdk/shapes:define-input create-tags-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tags :member-name "Tags"
                                  :json-name "tags"))
                                (:shape-name "CreateTagsRequest"))

(smithy/sdk/shapes:define-enum dash-role-audio
    common-lisp:nil
  (:alternate "ALTERNATE")
  (:commentary "COMMENTARY")
  (:description "DESCRIPTION")
  (:dub "DUB")
  (:emergency "EMERGENCY")
  (:enhanced-audio-intelligibility "ENHANCED-AUDIO-INTELLIGIBILITY")
  (:karaoke "KARAOKE")
  (:main "MAIN")
  (:supplementary "SUPPLEMENTARY"))

(smithy/sdk/shapes:define-enum dash-role-caption
    common-lisp:nil
  (:alternate "ALTERNATE")
  (:caption "CAPTION")
  (:commentary "COMMENTARY")
  (:description "DESCRIPTION")
  (:dub "DUB")
  (:easyreader "EASYREADER")
  (:emergency "EMERGENCY")
  (:forced-subtitle "FORCED-SUBTITLE")
  (:karaoke "KARAOKE")
  (:main "MAIN")
  (:metadata "METADATA")
  (:subtitle "SUBTITLE")
  (:supplementary "SUPPLEMENTARY"))

(smithy/sdk/shapes:define-input delete-channel-placement-group-request
                                common-lisp:nil
                                ((channel-placement-group-id :target-type
                                  string :required common-lisp:t :member-name
                                  "ChannelPlacementGroupId" :http-label
                                  common-lisp:t)
                                 (cluster-id :target-type string :required
                                  common-lisp:t :member-name "ClusterId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteChannelPlacementGroupRequest"))

(smithy/sdk/shapes:define-output delete-channel-placement-group-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (channels :target-type list-of-string
                                   :member-name "Channels" :json-name
                                   "channels")
                                  (cluster-id :target-type string :member-name
                                   "ClusterId" :json-name "clusterId")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name")
                                  (nodes :target-type list-of-string
                                   :member-name "Nodes" :json-name "nodes")
                                  (state :target-type
                                   channel-placement-group-state :member-name
                                   "State" :json-name "state"))
                                 (:shape-name
                                  "DeleteChannelPlacementGroupResponse"))

(smithy/sdk/shapes:define-input delete-channel-request common-lisp:nil
                                ((channel-id :target-type string :required
                                  common-lisp:t :member-name "ChannelId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteChannelRequest"))

(smithy/sdk/shapes:define-output delete-channel-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (cdi-input-specification :target-type
                                   cdi-input-specification :member-name
                                   "CdiInputSpecification" :json-name
                                   "cdiInputSpecification")
                                  (channel-class :target-type channel-class
                                   :member-name "ChannelClass" :json-name
                                   "channelClass")
                                  (destinations :target-type
                                   list-of-output-destination :member-name
                                   "Destinations" :json-name "destinations")
                                  (egress-endpoints :target-type
                                   list-of-channel-egress-endpoint :member-name
                                   "EgressEndpoints" :json-name
                                   "egressEndpoints")
                                  (encoder-settings :target-type
                                   encoder-settings :member-name
                                   "EncoderSettings" :json-name
                                   "encoderSettings")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (input-attachments :target-type
                                   list-of-input-attachment :member-name
                                   "InputAttachments" :json-name
                                   "inputAttachments")
                                  (input-specification :target-type
                                   input-specification :member-name
                                   "InputSpecification" :json-name
                                   "inputSpecification")
                                  (log-level :target-type log-level
                                   :member-name "LogLevel" :json-name
                                   "logLevel")
                                  (maintenance :target-type maintenance-status
                                   :member-name "Maintenance" :json-name
                                   "maintenance")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name")
                                  (pipeline-details :target-type
                                   list-of-pipeline-detail :member-name
                                   "PipelineDetails" :json-name
                                   "pipelineDetails")
                                  (pipelines-running-count :target-type integer
                                   :member-name "PipelinesRunningCount"
                                   :json-name "pipelinesRunningCount")
                                  (role-arn :target-type string :member-name
                                   "RoleArn" :json-name "roleArn")
                                  (state :target-type channel-state
                                   :member-name "State" :json-name "state")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags")
                                  (vpc :target-type
                                   vpc-output-settings-description :member-name
                                   "Vpc" :json-name "vpc")
                                  (anywhere-settings :target-type
                                   describe-anywhere-settings :member-name
                                   "AnywhereSettings" :json-name
                                   "anywhereSettings")
                                  (channel-engine-version :target-type
                                   channel-engine-version-response :member-name
                                   "ChannelEngineVersion" :json-name
                                   "channelEngineVersion"))
                                 (:shape-name "DeleteChannelResponse"))

(smithy/sdk/shapes:define-input delete-cloud-watch-alarm-template-group-request
                                common-lisp:nil
                                ((identifier :target-type string :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteCloudWatchAlarmTemplateGroupRequest"))

(smithy/sdk/shapes:define-input delete-cloud-watch-alarm-template-request
                                common-lisp:nil
                                ((identifier :target-type string :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteCloudWatchAlarmTemplateRequest"))

(smithy/sdk/shapes:define-input delete-cluster-request common-lisp:nil
                                ((cluster-id :target-type string :required
                                  common-lisp:t :member-name "ClusterId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteClusterRequest"))

(smithy/sdk/shapes:define-output delete-cluster-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (channel-ids :target-type list-of-string
                                   :member-name "ChannelIds" :json-name
                                   "channelIds")
                                  (cluster-type :target-type cluster-type
                                   :member-name "ClusterType" :json-name
                                   "clusterType")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (instance-role-arn :target-type string
                                   :member-name "InstanceRoleArn" :json-name
                                   "instanceRoleArn")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name")
                                  (network-settings :target-type
                                   cluster-network-settings :member-name
                                   "NetworkSettings" :json-name
                                   "networkSettings")
                                  (state :target-type cluster-state
                                   :member-name "State" :json-name "state"))
                                 (:shape-name "DeleteClusterResponse"))

(smithy/sdk/shapes:define-input delete-event-bridge-rule-template-group-request
                                common-lisp:nil
                                ((identifier :target-type string :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteEventBridgeRuleTemplateGroupRequest"))

(smithy/sdk/shapes:define-input delete-event-bridge-rule-template-request
                                common-lisp:nil
                                ((identifier :target-type string :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteEventBridgeRuleTemplateRequest"))

(smithy/sdk/shapes:define-input delete-input-request common-lisp:nil
                                ((input-id :target-type string :required
                                  common-lisp:t :member-name "InputId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteInputRequest"))

(smithy/sdk/shapes:define-output delete-input-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteInputResponse"))

(smithy/sdk/shapes:define-input delete-input-security-group-request
                                common-lisp:nil
                                ((input-security-group-id :target-type string
                                  :required common-lisp:t :member-name
                                  "InputSecurityGroupId" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteInputSecurityGroupRequest"))

(smithy/sdk/shapes:define-output delete-input-security-group-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteInputSecurityGroupResponse"))

(smithy/sdk/shapes:define-input delete-multiplex-program-request
                                common-lisp:nil
                                ((multiplex-id :target-type string :required
                                  common-lisp:t :member-name "MultiplexId"
                                  :http-label common-lisp:t)
                                 (program-name :target-type string :required
                                  common-lisp:t :member-name "ProgramName"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteMultiplexProgramRequest"))

(smithy/sdk/shapes:define-output delete-multiplex-program-response
                                 common-lisp:nil
                                 ((channel-id :target-type string :member-name
                                   "ChannelId" :json-name "channelId")
                                  (multiplex-program-settings :target-type
                                   multiplex-program-settings :member-name
                                   "MultiplexProgramSettings" :json-name
                                   "multiplexProgramSettings")
                                  (packet-identifiers-map :target-type
                                   multiplex-program-packet-identifiers-map
                                   :member-name "PacketIdentifiersMap"
                                   :json-name "packetIdentifiersMap")
                                  (pipeline-details :target-type
                                   list-of-multiplex-program-pipeline-detail
                                   :member-name "PipelineDetails" :json-name
                                   "pipelineDetails")
                                  (program-name :target-type string
                                   :member-name "ProgramName" :json-name
                                   "programName"))
                                 (:shape-name "DeleteMultiplexProgramResponse"))

(smithy/sdk/shapes:define-input delete-multiplex-request common-lisp:nil
                                ((multiplex-id :target-type string :required
                                  common-lisp:t :member-name "MultiplexId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteMultiplexRequest"))

(smithy/sdk/shapes:define-output delete-multiplex-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (availability-zones :target-type
                                   list-of-string :member-name
                                   "AvailabilityZones" :json-name
                                   "availabilityZones")
                                  (destinations :target-type
                                   list-of-multiplex-output-destination
                                   :member-name "Destinations" :json-name
                                   "destinations")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (multiplex-settings :target-type
                                   multiplex-settings :member-name
                                   "MultiplexSettings" :json-name
                                   "multiplexSettings")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name")
                                  (pipelines-running-count :target-type integer
                                   :member-name "PipelinesRunningCount"
                                   :json-name "pipelinesRunningCount")
                                  (program-count :target-type integer
                                   :member-name "ProgramCount" :json-name
                                   "programCount")
                                  (state :target-type multiplex-state
                                   :member-name "State" :json-name "state")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "DeleteMultiplexResponse"))

(smithy/sdk/shapes:define-input delete-network-request common-lisp:nil
                                ((network-id :target-type string :required
                                  common-lisp:t :member-name "NetworkId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteNetworkRequest"))

(smithy/sdk/shapes:define-output delete-network-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (associated-cluster-ids :target-type
                                   list-of-string :member-name
                                   "AssociatedClusterIds" :json-name
                                   "associatedClusterIds")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (ip-pools :target-type list-of-ip-pool
                                   :member-name "IpPools" :json-name "ipPools")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name")
                                  (routes :target-type list-of-route
                                   :member-name "Routes" :json-name "routes")
                                  (state :target-type network-state
                                   :member-name "State" :json-name "state"))
                                 (:shape-name "DeleteNetworkResponse"))

(smithy/sdk/shapes:define-input delete-node-request common-lisp:nil
                                ((cluster-id :target-type string :required
                                  common-lisp:t :member-name "ClusterId"
                                  :http-label common-lisp:t)
                                 (node-id :target-type string :required
                                  common-lisp:t :member-name "NodeId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteNodeRequest"))

(smithy/sdk/shapes:define-output delete-node-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (channel-placement-groups :target-type
                                   list-of-string :member-name
                                   "ChannelPlacementGroups" :json-name
                                   "channelPlacementGroups")
                                  (cluster-id :target-type string :member-name
                                   "ClusterId" :json-name "clusterId")
                                  (connection-state :target-type
                                   node-connection-state :member-name
                                   "ConnectionState" :json-name
                                   "connectionState")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (instance-arn :target-type string
                                   :member-name "InstanceArn" :json-name
                                   "instanceArn")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name")
                                  (node-interface-mappings :target-type
                                   list-of-node-interface-mapping :member-name
                                   "NodeInterfaceMappings" :json-name
                                   "nodeInterfaceMappings")
                                  (role :target-type node-role :member-name
                                   "Role" :json-name "role")
                                  (state :target-type node-state :member-name
                                   "State" :json-name "state")
                                  (sdi-source-mappings :target-type
                                   sdi-source-mappings :member-name
                                   "SdiSourceMappings" :json-name
                                   "sdiSourceMappings"))
                                 (:shape-name "DeleteNodeResponse"))

(smithy/sdk/shapes:define-input delete-reservation-request common-lisp:nil
                                ((reservation-id :target-type string :required
                                  common-lisp:t :member-name "ReservationId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteReservationRequest"))

(smithy/sdk/shapes:define-output delete-reservation-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (count :target-type integer :member-name
                                   "Count" :json-name "count")
                                  (currency-code :target-type string
                                   :member-name "CurrencyCode" :json-name
                                   "currencyCode")
                                  (duration :target-type integer :member-name
                                   "Duration" :json-name "duration")
                                  (duration-units :target-type
                                   offering-duration-units :member-name
                                   "DurationUnits" :json-name "durationUnits")
                                  (end :target-type string :member-name "End"
                                   :json-name "end")
                                  (fixed-price :target-type double :member-name
                                   "FixedPrice" :json-name "fixedPrice")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name")
                                  (offering-description :target-type string
                                   :member-name "OfferingDescription"
                                   :json-name "offeringDescription")
                                  (offering-id :target-type string :member-name
                                   "OfferingId" :json-name "offeringId")
                                  (offering-type :target-type offering-type
                                   :member-name "OfferingType" :json-name
                                   "offeringType")
                                  (region :target-type string :member-name
                                   "Region" :json-name "region")
                                  (renewal-settings :target-type
                                   renewal-settings :member-name
                                   "RenewalSettings" :json-name
                                   "renewalSettings")
                                  (reservation-id :target-type string
                                   :member-name "ReservationId" :json-name
                                   "reservationId")
                                  (resource-specification :target-type
                                   reservation-resource-specification
                                   :member-name "ResourceSpecification"
                                   :json-name "resourceSpecification")
                                  (start :target-type string :member-name
                                   "Start" :json-name "start")
                                  (state :target-type reservation-state
                                   :member-name "State" :json-name "state")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags")
                                  (usage-price :target-type double :member-name
                                   "UsagePrice" :json-name "usagePrice"))
                                 (:shape-name "DeleteReservationResponse"))

(smithy/sdk/shapes:define-input delete-schedule-request common-lisp:nil
                                ((channel-id :target-type string :required
                                  common-lisp:t :member-name "ChannelId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteScheduleRequest"))

(smithy/sdk/shapes:define-output delete-schedule-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteScheduleResponse"))

(smithy/sdk/shapes:define-input delete-sdi-source-request common-lisp:nil
                                ((sdi-source-id :target-type string :required
                                  common-lisp:t :member-name "SdiSourceId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteSdiSourceRequest"))

(smithy/sdk/shapes:define-output delete-sdi-source-response common-lisp:nil
                                 ((sdi-source :target-type sdi-source
                                   :member-name "SdiSource" :json-name
                                   "sdiSource"))
                                 (:shape-name "DeleteSdiSourceResponse"))

(smithy/sdk/shapes:define-input delete-signal-map-request common-lisp:nil
                                ((identifier :target-type string :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteSignalMapRequest"))

(smithy/sdk/shapes:define-input delete-tags-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type list-of-string
                                  :required common-lisp:t :member-name
                                  "TagKeys" :http-query "tagKeys"))
                                (:shape-name "DeleteTagsRequest"))

(smithy/sdk/shapes:define-input describe-account-configuration-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "DescribeAccountConfigurationRequest"))

(smithy/sdk/shapes:define-output describe-account-configuration-response
                                 common-lisp:nil
                                 ((account-configuration :target-type
                                   account-configuration :member-name
                                   "AccountConfiguration" :json-name
                                   "accountConfiguration"))
                                 (:shape-name
                                  "DescribeAccountConfigurationResponse"))

(smithy/sdk/shapes:define-structure describe-anywhere-settings common-lisp:nil
                                    ((channel-placement-group-id :target-type
                                      string :member-name
                                      "ChannelPlacementGroupId" :json-name
                                      "channelPlacementGroupId")
                                     (cluster-id :target-type string
                                      :member-name "ClusterId" :json-name
                                      "clusterId"))
                                    (:shape-name "DescribeAnywhereSettings"))

(smithy/sdk/shapes:define-input describe-channel-placement-group-request
                                common-lisp:nil
                                ((channel-placement-group-id :target-type
                                  string :required common-lisp:t :member-name
                                  "ChannelPlacementGroupId" :http-label
                                  common-lisp:t)
                                 (cluster-id :target-type string :required
                                  common-lisp:t :member-name "ClusterId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DescribeChannelPlacementGroupRequest"))

(smithy/sdk/shapes:define-output describe-channel-placement-group-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (channels :target-type list-of-string
                                   :member-name "Channels" :json-name
                                   "channels")
                                  (cluster-id :target-type string :member-name
                                   "ClusterId" :json-name "clusterId")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name")
                                  (nodes :target-type list-of-string
                                   :member-name "Nodes" :json-name "nodes")
                                  (state :target-type
                                   channel-placement-group-state :member-name
                                   "State" :json-name "state"))
                                 (:shape-name
                                  "DescribeChannelPlacementGroupResponse"))

(smithy/sdk/shapes:define-structure describe-channel-placement-group-summary
                                    common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn" :json-name "arn")
                                     (channels :target-type list-of-string
                                      :member-name "Channels" :json-name
                                      "channels")
                                     (cluster-id :target-type string
                                      :member-name "ClusterId" :json-name
                                      "clusterId")
                                     (id :target-type string :member-name "Id"
                                      :json-name "id")
                                     (name :target-type string :member-name
                                      "Name" :json-name "name")
                                     (nodes :target-type list-of-string
                                      :member-name "Nodes" :json-name "nodes")
                                     (state :target-type
                                      channel-placement-group-state
                                      :member-name "State" :json-name "state"))
                                    (:shape-name
                                     "DescribeChannelPlacementGroupSummary"))

(smithy/sdk/shapes:define-input describe-channel-request common-lisp:nil
                                ((channel-id :target-type string :required
                                  common-lisp:t :member-name "ChannelId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeChannelRequest"))

(smithy/sdk/shapes:define-output describe-channel-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (cdi-input-specification :target-type
                                   cdi-input-specification :member-name
                                   "CdiInputSpecification" :json-name
                                   "cdiInputSpecification")
                                  (channel-class :target-type channel-class
                                   :member-name "ChannelClass" :json-name
                                   "channelClass")
                                  (destinations :target-type
                                   list-of-output-destination :member-name
                                   "Destinations" :json-name "destinations")
                                  (egress-endpoints :target-type
                                   list-of-channel-egress-endpoint :member-name
                                   "EgressEndpoints" :json-name
                                   "egressEndpoints")
                                  (encoder-settings :target-type
                                   encoder-settings :member-name
                                   "EncoderSettings" :json-name
                                   "encoderSettings")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (input-attachments :target-type
                                   list-of-input-attachment :member-name
                                   "InputAttachments" :json-name
                                   "inputAttachments")
                                  (input-specification :target-type
                                   input-specification :member-name
                                   "InputSpecification" :json-name
                                   "inputSpecification")
                                  (log-level :target-type log-level
                                   :member-name "LogLevel" :json-name
                                   "logLevel")
                                  (maintenance :target-type maintenance-status
                                   :member-name "Maintenance" :json-name
                                   "maintenance")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name")
                                  (pipeline-details :target-type
                                   list-of-pipeline-detail :member-name
                                   "PipelineDetails" :json-name
                                   "pipelineDetails")
                                  (pipelines-running-count :target-type integer
                                   :member-name "PipelinesRunningCount"
                                   :json-name "pipelinesRunningCount")
                                  (role-arn :target-type string :member-name
                                   "RoleArn" :json-name "roleArn")
                                  (state :target-type channel-state
                                   :member-name "State" :json-name "state")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags")
                                  (vpc :target-type
                                   vpc-output-settings-description :member-name
                                   "Vpc" :json-name "vpc")
                                  (anywhere-settings :target-type
                                   describe-anywhere-settings :member-name
                                   "AnywhereSettings" :json-name
                                   "anywhereSettings")
                                  (channel-engine-version :target-type
                                   channel-engine-version-response :member-name
                                   "ChannelEngineVersion" :json-name
                                   "channelEngineVersion"))
                                 (:shape-name "DescribeChannelResponse"))

(smithy/sdk/shapes:define-input describe-cluster-request common-lisp:nil
                                ((cluster-id :target-type string :required
                                  common-lisp:t :member-name "ClusterId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeClusterRequest"))

(smithy/sdk/shapes:define-output describe-cluster-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (channel-ids :target-type list-of-string
                                   :member-name "ChannelIds" :json-name
                                   "channelIds")
                                  (cluster-type :target-type cluster-type
                                   :member-name "ClusterType" :json-name
                                   "clusterType")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (instance-role-arn :target-type string
                                   :member-name "InstanceRoleArn" :json-name
                                   "instanceRoleArn")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name")
                                  (network-settings :target-type
                                   cluster-network-settings :member-name
                                   "NetworkSettings" :json-name
                                   "networkSettings")
                                  (state :target-type cluster-state
                                   :member-name "State" :json-name "state"))
                                 (:shape-name "DescribeClusterResponse"))

(smithy/sdk/shapes:define-structure describe-cluster-summary common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn" :json-name "arn")
                                     (channel-ids :target-type list-of-string
                                      :member-name "ChannelIds" :json-name
                                      "channelIds")
                                     (cluster-type :target-type cluster-type
                                      :member-name "ClusterType" :json-name
                                      "clusterType")
                                     (id :target-type string :member-name "Id"
                                      :json-name "id")
                                     (instance-role-arn :target-type string
                                      :member-name "InstanceRoleArn" :json-name
                                      "instanceRoleArn")
                                     (name :target-type string :member-name
                                      "Name" :json-name "name")
                                     (network-settings :target-type
                                      cluster-network-settings :member-name
                                      "NetworkSettings" :json-name
                                      "networkSettings")
                                     (state :target-type cluster-state
                                      :member-name "State" :json-name "state"))
                                    (:shape-name "DescribeClusterSummary"))

(smithy/sdk/shapes:define-input describe-input-device-request common-lisp:nil
                                ((input-device-id :target-type string :required
                                  common-lisp:t :member-name "InputDeviceId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeInputDeviceRequest"))

(smithy/sdk/shapes:define-output describe-input-device-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (connection-state :target-type
                                   input-device-connection-state :member-name
                                   "ConnectionState" :json-name
                                   "connectionState")
                                  (device-settings-sync-state :target-type
                                   device-settings-sync-state :member-name
                                   "DeviceSettingsSyncState" :json-name
                                   "deviceSettingsSyncState")
                                  (device-update-status :target-type
                                   device-update-status :member-name
                                   "DeviceUpdateStatus" :json-name
                                   "deviceUpdateStatus")
                                  (hd-device-settings :target-type
                                   input-device-hd-settings :member-name
                                   "HdDeviceSettings" :json-name
                                   "hdDeviceSettings")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (mac-address :target-type string :member-name
                                   "MacAddress" :json-name "macAddress")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name")
                                  (network-settings :target-type
                                   input-device-network-settings :member-name
                                   "NetworkSettings" :json-name
                                   "networkSettings")
                                  (serial-number :target-type string
                                   :member-name "SerialNumber" :json-name
                                   "serialNumber")
                                  (type :target-type input-device-type
                                   :member-name "Type" :json-name "type")
                                  (uhd-device-settings :target-type
                                   input-device-uhd-settings :member-name
                                   "UhdDeviceSettings" :json-name
                                   "uhdDeviceSettings")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags")
                                  (availability-zone :target-type string
                                   :member-name "AvailabilityZone" :json-name
                                   "availabilityZone")
                                  (medialive-input-arns :target-type
                                   list-of-string :member-name
                                   "MedialiveInputArns" :json-name
                                   "medialiveInputArns")
                                  (output-type :target-type
                                   input-device-output-type :member-name
                                   "OutputType" :json-name "outputType"))
                                 (:shape-name "DescribeInputDeviceResponse"))

(smithy/sdk/shapes:define-input describe-input-device-thumbnail-request
                                common-lisp:nil
                                ((input-device-id :target-type string :required
                                  common-lisp:t :member-name "InputDeviceId"
                                  :http-label common-lisp:t)
                                 (accept :target-type accept-header :required
                                  common-lisp:t :member-name "Accept"
                                  :http-header "accept"))
                                (:shape-name
                                 "DescribeInputDeviceThumbnailRequest"))

(smithy/sdk/shapes:define-output describe-input-device-thumbnail-response
                                 common-lisp:nil
                                 ((body :target-type input-device-thumbnail
                                   :member-name "Body" :http-payload
                                   common-lisp:t :json-name "body")
                                  (content-type :target-type content-type
                                   :member-name "ContentType" :http-header
                                   "Content-Type")
                                  (content-length :target-type long
                                   :member-name "ContentLength" :http-header
                                   "Content-Length")
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag")
                                  (last-modified :target-type timestamp
                                   :member-name "LastModified" :http-header
                                   "Last-Modified"))
                                 (:shape-name
                                  "DescribeInputDeviceThumbnailResponse"))

(smithy/sdk/shapes:define-input describe-input-request common-lisp:nil
                                ((input-id :target-type string :required
                                  common-lisp:t :member-name "InputId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeInputRequest"))

(smithy/sdk/shapes:define-output describe-input-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (attached-channels :target-type
                                   list-of-string :member-name
                                   "AttachedChannels" :json-name
                                   "attachedChannels")
                                  (destinations :target-type
                                   list-of-input-destination :member-name
                                   "Destinations" :json-name "destinations")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (input-class :target-type input-class
                                   :member-name "InputClass" :json-name
                                   "inputClass")
                                  (input-devices :target-type
                                   list-of-input-device-settings :member-name
                                   "InputDevices" :json-name "inputDevices")
                                  (input-partner-ids :target-type
                                   list-of-string :member-name
                                   "InputPartnerIds" :json-name
                                   "inputPartnerIds")
                                  (input-source-type :target-type
                                   input-source-type :member-name
                                   "InputSourceType" :json-name
                                   "inputSourceType")
                                  (media-connect-flows :target-type
                                   list-of-media-connect-flow :member-name
                                   "MediaConnectFlows" :json-name
                                   "mediaConnectFlows")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name")
                                  (role-arn :target-type string :member-name
                                   "RoleArn" :json-name "roleArn")
                                  (security-groups :target-type list-of-string
                                   :member-name "SecurityGroups" :json-name
                                   "securityGroups")
                                  (sources :target-type list-of-input-source
                                   :member-name "Sources" :json-name "sources")
                                  (state :target-type input-state :member-name
                                   "State" :json-name "state")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags")
                                  (type :target-type input-type :member-name
                                   "Type" :json-name "type")
                                  (srt-settings :target-type srt-settings
                                   :member-name "SrtSettings" :json-name
                                   "srtSettings")
                                  (input-network-location :target-type
                                   input-network-location :member-name
                                   "InputNetworkLocation" :json-name
                                   "inputNetworkLocation")
                                  (multicast-settings :target-type
                                   multicast-settings :member-name
                                   "MulticastSettings" :json-name
                                   "multicastSettings")
                                  (smpte2110receiver-group-settings
                                   :target-type
                                   smpte2110receiver-group-settings
                                   :member-name
                                   "Smpte2110ReceiverGroupSettings" :json-name
                                   "smpte2110ReceiverGroupSettings")
                                  (sdi-sources :target-type input-sdi-sources
                                   :member-name "SdiSources" :json-name
                                   "sdiSources"))
                                 (:shape-name "DescribeInputResponse"))

(smithy/sdk/shapes:define-input describe-input-security-group-request
                                common-lisp:nil
                                ((input-security-group-id :target-type string
                                  :required common-lisp:t :member-name
                                  "InputSecurityGroupId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DescribeInputSecurityGroupRequest"))

(smithy/sdk/shapes:define-output describe-input-security-group-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (inputs :target-type list-of-string
                                   :member-name "Inputs" :json-name "inputs")
                                  (state :target-type
                                   input-security-group-state :member-name
                                   "State" :json-name "state")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags")
                                  (whitelist-rules :target-type
                                   list-of-input-whitelist-rule :member-name
                                   "WhitelistRules" :json-name
                                   "whitelistRules"))
                                 (:shape-name
                                  "DescribeInputSecurityGroupResponse"))

(smithy/sdk/shapes:define-input describe-multiplex-program-request
                                common-lisp:nil
                                ((multiplex-id :target-type string :required
                                  common-lisp:t :member-name "MultiplexId"
                                  :http-label common-lisp:t)
                                 (program-name :target-type string :required
                                  common-lisp:t :member-name "ProgramName"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeMultiplexProgramRequest"))

(smithy/sdk/shapes:define-output describe-multiplex-program-response
                                 common-lisp:nil
                                 ((channel-id :target-type string :member-name
                                   "ChannelId" :json-name "channelId")
                                  (multiplex-program-settings :target-type
                                   multiplex-program-settings :member-name
                                   "MultiplexProgramSettings" :json-name
                                   "multiplexProgramSettings")
                                  (packet-identifiers-map :target-type
                                   multiplex-program-packet-identifiers-map
                                   :member-name "PacketIdentifiersMap"
                                   :json-name "packetIdentifiersMap")
                                  (pipeline-details :target-type
                                   list-of-multiplex-program-pipeline-detail
                                   :member-name "PipelineDetails" :json-name
                                   "pipelineDetails")
                                  (program-name :target-type string
                                   :member-name "ProgramName" :json-name
                                   "programName"))
                                 (:shape-name
                                  "DescribeMultiplexProgramResponse"))

(smithy/sdk/shapes:define-input describe-multiplex-request common-lisp:nil
                                ((multiplex-id :target-type string :required
                                  common-lisp:t :member-name "MultiplexId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeMultiplexRequest"))

(smithy/sdk/shapes:define-output describe-multiplex-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (availability-zones :target-type
                                   list-of-string :member-name
                                   "AvailabilityZones" :json-name
                                   "availabilityZones")
                                  (destinations :target-type
                                   list-of-multiplex-output-destination
                                   :member-name "Destinations" :json-name
                                   "destinations")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (multiplex-settings :target-type
                                   multiplex-settings :member-name
                                   "MultiplexSettings" :json-name
                                   "multiplexSettings")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name")
                                  (pipelines-running-count :target-type integer
                                   :member-name "PipelinesRunningCount"
                                   :json-name "pipelinesRunningCount")
                                  (program-count :target-type integer
                                   :member-name "ProgramCount" :json-name
                                   "programCount")
                                  (state :target-type multiplex-state
                                   :member-name "State" :json-name "state")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "DescribeMultiplexResponse"))

(smithy/sdk/shapes:define-input describe-network-request common-lisp:nil
                                ((network-id :target-type string :required
                                  common-lisp:t :member-name "NetworkId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeNetworkRequest"))

(smithy/sdk/shapes:define-output describe-network-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (associated-cluster-ids :target-type
                                   list-of-string :member-name
                                   "AssociatedClusterIds" :json-name
                                   "associatedClusterIds")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (ip-pools :target-type list-of-ip-pool
                                   :member-name "IpPools" :json-name "ipPools")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name")
                                  (routes :target-type list-of-route
                                   :member-name "Routes" :json-name "routes")
                                  (state :target-type network-state
                                   :member-name "State" :json-name "state"))
                                 (:shape-name "DescribeNetworkResponse"))

(smithy/sdk/shapes:define-structure describe-network-summary common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn" :json-name "arn")
                                     (associated-cluster-ids :target-type
                                      list-of-string :member-name
                                      "AssociatedClusterIds" :json-name
                                      "associatedClusterIds")
                                     (id :target-type string :member-name "Id"
                                      :json-name "id")
                                     (ip-pools :target-type list-of-ip-pool
                                      :member-name "IpPools" :json-name
                                      "ipPools")
                                     (name :target-type string :member-name
                                      "Name" :json-name "name")
                                     (routes :target-type list-of-route
                                      :member-name "Routes" :json-name
                                      "routes")
                                     (state :target-type network-state
                                      :member-name "State" :json-name "state"))
                                    (:shape-name "DescribeNetworkSummary"))

(smithy/sdk/shapes:define-input describe-node-request common-lisp:nil
                                ((cluster-id :target-type string :required
                                  common-lisp:t :member-name "ClusterId"
                                  :http-label common-lisp:t)
                                 (node-id :target-type string :required
                                  common-lisp:t :member-name "NodeId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeNodeRequest"))

(smithy/sdk/shapes:define-output describe-node-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (channel-placement-groups :target-type
                                   list-of-string :member-name
                                   "ChannelPlacementGroups" :json-name
                                   "channelPlacementGroups")
                                  (cluster-id :target-type string :member-name
                                   "ClusterId" :json-name "clusterId")
                                  (connection-state :target-type
                                   node-connection-state :member-name
                                   "ConnectionState" :json-name
                                   "connectionState")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (instance-arn :target-type string
                                   :member-name "InstanceArn" :json-name
                                   "instanceArn")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name")
                                  (node-interface-mappings :target-type
                                   list-of-node-interface-mapping :member-name
                                   "NodeInterfaceMappings" :json-name
                                   "nodeInterfaceMappings")
                                  (role :target-type node-role :member-name
                                   "Role" :json-name "role")
                                  (state :target-type node-state :member-name
                                   "State" :json-name "state")
                                  (sdi-source-mappings :target-type
                                   sdi-source-mappings :member-name
                                   "SdiSourceMappings" :json-name
                                   "sdiSourceMappings"))
                                 (:shape-name "DescribeNodeResponse"))

(smithy/sdk/shapes:define-structure describe-node-summary common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn" :json-name "arn")
                                     (channel-placement-groups :target-type
                                      list-of-string :member-name
                                      "ChannelPlacementGroups" :json-name
                                      "channelPlacementGroups")
                                     (cluster-id :target-type string
                                      :member-name "ClusterId" :json-name
                                      "clusterId")
                                     (connection-state :target-type
                                      node-connection-state :member-name
                                      "ConnectionState" :json-name
                                      "connectionState")
                                     (id :target-type string :member-name "Id"
                                      :json-name "id")
                                     (instance-arn :target-type string
                                      :member-name "InstanceArn" :json-name
                                      "instanceArn")
                                     (managed-instance-id :target-type string
                                      :member-name "ManagedInstanceId"
                                      :json-name "managedInstanceId")
                                     (name :target-type string :member-name
                                      "Name" :json-name "name")
                                     (node-interface-mappings :target-type
                                      list-of-node-interface-mapping
                                      :member-name "NodeInterfaceMappings"
                                      :json-name "nodeInterfaceMappings")
                                     (role :target-type node-role :member-name
                                      "Role" :json-name "role")
                                     (state :target-type node-state
                                      :member-name "State" :json-name "state")
                                     (sdi-source-mappings :target-type
                                      sdi-source-mappings :member-name
                                      "SdiSourceMappings" :json-name
                                      "sdiSourceMappings"))
                                    (:shape-name "DescribeNodeSummary"))

(smithy/sdk/shapes:define-input describe-offering-request common-lisp:nil
                                ((offering-id :target-type string :required
                                  common-lisp:t :member-name "OfferingId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeOfferingRequest"))

(smithy/sdk/shapes:define-output describe-offering-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (currency-code :target-type string
                                   :member-name "CurrencyCode" :json-name
                                   "currencyCode")
                                  (duration :target-type integer :member-name
                                   "Duration" :json-name "duration")
                                  (duration-units :target-type
                                   offering-duration-units :member-name
                                   "DurationUnits" :json-name "durationUnits")
                                  (fixed-price :target-type double :member-name
                                   "FixedPrice" :json-name "fixedPrice")
                                  (offering-description :target-type string
                                   :member-name "OfferingDescription"
                                   :json-name "offeringDescription")
                                  (offering-id :target-type string :member-name
                                   "OfferingId" :json-name "offeringId")
                                  (offering-type :target-type offering-type
                                   :member-name "OfferingType" :json-name
                                   "offeringType")
                                  (region :target-type string :member-name
                                   "Region" :json-name "region")
                                  (resource-specification :target-type
                                   reservation-resource-specification
                                   :member-name "ResourceSpecification"
                                   :json-name "resourceSpecification")
                                  (usage-price :target-type double :member-name
                                   "UsagePrice" :json-name "usagePrice"))
                                 (:shape-name "DescribeOfferingResponse"))

(smithy/sdk/shapes:define-input describe-reservation-request common-lisp:nil
                                ((reservation-id :target-type string :required
                                  common-lisp:t :member-name "ReservationId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeReservationRequest"))

(smithy/sdk/shapes:define-output describe-reservation-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (count :target-type integer :member-name
                                   "Count" :json-name "count")
                                  (currency-code :target-type string
                                   :member-name "CurrencyCode" :json-name
                                   "currencyCode")
                                  (duration :target-type integer :member-name
                                   "Duration" :json-name "duration")
                                  (duration-units :target-type
                                   offering-duration-units :member-name
                                   "DurationUnits" :json-name "durationUnits")
                                  (end :target-type string :member-name "End"
                                   :json-name "end")
                                  (fixed-price :target-type double :member-name
                                   "FixedPrice" :json-name "fixedPrice")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name")
                                  (offering-description :target-type string
                                   :member-name "OfferingDescription"
                                   :json-name "offeringDescription")
                                  (offering-id :target-type string :member-name
                                   "OfferingId" :json-name "offeringId")
                                  (offering-type :target-type offering-type
                                   :member-name "OfferingType" :json-name
                                   "offeringType")
                                  (region :target-type string :member-name
                                   "Region" :json-name "region")
                                  (renewal-settings :target-type
                                   renewal-settings :member-name
                                   "RenewalSettings" :json-name
                                   "renewalSettings")
                                  (reservation-id :target-type string
                                   :member-name "ReservationId" :json-name
                                   "reservationId")
                                  (resource-specification :target-type
                                   reservation-resource-specification
                                   :member-name "ResourceSpecification"
                                   :json-name "resourceSpecification")
                                  (start :target-type string :member-name
                                   "Start" :json-name "start")
                                  (state :target-type reservation-state
                                   :member-name "State" :json-name "state")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags")
                                  (usage-price :target-type double :member-name
                                   "UsagePrice" :json-name "usagePrice"))
                                 (:shape-name "DescribeReservationResponse"))

(smithy/sdk/shapes:define-input describe-schedule-request common-lisp:nil
                                ((channel-id :target-type string :required
                                  common-lisp:t :member-name "ChannelId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "DescribeScheduleRequest"))

(smithy/sdk/shapes:define-output describe-schedule-response common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken")
                                  (schedule-actions :target-type
                                   list-of-schedule-action :member-name
                                   "ScheduleActions" :json-name
                                   "scheduleActions"))
                                 (:shape-name "DescribeScheduleResponse"))

(smithy/sdk/shapes:define-input describe-sdi-source-request common-lisp:nil
                                ((sdi-source-id :target-type string :required
                                  common-lisp:t :member-name "SdiSourceId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeSdiSourceRequest"))

(smithy/sdk/shapes:define-output describe-sdi-source-response common-lisp:nil
                                 ((sdi-source :target-type sdi-source
                                   :member-name "SdiSource" :json-name
                                   "sdiSource"))
                                 (:shape-name "DescribeSdiSourceResponse"))

(smithy/sdk/shapes:define-input describe-thumbnails-request common-lisp:nil
                                ((channel-id :target-type string :required
                                  common-lisp:t :member-name "ChannelId"
                                  :http-label common-lisp:t)
                                 (pipeline-id :target-type string :required
                                  common-lisp:t :member-name "PipelineId"
                                  :http-query "pipelineId")
                                 (thumbnail-type :target-type string :required
                                  common-lisp:t :member-name "ThumbnailType"
                                  :http-query "thumbnailType"))
                                (:shape-name "DescribeThumbnailsRequest"))

(smithy/sdk/shapes:define-output describe-thumbnails-response common-lisp:nil
                                 ((thumbnail-details :target-type
                                   list-of-thumbnail-detail :member-name
                                   "ThumbnailDetails" :json-name
                                   "thumbnailDetails"))
                                 (:shape-name "DescribeThumbnailsResponse"))

(smithy/sdk/shapes:define-enum device-settings-sync-state
    common-lisp:nil
  (:synced "SYNCED")
  (:syncing "SYNCING"))

(smithy/sdk/shapes:define-enum device-update-status
    common-lisp:nil
  (:up-to-date "UP_TO_DATE")
  (:not-up-to-date "NOT_UP_TO_DATE")
  (:updating "UPDATING"))

(smithy/sdk/shapes:define-enum dolby-eprogram-selection
    common-lisp:nil
  (:all-channels "ALL_CHANNELS")
  (:program-1 "PROGRAM_1")
  (:program-2 "PROGRAM_2")
  (:program-3 "PROGRAM_3")
  (:program-4 "PROGRAM_4")
  (:program-5 "PROGRAM_5")
  (:program-6 "PROGRAM_6")
  (:program-7 "PROGRAM_7")
  (:program-8 "PROGRAM_8"))

(smithy/sdk/shapes:define-structure dolby-vision81settings common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DolbyVision81Settings"))

(smithy/sdk/shapes:define-enum dvb-dash-accessibility
    common-lisp:nil
  (:dvbdash-1-visually-impaired "DVBDASH_1_VISUALLY_IMPAIRED")
  (:dvbdash-2-hard-of-hearing "DVBDASH_2_HARD_OF_HEARING")
  (:dvbdash-3-supplemental-commentary "DVBDASH_3_SUPPLEMENTAL_COMMENTARY")
  (:dvbdash-4-directors-commentary "DVBDASH_4_DIRECTORS_COMMENTARY")
  (:dvbdash-5-educational-notes "DVBDASH_5_EDUCATIONAL_NOTES")
  (:dvbdash-6-main-program "DVBDASH_6_MAIN_PROGRAM")
  (:dvbdash-7-clean-feed "DVBDASH_7_CLEAN_FEED"))

(smithy/sdk/shapes:define-structure dvb-nit-settings common-lisp:nil
                                    ((network-id :target-type
                                      integer-min0max65536 :required
                                      common-lisp:t :member-name "NetworkId"
                                      :json-name "networkId")
                                     (network-name :target-type
                                      string-min1max256 :required common-lisp:t
                                      :member-name "NetworkName" :json-name
                                      "networkName")
                                     (rep-interval :target-type
                                      integer-min25max10000 :member-name
                                      "RepInterval" :json-name "repInterval"))
                                    (:shape-name "DvbNitSettings"))

(smithy/sdk/shapes:define-enum dvb-sdt-output-sdt
    common-lisp:nil
  (:sdt-follow "SDT_FOLLOW")
  (:sdt-follow-if-present "SDT_FOLLOW_IF_PRESENT")
  (:sdt-manual "SDT_MANUAL")
  (:sdt-none "SDT_NONE"))

(smithy/sdk/shapes:define-structure dvb-sdt-settings common-lisp:nil
                                    ((output-sdt :target-type
                                      dvb-sdt-output-sdt :member-name
                                      "OutputSdt" :json-name "outputSdt")
                                     (rep-interval :target-type
                                      integer-min25max2000 :member-name
                                      "RepInterval" :json-name "repInterval")
                                     (service-name :target-type
                                      string-min1max256 :member-name
                                      "ServiceName" :json-name "serviceName")
                                     (service-provider-name :target-type
                                      string-min1max256 :member-name
                                      "ServiceProviderName" :json-name
                                      "serviceProviderName"))
                                    (:shape-name "DvbSdtSettings"))

(smithy/sdk/shapes:define-enum dvb-sub-destination-alignment
    common-lisp:nil
  (:centered "CENTERED")
  (:left "LEFT")
  (:smart "SMART"))

(smithy/sdk/shapes:define-enum dvb-sub-destination-background-color
    common-lisp:nil
  (:black "BLACK")
  (:none "NONE")
  (:white "WHITE"))

(smithy/sdk/shapes:define-enum dvb-sub-destination-font-color
    common-lisp:nil
  (:black "BLACK")
  (:blue "BLUE")
  (:green "GREEN")
  (:red "RED")
  (:white "WHITE")
  (:yellow "YELLOW"))

(smithy/sdk/shapes:define-enum dvb-sub-destination-outline-color
    common-lisp:nil
  (:black "BLACK")
  (:blue "BLUE")
  (:green "GREEN")
  (:red "RED")
  (:white "WHITE")
  (:yellow "YELLOW"))

(smithy/sdk/shapes:define-structure dvb-sub-destination-settings
                                    common-lisp:nil
                                    ((alignment :target-type
                                      dvb-sub-destination-alignment
                                      :member-name "Alignment" :json-name
                                      "alignment")
                                     (background-color :target-type
                                      dvb-sub-destination-background-color
                                      :member-name "BackgroundColor" :json-name
                                      "backgroundColor")
                                     (background-opacity :target-type
                                      integer-min0max255 :member-name
                                      "BackgroundOpacity" :json-name
                                      "backgroundOpacity")
                                     (font :target-type input-location
                                      :member-name "Font" :json-name "font")
                                     (font-color :target-type
                                      dvb-sub-destination-font-color
                                      :member-name "FontColor" :json-name
                                      "fontColor")
                                     (font-opacity :target-type
                                      integer-min0max255 :member-name
                                      "FontOpacity" :json-name "fontOpacity")
                                     (font-resolution :target-type
                                      integer-min96max600 :member-name
                                      "FontResolution" :json-name
                                      "fontResolution")
                                     (font-size :target-type string
                                      :member-name "FontSize" :json-name
                                      "fontSize")
                                     (outline-color :target-type
                                      dvb-sub-destination-outline-color
                                      :member-name "OutlineColor" :json-name
                                      "outlineColor")
                                     (outline-size :target-type
                                      integer-min0max10 :member-name
                                      "OutlineSize" :json-name "outlineSize")
                                     (shadow-color :target-type
                                      dvb-sub-destination-shadow-color
                                      :member-name "ShadowColor" :json-name
                                      "shadowColor")
                                     (shadow-opacity :target-type
                                      integer-min0max255 :member-name
                                      "ShadowOpacity" :json-name
                                      "shadowOpacity")
                                     (shadow-xoffset :target-type integer
                                      :member-name "ShadowXOffset" :json-name
                                      "shadowXOffset")
                                     (shadow-yoffset :target-type integer
                                      :member-name "ShadowYOffset" :json-name
                                      "shadowYOffset")
                                     (teletext-grid-control :target-type
                                      dvb-sub-destination-teletext-grid-control
                                      :member-name "TeletextGridControl"
                                      :json-name "teletextGridControl")
                                     (xposition :target-type integer-min0
                                      :member-name "XPosition" :json-name
                                      "xPosition")
                                     (yposition :target-type integer-min0
                                      :member-name "YPosition" :json-name
                                      "yPosition"))
                                    (:shape-name "DvbSubDestinationSettings"))

(smithy/sdk/shapes:define-enum dvb-sub-destination-shadow-color
    common-lisp:nil
  (:black "BLACK")
  (:none "NONE")
  (:white "WHITE"))

(smithy/sdk/shapes:define-enum dvb-sub-destination-teletext-grid-control
    common-lisp:nil
  (:fixed "FIXED")
  (:scaled "SCALED"))

(smithy/sdk/shapes:define-enum dvb-sub-ocr-language
    common-lisp:nil
  (:deu "DEU")
  (:eng "ENG")
  (:fra "FRA")
  (:nld "NLD")
  (:por "POR")
  (:spa "SPA"))

(smithy/sdk/shapes:define-structure dvb-sub-source-settings common-lisp:nil
                                    ((ocr-language :target-type
                                      dvb-sub-ocr-language :member-name
                                      "OcrLanguage" :json-name "ocrLanguage")
                                     (pid :target-type integer-min1
                                      :member-name "Pid" :json-name "pid"))
                                    (:shape-name "DvbSubSourceSettings"))

(smithy/sdk/shapes:define-structure dvb-tdt-settings common-lisp:nil
                                    ((rep-interval :target-type
                                      integer-min1000max30000 :member-name
                                      "RepInterval" :json-name "repInterval"))
                                    (:shape-name "DvbTdtSettings"))

(smithy/sdk/shapes:define-enum eac3atmos-coding-mode
    common-lisp:nil
  (:coding-mode-5-1-4 "CODING_MODE_5_1_4")
  (:coding-mode-7-1-4 "CODING_MODE_7_1_4")
  (:coding-mode-9-1-6 "CODING_MODE_9_1_6"))

(smithy/sdk/shapes:define-enum eac3atmos-drc-line
    common-lisp:nil
  (:film-light "FILM_LIGHT")
  (:film-standard "FILM_STANDARD")
  (:music-light "MUSIC_LIGHT")
  (:music-standard "MUSIC_STANDARD")
  (:none "NONE")
  (:speech "SPEECH"))

(smithy/sdk/shapes:define-enum eac3atmos-drc-rf
    common-lisp:nil
  (:film-light "FILM_LIGHT")
  (:film-standard "FILM_STANDARD")
  (:music-light "MUSIC_LIGHT")
  (:music-standard "MUSIC_STANDARD")
  (:none "NONE")
  (:speech "SPEECH"))

(smithy/sdk/shapes:define-structure eac3atmos-settings common-lisp:nil
                                    ((bitrate :target-type double :member-name
                                      "Bitrate" :json-name "bitrate")
                                     (coding-mode :target-type
                                      eac3atmos-coding-mode :member-name
                                      "CodingMode" :json-name "codingMode")
                                     (dialnorm :target-type integer-min1max31
                                      :member-name "Dialnorm" :json-name
                                      "dialnorm")
                                     (drc-line :target-type eac3atmos-drc-line
                                      :member-name "DrcLine" :json-name
                                      "drcLine")
                                     (drc-rf :target-type eac3atmos-drc-rf
                                      :member-name "DrcRf" :json-name "drcRf")
                                     (height-trim :target-type double
                                      :member-name "HeightTrim" :json-name
                                      "heightTrim")
                                     (surround-trim :target-type double
                                      :member-name "SurroundTrim" :json-name
                                      "surroundTrim"))
                                    (:shape-name "Eac3AtmosSettings"))

(smithy/sdk/shapes:define-enum eac3attenuation-control
    common-lisp:nil
  (:attenuate-3-db "ATTENUATE_3_DB")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum eac3bitstream-mode
    common-lisp:nil
  (:commentary "COMMENTARY")
  (:complete-main "COMPLETE_MAIN")
  (:emergency "EMERGENCY")
  (:hearing-impaired "HEARING_IMPAIRED")
  (:visually-impaired "VISUALLY_IMPAIRED"))

(smithy/sdk/shapes:define-enum eac3coding-mode
    common-lisp:nil
  (:coding-mode-1-0 "CODING_MODE_1_0")
  (:coding-mode-2-0 "CODING_MODE_2_0")
  (:coding-mode-3-2 "CODING_MODE_3_2"))

(smithy/sdk/shapes:define-enum eac3dc-filter
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum eac3drc-line
    common-lisp:nil
  (:film-light "FILM_LIGHT")
  (:film-standard "FILM_STANDARD")
  (:music-light "MUSIC_LIGHT")
  (:music-standard "MUSIC_STANDARD")
  (:none "NONE")
  (:speech "SPEECH"))

(smithy/sdk/shapes:define-enum eac3drc-rf
    common-lisp:nil
  (:film-light "FILM_LIGHT")
  (:film-standard "FILM_STANDARD")
  (:music-light "MUSIC_LIGHT")
  (:music-standard "MUSIC_STANDARD")
  (:none "NONE")
  (:speech "SPEECH"))

(smithy/sdk/shapes:define-enum eac3lfe-control
    common-lisp:nil
  (:lfe "LFE")
  (:no-lfe "NO_LFE"))

(smithy/sdk/shapes:define-enum eac3lfe-filter
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum eac3metadata-control
    common-lisp:nil
  (:follow-input "FOLLOW_INPUT")
  (:use-configured "USE_CONFIGURED"))

(smithy/sdk/shapes:define-enum eac3passthrough-control
    common-lisp:nil
  (:no-passthrough "NO_PASSTHROUGH")
  (:when-possible "WHEN_POSSIBLE"))

(smithy/sdk/shapes:define-enum eac3phase-control
    common-lisp:nil
  (:no-shift "NO_SHIFT")
  (:shift-90-degrees "SHIFT_90_DEGREES"))

(smithy/sdk/shapes:define-structure eac3settings common-lisp:nil
                                    ((attenuation-control :target-type
                                      eac3attenuation-control :member-name
                                      "AttenuationControl" :json-name
                                      "attenuationControl")
                                     (bitrate :target-type double :member-name
                                      "Bitrate" :json-name "bitrate")
                                     (bitstream-mode :target-type
                                      eac3bitstream-mode :member-name
                                      "BitstreamMode" :json-name
                                      "bitstreamMode")
                                     (coding-mode :target-type eac3coding-mode
                                      :member-name "CodingMode" :json-name
                                      "codingMode")
                                     (dc-filter :target-type eac3dc-filter
                                      :member-name "DcFilter" :json-name
                                      "dcFilter")
                                     (dialnorm :target-type integer-min1max31
                                      :member-name "Dialnorm" :json-name
                                      "dialnorm")
                                     (drc-line :target-type eac3drc-line
                                      :member-name "DrcLine" :json-name
                                      "drcLine")
                                     (drc-rf :target-type eac3drc-rf
                                      :member-name "DrcRf" :json-name "drcRf")
                                     (lfe-control :target-type eac3lfe-control
                                      :member-name "LfeControl" :json-name
                                      "lfeControl")
                                     (lfe-filter :target-type eac3lfe-filter
                                      :member-name "LfeFilter" :json-name
                                      "lfeFilter")
                                     (lo-ro-center-mix-level :target-type
                                      double :member-name "LoRoCenterMixLevel"
                                      :json-name "loRoCenterMixLevel")
                                     (lo-ro-surround-mix-level :target-type
                                      double :member-name
                                      "LoRoSurroundMixLevel" :json-name
                                      "loRoSurroundMixLevel")
                                     (lt-rt-center-mix-level :target-type
                                      double :member-name "LtRtCenterMixLevel"
                                      :json-name "ltRtCenterMixLevel")
                                     (lt-rt-surround-mix-level :target-type
                                      double :member-name
                                      "LtRtSurroundMixLevel" :json-name
                                      "ltRtSurroundMixLevel")
                                     (metadata-control :target-type
                                      eac3metadata-control :member-name
                                      "MetadataControl" :json-name
                                      "metadataControl")
                                     (passthrough-control :target-type
                                      eac3passthrough-control :member-name
                                      "PassthroughControl" :json-name
                                      "passthroughControl")
                                     (phase-control :target-type
                                      eac3phase-control :member-name
                                      "PhaseControl" :json-name "phaseControl")
                                     (stereo-downmix :target-type
                                      eac3stereo-downmix :member-name
                                      "StereoDownmix" :json-name
                                      "stereoDownmix")
                                     (surround-ex-mode :target-type
                                      eac3surround-ex-mode :member-name
                                      "SurroundExMode" :json-name
                                      "surroundExMode")
                                     (surround-mode :target-type
                                      eac3surround-mode :member-name
                                      "SurroundMode" :json-name
                                      "surroundMode"))
                                    (:shape-name "Eac3Settings"))

(smithy/sdk/shapes:define-enum eac3stereo-downmix
    common-lisp:nil
  (:dpl2 "DPL2")
  (:lo-ro "LO_RO")
  (:lt-rt "LT_RT")
  (:not-indicated "NOT_INDICATED"))

(smithy/sdk/shapes:define-enum eac3surround-ex-mode
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED")
  (:not-indicated "NOT_INDICATED"))

(smithy/sdk/shapes:define-enum eac3surround-mode
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED")
  (:not-indicated "NOT_INDICATED"))

(smithy/sdk/shapes:define-structure ebu-tt-ddestination-settings
                                    common-lisp:nil
                                    ((copyright-holder :target-type
                                      string-max1000 :member-name
                                      "CopyrightHolder" :json-name
                                      "copyrightHolder")
                                     (fill-line-gap :target-type
                                      ebu-tt-dfill-line-gap-control
                                      :member-name "FillLineGap" :json-name
                                      "fillLineGap")
                                     (font-family :target-type string
                                      :member-name "FontFamily" :json-name
                                      "fontFamily")
                                     (style-control :target-type
                                      ebu-tt-ddestination-style-control
                                      :member-name "StyleControl" :json-name
                                      "styleControl")
                                     (default-font-size :target-type
                                      integer-min1max800 :member-name
                                      "DefaultFontSize" :json-name
                                      "defaultFontSize")
                                     (default-line-height :target-type
                                      integer-min80max800 :member-name
                                      "DefaultLineHeight" :json-name
                                      "defaultLineHeight"))
                                    (:shape-name "EbuTtDDestinationSettings"))

(smithy/sdk/shapes:define-enum ebu-tt-ddestination-style-control
    common-lisp:nil
  (:exclude "EXCLUDE")
  (:include "INCLUDE"))

(smithy/sdk/shapes:define-enum ebu-tt-dfill-line-gap-control
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum embedded-convert608to708
    common-lisp:nil
  (:disabled "DISABLED")
  (:upconvert "UPCONVERT"))

(smithy/sdk/shapes:define-structure embedded-destination-settings
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "EmbeddedDestinationSettings"))

(smithy/sdk/shapes:define-structure embedded-plus-scte20destination-settings
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "EmbeddedPlusScte20DestinationSettings"))

(smithy/sdk/shapes:define-enum embedded-scte20detection
    common-lisp:nil
  (:auto "AUTO")
  (:off "OFF"))

(smithy/sdk/shapes:define-structure embedded-source-settings common-lisp:nil
                                    ((convert608to708 :target-type
                                      embedded-convert608to708 :member-name
                                      "Convert608To708" :json-name
                                      "convert608To708")
                                     (scte20detection :target-type
                                      embedded-scte20detection :member-name
                                      "Scte20Detection" :json-name
                                      "scte20Detection")
                                     (source608channel-number :target-type
                                      integer-min1max4 :member-name
                                      "Source608ChannelNumber" :json-name
                                      "source608ChannelNumber")
                                     (source608track-number :target-type
                                      integer-min1max5 :member-name
                                      "Source608TrackNumber" :json-name
                                      "source608TrackNumber"))
                                    (:shape-name "EmbeddedSourceSettings"))

(smithy/sdk/shapes:define-structure encoder-settings common-lisp:nil
                                    ((audio-descriptions :target-type
                                      list-of-audio-description :required
                                      common-lisp:t :member-name
                                      "AudioDescriptions" :json-name
                                      "audioDescriptions")
                                     (avail-blanking :target-type
                                      avail-blanking :member-name
                                      "AvailBlanking" :json-name
                                      "availBlanking")
                                     (avail-configuration :target-type
                                      avail-configuration :member-name
                                      "AvailConfiguration" :json-name
                                      "availConfiguration")
                                     (blackout-slate :target-type
                                      blackout-slate :member-name
                                      "BlackoutSlate" :json-name
                                      "blackoutSlate")
                                     (caption-descriptions :target-type
                                      list-of-caption-description :member-name
                                      "CaptionDescriptions" :json-name
                                      "captionDescriptions")
                                     (feature-activations :target-type
                                      feature-activations :member-name
                                      "FeatureActivations" :json-name
                                      "featureActivations")
                                     (global-configuration :target-type
                                      global-configuration :member-name
                                      "GlobalConfiguration" :json-name
                                      "globalConfiguration")
                                     (motion-graphics-configuration
                                      :target-type
                                      motion-graphics-configuration
                                      :member-name
                                      "MotionGraphicsConfiguration" :json-name
                                      "motionGraphicsConfiguration")
                                     (nielsen-configuration :target-type
                                      nielsen-configuration :member-name
                                      "NielsenConfiguration" :json-name
                                      "nielsenConfiguration")
                                     (output-groups :target-type
                                      list-of-output-group :required
                                      common-lisp:t :member-name "OutputGroups"
                                      :json-name "outputGroups")
                                     (timecode-config :target-type
                                      timecode-config :required common-lisp:t
                                      :member-name "TimecodeConfig" :json-name
                                      "timecodeConfig")
                                     (video-descriptions :target-type
                                      list-of-video-description :required
                                      common-lisp:t :member-name
                                      "VideoDescriptions" :json-name
                                      "videoDescriptions")
                                     (thumbnail-configuration :target-type
                                      thumbnail-configuration :member-name
                                      "ThumbnailConfiguration" :json-name
                                      "thumbnailConfiguration")
                                     (color-correction-settings :target-type
                                      color-correction-settings :member-name
                                      "ColorCorrectionSettings" :json-name
                                      "colorCorrectionSettings"))
                                    (:shape-name "EncoderSettings"))

(smithy/sdk/shapes:define-structure epoch-locking-settings common-lisp:nil
                                    ((custom-epoch :target-type string
                                      :member-name "CustomEpoch" :json-name
                                      "customEpoch")
                                     (jam-sync-time :target-type string
                                      :member-name "JamSyncTime" :json-name
                                      "jamSyncTime"))
                                    (:shape-name "EpochLockingSettings"))

(smithy/sdk/shapes:define-structure esam common-lisp:nil
                                    ((acquisition-point-id :target-type
                                      string-max256 :required common-lisp:t
                                      :member-name "AcquisitionPointId"
                                      :json-name "acquisitionPointId")
                                     (ad-avail-offset :target-type
                                      integer-min-negative1000max1000
                                      :member-name "AdAvailOffset" :json-name
                                      "adAvailOffset")
                                     (password-param :target-type string
                                      :member-name "PasswordParam" :json-name
                                      "passwordParam")
                                     (pois-endpoint :target-type string-max2048
                                      :required common-lisp:t :member-name
                                      "PoisEndpoint" :json-name "poisEndpoint")
                                     (username :target-type string :member-name
                                      "Username" :json-name "username")
                                     (zone-identity :target-type string-max256
                                      :member-name "ZoneIdentity" :json-name
                                      "zoneIdentity"))
                                    (:shape-name "Esam"))

(smithy/sdk/shapes:define-enum event-bridge-rule-template-event-type
    common-lisp:nil
  (:medialive-multiplex-alert "MEDIALIVE_MULTIPLEX_ALERT")
  (:medialive-multiplex-state-change "MEDIALIVE_MULTIPLEX_STATE_CHANGE")
  (:medialive-channel-alert "MEDIALIVE_CHANNEL_ALERT")
  (:medialive-channel-input-change "MEDIALIVE_CHANNEL_INPUT_CHANGE")
  (:medialive-channel-state-change "MEDIALIVE_CHANNEL_STATE_CHANGE")
  (:mediapackage-input-notification "MEDIAPACKAGE_INPUT_NOTIFICATION")
  (:mediapackage-key-provider-notification
   "MEDIAPACKAGE_KEY_PROVIDER_NOTIFICATION")
  (:mediapackage-harvest-job-notification
   "MEDIAPACKAGE_HARVEST_JOB_NOTIFICATION")
  (:signal-map-active-alarm "SIGNAL_MAP_ACTIVE_ALARM")
  (:mediaconnect-alert "MEDIACONNECT_ALERT")
  (:mediaconnect-source-health "MEDIACONNECT_SOURCE_HEALTH")
  (:mediaconnect-output-health "MEDIACONNECT_OUTPUT_HEALTH")
  (:mediaconnect-flow-status-change "MEDIACONNECT_FLOW_STATUS_CHANGE"))

(smithy/sdk/shapes:define-structure event-bridge-rule-template-group-summary
                                    common-lisp:nil
                                    ((arn :target-type
                                      string-pattern-arn-medialive-eventbridge-rule-template-group
                                      :required common-lisp:t :member-name
                                      "Arn" :json-name "arn")
                                     (created-at :target-type timestamp-iso8601
                                      :required common-lisp:t :member-name
                                      "CreatedAt" :json-name "createdAt")
                                     (description :target-type
                                      string-min0max1024 :member-name
                                      "Description" :json-name "description")
                                     (id :target-type
                                      string-min7max11pattern-aws097 :required
                                      common-lisp:t :member-name "Id"
                                      :json-name "id")
                                     (modified-at :target-type
                                      timestamp-iso8601 :member-name
                                      "ModifiedAt" :json-name "modifiedAt")
                                     (name :target-type
                                      string-min1max255pattern-s :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name")
                                     (tags :target-type tag-map :member-name
                                      "Tags" :json-name "tags")
                                     (template-count :target-type integer
                                      :required common-lisp:t :member-name
                                      "TemplateCount" :json-name
                                      "templateCount"))
                                    (:shape-name
                                     "EventBridgeRuleTemplateGroupSummary"))

(smithy/sdk/shapes:define-structure event-bridge-rule-template-summary
                                    common-lisp:nil
                                    ((arn :target-type
                                      string-pattern-arn-medialive-eventbridge-rule-template
                                      :required common-lisp:t :member-name
                                      "Arn" :json-name "arn")
                                     (created-at :target-type timestamp-iso8601
                                      :required common-lisp:t :member-name
                                      "CreatedAt" :json-name "createdAt")
                                     (description :target-type
                                      string-min0max1024 :member-name
                                      "Description" :json-name "description")
                                     (event-target-count :target-type
                                      integer-max5 :required common-lisp:t
                                      :member-name "EventTargetCount"
                                      :json-name "eventTargetCount")
                                     (event-type :target-type
                                      event-bridge-rule-template-event-type
                                      :required common-lisp:t :member-name
                                      "EventType" :json-name "eventType")
                                     (group-id :target-type
                                      string-min7max11pattern-aws097 :required
                                      common-lisp:t :member-name "GroupId"
                                      :json-name "groupId")
                                     (id :target-type
                                      string-min7max11pattern-aws097 :required
                                      common-lisp:t :member-name "Id"
                                      :json-name "id")
                                     (modified-at :target-type
                                      timestamp-iso8601 :member-name
                                      "ModifiedAt" :json-name "modifiedAt")
                                     (name :target-type
                                      string-min1max255pattern-s :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name")
                                     (tags :target-type tag-map :member-name
                                      "Tags" :json-name "tags"))
                                    (:shape-name
                                     "EventBridgeRuleTemplateSummary"))

(smithy/sdk/shapes:define-structure event-bridge-rule-template-target
                                    common-lisp:nil
                                    ((arn :target-type
                                      string-min1max2048pattern-arn :required
                                      common-lisp:t :member-name "Arn"
                                      :json-name "arn"))
                                    (:shape-name
                                     "EventBridgeRuleTemplateTarget"))

(smithy/sdk/shapes:define-map failed-media-resource-map :key string :value
                              media-resource)

(smithy/sdk/shapes:define-structure failover-condition common-lisp:nil
                                    ((failover-condition-settings :target-type
                                      failover-condition-settings :member-name
                                      "FailoverConditionSettings" :json-name
                                      "failoverConditionSettings"))
                                    (:shape-name "FailoverCondition"))

(smithy/sdk/shapes:define-structure failover-condition-settings common-lisp:nil
                                    ((audio-silence-settings :target-type
                                      audio-silence-failover-settings
                                      :member-name "AudioSilenceSettings"
                                      :json-name "audioSilenceSettings")
                                     (input-loss-settings :target-type
                                      input-loss-failover-settings :member-name
                                      "InputLossSettings" :json-name
                                      "inputLossSettings")
                                     (video-black-settings :target-type
                                      video-black-failover-settings
                                      :member-name "VideoBlackSettings"
                                      :json-name "videoBlackSettings"))
                                    (:shape-name "FailoverConditionSettings"))

(smithy/sdk/shapes:define-structure feature-activations common-lisp:nil
                                    ((input-prepare-schedule-actions
                                      :target-type
                                      feature-activations-input-prepare-schedule-actions
                                      :member-name
                                      "InputPrepareScheduleActions" :json-name
                                      "inputPrepareScheduleActions")
                                     (output-static-image-overlay-schedule-actions
                                      :target-type
                                      feature-activations-output-static-image-overlay-schedule-actions
                                      :member-name
                                      "OutputStaticImageOverlayScheduleActions"
                                      :json-name
                                      "outputStaticImageOverlayScheduleActions"))
                                    (:shape-name "FeatureActivations"))

(smithy/sdk/shapes:define-enum feature-activations-input-prepare-schedule-actions
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum feature-activations-output-static-image-overlay-schedule-actions
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum fec-output-include-fec
    common-lisp:nil
  (:column "COLUMN")
  (:column-and-row "COLUMN_AND_ROW"))

(smithy/sdk/shapes:define-structure fec-output-settings common-lisp:nil
                                    ((column-depth :target-type
                                      integer-min4max20 :member-name
                                      "ColumnDepth" :json-name "columnDepth")
                                     (include-fec :target-type
                                      fec-output-include-fec :member-name
                                      "IncludeFec" :json-name "includeFec")
                                     (row-length :target-type integer-min1max20
                                      :member-name "RowLength" :json-name
                                      "rowLength"))
                                    (:shape-name "FecOutputSettings"))

(smithy/sdk/shapes:define-enum fixed-afd
    common-lisp:nil
  (:afd-0000 "AFD_0000")
  (:afd-0010 "AFD_0010")
  (:afd-0011 "AFD_0011")
  (:afd-0100 "AFD_0100")
  (:afd-1000 "AFD_1000")
  (:afd-1001 "AFD_1001")
  (:afd-1010 "AFD_1010")
  (:afd-1011 "AFD_1011")
  (:afd-1101 "AFD_1101")
  (:afd-1110 "AFD_1110")
  (:afd-1111 "AFD_1111"))

(smithy/sdk/shapes:define-structure fixed-mode-schedule-action-start-settings
                                    common-lisp:nil
                                    ((time :target-type string :required
                                      common-lisp:t :member-name "Time"
                                      :json-name "time"))
                                    (:shape-name
                                     "FixedModeScheduleActionStartSettings"))

(smithy/sdk/shapes:define-structure fmp4hls-settings common-lisp:nil
                                    ((audio-rendition-sets :target-type string
                                      :member-name "AudioRenditionSets"
                                      :json-name "audioRenditionSets")
                                     (nielsen-id3behavior :target-type
                                      fmp4nielsen-id3behavior :member-name
                                      "NielsenId3Behavior" :json-name
                                      "nielsenId3Behavior")
                                     (timed-metadata-behavior :target-type
                                      fmp4timed-metadata-behavior :member-name
                                      "TimedMetadataBehavior" :json-name
                                      "timedMetadataBehavior"))
                                    (:shape-name "Fmp4HlsSettings"))

(smithy/sdk/shapes:define-enum fmp4nielsen-id3behavior
    common-lisp:nil
  (:no-passthrough "NO_PASSTHROUGH")
  (:passthrough "PASSTHROUGH"))

(smithy/sdk/shapes:define-enum fmp4timed-metadata-behavior
    common-lisp:nil
  (:no-passthrough "NO_PASSTHROUGH")
  (:passthrough "PASSTHROUGH"))

(smithy/sdk/shapes:define-structure follow-mode-schedule-action-start-settings
                                    common-lisp:nil
                                    ((follow-point :target-type follow-point
                                      :required common-lisp:t :member-name
                                      "FollowPoint" :json-name "followPoint")
                                     (reference-action-name :target-type string
                                      :required common-lisp:t :member-name
                                      "ReferenceActionName" :json-name
                                      "referenceActionName"))
                                    (:shape-name
                                     "FollowModeScheduleActionStartSettings"))

(smithy/sdk/shapes:define-enum follow-point
    common-lisp:nil
  (:end "END")
  (:start "START"))

(smithy/sdk/shapes:define-error forbidden-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "ForbiddenException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure frame-capture-cdn-settings common-lisp:nil
                                    ((frame-capture-s3settings :target-type
                                      frame-capture-s3settings :member-name
                                      "FrameCaptureS3Settings" :json-name
                                      "frameCaptureS3Settings"))
                                    (:shape-name "FrameCaptureCdnSettings"))

(smithy/sdk/shapes:define-structure frame-capture-group-settings
                                    common-lisp:nil
                                    ((destination :target-type
                                      output-location-ref :required
                                      common-lisp:t :member-name "Destination"
                                      :json-name "destination")
                                     (frame-capture-cdn-settings :target-type
                                      frame-capture-cdn-settings :member-name
                                      "FrameCaptureCdnSettings" :json-name
                                      "frameCaptureCdnSettings"))
                                    (:shape-name "FrameCaptureGroupSettings"))

(smithy/sdk/shapes:define-structure frame-capture-hls-settings common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "FrameCaptureHlsSettings"))

(smithy/sdk/shapes:define-enum frame-capture-interval-unit
    common-lisp:nil
  (:milliseconds "MILLISECONDS")
  (:seconds "SECONDS"))

(smithy/sdk/shapes:define-structure frame-capture-output-settings
                                    common-lisp:nil
                                    ((name-modifier :target-type string
                                      :member-name "NameModifier" :json-name
                                      "nameModifier"))
                                    (:shape-name "FrameCaptureOutputSettings"))

(smithy/sdk/shapes:define-structure frame-capture-s3settings common-lisp:nil
                                    ((canned-acl :target-type s3canned-acl
                                      :member-name "CannedAcl" :json-name
                                      "cannedAcl"))
                                    (:shape-name "FrameCaptureS3Settings"))

(smithy/sdk/shapes:define-structure frame-capture-settings common-lisp:nil
                                    ((capture-interval :target-type
                                      integer-min1max3600000 :member-name
                                      "CaptureInterval" :json-name
                                      "captureInterval")
                                     (capture-interval-units :target-type
                                      frame-capture-interval-unit :member-name
                                      "CaptureIntervalUnits" :json-name
                                      "captureIntervalUnits")
                                     (timecode-burnin-settings :target-type
                                      timecode-burnin-settings :member-name
                                      "TimecodeBurninSettings" :json-name
                                      "timecodeBurninSettings"))
                                    (:shape-name "FrameCaptureSettings"))

(smithy/sdk/shapes:define-error gateway-timeout-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "GatewayTimeoutException")
                                (:error-code 504))

(smithy/sdk/shapes:define-input get-cloud-watch-alarm-template-group-request
                                common-lisp:nil
                                ((identifier :target-type string :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetCloudWatchAlarmTemplateGroupRequest"))

(smithy/sdk/shapes:define-output get-cloud-watch-alarm-template-group-response
                                 common-lisp:nil
                                 ((arn :target-type
                                   string-pattern-arn-medialive-cloudwatch-alarm-template-group
                                   :member-name "Arn" :json-name "arn")
                                  (created-at :target-type timestamp-iso8601
                                   :member-name "CreatedAt" :json-name
                                   "createdAt")
                                  (description :target-type string-min0max1024
                                   :member-name "Description" :json-name
                                   "description")
                                  (id :target-type
                                   string-min7max11pattern-aws097 :member-name
                                   "Id" :json-name "id")
                                  (modified-at :target-type timestamp-iso8601
                                   :member-name "ModifiedAt" :json-name
                                   "modifiedAt")
                                  (name :target-type string-min1max255pattern-s
                                   :member-name "Name" :json-name "name")
                                  (tags :target-type tag-map :member-name
                                   "Tags" :json-name "tags"))
                                 (:shape-name
                                  "GetCloudWatchAlarmTemplateGroupResponse"))

(smithy/sdk/shapes:define-input get-cloud-watch-alarm-template-request
                                common-lisp:nil
                                ((identifier :target-type string :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetCloudWatchAlarmTemplateRequest"))

(smithy/sdk/shapes:define-output get-cloud-watch-alarm-template-response
                                 common-lisp:nil
                                 ((arn :target-type
                                   string-pattern-arn-medialive-cloudwatch-alarm-template
                                   :member-name "Arn" :json-name "arn")
                                  (comparison-operator :target-type
                                   cloud-watch-alarm-template-comparison-operator
                                   :member-name "ComparisonOperator" :json-name
                                   "comparisonOperator")
                                  (created-at :target-type timestamp-iso8601
                                   :member-name "CreatedAt" :json-name
                                   "createdAt")
                                  (datapoints-to-alarm :target-type
                                   integer-min1 :member-name
                                   "DatapointsToAlarm" :json-name
                                   "datapointsToAlarm")
                                  (description :target-type string-min0max1024
                                   :member-name "Description" :json-name
                                   "description")
                                  (evaluation-periods :target-type integer-min1
                                   :member-name "EvaluationPeriods" :json-name
                                   "evaluationPeriods")
                                  (group-id :target-type
                                   string-min7max11pattern-aws097 :member-name
                                   "GroupId" :json-name "groupId")
                                  (id :target-type
                                   string-min7max11pattern-aws097 :member-name
                                   "Id" :json-name "id")
                                  (metric-name :target-type string-max64
                                   :member-name "MetricName" :json-name
                                   "metricName")
                                  (modified-at :target-type timestamp-iso8601
                                   :member-name "ModifiedAt" :json-name
                                   "modifiedAt")
                                  (name :target-type string-min1max255pattern-s
                                   :member-name "Name" :json-name "name")
                                  (period :target-type integer-min10max86400
                                   :member-name "Period" :json-name "period")
                                  (statistic :target-type
                                   cloud-watch-alarm-template-statistic
                                   :member-name "Statistic" :json-name
                                   "statistic")
                                  (tags :target-type tag-map :member-name
                                   "Tags" :json-name "tags")
                                  (target-resource-type :target-type
                                   cloud-watch-alarm-template-target-resource-type
                                   :member-name "TargetResourceType" :json-name
                                   "targetResourceType")
                                  (threshold :target-type double :member-name
                                   "Threshold" :json-name "threshold")
                                  (treat-missing-data :target-type
                                   cloud-watch-alarm-template-treat-missing-data
                                   :member-name "TreatMissingData" :json-name
                                   "treatMissingData"))
                                 (:shape-name
                                  "GetCloudWatchAlarmTemplateResponse"))

(smithy/sdk/shapes:define-input get-event-bridge-rule-template-group-request
                                common-lisp:nil
                                ((identifier :target-type string :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetEventBridgeRuleTemplateGroupRequest"))

(smithy/sdk/shapes:define-output get-event-bridge-rule-template-group-response
                                 common-lisp:nil
                                 ((arn :target-type
                                   string-pattern-arn-medialive-eventbridge-rule-template-group
                                   :member-name "Arn" :json-name "arn")
                                  (created-at :target-type timestamp-iso8601
                                   :member-name "CreatedAt" :json-name
                                   "createdAt")
                                  (description :target-type string-min0max1024
                                   :member-name "Description" :json-name
                                   "description")
                                  (id :target-type
                                   string-min7max11pattern-aws097 :member-name
                                   "Id" :json-name "id")
                                  (modified-at :target-type timestamp-iso8601
                                   :member-name "ModifiedAt" :json-name
                                   "modifiedAt")
                                  (name :target-type string-min1max255pattern-s
                                   :member-name "Name" :json-name "name")
                                  (tags :target-type tag-map :member-name
                                   "Tags" :json-name "tags"))
                                 (:shape-name
                                  "GetEventBridgeRuleTemplateGroupResponse"))

(smithy/sdk/shapes:define-input get-event-bridge-rule-template-request
                                common-lisp:nil
                                ((identifier :target-type string :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetEventBridgeRuleTemplateRequest"))

(smithy/sdk/shapes:define-output get-event-bridge-rule-template-response
                                 common-lisp:nil
                                 ((arn :target-type
                                   string-pattern-arn-medialive-eventbridge-rule-template
                                   :member-name "Arn" :json-name "arn")
                                  (created-at :target-type timestamp-iso8601
                                   :member-name "CreatedAt" :json-name
                                   "createdAt")
                                  (description :target-type string-min0max1024
                                   :member-name "Description" :json-name
                                   "description")
                                  (event-targets :target-type
                                   list-of-event-bridge-rule-template-target
                                   :member-name "EventTargets" :json-name
                                   "eventTargets")
                                  (event-type :target-type
                                   event-bridge-rule-template-event-type
                                   :member-name "EventType" :json-name
                                   "eventType")
                                  (group-id :target-type
                                   string-min7max11pattern-aws097 :member-name
                                   "GroupId" :json-name "groupId")
                                  (id :target-type
                                   string-min7max11pattern-aws097 :member-name
                                   "Id" :json-name "id")
                                  (modified-at :target-type timestamp-iso8601
                                   :member-name "ModifiedAt" :json-name
                                   "modifiedAt")
                                  (name :target-type string-min1max255pattern-s
                                   :member-name "Name" :json-name "name")
                                  (tags :target-type tag-map :member-name
                                   "Tags" :json-name "tags"))
                                 (:shape-name
                                  "GetEventBridgeRuleTemplateResponse"))

(smithy/sdk/shapes:define-input get-signal-map-request common-lisp:nil
                                ((identifier :target-type string :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "GetSignalMapRequest"))

(smithy/sdk/shapes:define-output get-signal-map-response common-lisp:nil
                                 ((arn :target-type
                                   string-pattern-arn-medialive-signal-map
                                   :member-name "Arn" :json-name "arn")
                                  (cloud-watch-alarm-template-group-ids
                                   :target-type
                                   list-of-string-min7max11pattern-aws097
                                   :member-name
                                   "CloudWatchAlarmTemplateGroupIds" :json-name
                                   "cloudWatchAlarmTemplateGroupIds")
                                  (created-at :target-type timestamp-iso8601
                                   :member-name "CreatedAt" :json-name
                                   "createdAt")
                                  (description :target-type string-min0max1024
                                   :member-name "Description" :json-name
                                   "description")
                                  (discovery-entry-point-arn :target-type
                                   string-min1max2048 :member-name
                                   "DiscoveryEntryPointArn" :json-name
                                   "discoveryEntryPointArn")
                                  (error-message :target-type
                                   string-min1max2048 :member-name
                                   "ErrorMessage" :json-name "errorMessage")
                                  (event-bridge-rule-template-group-ids
                                   :target-type
                                   list-of-string-min7max11pattern-aws097
                                   :member-name
                                   "EventBridgeRuleTemplateGroupIds" :json-name
                                   "eventBridgeRuleTemplateGroupIds")
                                  (failed-media-resource-map :target-type
                                   failed-media-resource-map :member-name
                                   "FailedMediaResourceMap" :json-name
                                   "failedMediaResourceMap")
                                  (id :target-type
                                   string-min7max11pattern-aws097 :member-name
                                   "Id" :json-name "id")
                                  (last-discovered-at :target-type
                                   timestamp-iso8601 :member-name
                                   "LastDiscoveredAt" :json-name
                                   "lastDiscoveredAt")
                                  (last-successful-monitor-deployment
                                   :target-type successful-monitor-deployment
                                   :member-name
                                   "LastSuccessfulMonitorDeployment" :json-name
                                   "lastSuccessfulMonitorDeployment")
                                  (media-resource-map :target-type
                                   media-resource-map :member-name
                                   "MediaResourceMap" :json-name
                                   "mediaResourceMap")
                                  (modified-at :target-type timestamp-iso8601
                                   :member-name "ModifiedAt" :json-name
                                   "modifiedAt")
                                  (monitor-changes-pending-deployment
                                   :target-type boolean :member-name
                                   "MonitorChangesPendingDeployment" :json-name
                                   "monitorChangesPendingDeployment")
                                  (monitor-deployment :target-type
                                   monitor-deployment :member-name
                                   "MonitorDeployment" :json-name
                                   "monitorDeployment")
                                  (name :target-type string-min1max255pattern-s
                                   :member-name "Name" :json-name "name")
                                  (status :target-type signal-map-status
                                   :member-name "Status" :json-name "status")
                                  (tags :target-type tag-map :member-name
                                   "Tags" :json-name "tags"))
                                 (:shape-name "GetSignalMapResponse"))

(smithy/sdk/shapes:define-structure global-configuration common-lisp:nil
                                    ((initial-audio-gain :target-type
                                      integer-min-negative60max60 :member-name
                                      "InitialAudioGain" :json-name
                                      "initialAudioGain")
                                     (input-end-action :target-type
                                      global-configuration-input-end-action
                                      :member-name "InputEndAction" :json-name
                                      "inputEndAction")
                                     (input-loss-behavior :target-type
                                      input-loss-behavior :member-name
                                      "InputLossBehavior" :json-name
                                      "inputLossBehavior")
                                     (output-locking-mode :target-type
                                      global-configuration-output-locking-mode
                                      :member-name "OutputLockingMode"
                                      :json-name "outputLockingMode")
                                     (output-timing-source :target-type
                                      global-configuration-output-timing-source
                                      :member-name "OutputTimingSource"
                                      :json-name "outputTimingSource")
                                     (support-low-framerate-inputs :target-type
                                      global-configuration-low-framerate-inputs
                                      :member-name "SupportLowFramerateInputs"
                                      :json-name "supportLowFramerateInputs")
                                     (output-locking-settings :target-type
                                      output-locking-settings :member-name
                                      "OutputLockingSettings" :json-name
                                      "outputLockingSettings"))
                                    (:shape-name "GlobalConfiguration"))

(smithy/sdk/shapes:define-enum global-configuration-input-end-action
    common-lisp:nil
  (:none "NONE")
  (:switch-and-loop-inputs "SWITCH_AND_LOOP_INPUTS"))

(smithy/sdk/shapes:define-enum global-configuration-low-framerate-inputs
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum global-configuration-output-locking-mode
    common-lisp:nil
  (:epoch-locking "EPOCH_LOCKING")
  (:pipeline-locking "PIPELINE_LOCKING")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum global-configuration-output-timing-source
    common-lisp:nil
  (:input-clock "INPUT_CLOCK")
  (:system-clock "SYSTEM_CLOCK"))

(smithy/sdk/shapes:define-enum h264adaptive-quantization
    common-lisp:nil
  (:auto "AUTO")
  (:high "HIGH")
  (:higher "HIGHER")
  (:low "LOW")
  (:max "MAX")
  (:medium "MEDIUM")
  (:off "OFF"))

(smithy/sdk/shapes:define-enum h264color-metadata
    common-lisp:nil
  (:ignore "IGNORE")
  (:insert "INSERT"))

(smithy/sdk/shapes:define-structure h264color-space-settings common-lisp:nil
                                    ((color-space-passthrough-settings
                                      :target-type
                                      color-space-passthrough-settings
                                      :member-name
                                      "ColorSpacePassthroughSettings"
                                      :json-name
                                      "colorSpacePassthroughSettings")
                                     (rec601settings :target-type
                                      rec601settings :member-name
                                      "Rec601Settings" :json-name
                                      "rec601Settings")
                                     (rec709settings :target-type
                                      rec709settings :member-name
                                      "Rec709Settings" :json-name
                                      "rec709Settings"))
                                    (:shape-name "H264ColorSpaceSettings"))

(smithy/sdk/shapes:define-enum h264entropy-encoding
    common-lisp:nil
  (:cabac "CABAC")
  (:cavlc "CAVLC"))

(smithy/sdk/shapes:define-structure h264filter-settings common-lisp:nil
                                    ((temporal-filter-settings :target-type
                                      temporal-filter-settings :member-name
                                      "TemporalFilterSettings" :json-name
                                      "temporalFilterSettings")
                                     (bandwidth-reduction-filter-settings
                                      :target-type
                                      bandwidth-reduction-filter-settings
                                      :member-name
                                      "BandwidthReductionFilterSettings"
                                      :json-name
                                      "bandwidthReductionFilterSettings"))
                                    (:shape-name "H264FilterSettings"))

(smithy/sdk/shapes:define-enum h264flicker-aq
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum h264force-field-pictures
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum h264framerate-control
    common-lisp:nil
  (:initialize-from-source "INITIALIZE_FROM_SOURCE")
  (:specified "SPECIFIED"))

(smithy/sdk/shapes:define-enum h264gop-breference
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum h264gop-size-units
    common-lisp:nil
  (:frames "FRAMES")
  (:seconds "SECONDS"))

(smithy/sdk/shapes:define-enum h264level
    common-lisp:nil
  (:h264-level-1 "H264_LEVEL_1")
  (:h264-level-1-1 "H264_LEVEL_1_1")
  (:h264-level-1-2 "H264_LEVEL_1_2")
  (:h264-level-1-3 "H264_LEVEL_1_3")
  (:h264-level-2 "H264_LEVEL_2")
  (:h264-level-2-1 "H264_LEVEL_2_1")
  (:h264-level-2-2 "H264_LEVEL_2_2")
  (:h264-level-3 "H264_LEVEL_3")
  (:h264-level-3-1 "H264_LEVEL_3_1")
  (:h264-level-3-2 "H264_LEVEL_3_2")
  (:h264-level-4 "H264_LEVEL_4")
  (:h264-level-4-1 "H264_LEVEL_4_1")
  (:h264-level-4-2 "H264_LEVEL_4_2")
  (:h264-level-5 "H264_LEVEL_5")
  (:h264-level-5-1 "H264_LEVEL_5_1")
  (:h264-level-5-2 "H264_LEVEL_5_2")
  (:h264-level-auto "H264_LEVEL_AUTO"))

(smithy/sdk/shapes:define-enum h264look-ahead-rate-control
    common-lisp:nil
  (:high "HIGH")
  (:low "LOW")
  (:medium "MEDIUM"))

(smithy/sdk/shapes:define-enum h264par-control
    common-lisp:nil
  (:initialize-from-source "INITIALIZE_FROM_SOURCE")
  (:specified "SPECIFIED"))

(smithy/sdk/shapes:define-enum h264profile
    common-lisp:nil
  (:baseline "BASELINE")
  (:high "HIGH")
  (:high-10bit "HIGH_10BIT")
  (:high-422 "HIGH_422")
  (:high-422-10bit "HIGH_422_10BIT")
  (:main "MAIN"))

(smithy/sdk/shapes:define-enum h264quality-level
    common-lisp:nil
  (:enhanced-quality "ENHANCED_QUALITY")
  (:standard-quality "STANDARD_QUALITY"))

(smithy/sdk/shapes:define-enum h264rate-control-mode
    common-lisp:nil
  (:cbr "CBR")
  (:multiplex "MULTIPLEX")
  (:qvbr "QVBR")
  (:vbr "VBR"))

(smithy/sdk/shapes:define-enum h264scan-type
    common-lisp:nil
  (:interlaced "INTERLACED")
  (:progressive "PROGRESSIVE"))

(smithy/sdk/shapes:define-enum h264scene-change-detect
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-structure h264settings common-lisp:nil
                                    ((adaptive-quantization :target-type
                                      h264adaptive-quantization :member-name
                                      "AdaptiveQuantization" :json-name
                                      "adaptiveQuantization")
                                     (afd-signaling :target-type afd-signaling
                                      :member-name "AfdSignaling" :json-name
                                      "afdSignaling")
                                     (bitrate :target-type integer-min1000
                                      :member-name "Bitrate" :json-name
                                      "bitrate")
                                     (buf-fill-pct :target-type
                                      integer-min0max100 :member-name
                                      "BufFillPct" :json-name "bufFillPct")
                                     (buf-size :target-type integer-min0
                                      :member-name "BufSize" :json-name
                                      "bufSize")
                                     (color-metadata :target-type
                                      h264color-metadata :member-name
                                      "ColorMetadata" :json-name
                                      "colorMetadata")
                                     (color-space-settings :target-type
                                      h264color-space-settings :member-name
                                      "ColorSpaceSettings" :json-name
                                      "colorSpaceSettings")
                                     (entropy-encoding :target-type
                                      h264entropy-encoding :member-name
                                      "EntropyEncoding" :json-name
                                      "entropyEncoding")
                                     (filter-settings :target-type
                                      h264filter-settings :member-name
                                      "FilterSettings" :json-name
                                      "filterSettings")
                                     (fixed-afd :target-type fixed-afd
                                      :member-name "FixedAfd" :json-name
                                      "fixedAfd")
                                     (flicker-aq :target-type h264flicker-aq
                                      :member-name "FlickerAq" :json-name
                                      "flickerAq")
                                     (force-field-pictures :target-type
                                      h264force-field-pictures :member-name
                                      "ForceFieldPictures" :json-name
                                      "forceFieldPictures")
                                     (framerate-control :target-type
                                      h264framerate-control :member-name
                                      "FramerateControl" :json-name
                                      "framerateControl")
                                     (framerate-denominator :target-type
                                      integer-min1 :member-name
                                      "FramerateDenominator" :json-name
                                      "framerateDenominator")
                                     (framerate-numerator :target-type
                                      integer-min1 :member-name
                                      "FramerateNumerator" :json-name
                                      "framerateNumerator")
                                     (gop-breference :target-type
                                      h264gop-breference :member-name
                                      "GopBReference" :json-name
                                      "gopBReference")
                                     (gop-closed-cadence :target-type
                                      integer-min0 :member-name
                                      "GopClosedCadence" :json-name
                                      "gopClosedCadence")
                                     (gop-num-bframes :target-type
                                      integer-min0max7 :member-name
                                      "GopNumBFrames" :json-name
                                      "gopNumBFrames")
                                     (gop-size :target-type double :member-name
                                      "GopSize" :json-name "gopSize")
                                     (gop-size-units :target-type
                                      h264gop-size-units :member-name
                                      "GopSizeUnits" :json-name "gopSizeUnits")
                                     (level :target-type h264level :member-name
                                      "Level" :json-name "level")
                                     (look-ahead-rate-control :target-type
                                      h264look-ahead-rate-control :member-name
                                      "LookAheadRateControl" :json-name
                                      "lookAheadRateControl")
                                     (max-bitrate :target-type integer-min1000
                                      :member-name "MaxBitrate" :json-name
                                      "maxBitrate")
                                     (min-iinterval :target-type
                                      integer-min0max30 :member-name
                                      "MinIInterval" :json-name "minIInterval")
                                     (num-ref-frames :target-type
                                      integer-min1max6 :member-name
                                      "NumRefFrames" :json-name "numRefFrames")
                                     (par-control :target-type h264par-control
                                      :member-name "ParControl" :json-name
                                      "parControl")
                                     (par-denominator :target-type integer-min1
                                      :member-name "ParDenominator" :json-name
                                      "parDenominator")
                                     (par-numerator :target-type integer-min1
                                      :member-name "ParNumerator" :json-name
                                      "parNumerator")
                                     (profile :target-type h264profile
                                      :member-name "Profile" :json-name
                                      "profile")
                                     (quality-level :target-type
                                      h264quality-level :member-name
                                      "QualityLevel" :json-name "qualityLevel")
                                     (qvbr-quality-level :target-type
                                      integer-min1max10 :member-name
                                      "QvbrQualityLevel" :json-name
                                      "qvbrQualityLevel")
                                     (rate-control-mode :target-type
                                      h264rate-control-mode :member-name
                                      "RateControlMode" :json-name
                                      "rateControlMode")
                                     (scan-type :target-type h264scan-type
                                      :member-name "ScanType" :json-name
                                      "scanType")
                                     (scene-change-detect :target-type
                                      h264scene-change-detect :member-name
                                      "SceneChangeDetect" :json-name
                                      "sceneChangeDetect")
                                     (slices :target-type integer-min1max32
                                      :member-name "Slices" :json-name
                                      "slices")
                                     (softness :target-type integer-min0max128
                                      :member-name "Softness" :json-name
                                      "softness")
                                     (spatial-aq :target-type h264spatial-aq
                                      :member-name "SpatialAq" :json-name
                                      "spatialAq")
                                     (subgop-length :target-type
                                      h264sub-gop-length :member-name
                                      "SubgopLength" :json-name "subgopLength")
                                     (syntax :target-type h264syntax
                                      :member-name "Syntax" :json-name
                                      "syntax")
                                     (temporal-aq :target-type h264temporal-aq
                                      :member-name "TemporalAq" :json-name
                                      "temporalAq")
                                     (timecode-insertion :target-type
                                      h264timecode-insertion-behavior
                                      :member-name "TimecodeInsertion"
                                      :json-name "timecodeInsertion")
                                     (timecode-burnin-settings :target-type
                                      timecode-burnin-settings :member-name
                                      "TimecodeBurninSettings" :json-name
                                      "timecodeBurninSettings")
                                     (min-qp :target-type integer-min1max51
                                      :member-name "MinQp" :json-name "minQp"))
                                    (:shape-name "H264Settings"))

(smithy/sdk/shapes:define-enum h264spatial-aq
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum h264sub-gop-length
    common-lisp:nil
  (:dynamic "DYNAMIC")
  (:fixed "FIXED"))

(smithy/sdk/shapes:define-enum h264syntax
    common-lisp:nil
  (:default "DEFAULT")
  (:rp2027 "RP2027"))

(smithy/sdk/shapes:define-enum h264temporal-aq
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum h264timecode-insertion-behavior
    common-lisp:nil
  (:disabled "DISABLED")
  (:pic-timing-sei "PIC_TIMING_SEI"))

(smithy/sdk/shapes:define-enum h265adaptive-quantization
    common-lisp:nil
  (:auto "AUTO")
  (:high "HIGH")
  (:higher "HIGHER")
  (:low "LOW")
  (:max "MAX")
  (:medium "MEDIUM")
  (:off "OFF"))

(smithy/sdk/shapes:define-enum h265alternative-transfer-function
    common-lisp:nil
  (:insert "INSERT")
  (:omit "OMIT"))

(smithy/sdk/shapes:define-enum h265color-metadata
    common-lisp:nil
  (:ignore "IGNORE")
  (:insert "INSERT"))

(smithy/sdk/shapes:define-structure h265color-space-settings common-lisp:nil
                                    ((color-space-passthrough-settings
                                      :target-type
                                      color-space-passthrough-settings
                                      :member-name
                                      "ColorSpacePassthroughSettings"
                                      :json-name
                                      "colorSpacePassthroughSettings")
                                     (dolby-vision81settings :target-type
                                      dolby-vision81settings :member-name
                                      "DolbyVision81Settings" :json-name
                                      "dolbyVision81Settings")
                                     (hdr10settings :target-type hdr10settings
                                      :member-name "Hdr10Settings" :json-name
                                      "hdr10Settings")
                                     (rec601settings :target-type
                                      rec601settings :member-name
                                      "Rec601Settings" :json-name
                                      "rec601Settings")
                                     (rec709settings :target-type
                                      rec709settings :member-name
                                      "Rec709Settings" :json-name
                                      "rec709Settings"))
                                    (:shape-name "H265ColorSpaceSettings"))

(smithy/sdk/shapes:define-enum h265deblocking
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-structure h265filter-settings common-lisp:nil
                                    ((temporal-filter-settings :target-type
                                      temporal-filter-settings :member-name
                                      "TemporalFilterSettings" :json-name
                                      "temporalFilterSettings")
                                     (bandwidth-reduction-filter-settings
                                      :target-type
                                      bandwidth-reduction-filter-settings
                                      :member-name
                                      "BandwidthReductionFilterSettings"
                                      :json-name
                                      "bandwidthReductionFilterSettings"))
                                    (:shape-name "H265FilterSettings"))

(smithy/sdk/shapes:define-enum h265flicker-aq
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum h265gop-size-units
    common-lisp:nil
  (:frames "FRAMES")
  (:seconds "SECONDS"))

(smithy/sdk/shapes:define-enum h265level
    common-lisp:nil
  (:h265-level-1 "H265_LEVEL_1")
  (:h265-level-2 "H265_LEVEL_2")
  (:h265-level-2-1 "H265_LEVEL_2_1")
  (:h265-level-3 "H265_LEVEL_3")
  (:h265-level-3-1 "H265_LEVEL_3_1")
  (:h265-level-4 "H265_LEVEL_4")
  (:h265-level-4-1 "H265_LEVEL_4_1")
  (:h265-level-5 "H265_LEVEL_5")
  (:h265-level-5-1 "H265_LEVEL_5_1")
  (:h265-level-5-2 "H265_LEVEL_5_2")
  (:h265-level-6 "H265_LEVEL_6")
  (:h265-level-6-1 "H265_LEVEL_6_1")
  (:h265-level-6-2 "H265_LEVEL_6_2")
  (:h265-level-auto "H265_LEVEL_AUTO"))

(smithy/sdk/shapes:define-enum h265look-ahead-rate-control
    common-lisp:nil
  (:high "HIGH")
  (:low "LOW")
  (:medium "MEDIUM"))

(smithy/sdk/shapes:define-enum h265mv-over-picture-boundaries
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum h265mv-temporal-predictor
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum h265profile
    common-lisp:nil
  (:main "MAIN")
  (:main-10bit "MAIN_10BIT"))

(smithy/sdk/shapes:define-enum h265rate-control-mode
    common-lisp:nil
  (:cbr "CBR")
  (:multiplex "MULTIPLEX")
  (:qvbr "QVBR"))

(smithy/sdk/shapes:define-enum h265scan-type
    common-lisp:nil
  (:interlaced "INTERLACED")
  (:progressive "PROGRESSIVE"))

(smithy/sdk/shapes:define-enum h265scene-change-detect
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-structure h265settings common-lisp:nil
                                    ((adaptive-quantization :target-type
                                      h265adaptive-quantization :member-name
                                      "AdaptiveQuantization" :json-name
                                      "adaptiveQuantization")
                                     (afd-signaling :target-type afd-signaling
                                      :member-name "AfdSignaling" :json-name
                                      "afdSignaling")
                                     (alternative-transfer-function
                                      :target-type
                                      h265alternative-transfer-function
                                      :member-name
                                      "AlternativeTransferFunction" :json-name
                                      "alternativeTransferFunction")
                                     (bitrate :target-type
                                      integer-min100000max40000000 :member-name
                                      "Bitrate" :json-name "bitrate")
                                     (buf-size :target-type
                                      integer-min100000max80000000 :member-name
                                      "BufSize" :json-name "bufSize")
                                     (color-metadata :target-type
                                      h265color-metadata :member-name
                                      "ColorMetadata" :json-name
                                      "colorMetadata")
                                     (color-space-settings :target-type
                                      h265color-space-settings :member-name
                                      "ColorSpaceSettings" :json-name
                                      "colorSpaceSettings")
                                     (filter-settings :target-type
                                      h265filter-settings :member-name
                                      "FilterSettings" :json-name
                                      "filterSettings")
                                     (fixed-afd :target-type fixed-afd
                                      :member-name "FixedAfd" :json-name
                                      "fixedAfd")
                                     (flicker-aq :target-type h265flicker-aq
                                      :member-name "FlickerAq" :json-name
                                      "flickerAq")
                                     (framerate-denominator :target-type
                                      integer-min1max3003 :required
                                      common-lisp:t :member-name
                                      "FramerateDenominator" :json-name
                                      "framerateDenominator")
                                     (framerate-numerator :target-type
                                      integer-min1 :required common-lisp:t
                                      :member-name "FramerateNumerator"
                                      :json-name "framerateNumerator")
                                     (gop-closed-cadence :target-type
                                      integer-min0 :member-name
                                      "GopClosedCadence" :json-name
                                      "gopClosedCadence")
                                     (gop-size :target-type double :member-name
                                      "GopSize" :json-name "gopSize")
                                     (gop-size-units :target-type
                                      h265gop-size-units :member-name
                                      "GopSizeUnits" :json-name "gopSizeUnits")
                                     (level :target-type h265level :member-name
                                      "Level" :json-name "level")
                                     (look-ahead-rate-control :target-type
                                      h265look-ahead-rate-control :member-name
                                      "LookAheadRateControl" :json-name
                                      "lookAheadRateControl")
                                     (max-bitrate :target-type
                                      integer-min100000max40000000 :member-name
                                      "MaxBitrate" :json-name "maxBitrate")
                                     (min-iinterval :target-type
                                      integer-min0max30 :member-name
                                      "MinIInterval" :json-name "minIInterval")
                                     (par-denominator :target-type integer-min1
                                      :member-name "ParDenominator" :json-name
                                      "parDenominator")
                                     (par-numerator :target-type integer-min1
                                      :member-name "ParNumerator" :json-name
                                      "parNumerator")
                                     (profile :target-type h265profile
                                      :member-name "Profile" :json-name
                                      "profile")
                                     (qvbr-quality-level :target-type
                                      integer-min1max10 :member-name
                                      "QvbrQualityLevel" :json-name
                                      "qvbrQualityLevel")
                                     (rate-control-mode :target-type
                                      h265rate-control-mode :member-name
                                      "RateControlMode" :json-name
                                      "rateControlMode")
                                     (scan-type :target-type h265scan-type
                                      :member-name "ScanType" :json-name
                                      "scanType")
                                     (scene-change-detect :target-type
                                      h265scene-change-detect :member-name
                                      "SceneChangeDetect" :json-name
                                      "sceneChangeDetect")
                                     (slices :target-type integer-min1max16
                                      :member-name "Slices" :json-name
                                      "slices")
                                     (tier :target-type h265tier :member-name
                                      "Tier" :json-name "tier")
                                     (timecode-insertion :target-type
                                      h265timecode-insertion-behavior
                                      :member-name "TimecodeInsertion"
                                      :json-name "timecodeInsertion")
                                     (timecode-burnin-settings :target-type
                                      timecode-burnin-settings :member-name
                                      "TimecodeBurninSettings" :json-name
                                      "timecodeBurninSettings")
                                     (mv-over-picture-boundaries :target-type
                                      h265mv-over-picture-boundaries
                                      :member-name "MvOverPictureBoundaries"
                                      :json-name "mvOverPictureBoundaries")
                                     (mv-temporal-predictor :target-type
                                      h265mv-temporal-predictor :member-name
                                      "MvTemporalPredictor" :json-name
                                      "mvTemporalPredictor")
                                     (tile-height :target-type
                                      integer-min64max2160 :member-name
                                      "TileHeight" :json-name "tileHeight")
                                     (tile-padding :target-type
                                      h265tile-padding :member-name
                                      "TilePadding" :json-name "tilePadding")
                                     (tile-width :target-type
                                      integer-min256max3840 :member-name
                                      "TileWidth" :json-name "tileWidth")
                                     (treeblock-size :target-type
                                      h265treeblock-size :member-name
                                      "TreeblockSize" :json-name
                                      "treeblockSize")
                                     (min-qp :target-type integer-min1max51
                                      :member-name "MinQp" :json-name "minQp")
                                     (deblocking :target-type h265deblocking
                                      :member-name "Deblocking" :json-name
                                      "deblocking"))
                                    (:shape-name "H265Settings"))

(smithy/sdk/shapes:define-enum h265tier
    common-lisp:nil
  (:high "HIGH")
  (:main "MAIN"))

(smithy/sdk/shapes:define-enum h265tile-padding
    common-lisp:nil
  (:none "NONE")
  (:padded "PADDED"))

(smithy/sdk/shapes:define-enum h265timecode-insertion-behavior
    common-lisp:nil
  (:disabled "DISABLED")
  (:pic-timing-sei "PIC_TIMING_SEI"))

(smithy/sdk/shapes:define-enum h265treeblock-size
    common-lisp:nil
  (:auto "AUTO")
  (:tree-size-32x32 "TREE_SIZE_32X32"))

(smithy/sdk/shapes:define-structure hdr10settings common-lisp:nil
                                    ((max-cll :target-type integer-min0max32768
                                      :member-name "MaxCll" :json-name
                                      "maxCll")
                                     (max-fall :target-type
                                      integer-min0max32768 :member-name
                                      "MaxFall" :json-name "maxFall"))
                                    (:shape-name "Hdr10Settings"))

(smithy/sdk/shapes:define-enum hls-ad-markers
    common-lisp:nil
  (:adobe "ADOBE")
  (:elemental "ELEMENTAL")
  (:elemental-scte35 "ELEMENTAL_SCTE35"))

(smithy/sdk/shapes:define-enum hls-akamai-http-transfer-mode
    common-lisp:nil
  (:chunked "CHUNKED")
  (:non-chunked "NON_CHUNKED"))

(smithy/sdk/shapes:define-structure hls-akamai-settings common-lisp:nil
                                    ((connection-retry-interval :target-type
                                      integer-min0 :member-name
                                      "ConnectionRetryInterval" :json-name
                                      "connectionRetryInterval")
                                     (filecache-duration :target-type
                                      integer-min0max600 :member-name
                                      "FilecacheDuration" :json-name
                                      "filecacheDuration")
                                     (http-transfer-mode :target-type
                                      hls-akamai-http-transfer-mode
                                      :member-name "HttpTransferMode"
                                      :json-name "httpTransferMode")
                                     (num-retries :target-type integer-min0
                                      :member-name "NumRetries" :json-name
                                      "numRetries")
                                     (restart-delay :target-type
                                      integer-min0max15 :member-name
                                      "RestartDelay" :json-name "restartDelay")
                                     (salt :target-type string :member-name
                                      "Salt" :json-name "salt")
                                     (token :target-type string :member-name
                                      "Token" :json-name "token"))
                                    (:shape-name "HlsAkamaiSettings"))

(smithy/sdk/shapes:define-structure hls-basic-put-settings common-lisp:nil
                                    ((connection-retry-interval :target-type
                                      integer-min0 :member-name
                                      "ConnectionRetryInterval" :json-name
                                      "connectionRetryInterval")
                                     (filecache-duration :target-type
                                      integer-min0max600 :member-name
                                      "FilecacheDuration" :json-name
                                      "filecacheDuration")
                                     (num-retries :target-type integer-min0
                                      :member-name "NumRetries" :json-name
                                      "numRetries")
                                     (restart-delay :target-type
                                      integer-min0max15 :member-name
                                      "RestartDelay" :json-name
                                      "restartDelay"))
                                    (:shape-name "HlsBasicPutSettings"))

(smithy/sdk/shapes:define-enum hls-caption-language-setting
    common-lisp:nil
  (:insert "INSERT")
  (:none "NONE")
  (:omit "OMIT"))

(smithy/sdk/shapes:define-structure hls-cdn-settings common-lisp:nil
                                    ((hls-akamai-settings :target-type
                                      hls-akamai-settings :member-name
                                      "HlsAkamaiSettings" :json-name
                                      "hlsAkamaiSettings")
                                     (hls-basic-put-settings :target-type
                                      hls-basic-put-settings :member-name
                                      "HlsBasicPutSettings" :json-name
                                      "hlsBasicPutSettings")
                                     (hls-media-store-settings :target-type
                                      hls-media-store-settings :member-name
                                      "HlsMediaStoreSettings" :json-name
                                      "hlsMediaStoreSettings")
                                     (hls-s3settings :target-type
                                      hls-s3settings :member-name
                                      "HlsS3Settings" :json-name
                                      "hlsS3Settings")
                                     (hls-webdav-settings :target-type
                                      hls-webdav-settings :member-name
                                      "HlsWebdavSettings" :json-name
                                      "hlsWebdavSettings"))
                                    (:shape-name "HlsCdnSettings"))

(smithy/sdk/shapes:define-enum hls-client-cache
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum hls-codec-specification
    common-lisp:nil
  (:rfc-4281 "RFC_4281")
  (:rfc-6381 "RFC_6381"))

(smithy/sdk/shapes:define-enum hls-directory-structure
    common-lisp:nil
  (:single-directory "SINGLE_DIRECTORY")
  (:subdirectory-per-stream "SUBDIRECTORY_PER_STREAM"))

(smithy/sdk/shapes:define-enum hls-discontinuity-tags
    common-lisp:nil
  (:insert "INSERT")
  (:never-insert "NEVER_INSERT"))

(smithy/sdk/shapes:define-enum hls-encryption-type
    common-lisp:nil
  (:aes128 "AES128")
  (:sample-aes "SAMPLE_AES"))

(smithy/sdk/shapes:define-structure hls-group-settings common-lisp:nil
                                    ((ad-markers :target-type
                                      list-of-hls-ad-markers :member-name
                                      "AdMarkers" :json-name "adMarkers")
                                     (base-url-content :target-type string
                                      :member-name "BaseUrlContent" :json-name
                                      "baseUrlContent")
                                     (base-url-content1 :target-type string
                                      :member-name "BaseUrlContent1" :json-name
                                      "baseUrlContent1")
                                     (base-url-manifest :target-type string
                                      :member-name "BaseUrlManifest" :json-name
                                      "baseUrlManifest")
                                     (base-url-manifest1 :target-type string
                                      :member-name "BaseUrlManifest1"
                                      :json-name "baseUrlManifest1")
                                     (caption-language-mappings :target-type
                                      list-of-caption-language-mapping
                                      :member-name "CaptionLanguageMappings"
                                      :json-name "captionLanguageMappings")
                                     (caption-language-setting :target-type
                                      hls-caption-language-setting :member-name
                                      "CaptionLanguageSetting" :json-name
                                      "captionLanguageSetting")
                                     (client-cache :target-type
                                      hls-client-cache :member-name
                                      "ClientCache" :json-name "clientCache")
                                     (codec-specification :target-type
                                      hls-codec-specification :member-name
                                      "CodecSpecification" :json-name
                                      "codecSpecification")
                                     (constant-iv :target-type
                                      string-min32max32 :member-name
                                      "ConstantIv" :json-name "constantIv")
                                     (destination :target-type
                                      output-location-ref :required
                                      common-lisp:t :member-name "Destination"
                                      :json-name "destination")
                                     (directory-structure :target-type
                                      hls-directory-structure :member-name
                                      "DirectoryStructure" :json-name
                                      "directoryStructure")
                                     (discontinuity-tags :target-type
                                      hls-discontinuity-tags :member-name
                                      "DiscontinuityTags" :json-name
                                      "discontinuityTags")
                                     (encryption-type :target-type
                                      hls-encryption-type :member-name
                                      "EncryptionType" :json-name
                                      "encryptionType")
                                     (hls-cdn-settings :target-type
                                      hls-cdn-settings :member-name
                                      "HlsCdnSettings" :json-name
                                      "hlsCdnSettings")
                                     (hls-id3segment-tagging :target-type
                                      hls-id3segment-tagging-state :member-name
                                      "HlsId3SegmentTagging" :json-name
                                      "hlsId3SegmentTagging")
                                     (iframe-only-playlists :target-type
                                      iframe-only-playlist-type :member-name
                                      "IFrameOnlyPlaylists" :json-name
                                      "iFrameOnlyPlaylists")
                                     (incomplete-segment-behavior :target-type
                                      hls-incomplete-segment-behavior
                                      :member-name "IncompleteSegmentBehavior"
                                      :json-name "incompleteSegmentBehavior")
                                     (index-nsegments :target-type integer-min3
                                      :member-name "IndexNSegments" :json-name
                                      "indexNSegments")
                                     (input-loss-action :target-type
                                      input-loss-action-for-hls-out
                                      :member-name "InputLossAction" :json-name
                                      "inputLossAction")
                                     (iv-in-manifest :target-type
                                      hls-iv-in-manifest :member-name
                                      "IvInManifest" :json-name "ivInManifest")
                                     (iv-source :target-type hls-iv-source
                                      :member-name "IvSource" :json-name
                                      "ivSource")
                                     (keep-segments :target-type integer-min1
                                      :member-name "KeepSegments" :json-name
                                      "keepSegments")
                                     (key-format :target-type string
                                      :member-name "KeyFormat" :json-name
                                      "keyFormat")
                                     (key-format-versions :target-type string
                                      :member-name "KeyFormatVersions"
                                      :json-name "keyFormatVersions")
                                     (key-provider-settings :target-type
                                      key-provider-settings :member-name
                                      "KeyProviderSettings" :json-name
                                      "keyProviderSettings")
                                     (manifest-compression :target-type
                                      hls-manifest-compression :member-name
                                      "ManifestCompression" :json-name
                                      "manifestCompression")
                                     (manifest-duration-format :target-type
                                      hls-manifest-duration-format :member-name
                                      "ManifestDurationFormat" :json-name
                                      "manifestDurationFormat")
                                     (min-segment-length :target-type
                                      integer-min0 :member-name
                                      "MinSegmentLength" :json-name
                                      "minSegmentLength")
                                     (mode :target-type hls-mode :member-name
                                      "Mode" :json-name "mode")
                                     (output-selection :target-type
                                      hls-output-selection :member-name
                                      "OutputSelection" :json-name
                                      "outputSelection")
                                     (program-date-time :target-type
                                      hls-program-date-time :member-name
                                      "ProgramDateTime" :json-name
                                      "programDateTime")
                                     (program-date-time-clock :target-type
                                      hls-program-date-time-clock :member-name
                                      "ProgramDateTimeClock" :json-name
                                      "programDateTimeClock")
                                     (program-date-time-period :target-type
                                      integer-min0max3600 :member-name
                                      "ProgramDateTimePeriod" :json-name
                                      "programDateTimePeriod")
                                     (redundant-manifest :target-type
                                      hls-redundant-manifest :member-name
                                      "RedundantManifest" :json-name
                                      "redundantManifest")
                                     (segment-length :target-type integer-min1
                                      :member-name "SegmentLength" :json-name
                                      "segmentLength")
                                     (segmentation-mode :target-type
                                      hls-segmentation-mode :member-name
                                      "SegmentationMode" :json-name
                                      "segmentationMode")
                                     (segments-per-subdirectory :target-type
                                      integer-min1 :member-name
                                      "SegmentsPerSubdirectory" :json-name
                                      "segmentsPerSubdirectory")
                                     (stream-inf-resolution :target-type
                                      hls-stream-inf-resolution :member-name
                                      "StreamInfResolution" :json-name
                                      "streamInfResolution")
                                     (timed-metadata-id3frame :target-type
                                      hls-timed-metadata-id3frame :member-name
                                      "TimedMetadataId3Frame" :json-name
                                      "timedMetadataId3Frame")
                                     (timed-metadata-id3period :target-type
                                      integer-min0 :member-name
                                      "TimedMetadataId3Period" :json-name
                                      "timedMetadataId3Period")
                                     (timestamp-delta-milliseconds :target-type
                                      integer-min0 :member-name
                                      "TimestampDeltaMilliseconds" :json-name
                                      "timestampDeltaMilliseconds")
                                     (ts-file-mode :target-type
                                      hls-ts-file-mode :member-name
                                      "TsFileMode" :json-name "tsFileMode"))
                                    (:shape-name "HlsGroupSettings"))

(smithy/sdk/shapes:define-enum hls-h265packaging-type
    common-lisp:nil
  (:hev1 "HEV1")
  (:hvc1 "HVC1"))

(smithy/sdk/shapes:define-structure
 hls-id3segment-tagging-schedule-action-settings common-lisp:nil
 ((tag :target-type string :member-name "Tag" :json-name "tag")
  (id3 :target-type string :member-name "Id3" :json-name "id3"))
 (:shape-name "HlsId3SegmentTaggingScheduleActionSettings"))

(smithy/sdk/shapes:define-enum hls-id3segment-tagging-state
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum hls-incomplete-segment-behavior
    common-lisp:nil
  (:auto "AUTO")
  (:suppress "SUPPRESS"))

(smithy/sdk/shapes:define-structure hls-input-settings common-lisp:nil
                                    ((bandwidth :target-type integer-min0
                                      :member-name "Bandwidth" :json-name
                                      "bandwidth")
                                     (buffer-segments :target-type integer-min0
                                      :member-name "BufferSegments" :json-name
                                      "bufferSegments")
                                     (retries :target-type integer-min0
                                      :member-name "Retries" :json-name
                                      "retries")
                                     (retry-interval :target-type integer-min0
                                      :member-name "RetryInterval" :json-name
                                      "retryInterval")
                                     (scte35source :target-type
                                      hls-scte35source-type :member-name
                                      "Scte35Source" :json-name
                                      "scte35Source"))
                                    (:shape-name "HlsInputSettings"))

(smithy/sdk/shapes:define-enum hls-iv-in-manifest
    common-lisp:nil
  (:exclude "EXCLUDE")
  (:include "INCLUDE"))

(smithy/sdk/shapes:define-enum hls-iv-source
    common-lisp:nil
  (:explicit "EXPLICIT")
  (:follows-segment-number "FOLLOWS_SEGMENT_NUMBER"))

(smithy/sdk/shapes:define-enum hls-manifest-compression
    common-lisp:nil
  (:gzip "GZIP")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum hls-manifest-duration-format
    common-lisp:nil
  (:floating-point "FLOATING_POINT")
  (:integer "INTEGER"))

(smithy/sdk/shapes:define-structure hls-media-store-settings common-lisp:nil
                                    ((connection-retry-interval :target-type
                                      integer-min0 :member-name
                                      "ConnectionRetryInterval" :json-name
                                      "connectionRetryInterval")
                                     (filecache-duration :target-type
                                      integer-min0max600 :member-name
                                      "FilecacheDuration" :json-name
                                      "filecacheDuration")
                                     (media-store-storage-class :target-type
                                      hls-media-store-storage-class
                                      :member-name "MediaStoreStorageClass"
                                      :json-name "mediaStoreStorageClass")
                                     (num-retries :target-type integer-min0
                                      :member-name "NumRetries" :json-name
                                      "numRetries")
                                     (restart-delay :target-type
                                      integer-min0max15 :member-name
                                      "RestartDelay" :json-name
                                      "restartDelay"))
                                    (:shape-name "HlsMediaStoreSettings"))

(smithy/sdk/shapes:define-enum hls-media-store-storage-class
    common-lisp:nil
  (:temporal "TEMPORAL"))

(smithy/sdk/shapes:define-enum hls-mode
    common-lisp:nil
  (:live "LIVE")
  (:vod "VOD"))

(smithy/sdk/shapes:define-enum hls-output-selection
    common-lisp:nil
  (:manifests-and-segments "MANIFESTS_AND_SEGMENTS")
  (:segments-only "SEGMENTS_ONLY")
  (:variant-manifests-and-segments "VARIANT_MANIFESTS_AND_SEGMENTS"))

(smithy/sdk/shapes:define-structure hls-output-settings common-lisp:nil
                                    ((h265packaging-type :target-type
                                      hls-h265packaging-type :member-name
                                      "H265PackagingType" :json-name
                                      "h265PackagingType")
                                     (hls-settings :target-type hls-settings
                                      :required common-lisp:t :member-name
                                      "HlsSettings" :json-name "hlsSettings")
                                     (name-modifier :target-type string-min1
                                      :member-name "NameModifier" :json-name
                                      "nameModifier")
                                     (segment-modifier :target-type string
                                      :member-name "SegmentModifier" :json-name
                                      "segmentModifier"))
                                    (:shape-name "HlsOutputSettings"))

(smithy/sdk/shapes:define-enum hls-program-date-time
    common-lisp:nil
  (:exclude "EXCLUDE")
  (:include "INCLUDE"))

(smithy/sdk/shapes:define-enum hls-program-date-time-clock
    common-lisp:nil
  (:initialize-from-output-timecode "INITIALIZE_FROM_OUTPUT_TIMECODE")
  (:system-clock "SYSTEM_CLOCK"))

(smithy/sdk/shapes:define-enum hls-redundant-manifest
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-structure hls-s3settings common-lisp:nil
                                    ((canned-acl :target-type s3canned-acl
                                      :member-name "CannedAcl" :json-name
                                      "cannedAcl"))
                                    (:shape-name "HlsS3Settings"))

(smithy/sdk/shapes:define-enum hls-scte35source-type
    common-lisp:nil
  (:manifest "MANIFEST")
  (:segments "SEGMENTS"))

(smithy/sdk/shapes:define-enum hls-segmentation-mode
    common-lisp:nil
  (:use-input-segmentation "USE_INPUT_SEGMENTATION")
  (:use-segment-duration "USE_SEGMENT_DURATION"))

(smithy/sdk/shapes:define-structure hls-settings common-lisp:nil
                                    ((audio-only-hls-settings :target-type
                                      audio-only-hls-settings :member-name
                                      "AudioOnlyHlsSettings" :json-name
                                      "audioOnlyHlsSettings")
                                     (fmp4hls-settings :target-type
                                      fmp4hls-settings :member-name
                                      "Fmp4HlsSettings" :json-name
                                      "fmp4HlsSettings")
                                     (frame-capture-hls-settings :target-type
                                      frame-capture-hls-settings :member-name
                                      "FrameCaptureHlsSettings" :json-name
                                      "frameCaptureHlsSettings")
                                     (standard-hls-settings :target-type
                                      standard-hls-settings :member-name
                                      "StandardHlsSettings" :json-name
                                      "standardHlsSettings"))
                                    (:shape-name "HlsSettings"))

(smithy/sdk/shapes:define-enum hls-stream-inf-resolution
    common-lisp:nil
  (:exclude "EXCLUDE")
  (:include "INCLUDE"))

(smithy/sdk/shapes:define-enum hls-timed-metadata-id3frame
    common-lisp:nil
  (:none "NONE")
  (:priv "PRIV")
  (:tdrl "TDRL"))

(smithy/sdk/shapes:define-structure hls-timed-metadata-schedule-action-settings
                                    common-lisp:nil
                                    ((id3 :target-type string :required
                                      common-lisp:t :member-name "Id3"
                                      :json-name "id3"))
                                    (:shape-name
                                     "HlsTimedMetadataScheduleActionSettings"))

(smithy/sdk/shapes:define-enum hls-ts-file-mode
    common-lisp:nil
  (:segmented-files "SEGMENTED_FILES")
  (:single-file "SINGLE_FILE"))

(smithy/sdk/shapes:define-enum hls-webdav-http-transfer-mode
    common-lisp:nil
  (:chunked "CHUNKED")
  (:non-chunked "NON_CHUNKED"))

(smithy/sdk/shapes:define-structure hls-webdav-settings common-lisp:nil
                                    ((connection-retry-interval :target-type
                                      integer-min0 :member-name
                                      "ConnectionRetryInterval" :json-name
                                      "connectionRetryInterval")
                                     (filecache-duration :target-type
                                      integer-min0max600 :member-name
                                      "FilecacheDuration" :json-name
                                      "filecacheDuration")
                                     (http-transfer-mode :target-type
                                      hls-webdav-http-transfer-mode
                                      :member-name "HttpTransferMode"
                                      :json-name "httpTransferMode")
                                     (num-retries :target-type integer-min0
                                      :member-name "NumRetries" :json-name
                                      "numRetries")
                                     (restart-delay :target-type
                                      integer-min0max15 :member-name
                                      "RestartDelay" :json-name
                                      "restartDelay"))
                                    (:shape-name "HlsWebdavSettings"))

(smithy/sdk/shapes:define-structure html-motion-graphics-settings
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "HtmlMotionGraphicsSettings"))

(smithy/sdk/shapes:define-enum iframe-only-playlist-type
    common-lisp:nil
  (:disabled "DISABLED")
  (:standard "STANDARD"))

(smithy/sdk/shapes:define-structure id3segment-tagging-schedule-action-settings
                                    common-lisp:nil
                                    ((id3 :target-type string :member-name
                                      "Id3" :json-name "id3")
                                     (tag :target-type string :member-name
                                      "Tag" :json-name "tag"))
                                    (:shape-name
                                     "Id3SegmentTaggingScheduleActionSettings"))

(smithy/sdk/shapes:define-structure
 immediate-mode-schedule-action-start-settings common-lisp:nil common-lisp:nil
 (:shape-name "ImmediateModeScheduleActionStartSettings"))

(smithy/sdk/shapes:define-enum include-filler-nal-units
    common-lisp:nil
  (:auto "AUTO")
  (:drop "DROP")
  (:include "INCLUDE"))

(smithy/sdk/shapes:define-structure input common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn" :json-name "arn")
                                     (attached-channels :target-type
                                      list-of-string :member-name
                                      "AttachedChannels" :json-name
                                      "attachedChannels")
                                     (destinations :target-type
                                      list-of-input-destination :member-name
                                      "Destinations" :json-name "destinations")
                                     (id :target-type string :member-name "Id"
                                      :json-name "id")
                                     (input-class :target-type input-class
                                      :member-name "InputClass" :json-name
                                      "inputClass")
                                     (input-devices :target-type
                                      list-of-input-device-settings
                                      :member-name "InputDevices" :json-name
                                      "inputDevices")
                                     (input-partner-ids :target-type
                                      list-of-string :member-name
                                      "InputPartnerIds" :json-name
                                      "inputPartnerIds")
                                     (input-source-type :target-type
                                      input-source-type :member-name
                                      "InputSourceType" :json-name
                                      "inputSourceType")
                                     (media-connect-flows :target-type
                                      list-of-media-connect-flow :member-name
                                      "MediaConnectFlows" :json-name
                                      "mediaConnectFlows")
                                     (name :target-type string :member-name
                                      "Name" :json-name "name")
                                     (role-arn :target-type string :member-name
                                      "RoleArn" :json-name "roleArn")
                                     (security-groups :target-type
                                      list-of-string :member-name
                                      "SecurityGroups" :json-name
                                      "securityGroups")
                                     (sources :target-type list-of-input-source
                                      :member-name "Sources" :json-name
                                      "sources")
                                     (state :target-type input-state
                                      :member-name "State" :json-name "state")
                                     (tags :target-type tags :member-name
                                      "Tags" :json-name "tags")
                                     (type :target-type input-type :member-name
                                      "Type" :json-name "type")
                                     (srt-settings :target-type srt-settings
                                      :member-name "SrtSettings" :json-name
                                      "srtSettings")
                                     (input-network-location :target-type
                                      input-network-location :member-name
                                      "InputNetworkLocation" :json-name
                                      "inputNetworkLocation")
                                     (multicast-settings :target-type
                                      multicast-settings :member-name
                                      "MulticastSettings" :json-name
                                      "multicastSettings")
                                     (smpte2110receiver-group-settings
                                      :target-type
                                      smpte2110receiver-group-settings
                                      :member-name
                                      "Smpte2110ReceiverGroupSettings"
                                      :json-name
                                      "smpte2110ReceiverGroupSettings")
                                     (sdi-sources :target-type
                                      input-sdi-sources :member-name
                                      "SdiSources" :json-name "sdiSources"))
                                    (:shape-name "Input"))

(smithy/sdk/shapes:define-structure input-attachment common-lisp:nil
                                    ((automatic-input-failover-settings
                                      :target-type
                                      automatic-input-failover-settings
                                      :member-name
                                      "AutomaticInputFailoverSettings"
                                      :json-name
                                      "automaticInputFailoverSettings")
                                     (input-attachment-name :target-type string
                                      :member-name "InputAttachmentName"
                                      :json-name "inputAttachmentName")
                                     (input-id :target-type string :member-name
                                      "InputId" :json-name "inputId")
                                     (input-settings :target-type
                                      input-settings :member-name
                                      "InputSettings" :json-name
                                      "inputSettings")
                                     (logical-interface-names :target-type
                                      list-of-string :member-name
                                      "LogicalInterfaceNames" :json-name
                                      "logicalInterfaceNames"))
                                    (:shape-name "InputAttachment"))

(smithy/sdk/shapes:define-structure input-channel-level common-lisp:nil
                                    ((gain :target-type
                                      integer-min-negative60max6 :required
                                      common-lisp:t :member-name "Gain"
                                      :json-name "gain")
                                     (input-channel :target-type
                                      integer-min0max15 :required common-lisp:t
                                      :member-name "InputChannel" :json-name
                                      "inputChannel"))
                                    (:shape-name "InputChannelLevel"))

(smithy/sdk/shapes:define-enum input-class
    common-lisp:nil
  (:standard "STANDARD")
  (:single-pipeline "SINGLE_PIPELINE"))

(smithy/sdk/shapes:define-structure input-clipping-settings common-lisp:nil
                                    ((input-timecode-source :target-type
                                      input-timecode-source :required
                                      common-lisp:t :member-name
                                      "InputTimecodeSource" :json-name
                                      "inputTimecodeSource")
                                     (start-timecode :target-type
                                      start-timecode :member-name
                                      "StartTimecode" :json-name
                                      "startTimecode")
                                     (stop-timecode :target-type stop-timecode
                                      :member-name "StopTimecode" :json-name
                                      "stopTimecode"))
                                    (:shape-name "InputClippingSettings"))

(smithy/sdk/shapes:define-enum input-codec
    common-lisp:nil
  (:mpeg2 "MPEG2")
  (:avc "AVC")
  (:hevc "HEVC"))

(smithy/sdk/shapes:define-enum input-deblock-filter
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum input-denoise-filter
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-structure input-destination common-lisp:nil
                                    ((ip :target-type string :member-name "Ip"
                                      :json-name "ip")
                                     (port :target-type string :member-name
                                      "Port" :json-name "port")
                                     (url :target-type string :member-name
                                      "Url" :json-name "url")
                                     (vpc :target-type input-destination-vpc
                                      :member-name "Vpc" :json-name "vpc")
                                     (network :target-type string :member-name
                                      "Network" :json-name "network")
                                     (network-routes :target-type
                                      list-of-input-destination-route
                                      :member-name "NetworkRoutes" :json-name
                                      "networkRoutes"))
                                    (:shape-name "InputDestination"))

(smithy/sdk/shapes:define-structure input-destination-request common-lisp:nil
                                    ((stream-name :target-type string
                                      :member-name "StreamName" :json-name
                                      "streamName")
                                     (network :target-type string :member-name
                                      "Network" :json-name "network")
                                     (network-routes :target-type
                                      list-of-input-request-destination-route
                                      :member-name "NetworkRoutes" :json-name
                                      "networkRoutes")
                                     (static-ip-address :target-type string
                                      :member-name "StaticIpAddress" :json-name
                                      "staticIpAddress"))
                                    (:shape-name "InputDestinationRequest"))

(smithy/sdk/shapes:define-structure input-destination-route common-lisp:nil
                                    ((cidr :target-type string :member-name
                                      "Cidr" :json-name "cidr")
                                     (gateway :target-type string :member-name
                                      "Gateway" :json-name "gateway"))
                                    (:shape-name "InputDestinationRoute"))

(smithy/sdk/shapes:define-structure input-destination-vpc common-lisp:nil
                                    ((availability-zone :target-type string
                                      :member-name "AvailabilityZone"
                                      :json-name "availabilityZone")
                                     (network-interface-id :target-type string
                                      :member-name "NetworkInterfaceId"
                                      :json-name "networkInterfaceId"))
                                    (:shape-name "InputDestinationVpc"))

(smithy/sdk/shapes:define-enum input-device-active-input
    common-lisp:nil
  (:hdmi "HDMI")
  (:sdi "SDI"))

(smithy/sdk/shapes:define-enum input-device-codec
    common-lisp:nil
  (:hevc "HEVC")
  (:avc "AVC"))

(smithy/sdk/shapes:define-structure
 input-device-configurable-audio-channel-pair-config common-lisp:nil
 ((id :target-type integer :member-name "Id" :json-name "id")
  (profile :target-type input-device-configurable-audio-channel-pair-profile
   :member-name "Profile" :json-name "profile"))
 (:shape-name "InputDeviceConfigurableAudioChannelPairConfig"))

(smithy/sdk/shapes:define-enum input-device-configurable-audio-channel-pair-profile
    common-lisp:nil
  (:disabled "DISABLED")
  (:vbr-aac-hhe-16000 "VBR-AAC_HHE-16000")
  (:vbr-aac-he-64000 "VBR-AAC_HE-64000")
  (:vbr-aac-lc-128000 "VBR-AAC_LC-128000")
  (:cbr-aac-hq-192000 "CBR-AAC_HQ-192000")
  (:cbr-aac-hq-256000 "CBR-AAC_HQ-256000")
  (:cbr-aac-hq-384000 "CBR-AAC_HQ-384000")
  (:cbr-aac-hq-512000 "CBR-AAC_HQ-512000"))

(smithy/sdk/shapes:define-structure input-device-configurable-settings
                                    common-lisp:nil
                                    ((configured-input :target-type
                                      input-device-configured-input
                                      :member-name "ConfiguredInput" :json-name
                                      "configuredInput")
                                     (max-bitrate :target-type integer
                                      :member-name "MaxBitrate" :json-name
                                      "maxBitrate")
                                     (latency-ms :target-type integer
                                      :member-name "LatencyMs" :json-name
                                      "latencyMs")
                                     (codec :target-type input-device-codec
                                      :member-name "Codec" :json-name "codec")
                                     (mediaconnect-settings :target-type
                                      input-device-media-connect-configurable-settings
                                      :member-name "MediaconnectSettings"
                                      :json-name "mediaconnectSettings")
                                     (audio-channel-pairs :target-type
                                      list-of-input-device-configurable-audio-channel-pair-config
                                      :member-name "AudioChannelPairs"
                                      :json-name "audioChannelPairs")
                                     (input-resolution :target-type string
                                      :member-name "InputResolution" :json-name
                                      "inputResolution"))
                                    (:shape-name
                                     "InputDeviceConfigurableSettings"))

(smithy/sdk/shapes:define-enum input-device-configured-input
    common-lisp:nil
  (:auto "AUTO")
  (:hdmi "HDMI")
  (:sdi "SDI"))

(smithy/sdk/shapes:define-enum input-device-connection-state
    common-lisp:nil
  (:disconnected "DISCONNECTED")
  (:connected "CONNECTED"))

(smithy/sdk/shapes:define-structure input-device-hd-settings common-lisp:nil
                                    ((active-input :target-type
                                      input-device-active-input :member-name
                                      "ActiveInput" :json-name "activeInput")
                                     (configured-input :target-type
                                      input-device-configured-input
                                      :member-name "ConfiguredInput" :json-name
                                      "configuredInput")
                                     (device-state :target-type
                                      input-device-state :member-name
                                      "DeviceState" :json-name "deviceState")
                                     (framerate :target-type double
                                      :member-name "Framerate" :json-name
                                      "framerate")
                                     (height :target-type integer :member-name
                                      "Height" :json-name "height")
                                     (max-bitrate :target-type integer
                                      :member-name "MaxBitrate" :json-name
                                      "maxBitrate")
                                     (scan-type :target-type
                                      input-device-scan-type :member-name
                                      "ScanType" :json-name "scanType")
                                     (width :target-type integer :member-name
                                      "Width" :json-name "width")
                                     (latency-ms :target-type integer
                                      :member-name "LatencyMs" :json-name
                                      "latencyMs"))
                                    (:shape-name "InputDeviceHdSettings"))

(smithy/sdk/shapes:define-enum input-device-ip-scheme
    common-lisp:nil
  (:static "STATIC")
  (:dhcp "DHCP"))

(smithy/sdk/shapes:define-structure
 input-device-media-connect-configurable-settings common-lisp:nil
 ((flow-arn :target-type string :member-name "FlowArn" :json-name "flowArn")
  (role-arn :target-type string :member-name "RoleArn" :json-name "roleArn")
  (secret-arn :target-type string :member-name "SecretArn" :json-name
   "secretArn")
  (source-name :target-type string :member-name "SourceName" :json-name
   "sourceName"))
 (:shape-name "InputDeviceMediaConnectConfigurableSettings"))

(smithy/sdk/shapes:define-structure input-device-media-connect-settings
                                    common-lisp:nil
                                    ((flow-arn :target-type string :member-name
                                      "FlowArn" :json-name "flowArn")
                                     (role-arn :target-type string :member-name
                                      "RoleArn" :json-name "roleArn")
                                     (secret-arn :target-type string
                                      :member-name "SecretArn" :json-name
                                      "secretArn")
                                     (source-name :target-type string
                                      :member-name "SourceName" :json-name
                                      "sourceName"))
                                    (:shape-name
                                     "InputDeviceMediaConnectSettings"))

(smithy/sdk/shapes:define-structure input-device-network-settings
                                    common-lisp:nil
                                    ((dns-addresses :target-type list-of-string
                                      :member-name "DnsAddresses" :json-name
                                      "dnsAddresses")
                                     (gateway :target-type string :member-name
                                      "Gateway" :json-name "gateway")
                                     (ip-address :target-type string
                                      :member-name "IpAddress" :json-name
                                      "ipAddress")
                                     (ip-scheme :target-type
                                      input-device-ip-scheme :member-name
                                      "IpScheme" :json-name "ipScheme")
                                     (subnet-mask :target-type string
                                      :member-name "SubnetMask" :json-name
                                      "subnetMask"))
                                    (:shape-name "InputDeviceNetworkSettings"))

(smithy/sdk/shapes:define-enum input-device-output-type
    common-lisp:nil
  (:none "NONE")
  (:medialive-input "MEDIALIVE_INPUT")
  (:mediaconnect-flow "MEDIACONNECT_FLOW"))

(smithy/sdk/shapes:define-structure input-device-request common-lisp:nil
                                    ((id :target-type string :member-name "Id"
                                      :json-name "id"))
                                    (:shape-name "InputDeviceRequest"))

(smithy/sdk/shapes:define-enum input-device-scan-type
    common-lisp:nil
  (:interlaced "INTERLACED")
  (:progressive "PROGRESSIVE"))

(smithy/sdk/shapes:define-structure input-device-settings common-lisp:nil
                                    ((id :target-type string :member-name "Id"
                                      :json-name "id"))
                                    (:shape-name "InputDeviceSettings"))

(smithy/sdk/shapes:define-enum input-device-state
    common-lisp:nil
  (:idle "IDLE")
  (:streaming "STREAMING"))

(smithy/sdk/shapes:define-structure input-device-summary common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn" :json-name "arn")
                                     (connection-state :target-type
                                      input-device-connection-state
                                      :member-name "ConnectionState" :json-name
                                      "connectionState")
                                     (device-settings-sync-state :target-type
                                      device-settings-sync-state :member-name
                                      "DeviceSettingsSyncState" :json-name
                                      "deviceSettingsSyncState")
                                     (device-update-status :target-type
                                      device-update-status :member-name
                                      "DeviceUpdateStatus" :json-name
                                      "deviceUpdateStatus")
                                     (hd-device-settings :target-type
                                      input-device-hd-settings :member-name
                                      "HdDeviceSettings" :json-name
                                      "hdDeviceSettings")
                                     (id :target-type string :member-name "Id"
                                      :json-name "id")
                                     (mac-address :target-type string
                                      :member-name "MacAddress" :json-name
                                      "macAddress")
                                     (name :target-type string :member-name
                                      "Name" :json-name "name")
                                     (network-settings :target-type
                                      input-device-network-settings
                                      :member-name "NetworkSettings" :json-name
                                      "networkSettings")
                                     (serial-number :target-type string
                                      :member-name "SerialNumber" :json-name
                                      "serialNumber")
                                     (type :target-type input-device-type
                                      :member-name "Type" :json-name "type")
                                     (uhd-device-settings :target-type
                                      input-device-uhd-settings :member-name
                                      "UhdDeviceSettings" :json-name
                                      "uhdDeviceSettings")
                                     (tags :target-type tags :member-name
                                      "Tags" :json-name "tags")
                                     (availability-zone :target-type string
                                      :member-name "AvailabilityZone"
                                      :json-name "availabilityZone")
                                     (medialive-input-arns :target-type
                                      list-of-string :member-name
                                      "MedialiveInputArns" :json-name
                                      "medialiveInputArns")
                                     (output-type :target-type
                                      input-device-output-type :member-name
                                      "OutputType" :json-name "outputType"))
                                    (:shape-name "InputDeviceSummary"))

(smithy/sdk/shapes:define-type input-device-thumbnail
                               smithy/sdk/smithy-types:blob :streaming
                               common-lisp:t)

(smithy/sdk/shapes:define-enum input-device-transfer-type
    common-lisp:nil
  (:outgoing "OUTGOING")
  (:incoming "INCOMING"))

(smithy/sdk/shapes:define-enum input-device-type
    common-lisp:nil
  (:hd "HD")
  (:uhd "UHD"))

(smithy/sdk/shapes:define-structure input-device-uhd-audio-channel-pair-config
                                    common-lisp:nil
                                    ((id :target-type integer :member-name "Id"
                                      :json-name "id")
                                     (profile :target-type
                                      input-device-uhd-audio-channel-pair-profile
                                      :member-name "Profile" :json-name
                                      "profile"))
                                    (:shape-name
                                     "InputDeviceUhdAudioChannelPairConfig"))

(smithy/sdk/shapes:define-enum input-device-uhd-audio-channel-pair-profile
    common-lisp:nil
  (:disabled "DISABLED")
  (:vbr-aac-hhe-16000 "VBR-AAC_HHE-16000")
  (:vbr-aac-he-64000 "VBR-AAC_HE-64000")
  (:vbr-aac-lc-128000 "VBR-AAC_LC-128000")
  (:cbr-aac-hq-192000 "CBR-AAC_HQ-192000")
  (:cbr-aac-hq-256000 "CBR-AAC_HQ-256000")
  (:cbr-aac-hq-384000 "CBR-AAC_HQ-384000")
  (:cbr-aac-hq-512000 "CBR-AAC_HQ-512000"))

(smithy/sdk/shapes:define-structure input-device-uhd-settings common-lisp:nil
                                    ((active-input :target-type
                                      input-device-active-input :member-name
                                      "ActiveInput" :json-name "activeInput")
                                     (configured-input :target-type
                                      input-device-configured-input
                                      :member-name "ConfiguredInput" :json-name
                                      "configuredInput")
                                     (device-state :target-type
                                      input-device-state :member-name
                                      "DeviceState" :json-name "deviceState")
                                     (framerate :target-type double
                                      :member-name "Framerate" :json-name
                                      "framerate")
                                     (height :target-type integer :member-name
                                      "Height" :json-name "height")
                                     (max-bitrate :target-type integer
                                      :member-name "MaxBitrate" :json-name
                                      "maxBitrate")
                                     (scan-type :target-type
                                      input-device-scan-type :member-name
                                      "ScanType" :json-name "scanType")
                                     (width :target-type integer :member-name
                                      "Width" :json-name "width")
                                     (latency-ms :target-type integer
                                      :member-name "LatencyMs" :json-name
                                      "latencyMs")
                                     (codec :target-type input-device-codec
                                      :member-name "Codec" :json-name "codec")
                                     (mediaconnect-settings :target-type
                                      input-device-media-connect-settings
                                      :member-name "MediaconnectSettings"
                                      :json-name "mediaconnectSettings")
                                     (audio-channel-pairs :target-type
                                      list-of-input-device-uhd-audio-channel-pair-config
                                      :member-name "AudioChannelPairs"
                                      :json-name "audioChannelPairs")
                                     (input-resolution :target-type string
                                      :member-name "InputResolution" :json-name
                                      "inputResolution"))
                                    (:shape-name "InputDeviceUhdSettings"))

(smithy/sdk/shapes:define-enum input-filter
    common-lisp:nil
  (:auto "AUTO")
  (:disabled "DISABLED")
  (:forced "FORCED"))

(smithy/sdk/shapes:define-structure input-location common-lisp:nil
                                    ((password-param :target-type string
                                      :member-name "PasswordParam" :json-name
                                      "passwordParam")
                                     (uri :target-type string-max2048 :required
                                      common-lisp:t :member-name "Uri"
                                      :json-name "uri")
                                     (username :target-type string :member-name
                                      "Username" :json-name "username"))
                                    (:shape-name "InputLocation"))

(smithy/sdk/shapes:define-enum input-loss-action-for-hls-out
    common-lisp:nil
  (:emit-output "EMIT_OUTPUT")
  (:pause-output "PAUSE_OUTPUT"))

(smithy/sdk/shapes:define-enum input-loss-action-for-ms-smooth-out
    common-lisp:nil
  (:emit-output "EMIT_OUTPUT")
  (:pause-output "PAUSE_OUTPUT"))

(smithy/sdk/shapes:define-enum input-loss-action-for-rtmp-out
    common-lisp:nil
  (:emit-output "EMIT_OUTPUT")
  (:pause-output "PAUSE_OUTPUT"))

(smithy/sdk/shapes:define-enum input-loss-action-for-udp-out
    common-lisp:nil
  (:drop-program "DROP_PROGRAM")
  (:drop-ts "DROP_TS")
  (:emit-program "EMIT_PROGRAM"))

(smithy/sdk/shapes:define-structure input-loss-behavior common-lisp:nil
                                    ((black-frame-msec :target-type
                                      integer-min0max1000000 :member-name
                                      "BlackFrameMsec" :json-name
                                      "blackFrameMsec")
                                     (input-loss-image-color :target-type
                                      string-min6max6 :member-name
                                      "InputLossImageColor" :json-name
                                      "inputLossImageColor")
                                     (input-loss-image-slate :target-type
                                      input-location :member-name
                                      "InputLossImageSlate" :json-name
                                      "inputLossImageSlate")
                                     (input-loss-image-type :target-type
                                      input-loss-image-type :member-name
                                      "InputLossImageType" :json-name
                                      "inputLossImageType")
                                     (repeat-frame-msec :target-type
                                      integer-min0max1000000 :member-name
                                      "RepeatFrameMsec" :json-name
                                      "repeatFrameMsec"))
                                    (:shape-name "InputLossBehavior"))

(smithy/sdk/shapes:define-structure input-loss-failover-settings
                                    common-lisp:nil
                                    ((input-loss-threshold-msec :target-type
                                      integer-min100 :member-name
                                      "InputLossThresholdMsec" :json-name
                                      "inputLossThresholdMsec"))
                                    (:shape-name "InputLossFailoverSettings"))

(smithy/sdk/shapes:define-enum input-loss-image-type
    common-lisp:nil
  (:color "COLOR")
  (:slate "SLATE"))

(smithy/sdk/shapes:define-enum input-maximum-bitrate
    common-lisp:nil
  (:max-10-mbps "MAX_10_MBPS")
  (:max-20-mbps "MAX_20_MBPS")
  (:max-50-mbps "MAX_50_MBPS"))

(smithy/sdk/shapes:define-enum input-network-location
    common-lisp:nil
  (:aws "AWS")
  (:on-premises "ON_PREMISES"))

(smithy/sdk/shapes:define-enum input-preference
    common-lisp:nil
  (:equal-input-preference "EQUAL_INPUT_PREFERENCE")
  (:primary-input-preferred "PRIMARY_INPUT_PREFERRED"))

(smithy/sdk/shapes:define-structure input-prepare-schedule-action-settings
                                    common-lisp:nil
                                    ((input-attachment-name-reference
                                      :target-type string :member-name
                                      "InputAttachmentNameReference" :json-name
                                      "inputAttachmentNameReference")
                                     (input-clipping-settings :target-type
                                      input-clipping-settings :member-name
                                      "InputClippingSettings" :json-name
                                      "inputClippingSettings")
                                     (url-path :target-type list-of-string
                                      :member-name "UrlPath" :json-name
                                      "urlPath"))
                                    (:shape-name
                                     "InputPrepareScheduleActionSettings"))

(smithy/sdk/shapes:define-structure input-request-destination-route
                                    common-lisp:nil
                                    ((cidr :target-type string :member-name
                                      "Cidr" :json-name "cidr")
                                     (gateway :target-type string :member-name
                                      "Gateway" :json-name "gateway"))
                                    (:shape-name
                                     "InputRequestDestinationRoute"))

(smithy/sdk/shapes:define-enum input-resolution
    common-lisp:nil
  (:sd "SD")
  (:hd "HD")
  (:uhd "UHD"))

(smithy/sdk/shapes:define-list input-sdi-sources :member string)

(smithy/sdk/shapes:define-structure input-sdp-location common-lisp:nil
                                    ((media-index :target-type integer
                                      :member-name "MediaIndex" :json-name
                                      "mediaIndex")
                                     (sdp-url :target-type string :member-name
                                      "SdpUrl" :json-name "sdpUrl"))
                                    (:shape-name "InputSdpLocation"))

(smithy/sdk/shapes:define-structure input-security-group common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn" :json-name "arn")
                                     (id :target-type string :member-name "Id"
                                      :json-name "id")
                                     (inputs :target-type list-of-string
                                      :member-name "Inputs" :json-name
                                      "inputs")
                                     (state :target-type
                                      input-security-group-state :member-name
                                      "State" :json-name "state")
                                     (tags :target-type tags :member-name
                                      "Tags" :json-name "tags")
                                     (whitelist-rules :target-type
                                      list-of-input-whitelist-rule :member-name
                                      "WhitelistRules" :json-name
                                      "whitelistRules"))
                                    (:shape-name "InputSecurityGroup"))

(smithy/sdk/shapes:define-enum input-security-group-state
    common-lisp:nil
  (:idle "IDLE")
  (:in-use "IN_USE")
  (:updating "UPDATING")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-structure input-settings common-lisp:nil
                                    ((audio-selectors :target-type
                                      list-of-audio-selector :member-name
                                      "AudioSelectors" :json-name
                                      "audioSelectors")
                                     (caption-selectors :target-type
                                      list-of-caption-selector :member-name
                                      "CaptionSelectors" :json-name
                                      "captionSelectors")
                                     (deblock-filter :target-type
                                      input-deblock-filter :member-name
                                      "DeblockFilter" :json-name
                                      "deblockFilter")
                                     (denoise-filter :target-type
                                      input-denoise-filter :member-name
                                      "DenoiseFilter" :json-name
                                      "denoiseFilter")
                                     (filter-strength :target-type
                                      integer-min1max5 :member-name
                                      "FilterStrength" :json-name
                                      "filterStrength")
                                     (input-filter :target-type input-filter
                                      :member-name "InputFilter" :json-name
                                      "inputFilter")
                                     (network-input-settings :target-type
                                      network-input-settings :member-name
                                      "NetworkInputSettings" :json-name
                                      "networkInputSettings")
                                     (scte35pid :target-type
                                      integer-min32max8191 :member-name
                                      "Scte35Pid" :json-name "scte35Pid")
                                     (smpte2038data-preference :target-type
                                      smpte2038data-preference :member-name
                                      "Smpte2038DataPreference" :json-name
                                      "smpte2038DataPreference")
                                     (source-end-behavior :target-type
                                      input-source-end-behavior :member-name
                                      "SourceEndBehavior" :json-name
                                      "sourceEndBehavior")
                                     (video-selector :target-type
                                      video-selector :member-name
                                      "VideoSelector" :json-name
                                      "videoSelector"))
                                    (:shape-name "InputSettings"))

(smithy/sdk/shapes:define-structure input-source common-lisp:nil
                                    ((password-param :target-type string
                                      :member-name "PasswordParam" :json-name
                                      "passwordParam")
                                     (url :target-type string :member-name
                                      "Url" :json-name "url")
                                     (username :target-type string :member-name
                                      "Username" :json-name "username"))
                                    (:shape-name "InputSource"))

(smithy/sdk/shapes:define-enum input-source-end-behavior
    common-lisp:nil
  (:continue "CONTINUE")
  (:loop "LOOP"))

(smithy/sdk/shapes:define-structure input-source-request common-lisp:nil
                                    ((password-param :target-type string
                                      :member-name "PasswordParam" :json-name
                                      "passwordParam")
                                     (url :target-type string :member-name
                                      "Url" :json-name "url")
                                     (username :target-type string :member-name
                                      "Username" :json-name "username"))
                                    (:shape-name "InputSourceRequest"))

(smithy/sdk/shapes:define-enum input-source-type
    common-lisp:nil
  (:static "STATIC")
  (:dynamic "DYNAMIC"))

(smithy/sdk/shapes:define-structure input-specification common-lisp:nil
                                    ((codec :target-type input-codec
                                      :member-name "Codec" :json-name "codec")
                                     (maximum-bitrate :target-type
                                      input-maximum-bitrate :member-name
                                      "MaximumBitrate" :json-name
                                      "maximumBitrate")
                                     (resolution :target-type input-resolution
                                      :member-name "Resolution" :json-name
                                      "resolution"))
                                    (:shape-name "InputSpecification"))

(smithy/sdk/shapes:define-enum input-state
    common-lisp:nil
  (:creating "CREATING")
  (:detached "DETACHED")
  (:attached "ATTACHED")
  (:deleting "DELETING")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-structure input-switch-schedule-action-settings
                                    common-lisp:nil
                                    ((input-attachment-name-reference
                                      :target-type string :required
                                      common-lisp:t :member-name
                                      "InputAttachmentNameReference" :json-name
                                      "inputAttachmentNameReference")
                                     (input-clipping-settings :target-type
                                      input-clipping-settings :member-name
                                      "InputClippingSettings" :json-name
                                      "inputClippingSettings")
                                     (url-path :target-type list-of-string
                                      :member-name "UrlPath" :json-name
                                      "urlPath"))
                                    (:shape-name
                                     "InputSwitchScheduleActionSettings"))

(smithy/sdk/shapes:define-enum input-timecode-source
    common-lisp:nil
  (:zerobased "ZEROBASED")
  (:embedded "EMBEDDED"))

(smithy/sdk/shapes:define-enum input-type
    common-lisp:nil
  (:udp-push "UDP_PUSH")
  (:rtp-push "RTP_PUSH")
  (:rtmp-push "RTMP_PUSH")
  (:rtmp-pull "RTMP_PULL")
  (:url-pull "URL_PULL")
  (:mp4-file "MP4_FILE")
  (:mediaconnect "MEDIACONNECT")
  (:input-device "INPUT_DEVICE")
  (:aws-cdi "AWS_CDI")
  (:ts-file "TS_FILE")
  (:srt-caller "SRT_CALLER")
  (:multicast "MULTICAST")
  (:smpte-2110-receiver-group "SMPTE_2110_RECEIVER_GROUP")
  (:sdi "SDI"))

(smithy/sdk/shapes:define-structure input-vpc-request common-lisp:nil
                                    ((security-group-ids :target-type
                                      list-of-string :member-name
                                      "SecurityGroupIds" :json-name
                                      "securityGroupIds")
                                     (subnet-ids :target-type list-of-string
                                      :required common-lisp:t :member-name
                                      "SubnetIds" :json-name "subnetIds"))
                                    (:shape-name "InputVpcRequest"))

(smithy/sdk/shapes:define-structure input-whitelist-rule common-lisp:nil
                                    ((cidr :target-type string :member-name
                                      "Cidr" :json-name "cidr"))
                                    (:shape-name "InputWhitelistRule"))

(smithy/sdk/shapes:define-structure input-whitelist-rule-cidr common-lisp:nil
                                    ((cidr :target-type string :member-name
                                      "Cidr" :json-name "cidr"))
                                    (:shape-name "InputWhitelistRuleCidr"))

(smithy/sdk/shapes:define-structure interface-mapping common-lisp:nil
                                    ((logical-interface-name :target-type
                                      string :member-name
                                      "LogicalInterfaceName" :json-name
                                      "logicalInterfaceName")
                                     (network-id :target-type string
                                      :member-name "NetworkId" :json-name
                                      "networkId"))
                                    (:shape-name "InterfaceMapping"))

(smithy/sdk/shapes:define-structure interface-mapping-create-request
                                    common-lisp:nil
                                    ((logical-interface-name :target-type
                                      string :member-name
                                      "LogicalInterfaceName" :json-name
                                      "logicalInterfaceName")
                                     (network-id :target-type string
                                      :member-name "NetworkId" :json-name
                                      "networkId"))
                                    (:shape-name
                                     "InterfaceMappingCreateRequest"))

(smithy/sdk/shapes:define-structure interface-mapping-update-request
                                    common-lisp:nil
                                    ((logical-interface-name :target-type
                                      string :member-name
                                      "LogicalInterfaceName" :json-name
                                      "logicalInterfaceName")
                                     (network-id :target-type string
                                      :member-name "NetworkId" :json-name
                                      "networkId"))
                                    (:shape-name
                                     "InterfaceMappingUpdateRequest"))

(smithy/sdk/shapes:define-error internal-server-error-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "InternalServerErrorException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure ip-pool common-lisp:nil
                                    ((cidr :target-type string :member-name
                                      "Cidr" :json-name "cidr"))
                                    (:shape-name "IpPool"))

(smithy/sdk/shapes:define-structure ip-pool-create-request common-lisp:nil
                                    ((cidr :target-type string :member-name
                                      "Cidr" :json-name "cidr"))
                                    (:shape-name "IpPoolCreateRequest"))

(smithy/sdk/shapes:define-structure ip-pool-update-request common-lisp:nil
                                    ((cidr :target-type string :member-name
                                      "Cidr" :json-name "cidr"))
                                    (:shape-name "IpPoolUpdateRequest"))

(smithy/sdk/shapes:define-structure key-provider-settings common-lisp:nil
                                    ((static-key-settings :target-type
                                      static-key-settings :member-name
                                      "StaticKeySettings" :json-name
                                      "staticKeySettings"))
                                    (:shape-name "KeyProviderSettings"))

(smithy/sdk/shapes:define-enum last-frame-clipping-behavior
    common-lisp:nil
  (:exclude-last-frame "EXCLUDE_LAST_FRAME")
  (:include-last-frame "INCLUDE_LAST_FRAME"))

(smithy/sdk/shapes:define-input list-channel-placement-groups-request
                                common-lisp:nil
                                ((cluster-id :target-type string :required
                                  common-lisp:t :member-name "ClusterId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name
                                 "ListChannelPlacementGroupsRequest"))

(smithy/sdk/shapes:define-output list-channel-placement-groups-response
                                 common-lisp:nil
                                 ((channel-placement-groups :target-type
                                   list-of-describe-channel-placement-group-summary
                                   :member-name "ChannelPlacementGroups"
                                   :json-name "channelPlacementGroups")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name
                                  "ListChannelPlacementGroupsResponse"))

(smithy/sdk/shapes:define-input list-channels-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListChannelsRequest"))

(smithy/sdk/shapes:define-output list-channels-response common-lisp:nil
                                 ((channels :target-type
                                   list-of-channel-summary :member-name
                                   "Channels" :json-name "channels")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "ListChannelsResponse"))

(smithy/sdk/shapes:define-input list-cloud-watch-alarm-template-groups-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (scope :target-type string :member-name
                                  "Scope" :http-query "scope")
                                 (signal-map-identifier :target-type string
                                  :member-name "SignalMapIdentifier"
                                  :http-query "signalMapIdentifier"))
                                (:shape-name
                                 "ListCloudWatchAlarmTemplateGroupsRequest"))

(smithy/sdk/shapes:define-output
 list-cloud-watch-alarm-template-groups-response common-lisp:nil
 ((cloud-watch-alarm-template-groups :target-type
   list-of-cloud-watch-alarm-template-group-summary :member-name
   "CloudWatchAlarmTemplateGroups" :json-name "cloudWatchAlarmTemplateGroups")
  (next-token :target-type string-min1max2048 :member-name "NextToken"
   :json-name "nextToken"))
 (:shape-name "ListCloudWatchAlarmTemplateGroupsResponse"))

(smithy/sdk/shapes:define-input list-cloud-watch-alarm-templates-request
                                common-lisp:nil
                                ((group-identifier :target-type string
                                  :member-name "GroupIdentifier" :http-query
                                  "groupIdentifier")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (scope :target-type string :member-name
                                  "Scope" :http-query "scope")
                                 (signal-map-identifier :target-type string
                                  :member-name "SignalMapIdentifier"
                                  :http-query "signalMapIdentifier"))
                                (:shape-name
                                 "ListCloudWatchAlarmTemplatesRequest"))

(smithy/sdk/shapes:define-output list-cloud-watch-alarm-templates-response
                                 common-lisp:nil
                                 ((cloud-watch-alarm-templates :target-type
                                   list-of-cloud-watch-alarm-template-summary
                                   :member-name "CloudWatchAlarmTemplates"
                                   :json-name "cloudWatchAlarmTemplates")
                                  (next-token :target-type string-min1max2048
                                   :member-name "NextToken" :json-name
                                   "nextToken"))
                                 (:shape-name
                                  "ListCloudWatchAlarmTemplatesResponse"))

(smithy/sdk/shapes:define-input list-clusters-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListClustersRequest"))

(smithy/sdk/shapes:define-output list-clusters-response common-lisp:nil
                                 ((clusters :target-type
                                   list-of-describe-cluster-summary
                                   :member-name "Clusters" :json-name
                                   "clusters")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "ListClustersResponse"))

(smithy/sdk/shapes:define-input list-event-bridge-rule-template-groups-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (signal-map-identifier :target-type string
                                  :member-name "SignalMapIdentifier"
                                  :http-query "signalMapIdentifier"))
                                (:shape-name
                                 "ListEventBridgeRuleTemplateGroupsRequest"))

(smithy/sdk/shapes:define-output
 list-event-bridge-rule-template-groups-response common-lisp:nil
 ((event-bridge-rule-template-groups :target-type
   list-of-event-bridge-rule-template-group-summary :member-name
   "EventBridgeRuleTemplateGroups" :json-name "eventBridgeRuleTemplateGroups")
  (next-token :target-type string-min1max2048 :member-name "NextToken"
   :json-name "nextToken"))
 (:shape-name "ListEventBridgeRuleTemplateGroupsResponse"))

(smithy/sdk/shapes:define-input list-event-bridge-rule-templates-request
                                common-lisp:nil
                                ((group-identifier :target-type string
                                  :member-name "GroupIdentifier" :http-query
                                  "groupIdentifier")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (signal-map-identifier :target-type string
                                  :member-name "SignalMapIdentifier"
                                  :http-query "signalMapIdentifier"))
                                (:shape-name
                                 "ListEventBridgeRuleTemplatesRequest"))

(smithy/sdk/shapes:define-output list-event-bridge-rule-templates-response
                                 common-lisp:nil
                                 ((event-bridge-rule-templates :target-type
                                   list-of-event-bridge-rule-template-summary
                                   :member-name "EventBridgeRuleTemplates"
                                   :json-name "eventBridgeRuleTemplates")
                                  (next-token :target-type string-min1max2048
                                   :member-name "NextToken" :json-name
                                   "nextToken"))
                                 (:shape-name
                                  "ListEventBridgeRuleTemplatesResponse"))

(smithy/sdk/shapes:define-input list-input-device-transfers-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (transfer-type :target-type string :required
                                  common-lisp:t :member-name "TransferType"
                                  :http-query "transferType"))
                                (:shape-name "ListInputDeviceTransfersRequest"))

(smithy/sdk/shapes:define-output list-input-device-transfers-response
                                 common-lisp:nil
                                 ((input-device-transfers :target-type
                                   list-of-transferring-input-device-summary
                                   :member-name "InputDeviceTransfers"
                                   :json-name "inputDeviceTransfers")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name
                                  "ListInputDeviceTransfersResponse"))

(smithy/sdk/shapes:define-input list-input-devices-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListInputDevicesRequest"))

(smithy/sdk/shapes:define-output list-input-devices-response common-lisp:nil
                                 ((input-devices :target-type
                                   list-of-input-device-summary :member-name
                                   "InputDevices" :json-name "inputDevices")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "ListInputDevicesResponse"))

(smithy/sdk/shapes:define-input list-input-security-groups-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListInputSecurityGroupsRequest"))

(smithy/sdk/shapes:define-output list-input-security-groups-response
                                 common-lisp:nil
                                 ((input-security-groups :target-type
                                   list-of-input-security-group :member-name
                                   "InputSecurityGroups" :json-name
                                   "inputSecurityGroups")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name
                                  "ListInputSecurityGroupsResponse"))

(smithy/sdk/shapes:define-input list-inputs-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListInputsRequest"))

(smithy/sdk/shapes:define-output list-inputs-response common-lisp:nil
                                 ((inputs :target-type list-of-input
                                   :member-name "Inputs" :json-name "inputs")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "ListInputsResponse"))

(smithy/sdk/shapes:define-input list-multiplex-programs-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (multiplex-id :target-type string :required
                                  common-lisp:t :member-name "MultiplexId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListMultiplexProgramsRequest"))

(smithy/sdk/shapes:define-output list-multiplex-programs-response
                                 common-lisp:nil
                                 ((multiplex-programs :target-type
                                   list-of-multiplex-program-summary
                                   :member-name "MultiplexPrograms" :json-name
                                   "multiplexPrograms")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "ListMultiplexProgramsResponse"))

(smithy/sdk/shapes:define-input list-multiplexes-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListMultiplexesRequest"))

(smithy/sdk/shapes:define-output list-multiplexes-response common-lisp:nil
                                 ((multiplexes :target-type
                                   list-of-multiplex-summary :member-name
                                   "Multiplexes" :json-name "multiplexes")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "ListMultiplexesResponse"))

(smithy/sdk/shapes:define-input list-networks-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListNetworksRequest"))

(smithy/sdk/shapes:define-output list-networks-response common-lisp:nil
                                 ((networks :target-type
                                   list-of-describe-network-summary
                                   :member-name "Networks" :json-name
                                   "networks")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "ListNetworksResponse"))

(smithy/sdk/shapes:define-input list-nodes-request common-lisp:nil
                                ((cluster-id :target-type string :required
                                  common-lisp:t :member-name "ClusterId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListNodesRequest"))

(smithy/sdk/shapes:define-output list-nodes-response common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken")
                                  (nodes :target-type
                                   list-of-describe-node-summary :member-name
                                   "Nodes" :json-name "nodes"))
                                 (:shape-name "ListNodesResponse"))

(smithy/sdk/shapes:define-input list-offerings-request common-lisp:nil
                                ((channel-class :target-type string
                                  :member-name "ChannelClass" :http-query
                                  "channelClass")
                                 (channel-configuration :target-type string
                                  :member-name "ChannelConfiguration"
                                  :http-query "channelConfiguration")
                                 (codec :target-type string :member-name
                                  "Codec" :http-query "codec")
                                 (duration :target-type string :member-name
                                  "Duration" :http-query "duration")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (maximum-bitrate :target-type string
                                  :member-name "MaximumBitrate" :http-query
                                  "maximumBitrate")
                                 (maximum-framerate :target-type string
                                  :member-name "MaximumFramerate" :http-query
                                  "maximumFramerate")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (resolution :target-type string :member-name
                                  "Resolution" :http-query "resolution")
                                 (resource-type :target-type string
                                  :member-name "ResourceType" :http-query
                                  "resourceType")
                                 (special-feature :target-type string
                                  :member-name "SpecialFeature" :http-query
                                  "specialFeature")
                                 (video-quality :target-type string
                                  :member-name "VideoQuality" :http-query
                                  "videoQuality"))
                                (:shape-name "ListOfferingsRequest"))

(smithy/sdk/shapes:define-output list-offerings-response common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken")
                                  (offerings :target-type list-of-offering
                                   :member-name "Offerings" :json-name
                                   "offerings"))
                                 (:shape-name "ListOfferingsResponse"))

(smithy/sdk/shapes:define-input list-reservations-request common-lisp:nil
                                ((channel-class :target-type string
                                  :member-name "ChannelClass" :http-query
                                  "channelClass")
                                 (codec :target-type string :member-name
                                  "Codec" :http-query "codec")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (maximum-bitrate :target-type string
                                  :member-name "MaximumBitrate" :http-query
                                  "maximumBitrate")
                                 (maximum-framerate :target-type string
                                  :member-name "MaximumFramerate" :http-query
                                  "maximumFramerate")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (resolution :target-type string :member-name
                                  "Resolution" :http-query "resolution")
                                 (resource-type :target-type string
                                  :member-name "ResourceType" :http-query
                                  "resourceType")
                                 (special-feature :target-type string
                                  :member-name "SpecialFeature" :http-query
                                  "specialFeature")
                                 (video-quality :target-type string
                                  :member-name "VideoQuality" :http-query
                                  "videoQuality"))
                                (:shape-name "ListReservationsRequest"))

(smithy/sdk/shapes:define-output list-reservations-response common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken")
                                  (reservations :target-type
                                   list-of-reservation :member-name
                                   "Reservations" :json-name "reservations"))
                                 (:shape-name "ListReservationsResponse"))

(smithy/sdk/shapes:define-input list-sdi-sources-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListSdiSourcesRequest"))

(smithy/sdk/shapes:define-output list-sdi-sources-response common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken")
                                  (sdi-sources :target-type
                                   list-of-sdi-source-summary :member-name
                                   "SdiSources" :json-name "sdiSources"))
                                 (:shape-name "ListSdiSourcesResponse"))

(smithy/sdk/shapes:define-input list-signal-maps-request common-lisp:nil
                                ((cloud-watch-alarm-template-group-identifier
                                  :target-type string :member-name
                                  "CloudWatchAlarmTemplateGroupIdentifier"
                                  :http-query
                                  "cloudWatchAlarmTemplateGroupIdentifier")
                                 (event-bridge-rule-template-group-identifier
                                  :target-type string :member-name
                                  "EventBridgeRuleTemplateGroupIdentifier"
                                  :http-query
                                  "eventBridgeRuleTemplateGroupIdentifier")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListSignalMapsRequest"))

(smithy/sdk/shapes:define-output list-signal-maps-response common-lisp:nil
                                 ((next-token :target-type string-min1max2048
                                   :member-name "NextToken" :json-name
                                   "nextToken")
                                  (signal-maps :target-type
                                   list-of-signal-map-summary :member-name
                                   "SignalMaps" :json-name "signalMaps"))
                                 (:shape-name "ListSignalMapsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-versions-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "ListVersionsRequest"))

(smithy/sdk/shapes:define-output list-versions-response common-lisp:nil
                                 ((versions :target-type
                                   list-of-channel-engine-version-response
                                   :member-name "Versions" :json-name
                                   "versions"))
                                 (:shape-name "ListVersionsResponse"))

(smithy/sdk/shapes:define-enum log-level
    common-lisp:nil
  (:error "ERROR")
  (:warning "WARNING")
  (:info "INFO")
  (:debug "DEBUG")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum m2ts-absent-input-audio-behavior
    common-lisp:nil
  (:drop "DROP")
  (:encode-silence "ENCODE_SILENCE"))

(smithy/sdk/shapes:define-enum m2ts-arib
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum m2ts-arib-captions-pid-control
    common-lisp:nil
  (:auto "AUTO")
  (:use-configured "USE_CONFIGURED"))

(smithy/sdk/shapes:define-enum m2ts-audio-buffer-model
    common-lisp:nil
  (:atsc "ATSC")
  (:dvb "DVB"))

(smithy/sdk/shapes:define-enum m2ts-audio-interval
    common-lisp:nil
  (:video-and-fixed-intervals "VIDEO_AND_FIXED_INTERVALS")
  (:video-interval "VIDEO_INTERVAL"))

(smithy/sdk/shapes:define-enum m2ts-audio-stream-type
    common-lisp:nil
  (:atsc "ATSC")
  (:dvb "DVB"))

(smithy/sdk/shapes:define-enum m2ts-buffer-model
    common-lisp:nil
  (:multiplex "MULTIPLEX")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum m2ts-cc-descriptor
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum m2ts-ebif-control
    common-lisp:nil
  (:none "NONE")
  (:passthrough "PASSTHROUGH"))

(smithy/sdk/shapes:define-enum m2ts-ebp-placement
    common-lisp:nil
  (:video-and-audio-pids "VIDEO_AND_AUDIO_PIDS")
  (:video-pid "VIDEO_PID"))

(smithy/sdk/shapes:define-enum m2ts-es-rate-in-pes
    common-lisp:nil
  (:exclude "EXCLUDE")
  (:include "INCLUDE"))

(smithy/sdk/shapes:define-enum m2ts-klv
    common-lisp:nil
  (:none "NONE")
  (:passthrough "PASSTHROUGH"))

(smithy/sdk/shapes:define-enum m2ts-nielsen-id3behavior
    common-lisp:nil
  (:no-passthrough "NO_PASSTHROUGH")
  (:passthrough "PASSTHROUGH"))

(smithy/sdk/shapes:define-enum m2ts-pcr-control
    common-lisp:nil
  (:configured-pcr-period "CONFIGURED_PCR_PERIOD")
  (:pcr-every-pes-packet "PCR_EVERY_PES_PACKET"))

(smithy/sdk/shapes:define-enum m2ts-rate-mode
    common-lisp:nil
  (:cbr "CBR")
  (:vbr "VBR"))

(smithy/sdk/shapes:define-enum m2ts-scte35control
    common-lisp:nil
  (:none "NONE")
  (:passthrough "PASSTHROUGH"))

(smithy/sdk/shapes:define-enum m2ts-segmentation-markers
    common-lisp:nil
  (:ebp "EBP")
  (:ebp-legacy "EBP_LEGACY")
  (:none "NONE")
  (:psi-segstart "PSI_SEGSTART")
  (:rai-adapt "RAI_ADAPT")
  (:rai-segstart "RAI_SEGSTART"))

(smithy/sdk/shapes:define-enum m2ts-segmentation-style
    common-lisp:nil
  (:maintain-cadence "MAINTAIN_CADENCE")
  (:reset-cadence "RESET_CADENCE"))

(smithy/sdk/shapes:define-structure m2ts-settings common-lisp:nil
                                    ((absent-input-audio-behavior :target-type
                                      m2ts-absent-input-audio-behavior
                                      :member-name "AbsentInputAudioBehavior"
                                      :json-name "absentInputAudioBehavior")
                                     (arib :target-type m2ts-arib :member-name
                                      "Arib" :json-name "arib")
                                     (arib-captions-pid :target-type string
                                      :member-name "AribCaptionsPid" :json-name
                                      "aribCaptionsPid")
                                     (arib-captions-pid-control :target-type
                                      m2ts-arib-captions-pid-control
                                      :member-name "AribCaptionsPidControl"
                                      :json-name "aribCaptionsPidControl")
                                     (audio-buffer-model :target-type
                                      m2ts-audio-buffer-model :member-name
                                      "AudioBufferModel" :json-name
                                      "audioBufferModel")
                                     (audio-frames-per-pes :target-type
                                      integer-min0 :member-name
                                      "AudioFramesPerPes" :json-name
                                      "audioFramesPerPes")
                                     (audio-pids :target-type string
                                      :member-name "AudioPids" :json-name
                                      "audioPids")
                                     (audio-stream-type :target-type
                                      m2ts-audio-stream-type :member-name
                                      "AudioStreamType" :json-name
                                      "audioStreamType")
                                     (bitrate :target-type integer-min0
                                      :member-name "Bitrate" :json-name
                                      "bitrate")
                                     (buffer-model :target-type
                                      m2ts-buffer-model :member-name
                                      "BufferModel" :json-name "bufferModel")
                                     (cc-descriptor :target-type
                                      m2ts-cc-descriptor :member-name
                                      "CcDescriptor" :json-name "ccDescriptor")
                                     (dvb-nit-settings :target-type
                                      dvb-nit-settings :member-name
                                      "DvbNitSettings" :json-name
                                      "dvbNitSettings")
                                     (dvb-sdt-settings :target-type
                                      dvb-sdt-settings :member-name
                                      "DvbSdtSettings" :json-name
                                      "dvbSdtSettings")
                                     (dvb-sub-pids :target-type string
                                      :member-name "DvbSubPids" :json-name
                                      "dvbSubPids")
                                     (dvb-tdt-settings :target-type
                                      dvb-tdt-settings :member-name
                                      "DvbTdtSettings" :json-name
                                      "dvbTdtSettings")
                                     (dvb-teletext-pid :target-type string
                                      :member-name "DvbTeletextPid" :json-name
                                      "dvbTeletextPid")
                                     (ebif :target-type m2ts-ebif-control
                                      :member-name "Ebif" :json-name "ebif")
                                     (ebp-audio-interval :target-type
                                      m2ts-audio-interval :member-name
                                      "EbpAudioInterval" :json-name
                                      "ebpAudioInterval")
                                     (ebp-lookahead-ms :target-type
                                      integer-min0max10000 :member-name
                                      "EbpLookaheadMs" :json-name
                                      "ebpLookaheadMs")
                                     (ebp-placement :target-type
                                      m2ts-ebp-placement :member-name
                                      "EbpPlacement" :json-name "ebpPlacement")
                                     (ecm-pid :target-type string :member-name
                                      "EcmPid" :json-name "ecmPid")
                                     (es-rate-in-pes :target-type
                                      m2ts-es-rate-in-pes :member-name
                                      "EsRateInPes" :json-name "esRateInPes")
                                     (etv-platform-pid :target-type string
                                      :member-name "EtvPlatformPid" :json-name
                                      "etvPlatformPid")
                                     (etv-signal-pid :target-type string
                                      :member-name "EtvSignalPid" :json-name
                                      "etvSignalPid")
                                     (fragment-time :target-type double-min0
                                      :member-name "FragmentTime" :json-name
                                      "fragmentTime")
                                     (klv :target-type m2ts-klv :member-name
                                      "Klv" :json-name "klv")
                                     (klv-data-pids :target-type string
                                      :member-name "KlvDataPids" :json-name
                                      "klvDataPids")
                                     (nielsen-id3behavior :target-type
                                      m2ts-nielsen-id3behavior :member-name
                                      "NielsenId3Behavior" :json-name
                                      "nielsenId3Behavior")
                                     (null-packet-bitrate :target-type
                                      double-min0 :member-name
                                      "NullPacketBitrate" :json-name
                                      "nullPacketBitrate")
                                     (pat-interval :target-type
                                      integer-min0max1000 :member-name
                                      "PatInterval" :json-name "patInterval")
                                     (pcr-control :target-type m2ts-pcr-control
                                      :member-name "PcrControl" :json-name
                                      "pcrControl")
                                     (pcr-period :target-type
                                      integer-min0max500 :member-name
                                      "PcrPeriod" :json-name "pcrPeriod")
                                     (pcr-pid :target-type string :member-name
                                      "PcrPid" :json-name "pcrPid")
                                     (pmt-interval :target-type
                                      integer-min0max1000 :member-name
                                      "PmtInterval" :json-name "pmtInterval")
                                     (pmt-pid :target-type string :member-name
                                      "PmtPid" :json-name "pmtPid")
                                     (program-num :target-type
                                      integer-min0max65535 :member-name
                                      "ProgramNum" :json-name "programNum")
                                     (rate-mode :target-type m2ts-rate-mode
                                      :member-name "RateMode" :json-name
                                      "rateMode")
                                     (scte27pids :target-type string
                                      :member-name "Scte27Pids" :json-name
                                      "scte27Pids")
                                     (scte35control :target-type
                                      m2ts-scte35control :member-name
                                      "Scte35Control" :json-name
                                      "scte35Control")
                                     (scte35pid :target-type string
                                      :member-name "Scte35Pid" :json-name
                                      "scte35Pid")
                                     (segmentation-markers :target-type
                                      m2ts-segmentation-markers :member-name
                                      "SegmentationMarkers" :json-name
                                      "segmentationMarkers")
                                     (segmentation-style :target-type
                                      m2ts-segmentation-style :member-name
                                      "SegmentationStyle" :json-name
                                      "segmentationStyle")
                                     (segmentation-time :target-type
                                      double-min1 :member-name
                                      "SegmentationTime" :json-name
                                      "segmentationTime")
                                     (timed-metadata-behavior :target-type
                                      m2ts-timed-metadata-behavior :member-name
                                      "TimedMetadataBehavior" :json-name
                                      "timedMetadataBehavior")
                                     (timed-metadata-pid :target-type string
                                      :member-name "TimedMetadataPid"
                                      :json-name "timedMetadataPid")
                                     (transport-stream-id :target-type
                                      integer-min0max65535 :member-name
                                      "TransportStreamId" :json-name
                                      "transportStreamId")
                                     (video-pid :target-type string
                                      :member-name "VideoPid" :json-name
                                      "videoPid")
                                     (scte35preroll-pullup-milliseconds
                                      :target-type double-min0max5000
                                      :member-name
                                      "Scte35PrerollPullupMilliseconds"
                                      :json-name
                                      "scte35PrerollPullupMilliseconds"))
                                    (:shape-name "M2tsSettings"))

(smithy/sdk/shapes:define-enum m2ts-timed-metadata-behavior
    common-lisp:nil
  (:no-passthrough "NO_PASSTHROUGH")
  (:passthrough "PASSTHROUGH"))

(smithy/sdk/shapes:define-enum m3u8klv-behavior
    common-lisp:nil
  (:no-passthrough "NO_PASSTHROUGH")
  (:passthrough "PASSTHROUGH"))

(smithy/sdk/shapes:define-enum m3u8nielsen-id3behavior
    common-lisp:nil
  (:no-passthrough "NO_PASSTHROUGH")
  (:passthrough "PASSTHROUGH"))

(smithy/sdk/shapes:define-enum m3u8pcr-control
    common-lisp:nil
  (:configured-pcr-period "CONFIGURED_PCR_PERIOD")
  (:pcr-every-pes-packet "PCR_EVERY_PES_PACKET"))

(smithy/sdk/shapes:define-enum m3u8scte35behavior
    common-lisp:nil
  (:no-passthrough "NO_PASSTHROUGH")
  (:passthrough "PASSTHROUGH"))

(smithy/sdk/shapes:define-structure m3u8settings common-lisp:nil
                                    ((audio-frames-per-pes :target-type
                                      integer-min0 :member-name
                                      "AudioFramesPerPes" :json-name
                                      "audioFramesPerPes")
                                     (audio-pids :target-type string
                                      :member-name "AudioPids" :json-name
                                      "audioPids")
                                     (ecm-pid :target-type string :member-name
                                      "EcmPid" :json-name "ecmPid")
                                     (nielsen-id3behavior :target-type
                                      m3u8nielsen-id3behavior :member-name
                                      "NielsenId3Behavior" :json-name
                                      "nielsenId3Behavior")
                                     (pat-interval :target-type
                                      integer-min0max1000 :member-name
                                      "PatInterval" :json-name "patInterval")
                                     (pcr-control :target-type m3u8pcr-control
                                      :member-name "PcrControl" :json-name
                                      "pcrControl")
                                     (pcr-period :target-type
                                      integer-min0max500 :member-name
                                      "PcrPeriod" :json-name "pcrPeriod")
                                     (pcr-pid :target-type string :member-name
                                      "PcrPid" :json-name "pcrPid")
                                     (pmt-interval :target-type
                                      integer-min0max1000 :member-name
                                      "PmtInterval" :json-name "pmtInterval")
                                     (pmt-pid :target-type string :member-name
                                      "PmtPid" :json-name "pmtPid")
                                     (program-num :target-type
                                      integer-min0max65535 :member-name
                                      "ProgramNum" :json-name "programNum")
                                     (scte35behavior :target-type
                                      m3u8scte35behavior :member-name
                                      "Scte35Behavior" :json-name
                                      "scte35Behavior")
                                     (scte35pid :target-type string
                                      :member-name "Scte35Pid" :json-name
                                      "scte35Pid")
                                     (timed-metadata-behavior :target-type
                                      m3u8timed-metadata-behavior :member-name
                                      "TimedMetadataBehavior" :json-name
                                      "timedMetadataBehavior")
                                     (timed-metadata-pid :target-type string
                                      :member-name "TimedMetadataPid"
                                      :json-name "timedMetadataPid")
                                     (transport-stream-id :target-type
                                      integer-min0max65535 :member-name
                                      "TransportStreamId" :json-name
                                      "transportStreamId")
                                     (video-pid :target-type string
                                      :member-name "VideoPid" :json-name
                                      "videoPid")
                                     (klv-behavior :target-type
                                      m3u8klv-behavior :member-name
                                      "KlvBehavior" :json-name "klvBehavior")
                                     (klv-data-pids :target-type string
                                      :member-name "KlvDataPids" :json-name
                                      "klvDataPids"))
                                    (:shape-name "M3u8Settings"))

(smithy/sdk/shapes:define-enum m3u8timed-metadata-behavior
    common-lisp:nil
  (:no-passthrough "NO_PASSTHROUGH")
  (:passthrough "PASSTHROUGH"))

(smithy/sdk/shapes:define-structure maintenance-create-settings common-lisp:nil
                                    ((maintenance-day :target-type
                                      maintenance-day :member-name
                                      "MaintenanceDay" :json-name
                                      "maintenanceDay")
                                     (maintenance-start-time :target-type
                                      string-pattern010920300 :member-name
                                      "MaintenanceStartTime" :json-name
                                      "maintenanceStartTime"))
                                    (:shape-name "MaintenanceCreateSettings"))

(smithy/sdk/shapes:define-enum maintenance-day
    common-lisp:nil
  (:monday "MONDAY")
  (:tuesday "TUESDAY")
  (:wednesday "WEDNESDAY")
  (:thursday "THURSDAY")
  (:friday "FRIDAY")
  (:saturday "SATURDAY")
  (:sunday "SUNDAY"))

(smithy/sdk/shapes:define-structure maintenance-status common-lisp:nil
                                    ((maintenance-day :target-type
                                      maintenance-day :member-name
                                      "MaintenanceDay" :json-name
                                      "maintenanceDay")
                                     (maintenance-deadline :target-type string
                                      :member-name "MaintenanceDeadline"
                                      :json-name "maintenanceDeadline")
                                     (maintenance-scheduled-date :target-type
                                      string :member-name
                                      "MaintenanceScheduledDate" :json-name
                                      "maintenanceScheduledDate")
                                     (maintenance-start-time :target-type
                                      string :member-name
                                      "MaintenanceStartTime" :json-name
                                      "maintenanceStartTime"))
                                    (:shape-name "MaintenanceStatus"))

(smithy/sdk/shapes:define-structure maintenance-update-settings common-lisp:nil
                                    ((maintenance-day :target-type
                                      maintenance-day :member-name
                                      "MaintenanceDay" :json-name
                                      "maintenanceDay")
                                     (maintenance-scheduled-date :target-type
                                      string :member-name
                                      "MaintenanceScheduledDate" :json-name
                                      "maintenanceScheduledDate")
                                     (maintenance-start-time :target-type
                                      string-pattern010920300 :member-name
                                      "MaintenanceStartTime" :json-name
                                      "maintenanceStartTime"))
                                    (:shape-name "MaintenanceUpdateSettings"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure media-connect-flow common-lisp:nil
                                    ((flow-arn :target-type string :member-name
                                      "FlowArn" :json-name "flowArn"))
                                    (:shape-name "MediaConnectFlow"))

(smithy/sdk/shapes:define-structure media-connect-flow-request common-lisp:nil
                                    ((flow-arn :target-type string :member-name
                                      "FlowArn" :json-name "flowArn"))
                                    (:shape-name "MediaConnectFlowRequest"))

(smithy/sdk/shapes:define-structure media-package-group-settings
                                    common-lisp:nil
                                    ((destination :target-type
                                      output-location-ref :required
                                      common-lisp:t :member-name "Destination"
                                      :json-name "destination"))
                                    (:shape-name "MediaPackageGroupSettings"))

(smithy/sdk/shapes:define-structure media-package-output-destination-settings
                                    common-lisp:nil
                                    ((channel-id :target-type string-min1
                                      :member-name "ChannelId" :json-name
                                      "channelId")
                                     (channel-group :target-type string-min1
                                      :member-name "ChannelGroup" :json-name
                                      "channelGroup")
                                     (channel-name :target-type string-min1
                                      :member-name "ChannelName" :json-name
                                      "channelName"))
                                    (:shape-name
                                     "MediaPackageOutputDestinationSettings"))

(smithy/sdk/shapes:define-structure media-package-output-settings
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "MediaPackageOutputSettings"))

(smithy/sdk/shapes:define-structure media-resource common-lisp:nil
                                    ((destinations :target-type
                                      list-of-media-resource-neighbor
                                      :member-name "Destinations" :json-name
                                      "destinations")
                                     (name :target-type string-min1max256
                                      :member-name "Name" :json-name "name")
                                     (sources :target-type
                                      list-of-media-resource-neighbor
                                      :member-name "Sources" :json-name
                                      "sources"))
                                    (:shape-name "MediaResource"))

(smithy/sdk/shapes:define-map media-resource-map :key string :value
                              media-resource)

(smithy/sdk/shapes:define-structure media-resource-neighbor common-lisp:nil
                                    ((arn :target-type
                                      string-min1max2048pattern-arn :required
                                      common-lisp:t :member-name "Arn"
                                      :json-name "arn")
                                     (name :target-type string-min1max256
                                      :member-name "Name" :json-name "name"))
                                    (:shape-name "MediaResourceNeighbor"))

(smithy/sdk/shapes:define-structure monitor-deployment common-lisp:nil
                                    ((details-uri :target-type
                                      string-min1max2048 :member-name
                                      "DetailsUri" :json-name "detailsUri")
                                     (error-message :target-type
                                      string-min1max2048 :member-name
                                      "ErrorMessage" :json-name "errorMessage")
                                     (status :target-type
                                      signal-map-monitor-deployment-status
                                      :required common-lisp:t :member-name
                                      "Status" :json-name "status"))
                                    (:shape-name "MonitorDeployment"))

(smithy/sdk/shapes:define-structure
 motion-graphics-activate-schedule-action-settings common-lisp:nil
 ((duration :target-type long-min0max86400000 :member-name "Duration"
   :json-name "duration")
  (password-param :target-type string :member-name "PasswordParam" :json-name
   "passwordParam")
  (url :target-type string :member-name "Url" :json-name "url")
  (username :target-type string :member-name "Username" :json-name "username"))
 (:shape-name "MotionGraphicsActivateScheduleActionSettings"))

(smithy/sdk/shapes:define-structure motion-graphics-configuration
                                    common-lisp:nil
                                    ((motion-graphics-insertion :target-type
                                      motion-graphics-insertion :member-name
                                      "MotionGraphicsInsertion" :json-name
                                      "motionGraphicsInsertion")
                                     (motion-graphics-settings :target-type
                                      motion-graphics-settings :required
                                      common-lisp:t :member-name
                                      "MotionGraphicsSettings" :json-name
                                      "motionGraphicsSettings"))
                                    (:shape-name "MotionGraphicsConfiguration"))

(smithy/sdk/shapes:define-structure
 motion-graphics-deactivate-schedule-action-settings common-lisp:nil
 common-lisp:nil (:shape-name "MotionGraphicsDeactivateScheduleActionSettings"))

(smithy/sdk/shapes:define-enum motion-graphics-insertion
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-structure motion-graphics-settings common-lisp:nil
                                    ((html-motion-graphics-settings
                                      :target-type
                                      html-motion-graphics-settings
                                      :member-name "HtmlMotionGraphicsSettings"
                                      :json-name "htmlMotionGraphicsSettings"))
                                    (:shape-name "MotionGraphicsSettings"))

(smithy/sdk/shapes:define-enum mp2coding-mode
    common-lisp:nil
  (:coding-mode-1-0 "CODING_MODE_1_0")
  (:coding-mode-2-0 "CODING_MODE_2_0"))

(smithy/sdk/shapes:define-structure mp2settings common-lisp:nil
                                    ((bitrate :target-type double :member-name
                                      "Bitrate" :json-name "bitrate")
                                     (coding-mode :target-type mp2coding-mode
                                      :member-name "CodingMode" :json-name
                                      "codingMode")
                                     (sample-rate :target-type double
                                      :member-name "SampleRate" :json-name
                                      "sampleRate"))
                                    (:shape-name "Mp2Settings"))

(smithy/sdk/shapes:define-enum mpeg2adaptive-quantization
    common-lisp:nil
  (:auto "AUTO")
  (:high "HIGH")
  (:low "LOW")
  (:medium "MEDIUM")
  (:off "OFF"))

(smithy/sdk/shapes:define-enum mpeg2color-metadata
    common-lisp:nil
  (:ignore "IGNORE")
  (:insert "INSERT"))

(smithy/sdk/shapes:define-enum mpeg2color-space
    common-lisp:nil
  (:auto "AUTO")
  (:passthrough "PASSTHROUGH"))

(smithy/sdk/shapes:define-enum mpeg2display-ratio
    common-lisp:nil
  (:displayratio16x9 "DISPLAYRATIO16X9")
  (:displayratio4x3 "DISPLAYRATIO4X3"))

(smithy/sdk/shapes:define-structure mpeg2filter-settings common-lisp:nil
                                    ((temporal-filter-settings :target-type
                                      temporal-filter-settings :member-name
                                      "TemporalFilterSettings" :json-name
                                      "temporalFilterSettings"))
                                    (:shape-name "Mpeg2FilterSettings"))

(smithy/sdk/shapes:define-enum mpeg2gop-size-units
    common-lisp:nil
  (:frames "FRAMES")
  (:seconds "SECONDS"))

(smithy/sdk/shapes:define-enum mpeg2scan-type
    common-lisp:nil
  (:interlaced "INTERLACED")
  (:progressive "PROGRESSIVE"))

(smithy/sdk/shapes:define-structure mpeg2settings common-lisp:nil
                                    ((adaptive-quantization :target-type
                                      mpeg2adaptive-quantization :member-name
                                      "AdaptiveQuantization" :json-name
                                      "adaptiveQuantization")
                                     (afd-signaling :target-type afd-signaling
                                      :member-name "AfdSignaling" :json-name
                                      "afdSignaling")
                                     (color-metadata :target-type
                                      mpeg2color-metadata :member-name
                                      "ColorMetadata" :json-name
                                      "colorMetadata")
                                     (color-space :target-type mpeg2color-space
                                      :member-name "ColorSpace" :json-name
                                      "colorSpace")
                                     (display-aspect-ratio :target-type
                                      mpeg2display-ratio :member-name
                                      "DisplayAspectRatio" :json-name
                                      "displayAspectRatio")
                                     (filter-settings :target-type
                                      mpeg2filter-settings :member-name
                                      "FilterSettings" :json-name
                                      "filterSettings")
                                     (fixed-afd :target-type fixed-afd
                                      :member-name "FixedAfd" :json-name
                                      "fixedAfd")
                                     (framerate-denominator :target-type
                                      integer-min1 :required common-lisp:t
                                      :member-name "FramerateDenominator"
                                      :json-name "framerateDenominator")
                                     (framerate-numerator :target-type
                                      integer-min1 :required common-lisp:t
                                      :member-name "FramerateNumerator"
                                      :json-name "framerateNumerator")
                                     (gop-closed-cadence :target-type
                                      integer-min0 :member-name
                                      "GopClosedCadence" :json-name
                                      "gopClosedCadence")
                                     (gop-num-bframes :target-type
                                      integer-min0max7 :member-name
                                      "GopNumBFrames" :json-name
                                      "gopNumBFrames")
                                     (gop-size :target-type double :member-name
                                      "GopSize" :json-name "gopSize")
                                     (gop-size-units :target-type
                                      mpeg2gop-size-units :member-name
                                      "GopSizeUnits" :json-name "gopSizeUnits")
                                     (scan-type :target-type mpeg2scan-type
                                      :member-name "ScanType" :json-name
                                      "scanType")
                                     (subgop-length :target-type
                                      mpeg2sub-gop-length :member-name
                                      "SubgopLength" :json-name "subgopLength")
                                     (timecode-insertion :target-type
                                      mpeg2timecode-insertion-behavior
                                      :member-name "TimecodeInsertion"
                                      :json-name "timecodeInsertion")
                                     (timecode-burnin-settings :target-type
                                      timecode-burnin-settings :member-name
                                      "TimecodeBurninSettings" :json-name
                                      "timecodeBurninSettings"))
                                    (:shape-name "Mpeg2Settings"))

(smithy/sdk/shapes:define-enum mpeg2sub-gop-length
    common-lisp:nil
  (:dynamic "DYNAMIC")
  (:fixed "FIXED"))

(smithy/sdk/shapes:define-enum mpeg2timecode-insertion-behavior
    common-lisp:nil
  (:disabled "DISABLED")
  (:gop-timecode "GOP_TIMECODE"))

(smithy/sdk/shapes:define-structure ms-smooth-group-settings common-lisp:nil
                                    ((acquisition-point-id :target-type string
                                      :member-name "AcquisitionPointId"
                                      :json-name "acquisitionPointId")
                                     (audio-only-timecode-control :target-type
                                      smooth-group-audio-only-timecode-control
                                      :member-name "AudioOnlyTimecodeControl"
                                      :json-name "audioOnlyTimecodeControl")
                                     (certificate-mode :target-type
                                      smooth-group-certificate-mode
                                      :member-name "CertificateMode" :json-name
                                      "certificateMode")
                                     (connection-retry-interval :target-type
                                      integer-min0 :member-name
                                      "ConnectionRetryInterval" :json-name
                                      "connectionRetryInterval")
                                     (destination :target-type
                                      output-location-ref :required
                                      common-lisp:t :member-name "Destination"
                                      :json-name "destination")
                                     (event-id :target-type string :member-name
                                      "EventId" :json-name "eventId")
                                     (event-id-mode :target-type
                                      smooth-group-event-id-mode :member-name
                                      "EventIdMode" :json-name "eventIdMode")
                                     (event-stop-behavior :target-type
                                      smooth-group-event-stop-behavior
                                      :member-name "EventStopBehavior"
                                      :json-name "eventStopBehavior")
                                     (filecache-duration :target-type
                                      integer-min0 :member-name
                                      "FilecacheDuration" :json-name
                                      "filecacheDuration")
                                     (fragment-length :target-type integer-min1
                                      :member-name "FragmentLength" :json-name
                                      "fragmentLength")
                                     (input-loss-action :target-type
                                      input-loss-action-for-ms-smooth-out
                                      :member-name "InputLossAction" :json-name
                                      "inputLossAction")
                                     (num-retries :target-type integer-min0
                                      :member-name "NumRetries" :json-name
                                      "numRetries")
                                     (restart-delay :target-type integer-min0
                                      :member-name "RestartDelay" :json-name
                                      "restartDelay")
                                     (segmentation-mode :target-type
                                      smooth-group-segmentation-mode
                                      :member-name "SegmentationMode"
                                      :json-name "segmentationMode")
                                     (send-delay-ms :target-type
                                      integer-min0max10000 :member-name
                                      "SendDelayMs" :json-name "sendDelayMs")
                                     (sparse-track-type :target-type
                                      smooth-group-sparse-track-type
                                      :member-name "SparseTrackType" :json-name
                                      "sparseTrackType")
                                     (stream-manifest-behavior :target-type
                                      smooth-group-stream-manifest-behavior
                                      :member-name "StreamManifestBehavior"
                                      :json-name "streamManifestBehavior")
                                     (timestamp-offset :target-type string
                                      :member-name "TimestampOffset" :json-name
                                      "timestampOffset")
                                     (timestamp-offset-mode :target-type
                                      smooth-group-timestamp-offset-mode
                                      :member-name "TimestampOffsetMode"
                                      :json-name "timestampOffsetMode"))
                                    (:shape-name "MsSmoothGroupSettings"))

(smithy/sdk/shapes:define-enum ms-smooth-h265packaging-type
    common-lisp:nil
  (:hev1 "HEV1")
  (:hvc1 "HVC1"))

(smithy/sdk/shapes:define-structure ms-smooth-output-settings common-lisp:nil
                                    ((h265packaging-type :target-type
                                      ms-smooth-h265packaging-type :member-name
                                      "H265PackagingType" :json-name
                                      "h265PackagingType")
                                     (name-modifier :target-type string
                                      :member-name "NameModifier" :json-name
                                      "nameModifier"))
                                    (:shape-name "MsSmoothOutputSettings"))

(smithy/sdk/shapes:define-structure multicast-input-settings common-lisp:nil
                                    ((source-ip-address :target-type string
                                      :member-name "SourceIpAddress" :json-name
                                      "sourceIpAddress"))
                                    (:shape-name "MulticastInputSettings"))

(smithy/sdk/shapes:define-structure multicast-settings common-lisp:nil
                                    ((sources :target-type
                                      list-of-multicast-source :member-name
                                      "Sources" :json-name "sources"))
                                    (:shape-name "MulticastSettings"))

(smithy/sdk/shapes:define-structure multicast-settings-create-request
                                    common-lisp:nil
                                    ((sources :target-type
                                      list-of-multicast-source-create-request
                                      :member-name "Sources" :json-name
                                      "sources"))
                                    (:shape-name
                                     "MulticastSettingsCreateRequest"))

(smithy/sdk/shapes:define-structure multicast-settings-update-request
                                    common-lisp:nil
                                    ((sources :target-type
                                      list-of-multicast-source-update-request
                                      :member-name "Sources" :json-name
                                      "sources"))
                                    (:shape-name
                                     "MulticastSettingsUpdateRequest"))

(smithy/sdk/shapes:define-structure multicast-source common-lisp:nil
                                    ((source-ip :target-type string
                                      :member-name "SourceIp" :json-name
                                      "sourceIp")
                                     (url :target-type string :required
                                      common-lisp:t :member-name "Url"
                                      :json-name "url"))
                                    (:shape-name "MulticastSource"))

(smithy/sdk/shapes:define-structure multicast-source-create-request
                                    common-lisp:nil
                                    ((source-ip :target-type string
                                      :member-name "SourceIp" :json-name
                                      "sourceIp")
                                     (url :target-type string :required
                                      common-lisp:t :member-name "Url"
                                      :json-name "url"))
                                    (:shape-name
                                     "MulticastSourceCreateRequest"))

(smithy/sdk/shapes:define-structure multicast-source-update-request
                                    common-lisp:nil
                                    ((source-ip :target-type string
                                      :member-name "SourceIp" :json-name
                                      "sourceIp")
                                     (url :target-type string :required
                                      common-lisp:t :member-name "Url"
                                      :json-name "url"))
                                    (:shape-name
                                     "MulticastSourceUpdateRequest"))

(smithy/sdk/shapes:define-structure multiplex common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn" :json-name "arn")
                                     (availability-zones :target-type
                                      list-of-string :member-name
                                      "AvailabilityZones" :json-name
                                      "availabilityZones")
                                     (destinations :target-type
                                      list-of-multiplex-output-destination
                                      :member-name "Destinations" :json-name
                                      "destinations")
                                     (id :target-type string :member-name "Id"
                                      :json-name "id")
                                     (multiplex-settings :target-type
                                      multiplex-settings :member-name
                                      "MultiplexSettings" :json-name
                                      "multiplexSettings")
                                     (name :target-type string :member-name
                                      "Name" :json-name "name")
                                     (pipelines-running-count :target-type
                                      integer :member-name
                                      "PipelinesRunningCount" :json-name
                                      "pipelinesRunningCount")
                                     (program-count :target-type integer
                                      :member-name "ProgramCount" :json-name
                                      "programCount")
                                     (state :target-type multiplex-state
                                      :member-name "State" :json-name "state")
                                     (tags :target-type tags :member-name
                                      "Tags" :json-name "tags"))
                                    (:shape-name "Multiplex"))

(smithy/sdk/shapes:define-structure multiplex-container-settings
                                    common-lisp:nil
                                    ((multiplex-m2ts-settings :target-type
                                      multiplex-m2ts-settings :member-name
                                      "MultiplexM2tsSettings" :json-name
                                      "multiplexM2tsSettings"))
                                    (:shape-name "MultiplexContainerSettings"))

(smithy/sdk/shapes:define-structure multiplex-group-settings common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "MultiplexGroupSettings"))

(smithy/sdk/shapes:define-structure multiplex-m2ts-settings common-lisp:nil
                                    ((absent-input-audio-behavior :target-type
                                      m2ts-absent-input-audio-behavior
                                      :member-name "AbsentInputAudioBehavior"
                                      :json-name "absentInputAudioBehavior")
                                     (arib :target-type m2ts-arib :member-name
                                      "Arib" :json-name "arib")
                                     (audio-buffer-model :target-type
                                      m2ts-audio-buffer-model :member-name
                                      "AudioBufferModel" :json-name
                                      "audioBufferModel")
                                     (audio-frames-per-pes :target-type
                                      integer-min0 :member-name
                                      "AudioFramesPerPes" :json-name
                                      "audioFramesPerPes")
                                     (audio-stream-type :target-type
                                      m2ts-audio-stream-type :member-name
                                      "AudioStreamType" :json-name
                                      "audioStreamType")
                                     (cc-descriptor :target-type
                                      m2ts-cc-descriptor :member-name
                                      "CcDescriptor" :json-name "ccDescriptor")
                                     (ebif :target-type m2ts-ebif-control
                                      :member-name "Ebif" :json-name "ebif")
                                     (es-rate-in-pes :target-type
                                      m2ts-es-rate-in-pes :member-name
                                      "EsRateInPes" :json-name "esRateInPes")
                                     (klv :target-type m2ts-klv :member-name
                                      "Klv" :json-name "klv")
                                     (nielsen-id3behavior :target-type
                                      m2ts-nielsen-id3behavior :member-name
                                      "NielsenId3Behavior" :json-name
                                      "nielsenId3Behavior")
                                     (pcr-control :target-type m2ts-pcr-control
                                      :member-name "PcrControl" :json-name
                                      "pcrControl")
                                     (pcr-period :target-type
                                      integer-min0max500 :member-name
                                      "PcrPeriod" :json-name "pcrPeriod")
                                     (scte35control :target-type
                                      m2ts-scte35control :member-name
                                      "Scte35Control" :json-name
                                      "scte35Control")
                                     (scte35preroll-pullup-milliseconds
                                      :target-type double-min0max5000
                                      :member-name
                                      "Scte35PrerollPullupMilliseconds"
                                      :json-name
                                      "scte35PrerollPullupMilliseconds"))
                                    (:shape-name "MultiplexM2tsSettings"))

(smithy/sdk/shapes:define-structure
 multiplex-media-connect-output-destination-settings common-lisp:nil
 ((entitlement-arn :target-type string-min1 :member-name "EntitlementArn"
   :json-name "entitlementArn"))
 (:shape-name "MultiplexMediaConnectOutputDestinationSettings"))

(smithy/sdk/shapes:define-structure multiplex-output-destination
                                    common-lisp:nil
                                    ((media-connect-settings :target-type
                                      multiplex-media-connect-output-destination-settings
                                      :member-name "MediaConnectSettings"
                                      :json-name "mediaConnectSettings"))
                                    (:shape-name "MultiplexOutputDestination"))

(smithy/sdk/shapes:define-structure multiplex-output-settings common-lisp:nil
                                    ((destination :target-type
                                      output-location-ref :required
                                      common-lisp:t :member-name "Destination"
                                      :json-name "destination")
                                     (container-settings :target-type
                                      multiplex-container-settings :member-name
                                      "ContainerSettings" :json-name
                                      "containerSettings"))
                                    (:shape-name "MultiplexOutputSettings"))

(smithy/sdk/shapes:define-map multiplex-packet-identifiers-mapping :key string
                              :value multiplex-program-packet-identifiers-map)

(smithy/sdk/shapes:define-structure multiplex-program common-lisp:nil
                                    ((channel-id :target-type string
                                      :member-name "ChannelId" :json-name
                                      "channelId")
                                     (multiplex-program-settings :target-type
                                      multiplex-program-settings :member-name
                                      "MultiplexProgramSettings" :json-name
                                      "multiplexProgramSettings")
                                     (packet-identifiers-map :target-type
                                      multiplex-program-packet-identifiers-map
                                      :member-name "PacketIdentifiersMap"
                                      :json-name "packetIdentifiersMap")
                                     (pipeline-details :target-type
                                      list-of-multiplex-program-pipeline-detail
                                      :member-name "PipelineDetails" :json-name
                                      "pipelineDetails")
                                     (program-name :target-type string
                                      :member-name "ProgramName" :json-name
                                      "programName"))
                                    (:shape-name "MultiplexProgram"))

(smithy/sdk/shapes:define-structure
 multiplex-program-channel-destination-settings common-lisp:nil
 ((multiplex-id :target-type string-min1 :member-name "MultiplexId" :json-name
   "multiplexId")
  (program-name :target-type string-min1 :member-name "ProgramName" :json-name
   "programName"))
 (:shape-name "MultiplexProgramChannelDestinationSettings"))

(smithy/sdk/shapes:define-structure multiplex-program-packet-identifiers-map
                                    common-lisp:nil
                                    ((audio-pids :target-type list-of-integer
                                      :member-name "AudioPids" :json-name
                                      "audioPids")
                                     (dvb-sub-pids :target-type list-of-integer
                                      :member-name "DvbSubPids" :json-name
                                      "dvbSubPids")
                                     (dvb-teletext-pid :target-type integer
                                      :member-name "DvbTeletextPid" :json-name
                                      "dvbTeletextPid")
                                     (etv-platform-pid :target-type integer
                                      :member-name "EtvPlatformPid" :json-name
                                      "etvPlatformPid")
                                     (etv-signal-pid :target-type integer
                                      :member-name "EtvSignalPid" :json-name
                                      "etvSignalPid")
                                     (klv-data-pids :target-type
                                      list-of-integer :member-name
                                      "KlvDataPids" :json-name "klvDataPids")
                                     (pcr-pid :target-type integer :member-name
                                      "PcrPid" :json-name "pcrPid")
                                     (pmt-pid :target-type integer :member-name
                                      "PmtPid" :json-name "pmtPid")
                                     (private-metadata-pid :target-type integer
                                      :member-name "PrivateMetadataPid"
                                      :json-name "privateMetadataPid")
                                     (scte27pids :target-type list-of-integer
                                      :member-name "Scte27Pids" :json-name
                                      "scte27Pids")
                                     (scte35pid :target-type integer
                                      :member-name "Scte35Pid" :json-name
                                      "scte35Pid")
                                     (timed-metadata-pid :target-type integer
                                      :member-name "TimedMetadataPid"
                                      :json-name "timedMetadataPid")
                                     (video-pid :target-type integer
                                      :member-name "VideoPid" :json-name
                                      "videoPid")
                                     (arib-captions-pid :target-type integer
                                      :member-name "AribCaptionsPid" :json-name
                                      "aribCaptionsPid")
                                     (dvb-teletext-pids :target-type
                                      list-of-integer :member-name
                                      "DvbTeletextPids" :json-name
                                      "dvbTeletextPids")
                                     (ecm-pid :target-type integer :member-name
                                      "EcmPid" :json-name "ecmPid")
                                     (smpte2038pid :target-type integer
                                      :member-name "Smpte2038Pid" :json-name
                                      "smpte2038Pid"))
                                    (:shape-name
                                     "MultiplexProgramPacketIdentifiersMap"))

(smithy/sdk/shapes:define-structure multiplex-program-pipeline-detail
                                    common-lisp:nil
                                    ((active-channel-pipeline :target-type
                                      string :member-name
                                      "ActiveChannelPipeline" :json-name
                                      "activeChannelPipeline")
                                     (pipeline-id :target-type string
                                      :member-name "PipelineId" :json-name
                                      "pipelineId"))
                                    (:shape-name
                                     "MultiplexProgramPipelineDetail"))

(smithy/sdk/shapes:define-structure multiplex-program-service-descriptor
                                    common-lisp:nil
                                    ((provider-name :target-type string-max256
                                      :required common-lisp:t :member-name
                                      "ProviderName" :json-name "providerName")
                                     (service-name :target-type string-max256
                                      :required common-lisp:t :member-name
                                      "ServiceName" :json-name "serviceName"))
                                    (:shape-name
                                     "MultiplexProgramServiceDescriptor"))

(smithy/sdk/shapes:define-structure multiplex-program-settings common-lisp:nil
                                    ((preferred-channel-pipeline :target-type
                                      preferred-channel-pipeline :member-name
                                      "PreferredChannelPipeline" :json-name
                                      "preferredChannelPipeline")
                                     (program-number :target-type
                                      integer-min0max65535 :required
                                      common-lisp:t :member-name
                                      "ProgramNumber" :json-name
                                      "programNumber")
                                     (service-descriptor :target-type
                                      multiplex-program-service-descriptor
                                      :member-name "ServiceDescriptor"
                                      :json-name "serviceDescriptor")
                                     (video-settings :target-type
                                      multiplex-video-settings :member-name
                                      "VideoSettings" :json-name
                                      "videoSettings"))
                                    (:shape-name "MultiplexProgramSettings"))

(smithy/sdk/shapes:define-structure multiplex-program-summary common-lisp:nil
                                    ((channel-id :target-type string
                                      :member-name "ChannelId" :json-name
                                      "channelId")
                                     (program-name :target-type string
                                      :member-name "ProgramName" :json-name
                                      "programName"))
                                    (:shape-name "MultiplexProgramSummary"))

(smithy/sdk/shapes:define-structure multiplex-settings common-lisp:nil
                                    ((maximum-video-buffer-delay-milliseconds
                                      :target-type integer-min800max3000
                                      :member-name
                                      "MaximumVideoBufferDelayMilliseconds"
                                      :json-name
                                      "maximumVideoBufferDelayMilliseconds")
                                     (transport-stream-bitrate :target-type
                                      integer-min1000000max100000000 :required
                                      common-lisp:t :member-name
                                      "TransportStreamBitrate" :json-name
                                      "transportStreamBitrate")
                                     (transport-stream-id :target-type
                                      integer-min0max65535 :required
                                      common-lisp:t :member-name
                                      "TransportStreamId" :json-name
                                      "transportStreamId")
                                     (transport-stream-reserved-bitrate
                                      :target-type integer-min0max100000000
                                      :member-name
                                      "TransportStreamReservedBitrate"
                                      :json-name
                                      "transportStreamReservedBitrate"))
                                    (:shape-name "MultiplexSettings"))

(smithy/sdk/shapes:define-structure multiplex-settings-summary common-lisp:nil
                                    ((transport-stream-bitrate :target-type
                                      integer-min1000000max100000000
                                      :member-name "TransportStreamBitrate"
                                      :json-name "transportStreamBitrate"))
                                    (:shape-name "MultiplexSettingsSummary"))

(smithy/sdk/shapes:define-enum multiplex-state
    common-lisp:nil
  (:creating "CREATING")
  (:create-failed "CREATE_FAILED")
  (:idle "IDLE")
  (:starting "STARTING")
  (:running "RUNNING")
  (:recovering "RECOVERING")
  (:stopping "STOPPING")
  (:deleting "DELETING")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-structure multiplex-statmux-video-settings
                                    common-lisp:nil
                                    ((maximum-bitrate :target-type
                                      integer-min100000max100000000
                                      :member-name "MaximumBitrate" :json-name
                                      "maximumBitrate")
                                     (minimum-bitrate :target-type
                                      integer-min100000max100000000
                                      :member-name "MinimumBitrate" :json-name
                                      "minimumBitrate")
                                     (priority :target-type
                                      integer-min-negative5max5 :member-name
                                      "Priority" :json-name "priority"))
                                    (:shape-name
                                     "MultiplexStatmuxVideoSettings"))

(smithy/sdk/shapes:define-structure multiplex-summary common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn" :json-name "arn")
                                     (availability-zones :target-type
                                      list-of-string :member-name
                                      "AvailabilityZones" :json-name
                                      "availabilityZones")
                                     (id :target-type string :member-name "Id"
                                      :json-name "id")
                                     (multiplex-settings :target-type
                                      multiplex-settings-summary :member-name
                                      "MultiplexSettings" :json-name
                                      "multiplexSettings")
                                     (name :target-type string :member-name
                                      "Name" :json-name "name")
                                     (pipelines-running-count :target-type
                                      integer :member-name
                                      "PipelinesRunningCount" :json-name
                                      "pipelinesRunningCount")
                                     (program-count :target-type integer
                                      :member-name "ProgramCount" :json-name
                                      "programCount")
                                     (state :target-type multiplex-state
                                      :member-name "State" :json-name "state")
                                     (tags :target-type tags :member-name
                                      "Tags" :json-name "tags"))
                                    (:shape-name "MultiplexSummary"))

(smithy/sdk/shapes:define-structure multiplex-video-settings common-lisp:nil
                                    ((constant-bitrate :target-type
                                      integer-min100000max100000000
                                      :member-name "ConstantBitrate" :json-name
                                      "constantBitrate")
                                     (statmux-settings :target-type
                                      multiplex-statmux-video-settings
                                      :member-name "StatmuxSettings" :json-name
                                      "statmuxSettings"))
                                    (:shape-name "MultiplexVideoSettings"))

(smithy/sdk/shapes:define-enum network-input-server-validation
    common-lisp:nil
  (:check-cryptography-and-validate-name "CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME")
  (:check-cryptography-only "CHECK_CRYPTOGRAPHY_ONLY"))

(smithy/sdk/shapes:define-structure network-input-settings common-lisp:nil
                                    ((hls-input-settings :target-type
                                      hls-input-settings :member-name
                                      "HlsInputSettings" :json-name
                                      "hlsInputSettings")
                                     (server-validation :target-type
                                      network-input-server-validation
                                      :member-name "ServerValidation"
                                      :json-name "serverValidation")
                                     (multicast-input-settings :target-type
                                      multicast-input-settings :member-name
                                      "MulticastInputSettings" :json-name
                                      "multicastInputSettings"))
                                    (:shape-name "NetworkInputSettings"))

(smithy/sdk/shapes:define-enum network-interface-mode
    common-lisp:nil
  (:nat "NAT")
  (:bridge "BRIDGE"))

(smithy/sdk/shapes:define-enum network-state
    common-lisp:nil
  (:creating "CREATING")
  (:create-failed "CREATE_FAILED")
  (:active "ACTIVE")
  (:deleting "DELETING")
  (:idle "IDLE")
  (:in-use "IN_USE")
  (:updating "UPDATING")
  (:delete-failed "DELETE_FAILED")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-structure nielsen-cbet common-lisp:nil
                                    ((cbet-check-digit-string :target-type
                                      string-min2max2 :required common-lisp:t
                                      :member-name "CbetCheckDigitString"
                                      :json-name "cbetCheckDigitString")
                                     (cbet-stepaside :target-type
                                      nielsen-watermarks-cbet-stepaside
                                      :required common-lisp:t :member-name
                                      "CbetStepaside" :json-name
                                      "cbetStepaside")
                                     (csid :target-type string-min1max7
                                      :required common-lisp:t :member-name
                                      "Csid" :json-name "csid"))
                                    (:shape-name "NielsenCBET"))

(smithy/sdk/shapes:define-structure nielsen-configuration common-lisp:nil
                                    ((distributor-id :target-type string
                                      :member-name "DistributorId" :json-name
                                      "distributorId")
                                     (nielsen-pcm-to-id3tagging :target-type
                                      nielsen-pcm-to-id3tagging-state
                                      :member-name "NielsenPcmToId3Tagging"
                                      :json-name "nielsenPcmToId3Tagging"))
                                    (:shape-name "NielsenConfiguration"))

(smithy/sdk/shapes:define-structure nielsen-naes-ii-nw common-lisp:nil
                                    ((check-digit-string :target-type
                                      string-min2max2 :required common-lisp:t
                                      :member-name "CheckDigitString"
                                      :json-name "checkDigitString")
                                     (sid :target-type double-min1max65535
                                      :required common-lisp:t :member-name
                                      "Sid" :json-name "sid")
                                     (timezone :target-type
                                      nielsen-watermark-timezones :member-name
                                      "Timezone" :json-name "timezone"))
                                    (:shape-name "NielsenNaesIiNw"))

(smithy/sdk/shapes:define-enum nielsen-pcm-to-id3tagging-state
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum nielsen-watermark-timezones
    common-lisp:nil
  (:america-puerto-rico "AMERICA_PUERTO_RICO")
  (:us-alaska "US_ALASKA")
  (:us-arizona "US_ARIZONA")
  (:us-central "US_CENTRAL")
  (:us-eastern "US_EASTERN")
  (:us-hawaii "US_HAWAII")
  (:us-mountain "US_MOUNTAIN")
  (:us-pacific "US_PACIFIC")
  (:us-samoa "US_SAMOA")
  (:utc "UTC"))

(smithy/sdk/shapes:define-enum nielsen-watermarks-cbet-stepaside
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum nielsen-watermarks-distribution-types
    common-lisp:nil
  (:final-distributor "FINAL_DISTRIBUTOR")
  (:program-content "PROGRAM_CONTENT"))

(smithy/sdk/shapes:define-structure nielsen-watermarks-settings common-lisp:nil
                                    ((nielsen-cbet-settings :target-type
                                      nielsen-cbet :member-name
                                      "NielsenCbetSettings" :json-name
                                      "nielsenCbetSettings")
                                     (nielsen-distribution-type :target-type
                                      nielsen-watermarks-distribution-types
                                      :member-name "NielsenDistributionType"
                                      :json-name "nielsenDistributionType")
                                     (nielsen-naes-ii-nw-settings :target-type
                                      nielsen-naes-ii-nw :member-name
                                      "NielsenNaesIiNwSettings" :json-name
                                      "nielsenNaesIiNwSettings"))
                                    (:shape-name "NielsenWatermarksSettings"))

(smithy/sdk/shapes:define-enum node-connection-state
    common-lisp:nil
  (:connected "CONNECTED")
  (:disconnected "DISCONNECTED"))

(smithy/sdk/shapes:define-structure node-interface-mapping common-lisp:nil
                                    ((logical-interface-name :target-type
                                      string :member-name
                                      "LogicalInterfaceName" :json-name
                                      "logicalInterfaceName")
                                     (network-interface-mode :target-type
                                      network-interface-mode :member-name
                                      "NetworkInterfaceMode" :json-name
                                      "networkInterfaceMode")
                                     (physical-interface-name :target-type
                                      string :member-name
                                      "PhysicalInterfaceName" :json-name
                                      "physicalInterfaceName"))
                                    (:shape-name "NodeInterfaceMapping"))

(smithy/sdk/shapes:define-structure node-interface-mapping-create-request
                                    common-lisp:nil
                                    ((logical-interface-name :target-type
                                      string :member-name
                                      "LogicalInterfaceName" :json-name
                                      "logicalInterfaceName")
                                     (network-interface-mode :target-type
                                      network-interface-mode :member-name
                                      "NetworkInterfaceMode" :json-name
                                      "networkInterfaceMode")
                                     (physical-interface-name :target-type
                                      string :member-name
                                      "PhysicalInterfaceName" :json-name
                                      "physicalInterfaceName"))
                                    (:shape-name
                                     "NodeInterfaceMappingCreateRequest"))

(smithy/sdk/shapes:define-enum node-role
    common-lisp:nil
  (:backup "BACKUP")
  (:active "ACTIVE"))

(smithy/sdk/shapes:define-enum node-state
    common-lisp:nil
  (:created "CREATED")
  (:registering "REGISTERING")
  (:ready-to-activate "READY_TO_ACTIVATE")
  (:registration-failed "REGISTRATION_FAILED")
  (:activation-failed "ACTIVATION_FAILED")
  (:active "ACTIVE")
  (:ready "READY")
  (:in-use "IN_USE")
  (:deregistering "DEREGISTERING")
  (:draining "DRAINING")
  (:deregistration-failed "DEREGISTRATION_FAILED")
  (:deregistered "DEREGISTERED"))

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "NotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure offering common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn" :json-name "arn")
                                     (currency-code :target-type string
                                      :member-name "CurrencyCode" :json-name
                                      "currencyCode")
                                     (duration :target-type integer
                                      :member-name "Duration" :json-name
                                      "duration")
                                     (duration-units :target-type
                                      offering-duration-units :member-name
                                      "DurationUnits" :json-name
                                      "durationUnits")
                                     (fixed-price :target-type double
                                      :member-name "FixedPrice" :json-name
                                      "fixedPrice")
                                     (offering-description :target-type string
                                      :member-name "OfferingDescription"
                                      :json-name "offeringDescription")
                                     (offering-id :target-type string
                                      :member-name "OfferingId" :json-name
                                      "offeringId")
                                     (offering-type :target-type offering-type
                                      :member-name "OfferingType" :json-name
                                      "offeringType")
                                     (region :target-type string :member-name
                                      "Region" :json-name "region")
                                     (resource-specification :target-type
                                      reservation-resource-specification
                                      :member-name "ResourceSpecification"
                                      :json-name "resourceSpecification")
                                     (usage-price :target-type double
                                      :member-name "UsagePrice" :json-name
                                      "usagePrice"))
                                    (:shape-name "Offering"))

(smithy/sdk/shapes:define-enum offering-duration-units
    common-lisp:nil
  (:months "MONTHS"))

(smithy/sdk/shapes:define-enum offering-type
    common-lisp:nil
  (:no-upfront "NO_UPFRONT"))

(smithy/sdk/shapes:define-structure output common-lisp:nil
                                    ((audio-description-names :target-type
                                      list-of-string :member-name
                                      "AudioDescriptionNames" :json-name
                                      "audioDescriptionNames")
                                     (caption-description-names :target-type
                                      list-of-string :member-name
                                      "CaptionDescriptionNames" :json-name
                                      "captionDescriptionNames")
                                     (output-name :target-type
                                      string-min1max255 :member-name
                                      "OutputName" :json-name "outputName")
                                     (output-settings :target-type
                                      output-settings :required common-lisp:t
                                      :member-name "OutputSettings" :json-name
                                      "outputSettings")
                                     (video-description-name :target-type
                                      string :member-name
                                      "VideoDescriptionName" :json-name
                                      "videoDescriptionName"))
                                    (:shape-name "Output"))

(smithy/sdk/shapes:define-structure output-destination common-lisp:nil
                                    ((id :target-type string :member-name "Id"
                                      :json-name "id")
                                     (media-package-settings :target-type
                                      list-of-media-package-output-destination-settings
                                      :member-name "MediaPackageSettings"
                                      :json-name "mediaPackageSettings")
                                     (multiplex-settings :target-type
                                      multiplex-program-channel-destination-settings
                                      :member-name "MultiplexSettings"
                                      :json-name "multiplexSettings")
                                     (settings :target-type
                                      list-of-output-destination-settings
                                      :member-name "Settings" :json-name
                                      "settings")
                                     (srt-settings :target-type
                                      list-of-srt-output-destination-settings
                                      :member-name "SrtSettings" :json-name
                                      "srtSettings")
                                     (logical-interface-names :target-type
                                      list-of-string :member-name
                                      "LogicalInterfaceNames" :json-name
                                      "logicalInterfaceNames"))
                                    (:shape-name "OutputDestination"))

(smithy/sdk/shapes:define-structure output-destination-settings common-lisp:nil
                                    ((password-param :target-type string
                                      :member-name "PasswordParam" :json-name
                                      "passwordParam")
                                     (stream-name :target-type string
                                      :member-name "StreamName" :json-name
                                      "streamName")
                                     (url :target-type string :member-name
                                      "Url" :json-name "url")
                                     (username :target-type string :member-name
                                      "Username" :json-name "username"))
                                    (:shape-name "OutputDestinationSettings"))

(smithy/sdk/shapes:define-structure output-group common-lisp:nil
                                    ((name :target-type string-max32
                                      :member-name "Name" :json-name "name")
                                     (output-group-settings :target-type
                                      output-group-settings :required
                                      common-lisp:t :member-name
                                      "OutputGroupSettings" :json-name
                                      "outputGroupSettings")
                                     (outputs :target-type list-of-output
                                      :required common-lisp:t :member-name
                                      "Outputs" :json-name "outputs"))
                                    (:shape-name "OutputGroup"))

(smithy/sdk/shapes:define-structure output-group-settings common-lisp:nil
                                    ((archive-group-settings :target-type
                                      archive-group-settings :member-name
                                      "ArchiveGroupSettings" :json-name
                                      "archiveGroupSettings")
                                     (frame-capture-group-settings :target-type
                                      frame-capture-group-settings :member-name
                                      "FrameCaptureGroupSettings" :json-name
                                      "frameCaptureGroupSettings")
                                     (hls-group-settings :target-type
                                      hls-group-settings :member-name
                                      "HlsGroupSettings" :json-name
                                      "hlsGroupSettings")
                                     (media-package-group-settings :target-type
                                      media-package-group-settings :member-name
                                      "MediaPackageGroupSettings" :json-name
                                      "mediaPackageGroupSettings")
                                     (ms-smooth-group-settings :target-type
                                      ms-smooth-group-settings :member-name
                                      "MsSmoothGroupSettings" :json-name
                                      "msSmoothGroupSettings")
                                     (multiplex-group-settings :target-type
                                      multiplex-group-settings :member-name
                                      "MultiplexGroupSettings" :json-name
                                      "multiplexGroupSettings")
                                     (rtmp-group-settings :target-type
                                      rtmp-group-settings :member-name
                                      "RtmpGroupSettings" :json-name
                                      "rtmpGroupSettings")
                                     (udp-group-settings :target-type
                                      udp-group-settings :member-name
                                      "UdpGroupSettings" :json-name
                                      "udpGroupSettings")
                                     (cmaf-ingest-group-settings :target-type
                                      cmaf-ingest-group-settings :member-name
                                      "CmafIngestGroupSettings" :json-name
                                      "cmafIngestGroupSettings")
                                     (srt-group-settings :target-type
                                      srt-group-settings :member-name
                                      "SrtGroupSettings" :json-name
                                      "srtGroupSettings"))
                                    (:shape-name "OutputGroupSettings"))

(smithy/sdk/shapes:define-structure output-location-ref common-lisp:nil
                                    ((destination-ref-id :target-type string
                                      :member-name "DestinationRefId"
                                      :json-name "destinationRefId"))
                                    (:shape-name "OutputLocationRef"))

(smithy/sdk/shapes:define-structure output-locking-settings common-lisp:nil
                                    ((epoch-locking-settings :target-type
                                      epoch-locking-settings :member-name
                                      "EpochLockingSettings" :json-name
                                      "epochLockingSettings")
                                     (pipeline-locking-settings :target-type
                                      pipeline-locking-settings :member-name
                                      "PipelineLockingSettings" :json-name
                                      "pipelineLockingSettings"))
                                    (:shape-name "OutputLockingSettings"))

(smithy/sdk/shapes:define-structure output-settings common-lisp:nil
                                    ((archive-output-settings :target-type
                                      archive-output-settings :member-name
                                      "ArchiveOutputSettings" :json-name
                                      "archiveOutputSettings")
                                     (frame-capture-output-settings
                                      :target-type
                                      frame-capture-output-settings
                                      :member-name "FrameCaptureOutputSettings"
                                      :json-name "frameCaptureOutputSettings")
                                     (hls-output-settings :target-type
                                      hls-output-settings :member-name
                                      "HlsOutputSettings" :json-name
                                      "hlsOutputSettings")
                                     (media-package-output-settings
                                      :target-type
                                      media-package-output-settings
                                      :member-name "MediaPackageOutputSettings"
                                      :json-name "mediaPackageOutputSettings")
                                     (ms-smooth-output-settings :target-type
                                      ms-smooth-output-settings :member-name
                                      "MsSmoothOutputSettings" :json-name
                                      "msSmoothOutputSettings")
                                     (multiplex-output-settings :target-type
                                      multiplex-output-settings :member-name
                                      "MultiplexOutputSettings" :json-name
                                      "multiplexOutputSettings")
                                     (rtmp-output-settings :target-type
                                      rtmp-output-settings :member-name
                                      "RtmpOutputSettings" :json-name
                                      "rtmpOutputSettings")
                                     (udp-output-settings :target-type
                                      udp-output-settings :member-name
                                      "UdpOutputSettings" :json-name
                                      "udpOutputSettings")
                                     (cmaf-ingest-output-settings :target-type
                                      cmaf-ingest-output-settings :member-name
                                      "CmafIngestOutputSettings" :json-name
                                      "cmafIngestOutputSettings")
                                     (srt-output-settings :target-type
                                      srt-output-settings :member-name
                                      "SrtOutputSettings" :json-name
                                      "srtOutputSettings"))
                                    (:shape-name "OutputSettings"))

(smithy/sdk/shapes:define-structure pass-through-settings common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "PassThroughSettings"))

(smithy/sdk/shapes:define-structure pause-state-schedule-action-settings
                                    common-lisp:nil
                                    ((pipelines :target-type
                                      list-of-pipeline-pause-state-settings
                                      :member-name "Pipelines" :json-name
                                      "pipelines"))
                                    (:shape-name
                                     "PauseStateScheduleActionSettings"))

(smithy/sdk/shapes:define-structure pipeline-detail common-lisp:nil
                                    ((active-input-attachment-name :target-type
                                      string :member-name
                                      "ActiveInputAttachmentName" :json-name
                                      "activeInputAttachmentName")
                                     (active-input-switch-action-name
                                      :target-type string :member-name
                                      "ActiveInputSwitchActionName" :json-name
                                      "activeInputSwitchActionName")
                                     (active-motion-graphics-action-name
                                      :target-type string :member-name
                                      "ActiveMotionGraphicsActionName"
                                      :json-name
                                      "activeMotionGraphicsActionName")
                                     (active-motion-graphics-uri :target-type
                                      string :member-name
                                      "ActiveMotionGraphicsUri" :json-name
                                      "activeMotionGraphicsUri")
                                     (pipeline-id :target-type string
                                      :member-name "PipelineId" :json-name
                                      "pipelineId")
                                     (channel-engine-version :target-type
                                      channel-engine-version-response
                                      :member-name "ChannelEngineVersion"
                                      :json-name "channelEngineVersion"))
                                    (:shape-name "PipelineDetail"))

(smithy/sdk/shapes:define-enum pipeline-id
    common-lisp:nil
  (:pipeline-0 "PIPELINE_0")
  (:pipeline-1 "PIPELINE_1"))

(smithy/sdk/shapes:define-structure pipeline-locking-settings common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "PipelineLockingSettings"))

(smithy/sdk/shapes:define-structure pipeline-pause-state-settings
                                    common-lisp:nil
                                    ((pipeline-id :target-type pipeline-id
                                      :required common-lisp:t :member-name
                                      "PipelineId" :json-name "pipelineId"))
                                    (:shape-name "PipelinePauseStateSettings"))

(smithy/sdk/shapes:define-enum preferred-channel-pipeline
    common-lisp:nil
  (:currently-active "CURRENTLY_ACTIVE")
  (:pipeline-0 "PIPELINE_0")
  (:pipeline-1 "PIPELINE_1"))

(smithy/sdk/shapes:define-input purchase-offering-request common-lisp:nil
                                ((count :target-type integer-min1 :required
                                  common-lisp:t :member-name "Count" :json-name
                                  "count")
                                 (name :target-type string :member-name "Name"
                                  :json-name "name")
                                 (offering-id :target-type string :required
                                  common-lisp:t :member-name "OfferingId"
                                  :http-label common-lisp:t)
                                 (renewal-settings :target-type
                                  renewal-settings :member-name
                                  "RenewalSettings" :json-name
                                  "renewalSettings")
                                 (request-id :target-type string :member-name
                                  "RequestId" :json-name "requestId")
                                 (start :target-type string :member-name
                                  "Start" :json-name "start")
                                 (tags :target-type tags :member-name "Tags"
                                  :json-name "tags"))
                                (:shape-name "PurchaseOfferingRequest"))

(smithy/sdk/shapes:define-output purchase-offering-response common-lisp:nil
                                 ((reservation :target-type reservation
                                   :member-name "Reservation" :json-name
                                   "reservation"))
                                 (:shape-name "PurchaseOfferingResponse"))

(smithy/sdk/shapes:define-structure raw-settings common-lisp:nil
                                    common-lisp:nil (:shape-name "RawSettings"))

(smithy/sdk/shapes:define-enum reboot-input-device-force
    common-lisp:nil
  (:no "NO")
  (:yes "YES"))

(smithy/sdk/shapes:define-input reboot-input-device-request common-lisp:nil
                                ((force :target-type reboot-input-device-force
                                  :member-name "Force" :json-name "force")
                                 (input-device-id :target-type string :required
                                  common-lisp:t :member-name "InputDeviceId"
                                  :http-label common-lisp:t))
                                (:shape-name "RebootInputDeviceRequest"))

(smithy/sdk/shapes:define-output reboot-input-device-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "RebootInputDeviceResponse"))

(smithy/sdk/shapes:define-structure rec601settings common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "Rec601Settings"))

(smithy/sdk/shapes:define-structure rec709settings common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "Rec709Settings"))

(smithy/sdk/shapes:define-input reject-input-device-transfer-request
                                common-lisp:nil
                                ((input-device-id :target-type string :required
                                  common-lisp:t :member-name "InputDeviceId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "RejectInputDeviceTransferRequest"))

(smithy/sdk/shapes:define-output reject-input-device-transfer-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "RejectInputDeviceTransferResponse"))

(smithy/sdk/shapes:define-structure remix-settings common-lisp:nil
                                    ((channel-mappings :target-type
                                      list-of-audio-channel-mapping :required
                                      common-lisp:t :member-name
                                      "ChannelMappings" :json-name
                                      "channelMappings")
                                     (channels-in :target-type
                                      integer-min1max16 :member-name
                                      "ChannelsIn" :json-name "channelsIn")
                                     (channels-out :target-type
                                      integer-min1max8 :member-name
                                      "ChannelsOut" :json-name "channelsOut"))
                                    (:shape-name "RemixSettings"))

(smithy/sdk/shapes:define-structure renewal-settings common-lisp:nil
                                    ((automatic-renewal :target-type
                                      reservation-automatic-renewal
                                      :member-name "AutomaticRenewal"
                                      :json-name "automaticRenewal")
                                     (renewal-count :target-type integer-min1
                                      :member-name "RenewalCount" :json-name
                                      "renewalCount"))
                                    (:shape-name "RenewalSettings"))

(smithy/sdk/shapes:define-structure reservation common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn" :json-name "arn")
                                     (count :target-type integer :member-name
                                      "Count" :json-name "count")
                                     (currency-code :target-type string
                                      :member-name "CurrencyCode" :json-name
                                      "currencyCode")
                                     (duration :target-type integer
                                      :member-name "Duration" :json-name
                                      "duration")
                                     (duration-units :target-type
                                      offering-duration-units :member-name
                                      "DurationUnits" :json-name
                                      "durationUnits")
                                     (end :target-type string :member-name
                                      "End" :json-name "end")
                                     (fixed-price :target-type double
                                      :member-name "FixedPrice" :json-name
                                      "fixedPrice")
                                     (name :target-type string :member-name
                                      "Name" :json-name "name")
                                     (offering-description :target-type string
                                      :member-name "OfferingDescription"
                                      :json-name "offeringDescription")
                                     (offering-id :target-type string
                                      :member-name "OfferingId" :json-name
                                      "offeringId")
                                     (offering-type :target-type offering-type
                                      :member-name "OfferingType" :json-name
                                      "offeringType")
                                     (region :target-type string :member-name
                                      "Region" :json-name "region")
                                     (renewal-settings :target-type
                                      renewal-settings :member-name
                                      "RenewalSettings" :json-name
                                      "renewalSettings")
                                     (reservation-id :target-type string
                                      :member-name "ReservationId" :json-name
                                      "reservationId")
                                     (resource-specification :target-type
                                      reservation-resource-specification
                                      :member-name "ResourceSpecification"
                                      :json-name "resourceSpecification")
                                     (start :target-type string :member-name
                                      "Start" :json-name "start")
                                     (state :target-type reservation-state
                                      :member-name "State" :json-name "state")
                                     (tags :target-type tags :member-name
                                      "Tags" :json-name "tags")
                                     (usage-price :target-type double
                                      :member-name "UsagePrice" :json-name
                                      "usagePrice"))
                                    (:shape-name "Reservation"))

(smithy/sdk/shapes:define-enum reservation-automatic-renewal
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED")
  (:unavailable "UNAVAILABLE"))

(smithy/sdk/shapes:define-enum reservation-codec
    common-lisp:nil
  (:mpeg2 "MPEG2")
  (:avc "AVC")
  (:hevc "HEVC")
  (:audio "AUDIO")
  (:link "LINK")
  (:av1 "AV1"))

(smithy/sdk/shapes:define-enum reservation-maximum-bitrate
    common-lisp:nil
  (:max-10-mbps "MAX_10_MBPS")
  (:max-20-mbps "MAX_20_MBPS")
  (:max-50-mbps "MAX_50_MBPS"))

(smithy/sdk/shapes:define-enum reservation-maximum-framerate
    common-lisp:nil
  (:max-30-fps "MAX_30_FPS")
  (:max-60-fps "MAX_60_FPS"))

(smithy/sdk/shapes:define-enum reservation-resolution
    common-lisp:nil
  (:sd "SD")
  (:hd "HD")
  (:fhd "FHD")
  (:uhd "UHD"))

(smithy/sdk/shapes:define-structure reservation-resource-specification
                                    common-lisp:nil
                                    ((channel-class :target-type channel-class
                                      :member-name "ChannelClass" :json-name
                                      "channelClass")
                                     (codec :target-type reservation-codec
                                      :member-name "Codec" :json-name "codec")
                                     (maximum-bitrate :target-type
                                      reservation-maximum-bitrate :member-name
                                      "MaximumBitrate" :json-name
                                      "maximumBitrate")
                                     (maximum-framerate :target-type
                                      reservation-maximum-framerate
                                      :member-name "MaximumFramerate"
                                      :json-name "maximumFramerate")
                                     (resolution :target-type
                                      reservation-resolution :member-name
                                      "Resolution" :json-name "resolution")
                                     (resource-type :target-type
                                      reservation-resource-type :member-name
                                      "ResourceType" :json-name "resourceType")
                                     (special-feature :target-type
                                      reservation-special-feature :member-name
                                      "SpecialFeature" :json-name
                                      "specialFeature")
                                     (video-quality :target-type
                                      reservation-video-quality :member-name
                                      "VideoQuality" :json-name
                                      "videoQuality"))
                                    (:shape-name
                                     "ReservationResourceSpecification"))

(smithy/sdk/shapes:define-enum reservation-resource-type
    common-lisp:nil
  (:input "INPUT")
  (:output "OUTPUT")
  (:multiplex "MULTIPLEX")
  (:channel "CHANNEL"))

(smithy/sdk/shapes:define-enum reservation-special-feature
    common-lisp:nil
  (:advanced-audio "ADVANCED_AUDIO")
  (:audio-normalization "AUDIO_NORMALIZATION")
  (:mghd "MGHD")
  (:mguhd "MGUHD"))

(smithy/sdk/shapes:define-enum reservation-state
    common-lisp:nil
  (:active "ACTIVE")
  (:expired "EXPIRED")
  (:canceled "CANCELED")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-enum reservation-video-quality
    common-lisp:nil
  (:standard "STANDARD")
  (:enhanced "ENHANCED")
  (:premium "PREMIUM"))

(smithy/sdk/shapes:define-input restart-channel-pipelines-request
                                common-lisp:nil
                                ((channel-id :target-type string :required
                                  common-lisp:t :member-name "ChannelId"
                                  :http-label common-lisp:t)
                                 (pipeline-ids :target-type
                                  list-of-channel-pipeline-id-to-restart
                                  :member-name "PipelineIds" :json-name
                                  "pipelineIds"))
                                (:shape-name "RestartChannelPipelinesRequest"))

(smithy/sdk/shapes:define-output restart-channel-pipelines-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (cdi-input-specification :target-type
                                   cdi-input-specification :member-name
                                   "CdiInputSpecification" :json-name
                                   "cdiInputSpecification")
                                  (channel-class :target-type channel-class
                                   :member-name "ChannelClass" :json-name
                                   "channelClass")
                                  (destinations :target-type
                                   list-of-output-destination :member-name
                                   "Destinations" :json-name "destinations")
                                  (egress-endpoints :target-type
                                   list-of-channel-egress-endpoint :member-name
                                   "EgressEndpoints" :json-name
                                   "egressEndpoints")
                                  (encoder-settings :target-type
                                   encoder-settings :member-name
                                   "EncoderSettings" :json-name
                                   "encoderSettings")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (input-attachments :target-type
                                   list-of-input-attachment :member-name
                                   "InputAttachments" :json-name
                                   "inputAttachments")
                                  (input-specification :target-type
                                   input-specification :member-name
                                   "InputSpecification" :json-name
                                   "inputSpecification")
                                  (log-level :target-type log-level
                                   :member-name "LogLevel" :json-name
                                   "logLevel")
                                  (maintenance :target-type maintenance-status
                                   :member-name "Maintenance" :json-name
                                   "maintenance")
                                  (maintenance-status :target-type string
                                   :member-name "MaintenanceStatus" :json-name
                                   "maintenanceStatus")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name")
                                  (pipeline-details :target-type
                                   list-of-pipeline-detail :member-name
                                   "PipelineDetails" :json-name
                                   "pipelineDetails")
                                  (pipelines-running-count :target-type integer
                                   :member-name "PipelinesRunningCount"
                                   :json-name "pipelinesRunningCount")
                                  (role-arn :target-type string :member-name
                                   "RoleArn" :json-name "roleArn")
                                  (state :target-type channel-state
                                   :member-name "State" :json-name "state")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags")
                                  (vpc :target-type
                                   vpc-output-settings-description :member-name
                                   "Vpc" :json-name "vpc")
                                  (anywhere-settings :target-type
                                   describe-anywhere-settings :member-name
                                   "AnywhereSettings" :json-name
                                   "anywhereSettings")
                                  (channel-engine-version :target-type
                                   channel-engine-version-response :member-name
                                   "ChannelEngineVersion" :json-name
                                   "channelEngineVersion"))
                                 (:shape-name
                                  "RestartChannelPipelinesResponse"))

(smithy/sdk/shapes:define-structure route common-lisp:nil
                                    ((cidr :target-type string :member-name
                                      "Cidr" :json-name "cidr")
                                     (gateway :target-type string :member-name
                                      "Gateway" :json-name "gateway"))
                                    (:shape-name "Route"))

(smithy/sdk/shapes:define-structure route-create-request common-lisp:nil
                                    ((cidr :target-type string :member-name
                                      "Cidr" :json-name "cidr")
                                     (gateway :target-type string :member-name
                                      "Gateway" :json-name "gateway"))
                                    (:shape-name "RouteCreateRequest"))

(smithy/sdk/shapes:define-structure route-update-request common-lisp:nil
                                    ((cidr :target-type string :member-name
                                      "Cidr" :json-name "cidr")
                                     (gateway :target-type string :member-name
                                      "Gateway" :json-name "gateway"))
                                    (:shape-name "RouteUpdateRequest"))

(smithy/sdk/shapes:define-enum rtmp-ad-markers
    common-lisp:nil
  (:on-cue-point-scte35 "ON_CUE_POINT_SCTE35"))

(smithy/sdk/shapes:define-enum rtmp-cache-full-behavior
    common-lisp:nil
  (:disconnect-immediately "DISCONNECT_IMMEDIATELY")
  (:wait-for-server "WAIT_FOR_SERVER"))

(smithy/sdk/shapes:define-enum rtmp-caption-data
    common-lisp:nil
  (:all "ALL")
  (:field1-608 "FIELD1_608")
  (:field1-and-field2-608 "FIELD1_AND_FIELD2_608"))

(smithy/sdk/shapes:define-structure rtmp-caption-info-destination-settings
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "RtmpCaptionInfoDestinationSettings"))

(smithy/sdk/shapes:define-structure rtmp-group-settings common-lisp:nil
                                    ((ad-markers :target-type
                                      list-of-rtmp-ad-markers :member-name
                                      "AdMarkers" :json-name "adMarkers")
                                     (authentication-scheme :target-type
                                      authentication-scheme :member-name
                                      "AuthenticationScheme" :json-name
                                      "authenticationScheme")
                                     (cache-full-behavior :target-type
                                      rtmp-cache-full-behavior :member-name
                                      "CacheFullBehavior" :json-name
                                      "cacheFullBehavior")
                                     (cache-length :target-type integer-min30
                                      :member-name "CacheLength" :json-name
                                      "cacheLength")
                                     (caption-data :target-type
                                      rtmp-caption-data :member-name
                                      "CaptionData" :json-name "captionData")
                                     (input-loss-action :target-type
                                      input-loss-action-for-rtmp-out
                                      :member-name "InputLossAction" :json-name
                                      "inputLossAction")
                                     (restart-delay :target-type integer-min0
                                      :member-name "RestartDelay" :json-name
                                      "restartDelay")
                                     (include-filler-nal-units :target-type
                                      include-filler-nal-units :member-name
                                      "IncludeFillerNalUnits" :json-name
                                      "includeFillerNalUnits"))
                                    (:shape-name "RtmpGroupSettings"))

(smithy/sdk/shapes:define-enum rtmp-output-certificate-mode
    common-lisp:nil
  (:self-signed "SELF_SIGNED")
  (:verify-authenticity "VERIFY_AUTHENTICITY"))

(smithy/sdk/shapes:define-structure rtmp-output-settings common-lisp:nil
                                    ((certificate-mode :target-type
                                      rtmp-output-certificate-mode :member-name
                                      "CertificateMode" :json-name
                                      "certificateMode")
                                     (connection-retry-interval :target-type
                                      integer-min1 :member-name
                                      "ConnectionRetryInterval" :json-name
                                      "connectionRetryInterval")
                                     (destination :target-type
                                      output-location-ref :required
                                      common-lisp:t :member-name "Destination"
                                      :json-name "destination")
                                     (num-retries :target-type integer-min0
                                      :member-name "NumRetries" :json-name
                                      "numRetries"))
                                    (:shape-name "RtmpOutputSettings"))

(smithy/sdk/shapes:define-enum s3canned-acl
    common-lisp:nil
  (:authenticated-read "AUTHENTICATED_READ")
  (:bucket-owner-full-control "BUCKET_OWNER_FULL_CONTROL")
  (:bucket-owner-read "BUCKET_OWNER_READ")
  (:public-read "PUBLIC_READ"))

(smithy/sdk/shapes:define-structure schedule-action common-lisp:nil
                                    ((action-name :target-type string :required
                                      common-lisp:t :member-name "ActionName"
                                      :json-name "actionName")
                                     (schedule-action-settings :target-type
                                      schedule-action-settings :required
                                      common-lisp:t :member-name
                                      "ScheduleActionSettings" :json-name
                                      "scheduleActionSettings")
                                     (schedule-action-start-settings
                                      :target-type
                                      schedule-action-start-settings :required
                                      common-lisp:t :member-name
                                      "ScheduleActionStartSettings" :json-name
                                      "scheduleActionStartSettings"))
                                    (:shape-name "ScheduleAction"))

(smithy/sdk/shapes:define-structure schedule-action-settings common-lisp:nil
                                    ((hls-id3segment-tagging-settings
                                      :target-type
                                      hls-id3segment-tagging-schedule-action-settings
                                      :member-name
                                      "HlsId3SegmentTaggingSettings" :json-name
                                      "hlsId3SegmentTaggingSettings")
                                     (hls-timed-metadata-settings :target-type
                                      hls-timed-metadata-schedule-action-settings
                                      :member-name "HlsTimedMetadataSettings"
                                      :json-name "hlsTimedMetadataSettings")
                                     (input-prepare-settings :target-type
                                      input-prepare-schedule-action-settings
                                      :member-name "InputPrepareSettings"
                                      :json-name "inputPrepareSettings")
                                     (input-switch-settings :target-type
                                      input-switch-schedule-action-settings
                                      :member-name "InputSwitchSettings"
                                      :json-name "inputSwitchSettings")
                                     (motion-graphics-image-activate-settings
                                      :target-type
                                      motion-graphics-activate-schedule-action-settings
                                      :member-name
                                      "MotionGraphicsImageActivateSettings"
                                      :json-name
                                      "motionGraphicsImageActivateSettings")
                                     (motion-graphics-image-deactivate-settings
                                      :target-type
                                      motion-graphics-deactivate-schedule-action-settings
                                      :member-name
                                      "MotionGraphicsImageDeactivateSettings"
                                      :json-name
                                      "motionGraphicsImageDeactivateSettings")
                                     (pause-state-settings :target-type
                                      pause-state-schedule-action-settings
                                      :member-name "PauseStateSettings"
                                      :json-name "pauseStateSettings")
                                     (scte35input-settings :target-type
                                      scte35input-schedule-action-settings
                                      :member-name "Scte35InputSettings"
                                      :json-name "scte35InputSettings")
                                     (scte35return-to-network-settings
                                      :target-type
                                      scte35return-to-network-schedule-action-settings
                                      :member-name
                                      "Scte35ReturnToNetworkSettings"
                                      :json-name
                                      "scte35ReturnToNetworkSettings")
                                     (scte35splice-insert-settings :target-type
                                      scte35splice-insert-schedule-action-settings
                                      :member-name "Scte35SpliceInsertSettings"
                                      :json-name "scte35SpliceInsertSettings")
                                     (scte35time-signal-settings :target-type
                                      scte35time-signal-schedule-action-settings
                                      :member-name "Scte35TimeSignalSettings"
                                      :json-name "scte35TimeSignalSettings")
                                     (static-image-activate-settings
                                      :target-type
                                      static-image-activate-schedule-action-settings
                                      :member-name
                                      "StaticImageActivateSettings" :json-name
                                      "staticImageActivateSettings")
                                     (static-image-deactivate-settings
                                      :target-type
                                      static-image-deactivate-schedule-action-settings
                                      :member-name
                                      "StaticImageDeactivateSettings"
                                      :json-name
                                      "staticImageDeactivateSettings")
                                     (static-image-output-activate-settings
                                      :target-type
                                      static-image-output-activate-schedule-action-settings
                                      :member-name
                                      "StaticImageOutputActivateSettings"
                                      :json-name
                                      "staticImageOutputActivateSettings")
                                     (static-image-output-deactivate-settings
                                      :target-type
                                      static-image-output-deactivate-schedule-action-settings
                                      :member-name
                                      "StaticImageOutputDeactivateSettings"
                                      :json-name
                                      "staticImageOutputDeactivateSettings")
                                     (id3segment-tagging-settings :target-type
                                      id3segment-tagging-schedule-action-settings
                                      :member-name "Id3SegmentTaggingSettings"
                                      :json-name "id3SegmentTaggingSettings")
                                     (timed-metadata-settings :target-type
                                      timed-metadata-schedule-action-settings
                                      :member-name "TimedMetadataSettings"
                                      :json-name "timedMetadataSettings"))
                                    (:shape-name "ScheduleActionSettings"))

(smithy/sdk/shapes:define-structure schedule-action-start-settings
                                    common-lisp:nil
                                    ((fixed-mode-schedule-action-start-settings
                                      :target-type
                                      fixed-mode-schedule-action-start-settings
                                      :member-name
                                      "FixedModeScheduleActionStartSettings"
                                      :json-name
                                      "fixedModeScheduleActionStartSettings")
                                     (follow-mode-schedule-action-start-settings
                                      :target-type
                                      follow-mode-schedule-action-start-settings
                                      :member-name
                                      "FollowModeScheduleActionStartSettings"
                                      :json-name
                                      "followModeScheduleActionStartSettings")
                                     (immediate-mode-schedule-action-start-settings
                                      :target-type
                                      immediate-mode-schedule-action-start-settings
                                      :member-name
                                      "ImmediateModeScheduleActionStartSettings"
                                      :json-name
                                      "immediateModeScheduleActionStartSettings"))
                                    (:shape-name "ScheduleActionStartSettings"))

(smithy/sdk/shapes:define-enum scte20convert608to708
    common-lisp:nil
  (:disabled "DISABLED")
  (:upconvert "UPCONVERT"))

(smithy/sdk/shapes:define-structure scte20plus-embedded-destination-settings
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "Scte20PlusEmbeddedDestinationSettings"))

(smithy/sdk/shapes:define-structure scte20source-settings common-lisp:nil
                                    ((convert608to708 :target-type
                                      scte20convert608to708 :member-name
                                      "Convert608To708" :json-name
                                      "convert608To708")
                                     (source608channel-number :target-type
                                      integer-min1max4 :member-name
                                      "Source608ChannelNumber" :json-name
                                      "source608ChannelNumber"))
                                    (:shape-name "Scte20SourceSettings"))

(smithy/sdk/shapes:define-structure scte27destination-settings common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "Scte27DestinationSettings"))

(smithy/sdk/shapes:define-enum scte27ocr-language
    common-lisp:nil
  (:deu "DEU")
  (:eng "ENG")
  (:fra "FRA")
  (:nld "NLD")
  (:por "POR")
  (:spa "SPA"))

(smithy/sdk/shapes:define-structure scte27source-settings common-lisp:nil
                                    ((ocr-language :target-type
                                      scte27ocr-language :member-name
                                      "OcrLanguage" :json-name "ocrLanguage")
                                     (pid :target-type integer-min1
                                      :member-name "Pid" :json-name "pid"))
                                    (:shape-name "Scte27SourceSettings"))

(smithy/sdk/shapes:define-enum scte35apos-no-regional-blackout-behavior
    common-lisp:nil
  (:follow "FOLLOW")
  (:ignore "IGNORE"))

(smithy/sdk/shapes:define-enum scte35apos-web-delivery-allowed-behavior
    common-lisp:nil
  (:follow "FOLLOW")
  (:ignore "IGNORE"))

(smithy/sdk/shapes:define-enum scte35archive-allowed-flag
    common-lisp:nil
  (:archive-not-allowed "ARCHIVE_NOT_ALLOWED")
  (:archive-allowed "ARCHIVE_ALLOWED"))

(smithy/sdk/shapes:define-structure scte35delivery-restrictions common-lisp:nil
                                    ((archive-allowed-flag :target-type
                                      scte35archive-allowed-flag :required
                                      common-lisp:t :member-name
                                      "ArchiveAllowedFlag" :json-name
                                      "archiveAllowedFlag")
                                     (device-restrictions :target-type
                                      scte35device-restrictions :required
                                      common-lisp:t :member-name
                                      "DeviceRestrictions" :json-name
                                      "deviceRestrictions")
                                     (no-regional-blackout-flag :target-type
                                      scte35no-regional-blackout-flag :required
                                      common-lisp:t :member-name
                                      "NoRegionalBlackoutFlag" :json-name
                                      "noRegionalBlackoutFlag")
                                     (web-delivery-allowed-flag :target-type
                                      scte35web-delivery-allowed-flag :required
                                      common-lisp:t :member-name
                                      "WebDeliveryAllowedFlag" :json-name
                                      "webDeliveryAllowedFlag"))
                                    (:shape-name "Scte35DeliveryRestrictions"))

(smithy/sdk/shapes:define-structure scte35descriptor common-lisp:nil
                                    ((scte35descriptor-settings :target-type
                                      scte35descriptor-settings :required
                                      common-lisp:t :member-name
                                      "Scte35DescriptorSettings" :json-name
                                      "scte35DescriptorSettings"))
                                    (:shape-name "Scte35Descriptor"))

(smithy/sdk/shapes:define-structure scte35descriptor-settings common-lisp:nil
                                    ((segmentation-descriptor-scte35descriptor-settings
                                      :target-type
                                      scte35segmentation-descriptor :required
                                      common-lisp:t :member-name
                                      "SegmentationDescriptorScte35DescriptorSettings"
                                      :json-name
                                      "segmentationDescriptorScte35DescriptorSettings"))
                                    (:shape-name "Scte35DescriptorSettings"))

(smithy/sdk/shapes:define-enum scte35device-restrictions
    common-lisp:nil
  (:none "NONE")
  (:restrict-group0 "RESTRICT_GROUP0")
  (:restrict-group1 "RESTRICT_GROUP1")
  (:restrict-group2 "RESTRICT_GROUP2"))

(smithy/sdk/shapes:define-enum scte35input-mode
    common-lisp:nil
  (:fixed "FIXED")
  (:follow-active "FOLLOW_ACTIVE"))

(smithy/sdk/shapes:define-structure scte35input-schedule-action-settings
                                    common-lisp:nil
                                    ((input-attachment-name-reference
                                      :target-type string :member-name
                                      "InputAttachmentNameReference" :json-name
                                      "inputAttachmentNameReference")
                                     (mode :target-type scte35input-mode
                                      :required common-lisp:t :member-name
                                      "Mode" :json-name "mode"))
                                    (:shape-name
                                     "Scte35InputScheduleActionSettings"))

(smithy/sdk/shapes:define-enum scte35no-regional-blackout-flag
    common-lisp:nil
  (:regional-blackout "REGIONAL_BLACKOUT")
  (:no-regional-blackout "NO_REGIONAL_BLACKOUT"))

(smithy/sdk/shapes:define-structure
 scte35return-to-network-schedule-action-settings common-lisp:nil
 ((splice-event-id :target-type long-min0max4294967295 :required common-lisp:t
   :member-name "SpliceEventId" :json-name "spliceEventId"))
 (:shape-name "Scte35ReturnToNetworkScheduleActionSettings"))

(smithy/sdk/shapes:define-enum scte35segmentation-cancel-indicator
    common-lisp:nil
  (:segmentation-event-not-canceled "SEGMENTATION_EVENT_NOT_CANCELED")
  (:segmentation-event-canceled "SEGMENTATION_EVENT_CANCELED"))

(smithy/sdk/shapes:define-structure scte35segmentation-descriptor
                                    common-lisp:nil
                                    ((delivery-restrictions :target-type
                                      scte35delivery-restrictions :member-name
                                      "DeliveryRestrictions" :json-name
                                      "deliveryRestrictions")
                                     (segment-num :target-type
                                      integer-min0max255 :member-name
                                      "SegmentNum" :json-name "segmentNum")
                                     (segmentation-cancel-indicator
                                      :target-type
                                      scte35segmentation-cancel-indicator
                                      :required common-lisp:t :member-name
                                      "SegmentationCancelIndicator" :json-name
                                      "segmentationCancelIndicator")
                                     (segmentation-duration :target-type
                                      long-min0max1099511627775 :member-name
                                      "SegmentationDuration" :json-name
                                      "segmentationDuration")
                                     (segmentation-event-id :target-type
                                      long-min0max4294967295 :required
                                      common-lisp:t :member-name
                                      "SegmentationEventId" :json-name
                                      "segmentationEventId")
                                     (segmentation-type-id :target-type
                                      integer-min0max255 :member-name
                                      "SegmentationTypeId" :json-name
                                      "segmentationTypeId")
                                     (segmentation-upid :target-type string
                                      :member-name "SegmentationUpid"
                                      :json-name "segmentationUpid")
                                     (segmentation-upid-type :target-type
                                      integer-min0max255 :member-name
                                      "SegmentationUpidType" :json-name
                                      "segmentationUpidType")
                                     (segments-expected :target-type
                                      integer-min0max255 :member-name
                                      "SegmentsExpected" :json-name
                                      "segmentsExpected")
                                     (sub-segment-num :target-type
                                      integer-min0max255 :member-name
                                      "SubSegmentNum" :json-name
                                      "subSegmentNum")
                                     (sub-segments-expected :target-type
                                      integer-min0max255 :member-name
                                      "SubSegmentsExpected" :json-name
                                      "subSegmentsExpected"))
                                    (:shape-name
                                     "Scte35SegmentationDescriptor"))

(smithy/sdk/shapes:define-enum scte35segmentation-scope
    common-lisp:nil
  (:all-output-groups "ALL_OUTPUT_GROUPS")
  (:scte35-enabled-output-groups "SCTE35_ENABLED_OUTPUT_GROUPS"))

(smithy/sdk/shapes:define-structure scte35splice-insert common-lisp:nil
                                    ((ad-avail-offset :target-type
                                      integer-min-negative1000max1000
                                      :member-name "AdAvailOffset" :json-name
                                      "adAvailOffset")
                                     (no-regional-blackout-flag :target-type
                                      scte35splice-insert-no-regional-blackout-behavior
                                      :member-name "NoRegionalBlackoutFlag"
                                      :json-name "noRegionalBlackoutFlag")
                                     (web-delivery-allowed-flag :target-type
                                      scte35splice-insert-web-delivery-allowed-behavior
                                      :member-name "WebDeliveryAllowedFlag"
                                      :json-name "webDeliveryAllowedFlag"))
                                    (:shape-name "Scte35SpliceInsert"))

(smithy/sdk/shapes:define-enum scte35splice-insert-no-regional-blackout-behavior
    common-lisp:nil
  (:follow "FOLLOW")
  (:ignore "IGNORE"))

(smithy/sdk/shapes:define-structure
 scte35splice-insert-schedule-action-settings common-lisp:nil
 ((duration :target-type long-min0max8589934591 :member-name "Duration"
   :json-name "duration")
  (splice-event-id :target-type long-min0max4294967295 :required common-lisp:t
   :member-name "SpliceEventId" :json-name "spliceEventId"))
 (:shape-name "Scte35SpliceInsertScheduleActionSettings"))

(smithy/sdk/shapes:define-enum scte35splice-insert-web-delivery-allowed-behavior
    common-lisp:nil
  (:follow "FOLLOW")
  (:ignore "IGNORE"))

(smithy/sdk/shapes:define-structure scte35time-signal-apos common-lisp:nil
                                    ((ad-avail-offset :target-type
                                      integer-min-negative1000max1000
                                      :member-name "AdAvailOffset" :json-name
                                      "adAvailOffset")
                                     (no-regional-blackout-flag :target-type
                                      scte35apos-no-regional-blackout-behavior
                                      :member-name "NoRegionalBlackoutFlag"
                                      :json-name "noRegionalBlackoutFlag")
                                     (web-delivery-allowed-flag :target-type
                                      scte35apos-web-delivery-allowed-behavior
                                      :member-name "WebDeliveryAllowedFlag"
                                      :json-name "webDeliveryAllowedFlag"))
                                    (:shape-name "Scte35TimeSignalApos"))

(smithy/sdk/shapes:define-structure scte35time-signal-schedule-action-settings
                                    common-lisp:nil
                                    ((scte35descriptors :target-type
                                      list-of-scte35descriptor :required
                                      common-lisp:t :member-name
                                      "Scte35Descriptors" :json-name
                                      "scte35Descriptors"))
                                    (:shape-name
                                     "Scte35TimeSignalScheduleActionSettings"))

(smithy/sdk/shapes:define-enum scte35type
    common-lisp:nil
  (:none "NONE")
  (:scte-35-without-segmentation "SCTE_35_WITHOUT_SEGMENTATION"))

(smithy/sdk/shapes:define-enum scte35web-delivery-allowed-flag
    common-lisp:nil
  (:web-delivery-not-allowed "WEB_DELIVERY_NOT_ALLOWED")
  (:web-delivery-allowed "WEB_DELIVERY_ALLOWED"))

(smithy/sdk/shapes:define-structure sdi-source common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn" :json-name "arn")
                                     (id :target-type string :member-name "Id"
                                      :json-name "id")
                                     (inputs :target-type list-of-string
                                      :member-name "Inputs" :json-name
                                      "inputs")
                                     (mode :target-type sdi-source-mode
                                      :member-name "Mode" :json-name "mode")
                                     (name :target-type string :member-name
                                      "Name" :json-name "name")
                                     (state :target-type sdi-source-state
                                      :member-name "State" :json-name "state")
                                     (type :target-type sdi-source-type
                                      :member-name "Type" :json-name "type"))
                                    (:shape-name "SdiSource"))

(smithy/sdk/shapes:define-structure sdi-source-mapping common-lisp:nil
                                    ((card-number :target-type integer
                                      :member-name "CardNumber" :json-name
                                      "cardNumber")
                                     (channel-number :target-type integer
                                      :member-name "ChannelNumber" :json-name
                                      "channelNumber")
                                     (sdi-source :target-type string
                                      :member-name "SdiSource" :json-name
                                      "sdiSource"))
                                    (:shape-name "SdiSourceMapping"))

(smithy/sdk/shapes:define-structure sdi-source-mapping-update-request
                                    common-lisp:nil
                                    ((card-number :target-type integer
                                      :member-name "CardNumber" :json-name
                                      "cardNumber")
                                     (channel-number :target-type integer
                                      :member-name "ChannelNumber" :json-name
                                      "channelNumber")
                                     (sdi-source :target-type string
                                      :member-name "SdiSource" :json-name
                                      "sdiSource"))
                                    (:shape-name
                                     "SdiSourceMappingUpdateRequest"))

(smithy/sdk/shapes:define-list sdi-source-mappings :member sdi-source-mapping)

(smithy/sdk/shapes:define-list sdi-source-mappings-update-request :member
                               sdi-source-mapping-update-request)

(smithy/sdk/shapes:define-enum sdi-source-mode
    common-lisp:nil
  (:quadrant "QUADRANT")
  (:interleave "INTERLEAVE"))

(smithy/sdk/shapes:define-enum sdi-source-state
    common-lisp:nil
  (:idle "IDLE")
  (:in-use "IN_USE")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-structure sdi-source-summary common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn" :json-name "arn")
                                     (id :target-type string :member-name "Id"
                                      :json-name "id")
                                     (inputs :target-type list-of-string
                                      :member-name "Inputs" :json-name
                                      "inputs")
                                     (mode :target-type sdi-source-mode
                                      :member-name "Mode" :json-name "mode")
                                     (name :target-type string :member-name
                                      "Name" :json-name "name")
                                     (state :target-type sdi-source-state
                                      :member-name "State" :json-name "state")
                                     (type :target-type sdi-source-type
                                      :member-name "Type" :json-name "type"))
                                    (:shape-name "SdiSourceSummary"))

(smithy/sdk/shapes:define-enum sdi-source-type
    common-lisp:nil
  (:single "SINGLE")
  (:quad "QUAD"))

(smithy/sdk/shapes:define-enum signal-map-monitor-deployment-status
    common-lisp:nil
  (:not-deployed "NOT_DEPLOYED")
  (:dry-run-deployment-complete "DRY_RUN_DEPLOYMENT_COMPLETE")
  (:dry-run-deployment-failed "DRY_RUN_DEPLOYMENT_FAILED")
  (:dry-run-deployment-in-progress "DRY_RUN_DEPLOYMENT_IN_PROGRESS")
  (:deployment-complete "DEPLOYMENT_COMPLETE")
  (:deployment-failed "DEPLOYMENT_FAILED")
  (:deployment-in-progress "DEPLOYMENT_IN_PROGRESS")
  (:delete-complete "DELETE_COMPLETE")
  (:delete-failed "DELETE_FAILED")
  (:delete-in-progress "DELETE_IN_PROGRESS"))

(smithy/sdk/shapes:define-enum signal-map-status
    common-lisp:nil
  (:create-in-progress "CREATE_IN_PROGRESS")
  (:create-complete "CREATE_COMPLETE")
  (:create-failed "CREATE_FAILED")
  (:update-in-progress "UPDATE_IN_PROGRESS")
  (:update-complete "UPDATE_COMPLETE")
  (:update-reverted "UPDATE_REVERTED")
  (:update-failed "UPDATE_FAILED")
  (:ready "READY")
  (:not-ready "NOT_READY"))

(smithy/sdk/shapes:define-structure signal-map-summary common-lisp:nil
                                    ((arn :target-type
                                      string-pattern-arn-medialive-signal-map
                                      :required common-lisp:t :member-name
                                      "Arn" :json-name "arn")
                                     (created-at :target-type timestamp-iso8601
                                      :required common-lisp:t :member-name
                                      "CreatedAt" :json-name "createdAt")
                                     (description :target-type
                                      string-min0max1024 :member-name
                                      "Description" :json-name "description")
                                     (id :target-type
                                      string-min7max11pattern-aws097 :required
                                      common-lisp:t :member-name "Id"
                                      :json-name "id")
                                     (modified-at :target-type
                                      timestamp-iso8601 :member-name
                                      "ModifiedAt" :json-name "modifiedAt")
                                     (monitor-deployment-status :target-type
                                      signal-map-monitor-deployment-status
                                      :required common-lisp:t :member-name
                                      "MonitorDeploymentStatus" :json-name
                                      "monitorDeploymentStatus")
                                     (name :target-type
                                      string-min1max255pattern-s :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name")
                                     (status :target-type signal-map-status
                                      :required common-lisp:t :member-name
                                      "Status" :json-name "status")
                                     (tags :target-type tag-map :member-name
                                      "Tags" :json-name "tags"))
                                    (:shape-name "SignalMapSummary"))

(smithy/sdk/shapes:define-enum smooth-group-audio-only-timecode-control
    common-lisp:nil
  (:passthrough "PASSTHROUGH")
  (:use-configured-clock "USE_CONFIGURED_CLOCK"))

(smithy/sdk/shapes:define-enum smooth-group-certificate-mode
    common-lisp:nil
  (:self-signed "SELF_SIGNED")
  (:verify-authenticity "VERIFY_AUTHENTICITY"))

(smithy/sdk/shapes:define-enum smooth-group-event-id-mode
    common-lisp:nil
  (:no-event-id "NO_EVENT_ID")
  (:use-configured "USE_CONFIGURED")
  (:use-timestamp "USE_TIMESTAMP"))

(smithy/sdk/shapes:define-enum smooth-group-event-stop-behavior
    common-lisp:nil
  (:none "NONE")
  (:send-eos "SEND_EOS"))

(smithy/sdk/shapes:define-enum smooth-group-segmentation-mode
    common-lisp:nil
  (:use-input-segmentation "USE_INPUT_SEGMENTATION")
  (:use-segment-duration "USE_SEGMENT_DURATION"))

(smithy/sdk/shapes:define-enum smooth-group-sparse-track-type
    common-lisp:nil
  (:none "NONE")
  (:scte-35 "SCTE_35")
  (:scte-35-without-segmentation "SCTE_35_WITHOUT_SEGMENTATION"))

(smithy/sdk/shapes:define-enum smooth-group-stream-manifest-behavior
    common-lisp:nil
  (:do-not-send "DO_NOT_SEND")
  (:send "SEND"))

(smithy/sdk/shapes:define-enum smooth-group-timestamp-offset-mode
    common-lisp:nil
  (:use-configured-offset "USE_CONFIGURED_OFFSET")
  (:use-event-start-date "USE_EVENT_START_DATE"))

(smithy/sdk/shapes:define-enum smpte2038data-preference
    common-lisp:nil
  (:ignore "IGNORE")
  (:prefer "PREFER"))

(smithy/sdk/shapes:define-structure smpte2110receiver-group common-lisp:nil
                                    ((sdp-settings :target-type
                                      smpte2110receiver-group-sdp-settings
                                      :member-name "SdpSettings" :json-name
                                      "sdpSettings"))
                                    (:shape-name "Smpte2110ReceiverGroup"))

(smithy/sdk/shapes:define-structure smpte2110receiver-group-sdp-settings
                                    common-lisp:nil
                                    ((ancillary-sdps :target-type
                                      list-of-input-sdp-location :member-name
                                      "AncillarySdps" :json-name
                                      "ancillarySdps")
                                     (audio-sdps :target-type
                                      list-of-input-sdp-location :member-name
                                      "AudioSdps" :json-name "audioSdps")
                                     (video-sdp :target-type input-sdp-location
                                      :member-name "VideoSdp" :json-name
                                      "videoSdp"))
                                    (:shape-name
                                     "Smpte2110ReceiverGroupSdpSettings"))

(smithy/sdk/shapes:define-structure smpte2110receiver-group-settings
                                    common-lisp:nil
                                    ((smpte2110receiver-groups :target-type
                                      list-of-smpte2110receiver-group
                                      :member-name "Smpte2110ReceiverGroups"
                                      :json-name "smpte2110ReceiverGroups"))
                                    (:shape-name
                                     "Smpte2110ReceiverGroupSettings"))

(smithy/sdk/shapes:define-structure smpte-tt-destination-settings
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "SmpteTtDestinationSettings"))

(smithy/sdk/shapes:define-structure srt-caller-decryption common-lisp:nil
                                    ((algorithm :target-type algorithm
                                      :member-name "Algorithm" :json-name
                                      "algorithm")
                                     (passphrase-secret-arn :target-type string
                                      :member-name "PassphraseSecretArn"
                                      :json-name "passphraseSecretArn"))
                                    (:shape-name "SrtCallerDecryption"))

(smithy/sdk/shapes:define-structure srt-caller-decryption-request
                                    common-lisp:nil
                                    ((algorithm :target-type algorithm
                                      :member-name "Algorithm" :json-name
                                      "algorithm")
                                     (passphrase-secret-arn :target-type string
                                      :member-name "PassphraseSecretArn"
                                      :json-name "passphraseSecretArn"))
                                    (:shape-name "SrtCallerDecryptionRequest"))

(smithy/sdk/shapes:define-structure srt-caller-source common-lisp:nil
                                    ((decryption :target-type
                                      srt-caller-decryption :member-name
                                      "Decryption" :json-name "decryption")
                                     (minimum-latency :target-type integer
                                      :member-name "MinimumLatency" :json-name
                                      "minimumLatency")
                                     (srt-listener-address :target-type string
                                      :member-name "SrtListenerAddress"
                                      :json-name "srtListenerAddress")
                                     (srt-listener-port :target-type string
                                      :member-name "SrtListenerPort" :json-name
                                      "srtListenerPort")
                                     (stream-id :target-type string
                                      :member-name "StreamId" :json-name
                                      "streamId"))
                                    (:shape-name "SrtCallerSource"))

(smithy/sdk/shapes:define-structure srt-caller-source-request common-lisp:nil
                                    ((decryption :target-type
                                      srt-caller-decryption-request
                                      :member-name "Decryption" :json-name
                                      "decryption")
                                     (minimum-latency :target-type integer
                                      :member-name "MinimumLatency" :json-name
                                      "minimumLatency")
                                     (srt-listener-address :target-type string
                                      :member-name "SrtListenerAddress"
                                      :json-name "srtListenerAddress")
                                     (srt-listener-port :target-type string
                                      :member-name "SrtListenerPort" :json-name
                                      "srtListenerPort")
                                     (stream-id :target-type string
                                      :member-name "StreamId" :json-name
                                      "streamId"))
                                    (:shape-name "SrtCallerSourceRequest"))

(smithy/sdk/shapes:define-enum srt-encryption-type
    common-lisp:nil
  (:aes128 "AES128")
  (:aes192 "AES192")
  (:aes256 "AES256"))

(smithy/sdk/shapes:define-structure srt-group-settings common-lisp:nil
                                    ((input-loss-action :target-type
                                      input-loss-action-for-udp-out
                                      :member-name "InputLossAction" :json-name
                                      "inputLossAction"))
                                    (:shape-name "SrtGroupSettings"))

(smithy/sdk/shapes:define-structure srt-output-destination-settings
                                    common-lisp:nil
                                    ((encryption-passphrase-secret-arn
                                      :target-type string :member-name
                                      "EncryptionPassphraseSecretArn"
                                      :json-name
                                      "encryptionPassphraseSecretArn")
                                     (stream-id :target-type string
                                      :member-name "StreamId" :json-name
                                      "streamId")
                                     (url :target-type string :member-name
                                      "Url" :json-name "url"))
                                    (:shape-name
                                     "SrtOutputDestinationSettings"))

(smithy/sdk/shapes:define-structure srt-output-settings common-lisp:nil
                                    ((buffer-msec :target-type
                                      integer-min0max10000 :member-name
                                      "BufferMsec" :json-name "bufferMsec")
                                     (container-settings :target-type
                                      udp-container-settings :required
                                      common-lisp:t :member-name
                                      "ContainerSettings" :json-name
                                      "containerSettings")
                                     (destination :target-type
                                      output-location-ref :required
                                      common-lisp:t :member-name "Destination"
                                      :json-name "destination")
                                     (encryption-type :target-type
                                      srt-encryption-type :member-name
                                      "EncryptionType" :json-name
                                      "encryptionType")
                                     (latency :target-type
                                      integer-min40max16000 :member-name
                                      "Latency" :json-name "latency"))
                                    (:shape-name "SrtOutputSettings"))

(smithy/sdk/shapes:define-structure srt-settings common-lisp:nil
                                    ((srt-caller-sources :target-type
                                      list-of-srt-caller-source :member-name
                                      "SrtCallerSources" :json-name
                                      "srtCallerSources"))
                                    (:shape-name "SrtSettings"))

(smithy/sdk/shapes:define-structure srt-settings-request common-lisp:nil
                                    ((srt-caller-sources :target-type
                                      list-of-srt-caller-source-request
                                      :member-name "SrtCallerSources"
                                      :json-name "srtCallerSources"))
                                    (:shape-name "SrtSettingsRequest"))

(smithy/sdk/shapes:define-structure standard-hls-settings common-lisp:nil
                                    ((audio-rendition-sets :target-type string
                                      :member-name "AudioRenditionSets"
                                      :json-name "audioRenditionSets")
                                     (m3u8settings :target-type m3u8settings
                                      :required common-lisp:t :member-name
                                      "M3u8Settings" :json-name
                                      "m3u8Settings"))
                                    (:shape-name "StandardHlsSettings"))

(smithy/sdk/shapes:define-input start-channel-request common-lisp:nil
                                ((channel-id :target-type string :required
                                  common-lisp:t :member-name "ChannelId"
                                  :http-label common-lisp:t))
                                (:shape-name "StartChannelRequest"))

(smithy/sdk/shapes:define-output start-channel-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (cdi-input-specification :target-type
                                   cdi-input-specification :member-name
                                   "CdiInputSpecification" :json-name
                                   "cdiInputSpecification")
                                  (channel-class :target-type channel-class
                                   :member-name "ChannelClass" :json-name
                                   "channelClass")
                                  (destinations :target-type
                                   list-of-output-destination :member-name
                                   "Destinations" :json-name "destinations")
                                  (egress-endpoints :target-type
                                   list-of-channel-egress-endpoint :member-name
                                   "EgressEndpoints" :json-name
                                   "egressEndpoints")
                                  (encoder-settings :target-type
                                   encoder-settings :member-name
                                   "EncoderSettings" :json-name
                                   "encoderSettings")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (input-attachments :target-type
                                   list-of-input-attachment :member-name
                                   "InputAttachments" :json-name
                                   "inputAttachments")
                                  (input-specification :target-type
                                   input-specification :member-name
                                   "InputSpecification" :json-name
                                   "inputSpecification")
                                  (log-level :target-type log-level
                                   :member-name "LogLevel" :json-name
                                   "logLevel")
                                  (maintenance :target-type maintenance-status
                                   :member-name "Maintenance" :json-name
                                   "maintenance")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name")
                                  (pipeline-details :target-type
                                   list-of-pipeline-detail :member-name
                                   "PipelineDetails" :json-name
                                   "pipelineDetails")
                                  (pipelines-running-count :target-type integer
                                   :member-name "PipelinesRunningCount"
                                   :json-name "pipelinesRunningCount")
                                  (role-arn :target-type string :member-name
                                   "RoleArn" :json-name "roleArn")
                                  (state :target-type channel-state
                                   :member-name "State" :json-name "state")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags")
                                  (vpc :target-type
                                   vpc-output-settings-description :member-name
                                   "Vpc" :json-name "vpc")
                                  (anywhere-settings :target-type
                                   describe-anywhere-settings :member-name
                                   "AnywhereSettings" :json-name
                                   "anywhereSettings")
                                  (channel-engine-version :target-type
                                   channel-engine-version-response :member-name
                                   "ChannelEngineVersion" :json-name
                                   "channelEngineVersion"))
                                 (:shape-name "StartChannelResponse"))

(smithy/sdk/shapes:define-input start-delete-monitor-deployment-request
                                common-lisp:nil
                                ((identifier :target-type string :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "StartDeleteMonitorDeploymentRequest"))

(smithy/sdk/shapes:define-output start-delete-monitor-deployment-response
                                 common-lisp:nil
                                 ((arn :target-type
                                   string-pattern-arn-medialive-signal-map
                                   :member-name "Arn" :json-name "arn")
                                  (cloud-watch-alarm-template-group-ids
                                   :target-type
                                   list-of-string-min7max11pattern-aws097
                                   :member-name
                                   "CloudWatchAlarmTemplateGroupIds" :json-name
                                   "cloudWatchAlarmTemplateGroupIds")
                                  (created-at :target-type timestamp-iso8601
                                   :member-name "CreatedAt" :json-name
                                   "createdAt")
                                  (description :target-type string-min0max1024
                                   :member-name "Description" :json-name
                                   "description")
                                  (discovery-entry-point-arn :target-type
                                   string-min1max2048 :member-name
                                   "DiscoveryEntryPointArn" :json-name
                                   "discoveryEntryPointArn")
                                  (error-message :target-type
                                   string-min1max2048 :member-name
                                   "ErrorMessage" :json-name "errorMessage")
                                  (event-bridge-rule-template-group-ids
                                   :target-type
                                   list-of-string-min7max11pattern-aws097
                                   :member-name
                                   "EventBridgeRuleTemplateGroupIds" :json-name
                                   "eventBridgeRuleTemplateGroupIds")
                                  (failed-media-resource-map :target-type
                                   failed-media-resource-map :member-name
                                   "FailedMediaResourceMap" :json-name
                                   "failedMediaResourceMap")
                                  (id :target-type
                                   string-min7max11pattern-aws097 :member-name
                                   "Id" :json-name "id")
                                  (last-discovered-at :target-type
                                   timestamp-iso8601 :member-name
                                   "LastDiscoveredAt" :json-name
                                   "lastDiscoveredAt")
                                  (last-successful-monitor-deployment
                                   :target-type successful-monitor-deployment
                                   :member-name
                                   "LastSuccessfulMonitorDeployment" :json-name
                                   "lastSuccessfulMonitorDeployment")
                                  (media-resource-map :target-type
                                   media-resource-map :member-name
                                   "MediaResourceMap" :json-name
                                   "mediaResourceMap")
                                  (modified-at :target-type timestamp-iso8601
                                   :member-name "ModifiedAt" :json-name
                                   "modifiedAt")
                                  (monitor-changes-pending-deployment
                                   :target-type boolean :member-name
                                   "MonitorChangesPendingDeployment" :json-name
                                   "monitorChangesPendingDeployment")
                                  (monitor-deployment :target-type
                                   monitor-deployment :member-name
                                   "MonitorDeployment" :json-name
                                   "monitorDeployment")
                                  (name :target-type string-min1max255pattern-s
                                   :member-name "Name" :json-name "name")
                                  (status :target-type signal-map-status
                                   :member-name "Status" :json-name "status")
                                  (tags :target-type tag-map :member-name
                                   "Tags" :json-name "tags"))
                                 (:shape-name
                                  "StartDeleteMonitorDeploymentResponse"))

(smithy/sdk/shapes:define-input start-input-device-maintenance-window-request
                                common-lisp:nil
                                ((input-device-id :target-type string :required
                                  common-lisp:t :member-name "InputDeviceId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "StartInputDeviceMaintenanceWindowRequest"))

(smithy/sdk/shapes:define-output start-input-device-maintenance-window-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "StartInputDeviceMaintenanceWindowResponse"))

(smithy/sdk/shapes:define-input start-input-device-request common-lisp:nil
                                ((input-device-id :target-type string :required
                                  common-lisp:t :member-name "InputDeviceId"
                                  :http-label common-lisp:t))
                                (:shape-name "StartInputDeviceRequest"))

(smithy/sdk/shapes:define-output start-input-device-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StartInputDeviceResponse"))

(smithy/sdk/shapes:define-input start-monitor-deployment-request
                                common-lisp:nil
                                ((dry-run :target-type boolean :member-name
                                  "DryRun" :json-name "dryRun")
                                 (identifier :target-type string :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "StartMonitorDeploymentRequest"))

(smithy/sdk/shapes:define-output start-monitor-deployment-response
                                 common-lisp:nil
                                 ((arn :target-type
                                   string-pattern-arn-medialive-signal-map
                                   :member-name "Arn" :json-name "arn")
                                  (cloud-watch-alarm-template-group-ids
                                   :target-type
                                   list-of-string-min7max11pattern-aws097
                                   :member-name
                                   "CloudWatchAlarmTemplateGroupIds" :json-name
                                   "cloudWatchAlarmTemplateGroupIds")
                                  (created-at :target-type timestamp-iso8601
                                   :member-name "CreatedAt" :json-name
                                   "createdAt")
                                  (description :target-type string-min0max1024
                                   :member-name "Description" :json-name
                                   "description")
                                  (discovery-entry-point-arn :target-type
                                   string-min1max2048 :member-name
                                   "DiscoveryEntryPointArn" :json-name
                                   "discoveryEntryPointArn")
                                  (error-message :target-type
                                   string-min1max2048 :member-name
                                   "ErrorMessage" :json-name "errorMessage")
                                  (event-bridge-rule-template-group-ids
                                   :target-type
                                   list-of-string-min7max11pattern-aws097
                                   :member-name
                                   "EventBridgeRuleTemplateGroupIds" :json-name
                                   "eventBridgeRuleTemplateGroupIds")
                                  (failed-media-resource-map :target-type
                                   failed-media-resource-map :member-name
                                   "FailedMediaResourceMap" :json-name
                                   "failedMediaResourceMap")
                                  (id :target-type
                                   string-min7max11pattern-aws097 :member-name
                                   "Id" :json-name "id")
                                  (last-discovered-at :target-type
                                   timestamp-iso8601 :member-name
                                   "LastDiscoveredAt" :json-name
                                   "lastDiscoveredAt")
                                  (last-successful-monitor-deployment
                                   :target-type successful-monitor-deployment
                                   :member-name
                                   "LastSuccessfulMonitorDeployment" :json-name
                                   "lastSuccessfulMonitorDeployment")
                                  (media-resource-map :target-type
                                   media-resource-map :member-name
                                   "MediaResourceMap" :json-name
                                   "mediaResourceMap")
                                  (modified-at :target-type timestamp-iso8601
                                   :member-name "ModifiedAt" :json-name
                                   "modifiedAt")
                                  (monitor-changes-pending-deployment
                                   :target-type boolean :member-name
                                   "MonitorChangesPendingDeployment" :json-name
                                   "monitorChangesPendingDeployment")
                                  (monitor-deployment :target-type
                                   monitor-deployment :member-name
                                   "MonitorDeployment" :json-name
                                   "monitorDeployment")
                                  (name :target-type string-min1max255pattern-s
                                   :member-name "Name" :json-name "name")
                                  (status :target-type signal-map-status
                                   :member-name "Status" :json-name "status")
                                  (tags :target-type tag-map :member-name
                                   "Tags" :json-name "tags"))
                                 (:shape-name "StartMonitorDeploymentResponse"))

(smithy/sdk/shapes:define-input start-multiplex-request common-lisp:nil
                                ((multiplex-id :target-type string :required
                                  common-lisp:t :member-name "MultiplexId"
                                  :http-label common-lisp:t))
                                (:shape-name "StartMultiplexRequest"))

(smithy/sdk/shapes:define-output start-multiplex-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (availability-zones :target-type
                                   list-of-string :member-name
                                   "AvailabilityZones" :json-name
                                   "availabilityZones")
                                  (destinations :target-type
                                   list-of-multiplex-output-destination
                                   :member-name "Destinations" :json-name
                                   "destinations")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (multiplex-settings :target-type
                                   multiplex-settings :member-name
                                   "MultiplexSettings" :json-name
                                   "multiplexSettings")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name")
                                  (pipelines-running-count :target-type integer
                                   :member-name "PipelinesRunningCount"
                                   :json-name "pipelinesRunningCount")
                                  (program-count :target-type integer
                                   :member-name "ProgramCount" :json-name
                                   "programCount")
                                  (state :target-type multiplex-state
                                   :member-name "State" :json-name "state")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "StartMultiplexResponse"))

(smithy/sdk/shapes:define-structure start-timecode common-lisp:nil
                                    ((timecode :target-type string :member-name
                                      "Timecode" :json-name "timecode"))
                                    (:shape-name "StartTimecode"))

(smithy/sdk/shapes:define-input start-update-signal-map-request common-lisp:nil
                                ((cloud-watch-alarm-template-group-identifiers
                                  :target-type list-of-string-pattern-s
                                  :member-name
                                  "CloudWatchAlarmTemplateGroupIdentifiers"
                                  :json-name
                                  "cloudWatchAlarmTemplateGroupIdentifiers")
                                 (description :target-type string-min0max1024
                                  :member-name "Description" :json-name
                                  "description")
                                 (discovery-entry-point-arn :target-type
                                  string-min1max2048 :member-name
                                  "DiscoveryEntryPointArn" :json-name
                                  "discoveryEntryPointArn")
                                 (event-bridge-rule-template-group-identifiers
                                  :target-type list-of-string-pattern-s
                                  :member-name
                                  "EventBridgeRuleTemplateGroupIdentifiers"
                                  :json-name
                                  "eventBridgeRuleTemplateGroupIdentifiers")
                                 (force-rediscovery :target-type boolean
                                  :member-name "ForceRediscovery" :json-name
                                  "forceRediscovery")
                                 (identifier :target-type string :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t)
                                 (name :target-type string-min1max255pattern-s
                                  :member-name "Name" :json-name "name"))
                                (:shape-name "StartUpdateSignalMapRequest"))

(smithy/sdk/shapes:define-output start-update-signal-map-response
                                 common-lisp:nil
                                 ((arn :target-type
                                   string-pattern-arn-medialive-signal-map
                                   :member-name "Arn" :json-name "arn")
                                  (cloud-watch-alarm-template-group-ids
                                   :target-type
                                   list-of-string-min7max11pattern-aws097
                                   :member-name
                                   "CloudWatchAlarmTemplateGroupIds" :json-name
                                   "cloudWatchAlarmTemplateGroupIds")
                                  (created-at :target-type timestamp-iso8601
                                   :member-name "CreatedAt" :json-name
                                   "createdAt")
                                  (description :target-type string-min0max1024
                                   :member-name "Description" :json-name
                                   "description")
                                  (discovery-entry-point-arn :target-type
                                   string-min1max2048 :member-name
                                   "DiscoveryEntryPointArn" :json-name
                                   "discoveryEntryPointArn")
                                  (error-message :target-type
                                   string-min1max2048 :member-name
                                   "ErrorMessage" :json-name "errorMessage")
                                  (event-bridge-rule-template-group-ids
                                   :target-type
                                   list-of-string-min7max11pattern-aws097
                                   :member-name
                                   "EventBridgeRuleTemplateGroupIds" :json-name
                                   "eventBridgeRuleTemplateGroupIds")
                                  (failed-media-resource-map :target-type
                                   failed-media-resource-map :member-name
                                   "FailedMediaResourceMap" :json-name
                                   "failedMediaResourceMap")
                                  (id :target-type
                                   string-min7max11pattern-aws097 :member-name
                                   "Id" :json-name "id")
                                  (last-discovered-at :target-type
                                   timestamp-iso8601 :member-name
                                   "LastDiscoveredAt" :json-name
                                   "lastDiscoveredAt")
                                  (last-successful-monitor-deployment
                                   :target-type successful-monitor-deployment
                                   :member-name
                                   "LastSuccessfulMonitorDeployment" :json-name
                                   "lastSuccessfulMonitorDeployment")
                                  (media-resource-map :target-type
                                   media-resource-map :member-name
                                   "MediaResourceMap" :json-name
                                   "mediaResourceMap")
                                  (modified-at :target-type timestamp-iso8601
                                   :member-name "ModifiedAt" :json-name
                                   "modifiedAt")
                                  (monitor-changes-pending-deployment
                                   :target-type boolean :member-name
                                   "MonitorChangesPendingDeployment" :json-name
                                   "monitorChangesPendingDeployment")
                                  (monitor-deployment :target-type
                                   monitor-deployment :member-name
                                   "MonitorDeployment" :json-name
                                   "monitorDeployment")
                                  (name :target-type string-min1max255pattern-s
                                   :member-name "Name" :json-name "name")
                                  (status :target-type signal-map-status
                                   :member-name "Status" :json-name "status")
                                  (tags :target-type tag-map :member-name
                                   "Tags" :json-name "tags"))
                                 (:shape-name "StartUpdateSignalMapResponse"))

(smithy/sdk/shapes:define-structure
 static-image-activate-schedule-action-settings common-lisp:nil
 ((duration :target-type integer-min0 :member-name "Duration" :json-name
   "duration")
  (fade-in :target-type integer-min0 :member-name "FadeIn" :json-name "fadeIn")
  (fade-out :target-type integer-min0 :member-name "FadeOut" :json-name
   "fadeOut")
  (height :target-type integer-min1 :member-name "Height" :json-name "height")
  (image :target-type input-location :required common-lisp:t :member-name
   "Image" :json-name "image")
  (image-x :target-type integer-min0 :member-name "ImageX" :json-name "imageX")
  (image-y :target-type integer-min0 :member-name "ImageY" :json-name "imageY")
  (layer :target-type integer-min0max7 :member-name "Layer" :json-name "layer")
  (opacity :target-type integer-min0max100 :member-name "Opacity" :json-name
   "opacity")
  (width :target-type integer-min1 :member-name "Width" :json-name "width"))
 (:shape-name "StaticImageActivateScheduleActionSettings"))

(smithy/sdk/shapes:define-structure
 static-image-deactivate-schedule-action-settings common-lisp:nil
 ((fade-out :target-type integer-min0 :member-name "FadeOut" :json-name
   "fadeOut")
  (layer :target-type integer-min0max7 :member-name "Layer" :json-name
   "layer"))
 (:shape-name "StaticImageDeactivateScheduleActionSettings"))

(smithy/sdk/shapes:define-structure
 static-image-output-activate-schedule-action-settings common-lisp:nil
 ((duration :target-type integer-min0 :member-name "Duration" :json-name
   "duration")
  (fade-in :target-type integer-min0 :member-name "FadeIn" :json-name "fadeIn")
  (fade-out :target-type integer-min0 :member-name "FadeOut" :json-name
   "fadeOut")
  (height :target-type integer-min1 :member-name "Height" :json-name "height")
  (image :target-type input-location :required common-lisp:t :member-name
   "Image" :json-name "image")
  (image-x :target-type integer-min0 :member-name "ImageX" :json-name "imageX")
  (image-y :target-type integer-min0 :member-name "ImageY" :json-name "imageY")
  (layer :target-type integer-min0max7 :member-name "Layer" :json-name "layer")
  (opacity :target-type integer-min0max100 :member-name "Opacity" :json-name
   "opacity")
  (output-names :target-type list-of-string :required common-lisp:t
   :member-name "OutputNames" :json-name "outputNames")
  (width :target-type integer-min1 :member-name "Width" :json-name "width"))
 (:shape-name "StaticImageOutputActivateScheduleActionSettings"))

(smithy/sdk/shapes:define-structure
 static-image-output-deactivate-schedule-action-settings common-lisp:nil
 ((fade-out :target-type integer-min0 :member-name "FadeOut" :json-name
   "fadeOut")
  (layer :target-type integer-min0max7 :member-name "Layer" :json-name "layer")
  (output-names :target-type list-of-string :required common-lisp:t
   :member-name "OutputNames" :json-name "outputNames"))
 (:shape-name "StaticImageOutputDeactivateScheduleActionSettings"))

(smithy/sdk/shapes:define-structure static-key-settings common-lisp:nil
                                    ((key-provider-server :target-type
                                      input-location :member-name
                                      "KeyProviderServer" :json-name
                                      "keyProviderServer")
                                     (static-key-value :target-type
                                      string-min32max32 :required common-lisp:t
                                      :member-name "StaticKeyValue" :json-name
                                      "staticKeyValue"))
                                    (:shape-name "StaticKeySettings"))

(smithy/sdk/shapes:define-input stop-channel-request common-lisp:nil
                                ((channel-id :target-type string :required
                                  common-lisp:t :member-name "ChannelId"
                                  :http-label common-lisp:t))
                                (:shape-name "StopChannelRequest"))

(smithy/sdk/shapes:define-output stop-channel-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (cdi-input-specification :target-type
                                   cdi-input-specification :member-name
                                   "CdiInputSpecification" :json-name
                                   "cdiInputSpecification")
                                  (channel-class :target-type channel-class
                                   :member-name "ChannelClass" :json-name
                                   "channelClass")
                                  (destinations :target-type
                                   list-of-output-destination :member-name
                                   "Destinations" :json-name "destinations")
                                  (egress-endpoints :target-type
                                   list-of-channel-egress-endpoint :member-name
                                   "EgressEndpoints" :json-name
                                   "egressEndpoints")
                                  (encoder-settings :target-type
                                   encoder-settings :member-name
                                   "EncoderSettings" :json-name
                                   "encoderSettings")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (input-attachments :target-type
                                   list-of-input-attachment :member-name
                                   "InputAttachments" :json-name
                                   "inputAttachments")
                                  (input-specification :target-type
                                   input-specification :member-name
                                   "InputSpecification" :json-name
                                   "inputSpecification")
                                  (log-level :target-type log-level
                                   :member-name "LogLevel" :json-name
                                   "logLevel")
                                  (maintenance :target-type maintenance-status
                                   :member-name "Maintenance" :json-name
                                   "maintenance")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name")
                                  (pipeline-details :target-type
                                   list-of-pipeline-detail :member-name
                                   "PipelineDetails" :json-name
                                   "pipelineDetails")
                                  (pipelines-running-count :target-type integer
                                   :member-name "PipelinesRunningCount"
                                   :json-name "pipelinesRunningCount")
                                  (role-arn :target-type string :member-name
                                   "RoleArn" :json-name "roleArn")
                                  (state :target-type channel-state
                                   :member-name "State" :json-name "state")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags")
                                  (vpc :target-type
                                   vpc-output-settings-description :member-name
                                   "Vpc" :json-name "vpc")
                                  (anywhere-settings :target-type
                                   describe-anywhere-settings :member-name
                                   "AnywhereSettings" :json-name
                                   "anywhereSettings")
                                  (channel-engine-version :target-type
                                   channel-engine-version-response :member-name
                                   "ChannelEngineVersion" :json-name
                                   "channelEngineVersion"))
                                 (:shape-name "StopChannelResponse"))

(smithy/sdk/shapes:define-input stop-input-device-request common-lisp:nil
                                ((input-device-id :target-type string :required
                                  common-lisp:t :member-name "InputDeviceId"
                                  :http-label common-lisp:t))
                                (:shape-name "StopInputDeviceRequest"))

(smithy/sdk/shapes:define-output stop-input-device-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StopInputDeviceResponse"))

(smithy/sdk/shapes:define-input stop-multiplex-request common-lisp:nil
                                ((multiplex-id :target-type string :required
                                  common-lisp:t :member-name "MultiplexId"
                                  :http-label common-lisp:t))
                                (:shape-name "StopMultiplexRequest"))

(smithy/sdk/shapes:define-output stop-multiplex-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (availability-zones :target-type
                                   list-of-string :member-name
                                   "AvailabilityZones" :json-name
                                   "availabilityZones")
                                  (destinations :target-type
                                   list-of-multiplex-output-destination
                                   :member-name "Destinations" :json-name
                                   "destinations")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (multiplex-settings :target-type
                                   multiplex-settings :member-name
                                   "MultiplexSettings" :json-name
                                   "multiplexSettings")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name")
                                  (pipelines-running-count :target-type integer
                                   :member-name "PipelinesRunningCount"
                                   :json-name "pipelinesRunningCount")
                                  (program-count :target-type integer
                                   :member-name "ProgramCount" :json-name
                                   "programCount")
                                  (state :target-type multiplex-state
                                   :member-name "State" :json-name "state")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "StopMultiplexResponse"))

(smithy/sdk/shapes:define-structure stop-timecode common-lisp:nil
                                    ((last-frame-clipping-behavior :target-type
                                      last-frame-clipping-behavior :member-name
                                      "LastFrameClippingBehavior" :json-name
                                      "lastFrameClippingBehavior")
                                     (timecode :target-type string :member-name
                                      "Timecode" :json-name "timecode"))
                                    (:shape-name "StopTimecode"))

(smithy/sdk/shapes:define-structure successful-monitor-deployment
                                    common-lisp:nil
                                    ((details-uri :target-type
                                      string-min1max2048 :required
                                      common-lisp:t :member-name "DetailsUri"
                                      :json-name "detailsUri")
                                     (status :target-type
                                      signal-map-monitor-deployment-status
                                      :required common-lisp:t :member-name
                                      "Status" :json-name "status"))
                                    (:shape-name "SuccessfulMonitorDeployment"))

(smithy/sdk/shapes:define-map tag-map :key string :value string)

(smithy/sdk/shapes:define-map tags :key string :value string)

(smithy/sdk/shapes:define-structure teletext-destination-settings
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "TeletextDestinationSettings"))

(smithy/sdk/shapes:define-structure teletext-source-settings common-lisp:nil
                                    ((output-rectangle :target-type
                                      caption-rectangle :member-name
                                      "OutputRectangle" :json-name
                                      "outputRectangle")
                                     (page-number :target-type string
                                      :member-name "PageNumber" :json-name
                                      "pageNumber"))
                                    (:shape-name "TeletextSourceSettings"))

(smithy/sdk/shapes:define-enum temporal-filter-post-filter-sharpening
    common-lisp:nil
  (:auto "AUTO")
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-structure temporal-filter-settings common-lisp:nil
                                    ((post-filter-sharpening :target-type
                                      temporal-filter-post-filter-sharpening
                                      :member-name "PostFilterSharpening"
                                      :json-name "postFilterSharpening")
                                     (strength :target-type
                                      temporal-filter-strength :member-name
                                      "Strength" :json-name "strength"))
                                    (:shape-name "TemporalFilterSettings"))

(smithy/sdk/shapes:define-enum temporal-filter-strength
    common-lisp:nil
  (:auto "AUTO")
  (:strength-1 "STRENGTH_1")
  (:strength-2 "STRENGTH_2")
  (:strength-3 "STRENGTH_3")
  (:strength-4 "STRENGTH_4")
  (:strength-5 "STRENGTH_5")
  (:strength-6 "STRENGTH_6")
  (:strength-7 "STRENGTH_7")
  (:strength-8 "STRENGTH_8")
  (:strength-9 "STRENGTH_9")
  (:strength-10 "STRENGTH_10")
  (:strength-11 "STRENGTH_11")
  (:strength-12 "STRENGTH_12")
  (:strength-13 "STRENGTH_13")
  (:strength-14 "STRENGTH_14")
  (:strength-15 "STRENGTH_15")
  (:strength-16 "STRENGTH_16"))

(smithy/sdk/shapes:define-structure thumbnail common-lisp:nil
                                    ((body :target-type string :member-name
                                      "Body" :json-name "body")
                                     (content-type :target-type string
                                      :member-name "ContentType" :json-name
                                      "contentType")
                                     (thumbnail-type :target-type
                                      thumbnail-type :member-name
                                      "ThumbnailType" :json-name
                                      "thumbnailType")
                                     (time-stamp :target-type timestamp-iso8601
                                      :member-name "TimeStamp" :json-name
                                      "timeStamp"))
                                    (:shape-name "Thumbnail"))

(smithy/sdk/shapes:define-structure thumbnail-configuration common-lisp:nil
                                    ((state :target-type thumbnail-state
                                      :required common-lisp:t :member-name
                                      "State" :json-name "state"))
                                    (:shape-name "ThumbnailConfiguration"))

(smithy/sdk/shapes:define-structure thumbnail-detail common-lisp:nil
                                    ((pipeline-id :target-type string
                                      :member-name "PipelineId" :json-name
                                      "pipelineId")
                                     (thumbnails :target-type list-of-thumbnail
                                      :member-name "Thumbnails" :json-name
                                      "thumbnails"))
                                    (:shape-name "ThumbnailDetail"))

(smithy/sdk/shapes:define-enum thumbnail-state
    common-lisp:nil
  (:auto "AUTO")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum thumbnail-type
    common-lisp:nil
  (:unspecified "UNSPECIFIED")
  (:current-active "CURRENT_ACTIVE"))

(smithy/sdk/shapes:define-enum timecode-burnin-font-size
    common-lisp:nil
  (:extra-small-10 "EXTRA_SMALL_10")
  (:large-48 "LARGE_48")
  (:medium-32 "MEDIUM_32")
  (:small-16 "SMALL_16"))

(smithy/sdk/shapes:define-enum timecode-burnin-position
    common-lisp:nil
  (:bottom-center "BOTTOM_CENTER")
  (:bottom-left "BOTTOM_LEFT")
  (:bottom-right "BOTTOM_RIGHT")
  (:middle-center "MIDDLE_CENTER")
  (:middle-left "MIDDLE_LEFT")
  (:middle-right "MIDDLE_RIGHT")
  (:top-center "TOP_CENTER")
  (:top-left "TOP_LEFT")
  (:top-right "TOP_RIGHT"))

(smithy/sdk/shapes:define-structure timecode-burnin-settings common-lisp:nil
                                    ((font-size :target-type
                                      timecode-burnin-font-size :required
                                      common-lisp:t :member-name "FontSize"
                                      :json-name "fontSize")
                                     (position :target-type
                                      timecode-burnin-position :required
                                      common-lisp:t :member-name "Position"
                                      :json-name "position")
                                     (prefix :target-type string-max255
                                      :member-name "Prefix" :json-name
                                      "prefix"))
                                    (:shape-name "TimecodeBurninSettings"))

(smithy/sdk/shapes:define-structure timecode-config common-lisp:nil
                                    ((source :target-type
                                      timecode-config-source :required
                                      common-lisp:t :member-name "Source"
                                      :json-name "source")
                                     (sync-threshold :target-type
                                      integer-min1max1000000 :member-name
                                      "SyncThreshold" :json-name
                                      "syncThreshold"))
                                    (:shape-name "TimecodeConfig"))

(smithy/sdk/shapes:define-enum timecode-config-source
    common-lisp:nil
  (:embedded "EMBEDDED")
  (:systemclock "SYSTEMCLOCK")
  (:zerobased "ZEROBASED"))

(smithy/sdk/shapes:define-structure timed-metadata-schedule-action-settings
                                    common-lisp:nil
                                    ((id3 :target-type string :required
                                      common-lisp:t :member-name "Id3"
                                      :json-name "id3"))
                                    (:shape-name
                                     "TimedMetadataScheduleActionSettings"))

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 429))

(smithy/sdk/shapes:define-input transfer-input-device-request common-lisp:nil
                                ((input-device-id :target-type string :required
                                  common-lisp:t :member-name "InputDeviceId"
                                  :http-label common-lisp:t)
                                 (target-customer-id :target-type string
                                  :member-name "TargetCustomerId" :json-name
                                  "targetCustomerId")
                                 (target-region :target-type string
                                  :member-name "TargetRegion" :json-name
                                  "targetRegion")
                                 (transfer-message :target-type string
                                  :member-name "TransferMessage" :json-name
                                  "transferMessage"))
                                (:shape-name "TransferInputDeviceRequest"))

(smithy/sdk/shapes:define-output transfer-input-device-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TransferInputDeviceResponse"))

(smithy/sdk/shapes:define-structure transferring-input-device-summary
                                    common-lisp:nil
                                    ((id :target-type string :member-name "Id"
                                      :json-name "id")
                                     (message :target-type string :member-name
                                      "Message" :json-name "message")
                                     (target-customer-id :target-type string
                                      :member-name "TargetCustomerId"
                                      :json-name "targetCustomerId")
                                     (transfer-type :target-type
                                      input-device-transfer-type :member-name
                                      "TransferType" :json-name
                                      "transferType"))
                                    (:shape-name
                                     "TransferringInputDeviceSummary"))

(smithy/sdk/shapes:define-structure ttml-destination-settings common-lisp:nil
                                    ((style-control :target-type
                                      ttml-destination-style-control
                                      :member-name "StyleControl" :json-name
                                      "styleControl"))
                                    (:shape-name "TtmlDestinationSettings"))

(smithy/sdk/shapes:define-enum ttml-destination-style-control
    common-lisp:nil
  (:passthrough "PASSTHROUGH")
  (:use-configured "USE_CONFIGURED"))

(smithy/sdk/shapes:define-structure udp-container-settings common-lisp:nil
                                    ((m2ts-settings :target-type m2ts-settings
                                      :member-name "M2tsSettings" :json-name
                                      "m2tsSettings"))
                                    (:shape-name "UdpContainerSettings"))

(smithy/sdk/shapes:define-structure udp-group-settings common-lisp:nil
                                    ((input-loss-action :target-type
                                      input-loss-action-for-udp-out
                                      :member-name "InputLossAction" :json-name
                                      "inputLossAction")
                                     (timed-metadata-id3frame :target-type
                                      udp-timed-metadata-id3frame :member-name
                                      "TimedMetadataId3Frame" :json-name
                                      "timedMetadataId3Frame")
                                     (timed-metadata-id3period :target-type
                                      integer-min0 :member-name
                                      "TimedMetadataId3Period" :json-name
                                      "timedMetadataId3Period"))
                                    (:shape-name "UdpGroupSettings"))

(smithy/sdk/shapes:define-structure udp-output-settings common-lisp:nil
                                    ((buffer-msec :target-type
                                      integer-min0max10000 :member-name
                                      "BufferMsec" :json-name "bufferMsec")
                                     (container-settings :target-type
                                      udp-container-settings :required
                                      common-lisp:t :member-name
                                      "ContainerSettings" :json-name
                                      "containerSettings")
                                     (destination :target-type
                                      output-location-ref :required
                                      common-lisp:t :member-name "Destination"
                                      :json-name "destination")
                                     (fec-output-settings :target-type
                                      fec-output-settings :member-name
                                      "FecOutputSettings" :json-name
                                      "fecOutputSettings"))
                                    (:shape-name "UdpOutputSettings"))

(smithy/sdk/shapes:define-enum udp-timed-metadata-id3frame
    common-lisp:nil
  (:none "NONE")
  (:priv "PRIV")
  (:tdrl "TDRL"))

(smithy/sdk/shapes:define-error unprocessable-entity-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message")
                                 (validation-errors :target-type
                                  list-of-validation-error :member-name
                                  "ValidationErrors" :json-name
                                  "validationErrors"))
                                (:shape-name "UnprocessableEntityException")
                                (:error-code 422))

(smithy/sdk/shapes:define-input update-account-configuration-request
                                common-lisp:nil
                                ((account-configuration :target-type
                                  account-configuration :member-name
                                  "AccountConfiguration" :json-name
                                  "accountConfiguration"))
                                (:shape-name
                                 "UpdateAccountConfigurationRequest"))

(smithy/sdk/shapes:define-output update-account-configuration-response
                                 common-lisp:nil
                                 ((account-configuration :target-type
                                   account-configuration :member-name
                                   "AccountConfiguration" :json-name
                                   "accountConfiguration"))
                                 (:shape-name
                                  "UpdateAccountConfigurationResponse"))

(smithy/sdk/shapes:define-input update-channel-class-request common-lisp:nil
                                ((channel-class :target-type channel-class
                                  :required common-lisp:t :member-name
                                  "ChannelClass" :json-name "channelClass")
                                 (channel-id :target-type string :required
                                  common-lisp:t :member-name "ChannelId"
                                  :http-label common-lisp:t)
                                 (destinations :target-type
                                  list-of-output-destination :member-name
                                  "Destinations" :json-name "destinations"))
                                (:shape-name "UpdateChannelClassRequest"))

(smithy/sdk/shapes:define-output update-channel-class-response common-lisp:nil
                                 ((channel :target-type channel :member-name
                                   "Channel" :json-name "channel"))
                                 (:shape-name "UpdateChannelClassResponse"))

(smithy/sdk/shapes:define-input update-channel-placement-group-request
                                common-lisp:nil
                                ((channel-placement-group-id :target-type
                                  string :required common-lisp:t :member-name
                                  "ChannelPlacementGroupId" :http-label
                                  common-lisp:t)
                                 (cluster-id :target-type string :required
                                  common-lisp:t :member-name "ClusterId"
                                  :http-label common-lisp:t)
                                 (name :target-type string :member-name "Name"
                                  :json-name "name")
                                 (nodes :target-type list-of-string
                                  :member-name "Nodes" :json-name "nodes"))
                                (:shape-name
                                 "UpdateChannelPlacementGroupRequest"))

(smithy/sdk/shapes:define-output update-channel-placement-group-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (channels :target-type list-of-string
                                   :member-name "Channels" :json-name
                                   "channels")
                                  (cluster-id :target-type string :member-name
                                   "ClusterId" :json-name "clusterId")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name")
                                  (nodes :target-type list-of-string
                                   :member-name "Nodes" :json-name "nodes")
                                  (state :target-type
                                   channel-placement-group-state :member-name
                                   "State" :json-name "state"))
                                 (:shape-name
                                  "UpdateChannelPlacementGroupResponse"))

(smithy/sdk/shapes:define-input update-channel-request common-lisp:nil
                                ((cdi-input-specification :target-type
                                  cdi-input-specification :member-name
                                  "CdiInputSpecification" :json-name
                                  "cdiInputSpecification")
                                 (channel-id :target-type string :required
                                  common-lisp:t :member-name "ChannelId"
                                  :http-label common-lisp:t)
                                 (destinations :target-type
                                  list-of-output-destination :member-name
                                  "Destinations" :json-name "destinations")
                                 (encoder-settings :target-type
                                  encoder-settings :member-name
                                  "EncoderSettings" :json-name
                                  "encoderSettings")
                                 (input-attachments :target-type
                                  list-of-input-attachment :member-name
                                  "InputAttachments" :json-name
                                  "inputAttachments")
                                 (input-specification :target-type
                                  input-specification :member-name
                                  "InputSpecification" :json-name
                                  "inputSpecification")
                                 (log-level :target-type log-level :member-name
                                  "LogLevel" :json-name "logLevel")
                                 (maintenance :target-type
                                  maintenance-update-settings :member-name
                                  "Maintenance" :json-name "maintenance")
                                 (name :target-type string :member-name "Name"
                                  :json-name "name")
                                 (role-arn :target-type string :member-name
                                  "RoleArn" :json-name "roleArn")
                                 (channel-engine-version :target-type
                                  channel-engine-version-request :member-name
                                  "ChannelEngineVersion" :json-name
                                  "channelEngineVersion")
                                 (dry-run :target-type boolean :member-name
                                  "DryRun" :json-name "dryRun")
                                 (anywhere-settings :target-type
                                  anywhere-settings :member-name
                                  "AnywhereSettings" :json-name
                                  "anywhereSettings"))
                                (:shape-name "UpdateChannelRequest"))

(smithy/sdk/shapes:define-output update-channel-response common-lisp:nil
                                 ((channel :target-type channel :member-name
                                   "Channel" :json-name "channel"))
                                 (:shape-name "UpdateChannelResponse"))

(smithy/sdk/shapes:define-input update-cloud-watch-alarm-template-group-request
                                common-lisp:nil
                                ((description :target-type string-min0max1024
                                  :member-name "Description" :json-name
                                  "description")
                                 (identifier :target-type string :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "UpdateCloudWatchAlarmTemplateGroupRequest"))

(smithy/sdk/shapes:define-output
 update-cloud-watch-alarm-template-group-response common-lisp:nil
 ((arn :target-type
   string-pattern-arn-medialive-cloudwatch-alarm-template-group :member-name
   "Arn" :json-name "arn")
  (created-at :target-type timestamp-iso8601 :member-name "CreatedAt"
   :json-name "createdAt")
  (description :target-type string-min0max1024 :member-name "Description"
   :json-name "description")
  (id :target-type string-min7max11pattern-aws097 :member-name "Id" :json-name
   "id")
  (modified-at :target-type timestamp-iso8601 :member-name "ModifiedAt"
   :json-name "modifiedAt")
  (name :target-type string-min1max255pattern-s :member-name "Name" :json-name
   "name")
  (tags :target-type tag-map :member-name "Tags" :json-name "tags"))
 (:shape-name "UpdateCloudWatchAlarmTemplateGroupResponse"))

(smithy/sdk/shapes:define-input update-cloud-watch-alarm-template-request
                                common-lisp:nil
                                ((comparison-operator :target-type
                                  cloud-watch-alarm-template-comparison-operator
                                  :member-name "ComparisonOperator" :json-name
                                  "comparisonOperator")
                                 (datapoints-to-alarm :target-type integer-min1
                                  :member-name "DatapointsToAlarm" :json-name
                                  "datapointsToAlarm")
                                 (description :target-type string-min0max1024
                                  :member-name "Description" :json-name
                                  "description")
                                 (evaluation-periods :target-type integer-min1
                                  :member-name "EvaluationPeriods" :json-name
                                  "evaluationPeriods")
                                 (group-identifier :target-type
                                  string-pattern-s :member-name
                                  "GroupIdentifier" :json-name
                                  "groupIdentifier")
                                 (identifier :target-type string :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t)
                                 (metric-name :target-type string-max64
                                  :member-name "MetricName" :json-name
                                  "metricName")
                                 (name :target-type string-min1max255pattern-s
                                  :member-name "Name" :json-name "name")
                                 (period :target-type integer-min10max86400
                                  :member-name "Period" :json-name "period")
                                 (statistic :target-type
                                  cloud-watch-alarm-template-statistic
                                  :member-name "Statistic" :json-name
                                  "statistic")
                                 (target-resource-type :target-type
                                  cloud-watch-alarm-template-target-resource-type
                                  :member-name "TargetResourceType" :json-name
                                  "targetResourceType")
                                 (threshold :target-type double :member-name
                                  "Threshold" :json-name "threshold")
                                 (treat-missing-data :target-type
                                  cloud-watch-alarm-template-treat-missing-data
                                  :member-name "TreatMissingData" :json-name
                                  "treatMissingData"))
                                (:shape-name
                                 "UpdateCloudWatchAlarmTemplateRequest"))

(smithy/sdk/shapes:define-output update-cloud-watch-alarm-template-response
                                 common-lisp:nil
                                 ((arn :target-type
                                   string-pattern-arn-medialive-cloudwatch-alarm-template
                                   :member-name "Arn" :json-name "arn")
                                  (comparison-operator :target-type
                                   cloud-watch-alarm-template-comparison-operator
                                   :member-name "ComparisonOperator" :json-name
                                   "comparisonOperator")
                                  (created-at :target-type timestamp-iso8601
                                   :member-name "CreatedAt" :json-name
                                   "createdAt")
                                  (datapoints-to-alarm :target-type
                                   integer-min1 :member-name
                                   "DatapointsToAlarm" :json-name
                                   "datapointsToAlarm")
                                  (description :target-type string-min0max1024
                                   :member-name "Description" :json-name
                                   "description")
                                  (evaluation-periods :target-type integer-min1
                                   :member-name "EvaluationPeriods" :json-name
                                   "evaluationPeriods")
                                  (group-id :target-type
                                   string-min7max11pattern-aws097 :member-name
                                   "GroupId" :json-name "groupId")
                                  (id :target-type
                                   string-min7max11pattern-aws097 :member-name
                                   "Id" :json-name "id")
                                  (metric-name :target-type string-max64
                                   :member-name "MetricName" :json-name
                                   "metricName")
                                  (modified-at :target-type timestamp-iso8601
                                   :member-name "ModifiedAt" :json-name
                                   "modifiedAt")
                                  (name :target-type string-min1max255pattern-s
                                   :member-name "Name" :json-name "name")
                                  (period :target-type integer-min10max86400
                                   :member-name "Period" :json-name "period")
                                  (statistic :target-type
                                   cloud-watch-alarm-template-statistic
                                   :member-name "Statistic" :json-name
                                   "statistic")
                                  (tags :target-type tag-map :member-name
                                   "Tags" :json-name "tags")
                                  (target-resource-type :target-type
                                   cloud-watch-alarm-template-target-resource-type
                                   :member-name "TargetResourceType" :json-name
                                   "targetResourceType")
                                  (threshold :target-type double :member-name
                                   "Threshold" :json-name "threshold")
                                  (treat-missing-data :target-type
                                   cloud-watch-alarm-template-treat-missing-data
                                   :member-name "TreatMissingData" :json-name
                                   "treatMissingData"))
                                 (:shape-name
                                  "UpdateCloudWatchAlarmTemplateResponse"))

(smithy/sdk/shapes:define-input update-cluster-request common-lisp:nil
                                ((cluster-id :target-type string :required
                                  common-lisp:t :member-name "ClusterId"
                                  :http-label common-lisp:t)
                                 (name :target-type string :member-name "Name"
                                  :json-name "name")
                                 (network-settings :target-type
                                  cluster-network-settings-update-request
                                  :member-name "NetworkSettings" :json-name
                                  "networkSettings"))
                                (:shape-name "UpdateClusterRequest"))

(smithy/sdk/shapes:define-output update-cluster-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (channel-ids :target-type list-of-string
                                   :member-name "ChannelIds" :json-name
                                   "channelIds")
                                  (cluster-type :target-type cluster-type
                                   :member-name "ClusterType" :json-name
                                   "clusterType")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name")
                                  (network-settings :target-type
                                   cluster-network-settings :member-name
                                   "NetworkSettings" :json-name
                                   "networkSettings")
                                  (state :target-type cluster-state
                                   :member-name "State" :json-name "state"))
                                 (:shape-name "UpdateClusterResponse"))

(smithy/sdk/shapes:define-input update-event-bridge-rule-template-group-request
                                common-lisp:nil
                                ((description :target-type string-min0max1024
                                  :member-name "Description" :json-name
                                  "description")
                                 (identifier :target-type string :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "UpdateEventBridgeRuleTemplateGroupRequest"))

(smithy/sdk/shapes:define-output
 update-event-bridge-rule-template-group-response common-lisp:nil
 ((arn :target-type
   string-pattern-arn-medialive-eventbridge-rule-template-group :member-name
   "Arn" :json-name "arn")
  (created-at :target-type timestamp-iso8601 :member-name "CreatedAt"
   :json-name "createdAt")
  (description :target-type string-min0max1024 :member-name "Description"
   :json-name "description")
  (id :target-type string-min7max11pattern-aws097 :member-name "Id" :json-name
   "id")
  (modified-at :target-type timestamp-iso8601 :member-name "ModifiedAt"
   :json-name "modifiedAt")
  (name :target-type string-min1max255pattern-s :member-name "Name" :json-name
   "name")
  (tags :target-type tag-map :member-name "Tags" :json-name "tags"))
 (:shape-name "UpdateEventBridgeRuleTemplateGroupResponse"))

(smithy/sdk/shapes:define-input update-event-bridge-rule-template-request
                                common-lisp:nil
                                ((description :target-type string-min0max1024
                                  :member-name "Description" :json-name
                                  "description")
                                 (event-targets :target-type
                                  list-of-event-bridge-rule-template-target
                                  :member-name "EventTargets" :json-name
                                  "eventTargets")
                                 (event-type :target-type
                                  event-bridge-rule-template-event-type
                                  :member-name "EventType" :json-name
                                  "eventType")
                                 (group-identifier :target-type
                                  string-pattern-s :member-name
                                  "GroupIdentifier" :json-name
                                  "groupIdentifier")
                                 (identifier :target-type string :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t)
                                 (name :target-type string-min1max255pattern-s
                                  :member-name "Name" :json-name "name"))
                                (:shape-name
                                 "UpdateEventBridgeRuleTemplateRequest"))

(smithy/sdk/shapes:define-output update-event-bridge-rule-template-response
                                 common-lisp:nil
                                 ((arn :target-type
                                   string-pattern-arn-medialive-eventbridge-rule-template
                                   :member-name "Arn" :json-name "arn")
                                  (created-at :target-type timestamp-iso8601
                                   :member-name "CreatedAt" :json-name
                                   "createdAt")
                                  (description :target-type string-min0max1024
                                   :member-name "Description" :json-name
                                   "description")
                                  (event-targets :target-type
                                   list-of-event-bridge-rule-template-target
                                   :member-name "EventTargets" :json-name
                                   "eventTargets")
                                  (event-type :target-type
                                   event-bridge-rule-template-event-type
                                   :member-name "EventType" :json-name
                                   "eventType")
                                  (group-id :target-type
                                   string-min7max11pattern-aws097 :member-name
                                   "GroupId" :json-name "groupId")
                                  (id :target-type
                                   string-min7max11pattern-aws097 :member-name
                                   "Id" :json-name "id")
                                  (modified-at :target-type timestamp-iso8601
                                   :member-name "ModifiedAt" :json-name
                                   "modifiedAt")
                                  (name :target-type string-min1max255pattern-s
                                   :member-name "Name" :json-name "name")
                                  (tags :target-type tag-map :member-name
                                   "Tags" :json-name "tags"))
                                 (:shape-name
                                  "UpdateEventBridgeRuleTemplateResponse"))

(smithy/sdk/shapes:define-input update-input-device-request common-lisp:nil
                                ((hd-device-settings :target-type
                                  input-device-configurable-settings
                                  :member-name "HdDeviceSettings" :json-name
                                  "hdDeviceSettings")
                                 (input-device-id :target-type string :required
                                  common-lisp:t :member-name "InputDeviceId"
                                  :http-label common-lisp:t)
                                 (name :target-type string :member-name "Name"
                                  :json-name "name")
                                 (uhd-device-settings :target-type
                                  input-device-configurable-settings
                                  :member-name "UhdDeviceSettings" :json-name
                                  "uhdDeviceSettings")
                                 (availability-zone :target-type string
                                  :member-name "AvailabilityZone" :json-name
                                  "availabilityZone"))
                                (:shape-name "UpdateInputDeviceRequest"))

(smithy/sdk/shapes:define-output update-input-device-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (connection-state :target-type
                                   input-device-connection-state :member-name
                                   "ConnectionState" :json-name
                                   "connectionState")
                                  (device-settings-sync-state :target-type
                                   device-settings-sync-state :member-name
                                   "DeviceSettingsSyncState" :json-name
                                   "deviceSettingsSyncState")
                                  (device-update-status :target-type
                                   device-update-status :member-name
                                   "DeviceUpdateStatus" :json-name
                                   "deviceUpdateStatus")
                                  (hd-device-settings :target-type
                                   input-device-hd-settings :member-name
                                   "HdDeviceSettings" :json-name
                                   "hdDeviceSettings")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (mac-address :target-type string :member-name
                                   "MacAddress" :json-name "macAddress")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name")
                                  (network-settings :target-type
                                   input-device-network-settings :member-name
                                   "NetworkSettings" :json-name
                                   "networkSettings")
                                  (serial-number :target-type string
                                   :member-name "SerialNumber" :json-name
                                   "serialNumber")
                                  (type :target-type input-device-type
                                   :member-name "Type" :json-name "type")
                                  (uhd-device-settings :target-type
                                   input-device-uhd-settings :member-name
                                   "UhdDeviceSettings" :json-name
                                   "uhdDeviceSettings")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags")
                                  (availability-zone :target-type string
                                   :member-name "AvailabilityZone" :json-name
                                   "availabilityZone")
                                  (medialive-input-arns :target-type
                                   list-of-string :member-name
                                   "MedialiveInputArns" :json-name
                                   "medialiveInputArns")
                                  (output-type :target-type
                                   input-device-output-type :member-name
                                   "OutputType" :json-name "outputType"))
                                 (:shape-name "UpdateInputDeviceResponse"))

(smithy/sdk/shapes:define-input update-input-request common-lisp:nil
                                ((destinations :target-type
                                  list-of-input-destination-request
                                  :member-name "Destinations" :json-name
                                  "destinations")
                                 (input-devices :target-type
                                  list-of-input-device-request :member-name
                                  "InputDevices" :json-name "inputDevices")
                                 (input-id :target-type string :required
                                  common-lisp:t :member-name "InputId"
                                  :http-label common-lisp:t)
                                 (input-security-groups :target-type
                                  list-of-string :member-name
                                  "InputSecurityGroups" :json-name
                                  "inputSecurityGroups")
                                 (media-connect-flows :target-type
                                  list-of-media-connect-flow-request
                                  :member-name "MediaConnectFlows" :json-name
                                  "mediaConnectFlows")
                                 (name :target-type string :member-name "Name"
                                  :json-name "name")
                                 (role-arn :target-type string :member-name
                                  "RoleArn" :json-name "roleArn")
                                 (sources :target-type
                                  list-of-input-source-request :member-name
                                  "Sources" :json-name "sources")
                                 (srt-settings :target-type
                                  srt-settings-request :member-name
                                  "SrtSettings" :json-name "srtSettings")
                                 (multicast-settings :target-type
                                  multicast-settings-update-request
                                  :member-name "MulticastSettings" :json-name
                                  "multicastSettings")
                                 (smpte2110receiver-group-settings :target-type
                                  smpte2110receiver-group-settings :member-name
                                  "Smpte2110ReceiverGroupSettings" :json-name
                                  "smpte2110ReceiverGroupSettings")
                                 (sdi-sources :target-type input-sdi-sources
                                  :member-name "SdiSources" :json-name
                                  "sdiSources"))
                                (:shape-name "UpdateInputRequest"))

(smithy/sdk/shapes:define-output update-input-response common-lisp:nil
                                 ((input :target-type input :member-name
                                   "Input" :json-name "input"))
                                 (:shape-name "UpdateInputResponse"))

(smithy/sdk/shapes:define-input update-input-security-group-request
                                common-lisp:nil
                                ((input-security-group-id :target-type string
                                  :required common-lisp:t :member-name
                                  "InputSecurityGroupId" :http-label
                                  common-lisp:t)
                                 (tags :target-type tags :member-name "Tags"
                                  :json-name "tags")
                                 (whitelist-rules :target-type
                                  list-of-input-whitelist-rule-cidr
                                  :member-name "WhitelistRules" :json-name
                                  "whitelistRules"))
                                (:shape-name "UpdateInputSecurityGroupRequest"))

(smithy/sdk/shapes:define-output update-input-security-group-response
                                 common-lisp:nil
                                 ((security-group :target-type
                                   input-security-group :member-name
                                   "SecurityGroup" :json-name "securityGroup"))
                                 (:shape-name
                                  "UpdateInputSecurityGroupResponse"))

(smithy/sdk/shapes:define-input update-multiplex-program-request
                                common-lisp:nil
                                ((multiplex-id :target-type string :required
                                  common-lisp:t :member-name "MultiplexId"
                                  :http-label common-lisp:t)
                                 (multiplex-program-settings :target-type
                                  multiplex-program-settings :member-name
                                  "MultiplexProgramSettings" :json-name
                                  "multiplexProgramSettings")
                                 (program-name :target-type string :required
                                  common-lisp:t :member-name "ProgramName"
                                  :http-label common-lisp:t))
                                (:shape-name "UpdateMultiplexProgramRequest"))

(smithy/sdk/shapes:define-output update-multiplex-program-response
                                 common-lisp:nil
                                 ((multiplex-program :target-type
                                   multiplex-program :member-name
                                   "MultiplexProgram" :json-name
                                   "multiplexProgram"))
                                 (:shape-name "UpdateMultiplexProgramResponse"))

(smithy/sdk/shapes:define-input update-multiplex-request common-lisp:nil
                                ((multiplex-id :target-type string :required
                                  common-lisp:t :member-name "MultiplexId"
                                  :http-label common-lisp:t)
                                 (multiplex-settings :target-type
                                  multiplex-settings :member-name
                                  "MultiplexSettings" :json-name
                                  "multiplexSettings")
                                 (name :target-type string :member-name "Name"
                                  :json-name "name")
                                 (packet-identifiers-mapping :target-type
                                  multiplex-packet-identifiers-mapping
                                  :member-name "PacketIdentifiersMapping"
                                  :json-name "packetIdentifiersMapping"))
                                (:shape-name "UpdateMultiplexRequest"))

(smithy/sdk/shapes:define-output update-multiplex-response common-lisp:nil
                                 ((multiplex :target-type multiplex
                                   :member-name "Multiplex" :json-name
                                   "multiplex"))
                                 (:shape-name "UpdateMultiplexResponse"))

(smithy/sdk/shapes:define-input update-network-request common-lisp:nil
                                ((ip-pools :target-type
                                  list-of-ip-pool-update-request :member-name
                                  "IpPools" :json-name "ipPools")
                                 (name :target-type string :member-name "Name"
                                  :json-name "name")
                                 (network-id :target-type string :required
                                  common-lisp:t :member-name "NetworkId"
                                  :http-label common-lisp:t)
                                 (routes :target-type
                                  list-of-route-update-request :member-name
                                  "Routes" :json-name "routes"))
                                (:shape-name "UpdateNetworkRequest"))

(smithy/sdk/shapes:define-output update-network-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (associated-cluster-ids :target-type
                                   list-of-string :member-name
                                   "AssociatedClusterIds" :json-name
                                   "associatedClusterIds")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (ip-pools :target-type list-of-ip-pool
                                   :member-name "IpPools" :json-name "ipPools")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name")
                                  (routes :target-type list-of-route
                                   :member-name "Routes" :json-name "routes")
                                  (state :target-type network-state
                                   :member-name "State" :json-name "state"))
                                 (:shape-name "UpdateNetworkResponse"))

(smithy/sdk/shapes:define-input update-node-request common-lisp:nil
                                ((cluster-id :target-type string :required
                                  common-lisp:t :member-name "ClusterId"
                                  :http-label common-lisp:t)
                                 (name :target-type string :member-name "Name"
                                  :json-name "name")
                                 (node-id :target-type string :required
                                  common-lisp:t :member-name "NodeId"
                                  :http-label common-lisp:t)
                                 (role :target-type node-role :member-name
                                  "Role" :json-name "role")
                                 (sdi-source-mappings :target-type
                                  sdi-source-mappings-update-request
                                  :member-name "SdiSourceMappings" :json-name
                                  "sdiSourceMappings"))
                                (:shape-name "UpdateNodeRequest"))

(smithy/sdk/shapes:define-output update-node-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (channel-placement-groups :target-type
                                   list-of-string :member-name
                                   "ChannelPlacementGroups" :json-name
                                   "channelPlacementGroups")
                                  (cluster-id :target-type string :member-name
                                   "ClusterId" :json-name "clusterId")
                                  (connection-state :target-type
                                   node-connection-state :member-name
                                   "ConnectionState" :json-name
                                   "connectionState")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (instance-arn :target-type string
                                   :member-name "InstanceArn" :json-name
                                   "instanceArn")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name")
                                  (node-interface-mappings :target-type
                                   list-of-node-interface-mapping :member-name
                                   "NodeInterfaceMappings" :json-name
                                   "nodeInterfaceMappings")
                                  (role :target-type node-role :member-name
                                   "Role" :json-name "role")
                                  (state :target-type node-state :member-name
                                   "State" :json-name "state")
                                  (sdi-source-mappings :target-type
                                   sdi-source-mappings :member-name
                                   "SdiSourceMappings" :json-name
                                   "sdiSourceMappings"))
                                 (:shape-name "UpdateNodeResponse"))

(smithy/sdk/shapes:define-input update-node-state-request common-lisp:nil
                                ((cluster-id :target-type string :required
                                  common-lisp:t :member-name "ClusterId"
                                  :http-label common-lisp:t)
                                 (node-id :target-type string :required
                                  common-lisp:t :member-name "NodeId"
                                  :http-label common-lisp:t)
                                 (state :target-type update-node-state-shape
                                  :member-name "State" :json-name "state"))
                                (:shape-name "UpdateNodeStateRequest"))

(smithy/sdk/shapes:define-output update-node-state-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (channel-placement-groups :target-type
                                   list-of-string :member-name
                                   "ChannelPlacementGroups" :json-name
                                   "channelPlacementGroups")
                                  (cluster-id :target-type string :member-name
                                   "ClusterId" :json-name "clusterId")
                                  (connection-state :target-type
                                   node-connection-state :member-name
                                   "ConnectionState" :json-name
                                   "connectionState")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (instance-arn :target-type string
                                   :member-name "InstanceArn" :json-name
                                   "instanceArn")
                                  (name :target-type string :member-name "Name"
                                   :json-name "name")
                                  (node-interface-mappings :target-type
                                   list-of-node-interface-mapping :member-name
                                   "NodeInterfaceMappings" :json-name
                                   "nodeInterfaceMappings")
                                  (role :target-type node-role :member-name
                                   "Role" :json-name "role")
                                  (state :target-type node-state :member-name
                                   "State" :json-name "state")
                                  (sdi-source-mappings :target-type
                                   sdi-source-mappings :member-name
                                   "SdiSourceMappings" :json-name
                                   "sdiSourceMappings"))
                                 (:shape-name "UpdateNodeStateResponse"))

(smithy/sdk/shapes:define-enum update-node-state-shape
    common-lisp:nil
  (:active "ACTIVE")
  (:draining "DRAINING"))

(smithy/sdk/shapes:define-input update-reservation-request common-lisp:nil
                                ((name :target-type string :member-name "Name"
                                  :json-name "name")
                                 (renewal-settings :target-type
                                  renewal-settings :member-name
                                  "RenewalSettings" :json-name
                                  "renewalSettings")
                                 (reservation-id :target-type string :required
                                  common-lisp:t :member-name "ReservationId"
                                  :http-label common-lisp:t))
                                (:shape-name "UpdateReservationRequest"))

(smithy/sdk/shapes:define-output update-reservation-response common-lisp:nil
                                 ((reservation :target-type reservation
                                   :member-name "Reservation" :json-name
                                   "reservation"))
                                 (:shape-name "UpdateReservationResponse"))

(smithy/sdk/shapes:define-input update-sdi-source-request common-lisp:nil
                                ((mode :target-type sdi-source-mode
                                  :member-name "Mode" :json-name "mode")
                                 (name :target-type string :member-name "Name"
                                  :json-name "name")
                                 (sdi-source-id :target-type string :required
                                  common-lisp:t :member-name "SdiSourceId"
                                  :http-label common-lisp:t)
                                 (type :target-type sdi-source-type
                                  :member-name "Type" :json-name "type"))
                                (:shape-name "UpdateSdiSourceRequest"))

(smithy/sdk/shapes:define-output update-sdi-source-response common-lisp:nil
                                 ((sdi-source :target-type sdi-source
                                   :member-name "SdiSource" :json-name
                                   "sdiSource"))
                                 (:shape-name "UpdateSdiSourceResponse"))

(smithy/sdk/shapes:define-structure validation-error common-lisp:nil
                                    ((element-path :target-type string
                                      :member-name "ElementPath" :json-name
                                      "elementPath")
                                     (error-message :target-type string
                                      :member-name "ErrorMessage" :json-name
                                      "errorMessage"))
                                    (:shape-name "ValidationError"))

(smithy/sdk/shapes:define-structure video-black-failover-settings
                                    common-lisp:nil
                                    ((black-detect-threshold :target-type
                                      double-min0max1 :member-name
                                      "BlackDetectThreshold" :json-name
                                      "blackDetectThreshold")
                                     (video-black-threshold-msec :target-type
                                      integer-min1000 :member-name
                                      "VideoBlackThresholdMsec" :json-name
                                      "videoBlackThresholdMsec"))
                                    (:shape-name "VideoBlackFailoverSettings"))

(smithy/sdk/shapes:define-structure video-codec-settings common-lisp:nil
                                    ((frame-capture-settings :target-type
                                      frame-capture-settings :member-name
                                      "FrameCaptureSettings" :json-name
                                      "frameCaptureSettings")
                                     (h264settings :target-type h264settings
                                      :member-name "H264Settings" :json-name
                                      "h264Settings")
                                     (h265settings :target-type h265settings
                                      :member-name "H265Settings" :json-name
                                      "h265Settings")
                                     (mpeg2settings :target-type mpeg2settings
                                      :member-name "Mpeg2Settings" :json-name
                                      "mpeg2Settings")
                                     (av1settings :target-type av1settings
                                      :member-name "Av1Settings" :json-name
                                      "av1Settings"))
                                    (:shape-name "VideoCodecSettings"))

(smithy/sdk/shapes:define-structure video-description common-lisp:nil
                                    ((codec-settings :target-type
                                      video-codec-settings :member-name
                                      "CodecSettings" :json-name
                                      "codecSettings")
                                     (height :target-type integer :member-name
                                      "Height" :json-name "height")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name")
                                     (respond-to-afd :target-type
                                      video-description-respond-to-afd
                                      :member-name "RespondToAfd" :json-name
                                      "respondToAfd")
                                     (scaling-behavior :target-type
                                      video-description-scaling-behavior
                                      :member-name "ScalingBehavior" :json-name
                                      "scalingBehavior")
                                     (sharpness :target-type integer-min0max100
                                      :member-name "Sharpness" :json-name
                                      "sharpness")
                                     (width :target-type integer :member-name
                                      "Width" :json-name "width"))
                                    (:shape-name "VideoDescription"))

(smithy/sdk/shapes:define-enum video-description-respond-to-afd
    common-lisp:nil
  (:none "NONE")
  (:passthrough "PASSTHROUGH")
  (:respond "RESPOND"))

(smithy/sdk/shapes:define-enum video-description-scaling-behavior
    common-lisp:nil
  (:default "DEFAULT")
  (:stretch-to-output "STRETCH_TO_OUTPUT"))

(smithy/sdk/shapes:define-structure video-selector common-lisp:nil
                                    ((color-space :target-type
                                      video-selector-color-space :member-name
                                      "ColorSpace" :json-name "colorSpace")
                                     (color-space-settings :target-type
                                      video-selector-color-space-settings
                                      :member-name "ColorSpaceSettings"
                                      :json-name "colorSpaceSettings")
                                     (color-space-usage :target-type
                                      video-selector-color-space-usage
                                      :member-name "ColorSpaceUsage" :json-name
                                      "colorSpaceUsage")
                                     (selector-settings :target-type
                                      video-selector-settings :member-name
                                      "SelectorSettings" :json-name
                                      "selectorSettings"))
                                    (:shape-name "VideoSelector"))

(smithy/sdk/shapes:define-enum video-selector-color-space
    common-lisp:nil
  (:follow "FOLLOW")
  (:hdr10 "HDR10")
  (:hlg-2020 "HLG_2020")
  (:rec-601 "REC_601")
  (:rec-709 "REC_709"))

(smithy/sdk/shapes:define-structure video-selector-color-space-settings
                                    common-lisp:nil
                                    ((hdr10settings :target-type hdr10settings
                                      :member-name "Hdr10Settings" :json-name
                                      "hdr10Settings"))
                                    (:shape-name
                                     "VideoSelectorColorSpaceSettings"))

(smithy/sdk/shapes:define-enum video-selector-color-space-usage
    common-lisp:nil
  (:fallback "FALLBACK")
  (:force "FORCE"))

(smithy/sdk/shapes:define-structure video-selector-pid common-lisp:nil
                                    ((pid :target-type integer-min0max8191
                                      :member-name "Pid" :json-name "pid"))
                                    (:shape-name "VideoSelectorPid"))

(smithy/sdk/shapes:define-structure video-selector-program-id common-lisp:nil
                                    ((program-id :target-type
                                      integer-min0max65536 :member-name
                                      "ProgramId" :json-name "programId"))
                                    (:shape-name "VideoSelectorProgramId"))

(smithy/sdk/shapes:define-structure video-selector-settings common-lisp:nil
                                    ((video-selector-pid :target-type
                                      video-selector-pid :member-name
                                      "VideoSelectorPid" :json-name
                                      "videoSelectorPid")
                                     (video-selector-program-id :target-type
                                      video-selector-program-id :member-name
                                      "VideoSelectorProgramId" :json-name
                                      "videoSelectorProgramId"))
                                    (:shape-name "VideoSelectorSettings"))

(smithy/sdk/shapes:define-structure vpc-output-settings common-lisp:nil
                                    ((public-address-allocation-ids
                                      :target-type list-of-string :member-name
                                      "PublicAddressAllocationIds" :json-name
                                      "publicAddressAllocationIds")
                                     (security-group-ids :target-type
                                      list-of-string :member-name
                                      "SecurityGroupIds" :json-name
                                      "securityGroupIds")
                                     (subnet-ids :target-type list-of-string
                                      :required common-lisp:t :member-name
                                      "SubnetIds" :json-name "subnetIds"))
                                    (:shape-name "VpcOutputSettings"))

(smithy/sdk/shapes:define-structure vpc-output-settings-description
                                    common-lisp:nil
                                    ((availability-zones :target-type
                                      list-of-string :member-name
                                      "AvailabilityZones" :json-name
                                      "availabilityZones")
                                     (network-interface-ids :target-type
                                      list-of-string :member-name
                                      "NetworkInterfaceIds" :json-name
                                      "networkInterfaceIds")
                                     (security-group-ids :target-type
                                      list-of-string :member-name
                                      "SecurityGroupIds" :json-name
                                      "securityGroupIds")
                                     (subnet-ids :target-type list-of-string
                                      :member-name "SubnetIds" :json-name
                                      "subnetIds"))
                                    (:shape-name
                                     "VpcOutputSettingsDescription"))

(smithy/sdk/shapes:define-enum wav-coding-mode
    common-lisp:nil
  (:coding-mode-1-0 "CODING_MODE_1_0")
  (:coding-mode-2-0 "CODING_MODE_2_0")
  (:coding-mode-4-0 "CODING_MODE_4_0")
  (:coding-mode-8-0 "CODING_MODE_8_0"))

(smithy/sdk/shapes:define-structure wav-settings common-lisp:nil
                                    ((bit-depth :target-type double
                                      :member-name "BitDepth" :json-name
                                      "bitDepth")
                                     (coding-mode :target-type wav-coding-mode
                                      :member-name "CodingMode" :json-name
                                      "codingMode")
                                     (sample-rate :target-type double
                                      :member-name "SampleRate" :json-name
                                      "sampleRate"))
                                    (:shape-name "WavSettings"))

(smithy/sdk/shapes:define-structure webvtt-destination-settings common-lisp:nil
                                    ((style-control :target-type
                                      webvtt-destination-style-control
                                      :member-name "StyleControl" :json-name
                                      "styleControl"))
                                    (:shape-name "WebvttDestinationSettings"))

(smithy/sdk/shapes:define-enum webvtt-destination-style-control
    common-lisp:nil
  (:no-style-data "NO_STYLE_DATA")
  (:passthrough "PASSTHROUGH"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type double-min0 smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type double-min0max1 smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type double-min0max100 smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type double-min0max5000
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type double-min1 smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type double-min1max65535
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type double-min-negative59max0
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-max5 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max10
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max100
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max1000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max10000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max1000000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max100000000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max128
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max15
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max2000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max255
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max30
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max32768
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max3600
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max500
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max600
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max65535
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max65536
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max7 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max8191
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min100 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1000 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1000000max100000000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min100000max100000000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min100000max40000000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min100000max80000000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1000max30000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min10max86400
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max10
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max1000000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max16
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max20
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max3003
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max31
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max32
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max3600000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max4 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max5 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max51
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max6 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max8 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max800
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min256max3840
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min25max10000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min25max2000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min3 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min30 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min32max8191
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min40max16000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min4max20
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min50000max16000000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min50000max8000000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min64max2160
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min800max3000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min80max800
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min96max600
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min-negative1000max1000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min-negative5max5
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min-negative60max6
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min-negative60max60
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list list-of-audio-channel-mapping :member
                               audio-channel-mapping)

(smithy/sdk/shapes:define-list list-of-audio-description :member
                               audio-description)

(smithy/sdk/shapes:define-list list-of-audio-selector :member audio-selector)

(smithy/sdk/shapes:define-list list-of-audio-track :member audio-track)

(smithy/sdk/shapes:define-list list-of-batch-failed-result-model :member
                               batch-failed-result-model)

(smithy/sdk/shapes:define-list list-of-batch-successful-result-model :member
                               batch-successful-result-model)

(smithy/sdk/shapes:define-list list-of-caption-description :member
                               caption-description)

(smithy/sdk/shapes:define-list list-of-caption-language-mapping :member
                               caption-language-mapping)

(smithy/sdk/shapes:define-list list-of-caption-selector :member
                               caption-selector)

(smithy/sdk/shapes:define-list list-of-channel-egress-endpoint :member
                               channel-egress-endpoint)

(smithy/sdk/shapes:define-list list-of-channel-engine-version-response :member
                               channel-engine-version-response)

(smithy/sdk/shapes:define-list list-of-channel-pipeline-id-to-restart :member
                               channel-pipeline-id-to-restart)

(smithy/sdk/shapes:define-list list-of-channel-summary :member channel-summary)

(smithy/sdk/shapes:define-list list-of-cloud-watch-alarm-template-group-summary
                               :member cloud-watch-alarm-template-group-summary)

(smithy/sdk/shapes:define-list list-of-cloud-watch-alarm-template-summary
                               :member cloud-watch-alarm-template-summary)

(smithy/sdk/shapes:define-list list-of-cmaf-ingest-caption-language-mapping
                               :member cmaf-ingest-caption-language-mapping)

(smithy/sdk/shapes:define-list list-of-color-correction :member
                               color-correction)

(smithy/sdk/shapes:define-list list-of-dash-role-audio :member dash-role-audio)

(smithy/sdk/shapes:define-list list-of-dash-role-caption :member
                               dash-role-caption)

(smithy/sdk/shapes:define-list list-of-describe-channel-placement-group-summary
                               :member describe-channel-placement-group-summary)

(smithy/sdk/shapes:define-list list-of-describe-cluster-summary :member
                               describe-cluster-summary)

(smithy/sdk/shapes:define-list list-of-describe-network-summary :member
                               describe-network-summary)

(smithy/sdk/shapes:define-list list-of-describe-node-summary :member
                               describe-node-summary)

(smithy/sdk/shapes:define-list list-of-event-bridge-rule-template-group-summary
                               :member event-bridge-rule-template-group-summary)

(smithy/sdk/shapes:define-list list-of-event-bridge-rule-template-summary
                               :member event-bridge-rule-template-summary)

(smithy/sdk/shapes:define-list list-of-event-bridge-rule-template-target
                               :member event-bridge-rule-template-target)

(smithy/sdk/shapes:define-list list-of-failover-condition :member
                               failover-condition)

(smithy/sdk/shapes:define-list list-of-hls-ad-markers :member hls-ad-markers)

(smithy/sdk/shapes:define-list list-of-input :member input)

(smithy/sdk/shapes:define-list list-of-input-attachment :member
                               input-attachment)

(smithy/sdk/shapes:define-list list-of-input-channel-level :member
                               input-channel-level)

(smithy/sdk/shapes:define-list list-of-input-destination :member
                               input-destination)

(smithy/sdk/shapes:define-list list-of-input-destination-request :member
                               input-destination-request)

(smithy/sdk/shapes:define-list list-of-input-destination-route :member
                               input-destination-route)

(smithy/sdk/shapes:define-list
 list-of-input-device-configurable-audio-channel-pair-config :member
 input-device-configurable-audio-channel-pair-config)

(smithy/sdk/shapes:define-list list-of-input-device-request :member
                               input-device-request)

(smithy/sdk/shapes:define-list list-of-input-device-settings :member
                               input-device-settings)

(smithy/sdk/shapes:define-list list-of-input-device-summary :member
                               input-device-summary)

(smithy/sdk/shapes:define-list
 list-of-input-device-uhd-audio-channel-pair-config :member
 input-device-uhd-audio-channel-pair-config)

(smithy/sdk/shapes:define-list list-of-input-request-destination-route :member
                               input-request-destination-route)

(smithy/sdk/shapes:define-list list-of-input-sdp-location :member
                               input-sdp-location)

(smithy/sdk/shapes:define-list list-of-input-security-group :member
                               input-security-group)

(smithy/sdk/shapes:define-list list-of-input-source :member input-source)

(smithy/sdk/shapes:define-list list-of-input-source-request :member
                               input-source-request)

(smithy/sdk/shapes:define-list list-of-input-whitelist-rule :member
                               input-whitelist-rule)

(smithy/sdk/shapes:define-list list-of-input-whitelist-rule-cidr :member
                               input-whitelist-rule-cidr)

(smithy/sdk/shapes:define-list list-of-interface-mapping :member
                               interface-mapping)

(smithy/sdk/shapes:define-list list-of-interface-mapping-create-request :member
                               interface-mapping-create-request)

(smithy/sdk/shapes:define-list list-of-interface-mapping-update-request :member
                               interface-mapping-update-request)

(smithy/sdk/shapes:define-list list-of-ip-pool :member ip-pool)

(smithy/sdk/shapes:define-list list-of-ip-pool-create-request :member
                               ip-pool-create-request)

(smithy/sdk/shapes:define-list list-of-ip-pool-update-request :member
                               ip-pool-update-request)

(smithy/sdk/shapes:define-list list-of-media-connect-flow :member
                               media-connect-flow)

(smithy/sdk/shapes:define-list list-of-media-connect-flow-request :member
                               media-connect-flow-request)

(smithy/sdk/shapes:define-list
 list-of-media-package-output-destination-settings :member
 media-package-output-destination-settings)

(smithy/sdk/shapes:define-list list-of-media-resource-neighbor :member
                               media-resource-neighbor)

(smithy/sdk/shapes:define-list list-of-multicast-source :member
                               multicast-source)

(smithy/sdk/shapes:define-list list-of-multicast-source-create-request :member
                               multicast-source-create-request)

(smithy/sdk/shapes:define-list list-of-multicast-source-update-request :member
                               multicast-source-update-request)

(smithy/sdk/shapes:define-list list-of-multiplex-output-destination :member
                               multiplex-output-destination)

(smithy/sdk/shapes:define-list list-of-multiplex-program-pipeline-detail
                               :member multiplex-program-pipeline-detail)

(smithy/sdk/shapes:define-list list-of-multiplex-program-summary :member
                               multiplex-program-summary)

(smithy/sdk/shapes:define-list list-of-multiplex-summary :member
                               multiplex-summary)

(smithy/sdk/shapes:define-list list-of-node-interface-mapping :member
                               node-interface-mapping)

(smithy/sdk/shapes:define-list list-of-node-interface-mapping-create-request
                               :member node-interface-mapping-create-request)

(smithy/sdk/shapes:define-list list-of-offering :member offering)

(smithy/sdk/shapes:define-list list-of-output :member output)

(smithy/sdk/shapes:define-list list-of-output-destination :member
                               output-destination)

(smithy/sdk/shapes:define-list list-of-output-destination-settings :member
                               output-destination-settings)

(smithy/sdk/shapes:define-list list-of-output-group :member output-group)

(smithy/sdk/shapes:define-list list-of-pipeline-detail :member pipeline-detail)

(smithy/sdk/shapes:define-list list-of-pipeline-pause-state-settings :member
                               pipeline-pause-state-settings)

(smithy/sdk/shapes:define-list list-of-reservation :member reservation)

(smithy/sdk/shapes:define-list list-of-route :member route)

(smithy/sdk/shapes:define-list list-of-route-create-request :member
                               route-create-request)

(smithy/sdk/shapes:define-list list-of-route-update-request :member
                               route-update-request)

(smithy/sdk/shapes:define-list list-of-rtmp-ad-markers :member rtmp-ad-markers)

(smithy/sdk/shapes:define-list list-of-schedule-action :member schedule-action)

(smithy/sdk/shapes:define-list list-of-scte35descriptor :member
                               scte35descriptor)

(smithy/sdk/shapes:define-list list-of-sdi-source-summary :member
                               sdi-source-summary)

(smithy/sdk/shapes:define-list list-of-signal-map-summary :member
                               signal-map-summary)

(smithy/sdk/shapes:define-list list-of-smpte2110receiver-group :member
                               smpte2110receiver-group)

(smithy/sdk/shapes:define-list list-of-srt-caller-source :member
                               srt-caller-source)

(smithy/sdk/shapes:define-list list-of-srt-caller-source-request :member
                               srt-caller-source-request)

(smithy/sdk/shapes:define-list list-of-srt-output-destination-settings :member
                               srt-output-destination-settings)

(smithy/sdk/shapes:define-list list-of-thumbnail :member thumbnail)

(smithy/sdk/shapes:define-list list-of-thumbnail-detail :member
                               thumbnail-detail)

(smithy/sdk/shapes:define-list list-of-transferring-input-device-summary
                               :member transferring-input-device-summary)

(smithy/sdk/shapes:define-list list-of-validation-error :member
                               validation-error)

(smithy/sdk/shapes:define-list list-of-video-description :member
                               video-description)

(smithy/sdk/shapes:define-list list-of-integer :member integer)

(smithy/sdk/shapes:define-list list-of-string :member string)

(smithy/sdk/shapes:define-list list-of-string-min7max11pattern-aws097 :member
                               string-min7max11pattern-aws097)

(smithy/sdk/shapes:define-list list-of-string-pattern-s :member
                               string-pattern-s)

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type long-min0max1099511627775
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type long-min0max4294967295
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type long-min0max8589934591
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type long-min0max86400000
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-max100 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-max1000 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-max2048 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-max255 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-max256 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-max32 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-max64 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min0max1024
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min1 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min1max2048
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min1max2048pattern-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min1max255 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min1max255pattern-s
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min1max256 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min1max256pattern-s
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min1max35 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min1max7 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min2max2 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min32max32 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min34max34 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min3max3 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min6max6 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min7max11pattern-aws097
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-pattern010920300
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 string-pattern-arn-medialive-cloudwatch-alarm-template
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 string-pattern-arn-medialive-cloudwatch-alarm-template-group
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 string-pattern-arn-medialive-eventbridge-rule-template
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 string-pattern-arn-medialive-eventbridge-rule-template-group
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-pattern-arn-medialive-signal-map
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-pattern-s smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type timestamp-iso8601
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/operation:define-operation accept-input-device-transfer :shape-name
                                       "AcceptInputDeviceTransfer" :input
                                       accept-input-device-transfer-request
                                       :output
                                       accept-input-device-transfer-response
                                       :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "POST" :uri
                                       "/prod/inputDevices/{InputDeviceId}/accept"
                                       :code 200)

(smithy/sdk/operation:define-operation batch-delete :shape-name "BatchDelete"
                                       :input batch-delete-request :output
                                       batch-delete-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri "/prod/batch/delete"
                                       :code 200)

(smithy/sdk/operation:define-operation batch-start :shape-name "BatchStart"
                                       :input batch-start-request :output
                                       batch-start-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri "/prod/batch/start"
                                       :code 200)

(smithy/sdk/operation:define-operation batch-stop :shape-name "BatchStop"
                                       :input batch-stop-request :output
                                       batch-stop-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri "/prod/batch/stop"
                                       :code 200)

(smithy/sdk/operation:define-operation batch-update-schedule :shape-name
                                       "BatchUpdateSchedule" :input
                                       batch-update-schedule-request :output
                                       batch-update-schedule-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "PUT" :uri
                                       "/prod/channels/{ChannelId}/schedule"
                                       :code 200)

(smithy/sdk/operation:define-operation cancel-input-device-transfer :shape-name
                                       "CancelInputDeviceTransfer" :input
                                       cancel-input-device-transfer-request
                                       :output
                                       cancel-input-device-transfer-response
                                       :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "POST" :uri
                                       "/prod/inputDevices/{InputDeviceId}/cancel"
                                       :code 200)

(smithy/sdk/operation:define-operation claim-device :shape-name "ClaimDevice"
                                       :input claim-device-request :output
                                       claim-device-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "POST" :uri "/prod/claimDevice"
                                       :code 200)

(smithy/sdk/operation:define-operation create-channel :shape-name
                                       "CreateChannel" :input
                                       create-channel-request :output
                                       create-channel-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "POST" :uri "/prod/channels"
                                       :code 201)

(smithy/sdk/operation:define-operation create-channel-placement-group
                                       :shape-name
                                       "CreateChannelPlacementGroup" :input
                                       create-channel-placement-group-request
                                       :output
                                       create-channel-placement-group-response
                                       :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "POST" :uri
                                       "/prod/clusters/{ClusterId}/channelplacementgroups"
                                       :code 201)

(smithy/sdk/operation:define-operation create-cloud-watch-alarm-template
                                       :shape-name
                                       "CreateCloudWatchAlarmTemplate" :input
                                       create-cloud-watch-alarm-template-request
                                       :output
                                       create-cloud-watch-alarm-template-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/prod/cloudwatch-alarm-templates" :code
                                       201)

(smithy/sdk/operation:define-operation create-cloud-watch-alarm-template-group
                                       :shape-name
                                       "CreateCloudWatchAlarmTemplateGroup"
                                       :input
                                       create-cloud-watch-alarm-template-group-request
                                       :output
                                       create-cloud-watch-alarm-template-group-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/prod/cloudwatch-alarm-template-groups"
                                       :code 201)

(smithy/sdk/operation:define-operation create-cluster :shape-name
                                       "CreateCluster" :input
                                       create-cluster-request :output
                                       create-cluster-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri "/prod/clusters"
                                       :code 201)

(smithy/sdk/operation:define-operation create-event-bridge-rule-template
                                       :shape-name
                                       "CreateEventBridgeRuleTemplate" :input
                                       create-event-bridge-rule-template-request
                                       :output
                                       create-event-bridge-rule-template-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/prod/eventbridge-rule-templates" :code
                                       201)

(smithy/sdk/operation:define-operation create-event-bridge-rule-template-group
                                       :shape-name
                                       "CreateEventBridgeRuleTemplateGroup"
                                       :input
                                       create-event-bridge-rule-template-group-request
                                       :output
                                       create-event-bridge-rule-template-group-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/prod/eventbridge-rule-template-groups"
                                       :code 201)

(smithy/sdk/operation:define-operation create-input :shape-name "CreateInput"
                                       :input create-input-request :output
                                       create-input-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri "/prod/inputs" :code
                                       201)

(smithy/sdk/operation:define-operation create-input-security-group :shape-name
                                       "CreateInputSecurityGroup" :input
                                       create-input-security-group-request
                                       :output
                                       create-input-security-group-response
                                       :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/prod/inputSecurityGroups" :code 200)

(smithy/sdk/operation:define-operation create-multiplex :shape-name
                                       "CreateMultiplex" :input
                                       create-multiplex-request :output
                                       create-multiplex-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "POST" :uri "/prod/multiplexes"
                                       :code 201)

(smithy/sdk/operation:define-operation create-multiplex-program :shape-name
                                       "CreateMultiplexProgram" :input
                                       create-multiplex-program-request :output
                                       create-multiplex-program-response
                                       :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "POST" :uri
                                       "/prod/multiplexes/{MultiplexId}/programs"
                                       :code 201)

(smithy/sdk/operation:define-operation create-network :shape-name
                                       "CreateNetwork" :input
                                       create-network-request :output
                                       create-network-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri "/prod/networks"
                                       :code 201)

(smithy/sdk/operation:define-operation create-node :shape-name "CreateNode"
                                       :input create-node-request :output
                                       create-node-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "POST" :uri
                                       "/prod/clusters/{ClusterId}/nodes" :code
                                       201)

(smithy/sdk/operation:define-operation create-node-registration-script
                                       :shape-name
                                       "CreateNodeRegistrationScript" :input
                                       create-node-registration-script-request
                                       :output
                                       create-node-registration-script-response
                                       :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/prod/clusters/{ClusterId}/nodeRegistrationScript"
                                       :code 200)

(smithy/sdk/operation:define-operation create-partner-input :shape-name
                                       "CreatePartnerInput" :input
                                       create-partner-input-request :output
                                       create-partner-input-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/prod/inputs/{InputId}/partners" :code
                                       201)

(smithy/sdk/operation:define-operation create-sdi-source :shape-name
                                       "CreateSdiSource" :input
                                       create-sdi-source-request :output
                                       create-sdi-source-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri "/prod/sdiSources"
                                       :code 200)

(smithy/sdk/operation:define-operation create-signal-map :shape-name
                                       "CreateSignalMap" :input
                                       create-signal-map-request :output
                                       create-signal-map-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri "/prod/signal-maps"
                                       :code 201)

(smithy/sdk/operation:define-operation create-tags :shape-name "CreateTags"
                                       :input create-tags-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "POST" :uri
                                       "/prod/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation delete-channel :shape-name
                                       "DeleteChannel" :input
                                       delete-channel-request :output
                                       delete-channel-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/prod/channels/{ChannelId}" :code 200)

(smithy/sdk/operation:define-operation delete-channel-placement-group
                                       :shape-name
                                       "DeleteChannelPlacementGroup" :input
                                       delete-channel-placement-group-request
                                       :output
                                       delete-channel-placement-group-response
                                       :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/prod/clusters/{ClusterId}/channelplacementgroups/{ChannelPlacementGroupId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-cloud-watch-alarm-template
                                       :shape-name
                                       "DeleteCloudWatchAlarmTemplate" :input
                                       delete-cloud-watch-alarm-template-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/prod/cloudwatch-alarm-templates/{Identifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-cloud-watch-alarm-template-group
                                       :shape-name
                                       "DeleteCloudWatchAlarmTemplateGroup"
                                       :input
                                       delete-cloud-watch-alarm-template-group-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/prod/cloudwatch-alarm-template-groups/{Identifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-cluster :shape-name
                                       "DeleteCluster" :input
                                       delete-cluster-request :output
                                       delete-cluster-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/prod/clusters/{ClusterId}" :code 202)

(smithy/sdk/operation:define-operation delete-event-bridge-rule-template
                                       :shape-name
                                       "DeleteEventBridgeRuleTemplate" :input
                                       delete-event-bridge-rule-template-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/prod/eventbridge-rule-templates/{Identifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-event-bridge-rule-template-group
                                       :shape-name
                                       "DeleteEventBridgeRuleTemplateGroup"
                                       :input
                                       delete-event-bridge-rule-template-group-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/prod/eventbridge-rule-template-groups/{Identifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-input :shape-name "DeleteInput"
                                       :input delete-input-request :output
                                       delete-input-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/prod/inputs/{InputId}" :code 200)

(smithy/sdk/operation:define-operation delete-input-security-group :shape-name
                                       "DeleteInputSecurityGroup" :input
                                       delete-input-security-group-request
                                       :output
                                       delete-input-security-group-response
                                       :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/prod/inputSecurityGroups/{InputSecurityGroupId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-multiplex :shape-name
                                       "DeleteMultiplex" :input
                                       delete-multiplex-request :output
                                       delete-multiplex-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/prod/multiplexes/{MultiplexId}" :code
                                       202)

(smithy/sdk/operation:define-operation delete-multiplex-program :shape-name
                                       "DeleteMultiplexProgram" :input
                                       delete-multiplex-program-request :output
                                       delete-multiplex-program-response
                                       :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/prod/multiplexes/{MultiplexId}/programs/{ProgramName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-network :shape-name
                                       "DeleteNetwork" :input
                                       delete-network-request :output
                                       delete-network-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/prod/networks/{NetworkId}" :code 202)

(smithy/sdk/operation:define-operation delete-node :shape-name "DeleteNode"
                                       :input delete-node-request :output
                                       delete-node-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/prod/clusters/{ClusterId}/nodes/{NodeId}"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-reservation :shape-name
                                       "DeleteReservation" :input
                                       delete-reservation-request :output
                                       delete-reservation-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/prod/reservations/{ReservationId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-schedule :shape-name
                                       "DeleteSchedule" :input
                                       delete-schedule-request :output
                                       delete-schedule-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/prod/channels/{ChannelId}/schedule"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-sdi-source :shape-name
                                       "DeleteSdiSource" :input
                                       delete-sdi-source-request :output
                                       delete-sdi-source-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/prod/sdiSources/{SdiSourceId}" :code
                                       202)

(smithy/sdk/operation:define-operation delete-signal-map :shape-name
                                       "DeleteSignalMap" :input
                                       delete-signal-map-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/prod/signal-maps/{Identifier}" :code
                                       204)

(smithy/sdk/operation:define-operation delete-tags :shape-name "DeleteTags"
                                       :input delete-tags-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "DELETE" :uri
                                       "/prod/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation describe-account-configuration
                                       :shape-name
                                       "DescribeAccountConfiguration" :input
                                       describe-account-configuration-request
                                       :output
                                       describe-account-configuration-response
                                       :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/prod/accountConfiguration" :code 200)

(smithy/sdk/operation:define-operation describe-channel :shape-name
                                       "DescribeChannel" :input
                                       describe-channel-request :output
                                       describe-channel-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/prod/channels/{ChannelId}" :code 200)

(smithy/sdk/operation:define-operation describe-channel-placement-group
                                       :shape-name
                                       "DescribeChannelPlacementGroup" :input
                                       describe-channel-placement-group-request
                                       :output
                                       describe-channel-placement-group-response
                                       :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/prod/clusters/{ClusterId}/channelplacementgroups/{ChannelPlacementGroupId}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-cluster :shape-name
                                       "DescribeCluster" :input
                                       describe-cluster-request :output
                                       describe-cluster-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/prod/clusters/{ClusterId}" :code 200)

(smithy/sdk/operation:define-operation describe-input :shape-name
                                       "DescribeInput" :input
                                       describe-input-request :output
                                       describe-input-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/prod/inputs/{InputId}" :code 200)

(smithy/sdk/operation:define-operation describe-input-device :shape-name
                                       "DescribeInputDevice" :input
                                       describe-input-device-request :output
                                       describe-input-device-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/prod/inputDevices/{InputDeviceId}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-input-device-thumbnail
                                       :shape-name
                                       "DescribeInputDeviceThumbnail" :input
                                       describe-input-device-thumbnail-request
                                       :output
                                       describe-input-device-thumbnail-response
                                       :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/prod/inputDevices/{InputDeviceId}/thumbnailData"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-input-security-group
                                       :shape-name "DescribeInputSecurityGroup"
                                       :input
                                       describe-input-security-group-request
                                       :output
                                       describe-input-security-group-response
                                       :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/prod/inputSecurityGroups/{InputSecurityGroupId}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-multiplex :shape-name
                                       "DescribeMultiplex" :input
                                       describe-multiplex-request :output
                                       describe-multiplex-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/prod/multiplexes/{MultiplexId}" :code
                                       200)

(smithy/sdk/operation:define-operation describe-multiplex-program :shape-name
                                       "DescribeMultiplexProgram" :input
                                       describe-multiplex-program-request
                                       :output
                                       describe-multiplex-program-response
                                       :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/prod/multiplexes/{MultiplexId}/programs/{ProgramName}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-network :shape-name
                                       "DescribeNetwork" :input
                                       describe-network-request :output
                                       describe-network-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/prod/networks/{NetworkId}" :code 200)

(smithy/sdk/operation:define-operation describe-node :shape-name "DescribeNode"
                                       :input describe-node-request :output
                                       describe-node-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/prod/clusters/{ClusterId}/nodes/{NodeId}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-offering :shape-name
                                       "DescribeOffering" :input
                                       describe-offering-request :output
                                       describe-offering-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/prod/offerings/{OfferingId}" :code 200)

(smithy/sdk/operation:define-operation describe-reservation :shape-name
                                       "DescribeReservation" :input
                                       describe-reservation-request :output
                                       describe-reservation-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/prod/reservations/{ReservationId}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-schedule :shape-name
                                       "DescribeSchedule" :input
                                       describe-schedule-request :output
                                       describe-schedule-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/prod/channels/{ChannelId}/schedule"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-sdi-source :shape-name
                                       "DescribeSdiSource" :input
                                       describe-sdi-source-request :output
                                       describe-sdi-source-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/prod/sdiSources/{SdiSourceId}" :code
                                       200)

(smithy/sdk/operation:define-operation describe-thumbnails :shape-name
                                       "DescribeThumbnails" :input
                                       describe-thumbnails-request :output
                                       describe-thumbnails-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/prod/channels/{ChannelId}/thumbnails"
                                       :code 200)

(smithy/sdk/operation:define-operation get-cloud-watch-alarm-template
                                       :shape-name "GetCloudWatchAlarmTemplate"
                                       :input
                                       get-cloud-watch-alarm-template-request
                                       :output
                                       get-cloud-watch-alarm-template-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/prod/cloudwatch-alarm-templates/{Identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-cloud-watch-alarm-template-group
                                       :shape-name
                                       "GetCloudWatchAlarmTemplateGroup" :input
                                       get-cloud-watch-alarm-template-group-request
                                       :output
                                       get-cloud-watch-alarm-template-group-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/prod/cloudwatch-alarm-template-groups/{Identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-event-bridge-rule-template
                                       :shape-name "GetEventBridgeRuleTemplate"
                                       :input
                                       get-event-bridge-rule-template-request
                                       :output
                                       get-event-bridge-rule-template-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/prod/eventbridge-rule-templates/{Identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-event-bridge-rule-template-group
                                       :shape-name
                                       "GetEventBridgeRuleTemplateGroup" :input
                                       get-event-bridge-rule-template-group-request
                                       :output
                                       get-event-bridge-rule-template-group-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/prod/eventbridge-rule-template-groups/{Identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-signal-map :shape-name
                                       "GetSignalMap" :input
                                       get-signal-map-request :output
                                       get-signal-map-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/prod/signal-maps/{Identifier}" :code
                                       200)

(smithy/sdk/operation:define-operation list-channel-placement-groups
                                       :shape-name "ListChannelPlacementGroups"
                                       :input
                                       list-channel-placement-groups-request
                                       :output
                                       list-channel-placement-groups-response
                                       :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/prod/clusters/{ClusterId}/channelplacementgroups"
                                       :code 200)

(smithy/sdk/operation:define-operation list-channels :shape-name "ListChannels"
                                       :input list-channels-request :output
                                       list-channels-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/prod/channels"
                                       :code 200)

(smithy/sdk/operation:define-operation list-cloud-watch-alarm-template-groups
                                       :shape-name
                                       "ListCloudWatchAlarmTemplateGroups"
                                       :input
                                       list-cloud-watch-alarm-template-groups-request
                                       :output
                                       list-cloud-watch-alarm-template-groups-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/prod/cloudwatch-alarm-template-groups"
                                       :code 200)

(smithy/sdk/operation:define-operation list-cloud-watch-alarm-templates
                                       :shape-name
                                       "ListCloudWatchAlarmTemplates" :input
                                       list-cloud-watch-alarm-templates-request
                                       :output
                                       list-cloud-watch-alarm-templates-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/prod/cloudwatch-alarm-templates" :code
                                       200)

(smithy/sdk/operation:define-operation list-clusters :shape-name "ListClusters"
                                       :input list-clusters-request :output
                                       list-clusters-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/prod/clusters"
                                       :code 200)

(smithy/sdk/operation:define-operation list-event-bridge-rule-template-groups
                                       :shape-name
                                       "ListEventBridgeRuleTemplateGroups"
                                       :input
                                       list-event-bridge-rule-template-groups-request
                                       :output
                                       list-event-bridge-rule-template-groups-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/prod/eventbridge-rule-template-groups"
                                       :code 200)

(smithy/sdk/operation:define-operation list-event-bridge-rule-templates
                                       :shape-name
                                       "ListEventBridgeRuleTemplates" :input
                                       list-event-bridge-rule-templates-request
                                       :output
                                       list-event-bridge-rule-templates-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/prod/eventbridge-rule-templates" :code
                                       200)

(smithy/sdk/operation:define-operation list-input-device-transfers :shape-name
                                       "ListInputDeviceTransfers" :input
                                       list-input-device-transfers-request
                                       :output
                                       list-input-device-transfers-response
                                       :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "GET" :uri
                                       "/prod/inputDeviceTransfers" :code 200)

(smithy/sdk/operation:define-operation list-input-devices :shape-name
                                       "ListInputDevices" :input
                                       list-input-devices-request :output
                                       list-input-devices-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/prod/inputDevices"
                                       :code 200)

(smithy/sdk/operation:define-operation list-input-security-groups :shape-name
                                       "ListInputSecurityGroups" :input
                                       list-input-security-groups-request
                                       :output
                                       list-input-security-groups-response
                                       :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/prod/inputSecurityGroups" :code 200)

(smithy/sdk/operation:define-operation list-inputs :shape-name "ListInputs"
                                       :input list-inputs-request :output
                                       list-inputs-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/prod/inputs" :code
                                       200)

(smithy/sdk/operation:define-operation list-multiplex-programs :shape-name
                                       "ListMultiplexPrograms" :input
                                       list-multiplex-programs-request :output
                                       list-multiplex-programs-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/prod/multiplexes/{MultiplexId}/programs"
                                       :code 200)

(smithy/sdk/operation:define-operation list-multiplexes :shape-name
                                       "ListMultiplexes" :input
                                       list-multiplexes-request :output
                                       list-multiplexes-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/prod/multiplexes"
                                       :code 200)

(smithy/sdk/operation:define-operation list-networks :shape-name "ListNetworks"
                                       :input list-networks-request :output
                                       list-networks-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/prod/networks"
                                       :code 200)

(smithy/sdk/operation:define-operation list-nodes :shape-name "ListNodes"
                                       :input list-nodes-request :output
                                       list-nodes-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/prod/clusters/{ClusterId}/nodes" :code
                                       200)

(smithy/sdk/operation:define-operation list-offerings :shape-name
                                       "ListOfferings" :input
                                       list-offerings-request :output
                                       list-offerings-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/prod/offerings"
                                       :code 200)

(smithy/sdk/operation:define-operation list-reservations :shape-name
                                       "ListReservations" :input
                                       list-reservations-request :output
                                       list-reservations-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/prod/reservations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-sdi-sources :shape-name
                                       "ListSdiSources" :input
                                       list-sdi-sources-request :output
                                       list-sdi-sources-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/prod/sdiSources"
                                       :code 200)

(smithy/sdk/operation:define-operation list-signal-maps :shape-name
                                       "ListSignalMaps" :input
                                       list-signal-maps-request :output
                                       list-signal-maps-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/prod/signal-maps"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "GET" :uri
                                       "/prod/tags/{ResourceArn}" :code 200)

(smithy/sdk/operation:define-operation list-versions :shape-name "ListVersions"
                                       :input list-versions-request :output
                                       list-versions-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/prod/versions"
                                       :code 200)

(smithy/sdk/operation:define-operation purchase-offering :shape-name
                                       "PurchaseOffering" :input
                                       purchase-offering-request :output
                                       purchase-offering-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/prod/offerings/{OfferingId}/purchase"
                                       :code 201)

(smithy/sdk/operation:define-operation reboot-input-device :shape-name
                                       "RebootInputDevice" :input
                                       reboot-input-device-request :output
                                       reboot-input-device-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "POST" :uri
                                       "/prod/inputDevices/{InputDeviceId}/reboot"
                                       :code 200)

(smithy/sdk/operation:define-operation reject-input-device-transfer :shape-name
                                       "RejectInputDeviceTransfer" :input
                                       reject-input-device-transfer-request
                                       :output
                                       reject-input-device-transfer-response
                                       :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "POST" :uri
                                       "/prod/inputDevices/{InputDeviceId}/reject"
                                       :code 200)

(smithy/sdk/operation:define-operation restart-channel-pipelines :shape-name
                                       "RestartChannelPipelines" :input
                                       restart-channel-pipelines-request
                                       :output
                                       restart-channel-pipelines-response
                                       :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/prod/channels/{ChannelId}/restartChannelPipelines"
                                       :code 200)

(smithy/sdk/operation:define-operation start-channel :shape-name "StartChannel"
                                       :input start-channel-request :output
                                       start-channel-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/prod/channels/{ChannelId}/start" :code
                                       200)

(smithy/sdk/operation:define-operation start-delete-monitor-deployment
                                       :shape-name
                                       "StartDeleteMonitorDeployment" :input
                                       start-delete-monitor-deployment-request
                                       :output
                                       start-delete-monitor-deployment-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/prod/signal-maps/{Identifier}/monitor-deployment"
                                       :code 202)

(smithy/sdk/operation:define-operation start-input-device :shape-name
                                       "StartInputDevice" :input
                                       start-input-device-request :output
                                       start-input-device-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "POST" :uri
                                       "/prod/inputDevices/{InputDeviceId}/start"
                                       :code 200)

(smithy/sdk/operation:define-operation start-input-device-maintenance-window
                                       :shape-name
                                       "StartInputDeviceMaintenanceWindow"
                                       :input
                                       start-input-device-maintenance-window-request
                                       :output
                                       start-input-device-maintenance-window-response
                                       :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "POST" :uri
                                       "/prod/inputDevices/{InputDeviceId}/startInputDeviceMaintenanceWindow"
                                       :code 200)

(smithy/sdk/operation:define-operation start-monitor-deployment :shape-name
                                       "StartMonitorDeployment" :input
                                       start-monitor-deployment-request :output
                                       start-monitor-deployment-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/prod/signal-maps/{Identifier}/monitor-deployment"
                                       :code 202)

(smithy/sdk/operation:define-operation start-multiplex :shape-name
                                       "StartMultiplex" :input
                                       start-multiplex-request :output
                                       start-multiplex-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/prod/multiplexes/{MultiplexId}/start"
                                       :code 202)

(smithy/sdk/operation:define-operation start-update-signal-map :shape-name
                                       "StartUpdateSignalMap" :input
                                       start-update-signal-map-request :output
                                       start-update-signal-map-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PATCH" :uri
                                       "/prod/signal-maps/{Identifier}" :code
                                       202)

(smithy/sdk/operation:define-operation stop-channel :shape-name "StopChannel"
                                       :input stop-channel-request :output
                                       stop-channel-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/prod/channels/{ChannelId}/stop" :code
                                       200)

(smithy/sdk/operation:define-operation stop-input-device :shape-name
                                       "StopInputDevice" :input
                                       stop-input-device-request :output
                                       stop-input-device-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "POST" :uri
                                       "/prod/inputDevices/{InputDeviceId}/stop"
                                       :code 200)

(smithy/sdk/operation:define-operation stop-multiplex :shape-name
                                       "StopMultiplex" :input
                                       stop-multiplex-request :output
                                       stop-multiplex-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/prod/multiplexes/{MultiplexId}/stop"
                                       :code 202)

(smithy/sdk/operation:define-operation transfer-input-device :shape-name
                                       "TransferInputDevice" :input
                                       transfer-input-device-request :output
                                       transfer-input-device-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "POST" :uri
                                       "/prod/inputDevices/{InputDeviceId}/transfer"
                                       :code 200)

(smithy/sdk/operation:define-operation update-account-configuration :shape-name
                                       "UpdateAccountConfiguration" :input
                                       update-account-configuration-request
                                       :output
                                       update-account-configuration-response
                                       :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "PUT" :uri
                                       "/prod/accountConfiguration" :code 200)

(smithy/sdk/operation:define-operation update-channel :shape-name
                                       "UpdateChannel" :input
                                       update-channel-request :output
                                       update-channel-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        unprocessable-entity-exception)
                                       :method "PUT" :uri
                                       "/prod/channels/{ChannelId}" :code 200)

(smithy/sdk/operation:define-operation update-channel-class :shape-name
                                       "UpdateChannelClass" :input
                                       update-channel-class-request :output
                                       update-channel-class-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "PUT" :uri
                                       "/prod/channels/{ChannelId}/channelClass"
                                       :code 200)

(smithy/sdk/operation:define-operation update-channel-placement-group
                                       :shape-name
                                       "UpdateChannelPlacementGroup" :input
                                       update-channel-placement-group-request
                                       :output
                                       update-channel-placement-group-response
                                       :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "PUT" :uri
                                       "/prod/clusters/{ClusterId}/channelplacementgroups/{ChannelPlacementGroupId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-cloud-watch-alarm-template
                                       :shape-name
                                       "UpdateCloudWatchAlarmTemplate" :input
                                       update-cloud-watch-alarm-template-request
                                       :output
                                       update-cloud-watch-alarm-template-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PATCH" :uri
                                       "/prod/cloudwatch-alarm-templates/{Identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-cloud-watch-alarm-template-group
                                       :shape-name
                                       "UpdateCloudWatchAlarmTemplateGroup"
                                       :input
                                       update-cloud-watch-alarm-template-group-request
                                       :output
                                       update-cloud-watch-alarm-template-group-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PATCH" :uri
                                       "/prod/cloudwatch-alarm-template-groups/{Identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-cluster :shape-name
                                       "UpdateCluster" :input
                                       update-cluster-request :output
                                       update-cluster-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/prod/clusters/{ClusterId}" :code 200)

(smithy/sdk/operation:define-operation update-event-bridge-rule-template
                                       :shape-name
                                       "UpdateEventBridgeRuleTemplate" :input
                                       update-event-bridge-rule-template-request
                                       :output
                                       update-event-bridge-rule-template-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PATCH" :uri
                                       "/prod/eventbridge-rule-templates/{Identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-event-bridge-rule-template-group
                                       :shape-name
                                       "UpdateEventBridgeRuleTemplateGroup"
                                       :input
                                       update-event-bridge-rule-template-group-request
                                       :output
                                       update-event-bridge-rule-template-group-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PATCH" :uri
                                       "/prod/eventbridge-rule-template-groups/{Identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-input :shape-name "UpdateInput"
                                       :input update-input-request :output
                                       update-input-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "PUT" :uri
                                       "/prod/inputs/{InputId}" :code 200)

(smithy/sdk/operation:define-operation update-input-device :shape-name
                                       "UpdateInputDevice" :input
                                       update-input-device-request :output
                                       update-input-device-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "PUT" :uri
                                       "/prod/inputDevices/{InputDeviceId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-input-security-group :shape-name
                                       "UpdateInputSecurityGroup" :input
                                       update-input-security-group-request
                                       :output
                                       update-input-security-group-response
                                       :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "PUT" :uri
                                       "/prod/inputSecurityGroups/{InputSecurityGroupId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-multiplex :shape-name
                                       "UpdateMultiplex" :input
                                       update-multiplex-request :output
                                       update-multiplex-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        unprocessable-entity-exception)
                                       :method "PUT" :uri
                                       "/prod/multiplexes/{MultiplexId}" :code
                                       200)

(smithy/sdk/operation:define-operation update-multiplex-program :shape-name
                                       "UpdateMultiplexProgram" :input
                                       update-multiplex-program-request :output
                                       update-multiplex-program-response
                                       :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        unprocessable-entity-exception)
                                       :method "PUT" :uri
                                       "/prod/multiplexes/{MultiplexId}/programs/{ProgramName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-network :shape-name
                                       "UpdateNetwork" :input
                                       update-network-request :output
                                       update-network-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/prod/networks/{NetworkId}" :code 200)

(smithy/sdk/operation:define-operation update-node :shape-name "UpdateNode"
                                       :input update-node-request :output
                                       update-node-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/prod/clusters/{ClusterId}/nodes/{NodeId}"
                                       :code 201)

(smithy/sdk/operation:define-operation update-node-state :shape-name
                                       "UpdateNodeState" :input
                                       update-node-state-request :output
                                       update-node-state-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "PUT" :uri
                                       "/prod/clusters/{ClusterId}/nodes/{NodeId}/state"
                                       :code 201)

(smithy/sdk/operation:define-operation update-reservation :shape-name
                                       "UpdateReservation" :input
                                       update-reservation-request :output
                                       update-reservation-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/prod/reservations/{ReservationId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-sdi-source :shape-name
                                       "UpdateSdiSource" :input
                                       update-sdi-source-request :output
                                       update-sdi-source-response :errors
                                       (bad-gateway-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gateway-timeout-exception
                                        internal-server-error-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/prod/sdiSources/{SdiSourceId}" :code
                                       200)
